SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

    ld [bc], a                                    ; $4000: $02
    rra                                           ; $4001: $1F
    nop                                           ; $4002: $00
    rrca                                          ; $4003: $0F
    dec de                                        ; $4004: $1B
    ld b, l                                       ; $4005: $45
    dec h                                         ; $4006: $25
    ld [hl], e                                    ; $4007: $73
    halt                                          ; $4008: $76
    ld [bc], a                                    ; $4009: $02
    nop                                           ; $400A: $00
    inc de                                        ; $400B: $13
    rrca                                          ; $400C: $0F
    add hl, de                                    ; $400D: $19
    ld b, l                                       ; $400E: $45
    dec h                                         ; $400F: $25
    jp z, Jump_01C_5B76                           ; $4010: $CA $76 $5B

    inc e                                         ; $4013: $1C
    rla                                           ; $4014: $17
    ld b, b                                       ; $4015: $40
    ld b, d                                       ; $4016: $42
    sbc e                                         ; $4017: $9B
    ld a, b                                       ; $4018: $78
    ld [hl], b                                    ; $4019: $70
    sbc a                                         ; $401A: $9F
    ld d, l                                       ; $401B: $55
    ld h, a                                       ; $401C: $67
    ld l, b                                       ; $401D: $68
    ld l, $20                                     ; $401E: $2E $20
    ld d, h                                       ; $4020: $54
    ld l, b                                       ; $4021: $68
    ld h, l                                       ; $4022: $65
    rst $38                                       ; $4023: $FF
    ld [hl], a                                    ; $4024: $77
    ld h, c                                       ; $4025: $61
    ld l, h                                       ; $4026: $6C
    ld l, h                                       ; $4027: $6C
    ld [hl], e                                    ; $4028: $73
    daa                                           ; $4029: $27
    ld [hl], d                                    ; $402A: $72
    ld h, l                                       ; $402B: $65
    jr nz, jr_01C_408F                            ; $402C: $20 $61

    ld l, h                                       ; $402E: $6C
    ld l, h                                       ; $402F: $6C
    cp $73                                        ; $4030: $FE $73
    ld l, h                                       ; $4032: $6C
    ld l, c                                       ; $4033: $69
    ld l, l                                       ; $4034: $6D
    ld a, c                                       ; $4035: $79
    jr nz, jr_01C_4099                            ; $4036: $20 $61

    ld l, [hl]                                    ; $4038: $6E
    ld h, h                                       ; $4039: $64
    jr nz, jr_01C_40B3                            ; $403A: $20 $77

    ld h, l                                       ; $403C: $65
    ld [hl], h                                    ; $403D: $74
    ld l, $FE                                     ; $403E: $2E $FE
    db $FD                                        ; $4040: $FD
    sbc d                                         ; $4041: $9A
    ld b, d                                       ; $4042: $42
    ld e, e                                       ; $4043: $5B
    inc e                                         ; $4044: $1C
    ld c, b                                       ; $4045: $48
    ld b, b                                       ; $4046: $40
    ld b, d                                       ; $4047: $42
    sbc e                                         ; $4048: $9B
    ld a, b                                       ; $4049: $78
    ld [hl], b                                    ; $404A: $70
    sbc a                                         ; $404B: $9F
    ld d, h                                       ; $404C: $54
    ld l, b                                       ; $404D: $68
    ld l, c                                       ; $404E: $69
    ld [hl], e                                    ; $404F: $73
    jr nz, @+$6F                                  ; $4050: $20 $6D

    ld [hl], l                                    ; $4052: $75
    ld [hl], e                                    ; $4053: $73
    ld [hl], h                                    ; $4054: $74
    jr nz, jr_01C_40B9                            ; $4055: $20 $62

    ld h, l                                       ; $4057: $65
    rst $38                                       ; $4058: $FF
    ld [hl], b                                    ; $4059: $70
    ld [hl], l                                    ; $405A: $75
    ld [hl], h                                    ; $405B: $74
    jr nz, jr_01C_40C6                            ; $405C: $20 $68

    ld h, l                                       ; $405E: $65
    ld [hl], d                                    ; $405F: $72
    ld h, l                                       ; $4060: $65
    jr nz, jr_01C_40C9                            ; $4061: $20 $66

    ld l, a                                       ; $4063: $6F
    ld [hl], d                                    ; $4064: $72
    cp $74                                        ; $4065: $FE $74
    ld l, a                                       ; $4067: $6F
    ld [hl], d                                    ; $4068: $72
    ld [hl], h                                    ; $4069: $74
    ld [hl], l                                    ; $406A: $75
    ld [hl], d                                    ; $406B: $72
    ld h, l                                       ; $406C: $65
    ld l, $20                                     ; $406D: $2E $20
    ld d, h                                       ; $406F: $54
    ld l, b                                       ; $4070: $68
    ld l, c                                       ; $4071: $69
    ld [hl], e                                    ; $4072: $73
    rst $38                                       ; $4073: $FF
    ld [hl], h                                    ; $4074: $74
    ld l, b                                       ; $4075: $68
    ld l, c                                       ; $4076: $69
    ld l, [hl]                                    ; $4077: $6E
    ld h, a                                       ; $4078: $67
    jr nz, jr_01C_40E4                            ; $4079: $20 $69

    ld [hl], e                                    ; $407B: $73
    jr nz, jr_01C_40E6                            ; $407C: $20 $68

    ld h, c                                       ; $407E: $61
    ld [hl], d                                    ; $407F: $72
    ld h, h                                       ; $4080: $64
    ld h, l                                       ; $4081: $65
    ld [hl], d                                    ; $4082: $72
    cp $74                                        ; $4083: $FE $74
    ld l, b                                       ; $4085: $68
    ld h, c                                       ; $4086: $61
    ld l, [hl]                                    ; $4087: $6E
    jr nz, jr_01C_40FE                            ; $4088: $20 $74

    ld l, b                                       ; $408A: $68
    ld h, l                                       ; $408B: $65
    jr nz, jr_01C_40F4                            ; $408C: $20 $66

    ld l, h                                       ; $408E: $6C

jr_01C_408F:
    ld l, a                                       ; $408F: $6F
    ld l, a                                       ; $4090: $6F
    ld [hl], d                                    ; $4091: $72
    ld l, $FE                                     ; $4092: $2E $FE
    db $FD                                        ; $4094: $FD
    sbc d                                         ; $4095: $9A
    ld b, d                                       ; $4096: $42
    ld e, e                                       ; $4097: $5B
    inc e                                         ; $4098: $1C

jr_01C_4099:
    sbc h                                         ; $4099: $9C
    ld b, b                                       ; $409A: $40
    ld b, d                                       ; $409B: $42
    sbc e                                         ; $409C: $9B
    ld a, b                                       ; $409D: $78
    ld [hl], b                                    ; $409E: $70
    sbc a                                         ; $409F: $9F
    ld d, e                                       ; $40A0: $53
    ld [hl], h                                    ; $40A1: $74
    ld [hl], d                                    ; $40A2: $72
    ld h, c                                       ; $40A3: $61
    ld l, [hl]                                    ; $40A4: $6E
    ld h, a                                       ; $40A5: $67
    ld h, l                                       ; $40A6: $65
    inc l                                         ; $40A7: $2C
    jr nz, jr_01C_40F3                            ; $40A8: $20 $49

    jr nz, @+$01                                  ; $40AA: $20 $FF

    ld h, e                                       ; $40AC: $63
    ld h, c                                       ; $40AD: $61
    ld l, [hl]                                    ; $40AE: $6E
    daa                                           ; $40AF: $27
    ld [hl], h                                    ; $40B0: $74
    jr nz, jr_01C_4126                            ; $40B1: $20 $73

jr_01C_40B3:
    ld h, l                                       ; $40B3: $65
    ld h, l                                       ; $40B4: $65
    cp $61                                        ; $40B5: $FE $61
    ld l, [hl]                                    ; $40B7: $6E
    ld a, c                                       ; $40B8: $79

jr_01C_40B9:
    ld [hl], h                                    ; $40B9: $74
    ld l, b                                       ; $40BA: $68
    ld l, c                                       ; $40BB: $69
    ld l, [hl]                                    ; $40BC: $6E
    ld h, a                                       ; $40BD: $67
    jr nz, jr_01C_4122                            ; $40BE: $20 $62

    ld [hl], l                                    ; $40C0: $75
    ld [hl], h                                    ; $40C1: $74
    rst $38                                       ; $40C2: $FF
    ld h, h                                       ; $40C3: $64
    ld h, c                                       ; $40C4: $61
    ld [hl], d                                    ; $40C5: $72

jr_01C_40C6:
    ld l, e                                       ; $40C6: $6B
    ld l, [hl]                                    ; $40C7: $6E
    ld h, l                                       ; $40C8: $65

jr_01C_40C9:
    ld [hl], e                                    ; $40C9: $73
    ld [hl], e                                    ; $40CA: $73
    cp $74                                        ; $40CB: $FE $74
    ld l, b                                       ; $40CD: $68
    ld [hl], d                                    ; $40CE: $72
    ld l, a                                       ; $40CF: $6F
    ld [hl], l                                    ; $40D0: $75
    ld h, a                                       ; $40D1: $67
    ld l, b                                       ; $40D2: $68
    jr nz, jr_01C_413D                            ; $40D3: $20 $68

    ld h, l                                       ; $40D5: $65
    ld [hl], d                                    ; $40D6: $72
    ld h, l                                       ; $40D7: $65
    ld l, $FE                                     ; $40D8: $2E $FE
    db $FD                                        ; $40DA: $FD
    sbc d                                         ; $40DB: $9A
    ld b, d                                       ; $40DC: $42
    and d                                         ; $40DD: $A2
    dec hl                                        ; $40DE: $2B
    and c                                         ; $40DF: $A1
    jr nz, jr_01C_4104                            ; $40E0: $20 $22

    ld e, e                                       ; $40E2: $5B
    ld b, b                                       ; $40E3: $40

jr_01C_40E4:
    rst $38                                       ; $40E4: $FF
    push de                                       ; $40E5: $D5

jr_01C_40E6:
    jp nc, $EE44                                  ; $40E6: $D2 $44 $EE

    ld b, b                                       ; $40E9: $40
    ld e, e                                       ; $40EA: $5B
    inc e                                         ; $40EB: $1C
    rst $28                                       ; $40EC: $EF
    ld b, b                                       ; $40ED: $40
    ld b, d                                       ; $40EE: $42
    sbc e                                         ; $40EF: $9B
    ld a, b                                       ; $40F0: $78
    ld [hl], b                                    ; $40F1: $70
    sbc a                                         ; $40F2: $9F

jr_01C_40F3:
    ld c, b                                       ; $40F3: $48

jr_01C_40F4:
    ld h, l                                       ; $40F4: $65
    ld a, c                                       ; $40F5: $79
    ld hl, $54FF                                  ; $40F6: $21 $FF $54
    ld l, b                                       ; $40F9: $68
    ld l, c                                       ; $40FA: $69
    ld [hl], e                                    ; $40FB: $73
    jr nz, jr_01C_4167                            ; $40FC: $20 $69

jr_01C_40FE:
    ld [hl], e                                    ; $40FE: $73
    jr nz, jr_01C_416E                            ; $40FF: $20 $6D

    ld a, c                                       ; $4101: $79
    cp $73                                        ; $4102: $FE $73

jr_01C_4104:
    ld [hl], h                                    ; $4104: $74
    ld [hl], l                                    ; $4105: $75
    ld h, [hl]                                    ; $4106: $66
    ld h, [hl]                                    ; $4107: $66
    ld hl, $54FF                                  ; $4108: $21 $FF $54
    ld l, b                                       ; $410B: $68
    ld h, l                                       ; $410C: $65
    jr nz, jr_01C_4170                            ; $410D: $20 $61

    ld [hl], d                                    ; $410F: $72
    ld l, l                                       ; $4110: $6D
    ld h, d                                       ; $4111: $62
    ld h, c                                       ; $4112: $61
    ld l, [hl]                                    ; $4113: $6E
    ld h, h                                       ; $4114: $64
    cp $66                                        ; $4115: $FE $66
    ld [hl], d                                    ; $4117: $72
    ld l, a                                       ; $4118: $6F
    ld l, l                                       ; $4119: $6D
    jr nz, jr_01C_416B                            ; $411A: $20 $4F

    ld [hl], d                                    ; $411C: $72
    ld [hl], a                                    ; $411D: $77
    ld l, c                                       ; $411E: $69
    ld l, [hl]                                    ; $411F: $6E
    ld l, $2E                                     ; $4120: $2E $2E

jr_01C_4122:
    ld l, $FF                                     ; $4122: $2E $FF
    ld c, l                                       ; $4124: $4D
    ld a, c                                       ; $4125: $79

jr_01C_4126:
    jr nz, jr_01C_418C                            ; $4126: $20 $64

    ld l, c                                       ; $4128: $69
    ld h, a                                       ; $4129: $67
    ld h, a                                       ; $412A: $67
    ld l, c                                       ; $412B: $69
    ld l, [hl]                                    ; $412C: $6E
    ld h, a                                       ; $412D: $67
    cp $67                                        ; $412E: $FE $67
    ld l, h                                       ; $4130: $6C
    ld l, a                                       ; $4131: $6F
    halt                                          ; $4132: $76
    ld h, l                                       ; $4133: $65
    ld [hl], e                                    ; $4134: $73
    ld l, $2E                                     ; $4135: $2E $2E
    ld l, $FF                                     ; $4137: $2E $FF
    ld b, c                                       ; $4139: $41
    ld h, a                                       ; $413A: $67
    ld h, c                                       ; $413B: $61
    ld h, h                                       ; $413C: $64

jr_01C_413D:
    ld l, a                                       ; $413D: $6F
    ld l, [hl]                                    ; $413E: $6E
    daa                                           ; $413F: $27
    ld [hl], e                                    ; $4140: $73
    jr nz, @+$64                                  ; $4141: $20 $62

    ld l, a                                       ; $4143: $6F
    ld l, a                                       ; $4144: $6F
    ld [hl], h                                    ; $4145: $74
    ld [hl], e                                    ; $4146: $73
    inc l                                         ; $4147: $2C
    cp $61                                        ; $4148: $FE $61
    ld l, [hl]                                    ; $414A: $6E
    ld h, h                                       ; $414B: $64
    jr nz, jr_01C_41BB                            ; $414C: $20 $6D

    ld a, c                                       ; $414E: $79
    rst $38                                       ; $414F: $FF
    ld [hl], h                                    ; $4150: $74
    ld [hl], d                                    ; $4151: $72
    ld h, c                                       ; $4152: $61
    ld l, [hl]                                    ; $4153: $6E
    ld [hl], e                                    ; $4154: $73
    ld l, h                                       ; $4155: $6C
    ld h, c                                       ; $4156: $61
    ld [hl], h                                    ; $4157: $74
    ld l, c                                       ; $4158: $69
    ld l, a                                       ; $4159: $6F
    ld l, [hl]                                    ; $415A: $6E
    cp $62                                        ; $415B: $FE $62
    ld [hl], d                                    ; $415D: $72
    ld h, c                                       ; $415E: $61
    ld h, e                                       ; $415F: $63
    ld h, l                                       ; $4160: $65
    ld l, h                                       ; $4161: $6C
    ld h, l                                       ; $4162: $65
    ld [hl], h                                    ; $4163: $74
    ld hl, $FDFE                                  ; $4164: $21 $FE $FD

jr_01C_4167:
    sbc d                                         ; $4167: $9A
    xor h                                         ; $4168: $AC
    and e                                         ; $4169: $A3
    and e                                         ; $416A: $A3

jr_01C_416B:
    inc bc                                        ; $416B: $03
    rlca                                          ; $416C: $07
    nop                                           ; $416D: $00

jr_01C_416E:
    add c                                         ; $416E: $81
    ld e, l                                       ; $416F: $5D

jr_01C_4170:
    ld b, d                                       ; $4170: $42
    sbc e                                         ; $4171: $9B
    ld a, b                                       ; $4172: $78
    ld [hl], b                                    ; $4173: $70
    sbc a                                         ; $4174: $9F
    ld d, e                                       ; $4175: $53
    ld l, l                                       ; $4176: $6D
    ld h, l                                       ; $4177: $65
    ld l, h                                       ; $4178: $6C
    ld l, h                                       ; $4179: $6C
    ld [hl], e                                    ; $417A: $73
    jr nz, jr_01C_41EC                            ; $417B: $20 $6F

    ld h, [hl]                                    ; $417D: $66
    rst $38                                       ; $417E: $FF
    ld h, h                                       ; $417F: $64
    ld h, l                                       ; $4180: $65
    ld h, e                                       ; $4181: $63
    ld h, c                                       ; $4182: $61
    ld a, c                                       ; $4183: $79
    ld l, $FE                                     ; $4184: $2E $FE
    db $FD                                        ; $4186: $FD
    sbc d                                         ; $4187: $9A
    ld b, d                                       ; $4188: $42
    sbc e                                         ; $4189: $9B
    ld a, b                                       ; $418A: $78
    ld [hl], b                                    ; $418B: $70

jr_01C_418C:
    sbc a                                         ; $418C: $9F
    ld d, h                                       ; $418D: $54
    ld l, b                                       ; $418E: $68
    ld h, l                                       ; $418F: $65
    ld [hl], d                                    ; $4190: $72
    ld h, l                                       ; $4191: $65
    daa                                           ; $4192: $27
    ld [hl], e                                    ; $4193: $73
    jr nz, jr_01C_41FD                            ; $4194: $20 $67

    ld [hl], d                                    ; $4196: $72
    ld [hl], l                                    ; $4197: $75
    ld l, [hl]                                    ; $4198: $6E
    ld h, a                                       ; $4199: $67
    ld a, c                                       ; $419A: $79
    rst $38                                       ; $419B: $FF
    ld [hl], e                                    ; $419C: $73
    ld l, h                                       ; $419D: $6C
    ld l, c                                       ; $419E: $69
    ld l, l                                       ; $419F: $6D
    ld h, l                                       ; $41A0: $65
    jr nz, jr_01C_420C                            ; $41A1: $20 $69

    ld l, [hl]                                    ; $41A3: $6E
    jr nz, @+$76                                  ; $41A4: $20 $74

    ld l, b                                       ; $41A6: $68
    ld l, c                                       ; $41A7: $69
    ld [hl], e                                    ; $41A8: $73
    cp $6F                                        ; $41A9: $FE $6F
    ld l, [hl]                                    ; $41AB: $6E
    ld h, l                                       ; $41AC: $65
    ld l, $FE                                     ; $41AD: $2E $FE
    db $FD                                        ; $41AF: $FD
    sbc d                                         ; $41B0: $9A
    ld b, d                                       ; $41B1: $42
    sbc e                                         ; $41B2: $9B
    ld a, b                                       ; $41B3: $78
    ld [hl], b                                    ; $41B4: $70
    sbc a                                         ; $41B5: $9F
    ld b, c                                       ; $41B6: $41
    jr nz, @+$74                                  ; $41B7: $20 $72

    ld l, a                                       ; $41B9: $6F
    ld [hl], h                                    ; $41BA: $74

jr_01C_41BB:
    ld [hl], h                                    ; $41BB: $74
    ld l, c                                       ; $41BC: $69
    ld l, [hl]                                    ; $41BD: $6E
    ld h, a                                       ; $41BE: $67
    jr nz, jr_01C_4223                            ; $41BF: $20 $62

    ld h, l                                       ; $41C1: $65
    ld h, h                                       ; $41C2: $64
    ld l, $FE                                     ; $41C3: $2E $FE
    db $FD                                        ; $41C5: $FD
    sbc d                                         ; $41C6: $9A
    ld b, d                                       ; $41C7: $42
    sbc e                                         ; $41C8: $9B
    ld a, b                                       ; $41C9: $78
    ld [hl], b                                    ; $41CA: $70
    sbc a                                         ; $41CB: $9F
    ld b, e                                       ; $41CC: $43
    ld l, a                                       ; $41CD: $6F
    halt                                          ; $41CE: $76
    ld h, l                                       ; $41CF: $65
    ld [hl], d                                    ; $41D0: $72
    ld h, l                                       ; $41D1: $65
    ld h, h                                       ; $41D2: $64
    jr nz, @+$6B                                  ; $41D3: $20 $69

    ld l, [hl]                                    ; $41D5: $6E
    rst $38                                       ; $41D6: $FF
    ld h, h                                       ; $41D7: $64
    ld [hl], l                                    ; $41D8: $75
    ld [hl], e                                    ; $41D9: $73
    ld [hl], h                                    ; $41DA: $74
    jr nz, @+$63                                  ; $41DB: $20 $61

    ld l, [hl]                                    ; $41DD: $6E
    ld h, h                                       ; $41DE: $64
    jr nz, jr_01C_4243                            ; $41DF: $20 $62

    ld [hl], l                                    ; $41E1: $75
    ld h, a                                       ; $41E2: $67
    ld [hl], e                                    ; $41E3: $73
    ld l, $FE                                     ; $41E4: $2E $FE
    db $FD                                        ; $41E6: $FD
    sbc d                                         ; $41E7: $9A
    ld b, d                                       ; $41E8: $42
    sbc e                                         ; $41E9: $9B
    ld a, b                                       ; $41EA: $78
    ld [hl], b                                    ; $41EB: $70

jr_01C_41EC:
    sbc a                                         ; $41EC: $9F
    ld c, c                                       ; $41ED: $49
    ld [hl], h                                    ; $41EE: $74
    daa                                           ; $41EF: $27
    ld [hl], e                                    ; $41F0: $73
    jr nz, jr_01C_4257                            ; $41F1: $20 $64

    ld [hl], d                                    ; $41F3: $72
    ld l, c                                       ; $41F4: $69
    ld [hl], b                                    ; $41F5: $70
    ld [hl], b                                    ; $41F6: $70
    ld l, c                                       ; $41F7: $69
    ld l, [hl]                                    ; $41F8: $6E
    ld h, a                                       ; $41F9: $67
    ld l, $FE                                     ; $41FA: $2E $FE
    db $FD                                        ; $41FC: $FD

jr_01C_41FD:
    sbc d                                         ; $41FD: $9A
    ld b, d                                       ; $41FE: $42
    sbc e                                         ; $41FF: $9B
    ld a, b                                       ; $4200: $78
    ld [hl], b                                    ; $4201: $70
    sbc a                                         ; $4202: $9F
    ld c, c                                       ; $4203: $49
    ld [hl], h                                    ; $4204: $74
    daa                                           ; $4205: $27
    ld [hl], e                                    ; $4206: $73
    jr nz, @+$6F                                  ; $4207: $20 $6D

    ld l, c                                       ; $4209: $69
    ld [hl], e                                    ; $420A: $73
    ld [hl], e                                    ; $420B: $73

jr_01C_420C:
    ld l, c                                       ; $420C: $69
    ld l, [hl]                                    ; $420D: $6E
    ld h, a                                       ; $420E: $67
    rst $38                                       ; $420F: $FF
    ld [hl], h                                    ; $4210: $74
    ld l, b                                       ; $4211: $68
    ld h, l                                       ; $4212: $65
    jr nz, jr_01C_4280                            ; $4213: $20 $6B

    ld l, [hl]                                    ; $4215: $6E
    ld l, a                                       ; $4216: $6F
    ld h, d                                       ; $4217: $62
    ld [hl], e                                    ; $4218: $73
    ld l, $FE                                     ; $4219: $2E $FE

jr_01C_421B:
    db $FD                                        ; $421B: $FD
    sbc d                                         ; $421C: $9A
    ld b, d                                       ; $421D: $42
    sbc e                                         ; $421E: $9B
    ld a, b                                       ; $421F: $78
    ld [hl], b                                    ; $4220: $70
    sbc a                                         ; $4221: $9F
    ld c, c                                       ; $4222: $49

jr_01C_4223:
    ld [hl], h                                    ; $4223: $74
    jr nz, jr_01C_4298                            ; $4224: $20 $72

    ld h, l                                       ; $4226: $65
    ld h, l                                       ; $4227: $65
    ld l, e                                       ; $4228: $6B
    ld [hl], e                                    ; $4229: $73
    ld l, $FE                                     ; $422A: $2E $FE
    ld c, c                                       ; $422C: $49
    jr nz, jr_01C_42A2                            ; $422D: $20 $73

    ld l, b                                       ; $422F: $68
    ld l, a                                       ; $4230: $6F
    ld [hl], l                                    ; $4231: $75
    ld l, h                                       ; $4232: $6C
    ld h, h                                       ; $4233: $64
    jr nz, jr_01C_42A2                            ; $4234: $20 $6C

    ld h, l                                       ; $4236: $65
    ld h, c                                       ; $4237: $61
    halt                                          ; $4238: $76
    ld h, l                                       ; $4239: $65
    rst $38                                       ; $423A: $FF
    ld l, c                                       ; $423B: $69
    ld [hl], h                                    ; $423C: $74
    jr nz, @+$63                                  ; $423D: $20 $61

    ld l, h                                       ; $423F: $6C
    ld l, a                                       ; $4240: $6F
    ld l, [hl]                                    ; $4241: $6E
    ld h, l                                       ; $4242: $65

jr_01C_4243:
    ld l, $FE                                     ; $4243: $2E $FE
    db $FD                                        ; $4245: $FD
    sbc d                                         ; $4246: $9A
    ld b, d                                       ; $4247: $42
    sbc e                                         ; $4248: $9B
    ld a, b                                       ; $4249: $78
    ld [hl], b                                    ; $424A: $70
    sbc a                                         ; $424B: $9F
    ld c, a                                       ; $424C: $4F
    ld l, a                                       ; $424D: $6F
    ld l, a                                       ; $424E: $6F
    inc l                                         ; $424F: $2C
    jr nz, jr_01C_42B3                            ; $4250: $20 $61

    jr nz, jr_01C_42BA                            ; $4252: $20 $66

    ld h, l                                       ; $4254: $65
    ld h, c                                       ; $4255: $61
    ld [hl], h                                    ; $4256: $74

jr_01C_4257:
    ld l, b                                       ; $4257: $68
    ld h, l                                       ; $4258: $65
    ld [hl], d                                    ; $4259: $72
    ld l, $FE                                     ; $425A: $2E $FE
    db $FD                                        ; $425C: $FD
    sbc d                                         ; $425D: $9A
    rlca                                          ; $425E: $07
    nop                                           ; $425F: $00
    add c                                         ; $4260: $81
    ld e, l                                       ; $4261: $5D
    add hl, bc                                    ; $4262: $09
    nop                                           ; $4263: $00
    jr nz, jr_01C_421B                            ; $4264: $20 $B5

    ld d, b                                       ; $4266: $50
    ld b, d                                       ; $4267: $42
    ld bc, $1507                                  ; $4268: $01 $07 $15
    xor h                                         ; $426B: $AC
    or d                                          ; $426C: $B2
    and d                                         ; $426D: $A2
    nop                                           ; $426E: $00
    sub [hl]                                      ; $426F: $96
    inc e                                         ; $4270: $1C
    ld l, b                                       ; $4271: $68
    ld b, d                                       ; $4272: $42
    sub e                                         ; $4273: $93
    ld h, l                                       ; $4274: $65
    ld [hl], $55                                  ; $4275: $36 $55
    ld c, a                                       ; $4277: $4F
    ld l, d                                       ; $4278: $6A
    adc a                                         ; $4279: $8F
    ld h, h                                       ; $427A: $64
    ld a, h                                       ; $427B: $7C
    ld a, h                                       ; $427C: $7C
    ld c, l                                       ; $427D: $4D
    ld a, h                                       ; $427E: $7C
    ld l, c                                       ; $427F: $69

jr_01C_4280:
    ld a, $5C                                     ; $4280: $3E $5C
    ld h, h                                       ; $4282: $64
    dec [hl]                                      ; $4283: $35
    ld e, h                                       ; $4284: $5C
    ld h, [hl]                                    ; $4285: $66
    ret nz                                        ; $4286: $C0

jr_01C_4287:
    ld e, h                                       ; $4287: $5C
    ld hl, $0005                                  ; $4288: $21 $05 $00
    add c                                         ; $428B: $81
    ld e, l                                       ; $428C: $5D
    dec b                                         ; $428D: $05
    dec b                                         ; $428E: $05

jr_01C_428F:
    and l                                         ; $428F: $A5
    ret nc                                        ; $4290: $D0

    nop                                           ; $4291: $00
    jr nz, jr_01C_428F                            ; $4292: $20 $FB

    ld d, b                                       ; $4294: $50
    ld [hl+], a                                   ; $4295: $22
    dec b                                         ; $4296: $05
    ld b, b                                       ; $4297: $40

jr_01C_4298:
    dec bc                                        ; $4298: $0B
    nop                                           ; $4299: $00
    rra                                           ; $429A: $1F
    inc e                                         ; $429B: $1C
    nop                                           ; $429C: $00
    add d                                         ; $429D: $82
    ld a, [hl]                                    ; $429E: $7E
    ld e, $D0                                     ; $429F: $1E $D0
    ld [bc], a                                    ; $42A1: $02

jr_01C_42A2:
    ld [bc], a                                    ; $42A2: $02
    ld b, a                                       ; $42A3: $47
    jp nc, $0712                                  ; $42A4: $D2 $12 $07

    sub h                                         ; $42A7: $94
    ld b, d                                       ; $42A8: $42
    xor c                                         ; $42A9: $A9
    ld de, $AC00                                  ; $42AA: $11 $00 $AC
    or d                                          ; $42AD: $B2
    and d                                         ; $42AE: $A2
    ld bc, $3C40                                  ; $42AF: $01 $40 $3C
    sub e                                         ; $42B2: $93

jr_01C_42B3:
    adc b                                         ; $42B3: $88
    nop                                           ; $42B4: $00
    ld bc, $88FF                                  ; $42B5: $01 $FF $88
    nop                                           ; $42B8: $00
    ld [bc], a                                    ; $42B9: $02

jr_01C_42BA:
    rst $38                                       ; $42BA: $FF
    adc b                                         ; $42BB: $88
    nop                                           ; $42BC: $00
    inc bc                                        ; $42BD: $03
    rst $38                                       ; $42BE: $FF
    xor h                                         ; $42BF: $AC
    and e                                         ; $42C0: $A3
    and e                                         ; $42C1: $A3
    nop                                           ; $42C2: $00
    ld h, l                                       ; $42C3: $65
    ld [hl], $55                                  ; $42C4: $36 $55
    ld c, a                                       ; $42C6: $4F
    ld l, c                                       ; $42C7: $69
    ld a, $5C                                     ; $42C8: $3E $5C
    ld h, h                                       ; $42CA: $64
    dec [hl]                                      ; $42CB: $35
    ld e, h                                       ; $42CC: $5C
    ld h, [hl]                                    ; $42CD: $66
    ret nz                                        ; $42CE: $C0

    ld e, h                                       ; $42CF: $5C
    ld hl, $0005                                  ; $42D0: $21 $05 $00
    ld l, e                                       ; $42D3: $6B
    ld c, d                                       ; $42D4: $4A
    ld [$A815], sp                                ; $42D5: $08 $15 $A8
    jp nc, $1C00                                  ; $42D8: $D2 $00 $1C

    ld d, c                                       ; $42DB: $51
    ld b, e                                       ; $42DC: $43
    ld [hl+], a                                   ; $42DD: $22
    dec b                                         ; $42DE: $05
    ld b, b                                       ; $42DF: $40
    dec b                                         ; $42E0: $05
    inc bc                                        ; $42E1: $03
    ld l, e                                       ; $42E2: $6B
    ld c, d                                       ; $42E3: $4A
    jr nz, jr_01C_42F2                            ; $42E4: $20 $0C

    and b                                         ; $42E6: $A0

jr_01C_42E7:
    pop de                                        ; $42E7: $D1
    ld [bc], a                                    ; $42E8: $02
    inc e                                         ; $42E9: $1C
    inc hl                                        ; $42EA: $23
    ld b, e                                       ; $42EB: $43
    ld [hl+], a                                   ; $42EC: $22
    inc b                                         ; $42ED: $04
    ld b, b                                       ; $42EE: $40
    ld d, b                                       ; $42EF: $50
    push af                                       ; $42F0: $F5
    pop bc                                        ; $42F1: $C1

jr_01C_42F2:
    ld c, b                                       ; $42F2: $48
    ld [hl], h                                    ; $42F3: $74
    dec e                                         ; $42F4: $1D
    ld b, b                                       ; $42F5: $40
    ccf                                           ; $42F6: $3F
    ld [hl], h                                    ; $42F7: $74
    ld l, e                                       ; $42F8: $6B
    ld [bc], a                                    ; $42F9: $02
    dec c                                         ; $42FA: $0D
    jr nz, jr_01C_4350                            ; $42FB: $20 $53

    nop                                           ; $42FD: $00
    add b                                         ; $42FE: $80
    nop                                           ; $42FF: $00
    ld l, e                                       ; $4300: $6B
    dec de                                        ; $4301: $1B
    inc h                                         ; $4302: $24
    ld b, b                                       ; $4303: $40
    ld b, e                                       ; $4304: $43
    jr nz, jr_01C_4287                            ; $4305: $20 $80

    nop                                           ; $4307: $00

jr_01C_4308:
    ld l, e                                       ; $4308: $6B
    jr c, @+$51                                   ; $4309: $38 $4F

jr_01C_430B:
    rrca                                          ; $430B: $0F
    ld e, d                                       ; $430C: $5A
    ret nc                                        ; $430D: $D0

    add c                                         ; $430E: $81
    nop                                           ; $430F: $00
    dec bc                                        ; $4310: $0B
    nop                                           ; $4311: $00
    add d                                         ; $4312: $82
    ld l, a                                       ; $4313: $6F
    rrca                                          ; $4314: $0F
    rst $38                                       ; $4315: $FF
    ld a, a                                       ; $4316: $7F
    rra                                           ; $4317: $1F
    dec c                                         ; $4318: $0D
    sub h                                         ; $4319: $94
    halt                                          ; $431A: $76
    jr nz, @+$11                                  ; $431B: $20 $0F

    ld b, d                                       ; $431D: $42

jr_01C_431E:
    ld e, e                                       ; $431E: $5B
    inc e                                         ; $431F: $1C
    add sp, $47                                   ; $4320: $E8 $47
    add hl, de                                    ; $4322: $19
    ld a, l                                       ; $4323: $7D
    jp c, $03C1                                   ; $4324: $DA $C1 $03

    dec b                                         ; $4327: $05
    nop                                           ; $4328: $00
    ld l, e                                       ; $4329: $6B
    ld c, d                                       ; $432A: $4A
    ld [$8814], sp                                ; $432B: $08 $14 $88

jr_01C_432E:
    jp nc, $1C00                                  ; $432E: $D2 $00 $1C

jr_01C_4331:
    cp h                                          ; $4331: $BC
    ld b, e                                       ; $4332: $43
    ld [hl+], a                                   ; $4333: $22
    inc b                                         ; $4334: $04
    ld b, b                                       ; $4335: $40
    dec bc                                        ; $4336: $0B
    nop                                           ; $4337: $00
    ld b, b                                       ; $4338: $40
    jr nz, jr_01C_4350                            ; $4339: $20 $15

    jr nz, jr_01C_4308                            ; $433B: $20 $CB

    ld h, l                                       ; $433D: $65
    jr jr_01C_4360                                ; $433E: $18 $20

    db $D3                                        ; $4340: $D3
    ld h, [hl]                                    ; $4341: $66
    nop                                           ; $4342: $00

jr_01C_4343:
    nop                                           ; $4343: $00
    ld b, b                                       ; $4344: $40
    jr nz, jr_01C_43C4                            ; $4345: $20 $7D

jr_01C_4347:
    adc c                                         ; $4347: $89
    pop bc                                        ; $4348: $C1
    inc bc                                        ; $4349: $03
    add e                                         ; $434A: $83
    jr nz, jr_01C_434D                            ; $434B: $20 $00

jr_01C_434D:
    inc bc                                        ; $434D: $03
    nop                                           ; $434E: $00

jr_01C_434F:
    ld d, e                                       ; $434F: $53

jr_01C_4350:
    ld b, d                                       ; $4350: $42
    dec d                                         ; $4351: $15
    jr nz, @-$79                                  ; $4352: $20 $85

    ld d, h                                       ; $4354: $54
    add b                                         ; $4355: $80
    jr nz, jr_01C_42E7                            ; $4356: $20 $8F

    ld d, h                                       ; $4358: $54
    jr nz, jr_01C_437B                            ; $4359: $20 $20

    add l                                         ; $435B: $85
    ld d, h                                       ; $435C: $54
    ld b, b                                       ; $435D: $40
    jr nz, jr_01C_430B                            ; $435E: $20 $AB

jr_01C_4360:
    ld d, b                                       ; $4360: $50
    nop                                           ; $4361: $00
    nop                                           ; $4362: $00
    ld e, e                                       ; $4363: $5B

jr_01C_4364:
    inc e                                         ; $4364: $1C
    db $DB                                        ; $4365: $DB
    ld b, h                                       ; $4366: $44
    ld e, a                                       ; $4367: $5F
    dec d                                         ; $4368: $15
    jr nz, jr_01C_431E                            ; $4369: $20 $B3

    ld c, a                                       ; $436B: $4F

jr_01C_436C:
    db $10                                        ; $436C: $10
    jr nz, jr_01C_432E                            ; $436D: $20 $BF

    ld d, b                                       ; $436F: $50
    jr jr_01C_4392                                ; $4370: $18 $20

jr_01C_4372:
    ret                                           ; $4372: $C9


    ld d, b                                       ; $4373: $50
    jr jr_01C_4396                                ; $4374: $18 $20

    or l                                          ; $4376: $B5
    ld d, b                                       ; $4377: $50
    nop                                           ; $4378: $00
    nop                                           ; $4379: $00

jr_01C_437A:
    ld e, e                                       ; $437A: $5B

jr_01C_437B:
    inc e                                         ; $437B: $1C
    db $EB                                        ; $437C: $EB
    ld b, h                                       ; $437D: $44
    ld e, a                                       ; $437E: $5F
    dec d                                         ; $437F: $15

jr_01C_4380:
    jr nz, jr_01C_434F                            ; $4380: $20 $CD

    ld c, a                                       ; $4382: $4F
    db $10                                        ; $4383: $10
    jr nz, jr_01C_4331                            ; $4384: $20 $AB

    ld d, b                                       ; $4386: $50
    nop                                           ; $4387: $00

jr_01C_4388:
    nop                                           ; $4388: $00
    ld e, e                                       ; $4389: $5B
    inc e                                         ; $438A: $1C
    ld [hl], $45                                  ; $438B: $36 $45
    ld e, a                                       ; $438D: $5F
    ld e, d                                       ; $438E: $5A
    inc e                                         ; $438F: $1C
    sub l                                         ; $4390: $95
    ld b, h                                       ; $4391: $44

jr_01C_4392:
    inc de                                        ; $4392: $13
    add c                                         ; $4393: $81
    ld e, l                                       ; $4394: $5D
    ld b, l                                       ; $4395: $45

jr_01C_4396:
    jr nz, jr_01C_4343                            ; $4396: $20 $AB

    ld d, b                                       ; $4398: $50
    inc d                                         ; $4399: $14
    jr nz, jr_01C_4347                            ; $439A: $20 $AB

    ld d, b                                       ; $439C: $50
    ld e, e                                       ; $439D: $5B
    inc e                                         ; $439E: $1C
    ld e, e                                       ; $439F: $5B
    ld b, l                                       ; $43A0: $45
    ld e, a                                       ; $43A1: $5F
    dec d                                         ; $43A2: $15
    jr nz, jr_01C_4364                            ; $43A3: $20 $BF

    ld d, b                                       ; $43A5: $50
    db $10                                        ; $43A6: $10
    jr nz, jr_01C_4372                            ; $43A7: $20 $C9

    ld d, b                                       ; $43A9: $50
    db $10                                        ; $43AA: $10
    jr nz, jr_01C_436C                            ; $43AB: $20 $BF

    ld d, b                                       ; $43AD: $50
    db $10                                        ; $43AE: $10
    jr nz, jr_01C_437A                            ; $43AF: $20 $C9

    ld d, b                                       ; $43B1: $50
    stop                                          ; $43B2: $10 $00
    ld e, e                                       ; $43B4: $5B
    inc e                                         ; $43B5: $1C
    ld [hl], c                                    ; $43B6: $71

jr_01C_43B7:
    ld b, l                                       ; $43B7: $45
    ld e, a                                       ; $43B8: $5F
    dec bc                                        ; $43B9: $0B
    inc bc                                        ; $43BA: $03
    ld b, d                                       ; $43BB: $42
    inc d                                         ; $43BC: $14
    jr nz, jr_01C_4388                            ; $43BD: $20 $C9

    ld d, b                                       ; $43BF: $50
    ld e, l                                       ; $43C0: $5D

jr_01C_43C1:
    dec b                                         ; $43C1: $05
    inc bc                                        ; $43C2: $03
    dec b                                         ; $43C3: $05

jr_01C_43C4:
    ld h, h                                       ; $43C4: $64
    rrca                                          ; $43C5: $0F
    dec c                                         ; $43C6: $0D
    xor a                                         ; $43C7: $AF
    pop de                                        ; $43C8: $D1

jr_01C_43C9:
    nop                                           ; $43C9: $00
    ld de, $75A6                                  ; $43CA: $11 $A6 $75
    inc e                                         ; $43CD: $1C

jr_01C_43CE:
    ld e, $43                                     ; $43CE: $1E $43
    ld b, b                                       ; $43D0: $40

jr_01C_43D1:
    jr nz, jr_01C_43E7                            ; $43D1: $20 $14

    jr nz, jr_01C_4380                            ; $43D3: $20 $AB

    ld d, b                                       ; $43D5: $50

jr_01C_43D6:
    ld e, e                                       ; $43D6: $5B
    inc e                                         ; $43D7: $1C
    sub c                                         ; $43D8: $91
    ld b, l                                       ; $43D9: $45
    ld e, a                                       ; $43DA: $5F
    ld b, b                                       ; $43DB: $40
    ld b, b                                       ; $43DC: $40

jr_01C_43DD:
    ld e, e                                       ; $43DD: $5B
    inc e                                         ; $43DE: $1C
    cp c                                          ; $43DF: $B9
    ld b, l                                       ; $43E0: $45
    dec d                                         ; $43E1: $15
    jr nz, jr_01C_43C1                            ; $43E2: $20 $DD

    ld c, a                                       ; $43E4: $4F

jr_01C_43E5:
    jr nz, @+$22                                  ; $43E5: $20 $20

jr_01C_43E7:
    db $ED                                        ; $43E7: $ED
    ld c, a                                       ; $43E8: $4F
    ld b, b                                       ; $43E9: $40
    jr nz, jr_01C_43C9                            ; $43EA: $20 $DD

    ld c, a                                       ; $43EC: $4F
    ld b, b                                       ; $43ED: $40
    jr nz, jr_01C_43DD                            ; $43EE: $20 $ED

    ld c, a                                       ; $43F0: $4F
    ld b, b                                       ; $43F1: $40
    jr nz, jr_01C_43D1                            ; $43F2: $20 $DD

    ld c, a                                       ; $43F4: $4F
    ld b, b                                       ; $43F5: $40

jr_01C_43F6:
    jr nz, jr_01C_43E5                            ; $43F6: $20 $ED

    ld c, a                                       ; $43F8: $4F
    jr nz, jr_01C_441B                            ; $43F9: $20 $20

    xor e                                         ; $43FB: $AB
    ld d, b                                       ; $43FC: $50
    nop                                           ; $43FD: $00
    nop                                           ; $43FE: $00
    ld e, a                                       ; $43FF: $5F
    ld e, e                                       ; $4400: $5B
    inc e                                         ; $4401: $1C
    inc d                                         ; $4402: $14
    ld b, [hl]                                    ; $4403: $46
    ld e, a                                       ; $4404: $5F
    dec d                                         ; $4405: $15

jr_01C_4406:
    jr nz, jr_01C_4425                            ; $4406: $20 $1D

    ld d, b                                       ; $4408: $50
    db $10                                        ; $4409: $10

jr_01C_440A:
    jr nz, jr_01C_43B7                            ; $440A: $20 $AB

    ld d, b                                       ; $440C: $50
    nop                                           ; $440D: $00
    nop                                           ; $440E: $00
    ld e, e                                       ; $440F: $5B
    inc e                                         ; $4410: $1C
    ld c, c                                       ; $4411: $49
    ld b, [hl]                                    ; $4412: $46
    ld e, a                                       ; $4413: $5F
    dec d                                         ; $4414: $15
    jr nz, jr_01C_43D6                            ; $4415: $20 $BF

    ld d, b                                       ; $4417: $50
    jr jr_01C_443A                                ; $4418: $18 $20

    ret                                           ; $441A: $C9


jr_01C_441B:
    ld d, b                                       ; $441B: $50
    jr jr_01C_443E                                ; $441C: $18 $20

    or e                                          ; $441E: $B3
    ld c, a                                       ; $441F: $4F
    db $10                                        ; $4420: $10
    jr nz, jr_01C_43CE                            ; $4421: $20 $AB

    ld d, b                                       ; $4423: $50
    nop                                           ; $4424: $00

jr_01C_4425:
    nop                                           ; $4425: $00
    ld e, e                                       ; $4426: $5B
    inc e                                         ; $4427: $1C
    ld l, h                                       ; $4428: $6C
    ld b, [hl]                                    ; $4429: $46
    ld e, a                                       ; $442A: $5F
    dec d                                         ; $442B: $15
    jr nz, jr_01C_444B                            ; $442C: $20 $1D

    ld d, b                                       ; $442E: $50
    db $10                                        ; $442F: $10
    jr nz, jr_01C_43DD                            ; $4430: $20 $AB

    ld d, b                                       ; $4432: $50

jr_01C_4433:
    nop                                           ; $4433: $00
    nop                                           ; $4434: $00
    ld b, b                                       ; $4435: $40
    db $10                                        ; $4436: $10
    ld hl, $1C5A                                  ; $4437: $21 $5A $1C

jr_01C_443A:
    xor e                                         ; $443A: $AB
    ld b, h                                       ; $443B: $44
    dec bc                                        ; $443C: $0B
    inc b                                         ; $443D: $04

jr_01C_443E:
    ld a, [hl]                                    ; $443E: $7E
    ld e, $D0                                     ; $443F: $1E $D0
    ld [bc], a                                    ; $4441: $02
    ld [bc], a                                    ; $4442: $02
    ld b, a                                       ; $4443: $47
    jp nc, $0712                                  ; $4444: $D2 $12 $07

    ld b, d                                       ; $4447: $42
    inc d                                         ; $4448: $14

jr_01C_4449:
    jr nz, jr_01C_43F6                            ; $4449: $20 $AB

jr_01C_444B:
    ld d, b                                       ; $444B: $50
    ld e, e                                       ; $444C: $5B
    inc e                                         ; $444D: $1C
    ld [hl+], a                                   ; $444E: $22
    ld b, a                                       ; $444F: $47
    ld e, a                                       ; $4450: $5F
    inc de                                        ; $4451: $13
    and $63                                       ; $4452: $E6 $63
    dec d                                         ; $4454: $15
    jr nz, jr_01C_440A                            ; $4455: $20 $B3

    ld c, a                                       ; $4457: $4F
    db $10                                        ; $4458: $10
    jr nz, jr_01C_4406                            ; $4459: $20 $AB

    ld d, b                                       ; $445B: $50
    nop                                           ; $445C: $00
    nop                                           ; $445D: $00
    ld e, e                                       ; $445E: $5B
    inc e                                         ; $445F: $1C
    inc a                                         ; $4460: $3C
    ld b, a                                       ; $4461: $47
    ld e, a                                       ; $4462: $5F
    dec d                                         ; $4463: $15
    jr nz, @-$4B                                  ; $4464: $20 $B3

    ld c, a                                       ; $4466: $4F
    ld [hl], b                                    ; $4467: $70
    jr nz, jr_01C_4433                            ; $4468: $20 $C9

    ld d, b                                       ; $446A: $50
    jr jr_01C_448D                                ; $446B: $18 $20

    cp a                                          ; $446D: $BF
    ld d, b                                       ; $446E: $50
    jr jr_01C_4491                                ; $446F: $18 $20

    ret                                           ; $4471: $C9


    ld d, b                                       ; $4472: $50
    jr jr_01C_4495                                ; $4473: $18 $20

    cp a                                          ; $4475: $BF
    ld d, b                                       ; $4476: $50
    jr jr_01C_4499                                ; $4477: $18 $20

    ret                                           ; $4479: $C9


    ld d, b                                       ; $447A: $50
    jr jr_01C_447D                                ; $447B: $18 $00

jr_01C_447D:
    ld e, e                                       ; $447D: $5B
    inc e                                         ; $447E: $1C
    ld c, e                                       ; $447F: $4B
    ld b, a                                       ; $4480: $47
    ld e, a                                       ; $4481: $5F
    inc d                                         ; $4482: $14
    jr nz, jr_01C_443A                            ; $4483: $20 $B5

    ld d, b                                       ; $4485: $50
    ld e, e                                       ; $4486: $5B
    inc e                                         ; $4487: $1C
    ld a, a                                       ; $4488: $7F
    ld b, a                                       ; $4489: $47
    ld b, b                                       ; $448A: $40
    db $10                                        ; $448B: $10
    rra                                           ; $448C: $1F

jr_01C_448D:
    inc e                                         ; $448D: $1C
    inc de                                        ; $448E: $13
    add c                                         ; $448F: $81
    ld e, l                                       ; $4490: $5D

jr_01C_4491:
    ld b, l                                       ; $4491: $45
    jr nz, jr_01C_4449                            ; $4492: $20 $B5

    ld d, b                                       ; $4494: $50

jr_01C_4495:
    ld b, b                                       ; $4495: $40
    rst $38                                       ; $4496: $FF
    ld b, b                                       ; $4497: $40
    rst $38                                       ; $4498: $FF

jr_01C_4499:
    ld b, b                                       ; $4499: $40
    rst $38                                       ; $449A: $FF
    ld b, b                                       ; $449B: $40
    rst $38                                       ; $449C: $FF
    ld b, b                                       ; $449D: $40
    rst $38                                       ; $449E: $FF
    ld b, b                                       ; $449F: $40
    rst $38                                       ; $44A0: $FF
    rlca                                          ; $44A1: $07
    nop                                           ; $44A2: $00
    ld l, e                                       ; $44A3: $6B
    ld c, d                                       ; $44A4: $4A
    add hl, bc                                    ; $44A5: $09
    nop                                           ; $44A6: $00
    inc e                                         ; $44A7: $1C
    sbc c                                         ; $44A8: $99
    ld b, e                                       ; $44A9: $43
    ld b, d                                       ; $44AA: $42
    dec de                                        ; $44AB: $1B
    rlca                                          ; $44AC: $07
    add e                                         ; $44AD: $83
    ld [bc], a                                    ; $44AE: $02
    nop                                           ; $44AF: $00
    inc b                                         ; $44B0: $04
    nop                                           ; $44B1: $00
    add e                                         ; $44B2: $83
    ld [bc], a                                    ; $44B3: $02
    nop                                           ; $44B4: $00
    db $FC                                        ; $44B5: $FC
    nop                                           ; $44B6: $00
    add e                                         ; $44B7: $83
    ld [bc], a                                    ; $44B8: $02
    inc b                                         ; $44B9: $04
    nop                                           ; $44BA: $00
    nop                                           ; $44BB: $00
    add e                                         ; $44BC: $83
    ld [bc], a                                    ; $44BD: $02
    db $FC                                        ; $44BE: $FC
    nop                                           ; $44BF: $00
    nop                                           ; $44C0: $00
    add e                                         ; $44C1: $83
    ld [bc], a                                    ; $44C2: $02
    nop                                           ; $44C3: $00
    inc b                                         ; $44C4: $04
    nop                                           ; $44C5: $00
    add e                                         ; $44C6: $83
    ld [bc], a                                    ; $44C7: $02
    nop                                           ; $44C8: $00
    db $FC                                        ; $44C9: $FC
    nop                                           ; $44CA: $00
    add e                                         ; $44CB: $83
    ld [bc], a                                    ; $44CC: $02
    inc b                                         ; $44CD: $04
    nop                                           ; $44CE: $00
    nop                                           ; $44CF: $00
    add e                                         ; $44D0: $83
    ld [bc], a                                    ; $44D1: $02
    db $FC                                        ; $44D2: $FC
    nop                                           ; $44D3: $00
    nop                                           ; $44D4: $00
    add hl, bc                                    ; $44D5: $09
    nop                                           ; $44D6: $00
    inc e                                         ; $44D7: $1C
    ld c, b                                       ; $44D8: $48
    ld b, h                                       ; $44D9: $44
    ld b, d                                       ; $44DA: $42
    sbc e                                         ; $44DB: $9B
    ld a, b                                       ; $44DC: $78
    ld [hl], b                                    ; $44DD: $70
    sbc a                                         ; $44DE: $9F
    ld c, a                                       ; $44DF: $4F
    ld [hl], l                                    ; $44E0: $75
    ld h, e                                       ; $44E1: $63
    ld l, b                                       ; $44E2: $68
    ld l, $2E                                     ; $44E3: $2E $2E
    ld l, $FE                                     ; $44E5: $2E $FE
    db $FD                                        ; $44E7: $FD
    sbc d                                         ; $44E8: $9A
    ld d, l                                       ; $44E9: $55
    ld b, d                                       ; $44EA: $42
    sbc e                                         ; $44EB: $9B
    ld a, b                                       ; $44EC: $78
    ld [hl], b                                    ; $44ED: $70
    sbc a                                         ; $44EE: $9F
    ld c, c                                       ; $44EF: $49
    daa                                           ; $44F0: $27
    halt                                          ; $44F1: $76
    ld h, l                                       ; $44F2: $65
    jr nz, jr_01C_4557                            ; $44F3: $20 $62

    ld h, l                                       ; $44F5: $65
    ld h, l                                       ; $44F6: $65
    ld l, [hl]                                    ; $44F7: $6E
    rst $38                                       ; $44F8: $FF
    ld h, e                                       ; $44F9: $63
    ld h, c                                       ; $44FA: $61
    ld [hl], l                                    ; $44FB: $75
    ld h, a                                       ; $44FC: $67
    ld l, b                                       ; $44FD: $68
    ld [hl], h                                    ; $44FE: $74
    jr nz, jr_01C_4562                            ; $44FF: $20 $61

    ld h, a                                       ; $4501: $67
    ld h, c                                       ; $4502: $61
    ld l, c                                       ; $4503: $69
    ld l, [hl]                                    ; $4504: $6E
    ld l, $FE                                     ; $4505: $2E $FE
    ld d, h                                       ; $4507: $54
    ld l, b                                       ; $4508: $68
    ld l, c                                       ; $4509: $69
    ld [hl], e                                    ; $450A: $73
    jr nz, @+$75                                  ; $450B: $20 $73

    ld [hl], l                                    ; $450D: $75
    ld [hl], d                                    ; $450E: $72
    ld h, l                                       ; $450F: $65
    jr nz, jr_01C_457B                            ; $4510: $20 $69

    ld [hl], e                                    ; $4512: $73
    ld l, [hl]                                    ; $4513: $6E
    daa                                           ; $4514: $27
    ld [hl], h                                    ; $4515: $74
    rst $38                                       ; $4516: $FF
    ld l, b                                       ; $4517: $68
    ld h, l                                       ; $4518: $65
    ld l, h                                       ; $4519: $6C
    ld [hl], b                                    ; $451A: $70
    ld l, c                                       ; $451B: $69
    ld l, [hl]                                    ; $451C: $6E
    ld h, a                                       ; $451D: $67
    jr nz, jr_01C_458D                            ; $451E: $20 $6D

    ld a, c                                       ; $4520: $79
    cp $63                                        ; $4521: $FE $63
    ld l, a                                       ; $4523: $6F
    ld l, [hl]                                    ; $4524: $6E
    ld h, [hl]                                    ; $4525: $66
    ld l, c                                       ; $4526: $69
    ld h, h                                       ; $4527: $64
    ld h, l                                       ; $4528: $65
    ld l, [hl]                                    ; $4529: $6E
    ld h, e                                       ; $452A: $63
    ld h, l                                       ; $452B: $65
    jr nz, jr_01C_458F                            ; $452C: $20 $61

    ld l, [hl]                                    ; $452E: $6E
    ld a, c                                       ; $452F: $79
    ld l, $FE                                     ; $4530: $2E $FE
    db $FD                                        ; $4532: $FD
    sbc d                                         ; $4533: $9A
    ld d, l                                       ; $4534: $55
    ld b, d                                       ; $4535: $42
    sbc e                                         ; $4536: $9B
    ld a, b                                       ; $4537: $78
    ld [hl], b                                    ; $4538: $70
    sbc a                                         ; $4539: $9F
    ld c, c                                       ; $453A: $49
    daa                                           ; $453B: $27
    halt                                          ; $453C: $76
    ld h, l                                       ; $453D: $65
    jr nz, jr_01C_45A7                            ; $453E: $20 $67

    ld l, a                                       ; $4540: $6F
    ld [hl], h                                    ; $4541: $74
    jr nz, jr_01C_45B8                            ; $4542: $20 $74

    ld l, a                                       ; $4544: $6F
    jr nz, @+$69                                  ; $4545: $20 $67

    ld h, l                                       ; $4547: $65
    ld [hl], h                                    ; $4548: $74
    rst $38                                       ; $4549: $FF
    ld l, a                                       ; $454A: $6F
    ld [hl], l                                    ; $454B: $75
    ld [hl], h                                    ; $454C: $74
    jr nz, jr_01C_45BE                            ; $454D: $20 $6F

    ld h, [hl]                                    ; $454F: $66
    jr nz, jr_01C_45BA                            ; $4550: $20 $68

    ld h, l                                       ; $4552: $65
    ld [hl], d                                    ; $4553: $72
    ld h, l                                       ; $4554: $65
    ld l, $FE                                     ; $4555: $2E $FE

jr_01C_4557:
    db $FD                                        ; $4557: $FD
    sbc d                                         ; $4558: $9A
    ld d, l                                       ; $4559: $55
    ld b, d                                       ; $455A: $42
    sbc d                                         ; $455B: $9A
    sbc a                                         ; $455C: $9F
    ld b, l                                       ; $455D: $45
    ld b, l                                       ; $455E: $45
    ld b, l                                       ; $455F: $45
    ld b, l                                       ; $4560: $45
    ld b, l                                       ; $4561: $45

jr_01C_4562:
    ld b, l                                       ; $4562: $45
    ld b, l                                       ; $4563: $45
    ld b, l                                       ; $4564: $45
    ld b, l                                       ; $4565: $45
    ld b, l                                       ; $4566: $45
    ld b, l                                       ; $4567: $45
    ld c, e                                       ; $4568: $4B

Call_01C_4569:
    ld hl, $2121                                  ; $4569: $21 $21 $21
    cp $FD                                        ; $456C: $FE $FD
    sbc d                                         ; $456E: $9A
    ld d, l                                       ; $456F: $55
    ld b, d                                       ; $4570: $42
    sbc e                                         ; $4571: $9B
    ld a, b                                       ; $4572: $78
    ld [hl], b                                    ; $4573: $70

Call_01C_4574:
    sbc a                                         ; $4574: $9F
    ld d, a                                       ; $4575: $57
    dec l                                         ; $4576: $2D
    ld d, a                                       ; $4577: $57
    ld l, b                                       ; $4578: $68
    ld h, c                                       ; $4579: $61
    ld [hl], h                                    ; $457A: $74

jr_01C_457B:
    jr nz, jr_01C_45F4                            ; $457B: $20 $77

    ld h, c                                       ; $457D: $61
    ld [hl], e                                    ; $457E: $73
    jr nz, jr_01C_45F5                            ; $457F: $20 $74

    ld l, b                                       ; $4581: $68
    ld h, c                                       ; $4582: $61
    ld [hl], h                                    ; $4583: $74
    rst $38                                       ; $4584: $FF
    ld l, [hl]                                    ; $4585: $6E
    ld l, a                                       ; $4586: $6F
    ld l, c                                       ; $4587: $69
    ld [hl], e                                    ; $4588: $73
    ld h, l                                       ; $4589: $65
    ccf                                           ; $458A: $3F
    cp $FD                                        ; $458B: $FE $FD

jr_01C_458D:
    sbc d                                         ; $458D: $9A
    ld e, b                                       ; $458E: $58

jr_01C_458F:
    rlca                                          ; $458F: $07
    ld b, d                                       ; $4590: $42
    sbc e                                         ; $4591: $9B
    ld a, b                                       ; $4592: $78
    ld [hl], b                                    ; $4593: $70
    sbc a                                         ; $4594: $9F
    ld l, $2E                                     ; $4595: $2E $2E
    ld l, $2E                                     ; $4597: $2E $2E
    ld l, $2E                                     ; $4599: $2E $2E
    ld l, $2E                                     ; $459B: $2E $2E
    ld l, $68                                     ; $459D: $2E $68
    ld l, l                                       ; $459F: $6D
    ld l, l                                       ; $45A0: $6D
    ld l, $FF                                     ; $45A1: $2E $FF
    ld c, c                                       ; $45A3: $49
    ld [hl], h                                    ; $45A4: $74
    daa                                           ; $45A5: $27
    ld [hl], e                                    ; $45A6: $73

jr_01C_45A7:
    jr nz, jr_01C_461A                            ; $45A7: $20 $71

    ld [hl], l                                    ; $45A9: $75
    ld l, c                                       ; $45AA: $69
    ld h, l                                       ; $45AB: $65
    ld [hl], h                                    ; $45AC: $74
    cp $61                                        ; $45AD: $FE $61
    ld h, a                                       ; $45AF: $67
    ld h, c                                       ; $45B0: $61
    ld l, c                                       ; $45B1: $69
    ld l, [hl]                                    ; $45B2: $6E
    ld l, $FE                                     ; $45B3: $2E $FE
    db $FD                                        ; $45B5: $FD
    sbc d                                         ; $45B6: $9A
    ld d, l                                       ; $45B7: $55

jr_01C_45B8:
    ld b, d                                       ; $45B8: $42
    sbc e                                         ; $45B9: $9B

jr_01C_45BA:
    ld a, b                                       ; $45BA: $78
    ld [hl], b                                    ; $45BB: $70
    sbc a                                         ; $45BC: $9F
    ld c, c                                       ; $45BD: $49

jr_01C_45BE:
    jr nz, @+$79                                  ; $45BE: $20 $77

    ld l, a                                       ; $45C0: $6F
    ld l, [hl]                                    ; $45C1: $6E
    ld h, h                                       ; $45C2: $64
    ld h, l                                       ; $45C3: $65
    ld [hl], d                                    ; $45C4: $72
    jr nz, jr_01C_463E                            ; $45C5: $20 $77

    ld l, b                                       ; $45C7: $68
    ld l, a                                       ; $45C8: $6F
    rst $38                                       ; $45C9: $FF
    ld [hl], h                                    ; $45CA: $74
    ld l, b                                       ; $45CB: $68
    ld l, c                                       ; $45CC: $69
    ld [hl], e                                    ; $45CD: $73
    jr nz, jr_01C_4611                            ; $45CE: $20 $41

    ld h, a                                       ; $45D0: $67
    ld [hl], d                                    ; $45D1: $72
    ld h, c                                       ; $45D2: $61
    ld l, l                                       ; $45D3: $6D
    jr nz, jr_01C_463D                            ; $45D4: $20 $67

    ld [hl], l                                    ; $45D6: $75
    ld a, c                                       ; $45D7: $79
    cp $69                                        ; $45D8: $FE $69
    ld [hl], e                                    ; $45DA: $73
    ccf                                           ; $45DB: $3F
    cp $FD                                        ; $45DC: $FE $FD
    sbc d                                         ; $45DE: $9A
    ld b, b                                       ; $45DF: $40
    add b                                         ; $45E0: $80
    sbc e                                         ; $45E1: $9B
    ld a, b                                       ; $45E2: $78
    ld [hl], b                                    ; $45E3: $70
    sbc a                                         ; $45E4: $9F
    ld c, c                                       ; $45E5: $49
    daa                                           ; $45E6: $27
    ld h, h                                       ; $45E7: $64
    jr nz, jr_01C_465C                            ; $45E8: $20 $72

    ld h, c                                       ; $45EA: $61
    ld [hl], h                                    ; $45EB: $74
    ld l, b                                       ; $45EC: $68
    ld h, l                                       ; $45ED: $65
    ld [hl], d                                    ; $45EE: $72
    jr nz, jr_01C_465F                            ; $45EF: $20 $6E

    ld l, a                                       ; $45F1: $6F
    ld [hl], h                                    ; $45F2: $74
    rst $38                                       ; $45F3: $FF

jr_01C_45F4:
    ld [hl], e                                    ; $45F4: $73

jr_01C_45F5:
    ld [hl], h                                    ; $45F5: $74
    ld l, c                                       ; $45F6: $69
    ld h, e                                       ; $45F7: $63
    ld l, e                                       ; $45F8: $6B
    jr nz, jr_01C_465C                            ; $45F9: $20 $61

    ld [hl], d                                    ; $45FB: $72
    ld l, a                                       ; $45FC: $6F
    ld [hl], l                                    ; $45FD: $75
    ld l, [hl]                                    ; $45FE: $6E
    ld h, h                                       ; $45FF: $64
    jr nz, jr_01C_4676                            ; $4600: $20 $74

    ld l, a                                       ; $4602: $6F
    cp $66                                        ; $4603: $FE $66
    ld l, c                                       ; $4605: $69
    ld l, [hl]                                    ; $4606: $6E
    ld h, h                                       ; $4607: $64
    jr nz, jr_01C_4679                            ; $4608: $20 $6F

    ld [hl], l                                    ; $460A: $75
    ld [hl], h                                    ; $460B: $74
    ld l, $2E                                     ; $460C: $2E $2E
    ld l, $FE                                     ; $460E: $2E $FE
    db $FD                                        ; $4610: $FD

jr_01C_4611:
    sbc d                                         ; $4611: $9A
    ld d, l                                       ; $4612: $55
    ld b, d                                       ; $4613: $42
    sbc e                                         ; $4614: $9B
    ld a, b                                       ; $4615: $78
    ld [hl], b                                    ; $4616: $70
    sbc a                                         ; $4617: $9F
    ld l, $2E                                     ; $4618: $2E $2E

jr_01C_461A:
    ld l, $62                                     ; $461A: $2E $62
    ld [hl], l                                    ; $461C: $75
    ld [hl], h                                    ; $461D: $74
    jr nz, jr_01C_4689                            ; $461E: $20 $69

    ld [hl], h                                    ; $4620: $74
    jr nz, jr_01C_468F                            ; $4621: $20 $6C

    ld l, a                                       ; $4623: $6F
    ld l, a                                       ; $4624: $6F
    ld l, e                                       ; $4625: $6B
    ld [hl], e                                    ; $4626: $73
    rst $38                                       ; $4627: $FF
    ld l, h                                       ; $4628: $6C
    ld l, c                                       ; $4629: $69
    ld l, e                                       ; $462A: $6B
    ld h, l                                       ; $462B: $65
    jr nz, jr_01C_4677                            ; $462C: $20 $49

    daa                                           ; $462E: $27
    ld l, h                                       ; $462F: $6C
    ld l, h                                       ; $4630: $6C
    jr nz, jr_01C_469B                            ; $4631: $20 $68

    ld h, c                                       ; $4633: $61
    halt                                          ; $4634: $76
    ld h, l                                       ; $4635: $65
    cp $74                                        ; $4636: $FE $74
    ld l, a                                       ; $4638: $6F
    ld l, $FE                                     ; $4639: $2E $FE
    db $FD                                        ; $463B: $FD
    sbc d                                         ; $463C: $9A

jr_01C_463D:
    sbc a                                         ; $463D: $9F

jr_01C_463E:
    ld d, h                                       ; $463E: $54
    ld l, a                                       ; $463F: $6F
    ld h, c                                       ; $4640: $61
    ld [hl], e                                    ; $4641: $73
    ld [hl], h                                    ; $4642: $74
    ld hl, $FDFE                                  ; $4643: $21 $FE $FD
    sbc d                                         ; $4646: $9A
    ld d, l                                       ; $4647: $55
    ld b, d                                       ; $4648: $42
    sbc e                                         ; $4649: $9B
    ld a, b                                       ; $464A: $78
    ld [hl], b                                    ; $464B: $70
    sbc a                                         ; $464C: $9F
    ccf                                           ; $464D: $3F
    ccf                                           ; $464E: $3F
    ccf                                           ; $464F: $3F
    cp $FD                                        ; $4650: $FE $FD
    sbc d                                         ; $4652: $9A
    sbc a                                         ; $4653: $9F
    ld d, h                                       ; $4654: $54
    ld l, a                                       ; $4655: $6F
    ld h, c                                       ; $4656: $61
    ld [hl], e                                    ; $4657: $73
    ld [hl], h                                    ; $4658: $74
    ld hl, $4820                                  ; $4659: $21 $20 $48

jr_01C_465C:
    ld l, a                                       ; $465C: $6F
    ld [hl], d                                    ; $465D: $72
    ld l, [hl]                                    ; $465E: $6E

jr_01C_465F:
    ld a, c                                       ; $465F: $79
    rst $38                                       ; $4660: $FF
    ld [hl], h                                    ; $4661: $74
    ld l, a                                       ; $4662: $6F
    ld h, c                                       ; $4663: $61
    ld h, h                                       ; $4664: $64
    ld [hl], e                                    ; $4665: $73
    ld hl, $FDFE                                  ; $4666: $21 $FE $FD
    sbc d                                         ; $4669: $9A
    ld d, l                                       ; $466A: $55
    ld b, d                                       ; $466B: $42
    sbc e                                         ; $466C: $9B
    ld a, b                                       ; $466D: $78
    ld [hl], b                                    ; $466E: $70
    sbc a                                         ; $466F: $9F
    ld d, h                                       ; $4670: $54
    ld l, b                                       ; $4671: $68
    ld l, c                                       ; $4672: $69
    ld [hl], e                                    ; $4673: $73
    jr nz, jr_01C_46DF                            ; $4674: $20 $69

jr_01C_4676:
    ld [hl], e                                    ; $4676: $73

jr_01C_4677:
    jr nz, jr_01C_46DA                            ; $4677: $20 $61

jr_01C_4679:
    rst $38                                       ; $4679: $FF
    ld h, [hl]                                    ; $467A: $66
    ld h, c                                       ; $467B: $61
    ld l, l                                       ; $467C: $6D
    ld l, c                                       ; $467D: $69
    ld l, h                                       ; $467E: $6C
    ld l, c                                       ; $467F: $69
    ld h, c                                       ; $4680: $61
    ld [hl], d                                    ; $4681: $72
    cp $73                                        ; $4682: $FE $73
    ld l, c                                       ; $4684: $69
    ld [hl], h                                    ; $4685: $74
    ld [hl], l                                    ; $4686: $75
    ld h, c                                       ; $4687: $61
    ld [hl], h                                    ; $4688: $74

jr_01C_4689:
    ld l, c                                       ; $4689: $69
    ld l, a                                       ; $468A: $6F
    ld l, [hl]                                    ; $468B: $6E
    ld l, $FE                                     ; $468C: $2E $FE
    db $FD                                        ; $468E: $FD

jr_01C_468F:
    sbc d                                         ; $468F: $9A
    ld b, b                                       ; $4690: $40
    db $10                                        ; $4691: $10
    sbc e                                         ; $4692: $9B
    ld a, b                                       ; $4693: $78
    ld [hl], b                                    ; $4694: $70
    sbc a                                         ; $4695: $9F
    ld c, a                                       ; $4696: $4F
    ld l, b                                       ; $4697: $68
    jr nz, jr_01C_4708                            ; $4698: $20 $6E

    ld l, a                                       ; $469A: $6F

jr_01C_469B:
    ld hl, $4D20                                  ; $469B: $21 $20 $4D
    ld l, a                                       ; $469E: $6F
    ld [hl], d                                    ; $469F: $72
    ld h, c                                       ; $46A0: $61
    ld h, a                                       ; $46A1: $67
    rst $38                                       ; $46A2: $FF
    ld [hl], h                                    ; $46A3: $74
    ld l, a                                       ; $46A4: $6F
    ld l, a                                       ; $46A5: $6F
    ld l, e                                       ; $46A6: $6B
    jr nz, jr_01C_4716                            ; $46A7: $20 $6D

    ld a, c                                       ; $46A9: $79
    cp $74                                        ; $46AA: $FE $74
    ld [hl], d                                    ; $46AC: $72
    ld h, c                                       ; $46AD: $61
    ld l, [hl]                                    ; $46AE: $6E
    ld [hl], e                                    ; $46AF: $73
    ld l, h                                       ; $46B0: $6C
    ld h, c                                       ; $46B1: $61
    ld [hl], h                                    ; $46B2: $74
    ld l, c                                       ; $46B3: $69
    ld l, a                                       ; $46B4: $6F
    ld l, [hl]                                    ; $46B5: $6E
    cp $62                                        ; $46B6: $FE $62
    ld [hl], d                                    ; $46B8: $72
    ld h, c                                       ; $46B9: $61
    ld h, e                                       ; $46BA: $63
    ld h, l                                       ; $46BB: $65
    ld l, h                                       ; $46BC: $6C
    ld h, l                                       ; $46BD: $65
    ld [hl], h                                    ; $46BE: $74
    ld l, $2E                                     ; $46BF: $2E $2E
    ld l, $FF                                     ; $46C1: $2E $FF
    ld d, a                                       ; $46C3: $57
    ld l, b                                       ; $46C4: $68
    ld l, a                                       ; $46C5: $6F
    daa                                           ; $46C6: $27
    ld [hl], e                                    ; $46C7: $73
    jr nz, jr_01C_473E                            ; $46C8: $20 $74

    ld l, b                                       ; $46CA: $68
    ld h, l                                       ; $46CB: $65
    ld [hl], d                                    ; $46CC: $72
    ld h, l                                       ; $46CD: $65
    ccf                                           ; $46CE: $3F
    jr nz, jr_01C_471A                            ; $46CF: $20 $49

    cp $63                                        ; $46D1: $FE $63
    ld h, c                                       ; $46D3: $61
    ld l, [hl]                                    ; $46D4: $6E
    daa                                           ; $46D5: $27
    ld [hl], h                                    ; $46D6: $74
    jr nz, jr_01C_474C                            ; $46D7: $20 $73

    ld h, l                                       ; $46D9: $65

jr_01C_46DA:
    ld h, l                                       ; $46DA: $65
    jr nz, @+$7B                                  ; $46DB: $20 $79

    ld l, a                                       ; $46DD: $6F
    ld [hl], l                                    ; $46DE: $75

jr_01C_46DF:
    ld hl, $FDFE                                  ; $46DF: $21 $FE $FD
    sbc d                                         ; $46E2: $9A
    sbc a                                         ; $46E3: $9F
    ld c, b                                       ; $46E4: $48
    ld [hl], l                                    ; $46E5: $75
    ld l, l                                       ; $46E6: $6D
    ld l, a                                       ; $46E7: $6F
    ld l, [hl]                                    ; $46E8: $6E
    ld h, a                                       ; $46E9: $67
    ld l, a                                       ; $46EA: $6F
    ld [hl], l                                    ; $46EB: $75
    ld [hl], e                                    ; $46EC: $73
    jr nz, @+$69                                  ; $46ED: $20 $67

    ld [hl], d                                    ; $46EF: $72
    ld h, c                                       ; $46F0: $61
    halt                                          ; $46F1: $76
    ld a, c                                       ; $46F2: $79
    rst $38                                       ; $46F3: $FF
    ld h, d                                       ; $46F4: $62
    ld l, a                                       ; $46F5: $6F
    ld h, c                                       ; $46F6: $61
    ld [hl], h                                    ; $46F7: $74
    ld l, $2E                                     ; $46F8: $2E $2E
    ld l, $FE                                     ; $46FA: $2E $FE
    ld h, [hl]                                    ; $46FC: $66
    ld h, l                                       ; $46FD: $65
    ld l, h                                       ; $46FE: $6C
    ld [hl], h                                    ; $46FF: $74
    dec l                                         ; $4700: $2D
    ld [hl], h                                    ; $4701: $74
    ld l, c                                       ; $4702: $69
    ld [hl], b                                    ; $4703: $70
    ld [hl], b                                    ; $4704: $70
    ld h, l                                       ; $4705: $65
    ld h, h                                       ; $4706: $64
    rst $38                                       ; $4707: $FF

jr_01C_4708:
    ld [hl], b                                    ; $4708: $70
    ld l, a                                       ; $4709: $6F
    ld l, l                                       ; $470A: $6D
    ld h, l                                       ; $470B: $65
    ld h, a                                       ; $470C: $67
    ld [hl], d                                    ; $470D: $72
    ld h, c                                       ; $470E: $61
    ld l, [hl]                                    ; $470F: $6E
    ld h, c                                       ; $4710: $61
    ld [hl], h                                    ; $4711: $74
    ld h, l                                       ; $4712: $65
    cp $70                                        ; $4713: $FE $70
    ld [hl], d                                    ; $4715: $72

jr_01C_4716:
    ld l, a                                       ; $4716: $6F
    ld [hl], b                                    ; $4717: $70
    ld l, b                                       ; $4718: $68
    ld h, l                                       ; $4719: $65

jr_01C_471A:
    ld h, e                                       ; $471A: $63
    ld a, c                                       ; $471B: $79
    ld hl, $FDFE                                  ; $471C: $21 $FE $FD
    sbc d                                         ; $471F: $9A
    ld d, l                                       ; $4720: $55
    ld b, d                                       ; $4721: $42
    sbc e                                         ; $4722: $9B
    ld a, b                                       ; $4723: $78
    ld [hl], b                                    ; $4724: $70
    sbc a                                         ; $4725: $9F
    ld b, a                                       ; $4726: $47
    ld b, l                                       ; $4727: $45
    ld b, l                                       ; $4728: $45
    ld e, d                                       ; $4729: $5A
    ld hl, $4220                                  ; $472A: $21 $20 $42
    ld h, l                                       ; $472D: $65
    rst $38                                       ; $472E: $FF
    ld h, e                                       ; $472F: $63
    ld h, c                                       ; $4730: $61
    ld [hl], d                                    ; $4731: $72
    ld h, l                                       ; $4732: $65
    ld h, [hl]                                    ; $4733: $66
    ld [hl], l                                    ; $4734: $75
    ld l, h                                       ; $4735: $6C
    ld hl, $FDFE                                  ; $4736: $21 $FE $FD
    sbc d                                         ; $4739: $9A
    ld d, l                                       ; $473A: $55
    ld b, d                                       ; $473B: $42
    sbc e                                         ; $473C: $9B
    ld a, b                                       ; $473D: $78

jr_01C_473E:
    ld [hl], b                                    ; $473E: $70
    sbc a                                         ; $473F: $9F
    ld c, b                                       ; $4740: $48
    ld h, l                                       ; $4741: $65
    ld l, h                                       ; $4742: $6C
    ld l, h                                       ; $4743: $6C
    ld l, a                                       ; $4744: $6F
    ccf                                           ; $4745: $3F
    cp $FD                                        ; $4746: $FE $FD
    sbc d                                         ; $4748: $9A
    ld d, l                                       ; $4749: $55
    ld b, d                                       ; $474A: $42
    sbc e                                         ; $474B: $9B

jr_01C_474C:
    ld a, b                                       ; $474C: $78
    ld [hl], b                                    ; $474D: $70
    sbc a                                         ; $474E: $9F
    ld b, l                                       ; $474F: $45
    ld [hl], a                                    ; $4750: $77
    ld [hl], a                                    ; $4751: $77
    ld l, $20                                     ; $4752: $2E $20
    ld c, c                                       ; $4754: $49
    jr nz, jr_01C_47CB                            ; $4755: $20 $74

    ld l, b                                       ; $4757: $68
    ld l, c                                       ; $4758: $69
    ld l, [hl]                                    ; $4759: $6E
    ld l, e                                       ; $475A: $6B
    jr nz, jr_01C_47A6                            ; $475B: $20 $49

    rst $38                                       ; $475D: $FF
    ld l, h                                       ; $475E: $6C
    ld l, c                                       ; $475F: $69
    ld l, e                                       ; $4760: $6B
    ld h, l                                       ; $4761: $65
    ld h, h                                       ; $4762: $64
    jr nz, jr_01C_47CE                            ; $4763: $20 $69

    ld [hl], h                                    ; $4765: $74
    jr nz, jr_01C_47CA                            ; $4766: $20 $62

    ld h, l                                       ; $4768: $65
    ld [hl], h                                    ; $4769: $74
    ld [hl], h                                    ; $476A: $74
    ld h, l                                       ; $476B: $65
    ld [hl], d                                    ; $476C: $72
    cp $69                                        ; $476D: $FE $69
    ld l, [hl]                                    ; $476F: $6E
    jr nz, jr_01C_47E6                            ; $4770: $20 $74

    ld l, b                                       ; $4772: $68
    ld h, l                                       ; $4773: $65
    jr nz, jr_01C_47D9                            ; $4774: $20 $63

    ld h, l                                       ; $4776: $65
    ld l, h                                       ; $4777: $6C
    ld l, h                                       ; $4778: $6C
    ld l, $FE                                     ; $4779: $2E $FE
    db $FD                                        ; $477B: $FD
    sbc d                                         ; $477C: $9A
    ld d, l                                       ; $477D: $55
    ld b, d                                       ; $477E: $42
    sbc e                                         ; $477F: $9B
    ld a, b                                       ; $4780: $78
    ld [hl], b                                    ; $4781: $70
    sbc a                                         ; $4782: $9F
    ld d, a                                       ; $4783: $57
    ld h, l                                       ; $4784: $65
    ld l, h                                       ; $4785: $6C
    ld l, h                                       ; $4786: $6C
    inc l                                         ; $4787: $2C
    jr nz, jr_01C_4801                            ; $4788: $20 $77

    ld l, b                                       ; $478A: $68
    ld l, a                                       ; $478B: $6F
    ld h, l                                       ; $478C: $65
    halt                                          ; $478D: $76
    ld h, l                                       ; $478E: $65
    ld [hl], d                                    ; $478F: $72
    rst $38                                       ; $4790: $FF
    ld h, a                                       ; $4791: $67
    ld l, a                                       ; $4792: $6F
    ld [hl], h                                    ; $4793: $74
    jr nz, @+$6F                                  ; $4794: $20 $6D

    ld h, l                                       ; $4796: $65
    jr nz, jr_01C_4808                            ; $4797: $20 $6F

    ld [hl], l                                    ; $4799: $75
    ld [hl], h                                    ; $479A: $74
    jr nz, jr_01C_480C                            ; $479B: $20 $6F

    ld h, [hl]                                    ; $479D: $66
    cp $74                                        ; $479E: $FE $74
    ld l, b                                       ; $47A0: $68
    ld h, l                                       ; $47A1: $65
    ld [hl], d                                    ; $47A2: $72
    ld h, l                                       ; $47A3: $65
    jr nz, jr_01C_480F                            ; $47A4: $20 $69

jr_01C_47A6:
    ld [hl], e                                    ; $47A6: $73
    jr nz, @+$69                                  ; $47A7: $20 $67

    ld l, a                                       ; $47A9: $6F
    ld l, [hl]                                    ; $47AA: $6E
    ld h, l                                       ; $47AB: $65
    ld l, $FF                                     ; $47AC: $2E $FF
    ld c, h                                       ; $47AE: $4C
    ld l, a                                       ; $47AF: $6F
    ld l, a                                       ; $47B0: $6F
    ld l, e                                       ; $47B1: $6B
    ld [hl], e                                    ; $47B2: $73
    jr nz, jr_01C_4821                            ; $47B3: $20 $6C

    ld l, c                                       ; $47B5: $69
    ld l, e                                       ; $47B6: $6B
    ld h, l                                       ; $47B7: $65
    jr nz, @+$4B                                  ; $47B8: $20 $49

    daa                                           ; $47BA: $27
    ld l, h                                       ; $47BB: $6C
    ld l, h                                       ; $47BC: $6C
    cp $68                                        ; $47BD: $FE $68
    ld h, c                                       ; $47BF: $61
    halt                                          ; $47C0: $76
    ld h, l                                       ; $47C1: $65
    jr nz, jr_01C_4838                            ; $47C2: $20 $74

    ld l, a                                       ; $47C4: $6F
    jr nz, jr_01C_482D                            ; $47C5: $20 $66

    ld l, c                                       ; $47C7: $69
    ld l, [hl]                                    ; $47C8: $6E
    ld h, h                                       ; $47C9: $64

jr_01C_47CA:
    rst $38                                       ; $47CA: $FF

jr_01C_47CB:
    ld [hl], h                                    ; $47CB: $74
    ld l, b                                       ; $47CC: $68
    ld h, l                                       ; $47CD: $65

jr_01C_47CE:
    jr nz, jr_01C_4835                            ; $47CE: $20 $65

    ld a, b                                       ; $47D0: $78
    ld l, c                                       ; $47D1: $69
    ld [hl], h                                    ; $47D2: $74
    cp $6D                                        ; $47D3: $FE $6D
    ld a, c                                       ; $47D5: $79
    ld [hl], e                                    ; $47D6: $73
    ld h, l                                       ; $47D7: $65
    ld l, h                                       ; $47D8: $6C

jr_01C_47D9:
    ld h, [hl]                                    ; $47D9: $66
    ld l, $FE                                     ; $47DA: $2E $FE
    db $FD                                        ; $47DC: $FD
    sbc d                                         ; $47DD: $9A
    ld d, l                                       ; $47DE: $55
    sub [hl]                                      ; $47DF: $96
    inc e                                         ; $47E0: $1C
    ld l, b                                       ; $47E1: $68
    ld b, d                                       ; $47E2: $42
    xor h                                         ; $47E3: $AC
    or d                                          ; $47E4: $B2
    and d                                         ; $47E5: $A2

jr_01C_47E6:
    nop                                           ; $47E6: $00
    ld b, d                                       ; $47E7: $42
    add a                                         ; $47E8: $87
    nop                                           ; $47E9: $00
    jr nz, jr_01C_47ED                            ; $47EA: $20 $01

    sbc e                                         ; $47EC: $9B

jr_01C_47ED:
    ld a, b                                       ; $47ED: $78
    ld [hl], b                                    ; $47EE: $70
    sbc a                                         ; $47EF: $9F
    ld b, c                                       ; $47F0: $41
    jr nz, jr_01C_4859                            ; $47F1: $20 $66

    ld h, l                                       ; $47F3: $65
    ld h, c                                       ; $47F4: $61
    ld [hl], h                                    ; $47F5: $74
    ld l, b                                       ; $47F6: $68
    ld h, l                                       ; $47F7: $65
    ld [hl], d                                    ; $47F8: $72
    ld l, $20                                     ; $47F9: $2E $20
    ld c, c                                       ; $47FB: $49
    ld [hl], h                                    ; $47FC: $74
    rst $38                                       ; $47FD: $FF
    ld [hl], e                                    ; $47FE: $73
    ld [hl], l                                    ; $47FF: $75
    ld [hl], d                                    ; $4800: $72

jr_01C_4801:
    ld h, l                                       ; $4801: $65
    jr nz, jr_01C_4870                            ; $4802: $20 $6C

    ld l, a                                       ; $4804: $6F
    ld l, a                                       ; $4805: $6F
    ld l, e                                       ; $4806: $6B
    ld [hl], e                                    ; $4807: $73

jr_01C_4808:
    jr nz, jr_01C_4879                            ; $4808: $20 $6F

    ld [hl], l                                    ; $480A: $75
    ld [hl], h                                    ; $480B: $74

jr_01C_480C:
    cp $6F                                        ; $480C: $FE $6F
    ld h, [hl]                                    ; $480E: $66

jr_01C_480F:
    jr nz, jr_01C_4881                            ; $480F: $20 $70

    ld l, h                                       ; $4811: $6C
    ld h, c                                       ; $4812: $61
    ld h, e                                       ; $4813: $63
    ld h, l                                       ; $4814: $65
    jr nz, @+$6A                                  ; $4815: $20 $68

    ld h, l                                       ; $4817: $65
    ld [hl], d                                    ; $4818: $72
    ld h, l                                       ; $4819: $65
    ld l, $FE                                     ; $481A: $2E $FE
    db $FD                                        ; $481C: $FD
    sbc d                                         ; $481D: $9A
    rlca                                          ; $481E: $07
    nop                                           ; $481F: $00
    add c                                         ; $4820: $81

jr_01C_4821:
    ld e, l                                       ; $4821: $5D
    add hl, bc                                    ; $4822: $09
    nop                                           ; $4823: $00
    jr nz, @-$49                                  ; $4824: $20 $B5

    ld d, b                                       ; $4826: $50
    ld b, d                                       ; $4827: $42
    ld [bc], a                                    ; $4828: $02
    ld a, [de]                                    ; $4829: $1A
    nop                                           ; $482A: $00
    rrca                                          ; $482B: $0F
    rrca                                          ; $482C: $0F

jr_01C_482D:
    ld b, l                                       ; $482D: $45
    dec h                                         ; $482E: $25
    add hl, de                                    ; $482F: $19
    ld a, c                                       ; $4830: $79
    ld [bc], a                                    ; $4831: $02
    ld a, [de]                                    ; $4832: $1A
    ld a, [de]                                    ; $4833: $1A
    rrca                                          ; $4834: $0F

jr_01C_4835:
    ld b, $45                                     ; $4835: $06 $45
    inc e                                         ; $4837: $1C

jr_01C_4838:
    ld [hl], e                                    ; $4838: $73
    ld c, b                                       ; $4839: $48
    ld [bc], a                                    ; $483A: $02
    ld a, [de]                                    ; $483B: $1A
    nop                                           ; $483C: $00
    ld b, $0D                                     ; $483D: $06 $0D
    ld b, l                                       ; $483F: $45
    inc e                                         ; $4840: $1C
    ld b, e                                       ; $4841: $43
    ld c, b                                       ; $4842: $48
    sub e                                         ; $4843: $93
    ld h, l                                       ; $4844: $65
    add c                                         ; $4845: $81
    ld d, l                                       ; $4846: $55
    ld c, a                                       ; $4847: $4F
    ld h, h                                       ; $4848: $64
    xor [hl]                                      ; $4849: $AE
    ld e, h                                       ; $484A: $5C
    ld h, [hl]                                    ; $484B: $66
    ret nz                                        ; $484C: $C0

    ld e, h                                       ; $484D: $5C
    ld hl, $1B32                                  ; $484E: $21 $32 $1B
    jp z, $8D52                                   ; $4851: $CA $52 $8D

    ld b, c                                       ; $4854: $41
    ld sp, $431C                                  ; $4855: $31 $1C $43
    ld c, b                                       ; $4858: $48

jr_01C_4859:
    ld [hl+], a                                   ; $4859: $22
    adc $40                                       ; $485A: $CE $40
    dec b                                         ; $485C: $05
    nop                                           ; $485D: $00
    add c                                         ; $485E: $81
    ld e, l                                       ; $485F: $5D
    ld [de], a                                    ; $4860: $12
    ld [de], a                                    ; $4861: $12

jr_01C_4862:
    ld hl, sp-$2F                                 ; $4862: $F8 $D1
    nop                                           ; $4864: $00
    jr nz, jr_01C_4862                            ; $4865: $20 $FB

    ld d, b                                       ; $4867: $50
    ld [hl+], a                                   ; $4868: $22
    dec b                                         ; $4869: $05
    ld b, b                                       ; $486A: $40
    rra                                           ; $486B: $1F
    inc e                                         ; $486C: $1C
    dec bc                                        ; $486D: $0B
    nop                                           ; $486E: $00
    nop                                           ; $486F: $00

jr_01C_4870:
    add d                                         ; $4870: $82
    sub h                                         ; $4871: $94
    ld b, d                                       ; $4872: $42
    sub e                                         ; $4873: $93
    ld h, l                                       ; $4874: $65
    sub b                                         ; $4875: $90
    ld d, l                                       ; $4876: $55
    ld c, a                                       ; $4877: $4F
    ld h, h                                       ; $4878: $64

jr_01C_4879:
    or a                                          ; $4879: $B7
    ld e, h                                       ; $487A: $5C
    ld h, [hl]                                    ; $487B: $66
    ret nz                                        ; $487C: $C0

    ld e, h                                       ; $487D: $5C
    ld hl, $0005                                  ; $487E: $21 $05 $00

jr_01C_4881:
    add c                                         ; $4881: $81
    ld e, l                                       ; $4882: $5D
    ld a, [de]                                    ; $4883: $1A
    ld b, $CE                                     ; $4884: $06 $CE
    ret nc                                        ; $4886: $D0

    nop                                           ; $4887: $00
    jr nz, @-$03                                  ; $4888: $20 $FB

    ld d, b                                       ; $488A: $50
    ld [hl+], a                                   ; $488B: $22
    dec b                                         ; $488C: $05
    ld b, b                                       ; $488D: $40
    rra                                           ; $488E: $1F
    inc e                                         ; $488F: $1C
    dec bc                                        ; $4890: $0B
    nop                                           ; $4891: $00
    dec b                                         ; $4892: $05
    ld [bc], a                                    ; $4893: $02
    dec b                                         ; $4894: $05
    ld h, h                                       ; $4895: $64
    dec c                                         ; $4896: $0D
    dec b                                         ; $4897: $05
    and e                                         ; $4898: $A3
    ret nc                                        ; $4899: $D0

    nop                                           ; $489A: $00
    ld de, $75EB                                  ; $489B: $11 $EB $75
    inc e                                         ; $489E: $1C
    jp z, Jump_01C_6B48                           ; $489F: $CA $48 $6B

    ld b, $24                                     ; $48A2: $06 $24
    db $10                                        ; $48A4: $10
    ld e, l                                       ; $48A5: $5D
    nop                                           ; $48A6: $00
    add b                                         ; $48A7: $80
    nop                                           ; $48A8: $00
    ld l, e                                       ; $48A9: $6B
    ld e, $0C                                     ; $48AA: $1E $0C
    sub b                                         ; $48AC: $90
    ld c, e                                       ; $48AD: $4B
    ld h, b                                       ; $48AE: $60
    add b                                         ; $48AF: $80

jr_01C_48B0:
    nop                                           ; $48B0: $00
    ld l, e                                       ; $48B1: $6B
    jr z, @+$0E                                   ; $48B2: $28 $0C

    ld [hl], b                                    ; $48B4: $70
    ld c, l                                       ; $48B5: $4D
    ld b, b                                       ; $48B6: $40
    add d                                         ; $48B7: $82
    nop                                           ; $48B8: $00
    ld b, e                                       ; $48B9: $43
    nop                                           ; $48BA: $00
    dec hl                                        ; $48BB: $2B
    and c                                         ; $48BC: $A1
    ld b, b                                       ; $48BD: $40
    inc e                                         ; $48BE: $1C
    jp $0B48                                      ; $48BF: $C3 $48 $0B


    ld [bc], a                                    ; $48C2: $02
    add h                                         ; $48C3: $84
    ld a, [de]                                    ; $48C4: $1A
    nop                                           ; $48C5: $00
    rra                                           ; $48C6: $1F
    dec c                                         ; $48C7: $0D
    sub h                                         ; $48C8: $94
    ld b, d                                       ; $48C9: $42
    ld e, e                                       ; $48CA: $5B
    inc e                                         ; $48CB: $1C
    ret nc                                        ; $48CC: $D0

    ld c, b                                       ; $48CD: $48
    add hl, de                                    ; $48CE: $19
    ld b, d                                       ; $48CF: $42
    xor a                                         ; $48D0: $AF
    dec hl                                        ; $48D1: $2B
    and c                                         ; $48D2: $A1
    ld b, b                                       ; $48D3: $40
    add a                                         ; $48D4: $87
    nop                                           ; $48D5: $00
    inc e                                         ; $48D6: $1C
    ld bc, $549F                                  ; $48D7: $01 $9F $54
    ld l, a                                       ; $48DA: $6F
    ld l, [hl]                                    ; $48DB: $6E
    ld a, c                                       ; $48DC: $79
    jr nz, jr_01C_4946                            ; $48DD: $20 $67

jr_01C_48DF:
    ld l, a                                       ; $48DF: $6F
    ld [hl], h                                    ; $48E0: $74
    jr nz, jr_01C_4944                            ; $48E1: $20 $61

    rst $38                                       ; $48E3: $FF
    db $FD                                        ; $48E4: $FD
    sbc a                                         ; $48E5: $9F
    ld d, e                                       ; $48E6: $53
    ld l, b                                       ; $48E7: $68
    ld h, c                                       ; $48E8: $61
    ld h, h                                       ; $48E9: $64
    ld l, a                                       ; $48EA: $6F
    ld [hl], a                                    ; $48EB: $77
    jr nz, jr_01C_4939                            ; $48EC: $20 $4B

    ld h, l                                       ; $48EE: $65
    ld a, c                                       ; $48EF: $79
    cp $FD                                        ; $48F0: $FE $FD
    sbc d                                         ; $48F2: $9A
    rlca                                          ; $48F3: $07
    nop                                           ; $48F4: $00
    add c                                         ; $48F5: $81
    ld e, l                                       ; $48F6: $5D
    add hl, bc                                    ; $48F7: $09
    nop                                           ; $48F8: $00

jr_01C_48F9:
    jr nz, jr_01C_48B0                            ; $48F9: $20 $B5

    ld d, b                                       ; $48FB: $50
    ld b, d                                       ; $48FC: $42
    dec b                                         ; $48FD: $05
    inc bc                                        ; $48FE: $03
    ld l, e                                       ; $48FF: $6B
    ld c, d                                       ; $4900: $4A
    db $10                                        ; $4901: $10
    ld b, $C4                                     ; $4902: $06 $C4
    ret nc                                        ; $4904: $D0

    ld b, $10                                     ; $4905: $06 $10
    ei                                            ; $4907: $FB
    ld b, [hl]                                    ; $4908: $46
    ld [hl+], a                                   ; $4909: $22
    inc b                                         ; $490A: $04
    ld b, b                                       ; $490B: $40
    dec b                                         ; $490C: $05
    inc b                                         ; $490D: $04
    ld l, e                                       ; $490E: $6B
    ld c, d                                       ; $490F: $4A

jr_01C_4910:
    db $10                                        ; $4910: $10
    dec b                                         ; $4911: $05
    and [hl]                                      ; $4912: $A6
    ret nc                                        ; $4913: $D0

    inc h                                         ; $4914: $24
    db $10                                        ; $4915: $10
    pop de                                        ; $4916: $D1
    ld c, d                                       ; $4917: $4A
    ld [hl+], a                                   ; $4918: $22
    inc b                                         ; $4919: $04
    ld b, b                                       ; $491A: $40
    rlca                                          ; $491B: $07
    nop                                           ; $491C: $00
    ld l, e                                       ; $491D: $6B
    ld c, d                                       ; $491E: $4A
    add hl, bc                                    ; $491F: $09
    nop                                           ; $4920: $00
    jr nz, @-$3F                                  ; $4921: $20 $BF

    ld d, b                                       ; $4923: $50
    ld e, e                                       ; $4924: $5B
    inc e                                         ; $4925: $1C
    jr nz, @+$4C                                  ; $4926: $20 $4A

    ld b, d                                       ; $4928: $42
    rrca                                          ; $4929: $0F
    nop                                           ; $492A: $00
    inc c                                         ; $492B: $0C
    nop                                           ; $492C: $00
    inc d                                         ; $492D: $14

jr_01C_492E:
    jr nz, jr_01C_48F9                            ; $492E: $20 $C9

    ld e, [hl]                                    ; $4930: $5E
    rra                                           ; $4931: $1F
    ld bc, $1840                                  ; $4932: $01 $40 $18
    rra                                           ; $4935: $1F
    ld [bc], a                                    ; $4936: $02
    ld b, b                                       ; $4937: $40
    inc l                                         ; $4938: $2C

jr_01C_4939:
    dec b                                         ; $4939: $05
    nop                                           ; $493A: $00
    ld l, e                                       ; $493B: $6B
    ld c, d                                       ; $493C: $4A
    dec b                                         ; $493D: $05
    ld b, $B9                                     ; $493E: $06 $B9
    ret nc                                        ; $4940: $D0

    nop                                           ; $4941: $00
    inc e                                         ; $4942: $1C
    cp h                                          ; $4943: $BC

jr_01C_4944:
    ld c, c                                       ; $4944: $49
    ld [hl+], a                                   ; $4945: $22

jr_01C_4946:
    dec b                                         ; $4946: $05
    ld b, b                                       ; $4947: $40
    dec bc                                        ; $4948: $0B
    nop                                           ; $4949: $00
    ld b, d                                       ; $494A: $42
    dec d                                         ; $494B: $15
    jr nz, jr_01C_48DF                            ; $494C: $20 $91

    ld d, b                                       ; $494E: $50
    ld [$BF20], sp                                ; $494F: $08 $20 $BF
    ld d, b                                       ; $4952: $50
    jr nz, jr_01C_4955                            ; $4953: $20 $00

jr_01C_4955:
    inc de                                        ; $4955: $13
    add c                                         ; $4956: $81
    ld e, l                                       ; $4957: $5D
    ld b, l                                       ; $4958: $45
    jr nz, jr_01C_4910                            ; $4959: $20 $B5

    ld d, b                                       ; $495B: $50
    rra                                           ; $495C: $1F
    jr nz, jr_01C_49BA                            ; $495D: $20 $5B

    inc e                                         ; $495F: $1C
    bit 1, e                                      ; $4960: $CB $4B
    dec d                                         ; $4962: $15
    jr nz, jr_01C_492E                            ; $4963: $20 $C9

    ld d, b                                       ; $4965: $50
    ld [$C620], sp                                ; $4966: $08 $20 $C6
    ld d, h                                       ; $4969: $54
    nop                                           ; $496A: $00
    nop                                           ; $496B: $00
    dec bc                                        ; $496C: $0B
    inc bc                                        ; $496D: $03
    dec bc                                        ; $496E: $0B
    inc b                                         ; $496F: $04
    ld e, h                                       ; $4970: $5C
    ld bc, $7C02                                  ; $4971: $01 $02 $7C
    db $10                                        ; $4974: $10
    dec b                                         ; $4975: $05
    inc b                                         ; $4976: $04
    ld e, e                                       ; $4977: $5B
    inc e                                         ; $4978: $1C
    sbc $4B                                       ; $4979: $DE $4B
    add hl, bc                                    ; $497B: $09
    inc bc                                        ; $497C: $03
    inc e                                         ; $497D: $1C
    push de                                       ; $497E: $D5
    ld c, c                                       ; $497F: $49
    add hl, bc                                    ; $4980: $09
    inc b                                         ; $4981: $04

jr_01C_4982:
    inc e                                         ; $4982: $1C
    pop af                                        ; $4983: $F1
    ld c, c                                       ; $4984: $49
    ld b, b                                       ; $4985: $40
    ld b, b                                       ; $4986: $40
    ld e, h                                       ; $4987: $5C
    ld [bc], a                                    ; $4988: $02
    inc b                                         ; $4989: $04
    ld a, h                                       ; $498A: $7C
    ld b, $05                                     ; $498B: $06 $05
    ld [bc], a                                    ; $498D: $02
    ld e, e                                       ; $498E: $5B
    inc e                                         ; $498F: $1C
    rst $30                                       ; $4990: $F7
    ld c, e                                       ; $4991: $4B
    ld e, a                                       ; $4992: $5F
    dec d                                         ; $4993: $15
    jr nz, jr_01C_4A0D                            ; $4994: $20 $77

    ld d, b                                       ; $4996: $50
    ld [$BF20], sp                                ; $4997: $08 $20 $BF
    ld d, b                                       ; $499A: $50
    nop                                           ; $499B: $00
    nop                                           ; $499C: $00
    ld e, e                                       ; $499D: $5B
    inc e                                         ; $499E: $1C
    inc hl                                        ; $499F: $23
    ld c, h                                       ; $49A0: $4C
    ld e, a                                       ; $49A1: $5F
    dec b                                         ; $49A2: $05
    dec b                                         ; $49A3: $05
    ld l, e                                       ; $49A4: $6B
    ld c, d                                       ; $49A5: $4A
    dec b                                         ; $49A6: $05
    ld b, $B9                                     ; $49A7: $06 $B9
    ret nc                                        ; $49A9: $D0

    ld c, h                                       ; $49AA: $4C
    inc e                                         ; $49AB: $1C
    add hl, hl                                    ; $49AC: $29
    ld c, c                                       ; $49AD: $49
    ld [hl+], a                                   ; $49AE: $22
    inc b                                         ; $49AF: $04
    ld b, b                                       ; $49B0: $40
    ld l, e                                       ; $49B1: $6B
    dec c                                         ; $49B2: $0D
    dec c                                         ; $49B3: $0D
    ret nz                                        ; $49B4: $C0

    ld [hl], b                                    ; $49B5: $70
    ret nz                                        ; $49B6: $C0

    add h                                         ; $49B7: $84
    nop                                           ; $49B8: $00
    dec bc                                        ; $49B9: $0B

jr_01C_49BA:
    dec b                                         ; $49BA: $05
    ld b, d                                       ; $49BB: $42
    rrca                                          ; $49BC: $0F
    dec b                                         ; $49BD: $05
    inc c                                         ; $49BE: $0C
    dec b                                         ; $49BF: $05
    inc d                                         ; $49C0: $14
    jr nz, jr_01C_4982                            ; $49C1: $20 $BF

    ld d, b                                       ; $49C3: $50
    ld e, c                                       ; $49C4: $59
    inc e                                         ; $49C5: $1C
    ld a, $4C                                     ; $49C6: $3E $4C
    ld b, b                                       ; $49C8: $40
    ld [de], a                                    ; $49C9: $12
    dec d                                         ; $49CA: $15
    jr nz, jr_01C_4A48                            ; $49CB: $20 $7B

    ld d, [hl]                                    ; $49CD: $56
    rla                                           ; $49CE: $17
    jr nz, jr_01C_49FC                            ; $49CF: $20 $2B

    ld d, l                                       ; $49D1: $55
    jr jr_01C_49D4                                ; $49D2: $18 $00

jr_01C_49D4:
    add hl, de                                    ; $49D4: $19
    dec d                                         ; $49D5: $15
    db $10                                        ; $49D6: $10
    ei                                            ; $49D7: $FB
    ld b, [hl]                                    ; $49D8: $46
    jr nz, jr_01C_49EB                            ; $49D9: $20 $10

    add a                                         ; $49DB: $87
    ld b, [hl]                                    ; $49DC: $46
    db $10                                        ; $49DD: $10
    db $10                                        ; $49DE: $10
    ei                                            ; $49DF: $FB
    ld b, [hl]                                    ; $49E0: $46
    nop                                           ; $49E1: $00
    nop                                           ; $49E2: $00
    ld e, h                                       ; $49E3: $5C
    ld [bc], a                                    ; $49E4: $02
    inc b                                         ; $49E5: $04
    dec d                                         ; $49E6: $15
    db $10                                        ; $49E7: $10
    add a                                         ; $49E8: $87
    ld b, [hl]                                    ; $49E9: $46
    ld c, b                                       ; $49EA: $48

jr_01C_49EB:
    db $10                                        ; $49EB: $10
    ei                                            ; $49EC: $FB
    ld b, [hl]                                    ; $49ED: $46
    nop                                           ; $49EE: $00
    nop                                           ; $49EF: $00
    ld b, d                                       ; $49F0: $42
    dec d                                         ; $49F1: $15
    db $10                                        ; $49F2: $10
    pop de                                        ; $49F3: $D1
    ld c, d                                       ; $49F4: $4A
    jr nc, jr_01C_4A07                            ; $49F5: $30 $10

    ld e, l                                       ; $49F7: $5D
    ld c, d                                       ; $49F8: $4A
    db $10                                        ; $49F9: $10
    db $10                                        ; $49FA: $10
    pop de                                        ; $49FB: $D1

jr_01C_49FC:
    ld c, d                                       ; $49FC: $4A
    nop                                           ; $49FD: $00
    nop                                           ; $49FE: $00
    ld e, h                                       ; $49FF: $5C
    ld [bc], a                                    ; $4A00: $02
    inc b                                         ; $4A01: $04
    dec d                                         ; $4A02: $15
    db $10                                        ; $4A03: $10
    ld e, l                                       ; $4A04: $5D
    ld c, d                                       ; $4A05: $4A
    ld d, d                                       ; $4A06: $52

jr_01C_4A07:
    db $10                                        ; $4A07: $10
    pop de                                        ; $4A08: $D1
    ld c, d                                       ; $4A09: $4A
    nop                                           ; $4A0A: $00
    nop                                           ; $4A0B: $00
    ld b, d                                       ; $4A0C: $42

jr_01C_4A0D:
    sbc d                                         ; $4A0D: $9A
    ld a, h                                       ; $4A0E: $7C
    dec b                                         ; $4A0F: $05
    ld d, $01                                     ; $4A10: $16 $01
    ld e, e                                       ; $4A12: $5B
    inc e                                         ; $4A13: $1C
    push de                                       ; $4A14: $D5
    ld c, d                                       ; $4A15: $4A
    ld b, b                                       ; $4A16: $40
    ld b, b                                       ; $4A17: $40
    ld a, h                                       ; $4A18: $7C
    ld [$0105], sp                                ; $4A19: $08 $05 $01
    ld e, h                                       ; $4A1C: $5C
    nop                                           ; $4A1D: $00
    ld [bc], a                                    ; $4A1E: $02
    ld b, d                                       ; $4A1F: $42
    sbc e                                         ; $4A20: $9B
    ld a, b                                       ; $4A21: $78
    ld [hl], b                                    ; $4A22: $70
    sbc a                                         ; $4A23: $9F
    ld d, a                                       ; $4A24: $57
    ld l, a                                       ; $4A25: $6F
    ld [hl], a                                    ; $4A26: $77
    inc l                                         ; $4A27: $2C
    jr nz, jr_01C_4A9E                            ; $4A28: $20 $74

    ld l, b                                       ; $4A2A: $68
    ld l, c                                       ; $4A2B: $69
    ld [hl], e                                    ; $4A2C: $73
    jr nz, jr_01C_4A98                            ; $4A2D: $20 $69

    ld [hl], e                                    ; $4A2F: $73
    rst $38                                       ; $4A30: $FF
    ld [hl], b                                    ; $4A31: $70
    ld [hl], d                                    ; $4A32: $72
    ld h, l                                       ; $4A33: $65
    ld [hl], h                                    ; $4A34: $74
    ld [hl], h                                    ; $4A35: $74
    ld a, c                                       ; $4A36: $79
    jr nz, jr_01C_4AA1                            ; $4A37: $20 $68

    ld l, c                                       ; $4A39: $69
    ld h, a                                       ; $4A3A: $67
    ld l, b                                       ; $4A3B: $68
    jr nz, jr_01C_4AB3                            ; $4A3C: $20 $75

    ld [hl], b                                    ; $4A3E: $70
    inc l                                         ; $4A3F: $2C
    cp $49                                        ; $4A40: $FE $49
    jr nz, jr_01C_4ABB                            ; $4A42: $20 $77

    ld l, a                                       ; $4A44: $6F
    ld l, [hl]                                    ; $4A45: $6E
    ld h, h                                       ; $4A46: $64
    ld h, l                                       ; $4A47: $65

jr_01C_4A48:
    ld [hl], d                                    ; $4A48: $72
    jr nz, jr_01C_4AB4                            ; $4A49: $20 $69

    ld h, [hl]                                    ; $4A4B: $66
    rst $38                                       ; $4A4C: $FF
    ld c, c                                       ; $4A4D: $49
    jr nz, jr_01C_4AC3                            ; $4A4E: $20 $73

    ld l, b                                       ; $4A50: $68
    ld l, a                                       ; $4A51: $6F
    ld [hl], l                                    ; $4A52: $75
    ld l, h                                       ; $4A53: $6C
    ld h, h                                       ; $4A54: $64
    jr nz, jr_01C_4ABE                            ; $4A55: $20 $67

    ld l, a                                       ; $4A57: $6F

jr_01C_4A58:
    jr nz, jr_01C_4A58                            ; $4A58: $20 $FE

    ld h, d                                       ; $4A5A: $62
    ld h, c                                       ; $4A5B: $61
    ld h, e                                       ; $4A5C: $63
    ld l, e                                       ; $4A5D: $6B
    jr nz, jr_01C_4ACF                            ; $4A5E: $20 $6F

    ld [hl], d                                    ; $4A60: $72
    jr nz, jr_01C_4AD7                            ; $4A61: $20 $74

    ld [hl], d                                    ; $4A63: $72
    ld a, c                                       ; $4A64: $79
    jr nz, jr_01C_4ADB                            ; $4A65: $20 $74

    ld l, a                                       ; $4A67: $6F
    rst $38                                       ; $4A68: $FF
    ld h, [hl]                                    ; $4A69: $66
    ld l, c                                       ; $4A6A: $69
    ld l, [hl]                                    ; $4A6B: $6E
    ld h, h                                       ; $4A6C: $64
    jr nz, jr_01C_4ADC                            ; $4A6D: $20 $6D

    ld a, c                                       ; $4A6F: $79
    jr nz, jr_01C_4AE9                            ; $4A70: $20 $77

    ld h, c                                       ; $4A72: $61
    ld a, c                                       ; $4A73: $79
    cp $64                                        ; $4A74: $FE $64
    ld l, a                                       ; $4A76: $6F
    ld [hl], a                                    ; $4A77: $77
    ld l, [hl]                                    ; $4A78: $6E
    jr nz, jr_01C_4AE3                            ; $4A79: $20 $68

    ld h, l                                       ; $4A7B: $65
    ld [hl], d                                    ; $4A7C: $72
    ld h, l                                       ; $4A7D: $65
    ccf                                           ; $4A7E: $3F
    cp $FD                                        ; $4A7F: $FE $FD
    sbc c                                         ; $4A81: $99
    sbc e                                         ; $4A82: $9B
    ld a, b                                       ; $4A83: $78
    ld [hl], b                                    ; $4A84: $70
    sbc a                                         ; $4A85: $9F
    jr nz, jr_01C_4ACF                            ; $4A86: $20 $47

    ld l, a                                       ; $4A88: $6F
    jr nz, jr_01C_4AED                            ; $4A89: $20 $62

    ld h, c                                       ; $4A8B: $61
    ld h, e                                       ; $4A8C: $63
    ld l, e                                       ; $4A8D: $6B
    rst $38                                       ; $4A8E: $FF
    jr nz, jr_01C_4ADD                            ; $4A8F: $20 $4C

    ld l, a                                       ; $4A91: $6F
    ld l, a                                       ; $4A92: $6F
    ld l, e                                       ; $4A93: $6B
    jr nz, jr_01C_4AFE                            ; $4A94: $20 $68

    ld h, l                                       ; $4A96: $65
    ld [hl], d                                    ; $4A97: $72

jr_01C_4A98:
    ld h, l                                       ; $4A98: $65
    db $FD                                        ; $4A99: $FD
    sbc h                                         ; $4A9A: $9C
    ld [bc], a                                    ; $4A9B: $02
    inc e                                         ; $4A9C: $1C
    and d                                         ; $4A9D: $A2

jr_01C_4A9E:
    ld c, d                                       ; $4A9E: $4A
    inc e                                         ; $4A9F: $1C
    rst $08                                       ; $4AA0: $CF

jr_01C_4AA1:
    ld c, d                                       ; $4AA1: $4A
    add hl, bc                                    ; $4AA2: $09
    nop                                           ; $4AA3: $00
    inc e                                         ; $4AA4: $1C
    ld c, e                                       ; $4AA5: $4B
    ld c, c                                       ; $4AA6: $49
    sbc c                                         ; $4AA7: $99
    sbc a                                         ; $4AA8: $9F
    ld c, [hl]                                    ; $4AA9: $4E
    ld l, a                                       ; $4AAA: $6F
    jr nz, jr_01C_4B24                            ; $4AAB: $20 $77

    ld h, c                                       ; $4AAD: $61
    ld a, c                                       ; $4AAE: $79
    jr nz, jr_01C_4AFA                            ; $4AAF: $20 $49

    daa                                           ; $4AB1: $27
    ld l, l                                       ; $4AB2: $6D

jr_01C_4AB3:
    rst $38                                       ; $4AB3: $FF

jr_01C_4AB4:
    ld h, a                                       ; $4AB4: $67
    ld l, a                                       ; $4AB5: $6F
    ld l, c                                       ; $4AB6: $69
    ld l, [hl]                                    ; $4AB7: $6E
    ld h, a                                       ; $4AB8: $67
    jr nz, jr_01C_4B2F                            ; $4AB9: $20 $74

jr_01C_4ABB:
    ld l, a                                       ; $4ABB: $6F
    jr nz, @+$6C                                  ; $4ABC: $20 $6A

jr_01C_4ABE:
    ld [hl], l                                    ; $4ABE: $75
    ld l, l                                       ; $4ABF: $6D
    ld [hl], b                                    ; $4AC0: $70
    cp $6F                                        ; $4AC1: $FE $6F

jr_01C_4AC3:
    ld h, [hl]                                    ; $4AC3: $66
    ld h, [hl]                                    ; $4AC4: $66
    jr nz, @+$76                                  ; $4AC5: $20 $74

    ld l, b                                       ; $4AC7: $68
    ld h, c                                       ; $4AC8: $61
    ld [hl], h                                    ; $4AC9: $74
    ld hl, $FDFE                                  ; $4ACA: $21 $FE $FD
    sbc d                                         ; $4ACD: $9A
    ld b, d                                       ; $4ACE: $42

jr_01C_4ACF:
    sbc d                                         ; $4ACF: $9A
    ld e, d                                       ; $4AD0: $5A
    inc e                                         ; $4AD1: $1C
    dec c                                         ; $4AD2: $0D
    ld c, d                                       ; $4AD3: $4A
    ld b, d                                       ; $4AD4: $42
    sbc e                                         ; $4AD5: $9B
    ld a, b                                       ; $4AD6: $78

jr_01C_4AD7:
    ld [hl], b                                    ; $4AD7: $70
    sbc a                                         ; $4AD8: $9F
    ld d, h                                       ; $4AD9: $54
    ld l, b                                       ; $4ADA: $68

jr_01C_4ADB:
    ld h, c                                       ; $4ADB: $61

jr_01C_4ADC:
    ld [hl], h                                    ; $4ADC: $74

jr_01C_4ADD:
    daa                                           ; $4ADD: $27
    ld [hl], e                                    ; $4ADE: $73
    jr nz, jr_01C_4B42                            ; $4ADF: $20 $61

    jr nz, jr_01C_4B4F                            ; $4AE1: $20 $6C

jr_01C_4AE3:
    ld l, a                                       ; $4AE3: $6F
    ld l, [hl]                                    ; $4AE4: $6E
    ld h, a                                       ; $4AE5: $67
    rst $38                                       ; $4AE6: $FF
    ld [hl], a                                    ; $4AE7: $77
    ld h, c                                       ; $4AE8: $61

jr_01C_4AE9:
    ld a, c                                       ; $4AE9: $79
    jr nz, @+$66                                  ; $4AEA: $20 $64

    ld l, a                                       ; $4AEC: $6F

jr_01C_4AED:
    ld [hl], a                                    ; $4AED: $77
    ld l, [hl]                                    ; $4AEE: $6E
    ld l, $2E                                     ; $4AEF: $2E $2E
    ld l, $FE                                     ; $4AF1: $2E $FE
    ld [hl], h                                    ; $4AF3: $74
    ld l, b                                       ; $4AF4: $68
    ld h, l                                       ; $4AF5: $65
    jr nz, jr_01C_4B6F                            ; $4AF6: $20 $77

    ld h, c                                       ; $4AF8: $61
    ld [hl], h                                    ; $4AF9: $74

jr_01C_4AFA:
    ld h, l                                       ; $4AFA: $65
    ld [hl], d                                    ; $4AFB: $72
    jr nz, jr_01C_4B75                            ; $4AFC: $20 $77

jr_01C_4AFE:
    ld l, a                                       ; $4AFE: $6F
    ld [hl], l                                    ; $4AFF: $75
    ld l, h                                       ; $4B00: $6C
    ld h, h                                       ; $4B01: $64
    rst $38                                       ; $4B02: $FF
    ld [hl], e                                    ; $4B03: $73
    ld l, a                                       ; $4B04: $6F
    ld h, [hl]                                    ; $4B05: $66
    ld [hl], h                                    ; $4B06: $74
    ld h, l                                       ; $4B07: $65
    ld l, [hl]                                    ; $4B08: $6E
    jr nz, jr_01C_4B7F                            ; $4B09: $20 $74

    ld l, b                                       ; $4B0B: $68
    ld h, l                                       ; $4B0C: $65
    cp $6C                                        ; $4B0D: $FE $6C
    ld h, c                                       ; $4B0F: $61
    ld l, [hl]                                    ; $4B10: $6E
    ld h, h                                       ; $4B11: $64
    ld l, c                                       ; $4B12: $69
    ld l, [hl]                                    ; $4B13: $6E
    ld h, a                                       ; $4B14: $67
    inc l                                         ; $4B15: $2C
    jr nz, jr_01C_4B7A                            ; $4B16: $20 $62

    ld [hl], l                                    ; $4B18: $75
    ld [hl], h                                    ; $4B19: $74
    jr nz, jr_01C_4B65                            ; $4B1A: $20 $49

    rst $38                                       ; $4B1C: $FF
    ld h, e                                       ; $4B1D: $63
    ld h, c                                       ; $4B1E: $61
    ld l, [hl]                                    ; $4B1F: $6E
    daa                                           ; $4B20: $27
    ld [hl], h                                    ; $4B21: $74
    jr nz, jr_01C_4B97                            ; $4B22: $20 $73

jr_01C_4B24:
    ld [hl], a                                    ; $4B24: $77
    ld l, c                                       ; $4B25: $69
    ld l, l                                       ; $4B26: $6D
    ld l, $2E                                     ; $4B27: $2E $2E
    ld l, $FE                                     ; $4B29: $2E $FE
    db $FD                                        ; $4B2B: $FD
    sbc d                                         ; $4B2C: $9A
    ld b, b                                       ; $4B2D: $40
    ld h, b                                       ; $4B2E: $60

jr_01C_4B2F:
    sbc e                                         ; $4B2F: $9B
    ld a, b                                       ; $4B30: $78
    ld [hl], b                                    ; $4B31: $70
    sbc a                                         ; $4B32: $9F
    ld d, a                                       ; $4B33: $57
    ld h, l                                       ; $4B34: $65
    ld l, h                                       ; $4B35: $6C
    ld l, h                                       ; $4B36: $6C
    inc l                                         ; $4B37: $2C
    jr nz, jr_01C_4B83                            ; $4B38: $20 $49

    jr nz, jr_01C_4BAF                            ; $4B3A: $20 $73

    ld h, l                                       ; $4B3C: $65
    ld h, l                                       ; $4B3D: $65
    ld l, l                                       ; $4B3E: $6D
    rst $38                                       ; $4B3F: $FF
    ld [hl], h                                    ; $4B40: $74
    ld l, a                                       ; $4B41: $6F

jr_01C_4B42:
    jr nz, jr_01C_4BA6                            ; $4B42: $20 $62

    ld h, l                                       ; $4B44: $65
    jr nz, jr_01C_4BB0                            ; $4B45: $20 $69

    ld l, [hl]                                    ; $4B47: $6E
    jr nz, jr_01C_4BAB                            ; $4B48: $20 $61

    cp $66                                        ; $4B4A: $FE $66
    ld l, c                                       ; $4B4C: $69
    ld a, b                                       ; $4B4D: $78
    inc l                                         ; $4B4E: $2C

jr_01C_4B4F:
    jr nz, jr_01C_4BB9                            ; $4B4F: $20 $68

    ld h, l                                       ; $4B51: $65
    ld [hl], d                                    ; $4B52: $72
    ld h, l                                       ; $4B53: $65
    ld l, $2E                                     ; $4B54: $2E $2E
    ld l, $FE                                     ; $4B56: $2E $FE
    ld d, h                                       ; $4B58: $54
    ld l, b                                       ; $4B59: $68
    ld h, c                                       ; $4B5A: $61
    ld [hl], h                                    ; $4B5B: $74
    jr nz, jr_01C_4BC5                            ; $4B5C: $20 $67

    ld [hl], l                                    ; $4B5E: $75
    ld a, c                                       ; $4B5F: $79
    jr nz, jr_01C_4BC4                            ; $4B60: $20 $62

    ld h, c                                       ; $4B62: $61
    ld h, e                                       ; $4B63: $63
    ld l, e                                       ; $4B64: $6B

jr_01C_4B65:
    rst $38                                       ; $4B65: $FF
    ld h, c                                       ; $4B66: $61
    ld [hl], h                                    ; $4B67: $74
    jr nz, jr_01C_4BDE                            ; $4B68: $20 $74

    ld l, b                                       ; $4B6A: $68
    ld h, l                                       ; $4B6B: $65
    jr nz, jr_01C_4BE4                            ; $4B6C: $20 $76

    ld h, c                                       ; $4B6E: $61

jr_01C_4B6F:
    ld [hl], l                                    ; $4B6F: $75
    ld l, h                                       ; $4B70: $6C
    ld [hl], h                                    ; $4B71: $74
    cp $73                                        ; $4B72: $FE $73
    ld h, c                                       ; $4B74: $61

jr_01C_4B75:
    ld l, c                                       ; $4B75: $69
    ld h, h                                       ; $4B76: $64
    jr nz, jr_01C_4BED                            ; $4B77: $20 $74

    ld l, a                                       ; $4B79: $6F

jr_01C_4B7A:
    jr nz, jr_01C_4BDE                            ; $4B7A: $20 $62

    ld l, h                                       ; $4B7C: $6C
    ld l, a                                       ; $4B7D: $6F
    ld [hl], a                                    ; $4B7E: $77

jr_01C_4B7F:
    rst $38                                       ; $4B7F: $FF
    ld [hl], h                                    ; $4B80: $74
    ld l, b                                       ; $4B81: $68
    ld h, l                                       ; $4B82: $65

jr_01C_4B83:
    jr nz, jr_01C_4BED                            ; $4B83: $20 $68

    ld l, a                                       ; $4B85: $6F
    ld [hl], d                                    ; $4B86: $72
    ld l, [hl]                                    ; $4B87: $6E
    jr nz, jr_01C_4BF3                            ; $4B88: $20 $69

    ld h, [hl]                                    ; $4B8A: $66
    jr nz, @+$4B                                  ; $4B8B: $20 $49

    cp $6E                                        ; $4B8D: $FE $6E
    ld h, l                                       ; $4B8F: $65
    ld h, l                                       ; $4B90: $65
    ld h, h                                       ; $4B91: $64
    ld h, l                                       ; $4B92: $65
    ld h, h                                       ; $4B93: $64
    jr nz, jr_01C_4BFE                            ; $4B94: $20 $68

    ld h, l                                       ; $4B96: $65

jr_01C_4B97:
    ld l, h                                       ; $4B97: $6C
    ld [hl], b                                    ; $4B98: $70
    ld l, $2E                                     ; $4B99: $2E $2E
    ld l, $FF                                     ; $4B9B: $2E $FF
    ld l, l                                       ; $4B9D: $6D
    ld h, c                                       ; $4B9E: $61
    ld a, c                                       ; $4B9F: $79
    ld h, d                                       ; $4BA0: $62
    ld h, l                                       ; $4BA1: $65
    jr nz, jr_01C_4C18                            ; $4BA2: $20 $74

    ld l, b                                       ; $4BA4: $68
    ld l, c                                       ; $4BA5: $69

jr_01C_4BA6:
    ld [hl], e                                    ; $4BA6: $73
    cp $77                                        ; $4BA7: $FE $77
    ld l, a                                       ; $4BA9: $6F
    ld [hl], l                                    ; $4BAA: $75

jr_01C_4BAB:
    ld l, h                                       ; $4BAB: $6C
    ld h, h                                       ; $4BAC: $64
    jr nz, @+$64                                  ; $4BAD: $20 $62

jr_01C_4BAF:
    ld h, l                                       ; $4BAF: $65

jr_01C_4BB0:
    jr nz, jr_01C_4C13                            ; $4BB0: $20 $61

    jr nz, jr_01C_4C1B                            ; $4BB2: $20 $67

    ld l, a                                       ; $4BB4: $6F
    ld l, a                                       ; $4BB5: $6F
    ld h, h                                       ; $4BB6: $64
    rst $38                                       ; $4BB7: $FF
    ld [hl], h                                    ; $4BB8: $74

jr_01C_4BB9:
    ld l, c                                       ; $4BB9: $69
    ld l, l                                       ; $4BBA: $6D
    ld h, l                                       ; $4BBB: $65
    ld l, $2E                                     ; $4BBC: $2E $2E
    ld l, $FE                                     ; $4BBE: $2E $FE
    db $FD                                        ; $4BC0: $FD
    sbc d                                         ; $4BC1: $9A
    ld e, h                                       ; $4BC2: $5C
    nop                                           ; $4BC3: $00

jr_01C_4BC4:
    ld [bc], a                                    ; $4BC4: $02

jr_01C_4BC5:
    add hl, bc                                    ; $4BC5: $09
    nop                                           ; $4BC6: $00
    inc e                                         ; $4BC7: $1C
    ld e, h                                       ; $4BC8: $5C
    ld c, c                                       ; $4BC9: $49
    ld b, d                                       ; $4BCA: $42
    sbc e                                         ; $4BCB: $9B
    ld a, b                                       ; $4BCC: $78
    ld [hl], b                                    ; $4BCD: $70
    sbc a                                         ; $4BCE: $9F
    ld b, c                                       ; $4BCF: $41
    ld c, c                                       ; $4BD0: $49
    ld b, l                                       ; $4BD1: $45
    ld b, l                                       ; $4BD2: $45
    ld b, a                                       ; $4BD3: $47
    ld c, b                                       ; $4BD4: $48
    ld hl, $FE21                                  ; $4BD5: $21 $21 $FE
    db $FD                                        ; $4BD8: $FD
    sbc d                                         ; $4BD9: $9A
    ld e, h                                       ; $4BDA: $5C
    ld bc, $4202                                  ; $4BDB: $01 $02 $42

jr_01C_4BDE:
    sbc a                                         ; $4BDE: $9F
    ld b, d                                       ; $4BDF: $42
    ld c, h                                       ; $4BE0: $4C
    ld c, a                                       ; $4BE1: $4F
    ld c, a                                       ; $4BE2: $4F
    ld c, a                                       ; $4BE3: $4F

jr_01C_4BE4:
    ld d, d                                       ; $4BE4: $52
    ld c, [hl]                                    ; $4BE5: $4E
    ld b, a                                       ; $4BE6: $47
    ld c, b                                       ; $4BE7: $48
    ld hl, $47FE                                  ; $4BE8: $21 $FE $47
    ld d, d                                       ; $4BEB: $52
    ld b, c                                       ; $4BEC: $41

jr_01C_4BED:
    ld c, [hl]                                    ; $4BED: $4E
    ld c, e                                       ; $4BEE: $4B
    ld hl, $FDFE                                  ; $4BEF: $21 $FE $FD
    sbc d                                         ; $4BF2: $9A

jr_01C_4BF3:
    ld e, h                                       ; $4BF3: $5C
    ld [bc], a                                    ; $4BF4: $02
    inc b                                         ; $4BF5: $04
    ld b, d                                       ; $4BF6: $42
    sbc e                                         ; $4BF7: $9B
    ld a, b                                       ; $4BF8: $78
    ld [hl], b                                    ; $4BF9: $70
    sbc a                                         ; $4BFA: $9F
    ld d, h                                       ; $4BFB: $54
    ld l, b                                       ; $4BFC: $68
    ld h, l                                       ; $4BFD: $65

jr_01C_4BFE:
    ld a, c                                       ; $4BFE: $79
    daa                                           ; $4BFF: $27
    ld l, h                                       ; $4C00: $6C
    ld l, h                                       ; $4C01: $6C
    jr nz, @+$76                                  ; $4C02: $20 $74

    ld l, b                                       ; $4C04: $68
    ld [hl], d                                    ; $4C05: $72
    ld l, a                                       ; $4C06: $6F
    ld [hl], a                                    ; $4C07: $77
    rst $38                                       ; $4C08: $FF
    ld l, l                                       ; $4C09: $6D
    ld h, l                                       ; $4C0A: $65
    jr nz, jr_01C_4C6F                            ; $4C0B: $20 $62

    ld h, c                                       ; $4C0D: $61
    ld h, e                                       ; $4C0E: $63
    ld l, e                                       ; $4C0F: $6B
    jr nz, jr_01C_4C7B                            ; $4C10: $20 $69

    ld l, [hl]                                    ; $4C12: $6E

jr_01C_4C13:
    jr nz, jr_01C_4C89                            ; $4C13: $20 $74

    ld l, b                                       ; $4C15: $68
    ld h, c                                       ; $4C16: $61
    ld [hl], h                                    ; $4C17: $74

jr_01C_4C18:
    cp $63                                        ; $4C18: $FE $63
    ld h, l                                       ; $4C1A: $65

jr_01C_4C1B:
    ld l, h                                       ; $4C1B: $6C
    ld l, h                                       ; $4C1C: $6C
    ld hl, $FDFE                                  ; $4C1D: $21 $FE $FD
    sbc d                                         ; $4C20: $9A
    ld d, l                                       ; $4C21: $55
    ld b, d                                       ; $4C22: $42
    sbc e                                         ; $4C23: $9B
    ld a, b                                       ; $4C24: $78
    ld [hl], b                                    ; $4C25: $70
    sbc a                                         ; $4C26: $9F
    ld c, c                                       ; $4C27: $49
    jr nz, jr_01C_4C92                            ; $4C28: $20 $68

    ld l, a                                       ; $4C2A: $6F
    ld [hl], b                                    ; $4C2B: $70
    ld h, l                                       ; $4C2C: $65
    jr nz, jr_01C_4CA3                            ; $4C2D: $20 $74

    ld l, b                                       ; $4C2F: $68
    ld l, c                                       ; $4C30: $69
    ld [hl], e                                    ; $4C31: $73
    rst $38                                       ; $4C32: $FF
    ld [hl], a                                    ; $4C33: $77
    ld l, a                                       ; $4C34: $6F
    ld [hl], d                                    ; $4C35: $72
    ld l, e                                       ; $4C36: $6B
    ld [hl], e                                    ; $4C37: $73
    ld hl, $FDFE                                  ; $4C38: $21 $FE $FD
    sbc d                                         ; $4C3B: $9A
    ld d, l                                       ; $4C3C: $55
    ld b, d                                       ; $4C3D: $42
    inc h                                         ; $4C3E: $24
    ld d, b                                       ; $4C3F: $50
    dec b                                         ; $4C40: $05
    ld [bc], a                                    ; $4C41: $02
    ld l, e                                       ; $4C42: $6B
    ld c, d                                       ; $4C43: $4A
    inc bc                                        ; $4C44: $03

jr_01C_4C45:
    ld d, $97                                     ; $4C45: $16 $97
    jp nc, $0E0C                                  ; $4C47: $D2 $0C $0E

    pop bc                                        ; $4C4A: $C1
    ld c, l                                       ; $4C4B: $4D
    ld [hl+], a                                   ; $4C4C: $22

jr_01C_4C4D:
    inc b                                         ; $4C4D: $04
    ld b, b                                       ; $4C4E: $40
    dec bc                                        ; $4C4F: $0B
    ld [bc], a                                    ; $4C50: $02
    ld e, d                                       ; $4C51: $5A
    inc e                                         ; $4C52: $1C
    ld [de], a                                    ; $4C53: $12
    ld c, l                                       ; $4C54: $4D

jr_01C_4C55:
    ld l, e                                       ; $4C55: $6B
    inc c                                         ; $4C56: $0C
    inc c                                         ; $4C57: $0C
    ldh [$72], a                                  ; $4C58: $E0 $72
    nop                                           ; $4C5A: $00

jr_01C_4C5B:
    add b                                         ; $4C5B: $80
    nop                                           ; $4C5C: $00

jr_01C_4C5D:
    ld l, e                                       ; $4C5D: $6B
    inc d                                         ; $4C5E: $14
    ld a, [bc]                                    ; $4C5F: $0A
    ld [hl], b                                    ; $4C60: $70
    ld b, a                                       ; $4C61: $47
    ret nz                                        ; $4C62: $C0

jr_01C_4C63:
    add b                                         ; $4C63: $80
    nop                                           ; $4C64: $00
    ld b, d                                       ; $4C65: $42
    inc d                                         ; $4C66: $14
    ld c, $C1                                     ; $4C67: $0E $C1
    ld c, l                                       ; $4C69: $4D
    ld e, e                                       ; $4C6A: $5B

jr_01C_4C6B:
    inc e                                         ; $4C6B: $1C
    add d                                         ; $4C6C: $82
    ld c, l                                       ; $4C6D: $4D
    ld e, a                                       ; $4C6E: $5F

jr_01C_4C6F:
    dec d                                         ; $4C6F: $15
    ld c, $50                                     ; $4C70: $0E $50
    ld c, a                                       ; $4C72: $4F

jr_01C_4C73:
    jr jr_01C_4C83                                ; $4C73: $18 $0E

    pop bc                                        ; $4C75: $C1
    ld c, l                                       ; $4C76: $4D
    jr jr_01C_4C79                                ; $4C77: $18 $00

jr_01C_4C79:
    add hl, bc                                    ; $4C79: $09
    nop                                           ; $4C7A: $00

jr_01C_4C7B:
    inc e                                         ; $4C7B: $1C
    ldh a, [$4C]                                  ; $4C7C: $F0 $4C
    ld e, e                                       ; $4C7E: $5B
    inc e                                         ; $4C7F: $1C
    ld h, $4E                                     ; $4C80: $26 $4E

jr_01C_4C82:
    ld e, a                                       ; $4C82: $5F

jr_01C_4C83:
    dec d                                         ; $4C83: $15
    ld c, $D3                                     ; $4C84: $0E $D3
    ld c, [hl]                                    ; $4C86: $4E

jr_01C_4C87:
    jr jr_01C_4C97                                ; $4C87: $18 $0E

jr_01C_4C89:
    pop bc                                        ; $4C89: $C1
    ld c, l                                       ; $4C8A: $4D
    stop                                          ; $4C8B: $10 $00
    ld b, b                                       ; $4C8D: $40
    jr nz, jr_01C_4CEB                            ; $4C8E: $20 $5B

    inc e                                         ; $4C90: $1C
    ld a, l                                       ; $4C91: $7D

jr_01C_4C92:
    ld c, [hl]                                    ; $4C92: $4E
    ld e, a                                       ; $4C93: $5F
    add hl, bc                                    ; $4C94: $09
    nop                                           ; $4C95: $00
    inc e                                         ; $4C96: $1C

jr_01C_4C97:
    push af                                       ; $4C97: $F5
    ld c, h                                       ; $4C98: $4C
    jr jr_01C_4C9B                                ; $4C99: $18 $00

jr_01C_4C9B:
    inc d                                         ; $4C9B: $14
    db $10                                        ; $4C9C: $10
    pop af                                        ; $4C9D: $F1
    ld e, l                                       ; $4C9E: $5D
    ld b, d                                       ; $4C9F: $42
    dec d                                         ; $4CA0: $15
    jr nz, jr_01C_4CCE                            ; $4CA1: $20 $2B

jr_01C_4CA3:
    ld d, l                                       ; $4CA3: $55
    inc hl                                        ; $4CA4: $23
    db $10                                        ; $4CA5: $10
    pop af                                        ; $4CA6: $F1
    ld e, l                                       ; $4CA7: $5D
    nop                                           ; $4CA8: $00
    nop                                           ; $4CA9: $00
    dec de                                        ; $4CAA: $1B
    inc bc                                        ; $4CAB: $03
    ld b, b                                       ; $4CAC: $40
    jr c, jr_01C_4CB8                             ; $4CAD: $38 $09

    ld [bc], a                                    ; $4CAF: $02
    inc e                                         ; $4CB0: $1C
    ld h, [hl]                                    ; $4CB1: $66
    ld c, h                                       ; $4CB2: $4C
    dec d                                         ; $4CB3: $15
    jr nz, jr_01C_4C45                            ; $4CB4: $20 $8F

    ld d, c                                       ; $4CB6: $51
    inc b                                         ; $4CB7: $04

jr_01C_4CB8:
    jr nz, jr_01C_4C55                            ; $4CB8: $20 $9B

    ld d, c                                       ; $4CBA: $51
    inc b                                         ; $4CBB: $04
    jr nz, jr_01C_4C4D                            ; $4CBC: $20 $8F

    ld d, c                                       ; $4CBE: $51
    inc b                                         ; $4CBF: $04
    jr nz, jr_01C_4C5D                            ; $4CC0: $20 $9B

    ld d, c                                       ; $4CC2: $51
    inc b                                         ; $4CC3: $04
    nop                                           ; $4CC4: $00
    dec d                                         ; $4CC5: $15
    jr nz, jr_01C_4C7B                            ; $4CC6: $20 $B3

    ld d, c                                       ; $4CC8: $51
    inc b                                         ; $4CC9: $04
    jr nz, jr_01C_4C5B                            ; $4CCA: $20 $8F

    ld d, c                                       ; $4CCC: $51
    inc b                                         ; $4CCD: $04

jr_01C_4CCE:
    jr nz, jr_01C_4C6B                            ; $4CCE: $20 $9B

    ld d, c                                       ; $4CD0: $51
    inc b                                         ; $4CD1: $04
    jr nz, jr_01C_4C63                            ; $4CD2: $20 $8F

    ld d, c                                       ; $4CD4: $51
    inc b                                         ; $4CD5: $04
    jr nz, jr_01C_4C73                            ; $4CD6: $20 $9B

    ld d, c                                       ; $4CD8: $51
    inc b                                         ; $4CD9: $04
    nop                                           ; $4CDA: $00
    dec d                                         ; $4CDB: $15
    jr nz, @-$57                                  ; $4CDC: $20 $A7

    ld d, c                                       ; $4CDE: $51
    inc b                                         ; $4CDF: $04
    db $10                                        ; $4CE0: $10
    pop af                                        ; $4CE1: $F1
    ld e, l                                       ; $4CE2: $5D
    jr c, jr_01C_4CE5                             ; $4CE3: $38 $00

jr_01C_4CE5:
    ld b, a                                       ; $4CE5: $47
    inc bc                                        ; $4CE6: $03
    inc e                                         ; $4CE7: $1C
    or e                                          ; $4CE8: $B3
    ld c, h                                       ; $4CE9: $4C
    inc e                                         ; $4CEA: $1C

jr_01C_4CEB:
    push bc                                       ; $4CEB: $C5
    ld c, h                                       ; $4CEC: $4C
    inc e                                         ; $4CED: $1C
    db $DB                                        ; $4CEE: $DB
    ld c, h                                       ; $4CEF: $4C
    inc d                                         ; $4CF0: $14
    jr nz, jr_01C_4C82                            ; $4CF1: $20 $8F

    ld d, c                                       ; $4CF3: $51
    ld b, d                                       ; $4CF4: $42
    inc d                                         ; $4CF5: $14
    jr nz, jr_01C_4C87                            ; $4CF6: $20 $8F

    ld d, c                                       ; $4CF8: $51
    ld e, e                                       ; $4CF9: $5B
    inc e                                         ; $4CFA: $1C
    ld a, c                                       ; $4CFB: $79
    ld c, a                                       ; $4CFC: $4F
    ld e, a                                       ; $4CFD: $5F
    ld b, b                                       ; $4CFE: $40
    db $10                                        ; $4CFF: $10
    dec d                                         ; $4D00: $15
    db $10                                        ; $4D01: $10
    pop af                                        ; $4D02: $F1
    ld e, l                                       ; $4D03: $5D
    ld [hl], b                                    ; $4D04: $70
    nop                                           ; $4D05: $00
    ld l, [hl]                                    ; $4D06: $6E
    rrca                                          ; $4D07: $0F
    rst $38                                       ; $4D08: $FF
    ld a, a                                       ; $4D09: $7F
    halt                                          ; $4D0A: $76
    jr nz, jr_01C_4D1C                            ; $4D0B: $20 $0F

    ld b, l                                       ; $4D0D: $45
    cpl                                           ; $4D0E: $2F
    cpl                                           ; $4D0F: $2F
    ld b, a                                       ; $4D10: $47
    ld b, d                                       ; $4D11: $42
    ld a, h                                       ; $4D12: $7C
    rlca                                          ; $4D13: $07
    ld a, [de]                                    ; $4D14: $1A
    inc bc                                        ; $4D15: $03
    ld b, b                                       ; $4D16: $40
    jr jr_01C_4D74                                ; $4D17: $18 $5B

    inc e                                         ; $4D19: $1C
    cpl                                           ; $4D1A: $2F
    ld c, l                                       ; $4D1B: $4D

jr_01C_4D1C:
    ld e, a                                       ; $4D1C: $5F
    dec b                                         ; $4D1D: $05
    nop                                           ; $4D1E: $00
    ld l, e                                       ; $4D1F: $6B
    ld c, d                                       ; $4D20: $4A
    ld b, $0D                                     ; $4D21: $06 $0D
    adc h                                         ; $4D23: $8C
    pop de                                        ; $4D24: $D1
    nop                                           ; $4D25: $00
    inc e                                         ; $4D26: $1C
    and b                                         ; $4D27: $A0
    ld c, h                                       ; $4D28: $4C
    ld [hl+], a                                   ; $4D29: $22
    inc b                                         ; $4D2A: $04
    ld b, b                                       ; $4D2B: $40
    dec bc                                        ; $4D2C: $0B
    nop                                           ; $4D2D: $00
    ld b, d                                       ; $4D2E: $42
    sbc e                                         ; $4D2F: $9B
    jr z, jr_01C_4D75                             ; $4D30: $28 $43

    sbc a                                         ; $4D32: $9F
    ld d, a                                       ; $4D33: $57
    ld h, c                                       ; $4D34: $61
    ld a, b                                       ; $4D35: $78
    jr nz, @+$6F                                  ; $4D36: $20 $6D

    ld h, l                                       ; $4D38: $65
    rst $38                                       ; $4D39: $FF
    ld [hl], a                                    ; $4D3A: $77
    ld h, l                                       ; $4D3B: $65
    ld l, h                                       ; $4D3C: $6C
    ld l, h                                       ; $4D3D: $6C
    ld l, c                                       ; $4D3E: $69
    ld [hl], e                                    ; $4D3F: $73
    ld l, e                                       ; $4D40: $6B
    ld [hl], e                                    ; $4D41: $73
    ld hl, $54FE                                  ; $4D42: $21 $FE $54
    ld l, a                                       ; $4D45: $6F
    ld l, [hl]                                    ; $4D46: $6E
    ld h, l                                       ; $4D47: $65
    ld a, c                                       ; $4D48: $79
    daa                                           ; $4D49: $27
    ld [hl], e                                    ; $4D4A: $73
    jr nz, jr_01C_4DC1                            ; $4D4B: $20 $74

    ld l, a                                       ; $4D4D: $6F
    ld l, a                                       ; $4D4E: $6F
    ld [hl], h                                    ; $4D4F: $74
    ld l, c                                       ; $4D50: $69
    ld l, [hl]                                    ; $4D51: $6E
    daa                                           ; $4D52: $27
    rst $38                                       ; $4D53: $FF
    ld h, c                                       ; $4D54: $61
    jr nz, jr_01C_4DCA                            ; $4D55: $20 $73

    ld l, b                                       ; $4D57: $68
    ld h, c                                       ; $4D58: $61
    ld l, [hl]                                    ; $4D59: $6E
    ld [hl], h                                    ; $4D5A: $74
    ld a, c                                       ; $4D5B: $79
    jr nz, @+$71                                  ; $4D5C: $20 $6F

    ld l, [hl]                                    ; $4D5E: $6E
    cp $6D                                        ; $4D5F: $FE $6D
    ld h, l                                       ; $4D61: $65
    jr nz, @+$6A                                  ; $4D62: $20 $68

    ld l, a                                       ; $4D64: $6F
    ld [hl], d                                    ; $4D65: $72
    ld l, [hl]                                    ; $4D66: $6E
    ld hl, $42FE                                  ; $4D67: $21 $FE $42
    ld [hl], l                                    ; $4D6A: $75
    ld [hl], h                                    ; $4D6B: $74
    jr nz, jr_01C_4DE5                            ; $4D6C: $20 $77

    ld l, b                                       ; $4D6E: $68
    ld h, c                                       ; $4D6F: $61
    ld [hl], d                                    ; $4D70: $72
    jr nz, jr_01C_4DDC                            ; $4D71: $20 $69

    ld [hl], e                                    ; $4D73: $73

jr_01C_4D74:
    rst $38                                       ; $4D74: $FF

jr_01C_4D75:
    ld [hl], h                                    ; $4D75: $74
    ld l, b                                       ; $4D76: $68
    ld h, l                                       ; $4D77: $65
    jr nz, jr_01C_4DEA                            ; $4D78: $20 $70

    ld [hl], l                                    ; $4D7A: $75
    ld [hl], b                                    ; $4D7B: $70
    ccf                                           ; $4D7C: $3F
    cp $FD                                        ; $4D7D: $FE $FD
    sbc d                                         ; $4D7F: $9A
    ld d, l                                       ; $4D80: $55
    ld b, d                                       ; $4D81: $42
    sbc e                                         ; $4D82: $9B
    jr z, jr_01C_4DC8                             ; $4D83: $28 $43

    sbc a                                         ; $4D85: $9F
    ld b, c                                       ; $4D86: $41
    ld [hl], d                                    ; $4D87: $72
    ld [hl], d                                    ; $4D88: $72
    ld [hl], d                                    ; $4D89: $72
    ld hl, $57FE                                  ; $4D8A: $21 $FE $57
    ld l, a                                       ; $4D8D: $6F
    ld l, [hl]                                    ; $4D8E: $6E
    ld h, h                                       ; $4D8F: $64
    ld h, l                                       ; $4D90: $65
    ld [hl], d                                    ; $4D91: $72
    ld h, [hl]                                    ; $4D92: $66
    ld [hl], l                                    ; $4D93: $75
    ld l, h                                       ; $4D94: $6C
    rst $38                                       ; $4D95: $FF
    ld h, h                                       ; $4D96: $64
    ld l, c                                       ; $4D97: $69
    halt                                          ; $4D98: $76
    ld l, c                                       ; $4D99: $69
    ld l, [hl]                                    ; $4D9A: $6E
    daa                                           ; $4D9B: $27
    inc l                                         ; $4D9C: $2C
    jr nz, jr_01C_4DF3                            ; $4D9D: $20 $54

    ld l, a                                       ; $4D9F: $6F
    ld l, [hl]                                    ; $4DA0: $6E
    ld h, l                                       ; $4DA1: $65
    ld a, c                                       ; $4DA2: $79
    ld hl, $41FE                                  ; $4DA3: $21 $FE $41
    jr nz, jr_01C_4E18                            ; $4DA6: $20 $70

    ld h, l                                       ; $4DA8: $65
    ld [hl], d                                    ; $4DA9: $72
    ld h, [hl]                                    ; $4DAA: $66
    ld h, l                                       ; $4DAB: $65
    ld h, e                                       ; $4DAC: $63
    ld [hl], h                                    ; $4DAD: $74
    jr nz, jr_01C_4E24                            ; $4DAE: $20 $74

    ld h, l                                       ; $4DB0: $65
    ld l, [hl]                                    ; $4DB1: $6E
    ld hl, $FDFE                                  ; $4DB2: $21 $FE $FD
    sbc e                                         ; $4DB5: $9B
    ld a, b                                       ; $4DB6: $78
    ld [hl], b                                    ; $4DB7: $70
    sbc a                                         ; $4DB8: $9F
    ld b, c                                       ; $4DB9: $41
    ld b, e                                       ; $4DBA: $43
    ld c, e                                       ; $4DBB: $4B
    ld hl, $48FE                                  ; $4DBC: $21 $FE $48
    ld [hl], l                                    ; $4DBF: $75
    ld h, [hl]                                    ; $4DC0: $66

jr_01C_4DC1:
    ld h, [hl]                                    ; $4DC1: $66
    ld l, $2E                                     ; $4DC2: $2E $2E
    ld l, $FE                                     ; $4DC4: $2E $FE
    ld h, d                                       ; $4DC6: $62
    ld l, h                                       ; $4DC7: $6C

jr_01C_4DC8:
    ld h, l                                       ; $4DC8: $65
    ld h, c                                       ; $4DC9: $61

jr_01C_4DCA:
    ld l, b                                       ; $4DCA: $68
    ld hl, $49FE                                  ; $4DCB: $21 $FE $49
    jr nz, jr_01C_4DFD                            ; $4DCE: $20 $2D

    cp $63                                        ; $4DD0: $FE $63
    ld h, c                                       ; $4DD2: $61
    ld l, [hl]                                    ; $4DD3: $6E
    daa                                           ; $4DD4: $27
    ld [hl], h                                    ; $4DD5: $74
    jr nz, jr_01C_4E05                            ; $4DD6: $20 $2D

    cp $73                                        ; $4DD8: $FE $73
    ld [hl], a                                    ; $4DDA: $77
    ld l, c                                       ; $4DDB: $69

jr_01C_4DDC:
    ld l, l                                       ; $4DDC: $6D
    ld hl, $FDFE                                  ; $4DDD: $21 $FE $FD
    sbc e                                         ; $4DE0: $9B
    jr z, jr_01C_4E26                             ; $4DE1: $28 $43

    sbc a                                         ; $4DE3: $9F
    ld e, c                                       ; $4DE4: $59

jr_01C_4DE5:
    ld h, l                                       ; $4DE5: $65
    ld [hl], d                                    ; $4DE6: $72
    jr nz, jr_01C_4E5A                            ; $4DE7: $20 $71

    ld [hl], l                                    ; $4DE9: $75

jr_01C_4DEA:
    ld l, c                                       ; $4DEA: $69
    ld [hl], h                                    ; $4DEB: $74
    ld h, l                                       ; $4DEC: $65
    jr nz, jr_01C_4E63                            ; $4DED: $20 $74

    ld l, b                                       ; $4DEF: $68
    ld h, l                                       ; $4DF0: $65
    rst $38                                       ; $4DF1: $FF
    ld [hl], a                                    ; $4DF2: $77

jr_01C_4DF3:
    ld h, l                                       ; $4DF3: $65
    ld l, c                                       ; $4DF4: $69
    ld [hl], d                                    ; $4DF5: $72
    ld h, h                                       ; $4DF6: $64
    ld l, a                                       ; $4DF7: $6F
    inc l                                         ; $4DF8: $2C
    jr nz, jr_01C_4E4F                            ; $4DF9: $20 $54

    ld l, a                                       ; $4DFB: $6F
    ld l, [hl]                                    ; $4DFC: $6E

jr_01C_4DFD:
    ld h, l                                       ; $4DFD: $65
    ld a, c                                       ; $4DFE: $79
    ld l, $FE                                     ; $4DFF: $2E $FE
    db $FD                                        ; $4E01: $FD
    sbc d                                         ; $4E02: $9A
    ld b, b                                       ; $4E03: $40
    add b                                         ; $4E04: $80

jr_01C_4E05:
    sbc e                                         ; $4E05: $9B
    jr z, jr_01C_4E4B                             ; $4E06: $28 $43

    sbc a                                         ; $4E08: $9F
    ld b, c                                       ; $4E09: $41
    ld l, b                                       ; $4E0A: $68
    inc l                                         ; $4E0B: $2C
    jr nz, jr_01C_4E57                            ; $4E0C: $20 $49

    jr nz, jr_01C_4E7B                            ; $4E0E: $20 $6B

    ld l, [hl]                                    ; $4E10: $6E
    ld l, a                                       ; $4E11: $6F
    ld [hl], a                                    ; $4E12: $77
    ld l, $2E                                     ; $4E13: $2E $2E
    ld l, $FF                                     ; $4E15: $2E $FF
    ld [hl], h                                    ; $4E17: $74

jr_01C_4E18:
    ld h, c                                       ; $4E18: $61
    ld l, e                                       ; $4E19: $6B
    ld h, l                                       ; $4E1A: $65
    jr nz, jr_01C_4E91                            ; $4E1B: $20 $74

    ld l, b                                       ; $4E1D: $68
    ld l, c                                       ; $4E1E: $69
    ld [hl], e                                    ; $4E1F: $73
    ld l, $FE                                     ; $4E20: $2E $FE
    db $FD                                        ; $4E22: $FD
    sbc d                                         ; $4E23: $9A

jr_01C_4E24:
    ld d, l                                       ; $4E24: $55
    ld b, d                                       ; $4E25: $42

jr_01C_4E26:
    rra                                           ; $4E26: $1F
    nop                                           ; $4E27: $00
    sbc a                                         ; $4E28: $9F
    ld d, h                                       ; $4E29: $54
    ld l, a                                       ; $4E2A: $6F
    ld l, [hl]                                    ; $4E2B: $6E
    ld a, c                                       ; $4E2C: $79
    jr nz, jr_01C_4E96                            ; $4E2D: $20 $67

    ld l, a                                       ; $4E2F: $6F
    ld [hl], h                                    ; $4E30: $74
    jr nz, jr_01C_4EA7                            ; $4E31: $20 $74

    ld l, b                                       ; $4E33: $68
    ld h, l                                       ; $4E34: $65
    rst $38                                       ; $4E35: $FF
    ld c, a                                       ; $4E36: $4F
    ld [hl], d                                    ; $4E37: $72
    ld l, a                                       ; $4E38: $6F
    ld [hl], h                                    ; $4E39: $74
    ld l, b                                       ; $4E3A: $68
    ld h, l                                       ; $4E3B: $65
    ld h, c                                       ; $4E3C: $61
    ld l, [hl]                                    ; $4E3D: $6E
    jr nz, jr_01C_4E82                            ; $4E3E: $20 $42

    ld h, l                                       ; $4E40: $65
    ld l, h                                       ; $4E41: $6C
    ld [hl], h                                    ; $4E42: $74
    ld hl, $40FD                                  ; $4E43: $21 $FD $40
    or h                                          ; $4E46: $B4
    ld b, b                                       ; $4E47: $40
    or h                                          ; $4E48: $B4
    ld b, b                                       ; $4E49: $40
    or h                                          ; $4E4A: $B4

jr_01C_4E4B:
    sbc d                                         ; $4E4B: $9A
    sbc e                                         ; $4E4C: $9B
    jr z, jr_01C_4E92                             ; $4E4D: $28 $43

jr_01C_4E4F:
    sbc a                                         ; $4E4F: $9F
    ld d, h                                       ; $4E50: $54
    ld l, b                                       ; $4E51: $68
    ld h, c                                       ; $4E52: $61
    ld [hl], d                                    ; $4E53: $72
    jr nz, jr_01C_4ECF                            ; $4E54: $20 $79

    ld h, c                                       ; $4E56: $61

jr_01C_4E57:
    jr nz, jr_01C_4EC0                            ; $4E57: $20 $67

    ld l, a                                       ; $4E59: $6F

jr_01C_4E5A:
    ld hl, $FDFE                                  ; $4E5A: $21 $FE $FD
    sbc e                                         ; $4E5D: $9B
    ld a, b                                       ; $4E5E: $78
    ld [hl], b                                    ; $4E5F: $70
    sbc a                                         ; $4E60: $9F
    ld d, a                                       ; $4E61: $57
    ld l, b                                       ; $4E62: $68

jr_01C_4E63:
    ld h, l                                       ; $4E63: $65
    ld [hl], a                                    ; $4E64: $77
    ld hl, $49FE                                  ; $4E65: $21 $FE $49
    jr nz, jr_01C_4ECB                            ; $4E68: $20 $61

    ld l, h                                       ; $4E6A: $6C
    ld l, l                                       ; $4E6B: $6D
    ld l, a                                       ; $4E6C: $6F
    ld [hl], e                                    ; $4E6D: $73
    ld [hl], h                                    ; $4E6E: $74
    rst $38                                       ; $4E6F: $FF
    ld h, h                                       ; $4E70: $64
    ld [hl], d                                    ; $4E71: $72
    ld l, a                                       ; $4E72: $6F
    ld [hl], a                                    ; $4E73: $77
    ld l, [hl]                                    ; $4E74: $6E
    ld h, l                                       ; $4E75: $65
    ld h, h                                       ; $4E76: $64
    ld hl, $FDFE                                  ; $4E77: $21 $FE $FD
    sbc d                                         ; $4E7A: $9A

jr_01C_4E7B:
    ld d, l                                       ; $4E7B: $55
    ld b, d                                       ; $4E7C: $42
    sbc e                                         ; $4E7D: $9B
    jr z, jr_01C_4EC3                             ; $4E7E: $28 $43

    sbc a                                         ; $4E80: $9F
    ld b, c                                       ; $4E81: $41

jr_01C_4E82:
    ld l, [hl]                                    ; $4E82: $6E
    ld a, c                                       ; $4E83: $79
    ld [hl], a                                    ; $4E84: $77
    ld h, c                                       ; $4E85: $61
    ld a, c                                       ; $4E86: $79
    ld [hl], e                                    ; $4E87: $73
    inc l                                         ; $4E88: $2C
    jr nz, jr_01C_4ED4                            ; $4E89: $20 $49

    daa                                           ; $4E8B: $27
    ld l, h                                       ; $4E8C: $6C
    ld l, h                                       ; $4E8D: $6C
    rst $38                                       ; $4E8E: $FF
    ld [hl], h                                    ; $4E8F: $74
    ld h, c                                       ; $4E90: $61

jr_01C_4E91:
    ld l, e                                       ; $4E91: $6B

jr_01C_4E92:
    ld h, l                                       ; $4E92: $65
    jr nz, jr_01C_4F0E                            ; $4E93: $20 $79

    ld h, l                                       ; $4E95: $65

jr_01C_4E96:
    jr nz, jr_01C_4EFA                            ; $4E96: $20 $62

    ld h, c                                       ; $4E98: $61
    ld h, e                                       ; $4E99: $63
    ld l, e                                       ; $4E9A: $6B
    jr nz, jr_01C_4F11                            ; $4E9B: $20 $74

    ld h, l                                       ; $4E9D: $65
    cp $4F                                        ; $4E9E: $FE $4F
    ld [hl], e                                    ; $4EA0: $73
    ld h, e                                       ; $4EA1: $63
    ld h, l                                       ; $4EA2: $65
    ld l, [hl]                                    ; $4EA3: $6E
    ld [hl], h                                    ; $4EA4: $74
    jr nz, jr_01C_4EF4                            ; $4EA5: $20 $4D

jr_01C_4EA7:
    ld h, c                                       ; $4EA7: $61
    ld [hl], d                                    ; $4EA8: $72
    ld [hl], d                                    ; $4EA9: $72
    ld [hl], d                                    ; $4EAA: $72
    ld [hl], d                                    ; $4EAB: $72
    ld [hl], d                                    ; $4EAC: $72
    ld hl, $FDFE                                  ; $4EAD: $21 $FE $FD
    sbc e                                         ; $4EB0: $9B
    ld a, b                                       ; $4EB1: $78
    ld [hl], b                                    ; $4EB2: $70
    sbc a                                         ; $4EB3: $9F
    ld c, a                                       ; $4EB4: $4F
    ld [hl], e                                    ; $4EB5: $73
    ld h, e                                       ; $4EB6: $63
    ld h, l                                       ; $4EB7: $65
    ld l, [hl]                                    ; $4EB8: $6E
    ld [hl], h                                    ; $4EB9: $74
    jr nz, jr_01C_4F09                            ; $4EBA: $20 $4D

    ld h, c                                       ; $4EBC: $61
    ld [hl], d                                    ; $4EBD: $72
    ld [hl], d                                    ; $4EBE: $72
    ld [hl], d                                    ; $4EBF: $72

jr_01C_4EC0:
    ld [hl], d                                    ; $4EC0: $72
    ld [hl], d                                    ; $4EC1: $72
    ccf                                           ; $4EC2: $3F

jr_01C_4EC3:
    cp $FD                                        ; $4EC3: $FE $FD
    sbc e                                         ; $4EC5: $9B
    jr z, jr_01C_4F0B                             ; $4EC6: $28 $43

    sbc a                                         ; $4EC8: $9F
    ld b, c                                       ; $4EC9: $41
    ld [hl], d                                    ; $4ECA: $72

jr_01C_4ECB:
    ld [hl], d                                    ; $4ECB: $72
    inc l                                         ; $4ECC: $2C
    jr nz, @+$76                                  ; $4ECD: $20 $74

jr_01C_4ECF:
    ld l, b                                       ; $4ECF: $68
    ld h, l                                       ; $4ED0: $65
    jr nz, jr_01C_4F36                            ; $4ED1: $20 $63

    ld l, c                                       ; $4ED3: $69

jr_01C_4ED4:
    ld [hl], h                                    ; $4ED4: $74
    ld a, c                                       ; $4ED5: $79
    jr nz, jr_01C_4F21                            ; $4ED6: $20 $49

    rst $38                                       ; $4ED8: $FF
    ld l, b                                       ; $4ED9: $68
    ld h, c                                       ; $4EDA: $61
    ld l, c                                       ; $4EDB: $69
    ld l, h                                       ; $4EDC: $6C
    jr nz, jr_01C_4F45                            ; $4EDD: $20 $66

    ld [hl], d                                    ; $4EDF: $72
    ld l, a                                       ; $4EE0: $6F
    ld l, l                                       ; $4EE1: $6D
    ld l, $20                                     ; $4EE2: $2E $20
    ld c, a                                       ; $4EE4: $4F
    ld l, b                                       ; $4EE5: $68
    cp $79                                        ; $4EE6: $FE $79
    ld h, l                                       ; $4EE8: $65
    ld h, c                                       ; $4EE9: $61
    ld l, b                                       ; $4EEA: $68
    inc l                                         ; $4EEB: $2C
    jr nz, jr_01C_4F4F                            ; $4EEC: $20 $61

    ld l, [hl]                                    ; $4EEE: $6E
    ld h, h                                       ; $4EEF: $64
    rst $38                                       ; $4EF0: $FF
    ld [hl], h                                    ; $4EF1: $74
    ld l, b                                       ; $4EF2: $68
    ld h, c                                       ; $4EF3: $61

jr_01C_4EF4:
    ld [hl], d                                    ; $4EF4: $72
    daa                                           ; $4EF5: $27
    ld [hl], e                                    ; $4EF6: $73
    cp $73                                        ; $4EF7: $FE $73
    ld l, a                                       ; $4EF9: $6F

jr_01C_4EFA:
    ld l, l                                       ; $4EFA: $6D
    ld h, l                                       ; $4EFB: $65
    ld [hl], h                                    ; $4EFC: $74
    ld l, b                                       ; $4EFD: $68
    ld l, c                                       ; $4EFE: $69
    ld l, [hl]                                    ; $4EFF: $6E
    daa                                           ; $4F00: $27
    jr nz, jr_01C_4F68                            ; $4F01: $20 $65

    ld l, h                                       ; $4F03: $6C
    ld [hl], e                                    ; $4F04: $73
    ld h, l                                       ; $4F05: $65
    rst $38                                       ; $4F06: $FF
    ld a, c                                       ; $4F07: $79
    ld h, l                                       ; $4F08: $65

jr_01C_4F09:
    jr nz, jr_01C_4F7A                            ; $4F09: $20 $6F

jr_01C_4F0B:
    ld [hl], l                                    ; $4F0B: $75
    ld h, a                                       ; $4F0C: $67
    ld l, b                                       ; $4F0D: $68

jr_01C_4F0E:
    ld [hl], h                                    ; $4F0E: $74
    jr nz, @+$76                                  ; $4F0F: $20 $74

jr_01C_4F11:
    ld h, l                                       ; $4F11: $65
    jr nz, jr_01C_4F76                            ; $4F12: $20 $62

    ld h, l                                       ; $4F14: $65
    cp $73                                        ; $4F15: $FE $73
    ld h, l                                       ; $4F17: $65
    ld h, l                                       ; $4F18: $65
    ld l, c                                       ; $4F19: $69
    ld l, [hl]                                    ; $4F1A: $6E
    daa                                           ; $4F1B: $27
    ld l, $20                                     ; $4F1C: $2E $20
    ld c, d                                       ; $4F1E: $4A
    ld [hl], l                                    ; $4F1F: $75
    ld [hl], e                                    ; $4F20: $73

jr_01C_4F21:
    ld [hl], h                                    ; $4F21: $74
    rst $38                                       ; $4F22: $FF
    ld h, [hl]                                    ; $4F23: $66
    ld l, a                                       ; $4F24: $6F
    ld l, h                                       ; $4F25: $6C
    ld l, h                                       ; $4F26: $6C
    ld l, a                                       ; $4F27: $6F
    ld [hl], a                                    ; $4F28: $77
    jr nz, @+$6F                                  ; $4F29: $20 $6D

    ld h, l                                       ; $4F2B: $65
    inc l                                         ; $4F2C: $2C
    cp $54                                        ; $4F2D: $FE $54
    ld l, a                                       ; $4F2F: $6F
    ld l, [hl]                                    ; $4F30: $6E
    ld h, l                                       ; $4F31: $65
    ld a, c                                       ; $4F32: $79
    ld hl, $5420                                  ; $4F33: $21 $20 $54

jr_01C_4F36:
    ld l, b                                       ; $4F36: $68
    ld h, l                                       ; $4F37: $65
    jr nz, jr_01C_4F9C                            ; $4F38: $20 $62

    ld h, l                                       ; $4F3A: $65
    ld l, h                                       ; $4F3B: $6C
    ld [hl], h                                    ; $4F3C: $74
    rst $38                                       ; $4F3D: $FF
    ld [hl], a                                    ; $4F3E: $77
    ld l, c                                       ; $4F3F: $69
    ld l, h                                       ; $4F40: $6C
    ld l, h                                       ; $4F41: $6C
    jr nz, jr_01C_4FB0                            ; $4F42: $20 $6C

    ld h, l                                       ; $4F44: $65

jr_01C_4F45:
    ld [hl], h                                    ; $4F45: $74
    jr nz, @+$67                                  ; $4F46: $20 $65

    halt                                          ; $4F48: $76
    ld h, l                                       ; $4F49: $65
    ld l, [hl]                                    ; $4F4A: $6E
    cp $79                                        ; $4F4B: $FE $79
    ld h, l                                       ; $4F4D: $65
    ld [hl], d                                    ; $4F4E: $72

jr_01C_4F4F:
    jr nz, jr_01C_4FBD                            ; $4F4F: $20 $6C

    ld h, c                                       ; $4F51: $61
    ld l, [hl]                                    ; $4F52: $6E
    ld h, h                                       ; $4F53: $64
    ld l, h                                       ; $4F54: $6C
    ld [hl], l                                    ; $4F55: $75
    ld h, d                                       ; $4F56: $62
    ld h, d                                       ; $4F57: $62
    ld h, l                                       ; $4F58: $65
    ld [hl], d                                    ; $4F59: $72
    rst $38                                       ; $4F5A: $FF
    ld h, a                                       ; $4F5B: $67
    ld l, c                                       ; $4F5C: $69
    ld l, h                                       ; $4F5D: $6C
    ld l, h                                       ; $4F5E: $6C
    ld [hl], e                                    ; $4F5F: $73
    jr nz, jr_01C_4FC4                            ; $4F60: $20 $62

    ld [hl], d                                    ; $4F62: $72
    ld h, l                                       ; $4F63: $65
    ld h, c                                       ; $4F64: $61
    ld [hl], h                                    ; $4F65: $74
    ld l, b                                       ; $4F66: $68
    ld h, l                                       ; $4F67: $65

jr_01C_4F68:
    cp $75                                        ; $4F68: $FE $75
    ld l, [hl]                                    ; $4F6A: $6E
    ld h, h                                       ; $4F6B: $64
    ld h, l                                       ; $4F6C: $65
    ld [hl], d                                    ; $4F6D: $72
    ld [hl], a                                    ; $4F6E: $77
    ld h, c                                       ; $4F6F: $61
    ld [hl], h                                    ; $4F70: $74
    ld h, l                                       ; $4F71: $65
    ld [hl], d                                    ; $4F72: $72
    ld l, $FE                                     ; $4F73: $2E $FE
    db $FD                                        ; $4F75: $FD

jr_01C_4F76:
    sbc d                                         ; $4F76: $9A
    ld d, l                                       ; $4F77: $55
    ld b, d                                       ; $4F78: $42
    sbc e                                         ; $4F79: $9B

jr_01C_4F7A:
    ld a, b                                       ; $4F7A: $78
    ld [hl], b                                    ; $4F7B: $70
    sbc a                                         ; $4F7C: $9F
    ld d, a                                       ; $4F7D: $57
    ld h, l                                       ; $4F7E: $65
    ld l, h                                       ; $4F7F: $6C
    ld l, h                                       ; $4F80: $6C
    inc l                                         ; $4F81: $2C
    jr nz, @+$4B                                  ; $4F82: $20 $49

    jr nz, jr_01C_4FED                            ; $4F84: $20 $67

    ld [hl], l                                    ; $4F86: $75
    ld h, l                                       ; $4F87: $65
    ld [hl], e                                    ; $4F88: $73
    ld [hl], e                                    ; $4F89: $73
    rst $38                                       ; $4F8A: $FF
    ld c, c                                       ; $4F8B: $49
    daa                                           ; $4F8C: $27
    ld l, h                                       ; $4F8D: $6C
    ld l, h                                       ; $4F8E: $6C
    jr nz, jr_01C_5004                            ; $4F8F: $20 $73

    ld h, l                                       ; $4F91: $65
    ld h, l                                       ; $4F92: $65
    jr nz, jr_01C_4FFD                            ; $4F93: $20 $68

    ld l, a                                       ; $4F95: $6F
    ld [hl], a                                    ; $4F96: $77
    cp $77                                        ; $4F97: $FE $77
    ld h, l                                       ; $4F99: $65
    ld l, h                                       ; $4F9A: $6C
    ld l, h                                       ; $4F9B: $6C

jr_01C_4F9C:
    jr nz, jr_01C_5012                            ; $4F9C: $20 $74

    ld l, b                                       ; $4F9E: $68
    ld l, c                                       ; $4F9F: $69
    ld [hl], e                                    ; $4FA0: $73
    jr nz, @+$64                                  ; $4FA1: $20 $62

    ld h, l                                       ; $4FA3: $65
    ld l, h                                       ; $4FA4: $6C
    ld [hl], h                                    ; $4FA5: $74
    rst $38                                       ; $4FA6: $FF
    ld [hl], a                                    ; $4FA7: $77
    ld l, a                                       ; $4FA8: $6F
    ld [hl], d                                    ; $4FA9: $72
    ld l, e                                       ; $4FAA: $6B
    ld [hl], e                                    ; $4FAB: $73
    ld l, $2E                                     ; $4FAC: $2E $2E
    ld l, $2E                                     ; $4FAE: $2E $2E

jr_01C_4FB0:
    cp $FD                                        ; $4FB0: $FE $FD
    sbc d                                         ; $4FB2: $9A
    ld d, l                                       ; $4FB3: $55
    ld b, d                                       ; $4FB4: $42
    ld [bc], a                                    ; $4FB5: $02
    ld b, $08                                     ; $4FB6: $06 $08
    ld c, $11                                     ; $4FB8: $0E $11
    ld b, l                                       ; $4FBA: $45
    ld [hl+], a                                   ; $4FBB: $22
    ld e, [hl]                                    ; $4FBC: $5E

jr_01C_4FBD:
    ld e, c                                       ; $4FBD: $59
    sbc e                                         ; $4FBE: $9B
    ld a, b                                       ; $4FBF: $78
    ld [hl], b                                    ; $4FC0: $70
    sbc a                                         ; $4FC1: $9F
    ld b, e                                       ; $4FC2: $43
    ld l, a                                       ; $4FC3: $6F

jr_01C_4FC4:
    ld l, l                                       ; $4FC4: $6D
    ld h, [hl]                                    ; $4FC5: $66
    ld a, c                                       ; $4FC6: $79
    ld l, $FE                                     ; $4FC7: $2E $FE
    ld b, [hl]                                    ; $4FC9: $46
    ld l, a                                       ; $4FCA: $6F
    ld [hl], d                                    ; $4FCB: $72
    jr nz, jr_01C_5034                            ; $4FCC: $20 $66

    ld [hl], l                                    ; $4FCE: $75
    ld l, [hl]                                    ; $4FCF: $6E
    ld h, a                                       ; $4FD0: $67
    ld [hl], l                                    ; $4FD1: $75
    ld [hl], e                                    ; $4FD2: $73
    ld l, $FE                                     ; $4FD3: $2E $FE
    db $FD                                        ; $4FD5: $FD
    sbc d                                         ; $4FD6: $9A
    ld b, d                                       ; $4FD7: $42
    sbc a                                         ; $4FD8: $9F
    ld d, e                                       ; $4FD9: $53
    ld [hl], l                                    ; $4FDA: $75
    ld h, d                                       ; $4FDB: $62
    ld [hl], h                                    ; $4FDC: $74
    ld h, l                                       ; $4FDD: $65
    ld [hl], d                                    ; $4FDE: $72
    ld [hl], d                                    ; $4FDF: $72
    ld h, c                                       ; $4FE0: $61
    ld l, [hl]                                    ; $4FE1: $6E
    ld h, l                                       ; $4FE2: $65
    ld h, c                                       ; $4FE3: $61
    ld l, [hl]                                    ; $4FE4: $6E
    rst $38                                       ; $4FE5: $FF
    ld c, b                                       ; $4FE6: $48
    ld l, a                                       ; $4FE7: $6F
    ld [hl], l                                    ; $4FE8: $75
    ld [hl], e                                    ; $4FE9: $73
    ld h, l                                       ; $4FEA: $65
    ld l, e                                       ; $4FEB: $6B
    ld h, l                                       ; $4FEC: $65

jr_01C_4FED:
    ld h, l                                       ; $4FED: $65
    ld [hl], b                                    ; $4FEE: $70
    ld l, c                                       ; $4FEF: $69
    ld l, [hl]                                    ; $4FF0: $6E
    ld h, a                                       ; $4FF1: $67
    ld a, [hl-]                                   ; $4FF2: $3A
    cp $48                                        ; $4FF3: $FE $48
    ld l, a                                       ; $4FF5: $6F
    ld [hl], a                                    ; $4FF6: $77
    jr nz, jr_01C_506D                            ; $4FF7: $20 $74

    ld l, a                                       ; $4FF9: $6F
    jr nz, jr_01C_5067                            ; $4FFA: $20 $6B

    ld h, l                                       ; $4FFC: $65

jr_01C_4FFD:
    ld h, l                                       ; $4FFD: $65
    ld [hl], b                                    ; $4FFE: $70
    rst $38                                       ; $4FFF: $FF
    ld a, c                                       ; $5000: $79
    ld l, a                                       ; $5001: $6F
    ld [hl], l                                    ; $5002: $75
    ld [hl], d                                    ; $5003: $72

jr_01C_5004:
    jr nz, jr_01C_506E                            ; $5004: $20 $68

    ld l, a                                       ; $5006: $6F
    ld l, l                                       ; $5007: $6D
    ld h, l                                       ; $5008: $65
    jr nz, jr_01C_5071                            ; $5009: $20 $66

    ld [hl], d                                    ; $500B: $72
    ld h, l                                       ; $500C: $65
    ld [hl], e                                    ; $500D: $73
    ld l, b                                       ; $500E: $68
    cp $61                                        ; $500F: $FE $61
    ld l, [hl]                                    ; $5011: $6E

jr_01C_5012:
    ld h, h                                       ; $5012: $64
    jr nz, jr_01C_507F                            ; $5013: $20 $6A

    ld [hl], l                                    ; $5015: $75
    ld l, c                                       ; $5016: $69
    ld h, e                                       ; $5017: $63
    ld a, c                                       ; $5018: $79
    ld l, $FE                                     ; $5019: $2E $FE
    db $FD                                        ; $501B: $FD
    sbc d                                         ; $501C: $9A
    ld b, d                                       ; $501D: $42
    sbc e                                         ; $501E: $9B
    ld a, b                                       ; $501F: $78
    ld [hl], b                                    ; $5020: $70
    sbc a                                         ; $5021: $9F
    ld c, l                                       ; $5022: $4D
    ld l, a                                       ; $5023: $6F
    ld [hl], d                                    ; $5024: $72
    ld h, l                                       ; $5025: $65
    jr nz, jr_01C_5095                            ; $5026: $20 $6D

    ld [hl], l                                    ; $5028: $75
    ld [hl], e                                    ; $5029: $73
    ld l, b                                       ; $502A: $68
    ld [hl], d                                    ; $502B: $72
    ld l, a                                       ; $502C: $6F
    ld l, a                                       ; $502D: $6F
    ld l, l                                       ; $502E: $6D
    ld [hl], e                                    ; $502F: $73
    ld l, $FE                                     ; $5030: $2E $FE
    ld d, a                                       ; $5032: $57
    ld l, b                                       ; $5033: $68

jr_01C_5034:
    ld l, a                                       ; $5034: $6F
    jr nz, jr_01C_50AE                            ; $5035: $20 $77

    ld l, a                                       ; $5037: $6F
    ld [hl], l                                    ; $5038: $75
    ld l, h                                       ; $5039: $6C
    ld h, h                                       ; $503A: $64
    daa                                           ; $503B: $27
    halt                                          ; $503C: $76
    ld h, l                                       ; $503D: $65
    rst $38                                       ; $503E: $FF
    ld h, a                                       ; $503F: $67
    ld [hl], l                                    ; $5040: $75
    ld h, l                                       ; $5041: $65
    ld [hl], e                                    ; $5042: $73
    ld [hl], e                                    ; $5043: $73
    ld h, l                                       ; $5044: $65
    ld h, h                                       ; $5045: $64
    ccf                                           ; $5046: $3F
    cp $FD                                        ; $5047: $FE $FD
    sbc d                                         ; $5049: $9A
    ld b, d                                       ; $504A: $42
    sbc e                                         ; $504B: $9B
    ld a, b                                       ; $504C: $78
    ld [hl], b                                    ; $504D: $70
    sbc a                                         ; $504E: $9F
    ld d, h                                       ; $504F: $54
    ld l, b                                       ; $5050: $68
    ld h, l                                       ; $5051: $65
    ld [hl], e                                    ; $5052: $73
    ld h, l                                       ; $5053: $65
    jr nz, jr_01C_50CA                            ; $5054: $20 $74

    ld l, b                                       ; $5056: $68
    ld l, c                                       ; $5057: $69
    ld l, [hl]                                    ; $5058: $6E
    ld h, a                                       ; $5059: $67
    ld [hl], e                                    ; $505A: $73
    rst $38                                       ; $505B: $FF
    ld h, c                                       ; $505C: $61
    ld [hl], d                                    ; $505D: $72
    ld h, l                                       ; $505E: $65
    jr nz, jr_01C_50C6                            ; $505F: $20 $65

    halt                                          ; $5061: $76
    ld h, l                                       ; $5062: $65
    ld [hl], d                                    ; $5063: $72
    ld a, c                                       ; $5064: $79
    ld [hl], a                                    ; $5065: $77
    ld l, b                                       ; $5066: $68

jr_01C_5067:
    ld h, l                                       ; $5067: $65
    ld [hl], d                                    ; $5068: $72
    ld h, l                                       ; $5069: $65
    ld l, $FE                                     ; $506A: $2E $FE
    ld e, c                                       ; $506C: $59

jr_01C_506D:
    ld l, a                                       ; $506D: $6F

jr_01C_506E:
    ld [hl], l                                    ; $506E: $75
    daa                                           ; $506F: $27
    ld h, h                                       ; $5070: $64

jr_01C_5071:
    jr nz, jr_01C_50E7                            ; $5071: $20 $74

    ld l, b                                       ; $5073: $68
    ld l, c                                       ; $5074: $69
    ld l, [hl]                                    ; $5075: $6E
    ld l, e                                       ; $5076: $6B
    rst $38                                       ; $5077: $FF
    ld [hl], h                                    ; $5078: $74
    ld l, b                                       ; $5079: $68
    ld h, l                                       ; $507A: $65
    ld a, c                                       ; $507B: $79
    jr nz, jr_01C_50F5                            ; $507C: $20 $77

    ld h, l                                       ; $507E: $65

jr_01C_507F:
    ld [hl], d                                    ; $507F: $72
    ld h, l                                       ; $5080: $65
    jr nz, jr_01C_50F3                            ; $5081: $20 $70

    ld h, l                                       ; $5083: $65
    ld [hl], h                                    ; $5084: $74
    ld [hl], e                                    ; $5085: $73
    ld l, $FE                                     ; $5086: $2E $FE
    db $FD                                        ; $5088: $FD
    sbc d                                         ; $5089: $9A
    ld b, d                                       ; $508A: $42
    sbc e                                         ; $508B: $9B
    ld a, b                                       ; $508C: $78
    ld [hl], b                                    ; $508D: $70
    sbc a                                         ; $508E: $9F
    ld d, e                                       ; $508F: $53
    ld [hl], c                                    ; $5090: $71
    ld [hl], l                                    ; $5091: $75
    ld l, a                                       ; $5092: $6F
    ld l, a                                       ; $5093: $6F
    ld [hl], e                                    ; $5094: $73

jr_01C_5095:
    ld l, b                                       ; $5095: $68
    ld a, c                                       ; $5096: $79
    ld hl, $FDFE                                  ; $5097: $21 $FE $FD
    sbc d                                         ; $509A: $9A
    ld b, d                                       ; $509B: $42
    ld b, e                                       ; $509C: $43
    rrca                                          ; $509D: $0F
    inc b                                         ; $509E: $04
    dec b                                         ; $509F: $05
    add hl, bc                                    ; $50A0: $09
    inc e                                         ; $50A1: $1C
    ret c                                         ; $50A2: $D8

    ld d, b                                       ; $50A3: $50
    sbc e                                         ; $50A4: $9B
    add hl, de                                    ; $50A5: $19
    ld c, [hl]                                    ; $50A6: $4E
    sbc a                                         ; $50A7: $9F
    ld c, h                                       ; $50A8: $4C
    ld l, a                                       ; $50A9: $6F
    ld l, a                                       ; $50AA: $6F
    ld l, e                                       ; $50AB: $6B
    jr nz, jr_01C_510F                            ; $50AC: $20 $61

jr_01C_50AE:
    ld [hl], h                                    ; $50AE: $74
    jr nz, jr_01C_5125                            ; $50AF: $20 $74

    ld l, b                                       ; $50B1: $68
    ld h, l                                       ; $50B2: $65
    rst $38                                       ; $50B3: $FF
    ld h, h                                       ; $50B4: $64
    ld h, c                                       ; $50B5: $61
    ld l, l                                       ; $50B6: $6D
    ld h, c                                       ; $50B7: $61
    ld h, a                                       ; $50B8: $67
    ld h, l                                       ; $50B9: $65
    jr nz, jr_01C_5130                            ; $50BA: $20 $74

    ld l, b                                       ; $50BC: $68
    ld h, l                                       ; $50BD: $65
    cp $74                                        ; $50BE: $FE $74
    ld l, a                                       ; $50C0: $6F
    ld [hl], a                                    ; $50C1: $77
    ld l, [hl]                                    ; $50C2: $6E
    jr nz, jr_01C_512D                            ; $50C3: $20 $68

    ld h, c                                       ; $50C5: $61

jr_01C_50C6:
    ld [hl], e                                    ; $50C6: $73
    rst $38                                       ; $50C7: $FF
    ld [hl], e                                    ; $50C8: $73
    ld [hl], l                                    ; $50C9: $75

jr_01C_50CA:
    ld h, [hl]                                    ; $50CA: $66
    ld h, [hl]                                    ; $50CB: $66

jr_01C_50CC:
    ld h, l                                       ; $50CC: $65
    ld [hl], d                                    ; $50CD: $72
    ld h, l                                       ; $50CE: $65
    ld h, h                                       ; $50CF: $64
    ld l, $2E                                     ; $50D0: $2E $2E
    ld l, $2E                                     ; $50D2: $2E $2E
    cp $FD                                        ; $50D4: $FE $FD
    sbc d                                         ; $50D6: $9A
    ld [de], a                                    ; $50D7: $12
    sbc e                                         ; $50D8: $9B
    add hl, de                                    ; $50D9: $19
    ld c, [hl]                                    ; $50DA: $4E
    sbc a                                         ; $50DB: $9F
    ld d, h                                       ; $50DC: $54
    ld l, b                                       ; $50DD: $68
    ld h, l                                       ; $50DE: $65
    jr nz, jr_01C_5151                            ; $50DF: $20 $70

    ld l, a                                       ; $50E1: $6F
    ld l, a                                       ; $50E2: $6F
    ld [hl], d                                    ; $50E3: $72
    rst $38                                       ; $50E4: $FF
    ld l, l                                       ; $50E5: $6D
    ld [hl], l                                    ; $50E6: $75

jr_01C_50E7:
    ld [hl], e                                    ; $50E7: $73
    ld l, b                                       ; $50E8: $68
    ld [hl], d                                    ; $50E9: $72
    ld l, a                                       ; $50EA: $6F
    ld l, a                                       ; $50EB: $6F
    ld l, l                                       ; $50EC: $6D
    ld [hl], e                                    ; $50ED: $73
    ld hl, $FDFE                                  ; $50EE: $21 $FE $FD
    sbc d                                         ; $50F1: $9A
    ld [de], a                                    ; $50F2: $12

jr_01C_50F3:
    sub e                                         ; $50F3: $93
    ld h, l                                       ; $50F4: $65

jr_01C_50F5:
    ld [hl], h                                    ; $50F5: $74
    ld b, h                                       ; $50F6: $44
    ld c, a                                       ; $50F7: $4F
    ld h, h                                       ; $50F8: $64
    ld l, h                                       ; $50F9: $6C
    ld b, l                                       ; $50FA: $45
    ld l, c                                       ; $50FB: $69
    ld [hl], c                                    ; $50FC: $71
    ld b, l                                       ; $50FD: $45
    ld h, [hl]                                    ; $50FE: $66
    ret nz                                        ; $50FF: $C0

    ld e, h                                       ; $5100: $5C
    ld hl, $0005                                  ; $5101: $21 $05 $00
    add c                                         ; $5104: $81
    ld e, l                                       ; $5105: $5D
    dec b                                         ; $5106: $05
    dec b                                         ; $5107: $05
    ld d, b                                       ; $5108: $50
    ret nc                                        ; $5109: $D0

    nop                                           ; $510A: $00
    jr nz, jr_01C_50CC                            ; $510B: $20 $BF

    ld d, b                                       ; $510D: $50
    ld [hl+], a                                   ; $510E: $22

jr_01C_510F:
    dec b                                         ; $510F: $05
    ld b, b                                       ; $5110: $40
    dec b                                         ; $5111: $05

jr_01C_5112:
    ld [bc], a                                    ; $5112: $02
    db $ED                                        ; $5113: $ED
    ld h, e                                       ; $5114: $63
    rlca                                          ; $5115: $07
    ld b, $61                                     ; $5116: $06 $61
    ret nc                                        ; $5118: $D0

    nop                                           ; $5119: $00
    ld de, $4796                                  ; $511A: $11 $96 $47
    inc e                                         ; $511D: $1C
    ld a, [hl-]                                   ; $511E: $3A
    ld d, c                                       ; $511F: $51
    dec bc                                        ; $5120: $0B

jr_01C_5121:
    nop                                           ; $5121: $00
    ld b, e                                       ; $5122: $43
    inc de                                        ; $5123: $13
    inc b                                         ; $5124: $04

jr_01C_5125:
    dec b                                         ; $5125: $05
    ld [$2C1C], sp                                ; $5126: $08 $1C $2C
    ld d, c                                       ; $5129: $51
    dec bc                                        ; $512A: $0B
    ld [bc], a                                    ; $512B: $02
    ld l, e                                       ; $512C: $6B

jr_01C_512D:
    dec hl                                        ; $512D: $2B
    dec bc                                        ; $512E: $0B
    ret nc                                        ; $512F: $D0

jr_01C_5130:
    ld c, c                                       ; $5130: $49
    nop                                           ; $5131: $00
    add b                                         ; $5132: $80
    nop                                           ; $5133: $00
    nop                                           ; $5134: $00
    add d                                         ; $5135: $82
    rra                                           ; $5136: $1F
    dec d                                         ; $5137: $15
    sub h                                         ; $5138: $94
    ld b, d                                       ; $5139: $42
    ld e, e                                       ; $513A: $5B
    inc e                                         ; $513B: $1C
    sbc h                                         ; $513C: $9C
    ld d, b                                       ; $513D: $50
    ld b, l                                       ; $513E: $45
    ld de, $47DC                                  ; $513F: $11 $DC $47
    ld [bc], a                                    ; $5142: $02
    ld [$1316], sp                                ; $5143: $08 $16 $13
    db $10                                        ; $5146: $10
    ld b, l                                       ; $5147: $45
    ld [hl+], a                                   ; $5148: $22
    ld e, [hl]                                    ; $5149: $5E
    ld e, c                                       ; $514A: $59
    rlca                                          ; $514B: $07
    nop                                           ; $514C: $00
    ld l, e                                       ; $514D: $6B
    ld c, d                                       ; $514E: $4A
    add hl, bc                                    ; $514F: $09
    nop                                           ; $5150: $00

jr_01C_5151:
    jr nz, jr_01C_5112                            ; $5151: $20 $BF

    ld d, b                                       ; $5153: $50
    ld e, e                                       ; $5154: $5B
    inc e                                         ; $5155: $1C
    sbc h                                         ; $5156: $9C
    ld d, d                                       ; $5157: $52
    ld h, d                                       ; $5158: $62
    ld bc, $0007                                  ; $5159: $01 $07 $00
    add c                                         ; $515C: $81
    ld e, l                                       ; $515D: $5D
    add hl, bc                                    ; $515E: $09
    nop                                           ; $515F: $00
    jr nz, jr_01C_5121                            ; $5160: $20 $BF

    ld d, b                                       ; $5162: $50
    ld b, d                                       ; $5163: $42
    sbc a                                         ; $5164: $9F
    ld d, h                                       ; $5165: $54
    ld l, b                                       ; $5166: $68
    ld [hl], d                                    ; $5167: $72
    ld l, a                                       ; $5168: $6F
    ld [hl], l                                    ; $5169: $75
    ld h, a                                       ; $516A: $67
    ld l, b                                       ; $516B: $68
    jr nz, @+$76                                  ; $516C: $20 $74

    ld l, b                                       ; $516E: $68
    ld h, l                                       ; $516F: $65
    rst $38                                       ; $5170: $FF
    ld b, h                                       ; $5171: $44
    ld h, c                                       ; $5172: $61
    ld [hl], d                                    ; $5173: $72
    ld l, e                                       ; $5174: $6B
    ld l, [hl]                                    ; $5175: $6E
    ld h, l                                       ; $5176: $65
    ld [hl], e                                    ; $5177: $73
    ld [hl], e                                    ; $5178: $73
    ld a, [hl-]                                   ; $5179: $3A
    cp $41                                        ; $517A: $FE $41
    jr nz, jr_01C_51E5                            ; $517C: $20 $67

    ld [hl], l                                    ; $517E: $75
    ld l, c                                       ; $517F: $69
    ld h, h                                       ; $5180: $64
    ld h, l                                       ; $5181: $65
    jr nz, jr_01C_51EA                            ; $5182: $20 $66

    ld l, a                                       ; $5184: $6F
    ld [hl], d                                    ; $5185: $72
    rst $38                                       ; $5186: $FF
    ld [hl], h                                    ; $5187: $74
    ld l, a                                       ; $5188: $6F
    ld [hl], l                                    ; $5189: $75
    ld [hl], d                                    ; $518A: $72
    ld l, c                                       ; $518B: $69
    ld [hl], e                                    ; $518C: $73
    ld [hl], h                                    ; $518D: $74
    ld [hl], e                                    ; $518E: $73
    ld l, $FE                                     ; $518F: $2E $FE
    db $FD                                        ; $5191: $FD
    sbc d                                         ; $5192: $9A
    ld b, d                                       ; $5193: $42
    sbc a                                         ; $5194: $9F
    ld c, c                                       ; $5195: $49
    ld l, [hl]                                    ; $5196: $6E
    ld l, [hl]                                    ; $5197: $6E
    ld l, e                                       ; $5198: $6B
    ld h, l                                       ; $5199: $65
    ld h, l                                       ; $519A: $65
    ld [hl], b                                    ; $519B: $70
    ld h, l                                       ; $519C: $65
    ld [hl], d                                    ; $519D: $72
    daa                                           ; $519E: $27
    ld [hl], e                                    ; $519F: $73
    rst $38                                       ; $51A0: $FF
    ld c, l                                       ; $51A1: $4D
    ld l, a                                       ; $51A2: $6F
    ld l, [hl]                                    ; $51A3: $6E
    ld [hl], h                                    ; $51A4: $74
    ld l, b                                       ; $51A5: $68
    ld l, h                                       ; $51A6: $6C
    ld a, c                                       ; $51A7: $79
    ld l, $FE                                     ; $51A8: $2E $FE
    ld d, h                                       ; $51AA: $54
    ld l, b                                       ; $51AB: $68
    ld l, c                                       ; $51AC: $69
    ld [hl], e                                    ; $51AD: $73
    jr nz, jr_01C_521D                            ; $51AE: $20 $6D

    ld l, a                                       ; $51B0: $6F
    ld l, [hl]                                    ; $51B1: $6E
    ld [hl], h                                    ; $51B2: $74
    ld l, b                                       ; $51B3: $68
    ld a, [hl-]                                   ; $51B4: $3A
    cp $4D                                        ; $51B5: $FE $4D
    ld h, c                                       ; $51B7: $61
    ld l, e                                       ; $51B8: $6B
    ld l, c                                       ; $51B9: $69
    ld l, [hl]                                    ; $51BA: $6E
    ld h, a                                       ; $51BB: $67
    jr nz, jr_01C_5232                            ; $51BC: $20 $74

    ld l, b                                       ; $51BE: $68
    ld h, l                                       ; $51BF: $65
    jr nz, jr_01C_522F                            ; $51C0: $20 $6D

    ld l, a                                       ; $51C2: $6F
    ld [hl], e                                    ; $51C3: $73
    ld [hl], h                                    ; $51C4: $74
    rst $38                                       ; $51C5: $FF
    ld l, a                                       ; $51C6: $6F
    ld [hl], l                                    ; $51C7: $75
    ld [hl], h                                    ; $51C8: $74
    jr nz, jr_01C_523A                            ; $51C9: $20 $6F

    ld h, [hl]                                    ; $51CB: $66
    jr nz, jr_01C_5247                            ; $51CC: $20 $79

    ld l, a                                       ; $51CE: $6F
    ld [hl], l                                    ; $51CF: $75
    ld [hl], d                                    ; $51D0: $72
    jr nz, jr_01C_5247                            ; $51D1: $20 $74

    ld [hl], a                                    ; $51D3: $77
    ld l, a                                       ; $51D4: $6F
    cp $73                                        ; $51D5: $FE $73
    ld [hl], h                                    ; $51D7: $74
    ld l, a                                       ; $51D8: $6F
    ld [hl], d                                    ; $51D9: $72
    ld a, c                                       ; $51DA: $79
    jr nz, jr_01C_5244                            ; $51DB: $20 $67

    ld l, a                                       ; $51DD: $6F
    ld [hl], l                                    ; $51DE: $75
    ld [hl], d                                    ; $51DF: $72
    ld h, h                                       ; $51E0: $64
    ld l, $FE                                     ; $51E1: $2E $FE
    db $FD                                        ; $51E3: $FD
    sbc d                                         ; $51E4: $9A

jr_01C_51E5:
    ld b, d                                       ; $51E5: $42
    sbc e                                         ; $51E6: $9B
    ld a, b                                       ; $51E7: $78
    ld [hl], b                                    ; $51E8: $70
    sbc a                                         ; $51E9: $9F

jr_01C_51EA:
    ld c, b                                       ; $51EA: $48
    ld l, l                                       ; $51EB: $6D
    ld l, l                                       ; $51EC: $6D
    ld l, l                                       ; $51ED: $6D
    ld l, $2E                                     ; $51EE: $2E $2E
    ld l, $FE                                     ; $51F0: $2E $FE
    ld c, b                                       ; $51F2: $48
    ld l, a                                       ; $51F3: $6F
    ld [hl], a                                    ; $51F4: $77
    jr nz, jr_01C_5264                            ; $51F5: $20 $6D

    ld [hl], l                                    ; $51F7: $75
    ld h, e                                       ; $51F8: $63
    ld l, b                                       ; $51F9: $68
    jr nz, jr_01C_5262                            ; $51FA: $20 $66

    ld l, h                                       ; $51FC: $6C
    ld l, a                                       ; $51FD: $6F
    ld l, a                                       ; $51FE: $6F
    ld [hl], d                                    ; $51FF: $72
    rst $38                                       ; $5200: $FF
    ld [hl], e                                    ; $5201: $73
    ld [hl], b                                    ; $5202: $70
    ld h, c                                       ; $5203: $61
    ld h, e                                       ; $5204: $63
    ld h, l                                       ; $5205: $65
    jr nz, jr_01C_526C                            ; $5206: $20 $64

    ld l, a                                       ; $5208: $6F
    jr nz, jr_01C_527F                            ; $5209: $20 $74

    ld l, b                                       ; $520B: $68
    ld h, l                                       ; $520C: $65
    ld a, c                                       ; $520D: $79
    cp $6C                                        ; $520E: $FE $6C
    ld l, a                                       ; $5210: $6F
    ld [hl], e                                    ; $5211: $73
    ld h, l                                       ; $5212: $65
    jr nz, jr_01C_5289                            ; $5213: $20 $74

    ld l, a                                       ; $5215: $6F
    rst $38                                       ; $5216: $FF
    ld h, c                                       ; $5217: $61
    ld [hl], d                                    ; $5218: $72
    ld h, d                                       ; $5219: $62
    ld l, c                                       ; $521A: $69
    ld [hl], h                                    ; $521B: $74
    ld [hl], d                                    ; $521C: $72

jr_01C_521D:
    ld h, c                                       ; $521D: $61
    ld [hl], d                                    ; $521E: $72
    ld a, c                                       ; $521F: $79
    cp $66                                        ; $5220: $FE $66
    ld [hl], l                                    ; $5222: $75
    ld l, [hl]                                    ; $5223: $6E
    ld h, a                                       ; $5224: $67
    ld [hl], l                                    ; $5225: $75
    ld [hl], e                                    ; $5226: $73
    ccf                                           ; $5227: $3F
    cp $FD                                        ; $5228: $FE $FD
    sbc d                                         ; $522A: $9A
    ld b, d                                       ; $522B: $42
    sbc e                                         ; $522C: $9B
    ld a, b                                       ; $522D: $78
    ld [hl], b                                    ; $522E: $70

jr_01C_522F:
    sbc a                                         ; $522F: $9F
    ld c, l                                       ; $5230: $4D
    ld [hl], l                                    ; $5231: $75

jr_01C_5232:
    ld [hl], e                                    ; $5232: $73
    ld l, b                                       ; $5233: $68
    ld [hl], d                                    ; $5234: $72
    ld l, a                                       ; $5235: $6F
    ld l, a                                       ; $5236: $6F
    ld l, l                                       ; $5237: $6D
    ld l, $FE                                     ; $5238: $2E $FE

jr_01C_523A:
    ld d, b                                       ; $523A: $50
    ld l, h                                       ; $523B: $6C
    ld h, c                                       ; $523C: $61
    ld l, c                                       ; $523D: $69
    ld l, [hl]                                    ; $523E: $6E
    jr nz, jr_01C_52A2                            ; $523F: $20 $61

    ld l, [hl]                                    ; $5241: $6E
    ld h, h                                       ; $5242: $64
    rst $38                                       ; $5243: $FF

jr_01C_5244:
    ld [hl], e                                    ; $5244: $73
    ld l, c                                       ; $5245: $69
    ld l, l                                       ; $5246: $6D

jr_01C_5247:
    ld [hl], b                                    ; $5247: $70
    ld l, h                                       ; $5248: $6C
    ld h, l                                       ; $5249: $65
    ld l, $FE                                     ; $524A: $2E $FE
    db $FD                                        ; $524C: $FD
    sbc d                                         ; $524D: $9A
    ld b, d                                       ; $524E: $42
    sbc e                                         ; $524F: $9B
    ld a, b                                       ; $5250: $78
    ld [hl], b                                    ; $5251: $70
    sbc a                                         ; $5252: $9F
    ld b, h                                       ; $5253: $44
    ld h, l                                       ; $5254: $65
    ld h, c                                       ; $5255: $61
    ld l, h                                       ; $5256: $6C
    ld [hl], e                                    ; $5257: $73
    ld l, $20                                     ; $5258: $2E $20
    cp $FD                                        ; $525A: $FE $FD
    sbc d                                         ; $525C: $9A
    ld b, d                                       ; $525D: $42
    sbc e                                         ; $525E: $9B
    ld a, b                                       ; $525F: $78
    ld [hl], b                                    ; $5260: $70
    sbc a                                         ; $5261: $9F

jr_01C_5262:
    ld d, a                                       ; $5262: $57
    ld l, b                                       ; $5263: $68

jr_01C_5264:
    ld l, a                                       ; $5264: $6F
    daa                                           ; $5265: $27
    ld [hl], e                                    ; $5266: $73
    jr nz, jr_01C_52DD                            ; $5267: $20 $74

    ld l, b                                       ; $5269: $68
    ld h, c                                       ; $526A: $61
    ld [hl], h                                    ; $526B: $74

jr_01C_526C:
    rst $38                                       ; $526C: $FF
    ld [hl], e                                    ; $526D: $73
    ld l, b                                       ; $526E: $68
    ld h, c                                       ; $526F: $61
    ld [hl], d                                    ; $5270: $72
    ld [hl], b                                    ; $5271: $70
    jr nz, jr_01C_52E0                            ; $5272: $20 $6C

    ld l, a                                       ; $5274: $6F
    ld l, a                                       ; $5275: $6F
    ld l, e                                       ; $5276: $6B
    ld l, c                                       ; $5277: $69
    ld l, [hl]                                    ; $5278: $6E
    ld h, a                                       ; $5279: $67
    cp $66                                        ; $527A: $FE $66
    ld h, l                                       ; $527C: $65
    ld l, h                                       ; $527D: $6C
    ld l, h                                       ; $527E: $6C

jr_01C_527F:
    ld l, a                                       ; $527F: $6F
    ld [hl], a                                    ; $5280: $77
    ccf                                           ; $5281: $3F
    cp $57                                        ; $5282: $FE $57
    ld l, b                                       ; $5284: $68
    ld a, c                                       ; $5285: $79
    inc l                                         ; $5286: $2C
    jr nz, @+$6B                                  ; $5287: $20 $69

jr_01C_5289:
    ld [hl], h                                    ; $5289: $74
    daa                                           ; $528A: $27
    ld [hl], e                                    ; $528B: $73
    rst $38                                       ; $528C: $FF
    ld d, h                                       ; $528D: $54
    ld l, a                                       ; $528E: $6F
    ld l, [hl]                                    ; $528F: $6E
    ld a, c                                       ; $5290: $79
    jr nz, jr_01C_52DD                            ; $5291: $20 $4A

    ld l, a                                       ; $5293: $6F
    ld l, [hl]                                    ; $5294: $6E
    ld h, l                                       ; $5295: $65
    ld [hl], e                                    ; $5296: $73
    ld hl, $FDFE                                  ; $5297: $21 $FE $FD
    sbc d                                         ; $529A: $9A
    ld b, d                                       ; $529B: $42
    sbc e                                         ; $529C: $9B
    ld l, b                                       ; $529D: $68
    ld h, d                                       ; $529E: $62
    sbc a                                         ; $529F: $9F
    ld d, a                                       ; $52A0: $57
    ld h, l                                       ; $52A1: $65

jr_01C_52A2:
    ld l, h                                       ; $52A2: $6C
    ld h, e                                       ; $52A3: $63
    ld l, a                                       ; $52A4: $6F
    ld l, l                                       ; $52A5: $6D
    ld h, l                                       ; $52A6: $65
    jr nz, jr_01C_531D                            ; $52A7: $20 $74

    ld l, a                                       ; $52A9: $6F
    rst $38                                       ; $52AA: $FF
    ld d, l                                       ; $52AB: $55
    ld l, [hl]                                    ; $52AC: $6E
    ld h, h                                       ; $52AD: $64
    ld h, l                                       ; $52AE: $65
    ld [hl], d                                    ; $52AF: $72
    ld l, [hl]                                    ; $52B0: $6E
    ld h, l                                       ; $52B1: $65
    ld h, c                                       ; $52B2: $61
    ld [hl], h                                    ; $52B3: $74
    ld l, b                                       ; $52B4: $68
    jr nz, jr_01C_5300                            ; $52B5: $20 $49

    ld l, [hl]                                    ; $52B7: $6E
    ld l, [hl]                                    ; $52B8: $6E
    ld l, $FE                                     ; $52B9: $2E $FE
    ld d, a                                       ; $52BB: $57
    ld l, a                                       ; $52BC: $6F
    ld [hl], l                                    ; $52BD: $75
    ld l, h                                       ; $52BE: $6C
    ld h, h                                       ; $52BF: $64
    jr nz, jr_01C_533B                            ; $52C0: $20 $79

    ld l, a                                       ; $52C2: $6F
    ld [hl], l                                    ; $52C3: $75
    jr nz, @+$6E                                  ; $52C4: $20 $6C

    ld l, c                                       ; $52C6: $69
    ld l, e                                       ; $52C7: $6B
    ld h, l                                       ; $52C8: $65
    rst $38                                       ; $52C9: $FF
    ld [hl], h                                    ; $52CA: $74
    ld l, a                                       ; $52CB: $6F
    jr nz, @+$74                                  ; $52CC: $20 $72

    ld h, l                                       ; $52CE: $65
    ld h, e                                       ; $52CF: $63
    ld l, a                                       ; $52D0: $6F
    ld [hl], d                                    ; $52D1: $72
    ld h, h                                       ; $52D2: $64
    jr nz, jr_01C_534E                            ; $52D3: $20 $79

    ld l, a                                       ; $52D5: $6F
    ld [hl], l                                    ; $52D6: $75
    ld [hl], d                                    ; $52D7: $72
    cp $6A                                        ; $52D8: $FE $6A
    ld l, a                                       ; $52DA: $6F
    ld [hl], l                                    ; $52DB: $75
    ld [hl], d                                    ; $52DC: $72

jr_01C_52DD:
    ld l, [hl]                                    ; $52DD: $6E
    ld h, l                                       ; $52DE: $65
    ld a, c                                       ; $52DF: $79

jr_01C_52E0:
    jr nz, jr_01C_5343                            ; $52E0: $20 $61

    ld l, [hl]                                    ; $52E2: $6E
    ld h, h                                       ; $52E3: $64
    rst $38                                       ; $52E4: $FF
    ld [hl], d                                    ; $52E5: $72
    ld h, l                                       ; $52E6: $65
    ld h, e                                       ; $52E7: $63
    ld l, a                                       ; $52E8: $6F
    halt                                          ; $52E9: $76
    ld h, l                                       ; $52EA: $65
    ld [hl], d                                    ; $52EB: $72
    jr nz, jr_01C_535A                            ; $52EC: $20 $6C

    ld l, a                                       ; $52EE: $6F
    ld [hl], e                                    ; $52EF: $73
    ld [hl], h                                    ; $52F0: $74
    cp $65                                        ; $52F1: $FE $65
    ld l, [hl]                                    ; $52F3: $6E
    ld h, l                                       ; $52F4: $65
    ld [hl], d                                    ; $52F5: $72
    ld h, a                                       ; $52F6: $67
    ld a, c                                       ; $52F7: $79
    ccf                                           ; $52F8: $3F
    cp $FD                                        ; $52F9: $FE $FD
    sbc c                                         ; $52FB: $99
    sbc e                                         ; $52FC: $9B
    ld a, b                                       ; $52FD: $78
    ld [hl], b                                    ; $52FE: $70
    sbc a                                         ; $52FF: $9F

jr_01C_5300:
    jr nz, jr_01C_535B                            ; $5300: $20 $59

    ld h, l                                       ; $5302: $65
    ld [hl], e                                    ; $5303: $73
    rst $38                                       ; $5304: $FF
    jr nz, jr_01C_5355                            ; $5305: $20 $4E

    ld l, a                                       ; $5307: $6F
    db $FD                                        ; $5308: $FD
    sbc h                                         ; $5309: $9C
    ld [bc], a                                    ; $530A: $02
    inc e                                         ; $530B: $1C
    ld de, $1C53                                  ; $530C: $11 $53 $1C
    scf                                           ; $530F: $37
    ld d, e                                       ; $5310: $53
    sub [hl]                                      ; $5311: $96
    inc e                                         ; $5312: $1C
    ld e, l                                       ; $5313: $5D
    ld d, e                                       ; $5314: $53
    sbc c                                         ; $5315: $99
    sbc e                                         ; $5316: $9B
    ld l, b                                       ; $5317: $68
    ld h, d                                       ; $5318: $62
    sbc a                                         ; $5319: $9F
    ld d, e                                       ; $531A: $53
    ld l, h                                       ; $531B: $6C
    ld h, l                                       ; $531C: $65

jr_01C_531D:
    ld h, l                                       ; $531D: $65
    ld [hl], b                                    ; $531E: $70
    jr nz, jr_01C_5398                            ; $531F: $20 $77

    ld h, l                                       ; $5321: $65
    ld l, h                                       ; $5322: $6C
    ld l, h                                       ; $5323: $6C
    ld hl, $FDFE                                  ; $5324: $21 $FE $FD
    sbc d                                         ; $5327: $9A
    ld l, [hl]                                    ; $5328: $6E
    rrca                                          ; $5329: $0F
    rst $38                                       ; $532A: $FF
    ld a, a                                       ; $532B: $7F
    halt                                          ; $532C: $76
    jr nz, jr_01C_533E                            ; $532D: $20 $0F

    sub d                                         ; $532F: $92
    ld bc, $4040                                  ; $5330: $01 $40 $40
    ld b, l                                       ; $5333: $45
    inc e                                         ; $5334: $1C
    and e                                         ; $5335: $A3
    ld d, e                                       ; $5336: $53
    sbc c                                         ; $5337: $99
    sbc e                                         ; $5338: $9B
    ld l, b                                       ; $5339: $68
    ld h, d                                       ; $533A: $62

jr_01C_533B:
    sbc a                                         ; $533B: $9F
    ld d, h                                       ; $533C: $54

jr_01C_533D:
    ld [hl], d                                    ; $533D: $72

jr_01C_533E:
    ld a, c                                       ; $533E: $79
    jr nz, jr_01C_53B0                            ; $533F: $20 $6F

    ld [hl], l                                    ; $5341: $75
    ld [hl], d                                    ; $5342: $72

jr_01C_5343:
    rst $38                                       ; $5343: $FF
    ld h, [hl]                                    ; $5344: $66
    ld h, c                                       ; $5345: $61
    ld h, d                                       ; $5346: $62
    ld [hl], l                                    ; $5347: $75
    ld l, h                                       ; $5348: $6C
    ld l, a                                       ; $5349: $6F
    ld [hl], l                                    ; $534A: $75
    ld [hl], e                                    ; $534B: $73
    cp $6D                                        ; $534C: $FE $6D

jr_01C_534E:
    ld [hl], l                                    ; $534E: $75
    ld [hl], e                                    ; $534F: $73
    ld l, b                                       ; $5350: $68
    ld [hl], d                                    ; $5351: $72
    ld l, a                                       ; $5352: $6F
    ld l, a                                       ; $5353: $6F
    ld l, l                                       ; $5354: $6D

jr_01C_5355:
    ld [hl], e                                    ; $5355: $73
    ld hl, $FDFE                                  ; $5356: $21 $FE $FD
    sbc d                                         ; $5359: $9A

jr_01C_535A:
    ld e, b                                       ; $535A: $58

jr_01C_535B:
    ld bc, $0142                                  ; $535B: $01 $42 $01
    ld [$AC0D], sp                                ; $535E: $08 $0D $AC
    or d                                          ; $5361: $B2
    and d                                         ; $5362: $A2
    ld bc, $6593                                  ; $5363: $01 $93 $65
    add e                                         ; $5366: $83
    ld b, h                                       ; $5367: $44
    ld c, a                                       ; $5368: $4F
    ld h, h                                       ; $5369: $64
    add [hl]                                      ; $536A: $86
    ld b, l                                       ; $536B: $45
    ld l, c                                       ; $536C: $69
    adc e                                         ; $536D: $8B
    ld b, l                                       ; $536E: $45
    ld h, [hl]                                    ; $536F: $66
    ret nz                                        ; $5370: $C0

    ld e, h                                       ; $5371: $5C
    ld hl, $0005                                  ; $5372: $21 $05 $00
    add c                                         ; $5375: $81
    ld e, l                                       ; $5376: $5D
    dec b                                         ; $5377: $05
    dec b                                         ; $5378: $05
    ld l, c                                       ; $5379: $69
    ret nc                                        ; $537A: $D0

    nop                                           ; $537B: $00
    jr nz, jr_01C_533D                            ; $537C: $20 $BF

    ld d, b                                       ; $537E: $50
    ld [hl+], a                                   ; $537F: $22
    dec b                                         ; $5380: $05
    ld b, b                                       ; $5381: $40
    dec b                                         ; $5382: $05
    ld [bc], a                                    ; $5383: $02
    ld l, e                                       ; $5384: $6B
    ld c, d                                       ; $5385: $4A
    ld b, $0D                                     ; $5386: $06 $0D
    ld a, [bc]                                    ; $5388: $0A
    pop de                                        ; $5389: $D1
    nop                                           ; $538A: $00
    db $10                                        ; $538B: $10
    add a                                         ; $538C: $87
    ld [hl], a                                    ; $538D: $77
    ld [hl+], a                                   ; $538E: $22
    dec b                                         ; $538F: $05
    ld b, b                                       ; $5390: $40
    dec bc                                        ; $5391: $0B
    nop                                           ; $5392: $00
    dec bc                                        ; $5393: $0B
    ld [bc], a                                    ; $5394: $02
    ld l, e                                       ; $5395: $6B
    dec l                                         ; $5396: $2D
    inc c                                         ; $5397: $0C

jr_01C_5398:
    or b                                          ; $5398: $B0
    ld e, a                                       ; $5399: $5F
    nop                                           ; $539A: $00
    add b                                         ; $539B: $80
    nop                                           ; $539C: $00
    nop                                           ; $539D: $00
    add d                                         ; $539E: $82
    rra                                           ; $539F: $1F
    dec d                                         ; $53A0: $15
    sub h                                         ; $53A1: $94
    ld b, d                                       ; $53A2: $42
    xor h                                         ; $53A3: $AC
    or d                                          ; $53A4: $B2
    and d                                         ; $53A5: $A2
    ld bc, $6593                                  ; $53A6: $01 $93 $65
    add e                                         ; $53A9: $83
    ld b, h                                       ; $53AA: $44
    ld c, a                                       ; $53AB: $4F
    ld h, h                                       ; $53AC: $64
    add [hl]                                      ; $53AD: $86
    ld b, l                                       ; $53AE: $45
    ld l, c                                       ; $53AF: $69

jr_01C_53B0:
    adc e                                         ; $53B0: $8B
    ld b, l                                       ; $53B1: $45
    ld h, [hl]                                    ; $53B2: $66
    ret nz                                        ; $53B3: $C0

    ld e, h                                       ; $53B4: $5C

jr_01C_53B5:
    ld hl, $0F6F                                  ; $53B5: $21 $6F $0F
    rst $38                                       ; $53B8: $FF
    ld a, a                                       ; $53B9: $7F
    dec b                                         ; $53BA: $05
    nop                                           ; $53BB: $00
    ld l, e                                       ; $53BC: $6B
    ld c, d                                       ; $53BD: $4A
    rrca                                          ; $53BE: $0F
    dec b                                         ; $53BF: $05
    ld [hl], e                                    ; $53C0: $73
    ret nc                                        ; $53C1: $D0

    nop                                           ; $53C2: $00
    inc e                                         ; $53C3: $1C
    ld hl, sp+$53                                 ; $53C4: $F8 $53
    ld [hl+], a                                   ; $53C6: $22
    dec b                                         ; $53C7: $05
    ld b, b                                       ; $53C8: $40
    dec b                                         ; $53C9: $05
    ld [bc], a                                    ; $53CA: $02
    ld l, e                                       ; $53CB: $6B
    ld c, d                                       ; $53CC: $4A
    ld b, $0D                                     ; $53CD: $06 $0D
    ld a, [bc]                                    ; $53CF: $0A
    pop de                                        ; $53D0: $D1
    nop                                           ; $53D1: $00
    db $10                                        ; $53D2: $10
    add a                                         ; $53D3: $87

jr_01C_53D4:
    ld [hl], a                                    ; $53D4: $77
    ld [hl+], a                                   ; $53D5: $22
    dec b                                         ; $53D6: $05
    ld b, b                                       ; $53D7: $40
    dec bc                                        ; $53D8: $0B
    nop                                           ; $53D9: $00
    dec bc                                        ; $53DA: $0B
    ld [bc], a                                    ; $53DB: $02
    ld l, e                                       ; $53DC: $6B
    dec l                                         ; $53DD: $2D
    inc c                                         ; $53DE: $0C
    or b                                          ; $53DF: $B0
    ld e, a                                       ; $53E0: $5F
    nop                                           ; $53E1: $00

jr_01C_53E2:
    add b                                         ; $53E2: $80
    nop                                           ; $53E3: $00
    add d                                         ; $53E4: $82
    rra                                           ; $53E5: $1F
    dec d                                         ; $53E6: $15
    sub h                                         ; $53E7: $94
    halt                                          ; $53E8: $76
    jr nz, @+$11                                  ; $53E9: $20 $0F

    ld e, h                                       ; $53EB: $5C
    nop                                           ; $53EC: $00
    ld [bc], a                                    ; $53ED: $02
    rlca                                          ; $53EE: $07
    nop                                           ; $53EF: $00
    add c                                         ; $53F0: $81
    ld e, l                                       ; $53F1: $5D
    add hl, bc                                    ; $53F2: $09
    nop                                           ; $53F3: $00
    jr nz, jr_01C_53B5                            ; $53F4: $20 $BF

    ld d, b                                       ; $53F6: $50
    ld b, d                                       ; $53F7: $42
    dec d                                         ; $53F8: $15
    jr nz, jr_01C_53D4                            ; $53F9: $20 $D9

    ld e, d                                       ; $53FB: $5A
    ld b, b                                       ; $53FC: $40
    jr nz, jr_01C_53E2                            ; $53FD: $20 $E3

    ld e, d                                       ; $53FF: $5A
    jr nz, jr_01C_5422                            ; $5400: $20 $20

    dec bc                                        ; $5402: $0B
    ld e, e                                       ; $5403: $5B
    stop                                          ; $5404: $10 $00
    ld e, h                                       ; $5406: $5C
    nop                                           ; $5407: $00
    ld [bc], a                                    ; $5408: $02
    ld b, d                                       ; $5409: $42
    ld [bc], a                                    ; $540A: $02
    inc bc                                        ; $540B: $03
    ld [hl+], a                                   ; $540C: $22
    add hl, bc                                    ; $540D: $09
    ld [de], a                                    ; $540E: $12
    ld b, l                                       ; $540F: $45
    ld [hl+], a                                   ; $5410: $22
    ld e, [hl]                                    ; $5411: $5E
    ld e, c                                       ; $5412: $59
    sbc e                                         ; $5413: $9B
    ld a, b                                       ; $5414: $78
    ld [hl], b                                    ; $5415: $70
    sbc a                                         ; $5416: $9F
    ld b, c                                       ; $5417: $41
    jr nz, @+$64                                  ; $5418: $20 $62

    ld l, a                                       ; $541A: $6F
    ld l, a                                       ; $541B: $6F
    ld l, e                                       ; $541C: $6B
    jr nz, jr_01C_548E                            ; $541D: $20 $6F

    ld h, [hl]                                    ; $541F: $66
    jr nz, jr_01C_548E                            ; $5420: $20 $6C

jr_01C_5422:
    ld l, a                                       ; $5422: $6F
    ld h, e                                       ; $5423: $63
    ld h, c                                       ; $5424: $61
    ld l, h                                       ; $5425: $6C
    rst $38                                       ; $5426: $FF
    ld h, l                                       ; $5427: $65
    halt                                          ; $5428: $76
    ld h, l                                       ; $5429: $65
    ld l, [hl]                                    ; $542A: $6E
    ld [hl], h                                    ; $542B: $74
    ld [hl], e                                    ; $542C: $73
    ld l, $2E                                     ; $542D: $2E $2E
    ld l, $FE                                     ; $542F: $2E $FE
    db $FD                                        ; $5431: $FD
    sbc c                                         ; $5432: $99
    sbc a                                         ; $5433: $9F
    ld d, e                                       ; $5434: $53
    ld [hl], h                                    ; $5435: $74
    ld h, c                                       ; $5436: $61
    ld l, h                                       ; $5437: $6C
    ld h, c                                       ; $5438: $61
    ld h, e                                       ; $5439: $63
    ld [hl], h                                    ; $543A: $74
    ld l, c                                       ; $543B: $69
    ld [hl], h                                    ; $543C: $74
    ld h, l                                       ; $543D: $65
    jr nz, jr_01C_5492                            ; $543E: $20 $52

    ld [hl], l                                    ; $5440: $75
    ld l, [hl]                                    ; $5441: $6E
    ld a, [hl-]                                   ; $5442: $3A
    cp $57                                        ; $5443: $FE $57
    ld l, b                                       ; $5445: $68
    ld h, l                                       ; $5446: $65
    ld [hl], d                                    ; $5447: $72
    ld h, l                                       ; $5448: $65
    jr nz, jr_01C_54BF                            ; $5449: $20 $74

    ld l, b                                       ; $544B: $68
    ld h, l                                       ; $544C: $65
    jr nz, jr_01C_54BE                            ; $544D: $20 $6F

    ld l, [hl]                                    ; $544F: $6E
    ld l, h                                       ; $5450: $6C
    ld a, c                                       ; $5451: $79
    rst $38                                       ; $5452: $FF
    ld l, a                                       ; $5453: $6F
    ld h, d                                       ; $5454: $62
    ld [hl], e                                    ; $5455: $73
    ld [hl], h                                    ; $5456: $74
    ld h, c                                       ; $5457: $61
    ld h, e                                       ; $5458: $63
    ld l, h                                       ; $5459: $6C
    ld h, l                                       ; $545A: $65
    jr nz, @+$76                                  ; $545B: $20 $74

    ld l, a                                       ; $545D: $6F
    cp $76                                        ; $545E: $FE $76
    ld l, c                                       ; $5460: $69
    ld h, e                                       ; $5461: $63
    ld [hl], h                                    ; $5462: $74
    ld l, a                                       ; $5463: $6F
    ld [hl], d                                    ; $5464: $72
    ld a, c                                       ; $5465: $79
    jr nz, @+$6B                                  ; $5466: $20 $69

    ld [hl], e                                    ; $5468: $73
    jr nz, @+$63                                  ; $5469: $20 $61

    rst $38                                       ; $546B: $FF
    ld [hl], b                                    ; $546C: $70
    ld l, a                                       ; $546D: $6F
    ld l, c                                       ; $546E: $69
    ld l, [hl]                                    ; $546F: $6E
    ld [hl], h                                    ; $5470: $74
    ld a, c                                       ; $5471: $79
    jr nz, jr_01C_54D7                            ; $5472: $20 $63

    ld l, b                                       ; $5474: $68
    ld [hl], l                                    ; $5475: $75
    ld l, [hl]                                    ; $5476: $6E
    ld l, e                                       ; $5477: $6B
    cp $6F                                        ; $5478: $FE $6F
    ld h, [hl]                                    ; $547A: $66
    jr nz, jr_01C_54E3                            ; $547B: $20 $66

    ld h, c                                       ; $547D: $61
    ld l, h                                       ; $547E: $6C
    ld l, h                                       ; $547F: $6C
    ld l, c                                       ; $5480: $69
    ld l, [hl]                                    ; $5481: $6E
    ld h, a                                       ; $5482: $67
    rst $38                                       ; $5483: $FF
    ld [hl], e                                    ; $5484: $73
    ld [hl], h                                    ; $5485: $74
    ld l, a                                       ; $5486: $6F
    ld l, [hl]                                    ; $5487: $6E
    ld h, l                                       ; $5488: $65
    ld l, $FE                                     ; $5489: $2E $FE
    db $FD                                        ; $548B: $FD
    sbc e                                         ; $548C: $9B
    ld a, b                                       ; $548D: $78

jr_01C_548E:
    ld [hl], b                                    ; $548E: $70
    sbc a                                         ; $548F: $9F
    ld d, e                                       ; $5490: $53
    ld l, a                                       ; $5491: $6F

jr_01C_5492:
    ld [hl], l                                    ; $5492: $75
    ld l, [hl]                                    ; $5493: $6E
    ld h, h                                       ; $5494: $64
    ld [hl], e                                    ; $5495: $73
    rst $38                                       ; $5496: $FF
    ld h, h                                       ; $5497: $64
    ld h, c                                       ; $5498: $61
    ld l, [hl]                                    ; $5499: $6E
    ld h, a                                       ; $549A: $67
    ld h, l                                       ; $549B: $65
    ld [hl], d                                    ; $549C: $72
    ld l, a                                       ; $549D: $6F
    ld [hl], l                                    ; $549E: $75
    ld [hl], e                                    ; $549F: $73
    ld l, $FE                                     ; $54A0: $2E $FE
    db $FD                                        ; $54A2: $FD
    sbc d                                         ; $54A3: $9A
    ld b, d                                       ; $54A4: $42
    sbc e                                         ; $54A5: $9B
    ld a, b                                       ; $54A6: $78
    ld [hl], b                                    ; $54A7: $70
    sbc a                                         ; $54A8: $9F
    ld b, c                                       ; $54A9: $41
    ld l, b                                       ; $54AA: $68
    ld l, b                                       ; $54AB: $68
    inc l                                         ; $54AC: $2C
    jr nz, jr_01C_5528                            ; $54AD: $20 $79

    ld h, l                                       ; $54AF: $65
    ld [hl], e                                    ; $54B0: $73
    ld l, $FE                                     ; $54B1: $2E $FE
    ld b, e                                       ; $54B3: $43
    ld l, b                                       ; $54B4: $68
    ld h, c                                       ; $54B5: $61
    ld l, c                                       ; $54B6: $69
    ld [hl], d                                    ; $54B7: $72
    ld [hl], e                                    ; $54B8: $73
    jr nz, jr_01C_552F                            ; $54B9: $20 $74

    ld l, b                                       ; $54BB: $68
    ld h, c                                       ; $54BC: $61
    ld [hl], h                                    ; $54BD: $74

jr_01C_54BE:
    rst $38                                       ; $54BE: $FF

jr_01C_54BF:
    ld l, l                                       ; $54BF: $6D
    ld l, a                                       ; $54C0: $6F
    ld l, h                                       ; $54C1: $6C
    ld h, h                                       ; $54C2: $64
    jr nz, jr_01C_5539                            ; $54C3: $20 $74

    ld l, a                                       ; $54C5: $6F
    jr nz, jr_01C_5541                            ; $54C6: $20 $79

    ld l, a                                       ; $54C8: $6F
    ld [hl], l                                    ; $54C9: $75
    ld [hl], d                                    ; $54CA: $72
    cp $66                                        ; $54CB: $FE $66
    ld l, a                                       ; $54CD: $6F
    ld [hl], d                                    ; $54CE: $72
    ld l, l                                       ; $54CF: $6D
    ld l, $FE                                     ; $54D0: $2E $FE
    db $FD                                        ; $54D2: $FD
    sbc d                                         ; $54D3: $9A
    ld b, d                                       ; $54D4: $42
    sbc e                                         ; $54D5: $9B
    ld a, b                                       ; $54D6: $78

jr_01C_54D7:
    ld [hl], b                                    ; $54D7: $70
    sbc a                                         ; $54D8: $9F
    ld b, h                                       ; $54D9: $44
    ld l, a                                       ; $54DA: $6F
    jr nz, @+$76                                  ; $54DB: $20 $74

    ld l, b                                       ; $54DD: $68
    ld h, l                                       ; $54DE: $65
    ld a, c                                       ; $54DF: $79
    jr nz, jr_01C_5549                            ; $54E0: $20 $67

    ld [hl], d                                    ; $54E2: $72

jr_01C_54E3:
    ld l, a                                       ; $54E3: $6F
    ld [hl], a                                    ; $54E4: $77
    rst $38                                       ; $54E5: $FF
    ld [hl], h                                    ; $54E6: $74
    ld l, b                                       ; $54E7: $68
    ld h, l                                       ; $54E8: $65
    ld [hl], e                                    ; $54E9: $73
    ld h, l                                       ; $54EA: $65
    jr nz, jr_01C_554E                            ; $54EB: $20 $61

    ld [hl], h                                    ; $54ED: $74
    jr nz, jr_01C_5564                            ; $54EE: $20 $74

    ld l, b                                       ; $54F0: $68
    ld h, l                                       ; $54F1: $65
    cp $6D                                        ; $54F2: $FE $6D
    ld [hl], l                                    ; $54F4: $75
    ld [hl], e                                    ; $54F5: $73
    ld l, b                                       ; $54F6: $68
    ld [hl], d                                    ; $54F7: $72
    ld l, a                                       ; $54F8: $6F
    ld l, a                                       ; $54F9: $6F
    ld l, l                                       ; $54FA: $6D
    jr nz, jr_01C_5563                            ; $54FB: $20 $66

    ld h, c                                       ; $54FD: $61
    ld [hl], d                                    ; $54FE: $72
    ld l, l                                       ; $54FF: $6D
    ccf                                           ; $5500: $3F
    cp $FD                                        ; $5501: $FE $FD
    sbc d                                         ; $5503: $9A
    ld b, d                                       ; $5504: $42
    sbc e                                         ; $5505: $9B
    ld a, b                                       ; $5506: $78
    ld [hl], b                                    ; $5507: $70
    sbc a                                         ; $5508: $9F
    ld b, c                                       ; $5509: $41
    jr nz, jr_01C_5583                            ; $550A: $20 $77

    ld l, c                                       ; $550C: $69
    ld l, [hl]                                    ; $550D: $6E
    ld h, h                                       ; $550E: $64
    ld l, a                                       ; $550F: $6F
    ld [hl], a                                    ; $5510: $77
    ld l, $FE                                     ; $5511: $2E $FE
    ld d, a                                       ; $5513: $57
    ld l, b                                       ; $5514: $68
    ld a, c                                       ; $5515: $79
    ccf                                           ; $5516: $3F
    cp $FD                                        ; $5517: $FE $FD
    sbc d                                         ; $5519: $9A
    ld b, d                                       ; $551A: $42
    sbc e                                         ; $551B: $9B
    ret c                                         ; $551C: $D8

    ld h, b                                       ; $551D: $60
    sbc a                                         ; $551E: $9F
    ld c, c                                       ; $551F: $49
    jr nz, jr_01C_5583                            ; $5520: $20 $61

    ld l, l                                       ; $5522: $6D
    jr nz, jr_01C_5599                            ; $5523: $20 $74

    ld l, b                                       ; $5525: $68
    ld h, l                                       ; $5526: $65
    rst $38                                       ; $5527: $FF

jr_01C_5528:
    ld [hl], e                                    ; $5528: $73
    ld l, l                                       ; $5529: $6D
    ld h, c                                       ; $552A: $61
    ld [hl], d                                    ; $552B: $72
    ld [hl], h                                    ; $552C: $74
    ld h, l                                       ; $552D: $65
    ld [hl], e                                    ; $552E: $73

jr_01C_552F:
    ld [hl], h                                    ; $552F: $74
    jr nz, jr_01C_559F                            ; $5530: $20 $6D

    ld h, c                                       ; $5532: $61
    ld l, [hl]                                    ; $5533: $6E
    cp $69                                        ; $5534: $FE $69
    ld l, [hl]                                    ; $5536: $6E
    jr nz, jr_01C_55AD                            ; $5537: $20 $74

jr_01C_5539:
    ld l, a                                       ; $5539: $6F
    ld [hl], a                                    ; $553A: $77
    ld l, [hl]                                    ; $553B: $6E
    ld l, $FE                                     ; $553C: $2E $FE
    ld d, h                                       ; $553E: $54
    ld l, b                                       ; $553F: $68
    ld h, l                                       ; $5540: $65

jr_01C_5541:
    jr nz, @+$6F                                  ; $5541: $20 $6D

    ld [hl], l                                    ; $5543: $75
    ld [hl], e                                    ; $5544: $73
    ld l, b                                       ; $5545: $68
    ld [hl], d                                    ; $5546: $72
    ld l, a                                       ; $5547: $6F
    ld l, a                                       ; $5548: $6F

jr_01C_5549:
    ld l, l                                       ; $5549: $6D
    ld [hl], e                                    ; $554A: $73
    rst $38                                       ; $554B: $FF
    ld [hl], h                                    ; $554C: $74
    ld l, a                                       ; $554D: $6F

jr_01C_554E:
    ld l, h                                       ; $554E: $6C
    ld h, h                                       ; $554F: $64
    jr nz, jr_01C_55BF                            ; $5550: $20 $6D

    ld h, l                                       ; $5552: $65
    jr nz, jr_01C_55C8                            ; $5553: $20 $73

    ld l, a                                       ; $5555: $6F
    ld hl, $FDFE                                  ; $5556: $21 $FE $FD
    sbc d                                         ; $5559: $9A
    sbc e                                         ; $555A: $9B
    ret c                                         ; $555B: $D8

    ld h, b                                       ; $555C: $60
    sbc a                                         ; $555D: $9F
    ld b, c                                       ; $555E: $41
    ld [hl], e                                    ; $555F: $73
    ld l, e                                       ; $5560: $6B
    jr nz, jr_01C_55D0                            ; $5561: $20 $6D

jr_01C_5563:
    ld h, l                                       ; $5563: $65

jr_01C_5564:
    rst $38                                       ; $5564: $FF
    ld h, c                                       ; $5565: $61
    ld l, [hl]                                    ; $5566: $6E
    ld a, c                                       ; $5567: $79
    ld [hl], h                                    ; $5568: $74
    ld l, b                                       ; $5569: $68
    ld l, c                                       ; $556A: $69
    ld l, [hl]                                    ; $556B: $6E
    ld h, a                                       ; $556C: $67
    ld l, $FE                                     ; $556D: $2E $FE
    db $FD                                        ; $556F: $FD
    sbc d                                         ; $5570: $9A
    adc e                                         ; $5571: $8B
    sbc e                                         ; $5572: $9B
    ret c                                         ; $5573: $D8

    ld h, b                                       ; $5574: $60
    ld c, e                                       ; $5575: $4B
    ld bc, $CCFD                                  ; $5576: $01 $FD $CC
    inc e                                         ; $5579: $1C
    nop                                           ; $557A: $00
    nop                                           ; $557B: $00
    xor h                                         ; $557C: $AC
    ld d, l                                       ; $557D: $55
    inc e                                         ; $557E: $1C
    ld [bc], a                                    ; $557F: $02
    nop                                           ; $5580: $00
    xor h                                         ; $5581: $AC
    ld d, l                                       ; $5582: $55

jr_01C_5583:
    inc e                                         ; $5583: $1C
    inc bc                                        ; $5584: $03
    nop                                           ; $5585: $00
    xor h                                         ; $5586: $AC
    ld d, l                                       ; $5587: $55
    rst $38                                       ; $5588: $FF
    sbc a                                         ; $5589: $9F
    ld c, c                                       ; $558A: $49
    jr nz, jr_01C_5601                            ; $558B: $20 $74

    ld l, a                                       ; $558D: $6F
    ld l, h                                       ; $558E: $6C
    ld h, h                                       ; $558F: $64
    jr nz, jr_01C_560B                            ; $5590: $20 $79

    ld l, a                                       ; $5592: $6F
    ld [hl], l                                    ; $5593: $75
    jr nz, jr_01C_55DF                            ; $5594: $20 $49

    rst $38                                       ; $5596: $FF
    ld [hl], a                                    ; $5597: $77
    ld h, c                                       ; $5598: $61

jr_01C_5599:
    ld [hl], e                                    ; $5599: $73
    jr nz, @+$74                                  ; $559A: $20 $72

    ld h, l                                       ; $559C: $65
    ld h, c                                       ; $559D: $61
    ld l, h                                       ; $559E: $6C

jr_01C_559F:
    ld l, h                                       ; $559F: $6C
    ld a, c                                       ; $55A0: $79
    cp $73                                        ; $55A1: $FE $73
    ld l, l                                       ; $55A3: $6D
    ld h, c                                       ; $55A4: $61
    ld [hl], d                                    ; $55A5: $72
    ld [hl], h                                    ; $55A6: $74
    ld hl, $FDFE                                  ; $55A7: $21 $FE $FD
    sbc d                                         ; $55AA: $9A
    ld [de], a                                    ; $55AB: $12
    ld b, a                                       ; $55AC: $47

jr_01C_55AD:
    jr jr_01C_55CB                                ; $55AD: $18 $1C

    or $55                                        ; $55AF: $F6 $55
    inc e                                         ; $55B1: $1C
    ld sp, $1C56                                  ; $55B2: $31 $56 $1C
    ld l, b                                       ; $55B5: $68
    ld d, [hl]                                    ; $55B6: $56
    inc e                                         ; $55B7: $1C
    xor c                                         ; $55B8: $A9
    ld d, [hl]                                    ; $55B9: $56
    inc e                                         ; $55BA: $1C
    inc [hl]                                      ; $55BB: $34
    ld d, a                                       ; $55BC: $57
    inc e                                         ; $55BD: $1C
    ld e, a                                       ; $55BE: $5F

jr_01C_55BF:
    ld d, a                                       ; $55BF: $57
    inc e                                         ; $55C0: $1C
    and a                                         ; $55C1: $A7
    ld d, a                                       ; $55C2: $57
    inc e                                         ; $55C3: $1C
    rst $28                                       ; $55C4: $EF
    ld d, a                                       ; $55C5: $57
    inc e                                         ; $55C6: $1C
    add hl, sp                                    ; $55C7: $39

jr_01C_55C8:
    ld e, b                                       ; $55C8: $58
    inc e                                         ; $55C9: $1C
    ld a, b                                       ; $55CA: $78

jr_01C_55CB:
    ld e, b                                       ; $55CB: $58
    inc e                                         ; $55CC: $1C
    ret                                           ; $55CD: $C9


    ld e, b                                       ; $55CE: $58
    inc e                                         ; $55CF: $1C

jr_01C_55D0:
    ei                                            ; $55D0: $FB
    ld e, b                                       ; $55D1: $58
    inc e                                         ; $55D2: $1C
    dec h                                         ; $55D3: $25
    ld e, c                                       ; $55D4: $59
    inc e                                         ; $55D5: $1C
    adc [hl]                                      ; $55D6: $8E
    ld e, c                                       ; $55D7: $59
    inc e                                         ; $55D8: $1C
    cp l                                          ; $55D9: $BD
    ld e, c                                       ; $55DA: $59
    inc e                                         ; $55DB: $1C
    jr nz, jr_01C_5638                            ; $55DC: $20 $5A

    inc e                                         ; $55DE: $1C

jr_01C_55DF:
    ld c, c                                       ; $55DF: $49
    ld e, d                                       ; $55E0: $5A
    inc e                                         ; $55E1: $1C
    ld a, d                                       ; $55E2: $7A
    ld e, d                                       ; $55E3: $5A
    inc e                                         ; $55E4: $1C
    or d                                          ; $55E5: $B2
    ld e, d                                       ; $55E6: $5A
    inc e                                         ; $55E7: $1C
    adc $5A                                       ; $55E8: $CE $5A
    inc e                                         ; $55EA: $1C
    add hl, sp                                    ; $55EB: $39
    ld e, e                                       ; $55EC: $5B
    inc e                                         ; $55ED: $1C
    halt                                          ; $55EE: $76
    ld e, e                                       ; $55EF: $5B
    inc e                                         ; $55F0: $1C
    and c                                         ; $55F1: $A1
    ld e, e                                       ; $55F2: $5B
    inc e                                         ; $55F3: $1C
    jp c, $9F5B                                   ; $55F4: $DA $5B $9F

    ld d, h                                       ; $55F7: $54
    ld l, b                                       ; $55F8: $68
    ld h, c                                       ; $55F9: $61
    ld [hl], h                                    ; $55FA: $74
    jr nz, jr_01C_565E                            ; $55FB: $20 $61

    ld l, h                                       ; $55FD: $6C
    ld l, h                                       ; $55FE: $6C
    ld l, a                                       ; $55FF: $6F
    ld [hl], a                                    ; $5600: $77

jr_01C_5601:
    ld [hl], e                                    ; $5601: $73
    rst $38                                       ; $5602: $FF
    ld a, c                                       ; $5603: $79
    ld l, a                                       ; $5604: $6F
    ld [hl], l                                    ; $5605: $75
    ld [hl], d                                    ; $5606: $72
    jr nz, jr_01C_564D                            ; $5607: $20 $44

    ld [hl], d                                    ; $5609: $72
    ld h, l                                       ; $560A: $65

jr_01C_560B:
    ld h, c                                       ; $560B: $61
    ld l, l                                       ; $560C: $6D
    cp $43                                        ; $560D: $FE $43
    ld [hl], d                                    ; $560F: $72
    ld h, l                                       ; $5610: $65
    ld h, c                                       ; $5611: $61
    ld [hl], h                                    ; $5612: $74
    ld [hl], l                                    ; $5613: $75
    ld [hl], d                                    ; $5614: $72
    ld h, l                                       ; $5615: $65
    ld [hl], e                                    ; $5616: $73
    jr nz, jr_01C_568D                            ; $5617: $20 $74

    ld l, a                                       ; $5619: $6F
    rst $38                                       ; $561A: $FF
    ld l, d                                       ; $561B: $6A
    ld [hl], l                                    ; $561C: $75
    ld l, l                                       ; $561D: $6D
    ld [hl], b                                    ; $561E: $70
    jr nz, jr_01C_5697                            ; $561F: $20 $76

    ld h, l                                       ; $5621: $65
    ld [hl], d                                    ; $5622: $72
    ld a, c                                       ; $5623: $79
    jr nz, jr_01C_568E                            ; $5624: $20 $68

    ld l, c                                       ; $5626: $69
    ld h, a                                       ; $5627: $67
    ld l, b                                       ; $5628: $68
    ld l, $FE                                     ; $5629: $2E $FE
    db $FD                                        ; $562B: $FD
    sbc d                                         ; $562C: $9A
    ld b, l                                       ; $562D: $45
    inc e                                         ; $562E: $1C
    ld [hl], c                                    ; $562F: $71
    ld d, l                                       ; $5630: $55
    sbc a                                         ; $5631: $9F
    ld d, h                                       ; $5632: $54
    ld l, b                                       ; $5633: $68
    ld h, c                                       ; $5634: $61
    ld [hl], h                                    ; $5635: $74
    jr nz, jr_01C_56A5                            ; $5636: $20 $6D

jr_01C_5638:
    ld h, c                                       ; $5638: $61
    ld l, e                                       ; $5639: $6B
    ld h, l                                       ; $563A: $65
    ld [hl], e                                    ; $563B: $73
    rst $38                                       ; $563C: $FF
    ld h, c                                       ; $563D: $61
    ld l, [hl]                                    ; $563E: $6E
    ld a, c                                       ; $563F: $79
    jr nz, jr_01C_56B2                            ; $5640: $20 $70

    ld [hl], l                                    ; $5642: $75
    ld [hl], d                                    ; $5643: $72
    ld [hl], b                                    ; $5644: $70
    ld l, h                                       ; $5645: $6C
    ld h, l                                       ; $5646: $65
    cp $44                                        ; $5647: $FE $44
    ld [hl], d                                    ; $5649: $72
    ld h, l                                       ; $564A: $65
    ld h, c                                       ; $564B: $61
    ld l, l                                       ; $564C: $6D

jr_01C_564D:
    jr nz, @+$45                                  ; $564D: $20 $43

    ld [hl], d                                    ; $564F: $72
    ld h, l                                       ; $5650: $65
    ld h, c                                       ; $5651: $61
    ld [hl], h                                    ; $5652: $74
    ld [hl], l                                    ; $5653: $75
    ld [hl], d                                    ; $5654: $72
    ld h, l                                       ; $5655: $65
    rst $38                                       ; $5656: $FF
    halt                                          ; $5657: $76
    ld h, l                                       ; $5658: $65
    ld [hl], d                                    ; $5659: $72
    ld a, c                                       ; $565A: $79
    jr nz, jr_01C_56D4                            ; $565B: $20 $77

    ld h, l                                       ; $565D: $65

jr_01C_565E:
    ld h, c                                       ; $565E: $61
    ld l, e                                       ; $565F: $6B
    ld l, $FE                                     ; $5660: $2E $FE
    db $FD                                        ; $5662: $FD
    sbc d                                         ; $5663: $9A
    ld b, l                                       ; $5664: $45
    inc e                                         ; $5665: $1C
    ld [hl], c                                    ; $5666: $71
    ld d, l                                       ; $5667: $55
    sbc a                                         ; $5668: $9F
    ld d, h                                       ; $5669: $54
    ld l, b                                       ; $566A: $68
    ld h, c                                       ; $566B: $61
    ld [hl], h                                    ; $566C: $74
    jr nz, @+$69                                  ; $566D: $20 $67

    ld l, c                                       ; $566F: $69
    halt                                          ; $5670: $76
    ld h, l                                       ; $5671: $65
    ld [hl], e                                    ; $5672: $73
    rst $38                                       ; $5673: $FF
    ld h, c                                       ; $5674: $61
    ld l, [hl]                                    ; $5675: $6E
    ld a, c                                       ; $5676: $79
    jr nz, jr_01C_56C6                            ; $5677: $20 $4D

    ld h, c                                       ; $5679: $61
    ld h, a                                       ; $567A: $67
    ld l, c                                       ; $567B: $69
    jr nz, jr_01C_56F2                            ; $567C: $20 $74

    ld l, b                                       ; $567E: $68
    ld h, l                                       ; $567F: $65
    cp $61                                        ; $5680: $FE $61
    ld h, d                                       ; $5682: $62
    ld l, c                                       ; $5683: $69
    ld l, h                                       ; $5684: $6C
    ld l, c                                       ; $5685: $69
    ld [hl], h                                    ; $5686: $74
    ld a, c                                       ; $5687: $79
    jr nz, jr_01C_56FE                            ; $5688: $20 $74

    ld l, a                                       ; $568A: $6F
    rst $38                                       ; $568B: $FF
    ld h, e                                       ; $568C: $63

jr_01C_568D:
    ld l, h                                       ; $568D: $6C

jr_01C_568E:
    ld l, c                                       ; $568E: $69
    ld l, l                                       ; $568F: $6D
    ld h, d                                       ; $5690: $62
    jr nz, jr_01C_56F4                            ; $5691: $20 $61

    ld l, h                                       ; $5693: $6C
    ld l, l                                       ; $5694: $6D
    ld l, a                                       ; $5695: $6F
    ld [hl], e                                    ; $5696: $73

jr_01C_5697:
    ld [hl], h                                    ; $5697: $74
    cp $61                                        ; $5698: $FE $61
    ld l, [hl]                                    ; $569A: $6E
    ld a, c                                       ; $569B: $79
    jr nz, jr_01C_5712                            ; $569C: $20 $74

    ld [hl], d                                    ; $569E: $72
    ld h, l                                       ; $569F: $65
    ld h, l                                       ; $56A0: $65
    ld l, $FE                                     ; $56A1: $2E $FE
    db $FD                                        ; $56A3: $FD
    sbc d                                         ; $56A4: $9A

jr_01C_56A5:
    ld b, l                                       ; $56A5: $45
    inc e                                         ; $56A6: $1C
    ld [hl], c                                    ; $56A7: $71
    ld d, l                                       ; $56A8: $55
    sbc a                                         ; $56A9: $9F
    ld d, a                                       ; $56AA: $57
    ld l, a                                       ; $56AB: $6F
    ld [hl], a                                    ; $56AC: $77
    inc l                                         ; $56AD: $2C
    jr nz, jr_01C_56F9                            ; $56AE: $20 $49

    jr nz, @+$65                                  ; $56B0: $20 $63

jr_01C_56B2:
    ld h, c                                       ; $56B2: $61
    ld l, [hl]                                    ; $56B3: $6E
    daa                                           ; $56B4: $27
    ld [hl], h                                    ; $56B5: $74
    rst $38                                       ; $56B6: $FF
    ld h, d                                       ; $56B7: $62
    ld h, l                                       ; $56B8: $65
    ld l, h                                       ; $56B9: $6C
    ld l, c                                       ; $56BA: $69
    ld h, l                                       ; $56BB: $65
    halt                                          ; $56BC: $76
    ld h, l                                       ; $56BD: $65
    jr nz, jr_01C_5739                            ; $56BE: $20 $79

    ld l, a                                       ; $56C0: $6F
    ld [hl], l                                    ; $56C1: $75
    cp $66                                        ; $56C2: $FE $66
    ld l, a                                       ; $56C4: $6F
    ld [hl], l                                    ; $56C5: $75

jr_01C_56C6:
    ld l, [hl]                                    ; $56C6: $6E
    ld h, h                                       ; $56C7: $64
    jr nz, jr_01C_5739                            ; $56C8: $20 $6F

    ld l, [hl]                                    ; $56CA: $6E
    ld h, l                                       ; $56CB: $65
    jr nz, jr_01C_573D                            ; $56CC: $20 $6F

    ld h, [hl]                                    ; $56CE: $66
    rst $38                                       ; $56CF: $FF
    ld [hl], h                                    ; $56D0: $74
    ld l, b                                       ; $56D1: $68
    ld h, l                                       ; $56D2: $65
    ld [hl], e                                    ; $56D3: $73

jr_01C_56D4:
    ld h, l                                       ; $56D4: $65
    ld l, $20                                     ; $56D5: $2E $20
    ld c, c                                       ; $56D7: $49
    ld [hl], h                                    ; $56D8: $74
    daa                                           ; $56D9: $27
    ld [hl], e                                    ; $56DA: $73
    ld l, $2E                                     ; $56DB: $2E $2E
    ld l, $FE                                     ; $56DD: $2E $FE
    ld c, c                                       ; $56DF: $49
    daa                                           ; $56E0: $27
    ld l, l                                       ; $56E1: $6D
    jr nz, jr_01C_5757                            ; $56E2: $20 $73

    ld l, a                                       ; $56E4: $6F
    ld [hl], d                                    ; $56E5: $72
    ld [hl], d                                    ; $56E6: $72
    ld a, c                                       ; $56E7: $79
    inc l                                         ; $56E8: $2C
    jr nz, jr_01C_5734                            ; $56E9: $20 $49

    rst $38                                       ; $56EB: $FF
    ld h, e                                       ; $56EC: $63
    ld h, c                                       ; $56ED: $61
    ld l, [hl]                                    ; $56EE: $6E
    ld l, [hl]                                    ; $56EF: $6E
    ld l, a                                       ; $56F0: $6F
    ld [hl], h                                    ; $56F1: $74

jr_01C_56F2:
    jr nz, jr_01C_5768                            ; $56F2: $20 $74

jr_01C_56F4:
    ld h, l                                       ; $56F4: $65
    ld l, h                                       ; $56F5: $6C
    ld l, h                                       ; $56F6: $6C
    cp $79                                        ; $56F7: $FE $79

jr_01C_56F9:
    ld l, a                                       ; $56F9: $6F
    ld [hl], l                                    ; $56FA: $75
    jr nz, jr_01C_575F                            ; $56FB: $20 $62

    ld h, l                                       ; $56FD: $65

jr_01C_56FE:
    ld h, e                                       ; $56FE: $63
    ld h, c                                       ; $56FF: $61
    ld [hl], l                                    ; $5700: $75
    ld [hl], e                                    ; $5701: $73
    ld h, l                                       ; $5702: $65
    jr nz, jr_01C_576E                            ; $5703: $20 $69

    ld h, [hl]                                    ; $5705: $66
    rst $38                                       ; $5706: $FF
    ld c, c                                       ; $5707: $49
    jr nz, jr_01C_576E                            ; $5708: $20 $64

    ld l, c                                       ; $570A: $69
    ld h, h                                       ; $570B: $64
    inc l                                         ; $570C: $2C
    jr nz, @+$7B                                  ; $570D: $20 $79

    ld l, a                                       ; $570F: $6F
    ld [hl], l                                    ; $5710: $75
    daa                                           ; $5711: $27

jr_01C_5712:
    ld [hl], d                                    ; $5712: $72
    ld h, l                                       ; $5713: $65
    cp $6C                                        ; $5714: $FE $6C
    ld l, c                                       ; $5716: $69
    ld h, [hl]                                    ; $5717: $66
    ld h, l                                       ; $5718: $65
    jr nz, jr_01C_5792                            ; $5719: $20 $77

    ld l, a                                       ; $571B: $6F
    ld [hl], l                                    ; $571C: $75
    ld l, h                                       ; $571D: $6C
    ld h, h                                       ; $571E: $64
    jr nz, @+$64                                  ; $571F: $20 $62

    ld h, l                                       ; $5721: $65
    rst $38                                       ; $5722: $FF
    ld l, c                                       ; $5723: $69
    ld l, [hl]                                    ; $5724: $6E
    jr nz, jr_01C_578B                            ; $5725: $20 $64

    ld h, c                                       ; $5727: $61
    ld l, [hl]                                    ; $5728: $6E
    ld h, a                                       ; $5729: $67
    ld h, l                                       ; $572A: $65
    ld [hl], d                                    ; $572B: $72
    ld l, $FE                                     ; $572C: $2E $FE
    db $FD                                        ; $572E: $FD
    sbc d                                         ; $572F: $9A
    ld b, l                                       ; $5730: $45
    inc e                                         ; $5731: $1C
    ld [hl], c                                    ; $5732: $71
    ld d, l                                       ; $5733: $55

jr_01C_5734:
    sbc a                                         ; $5734: $9F
    ld d, h                                       ; $5735: $54
    ld l, b                                       ; $5736: $68
    ld h, c                                       ; $5737: $61
    ld [hl], h                                    ; $5738: $74

jr_01C_5739:
    ccf                                           ; $5739: $3F
    jr nz, jr_01C_5790                            ; $573A: $20 $54

    ld l, b                                       ; $573C: $68

jr_01C_573D:
    ld h, c                                       ; $573D: $61
    ld [hl], h                                    ; $573E: $74
    rst $38                                       ; $573F: $FF
    ld h, h                                       ; $5740: $64
    ld l, a                                       ; $5741: $6F
    ld h, l                                       ; $5742: $65
    ld [hl], e                                    ; $5743: $73
    jr nz, jr_01C_57A7                            ; $5744: $20 $61

    ld h, d                                       ; $5746: $62
    ld [hl], e                                    ; $5747: $73
    ld l, a                                       ; $5748: $6F
    ld l, h                                       ; $5749: $6C
    ld [hl], l                                    ; $574A: $75
    ld [hl], h                                    ; $574B: $74
    ld h, l                                       ; $574C: $65
    ld l, h                                       ; $574D: $6C
    ld a, c                                       ; $574E: $79
    cp $6E                                        ; $574F: $FE $6E
    ld l, a                                       ; $5751: $6F
    ld [hl], h                                    ; $5752: $74
    ld l, b                                       ; $5753: $68
    ld l, c                                       ; $5754: $69
    ld l, [hl]                                    ; $5755: $6E
    ld h, a                                       ; $5756: $67

jr_01C_5757:
    ld l, $FE                                     ; $5757: $2E $FE
    db $FD                                        ; $5759: $FD
    sbc d                                         ; $575A: $9A
    ld b, l                                       ; $575B: $45
    inc e                                         ; $575C: $1C
    ld [hl], c                                    ; $575D: $71
    ld d, l                                       ; $575E: $55

jr_01C_575F:
    sbc a                                         ; $575F: $9F
    ld d, h                                       ; $5760: $54
    ld l, b                                       ; $5761: $68
    ld l, c                                       ; $5762: $69
    ld [hl], e                                    ; $5763: $73
    jr nz, @+$6B                                  ; $5764: $20 $69

    ld [hl], h                                    ; $5766: $74
    ld h, l                                       ; $5767: $65

jr_01C_5768:
    ld l, l                                       ; $5768: $6D
    jr nz, jr_01C_57D7                            ; $5769: $20 $6C

    ld l, a                                       ; $576B: $6F
    ld l, a                                       ; $576C: $6F
    ld l, e                                       ; $576D: $6B

jr_01C_576E:
    ld [hl], e                                    ; $576E: $73
    rst $38                                       ; $576F: $FF
    ld h, d                                       ; $5770: $62
    ld h, c                                       ; $5771: $61
    ld h, e                                       ; $5772: $63
    ld l, e                                       ; $5773: $6B
    jr nz, jr_01C_57D7                            ; $5774: $20 $61

    ld [hl], h                                    ; $5776: $74
    jr nz, jr_01C_57F2                            ; $5777: $20 $79

    ld l, a                                       ; $5779: $6F
    ld [hl], l                                    ; $577A: $75
    jr nz, jr_01C_57E6                            ; $577B: $20 $69

    ld h, [hl]                                    ; $577D: $66
    cp $79                                        ; $577E: $FE $79
    ld l, a                                       ; $5780: $6F
    ld [hl], l                                    ; $5781: $75
    jr nz, jr_01C_57E7                            ; $5782: $20 $63

    ld h, c                                       ; $5784: $61
    ld l, h                                       ; $5785: $6C
    ld l, h                                       ; $5786: $6C
    jr nz, jr_01C_57F2                            ; $5787: $20 $69

    ld [hl], h                                    ; $5789: $74
    ld [hl], e                                    ; $578A: $73

jr_01C_578B:
    rst $38                                       ; $578B: $FF
    ld l, [hl]                                    ; $578C: $6E
    ld h, c                                       ; $578D: $61
    ld l, l                                       ; $578E: $6D
    ld h, l                                       ; $578F: $65

jr_01C_5790:
    jr nz, jr_01C_57F3                            ; $5790: $20 $61

jr_01C_5792:
    ld h, [hl]                                    ; $5792: $66
    ld [hl], h                                    ; $5793: $74
    ld h, l                                       ; $5794: $65
    ld [hl], d                                    ; $5795: $72
    cp $6D                                        ; $5796: $FE $6D
    ld l, c                                       ; $5798: $69
    ld h, h                                       ; $5799: $64
    ld l, [hl]                                    ; $579A: $6E
    ld l, c                                       ; $579B: $69
    ld h, a                                       ; $579C: $67
    ld l, b                                       ; $579D: $68
    ld [hl], h                                    ; $579E: $74
    ld l, $FE                                     ; $579F: $2E $FE
    db $FD                                        ; $57A1: $FD
    sbc d                                         ; $57A2: $9A
    ld b, l                                       ; $57A3: $45
    inc e                                         ; $57A4: $1C
    ld [hl], c                                    ; $57A5: $71
    ld d, l                                       ; $57A6: $55

jr_01C_57A7:
    sbc a                                         ; $57A7: $9F
    ld c, c                                       ; $57A8: $49
    ld h, [hl]                                    ; $57A9: $66
    jr nz, jr_01C_5825                            ; $57AA: $20 $79

    ld l, a                                       ; $57AC: $6F
    ld [hl], l                                    ; $57AD: $75
    jr nz, jr_01C_5825                            ; $57AE: $20 $75

    ld [hl], e                                    ; $57B0: $73
    ld h, l                                       ; $57B1: $65
    jr nz, @+$76                                  ; $57B2: $20 $74

    ld l, b                                       ; $57B4: $68
    ld h, c                                       ; $57B5: $61
    ld [hl], h                                    ; $57B6: $74
    rst $38                                       ; $57B7: $FF
    ld l, a                                       ; $57B8: $6F
    ld l, [hl]                                    ; $57B9: $6E
    jr nz, jr_01C_581D                            ; $57BA: $20 $61

    jr nz, jr_01C_582B                            ; $57BC: $20 $6D

    ld [hl], l                                    ; $57BE: $75
    ld [hl], e                                    ; $57BF: $73
    ld l, b                                       ; $57C0: $68
    ld [hl], d                                    ; $57C1: $72
    ld l, a                                       ; $57C2: $6F
    ld l, a                                       ; $57C3: $6F
    ld l, l                                       ; $57C4: $6D
    cp $79                                        ; $57C5: $FE $79
    ld l, a                                       ; $57C7: $6F
    ld [hl], l                                    ; $57C8: $75
    jr nz, jr_01C_5842                            ; $57C9: $20 $77

    ld l, c                                       ; $57CB: $69
    ld l, h                                       ; $57CC: $6C
    ld l, h                                       ; $57CD: $6C
    jr nz, jr_01C_5837                            ; $57CE: $20 $67

    ld h, l                                       ; $57D0: $65
    ld [hl], h                                    ; $57D1: $74
    rst $38                                       ; $57D2: $FF
    ld h, c                                       ; $57D3: $61
    ld l, [hl]                                    ; $57D4: $6E
    jr nz, jr_01C_583C                            ; $57D5: $20 $65

jr_01C_57D7:
    ld l, h                                       ; $57D7: $6C
    ld l, c                                       ; $57D8: $69
    ld a, b                                       ; $57D9: $78
    ld l, c                                       ; $57DA: $69
    ld [hl], d                                    ; $57DB: $72
    jr nz, jr_01C_584D                            ; $57DC: $20 $6F

    ld h, [hl]                                    ; $57DE: $66
    cp $68                                        ; $57DF: $FE $68
    ld h, l                                       ; $57E1: $65
    ld h, c                                       ; $57E2: $61
    ld l, h                                       ; $57E3: $6C
    ld l, c                                       ; $57E4: $69
    ld l, [hl]                                    ; $57E5: $6E

jr_01C_57E6:
    ld h, a                                       ; $57E6: $67

jr_01C_57E7:
    ld l, $FE                                     ; $57E7: $2E $FE
    db $FD                                        ; $57E9: $FD
    sbc d                                         ; $57EA: $9A
    ld b, l                                       ; $57EB: $45
    inc e                                         ; $57EC: $1C
    ld [hl], c                                    ; $57ED: $71
    ld d, l                                       ; $57EE: $55
    sbc a                                         ; $57EF: $9F
    ld b, c                                       ; $57F0: $41
    ld l, b                                       ; $57F1: $68

jr_01C_57F2:
    ld l, b                                       ; $57F2: $68

jr_01C_57F3:
    inc l                                         ; $57F3: $2C
    jr nz, jr_01C_586A                            ; $57F4: $20 $74

    ld l, b                                       ; $57F6: $68
    ld h, c                                       ; $57F7: $61
    ld [hl], h                                    ; $57F8: $74
    jr nz, jr_01C_5864                            ; $57F9: $20 $69

    ld [hl], e                                    ; $57FB: $73
    rst $38                                       ; $57FC: $FF
    ld [hl], e                                    ; $57FD: $73
    ld [hl], b                                    ; $57FE: $70
    ld h, l                                       ; $57FF: $65
    ld h, e                                       ; $5800: $63
    ld l, c                                       ; $5801: $69
    ld h, c                                       ; $5802: $61
    ld l, h                                       ; $5803: $6C
    ld l, $20                                     ; $5804: $2E $20
    ld d, a                                       ; $5806: $57
    ld l, c                                       ; $5807: $69
    ld [hl], h                                    ; $5808: $74
    ld l, b                                       ; $5809: $68
    cp $74                                        ; $580A: $FE $74
    ld l, b                                       ; $580C: $68
    ld h, c                                       ; $580D: $61
    ld [hl], h                                    ; $580E: $74
    jr nz, jr_01C_588A                            ; $580F: $20 $79

    ld l, a                                       ; $5811: $6F
    ld [hl], l                                    ; $5812: $75
    jr nz, jr_01C_5878                            ; $5813: $20 $63

    ld h, c                                       ; $5815: $61
    ld l, [hl]                                    ; $5816: $6E
    rst $38                                       ; $5817: $FF
    ld h, l                                       ; $5818: $65
    ld [hl], c                                    ; $5819: $71
    ld [hl], l                                    ; $581A: $75
    ld l, c                                       ; $581B: $69
    ld [hl], b                                    ; $581C: $70

jr_01C_581D:
    jr nz, jr_01C_588C                            ; $581D: $20 $6D

    ld l, a                                       ; $581F: $6F
    ld [hl], d                                    ; $5820: $72
    ld h, l                                       ; $5821: $65
    cp $74                                        ; $5822: $FE $74
    ld l, b                                       ; $5824: $68

jr_01C_5825:
    ld h, c                                       ; $5825: $61
    ld l, [hl]                                    ; $5826: $6E
    jr nz, jr_01C_589D                            ; $5827: $20 $74

    ld h, l                                       ; $5829: $65
    ld l, [hl]                                    ; $582A: $6E

jr_01C_582B:
    jr nz, jr_01C_589F                            ; $582B: $20 $72

    ld l, c                                       ; $582D: $69
    ld l, [hl]                                    ; $582E: $6E
    ld h, a                                       ; $582F: $67
    ld [hl], e                                    ; $5830: $73
    ld l, $FE                                     ; $5831: $2E $FE
    db $FD                                        ; $5833: $FD
    sbc d                                         ; $5834: $9A
    ld b, l                                       ; $5835: $45
    inc e                                         ; $5836: $1C

jr_01C_5837:
    ld [hl], c                                    ; $5837: $71
    ld d, l                                       ; $5838: $55
    sbc a                                         ; $5839: $9F
    ld c, c                                       ; $583A: $49
    ld h, [hl]                                    ; $583B: $66

jr_01C_583C:
    jr nz, jr_01C_58B7                            ; $583C: $20 $79

    ld l, a                                       ; $583E: $6F
    ld [hl], l                                    ; $583F: $75
    jr nz, jr_01C_58B7                            ; $5840: $20 $75

jr_01C_5842:
    ld [hl], e                                    ; $5842: $73
    ld h, l                                       ; $5843: $65
    rst $38                                       ; $5844: $FF
    ld [hl], h                                    ; $5845: $74
    ld l, b                                       ; $5846: $68
    ld h, c                                       ; $5847: $61
    ld [hl], h                                    ; $5848: $74
    jr nz, jr_01C_58BF                            ; $5849: $20 $74

    ld l, a                                       ; $584B: $6F
    ld l, a                                       ; $584C: $6F

jr_01C_584D:
    jr nz, jr_01C_58BC                            ; $584D: $20 $6D

    ld h, c                                       ; $584F: $61
    ld l, [hl]                                    ; $5850: $6E
    ld a, c                                       ; $5851: $79
    cp $74                                        ; $5852: $FE $74
    ld l, c                                       ; $5854: $69
    ld l, l                                       ; $5855: $6D
    ld h, l                                       ; $5856: $65
    ld [hl], e                                    ; $5857: $73
    inc l                                         ; $5858: $2C
    jr nz, jr_01C_58D4                            ; $5859: $20 $79

    ld l, a                                       ; $585B: $6F
    ld [hl], l                                    ; $585C: $75
    daa                                           ; $585D: $27
    ld l, h                                       ; $585E: $6C
    ld l, h                                       ; $585F: $6C
    rst $38                                       ; $5860: $FF
    ld [hl], h                                    ; $5861: $74
    ld [hl], l                                    ; $5862: $75
    ld [hl], d                                    ; $5863: $72

jr_01C_5864:
    ld l, [hl]                                    ; $5864: $6E
    jr nz, jr_01C_58D0                            ; $5865: $20 $69

    ld l, [hl]                                    ; $5867: $6E
    ld [hl], e                                    ; $5868: $73
    ld l, c                                       ; $5869: $69

jr_01C_586A:
    ld h, h                                       ; $586A: $64
    ld h, l                                       ; $586B: $65
    cp $6F                                        ; $586C: $FE $6F
    ld [hl], l                                    ; $586E: $75
    ld [hl], h                                    ; $586F: $74
    ld l, $FE                                     ; $5870: $2E $FE
    db $FD                                        ; $5872: $FD
    sbc d                                         ; $5873: $9A
    ld b, l                                       ; $5874: $45
    inc e                                         ; $5875: $1C
    ld [hl], c                                    ; $5876: $71
    ld d, l                                       ; $5877: $55

jr_01C_5878:
    sbc a                                         ; $5878: $9F
    ld c, b                                       ; $5879: $48
    ld h, l                                       ; $587A: $65
    ld a, c                                       ; $587B: $79
    ld hl, $4920                                  ; $587C: $21 $20 $49
    jr nz, @+$76                                  ; $587F: $20 $74

    ld l, b                                       ; $5881: $68
    ld l, c                                       ; $5882: $69
    ld l, [hl]                                    ; $5883: $6E
    ld l, e                                       ; $5884: $6B
    rst $38                                       ; $5885: $FF
    ld [hl], h                                    ; $5886: $74
    ld l, b                                       ; $5887: $68
    ld l, c                                       ; $5888: $69
    ld [hl], e                                    ; $5889: $73

jr_01C_588A:
    jr nz, @+$77                                  ; $588A: $20 $75

jr_01C_588C:
    ld [hl], e                                    ; $588C: $73
    ld h, l                                       ; $588D: $65
    ld h, h                                       ; $588E: $64
    jr nz, jr_01C_5905                            ; $588F: $20 $74

    ld l, a                                       ; $5891: $6F
    cp $62                                        ; $5892: $FE $62
    ld h, l                                       ; $5894: $65
    ld l, h                                       ; $5895: $6C
    ld l, a                                       ; $5896: $6F
    ld l, [hl]                                    ; $5897: $6E
    ld h, a                                       ; $5898: $67
    jr nz, @+$76                                  ; $5899: $20 $74

    ld l, a                                       ; $589B: $6F
    rst $38                                       ; $589C: $FF

jr_01C_589D:
    ld l, l                                       ; $589D: $6D
    ld a, c                                       ; $589E: $79

jr_01C_589F:
    jr nz, jr_01C_5906                            ; $589F: $20 $65

    ld [hl], e                                    ; $58A1: $73
    ld [hl], h                                    ; $58A2: $74
    ld [hl], d                                    ; $58A3: $72
    ld h, c                                       ; $58A4: $61
    ld l, [hl]                                    ; $58A5: $6E
    ld h, a                                       ; $58A6: $67
    ld h, l                                       ; $58A7: $65
    ld h, h                                       ; $58A8: $64
    cp $6D                                        ; $58A9: $FE $6D
    ld l, a                                       ; $58AB: $6F
    ld [hl], h                                    ; $58AC: $74
    ld l, b                                       ; $58AD: $68
    ld h, l                                       ; $58AE: $65
    ld [hl], d                                    ; $58AF: $72
    ld hl, $59FE                                  ; $58B0: $21 $FE $59
    ld l, a                                       ; $58B3: $6F
    ld [hl], l                                    ; $58B4: $75
    jr nz, jr_01C_591A                            ; $58B5: $20 $63

jr_01C_58B7:
    ld h, c                                       ; $58B7: $61
    ld l, [hl]                                    ; $58B8: $6E
    jr nz, jr_01C_5926                            ; $58B9: $20 $6B

    ld h, l                                       ; $58BB: $65

jr_01C_58BC:
    ld h, l                                       ; $58BC: $65
    ld [hl], b                                    ; $58BD: $70
    rst $38                                       ; $58BE: $FF

jr_01C_58BF:
    ld l, c                                       ; $58BF: $69
    ld [hl], h                                    ; $58C0: $74
    ld l, $FE                                     ; $58C1: $2E $FE
    db $FD                                        ; $58C3: $FD
    sbc d                                         ; $58C4: $9A
    ld b, l                                       ; $58C5: $45
    inc e                                         ; $58C6: $1C
    ld [hl], c                                    ; $58C7: $71
    ld d, l                                       ; $58C8: $55
    sbc a                                         ; $58C9: $9F
    ld e, c                                       ; $58CA: $59
    ld l, a                                       ; $58CB: $6F
    ld [hl], l                                    ; $58CC: $75
    jr nz, @+$65                                  ; $58CD: $20 $63

    ld h, c                                       ; $58CF: $61

jr_01C_58D0:
    ld l, [hl]                                    ; $58D0: $6E
    jr nz, jr_01C_5948                            ; $58D1: $20 $75

    ld [hl], e                                    ; $58D3: $73

jr_01C_58D4:
    ld h, l                                       ; $58D4: $65
    rst $38                                       ; $58D5: $FF
    ld [hl], h                                    ; $58D6: $74
    ld l, b                                       ; $58D7: $68
    ld h, c                                       ; $58D8: $61
    ld [hl], h                                    ; $58D9: $74
    jr nz, @+$76                                  ; $58DA: $20 $74

    ld l, a                                       ; $58DC: $6F
    cp $65                                        ; $58DD: $FE $65
    ld a, b                                       ; $58DF: $78
    ld h, [hl]                                    ; $58E0: $66
    ld l, a                                       ; $58E1: $6F
    ld l, h                                       ; $58E2: $6C
    ld l, c                                       ; $58E3: $69
    ld h, c                                       ; $58E4: $61
    ld [hl], h                                    ; $58E5: $74
    ld h, l                                       ; $58E6: $65
    rst $38                                       ; $58E7: $FF
    ld h, c                                       ; $58E8: $61
    jr nz, jr_01C_5962                            ; $58E9: $20 $77

    ld l, a                                       ; $58EB: $6F
    ld [hl], d                                    ; $58EC: $72
    halt                                          ; $58ED: $76
    ld h, l                                       ; $58EE: $65
    ld l, h                                       ; $58EF: $6C
    ld l, c                                       ; $58F0: $69
    ld l, [hl]                                    ; $58F1: $6E
    ld h, l                                       ; $58F2: $65
    ld hl, $FDFE                                  ; $58F3: $21 $FE $FD
    sbc d                                         ; $58F6: $9A
    ld b, l                                       ; $58F7: $45
    inc e                                         ; $58F8: $1C
    ld [hl], c                                    ; $58F9: $71
    ld d, l                                       ; $58FA: $55
    sbc a                                         ; $58FB: $9F
    ld d, h                                       ; $58FC: $54
    ld l, b                                       ; $58FD: $68
    ld h, c                                       ; $58FE: $61
    ld [hl], h                                    ; $58FF: $74
    jr nz, jr_01C_5965                            ; $5900: $20 $63

    ld h, c                                       ; $5902: $61
    ld [hl], l                                    ; $5903: $75
    ld [hl], e                                    ; $5904: $73

jr_01C_5905:
    ld h, l                                       ; $5905: $65

jr_01C_5906:
    ld [hl], e                                    ; $5906: $73
    rst $38                                       ; $5907: $FF
    ld h, c                                       ; $5908: $61
    jr nz, jr_01C_5958                            ; $5909: $20 $4D

    ld h, c                                       ; $590B: $61
    ld h, a                                       ; $590C: $67
    ld l, c                                       ; $590D: $69
    jr nz, jr_01C_5984                            ; $590E: $20 $74

    ld l, a                                       ; $5910: $6F
    cp $67                                        ; $5911: $FE $67
    ld [hl], d                                    ; $5913: $72
    ld l, a                                       ; $5914: $6F
    ld [hl], a                                    ; $5915: $77
    jr nz, jr_01C_5979                            ; $5916: $20 $61

    jr nz, jr_01C_5982                            ; $5918: $20 $68

jr_01C_591A:
    ld l, a                                       ; $591A: $6F
    ld [hl], d                                    ; $591B: $72
    ld l, [hl]                                    ; $591C: $6E
    ld l, $FE                                     ; $591D: $2E $FE
    db $FD                                        ; $591F: $FD
    sbc d                                         ; $5920: $9A
    ld b, l                                       ; $5921: $45
    inc e                                         ; $5922: $1C
    ld [hl], c                                    ; $5923: $71
    ld d, l                                       ; $5924: $55
    sbc a                                         ; $5925: $9F

jr_01C_5926:
    ld b, c                                       ; $5926: $41
    ld c, b                                       ; $5927: $48
    ld c, b                                       ; $5928: $48
    ld hl, $4FFE                                  ; $5929: $21 $FE $4F
    ld l, [hl]                                    ; $592C: $6E
    ld h, l                                       ; $592D: $65
    jr nz, jr_01C_599F                            ; $592E: $20 $6F

    ld h, [hl]                                    ; $5930: $66
    jr nz, jr_01C_59A7                            ; $5931: $20 $74

    ld l, b                                       ; $5933: $68
    ld l, a                                       ; $5934: $6F
    ld [hl], e                                    ; $5935: $73
    ld h, l                                       ; $5936: $65
    ld hl, $54FE                                  ; $5937: $21 $FE $54
    ld l, b                                       ; $593A: $68
    ld h, c                                       ; $593B: $61
    ld [hl], h                                    ; $593C: $74
    jr nz, jr_01C_59B3                            ; $593D: $20 $74

    ld [hl], l                                    ; $593F: $75
    ld [hl], d                                    ; $5940: $72
    ld l, [hl]                                    ; $5941: $6E
    ld [hl], e                                    ; $5942: $73
    jr nz, jr_01C_59BE                            ; $5943: $20 $79

    ld l, a                                       ; $5945: $6F
    ld [hl], l                                    ; $5946: $75
    rst $38                                       ; $5947: $FF

jr_01C_5948:
    ld l, c                                       ; $5948: $69
    ld l, [hl]                                    ; $5949: $6E
    ld [hl], h                                    ; $594A: $74
    ld l, a                                       ; $594B: $6F
    jr nz, jr_01C_59AF                            ; $594C: $20 $61

    ld l, [hl]                                    ; $594E: $6E
    jr nz, @+$67                                  ; $594F: $20 $65

    halt                                          ; $5951: $76
    ld l, c                                       ; $5952: $69
    ld l, h                                       ; $5953: $6C
    cp $44                                        ; $5954: $FE $44
    ld [hl], d                                    ; $5956: $72
    ld h, l                                       ; $5957: $65

jr_01C_5958:
    ld h, c                                       ; $5958: $61
    ld l, l                                       ; $5959: $6D
    jr nz, jr_01C_599F                            ; $595A: $20 $43

    ld [hl], d                                    ; $595C: $72
    ld h, l                                       ; $595D: $65
    ld h, c                                       ; $595E: $61
    ld [hl], h                                    ; $595F: $74
    ld [hl], l                                    ; $5960: $75
    ld [hl], d                                    ; $5961: $72

jr_01C_5962:
    ld h, l                                       ; $5962: $65
    ld l, $FE                                     ; $5963: $2E $FE

jr_01C_5965:
    ld e, c                                       ; $5965: $59
    ld l, a                                       ; $5966: $6F
    ld [hl], l                                    ; $5967: $75
    jr nz, jr_01C_59DD                            ; $5968: $20 $73

    ld l, b                                       ; $596A: $68
    ld l, a                                       ; $596B: $6F
    ld [hl], l                                    ; $596C: $75
    ld l, h                                       ; $596D: $6C
    ld h, h                                       ; $596E: $64
    rst $38                                       ; $596F: $FF
    ld h, h                                       ; $5970: $64
    ld h, l                                       ; $5971: $65
    ld [hl], e                                    ; $5972: $73
    ld [hl], h                                    ; $5973: $74
    ld [hl], d                                    ; $5974: $72
    ld l, a                                       ; $5975: $6F
    ld a, c                                       ; $5976: $79
    jr nz, jr_01C_59E2                            ; $5977: $20 $69

jr_01C_5979:
    ld [hl], h                                    ; $5979: $74
    cp $69                                        ; $597A: $FE $69
    ld l, l                                       ; $597C: $6D
    ld l, l                                       ; $597D: $6D
    ld h, l                                       ; $597E: $65
    ld h, h                                       ; $597F: $64
    ld l, c                                       ; $5980: $69
    ld h, c                                       ; $5981: $61

jr_01C_5982:
    ld [hl], h                                    ; $5982: $74
    ld h, l                                       ; $5983: $65

jr_01C_5984:
    ld l, h                                       ; $5984: $6C
    ld a, c                                       ; $5985: $79
    ld hl, $FDFE                                  ; $5986: $21 $FE $FD
    sbc d                                         ; $5989: $9A
    ld b, l                                       ; $598A: $45
    inc e                                         ; $598B: $1C
    ld [hl], c                                    ; $598C: $71
    ld d, l                                       ; $598D: $55
    sbc a                                         ; $598E: $9F
    ld d, h                                       ; $598F: $54
    ld l, b                                       ; $5990: $68
    ld h, c                                       ; $5991: $61
    ld [hl], h                                    ; $5992: $74
    jr nz, jr_01C_59F8                            ; $5993: $20 $63

    ld h, c                                       ; $5995: $61
    ld [hl], l                                    ; $5996: $75
    ld [hl], e                                    ; $5997: $73
    ld h, l                                       ; $5998: $65
    ld [hl], e                                    ; $5999: $73
    rst $38                                       ; $599A: $FF
    ld h, d                                       ; $599B: $62
    ld l, h                                       ; $599C: $6C
    ld l, c                                       ; $599D: $69
    ld l, [hl]                                    ; $599E: $6E

jr_01C_599F:
    ld h, h                                       ; $599F: $64
    ld l, [hl]                                    ; $59A0: $6E
    ld h, l                                       ; $59A1: $65
    ld [hl], e                                    ; $59A2: $73
    ld [hl], e                                    ; $59A3: $73
    jr nz, jr_01C_5A0F                            ; $59A4: $20 $69

    ld l, [hl]                                    ; $59A6: $6E

jr_01C_59A7:
    cp $73                                        ; $59A7: $FE $73
    ld l, l                                       ; $59A9: $6D
    ld h, c                                       ; $59AA: $61
    ld l, h                                       ; $59AB: $6C
    ld l, h                                       ; $59AC: $6C
    jr nz, jr_01C_5A21                            ; $59AD: $20 $72

jr_01C_59AF:
    ld l, a                                       ; $59AF: $6F
    ld h, h                                       ; $59B0: $64
    ld h, l                                       ; $59B1: $65
    ld l, [hl]                                    ; $59B2: $6E

jr_01C_59B3:
    ld [hl], h                                    ; $59B3: $74
    ld [hl], e                                    ; $59B4: $73
    ld l, $FE                                     ; $59B5: $2E $FE
    db $FD                                        ; $59B7: $FD
    sbc d                                         ; $59B8: $9A
    ld b, l                                       ; $59B9: $45
    inc e                                         ; $59BA: $1C
    ld [hl], c                                    ; $59BB: $71
    ld d, l                                       ; $59BC: $55
    sbc a                                         ; $59BD: $9F

jr_01C_59BE:
    ld c, c                                       ; $59BE: $49
    ld h, [hl]                                    ; $59BF: $66
    jr nz, jr_01C_5A27                            ; $59C0: $20 $65

    halt                                          ; $59C2: $76
    ld h, l                                       ; $59C3: $65
    ld [hl], d                                    ; $59C4: $72
    jr nz, jr_01C_5A40                            ; $59C5: $20 $79

    ld l, a                                       ; $59C7: $6F
    ld [hl], l                                    ; $59C8: $75
    rst $38                                       ; $59C9: $FF
    ld h, [hl]                                    ; $59CA: $66
    ld l, c                                       ; $59CB: $69
    ld l, [hl]                                    ; $59CC: $6E
    ld h, h                                       ; $59CD: $64
    jr nz, jr_01C_5A31                            ; $59CE: $20 $61

    jr nz, @+$72                                  ; $59D0: $20 $70

    ld l, c                                       ; $59D2: $69
    ld h, e                                       ; $59D3: $63
    ld [hl], h                                    ; $59D4: $74
    ld [hl], l                                    ; $59D5: $75
    ld [hl], d                                    ; $59D6: $72
    ld h, l                                       ; $59D7: $65
    cp $6F                                        ; $59D8: $FE $6F
    ld h, [hl]                                    ; $59DA: $66
    jr nz, jr_01C_5A3E                            ; $59DB: $20 $61

jr_01C_59DD:
    jr nz, @+$65                                  ; $59DD: $20 $63

    ld h, c                                       ; $59DF: $61
    ld [hl], h                                    ; $59E0: $74
    inc l                                         ; $59E1: $2C

jr_01C_59E2:
    jr nz, jr_01C_5A5D                            ; $59E2: $20 $79

    ld l, a                                       ; $59E4: $6F
    ld [hl], l                                    ; $59E5: $75
    rst $38                                       ; $59E6: $FF
    ld h, e                                       ; $59E7: $63
    ld h, c                                       ; $59E8: $61
    ld l, [hl]                                    ; $59E9: $6E
    jr nz, jr_01C_5A61                            ; $59EA: $20 $75

    ld [hl], e                                    ; $59EC: $73
    ld h, l                                       ; $59ED: $65
    jr nz, jr_01C_5A64                            ; $59EE: $20 $74

    ld l, b                                       ; $59F0: $68
    ld h, c                                       ; $59F1: $61
    ld [hl], h                                    ; $59F2: $74
    cp $74                                        ; $59F3: $FE $74
    ld l, a                                       ; $59F5: $6F
    jr nz, jr_01C_5A6C                            ; $59F6: $20 $74

jr_01C_59F8:
    ld [hl], l                                    ; $59F8: $75
    ld [hl], d                                    ; $59F9: $72
    ld l, [hl]                                    ; $59FA: $6E
    jr nz, jr_01C_5A66                            ; $59FB: $20 $69

    ld [hl], h                                    ; $59FD: $74
    rst $38                                       ; $59FE: $FF
    ld l, c                                       ; $59FF: $69
    ld l, [hl]                                    ; $5A00: $6E
    ld [hl], h                                    ; $5A01: $74
    ld l, a                                       ; $5A02: $6F
    jr nz, jr_01C_5A66                            ; $5A03: $20 $61

    jr nz, jr_01C_5A77                            ; $5A05: $20 $70

    ld l, c                                       ; $5A07: $69
    ld h, e                                       ; $5A08: $63
    ld [hl], h                                    ; $5A09: $74
    ld [hl], l                                    ; $5A0A: $75
    ld [hl], d                                    ; $5A0B: $72
    ld h, l                                       ; $5A0C: $65
    cp $6F                                        ; $5A0D: $FE $6F

jr_01C_5A0F:
    ld h, [hl]                                    ; $5A0F: $66
    jr nz, @+$63                                  ; $5A10: $20 $61

    jr nz, @+$79                                  ; $5A12: $20 $77

    ld h, l                                       ; $5A14: $65
    ld h, l                                       ; $5A15: $65
    ld h, d                                       ; $5A16: $62
    ld l, a                                       ; $5A17: $6F
    ld l, $FE                                     ; $5A18: $2E $FE
    db $FD                                        ; $5A1A: $FD
    sbc d                                         ; $5A1B: $9A
    ld b, l                                       ; $5A1C: $45
    inc e                                         ; $5A1D: $1C
    ld [hl], c                                    ; $5A1E: $71
    ld d, l                                       ; $5A1F: $55
    sbc a                                         ; $5A20: $9F

jr_01C_5A21:
    ld d, h                                       ; $5A21: $54
    ld l, b                                       ; $5A22: $68
    ld h, c                                       ; $5A23: $61
    ld [hl], h                                    ; $5A24: $74
    jr nz, jr_01C_5A94                            ; $5A25: $20 $6D

jr_01C_5A27:
    ld h, c                                       ; $5A27: $61
    ld l, e                                       ; $5A28: $6B
    ld h, l                                       ; $5A29: $65
    ld [hl], e                                    ; $5A2A: $73
    rst $38                                       ; $5A2B: $FF
    ld a, c                                       ; $5A2C: $79
    ld l, a                                       ; $5A2D: $6F
    ld [hl], l                                    ; $5A2E: $75
    daa                                           ; $5A2F: $27
    ld [hl], d                                    ; $5A30: $72

jr_01C_5A31:
    ld h, l                                       ; $5A31: $65
    jr nz, jr_01C_5A9A                            ; $5A32: $20 $66

    ld h, c                                       ; $5A34: $61
    ld h, e                                       ; $5A35: $63
    ld h, l                                       ; $5A36: $65
    cp $74                                        ; $5A37: $FE $74
    ld [hl], l                                    ; $5A39: $75
    ld [hl], d                                    ; $5A3A: $72
    ld l, [hl]                                    ; $5A3B: $6E
    jr nz, @+$64                                  ; $5A3C: $20 $62

jr_01C_5A3E:
    ld l, h                                       ; $5A3E: $6C
    ld [hl], l                                    ; $5A3F: $75

jr_01C_5A40:
    ld h, l                                       ; $5A40: $65
    ld l, $FE                                     ; $5A41: $2E $FE
    db $FD                                        ; $5A43: $FD
    sbc d                                         ; $5A44: $9A
    ld b, l                                       ; $5A45: $45
    inc e                                         ; $5A46: $1C
    ld [hl], c                                    ; $5A47: $71
    ld d, l                                       ; $5A48: $55
    sbc a                                         ; $5A49: $9F
    ld d, h                                       ; $5A4A: $54
    ld l, b                                       ; $5A4B: $68
    ld h, c                                       ; $5A4C: $61
    ld [hl], h                                    ; $5A4D: $74
    jr nz, @+$79                                  ; $5A4E: $20 $77

    ld l, c                                       ; $5A50: $69
    ld l, h                                       ; $5A51: $6C
    ld l, h                                       ; $5A52: $6C
    jr nz, jr_01C_5AC8                            ; $5A53: $20 $73

    ld h, l                                       ; $5A55: $65
    ld [hl], h                                    ; $5A56: $74
    rst $38                                       ; $5A57: $FF
    ld h, c                                       ; $5A58: $61
    ld l, [hl]                                    ; $5A59: $6E
    ld a, c                                       ; $5A5A: $79
    jr nz, jr_01C_5AC3                            ; $5A5B: $20 $66

jr_01C_5A5D:
    ld [hl], l                                    ; $5A5D: $75
    ld [hl], d                                    ; $5A5E: $72
    ld [hl], d                                    ; $5A5F: $72
    ld a, c                                       ; $5A60: $79

jr_01C_5A61:
    cp $63                                        ; $5A61: $FE $63
    ld [hl], d                                    ; $5A63: $72

jr_01C_5A64:
    ld h, l                                       ; $5A64: $65
    ld h, c                                       ; $5A65: $61

jr_01C_5A66:
    ld [hl], h                                    ; $5A66: $74
    ld [hl], l                                    ; $5A67: $75
    ld [hl], d                                    ; $5A68: $72
    ld h, l                                       ; $5A69: $65
    jr nz, jr_01C_5ADB                            ; $5A6A: $20 $6F

jr_01C_5A6C:
    ld l, [hl]                                    ; $5A6C: $6E
    rst $38                                       ; $5A6D: $FF
    ld h, [hl]                                    ; $5A6E: $66
    ld l, c                                       ; $5A6F: $69
    ld [hl], d                                    ; $5A70: $72
    ld h, l                                       ; $5A71: $65
    ld l, $FE                                     ; $5A72: $2E $FE
    db $FD                                        ; $5A74: $FD
    sbc d                                         ; $5A75: $9A
    ld b, l                                       ; $5A76: $45

jr_01C_5A77:
    inc e                                         ; $5A77: $1C
    ld [hl], c                                    ; $5A78: $71
    ld d, l                                       ; $5A79: $55
    sbc a                                         ; $5A7A: $9F
    ld c, c                                       ; $5A7B: $49
    ld h, [hl]                                    ; $5A7C: $66
    jr nz, jr_01C_5AF8                            ; $5A7D: $20 $79

    ld l, a                                       ; $5A7F: $6F
    ld [hl], l                                    ; $5A80: $75
    jr nz, jr_01C_5AEB                            ; $5A81: $20 $68

    ld h, c                                       ; $5A83: $61
    halt                                          ; $5A84: $76
    ld h, l                                       ; $5A85: $65
    rst $38                                       ; $5A86: $FF
    ld h, c                                       ; $5A87: $61
    ld l, [hl]                                    ; $5A88: $6E
    ld a, c                                       ; $5A89: $79
    jr nz, jr_01C_5AF2                            ; $5A8A: $20 $66

    ld l, a                                       ; $5A8C: $6F
    ld l, a                                       ; $5A8D: $6F
    ld h, h                                       ; $5A8E: $64
    ld l, $20                                     ; $5A8F: $2E $20
    ld [hl], h                                    ; $5A91: $74
    ld l, b                                       ; $5A92: $68
    ld h, c                                       ; $5A93: $61

jr_01C_5A94:
    ld [hl], h                                    ; $5A94: $74
    cp $77                                        ; $5A95: $FE $77
    ld l, c                                       ; $5A97: $69
    ld l, h                                       ; $5A98: $6C
    ld l, h                                       ; $5A99: $6C

jr_01C_5A9A:
    jr nz, jr_01C_5AFF                            ; $5A9A: $20 $63

    ld l, a                                       ; $5A9C: $6F
    ld l, a                                       ; $5A9D: $6F
    ld l, e                                       ; $5A9E: $6B
    jr nz, jr_01C_5B0A                            ; $5A9F: $20 $69

    ld [hl], h                                    ; $5AA1: $74
    rst $38                                       ; $5AA2: $FF
    ld h, [hl]                                    ; $5AA3: $66
    ld l, a                                       ; $5AA4: $6F
    ld [hl], d                                    ; $5AA5: $72
    jr nz, jr_01C_5B21                            ; $5AA6: $20 $79

    ld l, a                                       ; $5AA8: $6F
    ld [hl], l                                    ; $5AA9: $75
    ld l, $FE                                     ; $5AAA: $2E $FE
    db $FD                                        ; $5AAC: $FD
    sbc d                                         ; $5AAD: $9A
    ld b, l                                       ; $5AAE: $45
    inc e                                         ; $5AAF: $1C
    ld [hl], c                                    ; $5AB0: $71
    ld d, l                                       ; $5AB1: $55
    sbc a                                         ; $5AB2: $9F
    ld d, h                                       ; $5AB3: $54
    ld l, b                                       ; $5AB4: $68
    ld h, c                                       ; $5AB5: $61
    ld [hl], h                                    ; $5AB6: $74
    jr nz, jr_01C_5B1C                            ; $5AB7: $20 $63

    ld h, c                                       ; $5AB9: $61
    ld [hl], l                                    ; $5ABA: $75
    ld [hl], e                                    ; $5ABB: $73
    ld h, l                                       ; $5ABC: $65
    ld [hl], e                                    ; $5ABD: $73
    rst $38                                       ; $5ABE: $FF
    ld l, c                                       ; $5ABF: $69
    ld [hl], h                                    ; $5AC0: $74
    ld h, e                                       ; $5AC1: $63
    ld l, b                                       ; $5AC2: $68

jr_01C_5AC3:
    ld l, c                                       ; $5AC3: $69
    ld l, [hl]                                    ; $5AC4: $6E
    ld h, a                                       ; $5AC5: $67
    ld l, $FE                                     ; $5AC6: $2E $FE

jr_01C_5AC8:
    db $FD                                        ; $5AC8: $FD
    sbc d                                         ; $5AC9: $9A
    ld b, l                                       ; $5ACA: $45
    inc e                                         ; $5ACB: $1C
    ld [hl], c                                    ; $5ACC: $71
    ld d, l                                       ; $5ACD: $55
    sbc a                                         ; $5ACE: $9F
    ld d, h                                       ; $5ACF: $54
    ld l, b                                       ; $5AD0: $68
    ld l, c                                       ; $5AD1: $69
    ld [hl], e                                    ; $5AD2: $73
    jr nz, jr_01C_5B44                            ; $5AD3: $20 $6F

    ld l, [hl]                                    ; $5AD5: $6E
    ld h, l                                       ; $5AD6: $65
    rst $38                                       ; $5AD7: $FF
    ld [hl], e                                    ; $5AD8: $73
    ld l, l                                       ; $5AD9: $6D
    ld h, l                                       ; $5ADA: $65

jr_01C_5ADB:
    ld l, h                                       ; $5ADB: $6C
    ld l, h                                       ; $5ADC: $6C
    ld [hl], e                                    ; $5ADD: $73
    jr nz, jr_01C_5B45                            ; $5ADE: $20 $65

    ld a, b                                       ; $5AE0: $78
    ld h, c                                       ; $5AE1: $61
    ld h, e                                       ; $5AE2: $63
    ld [hl], h                                    ; $5AE3: $74
    ld l, h                                       ; $5AE4: $6C
    ld a, c                                       ; $5AE5: $79
    cp $6C                                        ; $5AE6: $FE $6C
    ld l, c                                       ; $5AE8: $69
    ld l, e                                       ; $5AE9: $6B
    ld h, l                                       ; $5AEA: $65

jr_01C_5AEB:
    jr nz, @+$63                                  ; $5AEB: $20 $61

    jr nz, jr_01C_5B51                            ; $5AED: $20 $62

    ld h, c                                       ; $5AEF: $61
    ld h, d                                       ; $5AF0: $62
    ld a, c                                       ; $5AF1: $79

jr_01C_5AF2:
    rst $38                                       ; $5AF2: $FF
    ld h, d                                       ; $5AF3: $62
    ld [hl], d                                    ; $5AF4: $72
    ld [hl], l                                    ; $5AF5: $75
    ld h, d                                       ; $5AF6: $62
    daa                                           ; $5AF7: $27

jr_01C_5AF8:
    ld [hl], e                                    ; $5AF8: $73
    jr nz, jr_01C_5B61                            ; $5AF9: $20 $66

    ld l, c                                       ; $5AFB: $69
    ld [hl], d                                    ; $5AFC: $72
    ld [hl], e                                    ; $5AFD: $73
    ld [hl], h                                    ; $5AFE: $74

jr_01C_5AFF:
    cp $76                                        ; $5AFF: $FE $76
    ld l, a                                       ; $5B01: $6F
    ld l, l                                       ; $5B02: $6D
    ld l, c                                       ; $5B03: $69
    ld [hl], h                                    ; $5B04: $74
    ld l, $FE                                     ; $5B05: $2E $FE
    ld c, c                                       ; $5B07: $49
    jr nz, jr_01C_5B71                            ; $5B08: $20 $67

jr_01C_5B0A:
    ld h, l                                       ; $5B0A: $65
    ld [hl], h                                    ; $5B0B: $74
    jr nz, @+$63                                  ; $5B0C: $20 $61

    ld l, h                                       ; $5B0E: $6C
    ld l, h                                       ; $5B0F: $6C
    rst $38                                       ; $5B10: $FF
    ld l, [hl]                                    ; $5B11: $6E
    ld l, a                                       ; $5B12: $6F
    ld [hl], e                                    ; $5B13: $73
    ld [hl], h                                    ; $5B14: $74
    ld h, c                                       ; $5B15: $61
    ld l, h                                       ; $5B16: $6C
    ld h, a                                       ; $5B17: $67
    ld l, c                                       ; $5B18: $69
    ld h, e                                       ; $5B19: $63
    cp $6A                                        ; $5B1A: $FE $6A

jr_01C_5B1C:
    ld [hl], l                                    ; $5B1C: $75
    ld [hl], e                                    ; $5B1D: $73
    ld [hl], h                                    ; $5B1E: $74
    jr nz, @+$76                                  ; $5B1F: $20 $74

jr_01C_5B21:
    ld l, b                                       ; $5B21: $68
    ld l, c                                       ; $5B22: $69
    ld l, [hl]                                    ; $5B23: $6E
    ld l, e                                       ; $5B24: $6B
    ld l, c                                       ; $5B25: $69
    ld l, [hl]                                    ; $5B26: $6E
    ld h, a                                       ; $5B27: $67
    rst $38                                       ; $5B28: $FF
    ld h, c                                       ; $5B29: $61
    ld h, d                                       ; $5B2A: $62
    ld l, a                                       ; $5B2B: $6F
    ld [hl], l                                    ; $5B2C: $75
    ld [hl], h                                    ; $5B2D: $74
    jr nz, jr_01C_5B99                            ; $5B2E: $20 $69

    ld [hl], h                                    ; $5B30: $74
    ld l, $FE                                     ; $5B31: $2E $FE
    db $FD                                        ; $5B33: $FD
    sbc d                                         ; $5B34: $9A
    ld b, l                                       ; $5B35: $45
    inc e                                         ; $5B36: $1C
    ld [hl], c                                    ; $5B37: $71
    ld d, l                                       ; $5B38: $55
    sbc a                                         ; $5B39: $9F
    ld c, c                                       ; $5B3A: $49
    jr nz, jr_01C_5BA5                            ; $5B3B: $20 $68

    ld h, l                                       ; $5B3D: $65
    ld h, c                                       ; $5B3E: $61
    ld [hl], d                                    ; $5B3F: $72
    jr nz, jr_01C_5BB6                            ; $5B40: $20 $74

    ld l, b                                       ; $5B42: $68
    ld h, l                                       ; $5B43: $65

jr_01C_5B44:
    rst $38                                       ; $5B44: $FF

jr_01C_5B45:
    ld b, l                                       ; $5B45: $45
    ld l, h                                       ; $5B46: $6C
    ld h, h                                       ; $5B47: $64
    ld h, l                                       ; $5B48: $65
    ld [hl], d                                    ; $5B49: $72
    jr nz, jr_01C_5BBB                            ; $5B4A: $20 $6F

    ld h, [hl]                                    ; $5B4C: $66
    cp $56                                        ; $5B4D: $FE $56
    ld h, c                                       ; $5B4F: $61
    ld [hl], e                                    ; $5B50: $73

jr_01C_5B51:
    ld l, b                                       ; $5B51: $68
    jr nz, jr_01C_5BA2                            ; $5B52: $20 $4E

    ld h, c                                       ; $5B54: $61
    ld [hl], d                                    ; $5B55: $72
    ld l, a                                       ; $5B56: $6F
    ld l, a                                       ; $5B57: $6F
    ld l, l                                       ; $5B58: $6D
    rst $38                                       ; $5B59: $FF
    ld l, c                                       ; $5B5A: $69
    ld [hl], e                                    ; $5B5B: $73
    jr nz, jr_01C_5BBF                            ; $5B5C: $20 $61

    ld l, h                                       ; $5B5E: $6C
    ld l, h                                       ; $5B5F: $6C
    ld h, l                                       ; $5B60: $65

jr_01C_5B61:
    ld [hl], d                                    ; $5B61: $72
    ld h, a                                       ; $5B62: $67
    ld l, c                                       ; $5B63: $69
    ld h, e                                       ; $5B64: $63
    cp $74                                        ; $5B65: $FE $74
    ld l, a                                       ; $5B67: $6F
    jr nz, @+$76                                  ; $5B68: $20 $74

    ld l, b                                       ; $5B6A: $68
    ld l, a                                       ; $5B6B: $6F
    ld [hl], e                                    ; $5B6C: $73
    ld h, l                                       ; $5B6D: $65
    ld l, $FE                                     ; $5B6E: $2E $FE
    db $FD                                        ; $5B70: $FD

jr_01C_5B71:
    sbc d                                         ; $5B71: $9A
    ld b, l                                       ; $5B72: $45
    inc e                                         ; $5B73: $1C
    ld [hl], c                                    ; $5B74: $71
    ld d, l                                       ; $5B75: $55

Jump_01C_5B76:
    sbc a                                         ; $5B76: $9F
    ld e, c                                       ; $5B77: $59
    ld l, a                                       ; $5B78: $6F
    ld [hl], l                                    ; $5B79: $75
    jr nz, jr_01C_5BDF                            ; $5B7A: $20 $63

    ld h, c                                       ; $5B7C: $61
    ld l, [hl]                                    ; $5B7D: $6E
    jr nz, jr_01C_5BF4                            ; $5B7E: $20 $74

    ld [hl], d                                    ; $5B80: $72
    ld h, c                                       ; $5B81: $61
    ld h, h                                       ; $5B82: $64
    ld h, l                                       ; $5B83: $65
    rst $38                                       ; $5B84: $FF
    ld [hl], h                                    ; $5B85: $74
    ld l, b                                       ; $5B86: $68
    ld h, c                                       ; $5B87: $61
    ld [hl], h                                    ; $5B88: $74
    jr nz, jr_01C_5BF1                            ; $5B89: $20 $66

    ld l, a                                       ; $5B8B: $6F
    ld [hl], d                                    ; $5B8C: $72
    jr nz, jr_01C_5BF0                            ; $5B8D: $20 $61

    cp $4A                                        ; $5B8F: $FE $4A
    ld l, c                                       ; $5B91: $69
    ld l, [hl]                                    ; $5B92: $6E
    ld l, e                                       ; $5B93: $6B
    jr nz, jr_01C_5BE8                            ; $5B94: $20 $52

    ld l, a                                       ; $5B96: $6F
    ld l, a                                       ; $5B97: $6F
    ld [hl], h                                    ; $5B98: $74

jr_01C_5B99:
    ld l, $FE                                     ; $5B99: $2E $FE
    db $FD                                        ; $5B9B: $FD
    sbc d                                         ; $5B9C: $9A
    ld b, l                                       ; $5B9D: $45
    inc e                                         ; $5B9E: $1C
    ld [hl], c                                    ; $5B9F: $71
    ld d, l                                       ; $5BA0: $55
    sbc a                                         ; $5BA1: $9F

jr_01C_5BA2:
    ld d, h                                       ; $5BA2: $54
    ld l, b                                       ; $5BA3: $68
    ld h, c                                       ; $5BA4: $61

jr_01C_5BA5:
    ld [hl], h                                    ; $5BA5: $74
    rst $38                                       ; $5BA6: $FF
    ld h, l                                       ; $5BA7: $65
    ld a, b                                       ; $5BA8: $78
    ld [hl], h                                    ; $5BA9: $74
    ld h, l                                       ; $5BAA: $65
    ld [hl], d                                    ; $5BAB: $72
    ld l, l                                       ; $5BAC: $6D
    ld l, c                                       ; $5BAD: $69
    ld l, [hl]                                    ; $5BAE: $6E
    ld h, c                                       ; $5BAF: $61
    ld [hl], h                                    ; $5BB0: $74
    ld h, l                                       ; $5BB1: $65
    ld [hl], e                                    ; $5BB2: $73
    cp $70                                        ; $5BB3: $FE $70
    ld h, c                                       ; $5BB5: $61

jr_01C_5BB6:
    ld [hl], d                                    ; $5BB6: $72
    ld h, c                                       ; $5BB7: $61
    ld [hl], e                                    ; $5BB8: $73
    ld l, c                                       ; $5BB9: $69
    ld [hl], h                                    ; $5BBA: $74

jr_01C_5BBB:
    ld h, l                                       ; $5BBB: $65
    ld [hl], e                                    ; $5BBC: $73
    jr nz, jr_01C_5C2E                            ; $5BBD: $20 $6F

jr_01C_5BBF:
    ld l, [hl]                                    ; $5BBF: $6E
    rst $38                                       ; $5BC0: $FF
    ld h, c                                       ; $5BC1: $61
    ld l, [hl]                                    ; $5BC2: $6E
    ld l, a                                       ; $5BC3: $6F
    ld [hl], h                                    ; $5BC4: $74
    ld l, b                                       ; $5BC5: $68
    ld h, l                                       ; $5BC6: $65
    ld [hl], d                                    ; $5BC7: $72
    cp $63                                        ; $5BC8: $FE $63
    ld l, a                                       ; $5BCA: $6F
    ld l, [hl]                                    ; $5BCB: $6E
    ld [hl], h                                    ; $5BCC: $74
    ld l, c                                       ; $5BCD: $69
    ld l, [hl]                                    ; $5BCE: $6E
    ld h, l                                       ; $5BCF: $65
    ld l, [hl]                                    ; $5BD0: $6E
    ld [hl], h                                    ; $5BD1: $74
    ld hl, $FDFE                                  ; $5BD2: $21 $FE $FD
    sbc d                                         ; $5BD5: $9A
    ld b, l                                       ; $5BD6: $45
    inc e                                         ; $5BD7: $1C
    ld [hl], c                                    ; $5BD8: $71
    ld d, l                                       ; $5BD9: $55
    sbc a                                         ; $5BDA: $9F
    ld c, c                                       ; $5BDB: $49
    ld h, [hl]                                    ; $5BDC: $66
    jr nz, jr_01C_5C58                            ; $5BDD: $20 $79

jr_01C_5BDF:
    ld l, a                                       ; $5BDF: $6F
    ld [hl], l                                    ; $5BE0: $75
    jr nz, jr_01C_5C58                            ; $5BE1: $20 $75

    ld [hl], e                                    ; $5BE3: $73
    ld h, l                                       ; $5BE4: $65
    rst $38                                       ; $5BE5: $FF
    ld [hl], h                                    ; $5BE6: $74
    ld l, b                                       ; $5BE7: $68

jr_01C_5BE8:
    ld h, c                                       ; $5BE8: $61
    ld [hl], h                                    ; $5BE9: $74
    jr nz, jr_01C_5C5B                            ; $5BEA: $20 $6F

    ld l, [hl]                                    ; $5BEC: $6E
    jr nz, jr_01C_5C63                            ; $5BED: $20 $74

    ld l, b                                       ; $5BEF: $68

jr_01C_5BF0:
    ld h, l                                       ; $5BF0: $65

jr_01C_5BF1:
    cp $6F                                        ; $5BF1: $FE $6F
    halt                                          ; $5BF3: $76

jr_01C_5BF4:
    ld h, l                                       ; $5BF4: $65

jr_01C_5BF5:
    ld [hl], d                                    ; $5BF5: $72
    ld [hl], a                                    ; $5BF6: $77
    ld l, a                                       ; $5BF7: $6F
    ld [hl], d                                    ; $5BF8: $72
    ld l, h                                       ; $5BF9: $6C
    ld h, h                                       ; $5BFA: $64
    inc l                                         ; $5BFB: $2C
    rst $38                                       ; $5BFC: $FF
    ld a, c                                       ; $5BFD: $79
    ld l, a                                       ; $5BFE: $6F
    ld [hl], l                                    ; $5BFF: $75
    daa                                           ; $5C00: $27
    ld l, h                                       ; $5C01: $6C
    ld l, h                                       ; $5C02: $6C
    jr nz, jr_01C_5C71                            ; $5C03: $20 $6C

    ld l, a                                       ; $5C05: $6F
    ld l, a                                       ; $5C06: $6F
    ld l, e                                       ; $5C07: $6B
    cp $6C                                        ; $5C08: $FE $6C
    ld l, c                                       ; $5C0A: $69
    ld l, e                                       ; $5C0B: $6B
    ld h, l                                       ; $5C0C: $65
    jr nz, jr_01C_5C70                            ; $5C0D: $20 $61

    jr nz, jr_01C_5C77                            ; $5C0F: $20 $66

    ld l, a                                       ; $5C11: $6F
    ld l, a                                       ; $5C12: $6F
    ld l, h                                       ; $5C13: $6C
    ld l, $FE                                     ; $5C14: $2E $FE
    db $FD                                        ; $5C16: $FD
    sbc d                                         ; $5C17: $9A
    ld b, l                                       ; $5C18: $45
    inc e                                         ; $5C19: $1C
    ld [hl], c                                    ; $5C1A: $71
    ld d, l                                       ; $5C1B: $55
    sub e                                         ; $5C1C: $93
    ld h, l                                       ; $5C1D: $65
    sub d                                         ; $5C1E: $92
    ld b, h                                       ; $5C1F: $44
    ld c, a                                       ; $5C20: $4F
    ld h, h                                       ; $5C21: $64
    xor b                                         ; $5C22: $A8
    ld b, l                                       ; $5C23: $45
    ld l, c                                       ; $5C24: $69
    xor l                                         ; $5C25: $AD
    ld b, l                                       ; $5C26: $45
    ld h, [hl]                                    ; $5C27: $66
    ret nz                                        ; $5C28: $C0

    ld e, h                                       ; $5C29: $5C
    ld hl, $0005                                  ; $5C2A: $21 $05 $00
    add c                                         ; $5C2D: $81

jr_01C_5C2E:
    ld e, l                                       ; $5C2E: $5D
    dec b                                         ; $5C2F: $05
    dec b                                         ; $5C30: $05
    scf                                           ; $5C31: $37
    ret nc                                        ; $5C32: $D0

    nop                                           ; $5C33: $00
    jr nz, jr_01C_5BF5                            ; $5C34: $20 $BF

    ld d, b                                       ; $5C36: $50
    ld [hl+], a                                   ; $5C37: $22
    dec b                                         ; $5C38: $05
    ld b, b                                       ; $5C39: $40
    dec b                                         ; $5C3A: $05
    ld [bc], a                                    ; $5C3B: $02
    db $ED                                        ; $5C3C: $ED
    ld h, e                                       ; $5C3D: $63
    ld [bc], a                                    ; $5C3E: $02
    ld b, $3E                                     ; $5C3F: $06 $3E
    ret nc                                        ; $5C41: $D0

    nop                                           ; $5C42: $00
    db $10                                        ; $5C43: $10
    ld l, a                                       ; $5C44: $6F
    ld e, h                                       ; $5C45: $5C
    inc e                                         ; $5C46: $1C
    ld e, e                                       ; $5C47: $5B
    ld e, h                                       ; $5C48: $5C
    dec bc                                        ; $5C49: $0B
    nop                                           ; $5C4A: $00
    dec bc                                        ; $5C4B: $0B
    ld [bc], a                                    ; $5C4C: $02
    ld l, e                                       ; $5C4D: $6B
    ld h, $0B                                     ; $5C4E: $26 $0B
    ld d, b                                       ; $5C50: $50
    ld d, h                                       ; $5C51: $54
    nop                                           ; $5C52: $00
    add b                                         ; $5C53: $80
    nop                                           ; $5C54: $00
    nop                                           ; $5C55: $00
    add d                                         ; $5C56: $82
    rra                                           ; $5C57: $1F

jr_01C_5C58:
    dec d                                         ; $5C58: $15
    sub h                                         ; $5C59: $94
    ld b, d                                       ; $5C5A: $42

jr_01C_5C5B:
    ld e, e                                       ; $5C5B: $5B
    inc e                                         ; $5C5C: $1C
    dec de                                        ; $5C5D: $1B
    ld d, l                                       ; $5C5E: $55
    ld b, l                                       ; $5C5F: $45
    db $10                                        ; $5C60: $10
    and c                                         ; $5C61: $A1
    ld e, h                                       ; $5C62: $5C

jr_01C_5C63:
    ld [bc], a                                    ; $5C63: $02
    inc b                                         ; $5C64: $04
    dec hl                                        ; $5C65: $2B
    ld c, $0F                                     ; $5C66: $0E $0F
    ld b, l                                       ; $5C68: $45
    ld [hl+], a                                   ; $5C69: $22
    ld e, [hl]                                    ; $5C6A: $5E
    ld e, c                                       ; $5C6B: $59
    sbc e                                         ; $5C6C: $9B
    ld a, b                                       ; $5C6D: $78
    ld [hl], b                                    ; $5C6E: $70
    sbc a                                         ; $5C6F: $9F

jr_01C_5C70:
    ld d, h                                       ; $5C70: $54

jr_01C_5C71:
    ld l, b                                       ; $5C71: $68
    ld l, c                                       ; $5C72: $69
    ld [hl], e                                    ; $5C73: $73
    rst $38                                       ; $5C74: $FF
    ld l, l                                       ; $5C75: $6D
    ld l, c                                       ; $5C76: $69

jr_01C_5C77:
    ld [hl], d                                    ; $5C77: $72
    ld [hl], d                                    ; $5C78: $72
    ld l, a                                       ; $5C79: $6F
    ld [hl], d                                    ; $5C7A: $72
    jr nz, @+$6E                                  ; $5C7B: $20 $6C

    ld l, a                                       ; $5C7D: $6F
    ld l, a                                       ; $5C7E: $6F
    ld l, e                                       ; $5C7F: $6B
    ld [hl], e                                    ; $5C80: $73
    cp $6F                                        ; $5C81: $FE $6F
    halt                                          ; $5C83: $76
    ld h, l                                       ; $5C84: $65
    ld [hl], d                                    ; $5C85: $72
    ld [hl], l                                    ; $5C86: $75
    ld [hl], e                                    ; $5C87: $73
    ld h, l                                       ; $5C88: $65
    ld h, h                                       ; $5C89: $64
    ld l, $FE                                     ; $5C8A: $2E $FE
    db $FD                                        ; $5C8C: $FD
    sbc d                                         ; $5C8D: $9A
    ld b, d                                       ; $5C8E: $42
    sbc e                                         ; $5C8F: $9B
    ld a, b                                       ; $5C90: $78
    ld [hl], b                                    ; $5C91: $70
    sbc a                                         ; $5C92: $9F
    ld c, a                                       ; $5C93: $4F
    ld l, [hl]                                    ; $5C94: $6E
    ld h, l                                       ; $5C95: $65
    jr nz, jr_01C_5D07                            ; $5C96: $20 $6F

    ld h, [hl]                                    ; $5C98: $66
    jr nz, jr_01C_5D0E                            ; $5C99: $20 $73

    ld [hl], l                                    ; $5C9B: $75
    ld h, e                                       ; $5C9C: $63
    ld l, b                                       ; $5C9D: $68
    rst $38                                       ; $5C9E: $FF
    ld [hl], e                                    ; $5C9F: $73
    ld [hl], h                                    ; $5CA0: $74
    ld h, c                                       ; $5CA1: $61
    ld [hl], h                                    ; $5CA2: $74
    ld [hl], l                                    ; $5CA3: $75
    ld [hl], d                                    ; $5CA4: $72
    ld h, l                                       ; $5CA5: $65
    jr nz, jr_01C_5D15                            ; $5CA6: $20 $6D

    ld [hl], l                                    ; $5CA8: $75
    ld [hl], e                                    ; $5CA9: $73
    ld [hl], h                                    ; $5CAA: $74
    cp $77                                        ; $5CAB: $FE $77
    ld h, c                                       ; $5CAD: $61
    ld [hl], h                                    ; $5CAE: $74
    ld h, e                                       ; $5CAF: $63
    ld l, b                                       ; $5CB0: $68
    jr nz, jr_01C_5D1B                            ; $5CB1: $20 $68

    ld l, c                                       ; $5CB3: $69
    ld [hl], e                                    ; $5CB4: $73
    rst $38                                       ; $5CB5: $FF
    ld h, [hl]                                    ; $5CB6: $66
    ld l, c                                       ; $5CB7: $69
    ld h, a                                       ; $5CB8: $67
    ld [hl], l                                    ; $5CB9: $75
    ld [hl], d                                    ; $5CBA: $72
    ld h, l                                       ; $5CBB: $65
    ld l, $FE                                     ; $5CBC: $2E $FE
    ld c, b                                       ; $5CBE: $48
    ld h, l                                       ; $5CBF: $65
    ld l, [hl]                                    ; $5CC0: $6E
    ld h, e                                       ; $5CC1: $63
    ld h, l                                       ; $5CC2: $65
    jr nz, jr_01C_5D2D                            ; $5CC3: $20 $68

    ld h, l                                       ; $5CC5: $65
    ld h, c                                       ; $5CC6: $61
    halt                                          ; $5CC7: $76
    ld a, c                                       ; $5CC8: $79
    rst $38                                       ; $5CC9: $FF
    ld l, a                                       ; $5CCA: $6F
    ld h, d                                       ; $5CCB: $62
    ld l, d                                       ; $5CCC: $6A
    ld h, l                                       ; $5CCD: $65
    ld h, e                                       ; $5CCE: $63
    ld [hl], h                                    ; $5CCF: $74
    ld [hl], e                                    ; $5CD0: $73
    jr nz, jr_01C_5D42                            ; $5CD1: $20 $6F

    ld l, [hl]                                    ; $5CD3: $6E
    cp $73                                        ; $5CD4: $FE $73
    ld [hl], h                                    ; $5CD6: $74
    ld l, c                                       ; $5CD7: $69
    ld h, e                                       ; $5CD8: $63
    ld l, e                                       ; $5CD9: $6B
    ld [hl], e                                    ; $5CDA: $73
    ld l, $FE                                     ; $5CDB: $2E $FE
    db $FD                                        ; $5CDD: $FD
    sbc d                                         ; $5CDE: $9A
    ld b, d                                       ; $5CDF: $42
    sbc e                                         ; $5CE0: $9B
    ld a, b                                       ; $5CE1: $78
    ld [hl], b                                    ; $5CE2: $70
    sbc a                                         ; $5CE3: $9F
    ld d, e                                       ; $5CE4: $53
    ld [hl], l                                    ; $5CE5: $75
    ld h, e                                       ; $5CE6: $63
    ld l, b                                       ; $5CE7: $68
    jr nz, jr_01C_5D4B                            ; $5CE8: $20 $61

    jr nz, jr_01C_5D60                            ; $5CEA: $20 $74

    ld l, c                                       ; $5CEC: $69
    ld l, [hl]                                    ; $5CED: $6E
    ld a, c                                       ; $5CEE: $79
    rst $38                                       ; $5CEF: $FF
    ld h, d                                       ; $5CF0: $62
    ld h, l                                       ; $5CF1: $65
    ld h, h                                       ; $5CF2: $64
    jr nz, jr_01C_5D5B                            ; $5CF3: $20 $66

    ld l, a                                       ; $5CF5: $6F
    ld [hl], d                                    ; $5CF6: $72
    jr nz, jr_01C_5D6C                            ; $5CF7: $20 $73

    ld [hl], l                                    ; $5CF9: $75
    ld h, e                                       ; $5CFA: $63
    ld l, b                                       ; $5CFB: $68
    cp $61                                        ; $5CFC: $FE $61
    jr nz, jr_01C_5D62                            ; $5CFE: $20 $62

    ld l, c                                       ; $5D00: $69
    ld h, a                                       ; $5D01: $67
    jr nz, jr_01C_5D6C                            ; $5D02: $20 $68

    ld h, l                                       ; $5D04: $65
    ld h, c                                       ; $5D05: $61
    ld h, h                                       ; $5D06: $64

jr_01C_5D07:
    ld l, $FE                                     ; $5D07: $2E $FE
    ld c, b                                       ; $5D09: $48
    ld l, a                                       ; $5D0A: $6F
    ld [hl], a                                    ; $5D0B: $77
    jr nz, jr_01C_5D72                            ; $5D0C: $20 $64

jr_01C_5D0E:
    ld l, a                                       ; $5D0E: $6F
    ld h, l                                       ; $5D0F: $65
    ld [hl], e                                    ; $5D10: $73
    jr nz, jr_01C_5D7B                            ; $5D11: $20 $68

    ld h, l                                       ; $5D13: $65
    rst $38                                       ; $5D14: $FF

jr_01C_5D15:
    ld h, h                                       ; $5D15: $64
    ld l, a                                       ; $5D16: $6F
    jr nz, jr_01C_5D82                            ; $5D17: $20 $69

    ld [hl], h                                    ; $5D19: $74
    ccf                                           ; $5D1A: $3F

jr_01C_5D1B:
    cp $FD                                        ; $5D1B: $FE $FD
    sbc d                                         ; $5D1D: $9A
    ld b, d                                       ; $5D1E: $42
    sbc e                                         ; $5D1F: $9B
    ld a, b                                       ; $5D20: $78
    ld [hl], b                                    ; $5D21: $70
    sbc a                                         ; $5D22: $9F
    ld d, a                                       ; $5D23: $57
    ld l, b                                       ; $5D24: $68
    ld l, a                                       ; $5D25: $6F
    jr nz, jr_01C_5D91                            ; $5D26: $20 $69

    ld [hl], e                                    ; $5D28: $73
    jr nz, @+$76                                  ; $5D29: $20 $74

    ld l, b                                       ; $5D2B: $68
    ld h, c                                       ; $5D2C: $61

jr_01C_5D2D:
    ld [hl], h                                    ; $5D2D: $74
    ccf                                           ; $5D2E: $3F
    cp $FD                                        ; $5D2F: $FE $FD
    sbc d                                         ; $5D31: $9A
    ld e, b                                       ; $5D32: $58
    ld bc, $9B42                                  ; $5D33: $01 $42 $9B
    jr jr_01C_5D86                                ; $5D36: $18 $4E

    sbc a                                         ; $5D38: $9F
    ld c, b                                       ; $5D39: $48
    ld h, c                                       ; $5D3A: $61
    jr nz, jr_01C_5DA5                            ; $5D3B: $20 $68

    ld h, c                                       ; $5D3D: $61
    ld hl, $5720                                  ; $5D3E: $21 $20 $57
    ld l, b                                       ; $5D41: $68

jr_01C_5D42:
    ld l, a                                       ; $5D42: $6F
    jr nz, jr_01C_5DAE                            ; $5D43: $20 $69

    ld [hl], e                                    ; $5D45: $73
    rst $38                                       ; $5D46: $FF
    ld [hl], h                                    ; $5D47: $74
    ld l, b                                       ; $5D48: $68
    ld l, c                                       ; $5D49: $69
    ld [hl], e                                    ; $5D4A: $73

jr_01C_5D4B:
    jr nz, jr_01C_5DB9                            ; $5D4B: $20 $6C

    ld l, c                                       ; $5D4D: $69
    ld [hl], h                                    ; $5D4E: $74
    ld [hl], h                                    ; $5D4F: $74
    ld l, h                                       ; $5D50: $6C
    ld h, l                                       ; $5D51: $65
    cp $63                                        ; $5D52: $FE $63
    ld [hl], d                                    ; $5D54: $72
    ld h, l                                       ; $5D55: $65
    ld h, c                                       ; $5D56: $61
    ld l, l                                       ; $5D57: $6D
    jr nz, @+$72                                  ; $5D58: $20 $70

    ld [hl], l                                    ; $5D5A: $75

jr_01C_5D5B:
    ld h, [hl]                                    ; $5D5B: $66
    ld h, [hl]                                    ; $5D5C: $66
    jr nz, jr_01C_5DD6                            ; $5D5D: $20 $77

    ld l, b                                       ; $5D5F: $68

jr_01C_5D60:
    ld l, a                                       ; $5D60: $6F
    rst $38                                       ; $5D61: $FF

jr_01C_5D62:
    ld l, b                                       ; $5D62: $68
    ld h, c                                       ; $5D63: $61
    ld [hl], e                                    ; $5D64: $73
    jr nz, @+$65                                  ; $5D65: $20 $63

    ld l, a                                       ; $5D67: $6F
    ld l, l                                       ; $5D68: $6D
    ld h, l                                       ; $5D69: $65
    jr nz, jr_01C_5DE0                            ; $5D6A: $20 $74

jr_01C_5D6C:
    ld l, a                                       ; $5D6C: $6F
    cp $69                                        ; $5D6D: $FE $69
    ld l, [hl]                                    ; $5D6F: $6E
    ld [hl], h                                    ; $5D70: $74
    ld h, l                                       ; $5D71: $65

jr_01C_5D72:
    ld [hl], d                                    ; $5D72: $72
    ld [hl], d                                    ; $5D73: $72
    ld [hl], l                                    ; $5D74: $75
    ld [hl], b                                    ; $5D75: $70
    ld [hl], h                                    ; $5D76: $74
    jr nz, jr_01C_5DE6                            ; $5D77: $20 $6D

    ld a, c                                       ; $5D79: $79
    rst $38                                       ; $5D7A: $FF

jr_01C_5D7B:
    ld h, [hl]                                    ; $5D7B: $66
    ld h, c                                       ; $5D7C: $61
    halt                                          ; $5D7D: $76
    ld l, a                                       ; $5D7E: $6F
    ld [hl], d                                    ; $5D7F: $72
    ld l, c                                       ; $5D80: $69
    ld [hl], h                                    ; $5D81: $74

jr_01C_5D82:
    ld h, l                                       ; $5D82: $65
    cp $72                                        ; $5D83: $FE $72
    ld l, a                                       ; $5D85: $6F

jr_01C_5D86:
    ld [hl], l                                    ; $5D86: $75
    ld [hl], h                                    ; $5D87: $74
    ld l, c                                       ; $5D88: $69
    ld l, [hl]                                    ; $5D89: $6E
    ld h, l                                       ; $5D8A: $65
    ccf                                           ; $5D8B: $3F
    cp $FD                                        ; $5D8C: $FE $FD
    sbc e                                         ; $5D8E: $9B
    ld a, b                                       ; $5D8F: $78
    ld [hl], b                                    ; $5D90: $70

jr_01C_5D91:
    sbc a                                         ; $5D91: $9F
    ld c, l                                       ; $5D92: $4D
    ld a, c                                       ; $5D93: $79
    jr nz, @+$70                                  ; $5D94: $20 $6E

    ld h, c                                       ; $5D96: $61
    ld l, l                                       ; $5D97: $6D
    ld h, l                                       ; $5D98: $65
    jr nz, @+$6B                                  ; $5D99: $20 $69

    ld [hl], e                                    ; $5D9B: $73
    ld l, $2E                                     ; $5D9C: $2E $2E
    ld l, $FE                                     ; $5D9E: $2E $FE
    db $FD                                        ; $5DA0: $FD
    sbc e                                         ; $5DA1: $9B
    jr jr_01C_5DF2                                ; $5DA2: $18 $4E

    sbc a                                         ; $5DA4: $9F

jr_01C_5DA5:
    ld c, c                                       ; $5DA5: $49
    ld d, h                                       ; $5DA6: $54
    jr nz, @+$46                                  ; $5DA7: $20 $44

    ld c, a                                       ; $5DA9: $4F
    ld b, l                                       ; $5DAA: $45
    ld d, e                                       ; $5DAB: $53
    ld c, [hl]                                    ; $5DAC: $4E
    daa                                           ; $5DAD: $27

jr_01C_5DAE:
    ld d, h                                       ; $5DAE: $54
    rst $38                                       ; $5DAF: $FF
    ld c, l                                       ; $5DB0: $4D
    ld b, c                                       ; $5DB1: $41
    ld d, h                                       ; $5DB2: $54
    ld d, h                                       ; $5DB3: $54
    ld b, l                                       ; $5DB4: $45
    ld d, d                                       ; $5DB5: $52
    jr nz, jr_01C_5E0F                            ; $5DB6: $20 $57

    ld c, b                                       ; $5DB8: $48

jr_01C_5DB9:
    ld b, c                                       ; $5DB9: $41
    ld d, h                                       ; $5DBA: $54
    cp $59                                        ; $5DBB: $FE $59
    ld c, a                                       ; $5DBD: $4F
    ld d, l                                       ; $5DBE: $55
    ld d, d                                       ; $5DBF: $52
    jr nz, jr_01C_5E10                            ; $5DC0: $20 $4E

    ld b, c                                       ; $5DC2: $41
    ld c, l                                       ; $5DC3: $4D
    ld b, l                                       ; $5DC4: $45
    jr nz, jr_01C_5E10                            ; $5DC5: $20 $49

    ld d, e                                       ; $5DC7: $53
    ld hl, $FE21                                  ; $5DC8: $21 $21 $FE
    db $FD                                        ; $5DCB: $FD
    sbc d                                         ; $5DCC: $9A
    ld e, b                                       ; $5DCD: $58
    ld bc, $9B42                                  ; $5DCE: $01 $42 $9B
    jr jr_01C_5E21                                ; $5DD1: $18 $4E

    sbc a                                         ; $5DD3: $9F
    ld b, c                                       ; $5DD4: $41
    ld l, h                                       ; $5DD5: $6C

jr_01C_5DD6:
    ld l, h                                       ; $5DD6: $6C
    jr nz, jr_01C_5E4D                            ; $5DD7: $20 $74

    ld l, b                                       ; $5DD9: $68
    ld h, c                                       ; $5DDA: $61
    ld [hl], h                                    ; $5DDB: $74
    rst $38                                       ; $5DDC: $FF
    ld l, l                                       ; $5DDD: $6D
    ld h, c                                       ; $5DDE: $61
    ld [hl], h                                    ; $5DDF: $74

jr_01C_5DE0:
    ld [hl], h                                    ; $5DE0: $74
    ld h, l                                       ; $5DE1: $65
    ld [hl], d                                    ; $5DE2: $72
    ld [hl], e                                    ; $5DE3: $73
    jr nz, jr_01C_5E4F                            ; $5DE4: $20 $69

jr_01C_5DE6:
    ld [hl], e                                    ; $5DE6: $73
    jr nz, jr_01C_5E5D                            ; $5DE7: $20 $74

    ld l, b                                       ; $5DE9: $68
    ld h, c                                       ; $5DEA: $61
    ld [hl], h                                    ; $5DEB: $74
    cp $6D                                        ; $5DEC: $FE $6D
    ld a, c                                       ; $5DEE: $79
    jr nz, jr_01C_5E53                            ; $5DEF: $20 $62

    ld l, a                                       ; $5DF1: $6F

jr_01C_5DF2:
    ld h, h                                       ; $5DF2: $64
    ld a, c                                       ; $5DF3: $79
    jr nz, jr_01C_5E5F                            ; $5DF4: $20 $69

    ld [hl], e                                    ; $5DF6: $73
    rst $38                                       ; $5DF7: $FF
    ld [hl], d                                    ; $5DF8: $72
    ld l, c                                       ; $5DF9: $69
    ld [hl], b                                    ; $5DFA: $70
    ld [hl], b                                    ; $5DFB: $70
    ld h, l                                       ; $5DFC: $65
    ld h, h                                       ; $5DFD: $64
    jr nz, jr_01C_5E6C                            ; $5DFE: $20 $6C

    ld l, c                                       ; $5E00: $69
    ld l, e                                       ; $5E01: $6B
    ld h, l                                       ; $5E02: $65
    cp $74                                        ; $5E03: $FE $74
    ld l, b                                       ; $5E05: $68
    ld l, c                                       ; $5E06: $69
    ld h, e                                       ; $5E07: $63
    ld l, e                                       ; $5E08: $6B
    inc l                                         ; $5E09: $2C
    jr nz, jr_01C_5E7C                            ; $5E0A: $20 $70

    ld h, l                                       ; $5E0C: $65
    ld h, c                                       ; $5E0D: $61
    ld l, [hl]                                    ; $5E0E: $6E

jr_01C_5E0F:
    ld [hl], l                                    ; $5E0F: $75

jr_01C_5E10:
    ld [hl], h                                    ; $5E10: $74
    ld a, c                                       ; $5E11: $79
    rst $38                                       ; $5E12: $FF
    ld l, [hl]                                    ; $5E13: $6E
    ld l, a                                       ; $5E14: $6F
    ld [hl], l                                    ; $5E15: $75
    ld h, a                                       ; $5E16: $67
    ld h, c                                       ; $5E17: $61
    ld [hl], h                                    ; $5E18: $74
    ld hl, $5920                                  ; $5E19: $21 $20 $59
    ld l, a                                       ; $5E1C: $6F
    ld [hl], l                                    ; $5E1D: $75
    cp $68                                        ; $5E1E: $FE $68
    ld l, a                                       ; $5E20: $6F

jr_01C_5E21:
    ld [hl], a                                    ; $5E21: $77
    ld h, l                                       ; $5E22: $65
    halt                                          ; $5E23: $76
    ld h, l                                       ; $5E24: $65
    ld [hl], d                                    ; $5E25: $72
    jr nz, jr_01C_5E89                            ; $5E26: $20 $61

    ld [hl], d                                    ; $5E28: $72
    ld h, l                                       ; $5E29: $65
    jr nz, jr_01C_5E8D                            ; $5E2A: $20 $61

    ld [hl], e                                    ; $5E2C: $73
    rst $38                                       ; $5E2D: $FF
    ld h, [hl]                                    ; $5E2E: $66
    ld l, h                                       ; $5E2F: $6C
    ld h, c                                       ; $5E30: $61
    ld [hl], h                                    ; $5E31: $74
    jr nz, jr_01C_5E95                            ; $5E32: $20 $61

    ld l, [hl]                                    ; $5E34: $6E
    ld h, h                                       ; $5E35: $64
    cp $62                                        ; $5E36: $FE $62
    ld [hl], d                                    ; $5E38: $72
    ld l, c                                       ; $5E39: $69
    ld [hl], h                                    ; $5E3A: $74
    ld [hl], h                                    ; $5E3B: $74
    ld l, h                                       ; $5E3C: $6C
    ld h, l                                       ; $5E3D: $65
    jr nz, @+$63                                  ; $5E3E: $20 $61

    ld [hl], e                                    ; $5E40: $73
    jr nz, jr_01C_5EA4                            ; $5E41: $20 $61

    rst $38                                       ; $5E43: $FF
    ld h, e                                       ; $5E44: $63
    ld [hl], d                                    ; $5E45: $72
    ld l, c                                       ; $5E46: $69
    ld [hl], e                                    ; $5E47: $73
    ld [hl], b                                    ; $5E48: $70
    ld a, c                                       ; $5E49: $79
    jr nz, jr_01C_5EC3                            ; $5E4A: $20 $77

    ld h, c                                       ; $5E4C: $61

jr_01C_5E4D:
    ld h, [hl]                                    ; $5E4D: $66
    ld h, l                                       ; $5E4E: $65

jr_01C_5E4F:
    ld [hl], d                                    ; $5E4F: $72
    ld hl, $FDFE                                  ; $5E50: $21 $FE $FD

jr_01C_5E53:
    sbc e                                         ; $5E53: $9B
    ld a, b                                       ; $5E54: $78
    ld [hl], b                                    ; $5E55: $70
    sbc a                                         ; $5E56: $9F
    ld l, $2E                                     ; $5E57: $2E $2E
    ld l, $2E                                     ; $5E59: $2E $2E
    ld l, $2E                                     ; $5E5B: $2E $2E

jr_01C_5E5D:
    ld l, $2E                                     ; $5E5D: $2E $2E

jr_01C_5E5F:
    ld l, $FE                                     ; $5E5F: $2E $FE
    db $FD                                        ; $5E61: $FD
    sbc d                                         ; $5E62: $9A
    ld e, b                                       ; $5E63: $58
    ld [bc], a                                    ; $5E64: $02
    ld b, d                                       ; $5E65: $42
    sbc e                                         ; $5E66: $9B
    jr jr_01C_5EB7                                ; $5E67: $18 $4E

    sbc a                                         ; $5E69: $9F
    ld c, [hl]                                    ; $5E6A: $4E
    ld l, a                                       ; $5E6B: $6F

jr_01C_5E6C:
    ld [hl], a                                    ; $5E6C: $77
    jr nz, jr_01C_5EB8                            ; $5E6D: $20 $49

    jr nz, jr_01C_5EE8                            ; $5E6F: $20 $77

    ld l, c                                       ; $5E71: $69
    ld l, h                                       ; $5E72: $6C
    ld l, h                                       ; $5E73: $6C
    jr nz, jr_01C_5EEA                            ; $5E74: $20 $74

    ld h, l                                       ; $5E76: $65
    ld l, h                                       ; $5E77: $6C
    ld l, h                                       ; $5E78: $6C
    rst $38                                       ; $5E79: $FF
    ld [hl], h                                    ; $5E7A: $74
    ld l, b                                       ; $5E7B: $68

jr_01C_5E7C:
    ld h, l                                       ; $5E7C: $65
    jr nz, jr_01C_5EF3                            ; $5E7D: $20 $74

    ld l, c                                       ; $5E7F: $69
    ld l, [hl]                                    ; $5E80: $6E
    ld a, c                                       ; $5E81: $79
    jr nz, jr_01C_5EF3                            ; $5E82: $20 $6F

    ld l, [hl]                                    ; $5E84: $6E
    ld h, l                                       ; $5E85: $65
    cp $77                                        ; $5E86: $FE $77
    ld l, c                                       ; $5E88: $69

jr_01C_5E89:
    ld [hl], h                                    ; $5E89: $74
    ld l, b                                       ; $5E8A: $68
    jr nz, jr_01C_5EF4                            ; $5E8B: $20 $67

jr_01C_5E8D:
    ld l, a                                       ; $5E8D: $6F
    ld l, a                                       ; $5E8E: $6F
    ld h, [hl]                                    ; $5E8F: $66
    ld a, c                                       ; $5E90: $79
    rst $38                                       ; $5E91: $FF
    ld [hl], b                                    ; $5E92: $70
    ld h, c                                       ; $5E93: $61
    ld l, [hl]                                    ; $5E94: $6E

jr_01C_5E95:
    ld [hl], h                                    ; $5E95: $74
    ld [hl], e                                    ; $5E96: $73
    jr nz, jr_01C_5F10                            ; $5E97: $20 $77

    ld l, b                                       ; $5E99: $68
    ld l, a                                       ; $5E9A: $6F
    jr nz, jr_01C_5EE6                            ; $5E9B: $20 $49

    jr nz, jr_01C_5F00                            ; $5E9D: $20 $61

    ld l, l                                       ; $5E9F: $6D
    ld l, $FE                                     ; $5EA0: $2E $FE
    db $FD                                        ; $5EA2: $FD
    sbc d                                         ; $5EA3: $9A

jr_01C_5EA4:
    ld b, b                                       ; $5EA4: $40
    jr c, jr_01C_5EFF                             ; $5EA5: $38 $58

    inc bc                                        ; $5EA7: $03
    ld b, d                                       ; $5EA8: $42
    sbc e                                         ; $5EA9: $9B
    jr jr_01C_5EFA                                ; $5EAA: $18 $4E

    sbc a                                         ; $5EAC: $9F
    ld c, c                                       ; $5EAD: $49
    jr nz, @+$63                                  ; $5EAE: $20 $61

    ld l, l                                       ; $5EB0: $6D
    jr nz, jr_01C_5EFA                            ; $5EB1: $20 $47

    ld l, a                                       ; $5EB3: $6F
    ld h, a                                       ; $5EB4: $67
    ld l, a                                       ; $5EB5: $6F
    ld [hl], d                                    ; $5EB6: $72

jr_01C_5EB7:
    inc l                                         ; $5EB7: $2C

jr_01C_5EB8:
    rst $38                                       ; $5EB8: $FF
    ld h, e                                       ; $5EB9: $63
    ld h, l                                       ; $5EBA: $65
    ld l, h                                       ; $5EBB: $6C
    ld h, l                                       ; $5EBC: $65
    ld h, d                                       ; $5EBD: $62
    ld [hl], d                                    ; $5EBE: $72
    ld h, c                                       ; $5EBF: $61
    ld [hl], h                                    ; $5EC0: $74
    ld h, l                                       ; $5EC1: $65
    ld h, h                                       ; $5EC2: $64

jr_01C_5EC3:
    jr nz, jr_01C_5F2D                            ; $5EC3: $20 $68

    ld h, l                                       ; $5EC5: $65
    ld [hl], d                                    ; $5EC6: $72
    ld l, a                                       ; $5EC7: $6F
    cp $6F                                        ; $5EC8: $FE $6F
    ld h, [hl]                                    ; $5ECA: $66
    jr nz, jr_01C_5F41                            ; $5ECB: $20 $74

    ld l, b                                       ; $5ECD: $68
    ld h, l                                       ; $5ECE: $65
    rst $38                                       ; $5ECF: $FF
    ld d, l                                       ; $5ED0: $55
    ld l, [hl]                                    ; $5ED1: $6E
    ld h, h                                       ; $5ED2: $64
    ld h, l                                       ; $5ED3: $65
    ld [hl], d                                    ; $5ED4: $72
    ld l, [hl]                                    ; $5ED5: $6E
    ld h, l                                       ; $5ED6: $65
    ld h, c                                       ; $5ED7: $61
    ld [hl], h                                    ; $5ED8: $74
    ld l, b                                       ; $5ED9: $68
    ld hl, $FDFE                                  ; $5EDA: $21 $FE $FD
    sbc d                                         ; $5EDD: $9A
    ld b, b                                       ; $5EDE: $40
    jr c, jr_01C_5F39                             ; $5EDF: $38 $58

    inc b                                         ; $5EE1: $04
    ld b, d                                       ; $5EE2: $42
    sbc e                                         ; $5EE3: $9B
    jr jr_01C_5F34                                ; $5EE4: $18 $4E

jr_01C_5EE6:
    sbc a                                         ; $5EE6: $9F
    ld c, l                                       ; $5EE7: $4D

jr_01C_5EE8:
    ld h, c                                       ; $5EE8: $61
    ld [hl], e                                    ; $5EE9: $73

jr_01C_5EEA:
    ld [hl], h                                    ; $5EEA: $74
    ld h, l                                       ; $5EEB: $65
    ld [hl], d                                    ; $5EEC: $72
    jr nz, jr_01C_5F5E                            ; $5EED: $20 $6F

    ld h, [hl]                                    ; $5EEF: $66
    jr nz, jr_01C_5F53                            ; $5EF0: $20 $61

    ld l, h                                       ; $5EF2: $6C

jr_01C_5EF3:
    ld l, h                                       ; $5EF3: $6C

jr_01C_5EF4:
    rst $38                                       ; $5EF4: $FF
    ld [hl], h                                    ; $5EF5: $74
    ld l, b                                       ; $5EF6: $68
    ld l, c                                       ; $5EF7: $69
    ld l, [hl]                                    ; $5EF8: $6E
    ld h, a                                       ; $5EF9: $67

jr_01C_5EFA:
    ld [hl], e                                    ; $5EFA: $73
    cp $72                                        ; $5EFB: $FE $72
    ld h, l                                       ; $5EFD: $65
    ld [hl], c                                    ; $5EFE: $71

jr_01C_5EFF:
    ld [hl], l                                    ; $5EFF: $75

jr_01C_5F00:
    ld l, c                                       ; $5F00: $69
    ld [hl], d                                    ; $5F01: $72
    ld l, c                                       ; $5F02: $69
    ld l, [hl]                                    ; $5F03: $6E
    ld h, a                                       ; $5F04: $67
    jr nz, jr_01C_5F74                            ; $5F05: $20 $6D

    ld a, c                                       ; $5F07: $79
    rst $38                                       ; $5F08: $FF
    ld l, c                                       ; $5F09: $69
    ld l, l                                       ; $5F0A: $6D
    ld l, l                                       ; $5F0B: $6D
    ld h, l                                       ; $5F0C: $65
    ld l, [hl]                                    ; $5F0D: $6E
    ld [hl], e                                    ; $5F0E: $73
    ld h, l                                       ; $5F0F: $65

jr_01C_5F10:
    cp $70                                        ; $5F10: $FE $70
    ld h, l                                       ; $5F12: $65
    ld h, e                                       ; $5F13: $63
    ld [hl], h                                    ; $5F14: $74
    ld l, a                                       ; $5F15: $6F
    ld [hl], d                                    ; $5F16: $72
    ld h, c                                       ; $5F17: $61
    ld l, h                                       ; $5F18: $6C
    ld [hl], e                                    ; $5F19: $73
    ld hl, $FDFE                                  ; $5F1A: $21 $FE $FD
    sbc d                                         ; $5F1D: $9A
    ld b, b                                       ; $5F1E: $40
    jr c, @+$5A                                   ; $5F1F: $38 $58

    dec b                                         ; $5F21: $05
    ld b, d                                       ; $5F22: $42
    sbc e                                         ; $5F23: $9B
    jr jr_01C_5F74                                ; $5F24: $18 $4E

    sbc a                                         ; $5F26: $9F
    ld d, h                                       ; $5F27: $54
    ld l, b                                       ; $5F28: $68
    ld h, l                                       ; $5F29: $65
    jr nz, @+$6F                                  ; $5F2A: $20 $6D

    ld h, c                                       ; $5F2C: $61

jr_01C_5F2D:
    ld l, [hl]                                    ; $5F2D: $6E
    jr nz, jr_01C_5FA7                            ; $5F2E: $20 $77

    ld l, c                                       ; $5F30: $69
    ld [hl], h                                    ; $5F31: $74
    ld l, b                                       ; $5F32: $68
    rst $38                                       ; $5F33: $FF

jr_01C_5F34:
    ld [hl], h                                    ; $5F34: $74
    ld l, b                                       ; $5F35: $68
    ld h, l                                       ; $5F36: $65
    jr nz, jr_01C_5F9A                            ; $5F37: $20 $61

jr_01C_5F39:
    ld h, e                                       ; $5F39: $63
    ld h, e                                       ; $5F3A: $63
    ld h, l                                       ; $5F3B: $65
    ld l, [hl]                                    ; $5F3C: $6E
    ld [hl], h                                    ; $5F3D: $74
    jr nz, jr_01C_5FB4                            ; $5F3E: $20 $74

    ld l, b                                       ; $5F40: $68

jr_01C_5F41:
    ld h, c                                       ; $5F41: $61
    ld [hl], h                                    ; $5F42: $74
    cp $64                                        ; $5F43: $FE $64
    ld [hl], d                                    ; $5F45: $72
    ld l, c                                       ; $5F46: $69
    halt                                          ; $5F47: $76
    ld h, l                                       ; $5F48: $65
    ld [hl], e                                    ; $5F49: $73
    jr nz, jr_01C_5FC3                            ; $5F4A: $20 $77

    ld l, a                                       ; $5F4C: $6F
    ld l, l                                       ; $5F4D: $6D
    ld h, l                                       ; $5F4E: $65
    ld l, [hl]                                    ; $5F4F: $6E
    rst $38                                       ; $5F50: $FF
    ld [hl], a                                    ; $5F51: $77
    ld l, c                                       ; $5F52: $69

jr_01C_5F53:
    ld l, h                                       ; $5F53: $6C
    ld h, h                                       ; $5F54: $64
    ld hl, $FDFE                                  ; $5F55: $21 $FE $FD
    sbc e                                         ; $5F58: $9B
    ld a, b                                       ; $5F59: $78
    ld [hl], b                                    ; $5F5A: $70
    sbc a                                         ; $5F5B: $9F
    ld l, $2E                                     ; $5F5C: $2E $2E

jr_01C_5F5E:
    ld l, $6F                                     ; $5F5E: $2E $6F
    ld l, b                                       ; $5F60: $68
    jr nz, jr_01C_5FD5                            ; $5F61: $20 $72

    ld h, l                                       ; $5F63: $65
    ld h, c                                       ; $5F64: $61
    ld l, h                                       ; $5F65: $6C
    ld l, h                                       ; $5F66: $6C
    ld a, c                                       ; $5F67: $79
    ld l, $FE                                     ; $5F68: $2E $FE
    db $FD                                        ; $5F6A: $FD
    sbc e                                         ; $5F6B: $9B
    jr jr_01C_5FBC                                ; $5F6C: $18 $4E

    sbc a                                         ; $5F6E: $9F
    ld d, h                                       ; $5F6F: $54
    ld l, b                                       ; $5F70: $68
    ld h, l                                       ; $5F71: $65
    jr nz, jr_01C_5FD6                            ; $5F72: $20 $62

jr_01C_5F74:
    ld l, a                                       ; $5F74: $6F
    ld l, l                                       ; $5F75: $6D
    ld h, d                                       ; $5F76: $62
    ld hl, $54FE                                  ; $5F77: $21 $FE $54
    ld l, b                                       ; $5F7A: $68
    ld h, l                                       ; $5F7B: $65
    jr nz, jr_01C_5FEB                            ; $5F7C: $20 $6D

    ld h, c                                       ; $5F7E: $61
    ld l, [hl]                                    ; $5F7F: $6E
    daa                                           ; $5F80: $27
    ld [hl], e                                    ; $5F81: $73
    jr nz, jr_01C_5FF1                            ; $5F82: $20 $6D

    ld h, c                                       ; $5F84: $61
    ld l, [hl]                                    ; $5F85: $6E
    ld hl, $54FE                                  ; $5F86: $21 $FE $54
    ld l, b                                       ; $5F89: $68
    ld h, l                                       ; $5F8A: $65
    jr nz, @+$64                                  ; $5F8B: $20 $62

    ld h, l                                       ; $5F8D: $65
    ld h, l                                       ; $5F8E: $65
    daa                                           ; $5F8F: $27
    ld [hl], e                                    ; $5F90: $73
    rst $38                                       ; $5F91: $FF
    ld l, e                                       ; $5F92: $6B
    ld l, [hl]                                    ; $5F93: $6E
    ld h, l                                       ; $5F94: $65
    ld h, l                                       ; $5F95: $65
    ld [hl], e                                    ; $5F96: $73
    ld hl, $49FE                                  ; $5F97: $21 $FE $49

jr_01C_5F9A:
    jr nz, jr_01C_5FFD                            ; $5F9A: $20 $61

    ld l, l                                       ; $5F9C: $6D
    jr nz, jr_01C_6000                            ; $5F9D: $20 $61

    ld l, h                                       ; $5F9F: $6C
    ld l, h                                       ; $5FA0: $6C
    jr nz, jr_01C_6012                            ; $5FA1: $20 $6F

    ld h, [hl]                                    ; $5FA3: $66
    rst $38                                       ; $5FA4: $FF
    ld [hl], h                                    ; $5FA5: $74
    ld l, b                                       ; $5FA6: $68

jr_01C_5FA7:
    ld h, l                                       ; $5FA7: $65
    ld [hl], e                                    ; $5FA8: $73
    ld h, l                                       ; $5FA9: $65
    jr nz, jr_01C_6020                            ; $5FAA: $20 $74

    ld l, c                                       ; $5FAC: $69
    ld l, l                                       ; $5FAD: $6D
    ld h, l                                       ; $5FAE: $65
    ld [hl], e                                    ; $5FAF: $73
    cp $74                                        ; $5FB0: $FE $74
    ld [hl], a                                    ; $5FB2: $77
    ld h, l                                       ; $5FB3: $65

jr_01C_5FB4:
    ld l, [hl]                                    ; $5FB4: $6E
    ld [hl], h                                    ; $5FB5: $74
    ld a, c                                       ; $5FB6: $79
    ld hl, $4E20                                  ; $5FB7: $21 $20 $4E
    ld l, a                                       ; $5FBA: $6F
    ld [hl], h                                    ; $5FBB: $74

jr_01C_5FBC:
    rst $38                                       ; $5FBC: $FF
    db $FD                                        ; $5FBD: $FD
    ld e, b                                       ; $5FBE: $58
    rlca                                          ; $5FBF: $07
    sbc a                                         ; $5FC0: $9F
    ld [hl], h                                    ; $5FC1: $74
    ld l, a                                       ; $5FC2: $6F

jr_01C_5FC3:
    jr nz, jr_01C_6032                            ; $5FC3: $20 $6D

    ld h, l                                       ; $5FC5: $65
    ld l, [hl]                                    ; $5FC6: $6E
    ld [hl], h                                    ; $5FC7: $74
    ld l, c                                       ; $5FC8: $69
    ld l, a                                       ; $5FC9: $6F
    ld l, [hl]                                    ; $5FCA: $6E
    rst $38                                       ; $5FCB: $FF
    ld c, c                                       ; $5FCC: $49
    daa                                           ; $5FCD: $27
    ld l, l                                       ; $5FCE: $6D
    jr nz, jr_01C_6035                            ; $5FCF: $20 $64

    ld [hl], d                                    ; $5FD1: $72
    ld l, a                                       ; $5FD2: $6F
    ld [hl], b                                    ; $5FD3: $70
    dec l                                         ; $5FD4: $2D

jr_01C_5FD5:
    ld h, h                                       ; $5FD5: $64

jr_01C_5FD6:
    ld h, l                                       ; $5FD6: $65
    ld h, c                                       ; $5FD7: $61
    ld h, h                                       ; $5FD8: $64
    rst $38                                       ; $5FD9: $FF
    ld h, a                                       ; $5FDA: $67
    ld l, a                                       ; $5FDB: $6F
    ld [hl], d                                    ; $5FDC: $72
    ld l, $2E                                     ; $5FDD: $2E $2E
    ld l, $FF                                     ; $5FDF: $2E $FF
    db $FD                                        ; $5FE1: $FD
    sbc d                                         ; $5FE2: $9A
    ld e, h                                       ; $5FE3: $5C
    nop                                           ; $5FE4: $00
    ld [bc], a                                    ; $5FE5: $02
    ld b, d                                       ; $5FE6: $42
    sbc e                                         ; $5FE7: $9B
    jr jr_01C_6038                                ; $5FE8: $18 $4E

    sbc a                                         ; $5FEA: $9F

jr_01C_5FEB:
    ld e, c                                       ; $5FEB: $59
    ld l, a                                       ; $5FEC: $6F
    ld [hl], l                                    ; $5FED: $75
    jr nz, jr_01C_6051                            ; $5FEE: $20 $61

    ld h, a                                       ; $5FF0: $67

jr_01C_5FF1:
    ld h, c                                       ; $5FF1: $61
    ld l, c                                       ; $5FF2: $69
    ld l, [hl]                                    ; $5FF3: $6E
    ccf                                           ; $5FF4: $3F
    cp $47                                        ; $5FF5: $FE $47
    ld l, a                                       ; $5FF7: $6F
    jr nz, jr_01C_605B                            ; $5FF8: $20 $61

    ld [hl], a                                    ; $5FFA: $77
    ld h, c                                       ; $5FFB: $61
    ld a, c                                       ; $5FFC: $79

jr_01C_5FFD:
    inc l                                         ; $5FFD: $2C
    jr nz, jr_01C_6066                            ; $5FFE: $20 $66

jr_01C_6000:
    ld l, a                                       ; $6000: $6F
    ld [hl], d                                    ; $6001: $72
    rst $38                                       ; $6002: $FF
    ld c, c                                       ; $6003: $49
    jr nz, @+$63                                  ; $6004: $20 $61

    ld l, l                                       ; $6006: $6D
    jr nz, jr_01C_607C                            ; $6007: $20 $73

    ld [hl], h                                    ; $6009: $74
    ld h, c                                       ; $600A: $61
    ld [hl], d                                    ; $600B: $72
    ld l, c                                       ; $600C: $69
    ld l, [hl]                                    ; $600D: $6E
    ld h, a                                       ; $600E: $67
    cp $6C                                        ; $600F: $FE $6C
    ld l, a                                       ; $6011: $6F

jr_01C_6012:
    halt                                          ; $6012: $76
    ld l, c                                       ; $6013: $69
    ld l, [hl]                                    ; $6014: $6E
    ld h, a                                       ; $6015: $67
    ld l, h                                       ; $6016: $6C
    ld a, c                                       ; $6017: $79
    jr nz, @+$63                                  ; $6018: $20 $61

    ld [hl], h                                    ; $601A: $74
    jr nz, @+$6F                                  ; $601B: $20 $6D

    ld a, c                                       ; $601D: $79
    rst $38                                       ; $601E: $FF
    ld l, h                                       ; $601F: $6C

jr_01C_6020:
    ld l, a                                       ; $6020: $6F
    halt                                          ; $6021: $76
    ld h, l                                       ; $6022: $65
    ld l, h                                       ; $6023: $6C
    ld a, c                                       ; $6024: $79
    jr nz, jr_01C_6089                            ; $6025: $20 $62

    ld l, c                                       ; $6027: $69
    ld h, e                                       ; $6028: $63
    ld h, l                                       ; $6029: $65
    ld [hl], b                                    ; $602A: $70
    ld [hl], e                                    ; $602B: $73
    cp $61                                        ; $602C: $FE $61
    ld l, [hl]                                    ; $602E: $6E
    ld h, h                                       ; $602F: $64
    jr nz, jr_01C_6093                            ; $6030: $20 $61

jr_01C_6032:
    ld h, d                                       ; $6032: $62
    ld h, h                                       ; $6033: $64
    ld l, a                                       ; $6034: $6F

jr_01C_6035:
    ld l, l                                       ; $6035: $6D
    ld l, c                                       ; $6036: $69
    ld l, [hl]                                    ; $6037: $6E

jr_01C_6038:
    ld h, c                                       ; $6038: $61
    ld l, h                                       ; $6039: $6C
    ld [hl], e                                    ; $603A: $73
    ld hl, $53FF                                  ; $603B: $21 $FF $53
    ld l, b                                       ; $603E: $68
    ld l, a                                       ; $603F: $6F
    ld l, a                                       ; $6040: $6F
    ld hl, $5320                                  ; $6041: $21 $20 $53
    ld l, b                                       ; $6044: $68
    ld l, a                                       ; $6045: $6F
    ld l, a                                       ; $6046: $6F
    ld hl, $FDFE                                  ; $6047: $21 $FE $FD
    sbc d                                         ; $604A: $9A
    ld e, b                                       ; $604B: $58
    ld bc, $9B42                                  ; $604C: $01 $42 $9B
    sbc b                                         ; $604F: $98
    ld [hl], e                                    ; $6050: $73

jr_01C_6051:
    sbc a                                         ; $6051: $9F
    ld c, c                                       ; $6052: $49
    jr nz, jr_01C_60BD                            ; $6053: $20 $68

    ld l, a                                       ; $6055: $6F
    ld [hl], b                                    ; $6056: $70
    ld h, l                                       ; $6057: $65
    jr nz, @+$49                                  ; $6058: $20 $47

    ld l, a                                       ; $605A: $6F

jr_01C_605B:
    ld h, a                                       ; $605B: $67
    ld l, a                                       ; $605C: $6F
    ld [hl], d                                    ; $605D: $72
    rst $38                                       ; $605E: $FF
    ld h, h                                       ; $605F: $64
    ld l, a                                       ; $6060: $6F
    ld h, l                                       ; $6061: $65
    ld [hl], e                                    ; $6062: $73
    ld l, [hl]                                    ; $6063: $6E
    daa                                           ; $6064: $27
    ld [hl], h                                    ; $6065: $74

jr_01C_6066:
    jr nz, jr_01C_60CC                            ; $6066: $20 $64

    ld l, a                                       ; $6068: $6F
    cp $73                                        ; $6069: $FE $73
    ld l, a                                       ; $606B: $6F
    ld l, l                                       ; $606C: $6D
    ld h, l                                       ; $606D: $65
    ld [hl], h                                    ; $606E: $74
    ld l, b                                       ; $606F: $68
    ld l, c                                       ; $6070: $69
    ld l, [hl]                                    ; $6071: $6E
    ld h, a                                       ; $6072: $67
    rst $38                                       ; $6073: $FF
    ld [hl], e                                    ; $6074: $73
    ld [hl], h                                    ; $6075: $74
    ld [hl], l                                    ; $6076: $75
    ld [hl], b                                    ; $6077: $70
    ld l, c                                       ; $6078: $69
    ld h, h                                       ; $6079: $64
    ld l, $2E                                     ; $607A: $2E $2E

jr_01C_607C:
    ld l, $FE                                     ; $607C: $2E $FE
    db $FD                                        ; $607E: $FD
    sbc d                                         ; $607F: $9A
    ld e, b                                       ; $6080: $58
    ld bc, $9B42                                  ; $6081: $01 $42 $9B
    xor b                                         ; $6084: $A8
    ld c, a                                       ; $6085: $4F
    sbc a                                         ; $6086: $9F
    ld b, d                                       ; $6087: $42
    ld h, l                                       ; $6088: $65

jr_01C_6089:
    jr nz, jr_01C_60EE                            ; $6089: $20 $63

    ld h, c                                       ; $608B: $61
    ld [hl], d                                    ; $608C: $72
    ld h, l                                       ; $608D: $65
    ld h, [hl]                                    ; $608E: $66
    ld [hl], l                                    ; $608F: $75
    ld l, h                                       ; $6090: $6C
    ld l, $FE                                     ; $6091: $2E $FE

jr_01C_6093:
    db $FD                                        ; $6093: $FD
    sbc d                                         ; $6094: $9A
    ld e, b                                       ; $6095: $58
    ld bc, $4B42                                  ; $6096: $01 $42 $4B
    inc b                                         ; $6099: $04
    inc e                                         ; $609A: $1C
    rlca                                          ; $609B: $07
    nop                                           ; $609C: $00
    xor d                                         ; $609D: $AA
    ld h, b                                       ; $609E: $60
    inc e                                         ; $609F: $1C
    ld [$5B00], sp                                ; $60A0: $08 $00 $5B
    ld h, d                                       ; $60A3: $62
    inc e                                         ; $60A4: $1C
    add hl, bc                                    ; $60A5: $09
    nop                                           ; $60A6: $00
    ld e, e                                       ; $60A7: $5B
    ld h, d                                       ; $60A8: $62
    rst $38                                       ; $60A9: $FF
    ld b, e                                       ; $60AA: $43
    ld [$0111], sp                                ; $60AB: $08 $11 $01
    inc h                                         ; $60AE: $24
    and d                                         ; $60AF: $A2
    dec b                                         ; $60B0: $05
    nop                                           ; $60B1: $00
    inc de                                        ; $60B2: $13
    ld bc, $A224                                  ; $60B3: $01 $24 $A2
    dec b                                         ; $60B6: $05
    inc b                                         ; $60B7: $04
    inc e                                         ; $60B8: $1C
    dec [hl]                                      ; $60B9: $35
    ld h, d                                       ; $60BA: $62
    ld b, e                                       ; $60BB: $43
    nop                                           ; $60BC: $00

jr_01C_60BD:
    dec h                                         ; $60BD: $25
    and c                                         ; $60BE: $A1
    ld [bc], a                                    ; $60BF: $02
    inc e                                         ; $60C0: $1C
    xor $61                                       ; $60C1: $EE $61
    xor a                                         ; $60C3: $AF
    dec h                                         ; $60C4: $25
    and c                                         ; $60C5: $A1
    ld [bc], a                                    ; $60C6: $02
    sub e                                         ; $60C7: $93
    ld h, l                                       ; $60C8: $65
    and c                                         ; $60C9: $A1
    ld b, h                                       ; $60CA: $44
    ld c, a                                       ; $60CB: $4F

jr_01C_60CC:
    ld h, h                                       ; $60CC: $64
    cp [hl]                                       ; $60CD: $BE
    ld b, l                                       ; $60CE: $45
    ld l, c                                       ; $60CF: $69
    jp Jump_01C_6645                              ; $60D0: $C3 $45 $66


    ret nz                                        ; $60D3: $C0

    ld e, h                                       ; $60D4: $5C
    ld hl, $0005                                  ; $60D5: $21 $05 $00
    ld l, e                                       ; $60D8: $6B
    ld c, d                                       ; $60D9: $4A
    dec b                                         ; $60DA: $05
    ld c, $91                                     ; $60DB: $0E $91
    ret nc                                        ; $60DD: $D0

jr_01C_60DE:
    nop                                           ; $60DE: $00
    inc e                                         ; $60DF: $1C
    jr nz, jr_01C_6143                            ; $60E0: $20 $61

jr_01C_60E2:
    ld [hl+], a                                   ; $60E2: $22
    dec b                                         ; $60E3: $05
    ld b, b                                       ; $60E4: $40
    dec bc                                        ; $60E5: $0B
    nop                                           ; $60E6: $00
    dec b                                         ; $60E7: $05
    ld [bc], a                                    ; $60E8: $02
    ld l, e                                       ; $60E9: $6B
    ld c, d                                       ; $60EA: $4A
    rlca                                          ; $60EB: $07
    inc bc                                        ; $60EC: $03
    dec h                                         ; $60ED: $25

jr_01C_60EE:
    ret nc                                        ; $60EE: $D0

    nop                                           ; $60EF: $00
    inc e                                         ; $60F0: $1C
    ld d, l                                       ; $60F1: $55
    ld h, c                                       ; $60F2: $61
    ld [hl+], a                                   ; $60F3: $22
    dec b                                         ; $60F4: $05
    ld b, b                                       ; $60F5: $40
    ld l, e                                       ; $60F6: $6B
    ld [hl], $0A                                  ; $60F7: $36 $0A
    db $10                                        ; $60F9: $10
    ld d, c                                       ; $60FA: $51

jr_01C_60FB:
    nop                                           ; $60FB: $00
    add b                                         ; $60FC: $80
    nop                                           ; $60FD: $00
    dec bc                                        ; $60FE: $0B
    ld [bc], a                                    ; $60FF: $02
    nop                                           ; $6100: $00
    add d                                         ; $6101: $82
    rra                                           ; $6102: $1F
    add hl, de                                    ; $6103: $19
    sub h                                         ; $6104: $94
    ld h, b                                       ; $6105: $60
    ld bc, $0007                                  ; $6106: $01 $07 $00
    ld l, e                                       ; $6109: $6B
    ld c, d                                       ; $610A: $4A
    ld h, d                                       ; $610B: $62
    rlca                                          ; $610C: $07
    add hl, bc                                    ; $610D: $09
    nop                                           ; $610E: $00
    jr nz, jr_01C_60DE                            ; $610F: $20 $CD

    ld c, a                                       ; $6111: $4F
    ld b, b                                       ; $6112: $40
    ld b, b                                       ; $6113: $40
    inc c                                         ; $6114: $0C
    nop                                           ; $6115: $00
    ld e, h                                       ; $6116: $5C
    nop                                           ; $6117: $00
    ld [bc], a                                    ; $6118: $02
    ld bc, $102C                                  ; $6119: $01 $2C $10
    ld b, l                                       ; $611C: $45
    ld [hl+], a                                   ; $611D: $22
    rrca                                          ; $611E: $0F
    ld e, a                                       ; $611F: $5F
    dec d                                         ; $6120: $15
    jr nz, @-$4B                                  ; $6121: $20 $B3

    ld c, a                                       ; $6123: $4F
    jr nc, jr_01C_6126                            ; $6124: $30 $00

jr_01C_6126:
    ld d, $20                                     ; $6126: $16 $20
    db $ED                                        ; $6128: $ED
    ld c, a                                       ; $6129: $4F
    db $10                                        ; $612A: $10
    ld bc, $2000                                  ; $612B: $01 $00 $20
    or e                                          ; $612E: $B3
    ld c, a                                       ; $612F: $4F
    jr nc, jr_01C_6132                            ; $6130: $30 $00

jr_01C_6132:
    rst $38                                       ; $6132: $FF
    nop                                           ; $6133: $00
    inc d                                         ; $6134: $14
    jr nz, jr_01C_60E2                            ; $6135: $20 $AB

    ld d, b                                       ; $6137: $50
    ld e, e                                       ; $6138: $5B
    inc e                                         ; $6139: $1C
    rra                                           ; $613A: $1F
    ld e, l                                       ; $613B: $5D
    ld h, d                                       ; $613C: $62
    ld bc, $3083                                  ; $613D: $01 $83 $30
    nop                                           ; $6140: $00
    rst $38                                       ; $6141: $FF
    nop                                           ; $6142: $00

jr_01C_6143:
    ld b, b                                       ; $6143: $40
    jr nc, jr_01C_615B                            ; $6144: $30 $15

    jr nz, jr_01C_60FB                            ; $6146: $20 $B3

    ld c, a                                       ; $6148: $4F
    jr nz, jr_01C_616B                            ; $6149: $20 $20

    xor e                                         ; $614B: $AB
    ld d, b                                       ; $614C: $50
    nop                                           ; $614D: $00
    nop                                           ; $614E: $00
    add hl, bc                                    ; $614F: $09
    ld [bc], a                                    ; $6150: $02
    inc e                                         ; $6151: $1C
    ld l, e                                       ; $6152: $6B
    ld h, c                                       ; $6153: $61
    ld b, d                                       ; $6154: $42
    dec d                                         ; $6155: $15
    ld c, $20                                     ; $6156: $0E $20
    ld h, h                                       ; $6158: $64
    jr nz, jr_01C_6169                            ; $6159: $20 $0E

jr_01C_615B:
    ret nc                                        ; $615B: $D0

    ld h, e                                       ; $615C: $63
    jr nz, @+$10                                  ; $615D: $20 $0E

    ld a, [hl+]                                   ; $615F: $2A
    ld h, h                                       ; $6160: $64
    jr nz, jr_01C_6171                            ; $6161: $20 $0E

    ret nc                                        ; $6163: $D0

    ld h, e                                       ; $6164: $63
    jr nz, jr_01C_6167                            ; $6165: $20 $00

jr_01C_6167:
    ld b, l                                       ; $6167: $45
    inc e                                         ; $6168: $1C

jr_01C_6169:
    ld d, l                                       ; $6169: $55
    ld h, c                                       ; $616A: $61

jr_01C_616B:
    inc d                                         ; $616B: $14
    ld c, $DA                                     ; $616C: $0E $DA
    ld h, e                                       ; $616E: $63
    ld e, e                                       ; $616F: $5B
    inc e                                         ; $6170: $1C

jr_01C_6171:
    dec [hl]                                      ; $6171: $35
    ld e, l                                       ; $6172: $5D
    ld b, b                                       ; $6173: $40
    inc b                                         ; $6174: $04
    ld d, [hl]                                    ; $6175: $56
    ld bc, $0162                                  ; $6176: $01 $62 $01
    dec d                                         ; $6179: $15
    ld c, $34                                     ; $617A: $0E $34
    ld h, h                                       ; $617C: $64
    jr nz, jr_01C_618D                            ; $617D: $20 $0E

    jp c, $0863                                   ; $617F: $DA $63 $08

    nop                                           ; $6182: $00
    ld e, e                                       ; $6183: $5B
    inc e                                         ; $6184: $1C
    ret nc                                        ; $6185: $D0

    ld e, l                                       ; $6186: $5D
    dec d                                         ; $6187: $15
    ld c, $3E                                     ; $6188: $0E $3E
    ld h, h                                       ; $618A: $64
    jr nz, jr_01C_619B                            ; $618B: $20 $0E

jr_01C_618D:
    xor $63                                       ; $618D: $EE $63
    ld [$2A0E], sp                                ; $618F: $08 $0E $2A
    ld h, h                                       ; $6192: $64
    jr nz, jr_01C_61A3                            ; $6193: $20 $0E

    ret nc                                        ; $6195: $D0

    ld h, e                                       ; $6196: $63
    ld [$200E], sp                                ; $6197: $08 $0E $20
    ld h, h                                       ; $619A: $64

jr_01C_619B:
    jr nz, jr_01C_61AB                            ; $619B: $20 $0E

    db $E4                                        ; $619D: $E4
    ld h, e                                       ; $619E: $63
    ld [$340E], sp                                ; $619F: $08 $0E $34
    ld h, h                                       ; $61A2: $64

jr_01C_61A3:
    jr nz, jr_01C_61A5                            ; $61A3: $20 $00

jr_01C_61A5:
    ld h, d                                       ; $61A5: $62
    ld [bc], a                                    ; $61A6: $02
    ld e, e                                       ; $61A7: $5B
    inc e                                         ; $61A8: $1C
    ld h, [hl]                                    ; $61A9: $66
    ld e, [hl]                                    ; $61AA: $5E

jr_01C_61AB:
    dec d                                         ; $61AB: $15
    ld c, $DA                                     ; $61AC: $0E $DA
    ld h, e                                       ; $61AE: $63
    jr nz, jr_01C_61B1                            ; $61AF: $20 $00

jr_01C_61B1:
    ld h, d                                       ; $61B1: $62
    inc bc                                        ; $61B2: $03

jr_01C_61B3:
    ld e, e                                       ; $61B3: $5B
    inc e                                         ; $61B4: $1C
    xor c                                         ; $61B5: $A9
    ld e, [hl]                                    ; $61B6: $5E
    inc d                                         ; $61B7: $14
    ld c, $34                                     ; $61B8: $0E $34
    ld h, h                                       ; $61BA: $64
    ld h, d                                       ; $61BB: $62
    inc b                                         ; $61BC: $04
    ld e, e                                       ; $61BD: $5B
    inc e                                         ; $61BE: $1C
    db $E3                                        ; $61BF: $E3
    ld e, [hl]                                    ; $61C0: $5E
    dec d                                         ; $61C1: $15
    ld c, $DA                                     ; $61C2: $0E $DA
    ld h, e                                       ; $61C4: $63
    ld [$3E0E], sp                                ; $61C5: $08 $0E $3E
    ld h, h                                       ; $61C8: $64
    nop                                           ; $61C9: $00
    nop                                           ; $61CA: $00
    ld h, d                                       ; $61CB: $62
    dec b                                         ; $61CC: $05
    ld e, e                                       ; $61CD: $5B
    inc e                                         ; $61CE: $1C
    inc hl                                        ; $61CF: $23
    ld e, a                                       ; $61D0: $5F
    dec d                                         ; $61D1: $15
    ld c, $EE                                     ; $61D2: $0E $EE
    ld h, e                                       ; $61D4: $63
    ld [$2A0E], sp                                ; $61D5: $08 $0E $2A
    ld h, h                                       ; $61D8: $64
    jr nz, jr_01C_61E9                            ; $61D9: $20 $0E

    ret nc                                        ; $61DB: $D0

    ld h, e                                       ; $61DC: $63
    ld [$200E], sp                                ; $61DD: $08 $0E $20
    ld h, h                                       ; $61E0: $64
    jr nz, jr_01C_61F1                            ; $61E1: $20 $0E

    db $E4                                        ; $61E3: $E4
    ld h, e                                       ; $61E4: $63
    ld [$340E], sp                                ; $61E5: $08 $0E $34
    ld h, h                                       ; $61E8: $64

jr_01C_61E9:
    nop                                           ; $61E9: $00
    nop                                           ; $61EA: $00
    ld h, d                                       ; $61EB: $62
    ld b, $42                                     ; $61EC: $06 $42
    sub e                                         ; $61EE: $93
    ld h, l                                       ; $61EF: $65
    and c                                         ; $61F0: $A1

jr_01C_61F1:
    ld b, h                                       ; $61F1: $44
    ld c, a                                       ; $61F2: $4F
    ld h, h                                       ; $61F3: $64
    cp [hl]                                       ; $61F4: $BE
    ld b, l                                       ; $61F5: $45
    ld l, c                                       ; $61F6: $69
    jp Jump_01C_6645                              ; $61F7: $C3 $45 $66


jr_01C_61FA:
    ret nz                                        ; $61FA: $C0

    ld e, h                                       ; $61FB: $5C
    ld hl, $0005                                  ; $61FC: $21 $05 $00
    add c                                         ; $61FF: $81
    ld e, l                                       ; $6200: $5D
    dec b                                         ; $6201: $05
    ld c, $91                                     ; $6202: $0E $91
    ret nc                                        ; $6204: $D0

    nop                                           ; $6205: $00
    jr nz, jr_01C_61B3                            ; $6206: $20 $AB

    ld d, b                                       ; $6208: $50
    ld [hl+], a                                   ; $6209: $22
    dec b                                         ; $620A: $05
    ld b, b                                       ; $620B: $40
    dec bc                                        ; $620C: $0B
    nop                                           ; $620D: $00
    dec b                                         ; $620E: $05
    ld [bc], a                                    ; $620F: $02
    db $ED                                        ; $6210: $ED
    ld h, e                                       ; $6211: $63
    rlca                                          ; $6212: $07
    inc bc                                        ; $6213: $03
    dec h                                         ; $6214: $25
    ret nc                                        ; $6215: $D0

    nop                                           ; $6216: $00
    inc e                                         ; $6217: $1C
    ld d, l                                       ; $6218: $55
    ld h, c                                       ; $6219: $61
    inc e                                         ; $621A: $1C
    dec l                                         ; $621B: $2D
    ld h, d                                       ; $621C: $62
    ld l, e                                       ; $621D: $6B
    ld [hl], $0A                                  ; $621E: $36 $0A

jr_01C_6220:
    db $10                                        ; $6220: $10
    ld d, c                                       ; $6221: $51
    nop                                           ; $6222: $00
    add b                                         ; $6223: $80
    nop                                           ; $6224: $00
    dec bc                                        ; $6225: $0B
    ld [bc], a                                    ; $6226: $02
    nop                                           ; $6227: $00
    add d                                         ; $6228: $82
    rra                                           ; $6229: $1F
    add hl, de                                    ; $622A: $19
    sub h                                         ; $622B: $94
    ld b, d                                       ; $622C: $42
    ld e, e                                       ; $622D: $5B
    inc e                                         ; $622E: $1C
    rst $20                                       ; $622F: $E7
    ld e, a                                       ; $6230: $5F
    ld b, l                                       ; $6231: $45
    ld c, $48                                     ; $6232: $0E $48
    ld h, h                                       ; $6234: $64
    sub e                                         ; $6235: $93
    ld h, l                                       ; $6236: $65
    and c                                         ; $6237: $A1
    ld b, h                                       ; $6238: $44
    ld c, a                                       ; $6239: $4F
    ld h, h                                       ; $623A: $64
    cp [hl]                                       ; $623B: $BE
    ld b, l                                       ; $623C: $45
    ld l, c                                       ; $623D: $69
    jp Jump_01C_6645                              ; $623E: $C3 $45 $66


    ret nz                                        ; $6241: $C0

    ld e, h                                       ; $6242: $5C
    ld hl, $0005                                  ; $6243: $21 $05 $00
    add c                                         ; $6246: $81
    ld e, l                                       ; $6247: $5D
    dec b                                         ; $6248: $05
    ld c, $91                                     ; $6249: $0E $91
    ret nc                                        ; $624B: $D0

    nop                                           ; $624C: $00
    jr nz, jr_01C_61FA                            ; $624D: $20 $AB

    ld d, b                                       ; $624F: $50
    ld [hl+], a                                   ; $6250: $22
    dec b                                         ; $6251: $05
    ld b, b                                       ; $6252: $40
    dec bc                                        ; $6253: $0B
    nop                                           ; $6254: $00
    nop                                           ; $6255: $00
    add d                                         ; $6256: $82
    rra                                           ; $6257: $1F
    dec d                                         ; $6258: $15
    sub h                                         ; $6259: $94
    ld b, d                                       ; $625A: $42
    sub e                                         ; $625B: $93
    ld h, l                                       ; $625C: $65
    and c                                         ; $625D: $A1
    ld b, h                                       ; $625E: $44
    ld c, a                                       ; $625F: $4F
    ld h, h                                       ; $6260: $64
    cp [hl]                                       ; $6261: $BE
    ld b, l                                       ; $6262: $45
    ld l, c                                       ; $6263: $69
    jp Jump_01C_6645                              ; $6264: $C3 $45 $66


    ret nz                                        ; $6267: $C0

    ld e, h                                       ; $6268: $5C
    ld hl, $0005                                  ; $6269: $21 $05 $00
    add c                                         ; $626C: $81
    ld e, l                                       ; $626D: $5D
    dec b                                         ; $626E: $05
    ld a, [bc]                                    ; $626F: $0A
    ld l, c                                       ; $6270: $69
    ret nc                                        ; $6271: $D0

    nop                                           ; $6272: $00
    jr nz, jr_01C_6220                            ; $6273: $20 $AB

    ld d, b                                       ; $6275: $50
    ld [hl+], a                                   ; $6276: $22
    dec b                                         ; $6277: $05
    ld b, b                                       ; $6278: $40
    dec bc                                        ; $6279: $0B
    nop                                           ; $627A: $00
    dec b                                         ; $627B: $05
    ld [bc], a                                    ; $627C: $02
    db $ED                                        ; $627D: $ED
    ld h, e                                       ; $627E: $63
    inc bc                                        ; $627F: $03
    ld a, [bc]                                    ; $6280: $0A
    ld h, a                                       ; $6281: $67
    ret nc                                        ; $6282: $D0

    jr nc, jr_01C_62A1                            ; $6283: $30 $1C

    or e                                          ; $6285: $B3
    ld h, d                                       ; $6286: $62
    inc e                                         ; $6287: $1C
    cp $62                                        ; $6288: $FE $62
    dec b                                         ; $628A: $05
    inc bc                                        ; $628B: $03
    db $ED                                        ; $628C: $ED
    ld h, e                                       ; $628D: $63
    rlca                                          ; $628E: $07
    ld [$D057], sp                                ; $628F: $08 $57 $D0
    nop                                           ; $6292: $00
    inc e                                         ; $6293: $1C
    add $62                                       ; $6294: $C6 $62
    inc e                                         ; $6296: $1C
    db $ED                                        ; $6297: $ED
    ld h, d                                       ; $6298: $62
    ld l, e                                       ; $6299: $6B
    jr nc, jr_01C_62A7                            ; $629A: $30 $0B

    db $10                                        ; $629C: $10
    ld h, a                                       ; $629D: $67
    nop                                           ; $629E: $00
    add b                                         ; $629F: $80
    nop                                           ; $62A0: $00

jr_01C_62A1:
    ld l, e                                       ; $62A1: $6B
    add hl, hl                                    ; $62A2: $29
    ld a, [bc]                                    ; $62A3: $0A
    ld [hl], b                                    ; $62A4: $70
    ld d, h                                       ; $62A5: $54
    nop                                           ; $62A6: $00

jr_01C_62A7:
    add e                                         ; $62A7: $83
    nop                                           ; $62A8: $00
    dec bc                                        ; $62A9: $0B
    ld [bc], a                                    ; $62AA: $02
    dec bc                                        ; $62AB: $0B
    inc bc                                        ; $62AC: $03
    nop                                           ; $62AD: $00
    rra                                           ; $62AE: $1F
    dec d                                         ; $62AF: $15
    add d                                         ; $62B0: $82
    sub h                                         ; $62B1: $94
    ld b, d                                       ; $62B2: $42
    dec d                                         ; $62B3: $15
    ld c, $6D                                     ; $62B4: $0E $6D
    ld h, [hl]                                    ; $62B6: $66
    sub b                                         ; $62B7: $90
    ld c, $77                                     ; $62B8: $0E $77
    ld h, [hl]                                    ; $62BA: $66
    sub b                                         ; $62BB: $90
    ld c, $81                                     ; $62BC: $0E $81
    ld h, [hl]                                    ; $62BE: $66
    sub b                                         ; $62BF: $90
    nop                                           ; $62C0: $00
    ld b, l                                       ; $62C1: $45
    inc e                                         ; $62C2: $1C
    or e                                          ; $62C3: $B3
    ld h, d                                       ; $62C4: $62
    ld b, d                                       ; $62C5: $42
    dec d                                         ; $62C6: $15
    rrca                                          ; $62C7: $0F
    xor c                                         ; $62C8: $A9
    ld l, c                                       ; $62C9: $69
    jr nz, jr_01C_62DB                            ; $62CA: $20 $0F

    dec e                                         ; $62CC: $1D
    ld l, d                                       ; $62CD: $6A
    ld h, b                                       ; $62CE: $60
    rrca                                          ; $62CF: $0F
    cp c                                          ; $62D0: $B9
    ld l, c                                       ; $62D1: $69
    jr nz, jr_01C_62E3                            ; $62D2: $20 $0F

    daa                                           ; $62D4: $27
    ld l, d                                       ; $62D5: $6A
    ld h, b                                       ; $62D6: $60
    rrca                                          ; $62D7: $0F
    ld c, a                                       ; $62D8: $4F
    ld l, d                                       ; $62D9: $6A
    ld h, b                                       ; $62DA: $60

jr_01C_62DB:
    rrca                                          ; $62DB: $0F
    daa                                           ; $62DC: $27
    ld l, d                                       ; $62DD: $6A
    ld h, b                                       ; $62DE: $60
    rrca                                          ; $62DF: $0F
    dec sp                                        ; $62E0: $3B
    ld l, d                                       ; $62E1: $6A
    ld h, b                                       ; $62E2: $60

jr_01C_62E3:
    rrca                                          ; $62E3: $0F
    daa                                           ; $62E4: $27
    ld l, d                                       ; $62E5: $6A
    ld h, b                                       ; $62E6: $60
    nop                                           ; $62E7: $00
    ld b, l                                       ; $62E8: $45
    inc e                                         ; $62E9: $1C
    add $62                                       ; $62EA: $C6 $62
    ld b, d                                       ; $62EC: $42
    dec d                                         ; $62ED: $15
    rrca                                          ; $62EE: $0F
    inc de                                        ; $62EF: $13
    ld l, d                                       ; $62F0: $6A
    stop                                          ; $62F1: $10 $00
    ld d, [hl]                                    ; $62F3: $56
    rla                                           ; $62F4: $17
    ld e, e                                       ; $62F5: $5B
    inc e                                         ; $62F6: $1C
    ld c, [hl]                                    ; $62F7: $4E
    ld h, b                                       ; $62F8: $60
    ld b, l                                       ; $62F9: $45
    rrca                                          ; $62FA: $0F
    ld e, c                                       ; $62FB: $59
    ld l, d                                       ; $62FC: $6A
    ld b, d                                       ; $62FD: $42
    inc d                                         ; $62FE: $14
    ld c, $6D                                     ; $62FF: $0E $6D
    ld h, [hl]                                    ; $6301: $66
    ld e, e                                       ; $6302: $5B
    inc e                                         ; $6303: $1C
    add e                                         ; $6304: $83
    ld h, b                                       ; $6305: $60
    ld b, l                                       ; $6306: $45
    ld c, $B3                                     ; $6307: $0E $B3
    ld h, [hl]                                    ; $6309: $66
    ld b, d                                       ; $630A: $42
    ld [bc], a                                    ; $630B: $02
    dec bc                                        ; $630C: $0B
    jr nz, jr_01C_6322                            ; $630D: $20 $13

    ld hl, $2245                                  ; $630F: $21 $45 $22
    ld e, [hl]                                    ; $6312: $5E
    ld e, c                                       ; $6313: $59
    sbc e                                         ; $6314: $9B
    ld a, b                                       ; $6315: $78
    ld [hl], b                                    ; $6316: $70
    sbc a                                         ; $6317: $9F
    ld b, c                                       ; $6318: $41
    jr nz, jr_01C_6389                            ; $6319: $20 $6E

    ld h, l                                       ; $631B: $65
    ld h, e                                       ; $631C: $63
    ld h, l                                       ; $631D: $65
    ld [hl], e                                    ; $631E: $73
    ld [hl], e                                    ; $631F: $73
    ld l, c                                       ; $6320: $69
    ld [hl], h                                    ; $6321: $74

jr_01C_6322:
    ld a, c                                       ; $6322: $79
    rst $38                                       ; $6323: $FF
    ld h, [hl]                                    ; $6324: $66
    ld l, a                                       ; $6325: $6F
    ld [hl], d                                    ; $6326: $72
    jr nz, jr_01C_638A                            ; $6327: $20 $61

    jr nz, jr_01C_6397                            ; $6329: $20 $6C

    ld h, l                                       ; $632B: $65
    ld h, c                                       ; $632C: $61
    ld h, h                                       ; $632D: $64
    ld h, l                                       ; $632E: $65
    ld [hl], d                                    ; $632F: $72
    cp $6F                                        ; $6330: $FE $6F
    ld h, [hl]                                    ; $6332: $66
    jr nz, @+$76                                  ; $6333: $20 $74

    ld l, b                                       ; $6335: $68
    ld h, l                                       ; $6336: $65
    rst $38                                       ; $6337: $FF
    ld h, e                                       ; $6338: $63
    ld l, a                                       ; $6339: $6F
    ld l, l                                       ; $633A: $6D
    ld l, l                                       ; $633B: $6D
    ld [hl], l                                    ; $633C: $75
    ld l, [hl]                                    ; $633D: $6E
    ld l, c                                       ; $633E: $69
    ld [hl], h                                    ; $633F: $74
    ld a, c                                       ; $6340: $79
    ld l, $FE                                     ; $6341: $2E $FE
    db $FD                                        ; $6343: $FD
    sbc d                                         ; $6344: $9A
    ld b, d                                       ; $6345: $42
    sbc a                                         ; $6346: $9F
    ld c, l                                       ; $6347: $4D
    ld l, a                                       ; $6348: $6F
    ld [hl], h                                    ; $6349: $74
    ld h, c                                       ; $634A: $61
    ld [hl], e                                    ; $634B: $73
    ld l, b                                       ; $634C: $68
    daa                                           ; $634D: $27
    ld [hl], e                                    ; $634E: $73
    rst $38                                       ; $634F: $FF
    ld c, l                                       ; $6350: $4D
    ld h, c                                       ; $6351: $61
    ld h, a                                       ; $6352: $67
    ld l, c                                       ; $6353: $69
    jr nz, jr_01C_63A5                            ; $6354: $20 $4F

    ld [hl], b                                    ; $6356: $70
    ld [hl], l                                    ; $6357: $75
    ld [hl], e                                    ; $6358: $73
    ld l, $FE                                     ; $6359: $2E $FE
    db $FD                                        ; $635B: $FD
    sbc e                                         ; $635C: $9B
    ld a, b                                       ; $635D: $78
    ld [hl], b                                    ; $635E: $70
    sbc a                                         ; $635F: $9F
    ld b, c                                       ; $6360: $41
    jr nz, jr_01C_63D0                            ; $6361: $20 $6D

    ld l, a                                       ; $6363: $6F
    ld [hl], e                                    ; $6364: $73
    ld [hl], h                                    ; $6365: $74
    rst $38                                       ; $6366: $FF
    ld l, c                                       ; $6367: $69
    ld l, [hl]                                    ; $6368: $6E
    ld [hl], h                                    ; $6369: $74
    ld l, c                                       ; $636A: $69
    ld l, l                                       ; $636B: $6D
    ld l, c                                       ; $636C: $69
    ld h, h                                       ; $636D: $64
    ld h, c                                       ; $636E: $61
    ld [hl], h                                    ; $636F: $74
    ld l, c                                       ; $6370: $69
    ld l, [hl]                                    ; $6371: $6E
    ld h, a                                       ; $6372: $67
    cp $72                                        ; $6373: $FE $72
    ld h, l                                       ; $6375: $65
    ld h, c                                       ; $6376: $61
    ld h, h                                       ; $6377: $64
    ld l, $FE                                     ; $6378: $2E $FE
    db $FD                                        ; $637A: $FD
    sbc d                                         ; $637B: $9A
    ld b, d                                       ; $637C: $42
    sbc e                                         ; $637D: $9B
    ld a, b                                       ; $637E: $78
    ld [hl], b                                    ; $637F: $70
    sbc a                                         ; $6380: $9F
    ld b, c                                       ; $6381: $41
    jr nz, jr_01C_63E6                            ; $6382: $20 $62

    ld l, c                                       ; $6384: $69
    ld l, [hl]                                    ; $6385: $6E
    jr nz, jr_01C_63F7                            ; $6386: $20 $6F

    ld h, [hl]                                    ; $6388: $66

jr_01C_6389:
    rst $38                                       ; $6389: $FF

jr_01C_638A:
    ld [hl], e                                    ; $638A: $73
    ld [hl], h                                    ; $638B: $74
    ld [hl], d                                    ; $638C: $72
    ld h, c                                       ; $638D: $61
    ld l, [hl]                                    ; $638E: $6E
    ld h, a                                       ; $638F: $67
    ld h, l                                       ; $6390: $65
    jr nz, jr_01C_63FF                            ; $6391: $20 $6C

    ld l, a                                       ; $6393: $6F
    ld l, a                                       ; $6394: $6F
    ld l, e                                       ; $6395: $6B
    ld l, c                                       ; $6396: $69

jr_01C_6397:
    ld l, [hl]                                    ; $6397: $6E
    ld h, a                                       ; $6398: $67
    cp $62                                        ; $6399: $FE $62
    ld l, c                                       ; $639B: $69
    ld [hl], h                                    ; $639C: $74
    ld [hl], e                                    ; $639D: $73
    jr nz, @+$63                                  ; $639E: $20 $61

    ld l, [hl]                                    ; $63A0: $6E
    ld h, h                                       ; $63A1: $64
    jr nz, jr_01C_6408                            ; $63A2: $20 $64

    ld h, l                                       ; $63A4: $65

jr_01C_63A5:
    ld h, c                                       ; $63A5: $61
    ld l, h                                       ; $63A6: $6C
    ld [hl], e                                    ; $63A7: $73
    ld l, $FE                                     ; $63A8: $2E $FE
    db $FD                                        ; $63AA: $FD
    sbc d                                         ; $63AB: $9A
    ld b, d                                       ; $63AC: $42
    sbc e                                         ; $63AD: $9B
    ld a, b                                       ; $63AE: $78
    ld [hl], b                                    ; $63AF: $70
    sbc a                                         ; $63B0: $9F
    ld c, c                                       ; $63B1: $49
    ld [hl], h                                    ; $63B2: $74
    daa                                           ; $63B3: $27
    ld [hl], e                                    ; $63B4: $73
    jr nz, jr_01C_6424                            ; $63B5: $20 $6D

    ld l, a                                       ; $63B7: $6F
    halt                                          ; $63B8: $76
    ld l, c                                       ; $63B9: $69
    ld l, [hl]                                    ; $63BA: $6E
    ld h, a                                       ; $63BB: $67
    ld hl, $FDFE                                  ; $63BC: $21 $FE $FD
    sbc d                                         ; $63BF: $9A
    ld b, d                                       ; $63C0: $42
    sbc e                                         ; $63C1: $9B
    ld a, b                                       ; $63C2: $78
    ld [hl], b                                    ; $63C3: $70
    sbc a                                         ; $63C4: $9F
    ld c, e                                       ; $63C5: $4B
    ld l, [hl]                                    ; $63C6: $6E
    ld l, c                                       ; $63C7: $69
    ld h, e                                       ; $63C8: $63
    ld l, e                                       ; $63C9: $6B
    jr nz, jr_01C_6437                            ; $63CA: $20 $6B

    ld l, [hl]                                    ; $63CC: $6E
    ld h, c                                       ; $63CD: $61
    ld h, e                                       ; $63CE: $63
    ld l, e                                       ; $63CF: $6B

jr_01C_63D0:
    ld [hl], e                                    ; $63D0: $73
    ld l, $FE                                     ; $63D1: $2E $FE
    ld c, c                                       ; $63D3: $49
    jr nz, @+$75                                  ; $63D4: $20 $73

    ld l, b                                       ; $63D6: $68
    ld l, a                                       ; $63D7: $6F
    ld [hl], l                                    ; $63D8: $75
    ld l, h                                       ; $63D9: $6C
    ld h, h                                       ; $63DA: $64
    jr nz, @+$6E                                  ; $63DB: $20 $6C

    ld h, l                                       ; $63DD: $65
    ld h, c                                       ; $63DE: $61
    halt                                          ; $63DF: $76
    ld h, l                                       ; $63E0: $65
    rst $38                                       ; $63E1: $FF
    ld [hl], h                                    ; $63E2: $74
    ld l, b                                       ; $63E3: $68
    ld h, l                                       ; $63E4: $65
    ld l, l                                       ; $63E5: $6D

jr_01C_63E6:
    jr nz, jr_01C_644A                            ; $63E6: $20 $62

    ld h, l                                       ; $63E8: $65
    ld l, $FE                                     ; $63E9: $2E $FE
    ld c, c                                       ; $63EB: $49
    jr nz, @+$66                                  ; $63EC: $20 $64

    ld l, a                                       ; $63EE: $6F
    ld l, [hl]                                    ; $63EF: $6E
    daa                                           ; $63F0: $27
    ld [hl], h                                    ; $63F1: $74
    jr nz, jr_01C_646B                            ; $63F2: $20 $77

    ld h, c                                       ; $63F4: $61
    ld l, [hl]                                    ; $63F5: $6E
    ld [hl], h                                    ; $63F6: $74

jr_01C_63F7:
    jr nz, jr_01C_646D                            ; $63F7: $20 $74

    ld l, a                                       ; $63F9: $6F
    rst $38                                       ; $63FA: $FF
    ld h, d                                       ; $63FB: $62
    ld [hl], d                                    ; $63FC: $72
    ld h, l                                       ; $63FD: $65
    ld h, c                                       ; $63FE: $61

jr_01C_63FF:
    ld l, e                                       ; $63FF: $6B
    jr nz, jr_01C_6463                            ; $6400: $20 $61

    ld l, [hl]                                    ; $6402: $6E
    ld a, c                                       ; $6403: $79
    ld [hl], h                                    ; $6404: $74
    ld l, b                                       ; $6405: $68
    ld l, c                                       ; $6406: $69
    ld l, [hl]                                    ; $6407: $6E

jr_01C_6408:
    ld h, a                                       ; $6408: $67
    ld l, $FE                                     ; $6409: $2E $FE
    db $FD                                        ; $640B: $FD
    sbc d                                         ; $640C: $9A
    ld b, d                                       ; $640D: $42
    sbc e                                         ; $640E: $9B
    ld a, b                                       ; $640F: $78
    ld [hl], b                                    ; $6410: $70
    sbc a                                         ; $6411: $9F
    ld b, e                                       ; $6412: $43
    ld l, b                                       ; $6413: $68
    ld h, c                                       ; $6414: $61
    ld l, c                                       ; $6415: $69
    ld [hl], d                                    ; $6416: $72
    ld [hl], e                                    ; $6417: $73
    jr nz, jr_01C_6481                            ; $6418: $20 $67

    ld [hl], d                                    ; $641A: $72
    ld l, a                                       ; $641B: $6F
    ld [hl], a                                    ; $641C: $77
    ld l, [hl]                                    ; $641D: $6E
    rst $38                                       ; $641E: $FF
    ld [hl], d                                    ; $641F: $72
    ld l, c                                       ; $6420: $69
    ld h, a                                       ; $6421: $67
    ld l, b                                       ; $6422: $68
    ld [hl], h                                    ; $6423: $74

jr_01C_6424:
    jr nz, jr_01C_648C                            ; $6424: $20 $66

    ld [hl], d                                    ; $6426: $72
    ld l, a                                       ; $6427: $6F
    ld l, l                                       ; $6428: $6D
    jr nz, jr_01C_649F                            ; $6429: $20 $74

    ld l, b                                       ; $642B: $68
    ld h, l                                       ; $642C: $65
    cp $67                                        ; $642D: $FE $67
    ld [hl], d                                    ; $642F: $72
    ld l, a                                       ; $6430: $6F
    ld [hl], l                                    ; $6431: $75
    ld l, [hl]                                    ; $6432: $6E
    ld h, h                                       ; $6433: $64
    jr nz, jr_01C_649F                            ; $6434: $20 $69

    ld [hl], h                                    ; $6436: $74

jr_01C_6437:
    ld [hl], e                                    ; $6437: $73
    ld h, l                                       ; $6438: $65
    ld l, h                                       ; $6439: $6C
    ld h, [hl]                                    ; $643A: $66
    ld l, $FE                                     ; $643B: $2E $FE
    ld b, e                                       ; $643D: $43
    ld l, a                                       ; $643E: $6F
    ld l, a                                       ; $643F: $6F
    ld l, h                                       ; $6440: $6C
    jr nz, jr_01C_64A5                            ; $6441: $20 $62

    ld h, l                                       ; $6443: $65
    ld h, c                                       ; $6444: $61
    ld l, [hl]                                    ; $6445: $6E
    ld [hl], e                                    ; $6446: $73
    ld hl, $FDFE                                  ; $6447: $21 $FE $FD

jr_01C_644A:
    sbc d                                         ; $644A: $9A
    ld b, d                                       ; $644B: $42
    ld b, e                                       ; $644C: $43
    rrca                                          ; $644D: $0F
    inc b                                         ; $644E: $04
    dec b                                         ; $644F: $05
    ld [$9D1C], sp                                ; $6450: $08 $1C $9D
    ld h, l                                       ; $6453: $65
    ld b, e                                       ; $6454: $43
    ld de, $B801                                  ; $6455: $11 $01 $B8
    and d                                         ; $6458: $A2
    dec b                                         ; $6459: $05
    nop                                           ; $645A: $00
    inc e                                         ; $645B: $1C
    halt                                          ; $645C: $76
    ld h, h                                       ; $645D: $64
    sbc e                                         ; $645E: $9B
    ld a, b                                       ; $645F: $78
    ld [hl], b                                    ; $6460: $70
    sbc a                                         ; $6461: $9F
    ld e, c                                       ; $6462: $59

jr_01C_6463:
    ld [hl], l                                    ; $6463: $75
    ld h, e                                       ; $6464: $63
    ld l, e                                       ; $6465: $6B
    ld hl, $4DFE                                  ; $6466: $21 $FE $4D
    ld [hl], l                                    ; $6469: $75
    ld [hl], e                                    ; $646A: $73

jr_01C_646B:
    ld l, b                                       ; $646B: $68
    ld [hl], d                                    ; $646C: $72

jr_01C_646D:
    ld l, a                                       ; $646D: $6F
    ld l, a                                       ; $646E: $6F
    ld l, l                                       ; $646F: $6D
    ld [hl], e                                    ; $6470: $73
    ld l, $FE                                     ; $6471: $2E $FE
    db $FD                                        ; $6473: $FD
    sbc d                                         ; $6474: $9A
    ld b, d                                       ; $6475: $42
    ld b, e                                       ; $6476: $43
    ld de, $B801                                  ; $6477: $11 $01 $B8
    and d                                         ; $647A: $A2
    dec b                                         ; $647B: $05
    inc d                                         ; $647C: $14
    inc e                                         ; $647D: $1C
    inc d                                         ; $647E: $14
    ld h, l                                       ; $647F: $65
    sbc e                                         ; $6480: $9B

jr_01C_6481:
    ld a, b                                       ; $6481: $78
    ld [hl], b                                    ; $6482: $70
    sbc a                                         ; $6483: $9F
    ld c, b                                       ; $6484: $48
    ld l, l                                       ; $6485: $6D
    ld l, l                                       ; $6486: $6D
    ld l, $2E                                     ; $6487: $2E $2E
    ld l, $FF                                     ; $6489: $2E $FF
    ld c, l                                       ; $648B: $4D

jr_01C_648C:
    ld [hl], l                                    ; $648C: $75
    ld [hl], e                                    ; $648D: $73
    ld l, b                                       ; $648E: $68
    ld [hl], d                                    ; $648F: $72
    ld l, a                                       ; $6490: $6F
    ld l, a                                       ; $6491: $6F
    ld l, l                                       ; $6492: $6D
    ld [hl], e                                    ; $6493: $73
    ld l, $FE                                     ; $6494: $2E $FE
    ld c, c                                       ; $6496: $49
    jr nz, jr_01C_6501                            ; $6497: $20 $68

    ld h, l                                       ; $6499: $65
    ld h, c                                       ; $649A: $61
    ld [hl], d                                    ; $649B: $72
    rst $38                                       ; $649C: $FF
    ld [hl], h                                    ; $649D: $74
    ld l, b                                       ; $649E: $68

jr_01C_649F:
    ld h, l                                       ; $649F: $65
    ld [hl], e                                    ; $64A0: $73
    ld h, l                                       ; $64A1: $65
    jr nz, jr_01C_6518                            ; $64A2: $20 $74

    ld l, b                                       ; $64A4: $68

jr_01C_64A5:
    ld l, c                                       ; $64A5: $69
    ld l, [hl]                                    ; $64A6: $6E
    ld h, a                                       ; $64A7: $67
    ld [hl], e                                    ; $64A8: $73
    cp $61                                        ; $64A9: $FE $61
    ld [hl], d                                    ; $64AB: $72
    ld h, l                                       ; $64AC: $65
    jr nz, jr_01C_6528                            ; $64AD: $20 $79

    ld [hl], l                                    ; $64AF: $75
    ld l, l                                       ; $64B0: $6D
    ld l, l                                       ; $64B1: $6D
    ld a, c                                       ; $64B2: $79
    ld l, $FE                                     ; $64B3: $2E $FE
    db $FD                                        ; $64B5: $FD
    sbc d                                         ; $64B6: $9A
    sbc c                                         ; $64B7: $99
    sbc e                                         ; $64B8: $9B
    ld a, b                                       ; $64B9: $78
    ld [hl], b                                    ; $64BA: $70
    sbc a                                         ; $64BB: $9F
    jr nz, @+$56                                  ; $64BC: $20 $54

    ld [hl], d                                    ; $64BE: $72
    ld a, c                                       ; $64BF: $79
    jr nz, jr_01C_6535                            ; $64C0: $20 $73

    ld l, a                                       ; $64C2: $6F
    ld l, l                                       ; $64C3: $6D
    ld h, l                                       ; $64C4: $65
    rst $38                                       ; $64C5: $FF
    jr nz, jr_01C_650C                            ; $64C6: $20 $44

    ld l, a                                       ; $64C8: $6F
    ld l, [hl]                                    ; $64C9: $6E
    daa                                           ; $64CA: $27
    ld [hl], h                                    ; $64CB: $74
    db $FD                                        ; $64CC: $FD
    sbc h                                         ; $64CD: $9C
    ld [bc], a                                    ; $64CE: $02
    inc e                                         ; $64CF: $1C
    push de                                       ; $64D0: $D5
    ld h, h                                       ; $64D1: $64
    inc e                                         ; $64D2: $1C
    ld [de], a                                    ; $64D3: $12
    ld h, l                                       ; $64D4: $65
    ld b, e                                       ; $64D5: $43
    rrca                                          ; $64D6: $0F
    ld bc, $A2B8                                  ; $64D7: $01 $B8 $A2
    dec b                                         ; $64DA: $05
    inc d                                         ; $64DB: $14
    inc e                                         ; $64DC: $1C
    and b                                         ; $64DD: $A0
    ld h, [hl]                                    ; $64DE: $66
    sbc c                                         ; $64DF: $99
    sbc e                                         ; $64E0: $9B
    ld a, b                                       ; $64E1: $78
    ld [hl], b                                    ; $64E2: $70
    sbc a                                         ; $64E3: $9F
    ld b, d                                       ; $64E4: $42
    ld l, h                                       ; $64E5: $6C
    ld h, c                                       ; $64E6: $61
    ld l, b                                       ; $64E7: $68
    ld hl, $5420                                  ; $64E8: $21 $20 $54
    ld l, b                                       ; $64EB: $68
    ld h, l                                       ; $64EC: $65
    ld [hl], e                                    ; $64ED: $73
    ld h, l                                       ; $64EE: $65
    rst $38                                       ; $64EF: $FF
    ld [hl], h                                    ; $64F0: $74
    ld h, c                                       ; $64F1: $61
    ld [hl], e                                    ; $64F2: $73
    ld [hl], h                                    ; $64F3: $74
    ld h, l                                       ; $64F4: $65
    jr nz, jr_01C_6563                            ; $64F5: $20 $6C

    ld l, c                                       ; $64F7: $69
    ld l, e                                       ; $64F8: $6B
    ld h, l                                       ; $64F9: $65
    cp $73                                        ; $64FA: $FE $73
    ld [hl], h                                    ; $64FC: $74
    ld a, c                                       ; $64FD: $79
    ld [hl], d                                    ; $64FE: $72
    ld l, a                                       ; $64FF: $6F
    ld h, [hl]                                    ; $6500: $66

jr_01C_6501:
    ld l, a                                       ; $6501: $6F
    ld h, c                                       ; $6502: $61
    ld l, l                                       ; $6503: $6D
    ld hl, $FDFE                                  ; $6504: $21 $FE $FD
    sbc d                                         ; $6507: $9A
    and [hl]                                      ; $6508: $A6
    cp b                                          ; $6509: $B8
    and d                                         ; $650A: $A2
    dec bc                                        ; $650B: $0B

jr_01C_650C:
    ld bc, $A2B8                                  ; $650C: $01 $B8 $A2
    dec b                                         ; $650F: $05
    ld bc, $9A42                                  ; $6510: $01 $42 $9A
    ld b, d                                       ; $6513: $42
    sbc e                                         ; $6514: $9B
    ld a, b                                       ; $6515: $78
    ld [hl], b                                    ; $6516: $70
    sbc a                                         ; $6517: $9F

jr_01C_6518:
    ld c, c                                       ; $6518: $49
    jr nz, jr_01C_6592                            ; $6519: $20 $77

    ld l, a                                       ; $651B: $6F
    ld l, [hl]                                    ; $651C: $6E
    ld h, h                                       ; $651D: $64
    ld h, l                                       ; $651E: $65
    ld [hl], d                                    ; $651F: $72
    jr nz, jr_01C_658B                            ; $6520: $20 $69

    ld h, [hl]                                    ; $6522: $66
    rst $38                                       ; $6523: $FF
    ld [hl], h                                    ; $6524: $74
    ld l, b                                       ; $6525: $68
    ld h, l                                       ; $6526: $65
    ld [hl], e                                    ; $6527: $73

jr_01C_6528:
    ld h, l                                       ; $6528: $65
    jr nz, @+$6F                                  ; $6529: $20 $6D

    ld [hl], l                                    ; $652B: $75
    ld [hl], e                                    ; $652C: $73
    ld l, b                                       ; $652D: $68
    ld [hl], d                                    ; $652E: $72
    ld l, a                                       ; $652F: $6F
    ld l, a                                       ; $6530: $6F
    ld l, l                                       ; $6531: $6D
    ld [hl], e                                    ; $6532: $73
    cp $61                                        ; $6533: $FE $61

jr_01C_6535:
    ld [hl], d                                    ; $6535: $72
    ld h, l                                       ; $6536: $65
    jr nz, jr_01C_659A                            ; $6537: $20 $61

    ld l, [hl]                                    ; $6539: $6E
    jr nz, jr_01C_659D                            ; $653A: $20 $61

    ld h, e                                       ; $653C: $63
    ld [hl], c                                    ; $653D: $71
    ld [hl], l                                    ; $653E: $75
    ld l, c                                       ; $653F: $69
    ld [hl], d                                    ; $6540: $72
    ld h, l                                       ; $6541: $65
    ld h, h                                       ; $6542: $64
    rst $38                                       ; $6543: $FF
    ld [hl], h                                    ; $6544: $74
    ld h, c                                       ; $6545: $61
    ld [hl], e                                    ; $6546: $73
    ld [hl], h                                    ; $6547: $74
    ld h, l                                       ; $6548: $65
    ld l, $2E                                     ; $6549: $2E $2E
    ld l, $FE                                     ; $654B: $2E $FE
    db $FD                                        ; $654D: $FD
    sbc d                                         ; $654E: $9A
    sbc c                                         ; $654F: $99
    sbc e                                         ; $6550: $9B
    ld a, b                                       ; $6551: $78
    ld [hl], b                                    ; $6552: $70
    sbc a                                         ; $6553: $9F
    jr nz, @+$56                                  ; $6554: $20 $54

    ld [hl], d                                    ; $6556: $72
    ld a, c                                       ; $6557: $79
    jr nz, jr_01C_65C7                            ; $6558: $20 $6D

    ld l, a                                       ; $655A: $6F
    ld [hl], d                                    ; $655B: $72
    ld h, l                                       ; $655C: $65
    rst $38                                       ; $655D: $FF
    jr nz, jr_01C_65A4                            ; $655E: $20 $44

    ld l, a                                       ; $6560: $6F
    ld l, [hl]                                    ; $6561: $6E
    daa                                           ; $6562: $27

jr_01C_6563:
    ld [hl], h                                    ; $6563: $74
    db $FD                                        ; $6564: $FD
    sbc h                                         ; $6565: $9C
    ld [bc], a                                    ; $6566: $02
    inc e                                         ; $6567: $1C
    ld l, l                                       ; $6568: $6D
    ld h, l                                       ; $6569: $65
    inc e                                         ; $656A: $1C
    sbc h                                         ; $656B: $9C
    ld h, l                                       ; $656C: $65
    ld b, e                                       ; $656D: $43
    rrca                                          ; $656E: $0F
    ld bc, $A2B8                                  ; $656F: $01 $B8 $A2
    dec b                                         ; $6572: $05
    jr z, jr_01C_6591                             ; $6573: $28 $1C

    and b                                         ; $6575: $A0
    ld h, [hl]                                    ; $6576: $66
    sbc c                                         ; $6577: $99
    sbc e                                         ; $6578: $9B
    ld a, b                                       ; $6579: $78
    ld [hl], b                                    ; $657A: $70
    sbc a                                         ; $657B: $9F
    ld c, b                                       ; $657C: $48
    ld l, l                                       ; $657D: $6D
    ld l, l                                       ; $657E: $6D
    ld l, $2E                                     ; $657F: $2E $2E
    ld l, $FF                                     ; $6581: $2E $FF
    ld [hl], b                                    ; $6583: $70
    ld [hl], d                                    ; $6584: $72
    ld h, l                                       ; $6585: $65
    ld [hl], h                                    ; $6586: $74
    ld [hl], h                                    ; $6587: $74
    ld a, c                                       ; $6588: $79
    jr nz, jr_01C_65F2                            ; $6589: $20 $67

jr_01C_658B:
    ld l, a                                       ; $658B: $6F
    ld l, a                                       ; $658C: $6F
    ld h, h                                       ; $658D: $64
    ld hl, $FDFE                                  ; $658E: $21 $FE $FD

jr_01C_6591:
    sbc d                                         ; $6591: $9A

jr_01C_6592:
    and [hl]                                      ; $6592: $A6
    cp b                                          ; $6593: $B8
    and d                                         ; $6594: $A2
    dec bc                                        ; $6595: $0B
    ld bc, $A2B8                                  ; $6596: $01 $B8 $A2
    dec b                                         ; $6599: $05

jr_01C_659A:
    ld bc, $9A42                                  ; $659A: $01 $42 $9A

jr_01C_659D:
    ld b, d                                       ; $659D: $42
    ld b, d                                       ; $659E: $42
    ld b, e                                       ; $659F: $43
    rrca                                          ; $65A0: $0F
    inc b                                         ; $65A1: $04
    dec b                                         ; $65A2: $05
    add hl, bc                                    ; $65A3: $09

jr_01C_65A4:
    inc e                                         ; $65A4: $1C
    ld de, $4366                                  ; $65A5: $11 $66 $43
    ld de, $2401                                  ; $65A8: $11 $01 $24
    and d                                         ; $65AB: $A2
    dec b                                         ; $65AC: $05
    ld [bc], a                                    ; $65AD: $02
    inc e                                         ; $65AE: $1C
    db $E3                                        ; $65AF: $E3
    ld h, l                                       ; $65B0: $65
    sbc e                                         ; $65B1: $9B
    ld c, c                                       ; $65B2: $49
    ld b, [hl]                                    ; $65B3: $46
    sbc a                                         ; $65B4: $9F
    ld c, c                                       ; $65B5: $49
    jr nz, jr_01C_6619                            ; $65B6: $20 $61

    ld l, l                                       ; $65B8: $6D
    jr nz, jr_01C_6608                            ; $65B9: $20 $4D

    ld l, a                                       ; $65BB: $6F
    ld [hl], h                                    ; $65BC: $74
    ld h, c                                       ; $65BD: $61
    ld [hl], e                                    ; $65BE: $73
    ld l, b                                       ; $65BF: $68
    inc l                                         ; $65C0: $2C
    rst $38                                       ; $65C1: $FF
    ld b, l                                       ; $65C2: $45
    ld l, h                                       ; $65C3: $6C
    ld h, h                                       ; $65C4: $64
    ld h, l                                       ; $65C5: $65
    ld [hl], d                                    ; $65C6: $72

jr_01C_65C7:
    jr nz, jr_01C_6638                            ; $65C7: $20 $6F

    ld h, [hl]                                    ; $65C9: $66
    jr nz, jr_01C_6640                            ; $65CA: $20 $74

    ld l, b                                       ; $65CC: $68
    ld l, c                                       ; $65CD: $69
    ld [hl], e                                    ; $65CE: $73
    cp $62                                        ; $65CF: $FE $62
    ld h, l                                       ; $65D1: $65
    ld h, c                                       ; $65D2: $61
    ld [hl], l                                    ; $65D3: $75
    ld [hl], h                                    ; $65D4: $74
    ld l, c                                       ; $65D5: $69
    ld h, [hl]                                    ; $65D6: $66
    ld [hl], l                                    ; $65D7: $75
    ld l, h                                       ; $65D8: $6C
    jr nz, jr_01C_664F                            ; $65D9: $20 $74

    ld l, a                                       ; $65DB: $6F
    ld [hl], a                                    ; $65DC: $77
    ld l, [hl]                                    ; $65DD: $6E
    ld l, $FE                                     ; $65DE: $2E $FE
    db $FD                                        ; $65E0: $FD
    sbc d                                         ; $65E1: $9A
    ld [de], a                                    ; $65E2: $12
    sbc e                                         ; $65E3: $9B
    ld c, c                                       ; $65E4: $49
    ld b, [hl]                                    ; $65E5: $46
    sbc a                                         ; $65E6: $9F
    ld c, c                                       ; $65E7: $49
    daa                                           ; $65E8: $27
    ld l, l                                       ; $65E9: $6D
    jr nz, jr_01C_665F                            ; $65EA: $20 $73

    ld [hl], l                                    ; $65EC: $75
    ld [hl], d                                    ; $65ED: $72
    ld h, l                                       ; $65EE: $65
    jr nz, jr_01C_6638                            ; $65EF: $20 $47

    ld l, a                                       ; $65F1: $6F

jr_01C_65F2:
    ld h, a                                       ; $65F2: $67
    ld l, a                                       ; $65F3: $6F
    ld [hl], d                                    ; $65F4: $72
    rst $38                                       ; $65F5: $FF
    ld [hl], a                                    ; $65F6: $77
    ld l, c                                       ; $65F7: $69
    ld l, h                                       ; $65F8: $6C
    ld l, h                                       ; $65F9: $6C
    jr nz, jr_01C_666E                            ; $65FA: $20 $72

    ld h, l                                       ; $65FC: $65
    ld [hl], h                                    ; $65FD: $74
    ld [hl], l                                    ; $65FE: $75
    ld [hl], d                                    ; $65FF: $72
    ld l, [hl]                                    ; $6600: $6E
    cp $76                                        ; $6601: $FE $76
    ld l, c                                       ; $6603: $69
    ld h, e                                       ; $6604: $63
    ld [hl], h                                    ; $6605: $74
    ld l, a                                       ; $6606: $6F
    ld [hl], d                                    ; $6607: $72

jr_01C_6608:
    ld l, c                                       ; $6608: $69
    ld l, a                                       ; $6609: $6F
    ld [hl], l                                    ; $660A: $75
    ld [hl], e                                    ; $660B: $73
    ld l, $FE                                     ; $660C: $2E $FE
    db $FD                                        ; $660E: $FD
    sbc d                                         ; $660F: $9A
    ld [de], a                                    ; $6610: $12
    sbc e                                         ; $6611: $9B
    ld c, c                                       ; $6612: $49
    ld b, [hl]                                    ; $6613: $46
    sbc a                                         ; $6614: $9F
    ld d, b                                       ; $6615: $50
    ld l, h                                       ; $6616: $6C
    ld h, l                                       ; $6617: $65
    ld h, c                                       ; $6618: $61

jr_01C_6619:
    ld [hl], e                                    ; $6619: $73
    ld h, l                                       ; $661A: $65
    jr nz, jr_01C_6685                            ; $661B: $20 $68

    ld [hl], l                                    ; $661D: $75

jr_01C_661E:
    ld [hl], d                                    ; $661E: $72
    ld [hl], d                                    ; $661F: $72
    ld a, c                                       ; $6620: $79
    rst $38                                       ; $6621: $FF
    ld h, c                                       ; $6622: $61
    ld l, [hl]                                    ; $6623: $6E
    ld h, h                                       ; $6624: $64
    jr nz, jr_01C_668A                            ; $6625: $20 $63

    ld l, a                                       ; $6627: $6F
    ld l, h                                       ; $6628: $6C
    ld l, h                                       ; $6629: $6C
    ld h, c                                       ; $662A: $61
    ld [hl], b                                    ; $662B: $70
    ld [hl], e                                    ; $662C: $73
    ld h, l                                       ; $662D: $65
    cp $74                                        ; $662E: $FE $74
    ld l, b                                       ; $6630: $68
    ld h, l                                       ; $6631: $65
    jr nz, jr_01C_6687                            ; $6632: $20 $53

    ld l, b                                       ; $6634: $68
    ld h, c                                       ; $6635: $61
    ld h, h                                       ; $6636: $64
    ld l, a                                       ; $6637: $6F

jr_01C_6638:
    ld [hl], a                                    ; $6638: $77
    rst $38                                       ; $6639: $FF
    ld b, a                                       ; $663A: $47
    ld h, l                                       ; $663B: $65
    ld a, c                                       ; $663C: $79
    ld [hl], e                                    ; $663D: $73
    ld h, l                                       ; $663E: $65
    ld [hl], d                                    ; $663F: $72

jr_01C_6640:
    ld hl, $FDFE                                  ; $6640: $21 $FE $FD
    sbc d                                         ; $6643: $9A
    ld [de], a                                    ; $6644: $12

Jump_01C_6645:
    sub e                                         ; $6645: $93
    ld h, l                                       ; $6646: $65
    or b                                          ; $6647: $B0
    ld b, h                                       ; $6648: $44
    ld c, a                                       ; $6649: $4F
    ld h, h                                       ; $664A: $64
    ret nc                                        ; $664B: $D0

    ld b, l                                       ; $664C: $45
    ld l, c                                       ; $664D: $69
    push de                                       ; $664E: $D5

jr_01C_664F:
    ld b, l                                       ; $664F: $45
    ld h, [hl]                                    ; $6650: $66
    ret nz                                        ; $6651: $C0

    ld e, h                                       ; $6652: $5C
    ld hl, $0005                                  ; $6653: $21 $05 $00
    add c                                         ; $6656: $81
    ld e, l                                       ; $6657: $5D
    dec b                                         ; $6658: $05
    dec b                                         ; $6659: $05
    ld d, b                                       ; $665A: $50
    ret nc                                        ; $665B: $D0

    nop                                           ; $665C: $00
    jr nz, jr_01C_661E                            ; $665D: $20 $BF

jr_01C_665F:
    ld d, b                                       ; $665F: $50
    ld [hl+], a                                   ; $6660: $22
    dec b                                         ; $6661: $05
    ld b, b                                       ; $6662: $40
    dec b                                         ; $6663: $05
    ld [bc], a                                    ; $6664: $02
    db $ED                                        ; $6665: $ED
    ld h, e                                       ; $6666: $63
    ld [$E90F], sp                                ; $6667: $08 $0F $E9
    ret nc                                        ; $666A: $D0

    add hl, bc                                    ; $666B: $09
    db $10                                        ; $666C: $10
    cp h                                          ; $666D: $BC

jr_01C_666E:
    ld a, [hl]                                    ; $666E: $7E
    inc e                                         ; $666F: $1C
    sub h                                         ; $6670: $94
    ld h, [hl]                                    ; $6671: $66
    dec bc                                        ; $6672: $0B
    nop                                           ; $6673: $00
    ld b, e                                       ; $6674: $43
    rrca                                          ; $6675: $0F
    inc b                                         ; $6676: $04
    dec b                                         ; $6677: $05
    ld [$7E1C], sp                                ; $6678: $08 $1C $7E
    ld h, [hl]                                    ; $667B: $66
    dec bc                                        ; $667C: $0B
    ld [bc], a                                    ; $667D: $02
    ld l, e                                       ; $667E: $6B
    add hl, bc                                    ; $667F: $09
    dec c                                         ; $6680: $0D
    sub b                                         ; $6681: $90
    ld [hl], c                                    ; $6682: $71
    nop                                           ; $6683: $00
    add b                                         ; $6684: $80

jr_01C_6685:
    nop                                           ; $6685: $00
    ld l, e                                       ; $6686: $6B

jr_01C_6687:
    dec h                                         ; $6687: $25
    inc c                                         ; $6688: $0C
    and b                                         ; $6689: $A0

jr_01C_668A:
    ld h, a                                       ; $668A: $67
    sub b                                         ; $668B: $90
    add b                                         ; $668C: $80
    nop                                           ; $668D: $00
    nop                                           ; $668E: $00
    add d                                         ; $668F: $82
    rra                                           ; $6690: $1F
    dec d                                         ; $6691: $15
    sub h                                         ; $6692: $94
    ld b, d                                       ; $6693: $42
    inc d                                         ; $6694: $14
    db $10                                        ; $6695: $10
    cp h                                          ; $6696: $BC
    ld a, [hl]                                    ; $6697: $7E
    ld e, e                                       ; $6698: $5B
    inc e                                         ; $6699: $1C
    sbc a                                         ; $669A: $9F
    ld h, l                                       ; $669B: $65
    ld b, l                                       ; $669C: $45
    db $10                                        ; $669D: $10
    ld [bc], a                                    ; $669E: $02
    ld a, a                                       ; $669F: $7F
    ld b, e                                       ; $66A0: $43
    rrca                                          ; $66A1: $0F
    ld bc, $A2B8                                  ; $66A2: $01 $B8 $A2
    dec b                                         ; $66A5: $05
    jr z, jr_01C_66C4                             ; $66A6: $28 $1C

    di                                            ; $66A8: $F3
    ld h, [hl]                                    ; $66A9: $66
    ld e, e                                       ; $66AA: $5B
    inc e                                         ; $66AB: $1C
    inc a                                         ; $66AC: $3C
    ld h, a                                       ; $66AD: $67
    ld h, d                                       ; $66AE: $62
    ld bc, $0005                                  ; $66AF: $01 $05 $00
    ld l, e                                       ; $66B2: $6B
    ld c, d                                       ; $66B3: $4A
    ld [bc], a                                    ; $66B4: $02
    inc bc                                        ; $66B5: $03
    cpl                                           ; $66B6: $2F
    ret nc                                        ; $66B7: $D0

    nop                                           ; $66B8: $00
    ld de, $7596                                  ; $66B9: $11 $96 $75
    ld [hl+], a                                   ; $66BC: $22
    dec b                                         ; $66BD: $05
    ld b, b                                       ; $66BE: $40
    ld b, b                                       ; $66BF: $40
    db $10                                        ; $66C0: $10
    dec b                                         ; $66C1: $05
    ld [bc], a                                    ; $66C2: $02
    ld l, e                                       ; $66C3: $6B

jr_01C_66C4:
    ld c, d                                       ; $66C4: $4A
    ld b, $0B                                     ; $66C5: $06 $0B
    xor e                                         ; $66C7: $AB
    ret nc                                        ; $66C8: $D0

    add hl, bc                                    ; $66C9: $09
    inc e                                         ; $66CA: $1C
    adc h                                         ; $66CB: $8C
    ld h, a                                       ; $66CC: $67
    ld [hl+], a                                   ; $66CD: $22
    inc b                                         ; $66CE: $04
    ld b, b                                       ; $66CF: $40
    ld h, b                                       ; $66D0: $60
    ld bc, $0205                                  ; $66D1: $01 $05 $02
    db $ED                                        ; $66D4: $ED
    ld h, e                                       ; $66D5: $63
    ld [$E90F], sp                                ; $66D6: $08 $0F $E9
    ret nc                                        ; $66D9: $D0

    add hl, bc                                    ; $66DA: $09
    db $10                                        ; $66DB: $10
    cp h                                          ; $66DC: $BC
    ld a, [hl]                                    ; $66DD: $7E
    inc e                                         ; $66DE: $1C
    sub h                                         ; $66DF: $94
    ld h, [hl]                                    ; $66E0: $66
    ld b, b                                       ; $66E1: $40
    db $10                                        ; $66E2: $10
    dec b                                         ; $66E3: $05
    nop                                           ; $66E4: $00
    add c                                         ; $66E5: $81
    ld e, l                                       ; $66E6: $5D
    ld [bc], a                                    ; $66E7: $02
    inc bc                                        ; $66E8: $03
    cpl                                           ; $66E9: $2F
    ret nc                                        ; $66EA: $D0

    nop                                           ; $66EB: $00

jr_01C_66EC:
    jr nz, @-$49                                  ; $66EC: $20 $B5

    ld d, b                                       ; $66EE: $50
    ld [hl+], a                                   ; $66EF: $22
    dec b                                         ; $66F0: $05
    ld b, b                                       ; $66F1: $40
    ld b, d                                       ; $66F2: $42
    dec b                                         ; $66F3: $05
    nop                                           ; $66F4: $00
    ld l, e                                       ; $66F5: $6B
    ld c, d                                       ; $66F6: $4A
    ld [bc], a                                    ; $66F7: $02
    inc bc                                        ; $66F8: $03
    cpl                                           ; $66F9: $2F
    ret nc                                        ; $66FA: $D0

    nop                                           ; $66FB: $00
    ld de, $7596                                  ; $66FC: $11 $96 $75
    ld [hl+], a                                   ; $66FF: $22
    dec b                                         ; $6700: $05
    ld b, b                                       ; $6701: $40
    ld b, b                                       ; $6702: $40
    db $10                                        ; $6703: $10
    ld e, e                                       ; $6704: $5B
    inc e                                         ; $6705: $1C
    ld h, h                                       ; $6706: $64
    ld h, a                                       ; $6707: $67
    ld h, d                                       ; $6708: $62
    ld bc, $0205                                  ; $6709: $01 $05 $02
    ld l, e                                       ; $670C: $6B
    ld c, d                                       ; $670D: $4A
    ld b, $0B                                     ; $670E: $06 $0B
    xor e                                         ; $6710: $AB
    ret nc                                        ; $6711: $D0

    add hl, bc                                    ; $6712: $09
    inc e                                         ; $6713: $1C
    adc h                                         ; $6714: $8C
    ld h, a                                       ; $6715: $67
    ld [hl+], a                                   ; $6716: $22
    inc b                                         ; $6717: $04
    ld b, b                                       ; $6718: $40
    ld h, b                                       ; $6719: $60
    ld bc, $0205                                  ; $671A: $01 $05 $02
    db $ED                                        ; $671D: $ED
    ld h, e                                       ; $671E: $63
    ld [$E90F], sp                                ; $671F: $08 $0F $E9
    ret nc                                        ; $6722: $D0

    add hl, bc                                    ; $6723: $09
    db $10                                        ; $6724: $10
    cp h                                          ; $6725: $BC
    ld a, [hl]                                    ; $6726: $7E
    inc e                                         ; $6727: $1C
    sub h                                         ; $6728: $94
    ld h, [hl]                                    ; $6729: $66
    ld b, b                                       ; $672A: $40
    db $10                                        ; $672B: $10
    dec b                                         ; $672C: $05
    nop                                           ; $672D: $00
    add c                                         ; $672E: $81
    ld e, l                                       ; $672F: $5D
    ld [bc], a                                    ; $6730: $02
    inc bc                                        ; $6731: $03
    cpl                                           ; $6732: $2F
    ret nc                                        ; $6733: $D0

    nop                                           ; $6734: $00
    jr nz, jr_01C_66EC                            ; $6735: $20 $B5

    ld d, b                                       ; $6737: $50
    ld [hl+], a                                   ; $6738: $22
    dec b                                         ; $6739: $05
    ld b, b                                       ; $673A: $40
    ld b, d                                       ; $673B: $42
    sbc e                                         ; $673C: $9B
    ld a, b                                       ; $673D: $78
    ld [hl], b                                    ; $673E: $70
    sbc a                                         ; $673F: $9F
    ld c, c                                       ; $6740: $49
    jr nz, jr_01C_67A7                            ; $6741: $20 $64

    ld l, a                                       ; $6743: $6F
    ld l, [hl]                                    ; $6744: $6E
    daa                                           ; $6745: $27
    ld [hl], h                                    ; $6746: $74
    jr nz, jr_01C_67AF                            ; $6747: $20 $66

    ld h, l                                       ; $6749: $65
    ld h, l                                       ; $674A: $65
    ld l, h                                       ; $674B: $6C
    rst $38                                       ; $674C: $FF
    ld [hl], e                                    ; $674D: $73
    ld l, a                                       ; $674E: $6F
    jr nz, jr_01C_67B8                            ; $674F: $20 $67

    ld l, a                                       ; $6751: $6F
    ld l, a                                       ; $6752: $6F
    ld h, h                                       ; $6753: $64
    ld l, $FE                                     ; $6754: $2E $FE
    db $FD                                        ; $6756: $FD
    sbc d                                         ; $6757: $9A
    ld e, b                                       ; $6758: $58
    ld bc, $B8A6                                  ; $6759: $01 $A6 $B8
    and d                                         ; $675C: $A2
    dec bc                                        ; $675D: $0B
    ld bc, $A2B8                                  ; $675E: $01 $B8 $A2
    dec b                                         ; $6761: $05
    ld bc, $9B42                                  ; $6762: $01 $42 $9B
    ld a, b                                       ; $6765: $78
    ld [hl], b                                    ; $6766: $70
    sbc a                                         ; $6767: $9F
    ld d, h                                       ; $6768: $54
    ld l, b                                       ; $6769: $68
    ld h, l                                       ; $676A: $65
    ld [hl], e                                    ; $676B: $73
    ld h, l                                       ; $676C: $65
    jr nz, jr_01C_67DC                            ; $676D: $20 $6D

    ld [hl], l                                    ; $676F: $75
    ld [hl], e                                    ; $6770: $73
    ld l, b                                       ; $6771: $68
    ld [hl], d                                    ; $6772: $72
    ld l, a                                       ; $6773: $6F
    ld l, a                                       ; $6774: $6F
    ld l, l                                       ; $6775: $6D
    ld [hl], e                                    ; $6776: $73
    rst $38                                       ; $6777: $FF
    ld h, c                                       ; $6778: $61
    ld [hl], d                                    ; $6779: $72
    ld h, l                                       ; $677A: $65
    jr nz, jr_01C_67E4                            ; $677B: $20 $67

    ld [hl], d                                    ; $677D: $72
    ld h, l                                       ; $677E: $65
    ld h, c                                       ; $677F: $61
    ld [hl], h                                    ; $6780: $74
    ld l, $FE                                     ; $6781: $2E $FE
    db $FD                                        ; $6783: $FD
    sbc d                                         ; $6784: $9A
    ld e, b                                       ; $6785: $58
    ld bc, $B8AC                                  ; $6786: $01 $AC $B8
    and d                                         ; $6789: $A2
    dec d                                         ; $678A: $15
    ld b, d                                       ; $678B: $42
    dec d                                         ; $678C: $15
    db $10                                        ; $678D: $10
    ld [hl], d                                    ; $678E: $72
    ld a, [hl]                                    ; $678F: $7E
    jr jr_01C_67A2                                ; $6790: $18 $10

    sub d                                         ; $6792: $92
    ld a, [hl]                                    ; $6793: $7E
    jr jr_01C_67A6                                ; $6794: $18 $10

    ld [hl], d                                    ; $6796: $72
    ld a, [hl]                                    ; $6797: $7E
    jr z, jr_01C_67AA                             ; $6798: $28 $10

    add $7E                                       ; $679A: $C6 $7E
    nop                                           ; $679C: $00
    nop                                           ; $679D: $00
    ld e, e                                       ; $679E: $5B
    inc e                                         ; $679F: $1C
    or l                                          ; $67A0: $B5
    ld h, a                                       ; $67A1: $67

jr_01C_67A2:
    ld h, d                                       ; $67A2: $62
    ld bc, $1015                                  ; $67A3: $01 $15 $10

jr_01C_67A6:
    add d                                         ; $67A6: $82

jr_01C_67A7:
    ld a, [hl]                                    ; $67A7: $7E
    jr jr_01C_67BA                                ; $67A8: $18 $10

jr_01C_67AA:
    and d                                         ; $67AA: $A2
    ld a, [hl]                                    ; $67AB: $7E
    jr @+$12                                      ; $67AC: $18 $10

    add d                                         ; $67AE: $82

jr_01C_67AF:
    ld a, [hl]                                    ; $67AF: $7E
    jr z, jr_01C_67B2                             ; $67B0: $28 $00

jr_01C_67B2:
    ld d, [hl]                                    ; $67B2: $56
    ld bc, $9B42                                  ; $67B3: $01 $42 $9B
    ld c, c                                       ; $67B6: $49
    ld b, [hl]                                    ; $67B7: $46

jr_01C_67B8:
    sbc a                                         ; $67B8: $9F
    ld d, h                                       ; $67B9: $54

jr_01C_67BA:
    ld h, c                                       ; $67BA: $61
    ld l, e                                       ; $67BB: $6B
    ld h, l                                       ; $67BC: $65
    jr nz, jr_01C_6833                            ; $67BD: $20 $74

    ld l, b                                       ; $67BF: $68
    ld l, c                                       ; $67C0: $69
    ld [hl], e                                    ; $67C1: $73
    rst $38                                       ; $67C2: $FF
    ld h, l                                       ; $67C3: $65
    ld l, h                                       ; $67C4: $6C
    ld l, c                                       ; $67C5: $69
    ld a, b                                       ; $67C6: $78
    ld l, c                                       ; $67C7: $69
    ld [hl], d                                    ; $67C8: $72
    inc l                                         ; $67C9: $2C
    jr nz, jr_01C_683D                            ; $67CA: $20 $71

    ld [hl], l                                    ; $67CC: $75
    ld l, c                                       ; $67CD: $69
    ld h, e                                       ; $67CE: $63
    ld l, e                                       ; $67CF: $6B
    ld hl, $FDFE                                  ; $67D0: $21 $FE $FD
    sbc e                                         ; $67D3: $9B
    ld a, b                                       ; $67D4: $78
    ld [hl], b                                    ; $67D5: $70
    sbc a                                         ; $67D6: $9F
    ld d, h                                       ; $67D7: $54
    ld l, b                                       ; $67D8: $68
    ld h, c                                       ; $67D9: $61
    ld l, [hl]                                    ; $67DA: $6E
    ld l, e                                       ; $67DB: $6B

jr_01C_67DC:
    jr nz, jr_01C_6857                            ; $67DC: $20 $79

    ld l, a                                       ; $67DE: $6F
    ld [hl], l                                    ; $67DF: $75
    cp $FD                                        ; $67E0: $FE $FD
    sbc d                                         ; $67E2: $9A
    ld e, b                                       ; $67E3: $58

jr_01C_67E4:
    ld bc, $0242                                  ; $67E4: $01 $42 $02
    inc bc                                        ; $67E7: $03
    ld a, [bc]                                    ; $67E8: $0A
    add hl, bc                                    ; $67E9: $09
    dec de                                        ; $67EA: $1B
    ld b, l                                       ; $67EB: $45
    ld [hl+], a                                   ; $67EC: $22
    ld e, [hl]                                    ; $67ED: $5E
    ld e, c                                       ; $67EE: $59
    sbc e                                         ; $67EF: $9B
    ld a, b                                       ; $67F0: $78
    ld [hl], b                                    ; $67F1: $70
    ld b, e                                       ; $67F2: $43
    rrca                                          ; $67F3: $0F
    inc b                                         ; $67F4: $04
    dec b                                         ; $67F5: $05
    rlca                                          ; $67F6: $07
    inc e                                         ; $67F7: $1C
    adc c                                         ; $67F8: $89
    ld l, b                                       ; $67F9: $68
    sbc a                                         ; $67FA: $9F
    ld b, c                                       ; $67FB: $41
    jr nz, jr_01C_6862                            ; $67FC: $20 $64

    ld l, c                                       ; $67FE: $69
    ld h, c                                       ; $67FF: $61
    ld [hl], d                                    ; $6800: $72
    ld a, c                                       ; $6801: $79
    ld hl, $FDFE                                  ; $6802: $21 $FE $FD
    sbc c                                         ; $6805: $99
    sbc a                                         ; $6806: $9F
    ld d, a                                       ; $6807: $57
    ld l, b                                       ; $6808: $68
    ld h, c                                       ; $6809: $61
    ld [hl], h                                    ; $680A: $74
    jr nz, jr_01C_6854                            ; $680B: $20 $47

    ld l, a                                       ; $680D: $6F
    ld h, a                                       ; $680E: $67
    ld l, a                                       ; $680F: $6F
    ld [hl], d                                    ; $6810: $72
    jr nz, jr_01C_6874                            ; $6811: $20 $61

    ld [hl], h                                    ; $6813: $74
    ld h, l                                       ; $6814: $65
    cp $74                                        ; $6815: $FE $74
    ld l, a                                       ; $6817: $6F
    ld h, h                                       ; $6818: $64
    ld h, c                                       ; $6819: $61
    ld a, c                                       ; $681A: $79
    ld a, [hl-]                                   ; $681B: $3A
    cp $46                                        ; $681C: $FE $46
    ld l, c                                       ; $681E: $69
    halt                                          ; $681F: $76
    ld h, l                                       ; $6820: $65
    jr nz, jr_01C_6893                            ; $6821: $20 $70

    ld l, h                                       ; $6823: $6C
    ld h, c                                       ; $6824: $61
    ld [hl], h                                    ; $6825: $74
    ld h, l                                       ; $6826: $65
    ld [hl], e                                    ; $6827: $73
    jr nz, jr_01C_6899                            ; $6828: $20 $6F

    ld h, [hl]                                    ; $682A: $66
    rst $38                                       ; $682B: $FF
    ld h, e                                       ; $682C: $63
    ld [hl], d                                    ; $682D: $72
    ld h, l                                       ; $682E: $65
    ld h, c                                       ; $682F: $61
    ld l, l                                       ; $6830: $6D
    ld h, l                                       ; $6831: $65
    ld h, h                                       ; $6832: $64

jr_01C_6833:
    jr nz, jr_01C_689B                            ; $6833: $20 $66

    ld [hl], l                                    ; $6835: $75
    ld l, [hl]                                    ; $6836: $6E
    ld h, a                                       ; $6837: $67
    ld [hl], l                                    ; $6838: $75
    ld [hl], e                                    ; $6839: $73
    ld l, $FE                                     ; $683A: $2E $FE
    ld c, l                                       ; $683C: $4D

jr_01C_683D:
    ld [hl], l                                    ; $683D: $75
    ld [hl], e                                    ; $683E: $73
    ld l, b                                       ; $683F: $68
    ld [hl], d                                    ; $6840: $72
    ld l, a                                       ; $6841: $6F
    ld l, a                                       ; $6842: $6F
    ld l, l                                       ; $6843: $6D
    jr nz, jr_01C_68B9                            ; $6844: $20 $73

    ld [hl], h                                    ; $6846: $74
    ld h, l                                       ; $6847: $65
    ld h, c                                       ; $6848: $61
    ld l, e                                       ; $6849: $6B
    ld l, $FE                                     ; $684A: $2E $FE
    ld b, d                                       ; $684C: $42
    ld l, h                                       ; $684D: $6C
    ld [hl], l                                    ; $684E: $75
    ld h, l                                       ; $684F: $65
    jr nz, jr_01C_68C2                            ; $6850: $20 $70

    ld [hl], l                                    ; $6852: $75
    ld l, h                                       ; $6853: $6C

jr_01C_6854:
    ld [hl], b                                    ; $6854: $70
    ld h, l                                       ; $6855: $65
    ld h, h                                       ; $6856: $64

jr_01C_6857:
    rst $38                                       ; $6857: $FF
    ld h, a                                       ; $6858: $67
    ld l, a                                       ; $6859: $6F
    ld [hl], l                                    ; $685A: $75
    ld [hl], d                                    ; $685B: $72
    ld h, h                                       ; $685C: $64
    ld [hl], e                                    ; $685D: $73
    ld l, $FE                                     ; $685E: $2E $FE
    ld d, b                                       ; $6860: $50
    ld [hl], l                                    ; $6861: $75

jr_01C_6862:
    ld h, [hl]                                    ; $6862: $66
    ld h, [hl]                                    ; $6863: $66
    ld h, d                                       ; $6864: $62
    ld h, c                                       ; $6865: $61
    ld l, h                                       ; $6866: $6C
    ld l, h                                       ; $6867: $6C
    rst $38                                       ; $6868: $FF
    ld [hl], d                                    ; $6869: $72
    ld l, b                                       ; $686A: $68
    ld l, c                                       ; $686B: $69
    ld l, [hl]                                    ; $686C: $6E
    ld h, h                                       ; $686D: $64
    ld l, $FE                                     ; $686E: $2E $FE
    ld d, e                                       ; $6870: $53
    ld [hl], b                                    ; $6871: $70
    ld l, a                                       ; $6872: $6F
    ld [hl], d                                    ; $6873: $72

jr_01C_6874:
    ld h, l                                       ; $6874: $65
    jr nz, jr_01C_68E7                            ; $6875: $20 $70

    ld l, c                                       ; $6877: $69
    ld h, l                                       ; $6878: $65
    ld l, $FE                                     ; $6879: $2E $FE
    db $FD                                        ; $687B: $FD
    sbc c                                         ; $687C: $99
    sbc a                                         ; $687D: $9F
    ld c, b                                       ; $687E: $48
    ld l, l                                       ; $687F: $6D
    ld l, l                                       ; $6880: $6D
    ld l, l                                       ; $6881: $6D
    ld l, $2E                                     ; $6882: $2E $2E
    ld l, $FE                                     ; $6884: $2E $FE
    db $FD                                        ; $6886: $FD
    sbc d                                         ; $6887: $9A
    ld b, d                                       ; $6888: $42
    sbc a                                         ; $6889: $9F
    ld c, a                                       ; $688A: $4F
    ld l, a                                       ; $688B: $6F
    ld l, a                                       ; $688C: $6F
    ld hl, $41FE                                  ; $688D: $21 $FE $41
    jr nz, jr_01C_68F6                            ; $6890: $20 $64

    ld l, c                                       ; $6892: $69

jr_01C_6893:
    ld h, c                                       ; $6893: $61
    ld [hl], d                                    ; $6894: $72
    ld a, c                                       ; $6895: $79
    ld hl, $49FE                                  ; $6896: $21 $FE $49

jr_01C_6899:
    daa                                           ; $6899: $27
    ld l, h                                       ; $689A: $6C

jr_01C_689B:
    ld l, h                                       ; $689B: $6C
    jr nz, jr_01C_6908                            ; $689C: $20 $6A

    ld [hl], l                                    ; $689E: $75
    ld [hl], e                                    ; $689F: $73
    ld [hl], h                                    ; $68A0: $74
    jr nz, jr_01C_6917                            ; $68A1: $20 $74

    ld h, c                                       ; $68A3: $61
    ld l, e                                       ; $68A4: $6B
    ld h, l                                       ; $68A5: $65
    rst $38                                       ; $68A6: $FF
    ld h, c                                       ; $68A7: $61
    jr nz, jr_01C_691B                            ; $68A8: $20 $71

    ld [hl], l                                    ; $68AA: $75
    ld l, c                                       ; $68AB: $69
    ld h, e                                       ; $68AC: $63
    ld l, e                                       ; $68AD: $6B
    ld l, $2E                                     ; $68AE: $2E $2E
    ld l, $FE                                     ; $68B0: $2E $FE
    db $FD                                        ; $68B2: $FD
    sbc e                                         ; $68B3: $9B
    sbc b                                         ; $68B4: $98
    ld [hl], e                                    ; $68B5: $73
    sbc a                                         ; $68B6: $9F
    ld c, [hl]                                    ; $68B7: $4E
    ld l, a                                       ; $68B8: $6F

jr_01C_68B9:
    jr nz, jr_01C_6934                            ; $68B9: $20 $79

    ld l, a                                       ; $68BB: $6F
    ld [hl], l                                    ; $68BC: $75
    jr nz, jr_01C_6936                            ; $68BD: $20 $77

    ld l, a                                       ; $68BF: $6F
    ld l, [hl]                                    ; $68C0: $6E
    daa                                           ; $68C1: $27

jr_01C_68C2:
    ld [hl], h                                    ; $68C2: $74
    ld hl, $FDFE                                  ; $68C3: $21 $FE $FD
    sbc e                                         ; $68C6: $9B
    ld a, b                                       ; $68C7: $78
    ld [hl], b                                    ; $68C8: $70
    sbc a                                         ; $68C9: $9F
    ld c, [hl]                                    ; $68CA: $4E
    ld l, a                                       ; $68CB: $6F
    jr nz, jr_01C_6917                            ; $68CC: $20 $49

    jr nz, jr_01C_6947                            ; $68CE: $20 $77

    ld l, a                                       ; $68D0: $6F
    ld l, [hl]                                    ; $68D1: $6E
    daa                                           ; $68D2: $27
    ld [hl], h                                    ; $68D3: $74
    ld l, $FE                                     ; $68D4: $2E $FE
    db $FD                                        ; $68D6: $FD
    sbc d                                         ; $68D7: $9A
    ld b, d                                       ; $68D8: $42
    sbc a                                         ; $68D9: $9F
    ld b, [hl]                                    ; $68DA: $46
    ld [hl], d                                    ; $68DB: $72
    ld [hl], l                                    ; $68DC: $75
    ld [hl], e                                    ; $68DD: $73
    ld [hl], h                                    ; $68DE: $74
    ld [hl], d                                    ; $68DF: $72
    ld h, c                                       ; $68E0: $61
    ld [hl], h                                    ; $68E1: $74
    ld l, c                                       ; $68E2: $69
    ld l, a                                       ; $68E3: $6F
    ld l, [hl]                                    ; $68E4: $6E
    rst $38                                       ; $68E5: $FF
    ld b, d                                       ; $68E6: $42

jr_01C_68E7:
    ld h, c                                       ; $68E7: $61
    ld [hl], d                                    ; $68E8: $72
    ld [hl], d                                    ; $68E9: $72
    ld h, c                                       ; $68EA: $61
    ld h, a                                       ; $68EB: $67
    ld h, l                                       ; $68EC: $65
    ld hl, $46FE                                  ; $68ED: $21 $FE $46
    ld l, a                                       ; $68F0: $6F
    ld [hl], d                                    ; $68F1: $72
    jr nz, jr_01C_6968                            ; $68F2: $20 $74

    ld l, b                                       ; $68F4: $68
    ld l, a                                       ; $68F5: $6F

jr_01C_68F6:
    ld [hl], e                                    ; $68F6: $73
    ld h, l                                       ; $68F7: $65
    rst $38                                       ; $68F8: $FF
    ld [hl], e                                    ; $68F9: $73
    ld [hl], l                                    ; $68FA: $75
    ld [hl], d                                    ; $68FB: $72
    ld [hl], d                                    ; $68FC: $72
    ld l, a                                       ; $68FD: $6F
    ld [hl], l                                    ; $68FE: $75
    ld l, [hl]                                    ; $68FF: $6E
    ld h, h                                       ; $6900: $64
    ld h, l                                       ; $6901: $65
    ld h, h                                       ; $6902: $64
    jr nz, jr_01C_6967                            ; $6903: $20 $62

    ld a, c                                       ; $6905: $79
    cp $64                                        ; $6906: $FE $64

jr_01C_6908:
    ld l, c                                       ; $6908: $69
    ld h, [hl]                                    ; $6909: $66
    ld h, [hl]                                    ; $690A: $66
    ld l, c                                       ; $690B: $69
    ld h, e                                       ; $690C: $63
    ld [hl], l                                    ; $690D: $75
    ld l, h                                       ; $690E: $6C
    ld [hl], h                                    ; $690F: $74
    rst $38                                       ; $6910: $FF
    ld [hl], b                                    ; $6911: $70
    ld h, l                                       ; $6912: $65
    ld l, a                                       ; $6913: $6F
    ld [hl], b                                    ; $6914: $70
    ld l, h                                       ; $6915: $6C
    ld h, l                                       ; $6916: $65

jr_01C_6917:
    ld l, $FE                                     ; $6917: $2E $FE
    db $FD                                        ; $6919: $FD
    sbc d                                         ; $691A: $9A

jr_01C_691B:
    ld b, d                                       ; $691B: $42
    sbc e                                         ; $691C: $9B
    ld a, b                                       ; $691D: $78
    ld [hl], b                                    ; $691E: $70
    sbc a                                         ; $691F: $9F
    ld c, [hl]                                    ; $6920: $4E
    ld l, c                                       ; $6921: $69
    ld h, e                                       ; $6922: $63
    ld h, l                                       ; $6923: $65
    jr nz, jr_01C_6987                            ; $6924: $20 $61

    ld l, [hl]                                    ; $6926: $6E
    ld h, h                                       ; $6927: $64
    jr nz, @+$70                                  ; $6928: $20 $6E

    ld h, l                                       ; $692A: $65
    ld h, c                                       ; $692B: $61
    ld [hl], h                                    ; $692C: $74
    ld l, $FE                                     ; $692D: $2E $FE
    ld b, l                                       ; $692F: $45
    halt                                          ; $6930: $76
    ld h, l                                       ; $6931: $65
    ld [hl], d                                    ; $6932: $72
    ld a, c                                       ; $6933: $79

jr_01C_6934:
    jr nz, jr_01C_6999                            ; $6934: $20 $63

jr_01C_6936:
    ld l, a                                       ; $6936: $6F
    ld [hl], d                                    ; $6937: $72
    ld l, [hl]                                    ; $6938: $6E
    ld h, l                                       ; $6939: $65
    ld [hl], d                                    ; $693A: $72
    rst $38                                       ; $693B: $FF
    ld [hl], h                                    ; $693C: $74
    ld [hl], l                                    ; $693D: $75
    ld h, e                                       ; $693E: $63
    ld l, e                                       ; $693F: $6B
    ld h, l                                       ; $6940: $65
    ld h, h                                       ; $6941: $64
    jr nz, jr_01C_69AD                            ; $6942: $20 $69

    ld l, [hl]                                    ; $6944: $6E
    ld l, $FE                                     ; $6945: $2E $FE

jr_01C_6947:
    db $FD                                        ; $6947: $FD
    sbc d                                         ; $6948: $9A
    ld b, d                                       ; $6949: $42
    sbc e                                         ; $694A: $9B
    ld a, b                                       ; $694B: $78
    ld [hl], b                                    ; $694C: $70
    sbc a                                         ; $694D: $9F
    ld c, l                                       ; $694E: $4D
    ld h, l                                       ; $694F: $65
    ld [hl], e                                    ; $6950: $73
    ld [hl], e                                    ; $6951: $73
    ld a, c                                       ; $6952: $79
    ld l, $FE                                     ; $6953: $2E $FE
    ld c, b                                       ; $6955: $48
    ld l, l                                       ; $6956: $6D
    ld l, l                                       ; $6957: $6D
    ld l, $2E                                     ; $6958: $2E $2E
    ld l, $FE                                     ; $695A: $2E $FE
    ld d, e                                       ; $695C: $53
    ld l, a                                       ; $695D: $6F
    ld l, l                                       ; $695E: $6D
    ld h, l                                       ; $695F: $65
    ld l, a                                       ; $6960: $6F
    ld l, [hl]                                    ; $6961: $6E
    ld h, l                                       ; $6962: $65
    jr nz, jr_01C_69CD                            ; $6963: $20 $68

    ld h, l                                       ; $6965: $65
    ld [hl], d                                    ; $6966: $72

jr_01C_6967:
    ld h, l                                       ; $6967: $65

jr_01C_6968:
    rst $38                                       ; $6968: $FF
    ld l, c                                       ; $6969: $69
    ld [hl], e                                    ; $696A: $73
    jr nz, jr_01C_69E0                            ; $696B: $20 $73

    ld h, l                                       ; $696D: $65
    ld l, h                                       ; $696E: $6C
    ld h, l                                       ; $696F: $65
    ld h, e                                       ; $6970: $63
    ld [hl], h                                    ; $6971: $74
    ld l, c                                       ; $6972: $69
    halt                                          ; $6973: $76
    ld h, l                                       ; $6974: $65
    ld l, h                                       ; $6975: $6C
    ld a, c                                       ; $6976: $79
    cp $63                                        ; $6977: $FE $63
    ld l, h                                       ; $6979: $6C
    ld h, l                                       ; $697A: $65
    ld h, c                                       ; $697B: $61
    ld l, [hl]                                    ; $697C: $6E
    ld l, $FE                                     ; $697D: $2E $FE
    db $FD                                        ; $697F: $FD
    sbc d                                         ; $6980: $9A
    ld b, d                                       ; $6981: $42
    sbc e                                         ; $6982: $9B
    ld a, b                                       ; $6983: $78
    ld [hl], b                                    ; $6984: $70
    sbc a                                         ; $6985: $9F
    ld c, l                                       ; $6986: $4D

jr_01C_6987:
    ld [hl], l                                    ; $6987: $75
    ld [hl], e                                    ; $6988: $73
    ld l, b                                       ; $6989: $68
    ld [hl], d                                    ; $698A: $72
    ld l, a                                       ; $698B: $6F
    ld l, a                                       ; $698C: $6F
    ld l, l                                       ; $698D: $6D
    cp $63                                        ; $698E: $FE $63
    ld l, b                                       ; $6990: $68
    ld h, c                                       ; $6991: $61
    ld l, c                                       ; $6992: $69
    ld [hl], d                                    ; $6993: $72
    ld [hl], e                                    ; $6994: $73
    ld l, $2E                                     ; $6995: $2E $2E
    ld l, $FE                                     ; $6997: $2E $FE

jr_01C_6999:
    ld d, a                                       ; $6999: $57
    ld l, b                                       ; $699A: $68
    ld h, c                                       ; $699B: $61
    ld [hl], h                                    ; $699C: $74
    daa                                           ; $699D: $27
    ld [hl], e                                    ; $699E: $73
    jr nz, jr_01C_6A0F                            ; $699F: $20 $6E

    ld h, l                                       ; $69A1: $65
    ld a, b                                       ; $69A2: $78
    ld [hl], h                                    ; $69A3: $74
    ccf                                           ; $69A4: $3F
    cp $FD                                        ; $69A5: $FE $FD
    sbc d                                         ; $69A7: $9A
    ld b, d                                       ; $69A8: $42
    sbc e                                         ; $69A9: $9B
    ld a, b                                       ; $69AA: $78
    ld [hl], b                                    ; $69AB: $70
    sbc a                                         ; $69AC: $9F

jr_01C_69AD:
    ld d, h                                       ; $69AD: $54
    ld l, b                                       ; $69AE: $68
    ld h, l                                       ; $69AF: $65
    ld a, c                                       ; $69B0: $79
    daa                                           ; $69B1: $27
    ld [hl], d                                    ; $69B2: $72
    ld h, l                                       ; $69B3: $65
    rst $38                                       ; $69B4: $FF
    ld h, l                                       ; $69B5: $65
    halt                                          ; $69B6: $76
    ld h, l                                       ; $69B7: $65
    ld [hl], d                                    ; $69B8: $72
    ld a, c                                       ; $69B9: $79
    ld [hl], a                                    ; $69BA: $77
    ld l, b                                       ; $69BB: $68
    ld h, l                                       ; $69BC: $65
    ld [hl], d                                    ; $69BD: $72
    ld h, l                                       ; $69BE: $65
    ld hl, $FDFE                                  ; $69BF: $21 $FE $FD
    sbc d                                         ; $69C2: $9A
    ld b, d                                       ; $69C3: $42
    xor a                                         ; $69C4: $AF
    dec h                                         ; $69C5: $25
    and c                                         ; $69C6: $A1
    inc b                                         ; $69C7: $04
    xor a                                         ; $69C8: $AF
    or c                                          ; $69C9: $B1
    and c                                         ; $69CA: $A1
    jr nz, jr_01C_6968                            ; $69CB: $20 $9B

jr_01C_69CD:
    sbc b                                         ; $69CD: $98
    ld [hl], e                                    ; $69CE: $73
    sbc a                                         ; $69CF: $9F
    ld b, c                                       ; $69D0: $41
    ld l, b                                       ; $69D1: $68
    inc l                                         ; $69D2: $2C
    jr nz, jr_01C_6A4C                            ; $69D3: $20 $77

    ld l, b                                       ; $69D5: $68
    ld l, a                                       ; $69D6: $6F
    jr nz, @+$63                                  ; $69D7: $20 $61

    ld [hl], d                                    ; $69D9: $72
    ld h, l                                       ; $69DA: $65
    rst $38                                       ; $69DB: $FF
    ld a, c                                       ; $69DC: $79
    ld l, a                                       ; $69DD: $6F
    ld [hl], l                                    ; $69DE: $75
    ccf                                           ; $69DF: $3F

jr_01C_69E0:
    cp $FD                                        ; $69E0: $FE $FD
    sbc e                                         ; $69E2: $9B
    ld a, b                                       ; $69E3: $78
    ld [hl], b                                    ; $69E4: $70
    sbc a                                         ; $69E5: $9F
    ld c, l                                       ; $69E6: $4D
    ld a, c                                       ; $69E7: $79
    jr nz, jr_01C_6A58                            ; $69E8: $20 $6E

    ld h, c                                       ; $69EA: $61
    ld l, l                                       ; $69EB: $6D
    ld h, l                                       ; $69EC: $65
    daa                                           ; $69ED: $27
    ld [hl], e                                    ; $69EE: $73
    jr nz, jr_01C_6A45                            ; $69EF: $20 $54

    ld l, a                                       ; $69F1: $6F
    ld l, [hl]                                    ; $69F2: $6E
    ld a, c                                       ; $69F3: $79
    ld l, $FE                                     ; $69F4: $2E $FE
    db $FD                                        ; $69F6: $FD
    sbc e                                         ; $69F7: $9B
    sbc b                                         ; $69F8: $98
    ld [hl], e                                    ; $69F9: $73
    sbc a                                         ; $69FA: $9F
    ld d, a                                       ; $69FB: $57
    ld l, a                                       ; $69FC: $6F
    ld [hl], a                                    ; $69FD: $77
    inc l                                         ; $69FE: $2C
    jr nz, jr_01C_6A6A                            ; $69FF: $20 $69

    ld [hl], h                                    ; $6A01: $74
    daa                                           ; $6A02: $27
    ld [hl], e                                    ; $6A03: $73
    jr nz, jr_01C_6A78                            ; $6A04: $20 $72

    ld h, c                                       ; $6A06: $61
    ld [hl], d                                    ; $6A07: $72
    ld h, l                                       ; $6A08: $65
    rst $38                                       ; $6A09: $FF
    ld [hl], h                                    ; $6A0A: $74
    ld l, a                                       ; $6A0B: $6F
    jr nz, jr_01C_6A7B                            ; $6A0C: $20 $6D

    ld h, l                                       ; $6A0E: $65

jr_01C_6A0F:
    ld h, l                                       ; $6A0F: $65
    ld [hl], h                                    ; $6A10: $74
    jr nz, jr_01C_6A74                            ; $6A11: $20 $61

    ld l, [hl]                                    ; $6A13: $6E
    ld a, c                                       ; $6A14: $79
    ld l, a                                       ; $6A15: $6F
    ld l, [hl]                                    ; $6A16: $6E
    ld h, l                                       ; $6A17: $65
    cp $6E                                        ; $6A18: $FE $6E
    ld h, l                                       ; $6A1A: $65
    ld [hl], a                                    ; $6A1B: $77
    jr nz, jr_01C_6A82                            ; $6A1C: $20 $64

    ld l, a                                       ; $6A1E: $6F
    ld [hl], a                                    ; $6A1F: $77
    ld l, [hl]                                    ; $6A20: $6E
    jr nz, jr_01C_6A8B                            ; $6A21: $20 $68

    ld h, l                                       ; $6A23: $65
    ld [hl], d                                    ; $6A24: $72
    ld h, l                                       ; $6A25: $65
    ld l, $FF                                     ; $6A26: $2E $FF
    ld c, l                                       ; $6A28: $4D
    ld a, c                                       ; $6A29: $79
    jr nz, jr_01C_6A9A                            ; $6A2A: $20 $6E

    ld h, c                                       ; $6A2C: $61
    ld l, l                                       ; $6A2D: $6D
    ld h, l                                       ; $6A2E: $65
    daa                                           ; $6A2F: $27
    ld [hl], e                                    ; $6A30: $73
    jr nz, jr_01C_6A88                            ; $6A31: $20 $55

    ld l, h                                       ; $6A33: $6C
    ld l, e                                       ; $6A34: $6B
    cp $61                                        ; $6A35: $FE $61
    ld l, [hl]                                    ; $6A37: $6E
    ld h, h                                       ; $6A38: $64
    jr nz, @+$4B                                  ; $6A39: $20 $49

    jr nz, jr_01C_6AAA                            ; $6A3B: $20 $6D

    ld l, c                                       ; $6A3D: $69
    ld l, [hl]                                    ; $6A3E: $6E
    ld h, l                                       ; $6A3F: $65
    rst $38                                       ; $6A40: $FF
    ld b, c                                       ; $6A41: $41
    ld l, [hl]                                    ; $6A42: $6E
    ld l, c                                       ; $6A43: $69
    ld l, l                                       ; $6A44: $6D

jr_01C_6A45:
    ld l, c                                       ; $6A45: $69
    ld [hl], h                                    ; $6A46: $74
    ld h, l                                       ; $6A47: $65
    jr nz, jr_01C_6AAE                            ; $6A48: $20 $64

    ld l, a                                       ; $6A4A: $6F
    ld [hl], a                                    ; $6A4B: $77

jr_01C_6A4C:
    ld l, [hl]                                    ; $6A4C: $6E
    cp $68                                        ; $6A4D: $FE $68
    ld h, l                                       ; $6A4F: $65
    ld [hl], d                                    ; $6A50: $72
    ld h, l                                       ; $6A51: $65
    ld l, $20                                     ; $6A52: $2E $20
    ld c, c                                       ; $6A54: $49
    jr nz, jr_01C_6ACE                            ; $6A55: $20 $77

    ld h, c                                       ; $6A57: $61

jr_01C_6A58:
    ld [hl], e                                    ; $6A58: $73
    rst $38                                       ; $6A59: $FF
    ld h, c                                       ; $6A5A: $61
    ld h, e                                       ; $6A5B: $63
    ld [hl], h                                    ; $6A5C: $74
    ld [hl], l                                    ; $6A5D: $75
    ld h, c                                       ; $6A5E: $61
    ld l, h                                       ; $6A5F: $6C
    ld l, h                                       ; $6A60: $6C
    ld a, c                                       ; $6A61: $79
    cp $77                                        ; $6A62: $FE $77
    ld h, c                                       ; $6A64: $61
    ld l, c                                       ; $6A65: $69
    ld [hl], h                                    ; $6A66: $74
    ld l, c                                       ; $6A67: $69
    ld l, [hl]                                    ; $6A68: $6E
    ld h, a                                       ; $6A69: $67

jr_01C_6A6A:
    jr nz, jr_01C_6AD2                            ; $6A6A: $20 $66

    ld l, a                                       ; $6A6C: $6F
    ld [hl], d                                    ; $6A6D: $72
    jr nz, jr_01C_6ADD                            ; $6A6E: $20 $6D

    ld a, c                                       ; $6A70: $79
    rst $38                                       ; $6A71: $FF
    ld h, [hl]                                    ; $6A72: $66
    ld [hl], d                                    ; $6A73: $72

jr_01C_6A74:
    ld l, c                                       ; $6A74: $69
    ld h, l                                       ; $6A75: $65
    ld l, [hl]                                    ; $6A76: $6E
    ld h, h                                       ; $6A77: $64

jr_01C_6A78:
    jr nz, jr_01C_6AD1                            ; $6A78: $20 $57

    ld h, l                                       ; $6A7A: $65

jr_01C_6A7B:
    ld l, [hl]                                    ; $6A7B: $6E
    ld h, e                                       ; $6A7C: $63
    ld h, l                                       ; $6A7D: $65
    cp $6A                                        ; $6A7E: $FE $6A
    ld [hl], l                                    ; $6A80: $75
    ld [hl], e                                    ; $6A81: $73

jr_01C_6A82:
    ld [hl], h                                    ; $6A82: $74
    jr nz, jr_01C_6AF3                            ; $6A83: $20 $6E

    ld l, a                                       ; $6A85: $6F
    ld [hl], a                                    ; $6A86: $77
    inc l                                         ; $6A87: $2C

jr_01C_6A88:
    jr nz, jr_01C_6AEC                            ; $6A88: $20 $62

    ld [hl], l                                    ; $6A8A: $75

jr_01C_6A8B:
    ld [hl], h                                    ; $6A8B: $74
    rst $38                                       ; $6A8C: $FF
    ld l, b                                       ; $6A8D: $68
    ld h, l                                       ; $6A8E: $65
    daa                                           ; $6A8F: $27
    ld [hl], e                                    ; $6A90: $73
    jr nz, jr_01C_6B01                            ; $6A91: $20 $6E

    ld l, a                                       ; $6A93: $6F
    ld [hl], h                                    ; $6A94: $74
    jr nz, jr_01C_6AFF                            ; $6A95: $20 $68

    ld h, l                                       ; $6A97: $65
    ld [hl], d                                    ; $6A98: $72
    ld h, l                                       ; $6A99: $65

jr_01C_6A9A:
    cp $79                                        ; $6A9A: $FE $79
    ld h, l                                       ; $6A9C: $65
    ld [hl], h                                    ; $6A9D: $74
    ld l, $FE                                     ; $6A9E: $2E $FE
    db $FD                                        ; $6AA0: $FD
    sbc e                                         ; $6AA1: $9B
    ld a, b                                       ; $6AA2: $78
    ld [hl], b                                    ; $6AA3: $70
    sbc a                                         ; $6AA4: $9F
    ld e, c                                       ; $6AA5: $59
    ld l, a                                       ; $6AA6: $6F
    ld [hl], l                                    ; $6AA7: $75
    daa                                           ; $6AA8: $27
    ld [hl], d                                    ; $6AA9: $72

jr_01C_6AAA:
    ld h, l                                       ; $6AAA: $65
    jr nz, @+$59                                  ; $6AAB: $20 $57

    ld h, l                                       ; $6AAD: $65

jr_01C_6AAE:
    ld l, [hl]                                    ; $6AAE: $6E
    ld h, e                                       ; $6AAF: $63
    ld h, l                                       ; $6AB0: $65
    daa                                           ; $6AB1: $27
    ld [hl], e                                    ; $6AB2: $73
    rst $38                                       ; $6AB3: $FF
    ld h, [hl]                                    ; $6AB4: $66
    ld [hl], d                                    ; $6AB5: $72
    ld l, c                                       ; $6AB6: $69
    ld h, l                                       ; $6AB7: $65
    ld l, [hl]                                    ; $6AB8: $6E
    ld h, h                                       ; $6AB9: $64
    ccf                                           ; $6ABA: $3F
    cp $FD                                        ; $6ABB: $FE $FD
    sbc e                                         ; $6ABD: $9B
    sbc b                                         ; $6ABE: $98
    ld [hl], e                                    ; $6ABF: $73
    sbc a                                         ; $6AC0: $9F
    ld b, h                                       ; $6AC1: $44
    ld l, a                                       ; $6AC2: $6F
    jr nz, jr_01C_6B3E                            ; $6AC3: $20 $79

    ld l, a                                       ; $6AC5: $6F
    ld [hl], l                                    ; $6AC6: $75
    jr nz, @+$6D                                  ; $6AC7: $20 $6B

    ld l, [hl]                                    ; $6AC9: $6E
    ld l, a                                       ; $6ACA: $6F
    ld [hl], a                                    ; $6ACB: $77
    rst $38                                       ; $6ACC: $FF
    ld d, a                                       ; $6ACD: $57

jr_01C_6ACE:
    ld h, l                                       ; $6ACE: $65
    ld l, [hl]                                    ; $6ACF: $6E
    ld h, e                                       ; $6AD0: $63

jr_01C_6AD1:
    ld h, l                                       ; $6AD1: $65

jr_01C_6AD2:
    ccf                                           ; $6AD2: $3F
    cp $FD                                        ; $6AD3: $FE $FD
    sbc e                                         ; $6AD5: $9B
    ld a, b                                       ; $6AD6: $78
    ld [hl], b                                    ; $6AD7: $70
    sbc a                                         ; $6AD8: $9F
    ld d, a                                       ; $6AD9: $57
    ld h, l                                       ; $6ADA: $65
    jr nz, jr_01C_6B4A                            ; $6ADB: $20 $6D

jr_01C_6ADD:
    ld h, l                                       ; $6ADD: $65
    ld [hl], h                                    ; $6ADE: $74
    jr nz, jr_01C_6B4A                            ; $6ADF: $20 $69

    ld l, [hl]                                    ; $6AE1: $6E
    jr nz, jr_01C_6B58                            ; $6AE2: $20 $74

    ld l, b                                       ; $6AE4: $68
    ld h, l                                       ; $6AE5: $65
    rst $38                                       ; $6AE6: $FF
    ld h, [hl]                                    ; $6AE7: $66
    ld l, a                                       ; $6AE8: $6F
    ld [hl], d                                    ; $6AE9: $72
    ld h, l                                       ; $6AEA: $65
    ld [hl], e                                    ; $6AEB: $73

jr_01C_6AEC:
    ld [hl], h                                    ; $6AEC: $74
    jr nz, jr_01C_6B50                            ; $6AED: $20 $61

    ld [hl], h                                    ; $6AEF: $74
    cp $4E                                        ; $6AF0: $FE $4E
    ld h, c                                       ; $6AF2: $61

jr_01C_6AF3:
    ld [hl], d                                    ; $6AF3: $72
    ld l, a                                       ; $6AF4: $6F
    ld l, a                                       ; $6AF5: $6F
    ld l, l                                       ; $6AF6: $6D
    ld l, $FE                                     ; $6AF7: $2E $FE
    db $FD                                        ; $6AF9: $FD
    sbc e                                         ; $6AFA: $9B
    sbc b                                         ; $6AFB: $98
    ld [hl], e                                    ; $6AFC: $73
    sbc a                                         ; $6AFD: $9F
    ld c, c                                       ; $6AFE: $49

jr_01C_6AFF:
    ld [hl], e                                    ; $6AFF: $73
    ld l, [hl]                                    ; $6B00: $6E

jr_01C_6B01:
    daa                                           ; $6B01: $27
    ld [hl], h                                    ; $6B02: $74
    jr nz, jr_01C_6B6D                            ; $6B03: $20 $68

    ld h, l                                       ; $6B05: $65
    jr nz, jr_01C_6B6B                            ; $6B06: $20 $63

    ld l, a                                       ; $6B08: $6F
    ld l, a                                       ; $6B09: $6F
    ld l, h                                       ; $6B0A: $6C
    ccf                                           ; $6B0B: $3F
    rst $38                                       ; $6B0C: $FF
    ld c, c                                       ; $6B0D: $49
    jr nz, jr_01C_6B84                            ; $6B0E: $20 $74

    ld l, b                                       ; $6B10: $68
    ld l, c                                       ; $6B11: $69
    ld l, [hl]                                    ; $6B12: $6E
    ld l, e                                       ; $6B13: $6B
    jr nz, jr_01C_6B83                            ; $6B14: $20 $6D

    ld a, c                                       ; $6B16: $79
    cp $73                                        ; $6B17: $FE $73
    ld l, c                                       ; $6B19: $69
    ld [hl], e                                    ; $6B1A: $73
    ld [hl], h                                    ; $6B1B: $74
    ld h, l                                       ; $6B1C: $65
    ld [hl], d                                    ; $6B1D: $72
    jr nz, jr_01C_6B88                            ; $6B1E: $20 $68

    ld h, c                                       ; $6B20: $61
    ld [hl], e                                    ; $6B21: $73
    jr nz, jr_01C_6B98                            ; $6B22: $20 $74

    ld l, b                                       ; $6B24: $68
    ld h, l                                       ; $6B25: $65
    rst $38                                       ; $6B26: $FF
    ld l, b                                       ; $6B27: $68
    ld l, a                                       ; $6B28: $6F
    ld [hl], h                                    ; $6B29: $74
    ld [hl], e                                    ; $6B2A: $73
    jr nz, jr_01C_6B93                            ; $6B2B: $20 $66

    ld l, a                                       ; $6B2D: $6F
    ld [hl], d                                    ; $6B2E: $72
    jr nz, jr_01C_6B99                            ; $6B2F: $20 $68

    ld l, c                                       ; $6B31: $69
    ld l, l                                       ; $6B32: $6D
    ld l, $FE                                     ; $6B33: $2E $FE
    ld b, h                                       ; $6B35: $44
    ld l, a                                       ; $6B36: $6F
    ld l, [hl]                                    ; $6B37: $6E
    daa                                           ; $6B38: $27
    ld [hl], h                                    ; $6B39: $74
    jr nz, jr_01C_6BB0                            ; $6B3A: $20 $74

    ld h, l                                       ; $6B3C: $65
    ld l, h                                       ; $6B3D: $6C

jr_01C_6B3E:
    ld l, h                                       ; $6B3E: $6C
    jr nz, jr_01C_6BA9                            ; $6B3F: $20 $68

    ld h, l                                       ; $6B41: $65
    ld [hl], d                                    ; $6B42: $72
    rst $38                                       ; $6B43: $FF
    ld c, c                                       ; $6B44: $49
    jr nz, jr_01C_6BBA                            ; $6B45: $20 $73

    ld h, c                                       ; $6B47: $61

Jump_01C_6B48:
    ld l, c                                       ; $6B48: $69
    ld h, h                                       ; $6B49: $64

jr_01C_6B4A:
    jr nz, jr_01C_6BBF                            ; $6B4A: $20 $73

    ld l, a                                       ; $6B4C: $6F
    inc l                                         ; $6B4D: $2C
    cp $74                                        ; $6B4E: $FE $74

jr_01C_6B50:
    ld l, b                                       ; $6B50: $68
    ld l, a                                       ; $6B51: $6F
    ld [hl], l                                    ; $6B52: $75
    ld h, a                                       ; $6B53: $67
    ld l, b                                       ; $6B54: $68
    ld l, $FE                                     ; $6B55: $2E $FE
    db $FD                                        ; $6B57: $FD

jr_01C_6B58:
    sbc e                                         ; $6B58: $9B
    ld a, b                                       ; $6B59: $78
    ld [hl], b                                    ; $6B5A: $70
    sbc a                                         ; $6B5B: $9F
    ld d, a                                       ; $6B5C: $57
    ld l, b                                       ; $6B5D: $68
    ld l, a                                       ; $6B5E: $6F
    jr nz, jr_01C_6BCA                            ; $6B5F: $20 $69

    ld [hl], e                                    ; $6B61: $73
    jr nz, jr_01C_6BDD                            ; $6B62: $20 $79

    ld l, a                                       ; $6B64: $6F
    ld [hl], l                                    ; $6B65: $75
    ld [hl], d                                    ; $6B66: $72
    rst $38                                       ; $6B67: $FF
    ld [hl], e                                    ; $6B68: $73
    ld l, c                                       ; $6B69: $69
    ld [hl], e                                    ; $6B6A: $73

jr_01C_6B6B:
    ld [hl], h                                    ; $6B6B: $74
    ld h, l                                       ; $6B6C: $65

jr_01C_6B6D:
    ld [hl], d                                    ; $6B6D: $72
    ccf                                           ; $6B6E: $3F
    cp $FD                                        ; $6B6F: $FE $FD
    sbc e                                         ; $6B71: $9B
    sbc b                                         ; $6B72: $98
    ld [hl], e                                    ; $6B73: $73
    sbc a                                         ; $6B74: $9F
    ld c, b                                       ; $6B75: $48
    ld h, l                                       ; $6B76: $65
    ld [hl], d                                    ; $6B77: $72
    jr nz, jr_01C_6BE8                            ; $6B78: $20 $6E

    ld h, c                                       ; $6B7A: $61
    ld l, l                                       ; $6B7B: $6D
    ld h, l                                       ; $6B7C: $65
    jr nz, jr_01C_6BE8                            ; $6B7D: $20 $69

    ld [hl], e                                    ; $6B7F: $73
    rst $38                                       ; $6B80: $FF
    ld b, a                                       ; $6B81: $47
    ld [hl], d                                    ; $6B82: $72

jr_01C_6B83:
    ld [hl], l                                    ; $6B83: $75

jr_01C_6B84:
    ld l, e                                       ; $6B84: $6B
    ld l, $20                                     ; $6B85: $2E $20
    ld d, e                                       ; $6B87: $53

jr_01C_6B88:
    ld l, b                                       ; $6B88: $68
    ld h, l                                       ; $6B89: $65
    jr nz, jr_01C_6BFB                            ; $6B8A: $20 $6F

    ld [hl], a                                    ; $6B8C: $77
    ld l, [hl]                                    ; $6B8D: $6E
    ld [hl], e                                    ; $6B8E: $73
    cp $74                                        ; $6B8F: $FE $74
    ld l, b                                       ; $6B91: $68
    ld h, l                                       ; $6B92: $65

jr_01C_6B93:
    jr nz, jr_01C_6BE2                            ; $6B93: $20 $4D

    ld [hl], l                                    ; $6B95: $75
    ld [hl], e                                    ; $6B96: $73
    ld l, b                                       ; $6B97: $68

jr_01C_6B98:
    ld [hl], d                                    ; $6B98: $72

jr_01C_6B99:
    ld l, a                                       ; $6B99: $6F
    ld l, a                                       ; $6B9A: $6F
    ld l, l                                       ; $6B9B: $6D
    rst $38                                       ; $6B9C: $FF
    ld b, [hl]                                    ; $6B9D: $46
    ld h, c                                       ; $6B9E: $61
    ld [hl], d                                    ; $6B9F: $72
    ld l, l                                       ; $6BA0: $6D
    jr nz, @+$6C                                  ; $6BA1: $20 $6A

    ld [hl], l                                    ; $6BA3: $75
    ld [hl], e                                    ; $6BA4: $73
    ld [hl], h                                    ; $6BA5: $74
    cp $6F                                        ; $6BA6: $FE $6F
    ld [hl], l                                    ; $6BA8: $75

jr_01C_6BA9:
    ld [hl], h                                    ; $6BA9: $74
    ld [hl], e                                    ; $6BAA: $73
    ld l, c                                       ; $6BAB: $69
    ld h, h                                       ; $6BAC: $64
    ld h, l                                       ; $6BAD: $65
    jr nz, jr_01C_6C1F                            ; $6BAE: $20 $6F

jr_01C_6BB0:
    ld h, [hl]                                    ; $6BB0: $66
    rst $38                                       ; $6BB1: $FF
    ld [hl], h                                    ; $6BB2: $74
    ld l, a                                       ; $6BB3: $6F
    ld [hl], a                                    ; $6BB4: $77
    ld l, [hl]                                    ; $6BB5: $6E
    ld l, $20                                     ; $6BB6: $2E $20
    ld d, e                                       ; $6BB8: $53
    ld l, b                                       ; $6BB9: $68

jr_01C_6BBA:
    ld h, l                                       ; $6BBA: $65
    cp $68                                        ; $6BBB: $FE $68
    ld h, c                                       ; $6BBD: $61
    ld [hl], d                                    ; $6BBE: $72

jr_01C_6BBF:
    halt                                          ; $6BBF: $76
    ld h, l                                       ; $6BC0: $65
    ld [hl], e                                    ; $6BC1: $73
    ld [hl], h                                    ; $6BC2: $74
    ld [hl], e                                    ; $6BC3: $73
    jr nz, jr_01C_6C3A                            ; $6BC4: $20 $74

    ld l, b                                       ; $6BC6: $68
    ld h, l                                       ; $6BC7: $65
    rst $38                                       ; $6BC8: $FF
    ld h, d                                       ; $6BC9: $62

jr_01C_6BCA:
    ld h, l                                       ; $6BCA: $65
    ld [hl], e                                    ; $6BCB: $73
    ld [hl], h                                    ; $6BCC: $74
    jr nz, jr_01C_6C3C                            ; $6BCD: $20 $6D

    ld [hl], l                                    ; $6BCF: $75
    ld [hl], e                                    ; $6BD0: $73
    ld l, b                                       ; $6BD1: $68
    ld [hl], d                                    ; $6BD2: $72
    ld l, a                                       ; $6BD3: $6F
    ld l, a                                       ; $6BD4: $6F
    ld l, l                                       ; $6BD5: $6D
    ld [hl], e                                    ; $6BD6: $73
    cp $79                                        ; $6BD7: $FE $79
    ld l, a                                       ; $6BD9: $6F
    ld [hl], l                                    ; $6BDA: $75
    daa                                           ; $6BDB: $27
    ld l, h                                       ; $6BDC: $6C

jr_01C_6BDD:
    ld l, h                                       ; $6BDD: $6C
    jr nz, @+$67                                  ; $6BDE: $20 $65

    halt                                          ; $6BE0: $76
    ld h, l                                       ; $6BE1: $65

jr_01C_6BE2:
    ld [hl], d                                    ; $6BE2: $72
    rst $38                                       ; $6BE3: $FF
    ld [hl], h                                    ; $6BE4: $74
    ld h, c                                       ; $6BE5: $61
    ld [hl], e                                    ; $6BE6: $73
    ld [hl], h                                    ; $6BE7: $74

jr_01C_6BE8:
    ld h, l                                       ; $6BE8: $65
    ld hl, $FDFE                                  ; $6BE9: $21 $FE $FD
    sbc d                                         ; $6BEC: $9A
    ld b, b                                       ; $6BED: $40
    ld b, b                                       ; $6BEE: $40
    sbc e                                         ; $6BEF: $9B
    sbc b                                         ; $6BF0: $98
    ld [hl], e                                    ; $6BF1: $73
    sbc a                                         ; $6BF2: $9F
    ld b, d                                       ; $6BF3: $42
    ld [hl], l                                    ; $6BF4: $75
    ld [hl], h                                    ; $6BF5: $74
    jr nz, jr_01C_6C64                            ; $6BF6: $20 $6C

    ld h, c                                       ; $6BF8: $61
    ld [hl], h                                    ; $6BF9: $74
    ld h, l                                       ; $6BFA: $65

jr_01C_6BFB:
    ld l, h                                       ; $6BFB: $6C
    ld a, c                                       ; $6BFC: $79
    inc l                                         ; $6BFD: $2C
    rst $38                                       ; $6BFE: $FF
    ld [hl], e                                    ; $6BFF: $73
    ld l, b                                       ; $6C00: $68
    ld h, l                                       ; $6C01: $65
    daa                                           ; $6C02: $27
    ld [hl], e                                    ; $6C03: $73
    jr nz, jr_01C_6C68                            ; $6C04: $20 $62

    ld h, l                                       ; $6C06: $65
    ld h, l                                       ; $6C07: $65
    ld l, [hl]                                    ; $6C08: $6E
    jr nz, jr_01C_6C7E                            ; $6C09: $20 $73

    ld l, a                                       ; $6C0B: $6F
    cp $74                                        ; $6C0C: $FE $74
    ld l, c                                       ; $6C0E: $69
    ld [hl], d                                    ; $6C0F: $72
    ld h, l                                       ; $6C10: $65
    ld h, h                                       ; $6C11: $64
    ld l, $2E                                     ; $6C12: $2E $2E
    ld l, $FE                                     ; $6C14: $2E $FE
    ld l, b                                       ; $6C16: $68
    ld h, c                                       ; $6C17: $61
    ld [hl], d                                    ; $6C18: $72
    halt                                          ; $6C19: $76
    ld h, l                                       ; $6C1A: $65
    ld [hl], e                                    ; $6C1B: $73
    ld [hl], h                                    ; $6C1C: $74
    ld l, c                                       ; $6C1D: $69
    ld l, [hl]                                    ; $6C1E: $6E

jr_01C_6C1F:
    ld h, a                                       ; $6C1F: $67
    rst $38                                       ; $6C20: $FF
    ld l, l                                       ; $6C21: $6D
    ld [hl], l                                    ; $6C22: $75
    ld [hl], e                                    ; $6C23: $73
    ld l, b                                       ; $6C24: $68
    ld [hl], d                                    ; $6C25: $72
    ld l, a                                       ; $6C26: $6F
    ld l, a                                       ; $6C27: $6F
    ld l, l                                       ; $6C28: $6D
    ld [hl], e                                    ; $6C29: $73
    jr nz, jr_01C_6C95                            ; $6C2A: $20 $69

    ld [hl], e                                    ; $6C2C: $73
    cp $68                                        ; $6C2D: $FE $68
    ld h, c                                       ; $6C2F: $61
    ld [hl], d                                    ; $6C30: $72
    ld h, h                                       ; $6C31: $64
    jr nz, jr_01C_6CAB                            ; $6C32: $20 $77

    ld l, a                                       ; $6C34: $6F
    ld [hl], d                                    ; $6C35: $72
    ld l, e                                       ; $6C36: $6B
    inc l                                         ; $6C37: $2C
    jr nz, jr_01C_6C9C                            ; $6C38: $20 $62

jr_01C_6C3A:
    ld [hl], l                                    ; $6C3A: $75
    ld [hl], h                                    ; $6C3B: $74

jr_01C_6C3C:
    rst $38                                       ; $6C3C: $FF
    ld c, c                                       ; $6C3D: $49
    jr nz, jr_01C_6CB4                            ; $6C3E: $20 $74

    ld l, b                                       ; $6C40: $68
    ld l, c                                       ; $6C41: $69
    ld l, [hl]                                    ; $6C42: $6E
    ld l, e                                       ; $6C43: $6B
    jr nz, jr_01C_6CB9                            ; $6C44: $20 $73

    ld l, b                                       ; $6C46: $68
    ld h, l                                       ; $6C47: $65
    cp $6D                                        ; $6C48: $FE $6D
    ld l, c                                       ; $6C4A: $69
    ld h, a                                       ; $6C4B: $67
    ld l, b                                       ; $6C4C: $68
    ld [hl], h                                    ; $6C4D: $74
    jr nz, @+$64                                  ; $6C4E: $20 $62

    ld h, l                                       ; $6C50: $65
    rst $38                                       ; $6C51: $FF
    ld [hl], b                                    ; $6C52: $70
    ld [hl], l                                    ; $6C53: $75
    ld [hl], e                                    ; $6C54: $73
    ld l, b                                       ; $6C55: $68
    ld l, c                                       ; $6C56: $69
    ld l, [hl]                                    ; $6C57: $6E
    ld h, a                                       ; $6C58: $67
    jr nz, jr_01C_6CC3                            ; $6C59: $20 $68

    ld h, l                                       ; $6C5B: $65
    ld [hl], d                                    ; $6C5C: $72
    ld [hl], e                                    ; $6C5D: $73
    ld h, l                                       ; $6C5E: $65
    ld l, h                                       ; $6C5F: $6C
    ld h, [hl]                                    ; $6C60: $66
    cp $74                                        ; $6C61: $FE $74
    ld l, a                                       ; $6C63: $6F

jr_01C_6C64:
    ld l, a                                       ; $6C64: $6F
    jr nz, @+$6A                                  ; $6C65: $20 $68

    ld h, c                                       ; $6C67: $61

jr_01C_6C68:
    ld [hl], d                                    ; $6C68: $72
    ld h, h                                       ; $6C69: $64
    ld l, $20                                     ; $6C6A: $2E $20
    ld d, a                                       ; $6C6C: $57
    ld l, b                                       ; $6C6D: $68
    ld h, l                                       ; $6C6E: $65
    ld l, [hl]                                    ; $6C6F: $6E
    rst $38                                       ; $6C70: $FF
    ld c, c                                       ; $6C71: $49
    jr nz, jr_01C_6CE8                            ; $6C72: $20 $74

    ld h, c                                       ; $6C74: $61
    ld l, h                                       ; $6C75: $6C
    ld l, e                                       ; $6C76: $6B
    ld h, l                                       ; $6C77: $65
    ld h, h                                       ; $6C78: $64
    jr nz, @+$76                                  ; $6C79: $20 $74

    ld l, a                                       ; $6C7B: $6F
    jr nz, jr_01C_6CE6                            ; $6C7C: $20 $68

jr_01C_6C7E:
    ld h, l                                       ; $6C7E: $65
    ld [hl], d                                    ; $6C7F: $72
    cp $65                                        ; $6C80: $FE $65
    ld h, c                                       ; $6C82: $61
    ld [hl], d                                    ; $6C83: $72
    ld l, h                                       ; $6C84: $6C
    ld l, c                                       ; $6C85: $69
    ld h, l                                       ; $6C86: $65
    ld [hl], d                                    ; $6C87: $72
    jr nz, jr_01C_6CFD                            ; $6C88: $20 $73

    ld l, b                                       ; $6C8A: $68
    ld h, l                                       ; $6C8B: $65
    rst $38                                       ; $6C8C: $FF
    ld [hl], e                                    ; $6C8D: $73
    ld h, c                                       ; $6C8E: $61
    ld l, c                                       ; $6C8F: $69
    ld h, h                                       ; $6C90: $64
    jr nz, jr_01C_6D06                            ; $6C91: $20 $73

    ld l, b                                       ; $6C93: $68
    ld h, l                                       ; $6C94: $65

jr_01C_6C95:
    jr nz, jr_01C_6D0E                            ; $6C95: $20 $77

    ld h, c                                       ; $6C97: $61
    ld [hl], e                                    ; $6C98: $73
    cp $68                                        ; $6C99: $FE $68
    ld h, c                                       ; $6C9B: $61

jr_01C_6C9C:
    halt                                          ; $6C9C: $76
    ld l, c                                       ; $6C9D: $69
    ld l, [hl]                                    ; $6C9E: $6E
    ld h, a                                       ; $6C9F: $67
    jr nz, jr_01C_6D16                            ; $6CA0: $20 $74

    ld [hl], d                                    ; $6CA2: $72
    ld l, a                                       ; $6CA3: $6F
    ld [hl], l                                    ; $6CA4: $75
    ld h, d                                       ; $6CA5: $62
    ld l, h                                       ; $6CA6: $6C
    ld h, l                                       ; $6CA7: $65
    rst $38                                       ; $6CA8: $FF
    ld [hl], e                                    ; $6CA9: $73
    ld l, h                                       ; $6CAA: $6C

jr_01C_6CAB:
    ld h, l                                       ; $6CAB: $65
    ld h, l                                       ; $6CAC: $65
    ld [hl], b                                    ; $6CAD: $70
    ld l, c                                       ; $6CAE: $69
    ld l, [hl]                                    ; $6CAF: $6E
    ld h, a                                       ; $6CB0: $67
    cp $62                                        ; $6CB1: $FE $62
    ld h, l                                       ; $6CB3: $65

jr_01C_6CB4:
    ld h, e                                       ; $6CB4: $63
    ld h, c                                       ; $6CB5: $61
    ld [hl], l                                    ; $6CB6: $75
    ld [hl], e                                    ; $6CB7: $73
    ld h, l                                       ; $6CB8: $65

jr_01C_6CB9:
    jr nz, jr_01C_6D2A                            ; $6CB9: $20 $6F

    ld h, [hl]                                    ; $6CBB: $66
    jr nz, jr_01C_6D2A                            ; $6CBC: $20 $6C

    ld l, a                                       ; $6CBE: $6F
    ld [hl], l                                    ; $6CBF: $75
    ld h, h                                       ; $6CC0: $64
    rst $38                                       ; $6CC1: $FF
    ld l, [hl]                                    ; $6CC2: $6E

jr_01C_6CC3:
    ld l, a                                       ; $6CC3: $6F
    ld l, c                                       ; $6CC4: $69
    ld [hl], e                                    ; $6CC5: $73
    ld h, l                                       ; $6CC6: $65
    ld [hl], e                                    ; $6CC7: $73
    jr nz, jr_01C_6D2C                            ; $6CC8: $20 $62

    ld h, l                                       ; $6CCA: $65
    ld l, h                                       ; $6CCB: $6C
    ld l, a                                       ; $6CCC: $6F
    ld [hl], a                                    ; $6CCD: $77
    cp $68                                        ; $6CCE: $FE $68
    ld h, l                                       ; $6CD0: $65
    ld [hl], d                                    ; $6CD1: $72
    jr nz, jr_01C_6D3C                            ; $6CD2: $20 $68

    ld l, a                                       ; $6CD4: $6F
    ld [hl], l                                    ; $6CD5: $75
    ld [hl], e                                    ; $6CD6: $73
    ld h, l                                       ; $6CD7: $65
    ld l, $20                                     ; $6CD8: $2E $20
    ld c, c                                       ; $6CDA: $49
    rst $38                                       ; $6CDB: $FF
    ld [hl], h                                    ; $6CDC: $74
    ld [hl], d                                    ; $6CDD: $72
    ld l, c                                       ; $6CDE: $69
    ld h, l                                       ; $6CDF: $65
    ld h, h                                       ; $6CE0: $64
    jr nz, @+$76                                  ; $6CE1: $20 $74

    ld l, a                                       ; $6CE3: $6F
    jr nz, jr_01C_6D4D                            ; $6CE4: $20 $67

jr_01C_6CE6:
    ld h, l                                       ; $6CE6: $65
    ld [hl], h                                    ; $6CE7: $74

jr_01C_6CE8:
    cp $47                                        ; $6CE8: $FE $47
    ld l, a                                       ; $6CEA: $6F
    ld h, a                                       ; $6CEB: $67
    ld l, a                                       ; $6CEC: $6F
    ld [hl], d                                    ; $6CED: $72
    jr nz, jr_01C_6D64                            ; $6CEE: $20 $74

    ld l, a                                       ; $6CF0: $6F
    jr nz, jr_01C_6D56                            ; $6CF1: $20 $63

    ld l, b                                       ; $6CF3: $68
    ld h, l                                       ; $6CF4: $65
    ld h, e                                       ; $6CF5: $63
    ld l, e                                       ; $6CF6: $6B
    rst $38                                       ; $6CF7: $FF
    ld l, c                                       ; $6CF8: $69
    ld [hl], h                                    ; $6CF9: $74
    jr nz, @+$71                                  ; $6CFA: $20 $6F

    ld [hl], l                                    ; $6CFC: $75

jr_01C_6CFD:
    ld [hl], h                                    ; $6CFD: $74
    jr nz, jr_01C_6D62                            ; $6CFE: $20 $62

    ld [hl], l                                    ; $6D00: $75
    ld [hl], h                                    ; $6D01: $74
    jr nz, jr_01C_6D6C                            ; $6D02: $20 $68

    ld h, l                                       ; $6D04: $65
    daa                                           ; $6D05: $27

jr_01C_6D06:
    ld [hl], e                                    ; $6D06: $73
    cp $53                                        ; $6D07: $FE $53
    ld c, a                                       ; $6D09: $4F
    jr nz, jr_01C_6D70                            ; $6D0A: $20 $64

    ld h, c                                       ; $6D0C: $61
    ld [hl], d                                    ; $6D0D: $72

jr_01C_6D0E:
    ld l, [hl]                                    ; $6D0E: $6E
    rst $38                                       ; $6D0F: $FF
    ld [hl], e                                    ; $6D10: $73
    ld h, l                                       ; $6D11: $65
    ld l, h                                       ; $6D12: $6C
    ld h, [hl]                                    ; $6D13: $66
    dec l                                         ; $6D14: $2D
    ld h, c                                       ; $6D15: $61

jr_01C_6D16:
    ld h, d                                       ; $6D16: $62
    ld [hl], e                                    ; $6D17: $73
    ld l, a                                       ; $6D18: $6F
    ld [hl], d                                    ; $6D19: $72
    ld h, d                                       ; $6D1A: $62
    ld h, l                                       ; $6D1B: $65
    ld h, h                                       ; $6D1C: $64
    ld hl, $53FE                                  ; $6D1D: $21 $FE $53
    ld l, a                                       ; $6D20: $6F
    jr nz, jr_01C_6D97                            ; $6D21: $20 $74

    ld l, b                                       ; $6D23: $68
    ld h, c                                       ; $6D24: $61
    ld [hl], h                                    ; $6D25: $74
    daa                                           ; $6D26: $27
    ld [hl], e                                    ; $6D27: $73
    jr nz, jr_01C_6DA1                            ; $6D28: $20 $77

jr_01C_6D2A:
    ld l, b                                       ; $6D2A: $68
    ld a, c                                       ; $6D2B: $79

jr_01C_6D2C:
    rst $38                                       ; $6D2C: $FF
    ld c, c                                       ; $6D2D: $49
    daa                                           ; $6D2E: $27
    ld l, l                                       ; $6D2F: $6D
    jr nz, jr_01C_6DA9                            ; $6D30: $20 $77

    ld h, c                                       ; $6D32: $61
    ld l, c                                       ; $6D33: $69
    ld [hl], h                                    ; $6D34: $74
    ld l, c                                       ; $6D35: $69
    ld l, [hl]                                    ; $6D36: $6E
    ld h, a                                       ; $6D37: $67
    jr nz, jr_01C_6DA0                            ; $6D38: $20 $66

    ld l, a                                       ; $6D3A: $6F
    ld [hl], d                                    ; $6D3B: $72

jr_01C_6D3C:
    cp $57                                        ; $6D3C: $FE $57
    ld h, l                                       ; $6D3E: $65
    ld l, [hl]                                    ; $6D3F: $6E
    ld h, e                                       ; $6D40: $63
    ld h, l                                       ; $6D41: $65
    ld l, $2E                                     ; $6D42: $2E $2E
    ld l, $FE                                     ; $6D44: $2E $FE
    db $FD                                        ; $6D46: $FD
    sbc e                                         ; $6D47: $9B
    ld a, b                                       ; $6D48: $78
    ld [hl], b                                    ; $6D49: $70
    sbc a                                         ; $6D4A: $9F
    ld b, a                                       ; $6D4B: $47
    ld l, a                                       ; $6D4C: $6F

jr_01C_6D4D:
    ld h, a                                       ; $6D4D: $67
    ld l, a                                       ; $6D4E: $6F
    ld [hl], d                                    ; $6D4F: $72
    inc l                                         ; $6D50: $2C
    jr nz, jr_01C_6DBB                            ; $6D51: $20 $68

    ld [hl], l                                    ; $6D53: $75
    ld l, b                                       ; $6D54: $68
    ccf                                           ; $6D55: $3F

jr_01C_6D56:
    cp $FD                                        ; $6D56: $FE $FD
    sbc e                                         ; $6D58: $9B
    sbc b                                         ; $6D59: $98
    ld [hl], e                                    ; $6D5A: $73
    sbc a                                         ; $6D5B: $9F
    ld d, a                                       ; $6D5C: $57
    ld l, b                                       ; $6D5D: $68
    ld h, c                                       ; $6D5E: $61
    ld [hl], h                                    ; $6D5F: $74
    jr nz, jr_01C_6DC3                            ; $6D60: $20 $61

jr_01C_6D62:
    jr nz, jr_01C_6DC6                            ; $6D62: $20 $62

jr_01C_6D64:
    ld [hl], l                                    ; $6D64: $75
    ld h, [hl]                                    ; $6D65: $66
    ld h, [hl]                                    ; $6D66: $66
    ld l, a                                       ; $6D67: $6F
    ld l, a                                       ; $6D68: $6F
    ld l, [hl]                                    ; $6D69: $6E
    ld l, $FE                                     ; $6D6A: $2E $FE

jr_01C_6D6C:
    ld c, b                                       ; $6D6C: $48
    ld h, l                                       ; $6D6D: $65
    daa                                           ; $6D6E: $27
    ld [hl], e                                    ; $6D6F: $73

jr_01C_6D70:
    jr nz, jr_01C_6DE6                            ; $6D70: $20 $74

    ld l, b                                       ; $6D72: $68
    ld h, l                                       ; $6D73: $65
    rst $38                                       ; $6D74: $FF
    ld l, b                                       ; $6D75: $68
    ld h, l                                       ; $6D76: $65
    ld [hl], d                                    ; $6D77: $72
    ld l, a                                       ; $6D78: $6F
    jr nz, jr_01C_6DEA                            ; $6D79: $20 $6F

    ld h, [hl]                                    ; $6D7B: $66
    jr nz, jr_01C_6DED                            ; $6D7C: $20 $6F

    ld [hl], l                                    ; $6D7E: $75
    ld [hl], d                                    ; $6D7F: $72
    cp $74                                        ; $6D80: $FE $74
    ld l, a                                       ; $6D82: $6F
    ld [hl], a                                    ; $6D83: $77
    ld l, [hl]                                    ; $6D84: $6E
    ld l, $2E                                     ; $6D85: $2E $2E
    ld l, $20                                     ; $6D87: $2E $20
    ld h, c                                       ; $6D89: $61
    jr nz, @+$64                                  ; $6D8A: $20 $62

    ld l, c                                       ; $6D8C: $69
    ld h, a                                       ; $6D8D: $67
    inc l                                         ; $6D8E: $2C
    rst $38                                       ; $6D8F: $FF
    ld l, [hl]                                    ; $6D90: $6E
    ld h, c                                       ; $6D91: $61
    ld [hl], d                                    ; $6D92: $72
    ld h, e                                       ; $6D93: $63
    ld l, c                                       ; $6D94: $69
    ld [hl], e                                    ; $6D95: $73
    ld [hl], e                                    ; $6D96: $73

jr_01C_6D97:
    ld l, c                                       ; $6D97: $69
    ld [hl], e                                    ; $6D98: $73
    ld [hl], h                                    ; $6D99: $74
    ld l, c                                       ; $6D9A: $69
    ld h, e                                       ; $6D9B: $63
    inc l                                         ; $6D9C: $2C
    cp $63                                        ; $6D9D: $FE $63
    ld l, a                                       ; $6D9F: $6F

jr_01C_6DA0:
    ld l, l                                       ; $6DA0: $6D

jr_01C_6DA1:
    ld [hl], b                                    ; $6DA1: $70
    ld l, h                                       ; $6DA2: $6C
    ld h, l                                       ; $6DA3: $65
    ld [hl], h                                    ; $6DA4: $74
    ld h, l                                       ; $6DA5: $65
    ld l, h                                       ; $6DA6: $6C
    ld a, c                                       ; $6DA7: $79
    rst $38                                       ; $6DA8: $FF

jr_01C_6DA9:
    ld h, h                                       ; $6DA9: $64
    ld h, l                                       ; $6DAA: $65
    ld l, [hl]                                    ; $6DAB: $6E
    ld [hl], e                                    ; $6DAC: $73
    ld h, l                                       ; $6DAD: $65
    jr nz, @+$6A                                  ; $6DAE: $20 $68

    ld h, l                                       ; $6DB0: $65
    ld [hl], d                                    ; $6DB1: $72
    ld l, a                                       ; $6DB2: $6F
    ld l, $20                                     ; $6DB3: $2E $20
    ld c, c                                       ; $6DB5: $49
    cp $64                                        ; $6DB6: $FE $64
    ld l, a                                       ; $6DB8: $6F
    ld l, [hl]                                    ; $6DB9: $6E
    daa                                           ; $6DBA: $27

jr_01C_6DBB:
    ld [hl], h                                    ; $6DBB: $74
    jr nz, @+$6D                                  ; $6DBC: $20 $6B

    ld l, [hl]                                    ; $6DBE: $6E
    ld l, a                                       ; $6DBF: $6F
    ld [hl], a                                    ; $6DC0: $77
    jr nz, jr_01C_6E3A                            ; $6DC1: $20 $77

jr_01C_6DC3:
    ld l, b                                       ; $6DC3: $68
    ld h, c                                       ; $6DC4: $61
    ld [hl], h                                    ; $6DC5: $74

jr_01C_6DC6:
    rst $38                                       ; $6DC6: $FF
    ld [hl], h                                    ; $6DC7: $74
    ld l, b                                       ; $6DC8: $68
    ld h, l                                       ; $6DC9: $65
    jr nz, jr_01C_6E3B                            ; $6DCA: $20 $6F

    ld [hl], h                                    ; $6DCC: $74
    ld l, b                                       ; $6DCD: $68
    ld h, l                                       ; $6DCE: $65
    ld [hl], d                                    ; $6DCF: $72
    cp $74                                        ; $6DD0: $FE $74
    ld l, a                                       ; $6DD2: $6F
    ld [hl], a                                    ; $6DD3: $77
    ld l, [hl]                                    ; $6DD4: $6E
    ld [hl], e                                    ; $6DD5: $73
    ld [hl], b                                    ; $6DD6: $70
    ld h, l                                       ; $6DD7: $65
    ld l, a                                       ; $6DD8: $6F
    ld [hl], b                                    ; $6DD9: $70
    ld l, h                                       ; $6DDA: $6C
    ld h, l                                       ; $6DDB: $65
    jr nz, jr_01C_6E51                            ; $6DDC: $20 $73

    ld h, l                                       ; $6DDE: $65
    ld h, l                                       ; $6DDF: $65
    rst $38                                       ; $6DE0: $FF
    ld l, c                                       ; $6DE1: $69
    ld l, [hl]                                    ; $6DE2: $6E
    jr nz, jr_01C_6E4D                            ; $6DE3: $20 $68

    ld l, c                                       ; $6DE5: $69

jr_01C_6DE6:
    ld l, l                                       ; $6DE6: $6D
    ld l, $20                                     ; $6DE7: $2E $20
    ld d, a                                       ; $6DE9: $57

jr_01C_6DEA:
    ld l, b                                       ; $6DEA: $68
    ld h, c                                       ; $6DEB: $61
    ld [hl], h                                    ; $6DEC: $74

jr_01C_6DED:
    jr nz, @+$63                                  ; $6DED: $20 $61

    cp $66                                        ; $6DEF: $FE $66
    ld l, a                                       ; $6DF1: $6F
    ld l, a                                       ; $6DF2: $6F
    ld l, h                                       ; $6DF3: $6C
    ld l, $2E                                     ; $6DF4: $2E $2E
    ld l, $FE                                     ; $6DF6: $2E $FE
    db $FD                                        ; $6DF8: $FD
    sbc d                                         ; $6DF9: $9A
    ld b, b                                       ; $6DFA: $40
    ld b, b                                       ; $6DFB: $40
    sbc e                                         ; $6DFC: $9B
    sbc b                                         ; $6DFD: $98
    ld [hl], e                                    ; $6DFE: $73
    sbc a                                         ; $6DFF: $9F
    ld c, a                                       ; $6E00: $4F
    ld l, b                                       ; $6E01: $68
    inc l                                         ; $6E02: $2C
    jr nz, jr_01C_6E4E                            ; $6E03: $20 $49

    daa                                           ; $6E05: $27
    ld l, l                                       ; $6E06: $6D
    rst $38                                       ; $6E07: $FF
    ld [hl], d                                    ; $6E08: $72
    ld h, c                                       ; $6E09: $61
    ld l, l                                       ; $6E0A: $6D
    ld h, d                                       ; $6E0B: $62
    ld l, h                                       ; $6E0C: $6C
    ld l, c                                       ; $6E0D: $69
    ld l, [hl]                                    ; $6E0E: $6E
    ld h, a                                       ; $6E0F: $67
    ld l, $20                                     ; $6E10: $2E $20
    ld d, e                                       ; $6E12: $53
    ld l, a                                       ; $6E13: $6F
    ld [hl], d                                    ; $6E14: $72
    ld [hl], d                                    ; $6E15: $72
    ld a, c                                       ; $6E16: $79
    cp $61                                        ; $6E17: $FE $61
    ld h, d                                       ; $6E19: $62
    ld l, a                                       ; $6E1A: $6F
    ld [hl], l                                    ; $6E1B: $75
    ld [hl], h                                    ; $6E1C: $74
    jr nz, jr_01C_6E93                            ; $6E1D: $20 $74

    ld l, b                                       ; $6E1F: $68
    ld h, c                                       ; $6E20: $61
    ld [hl], h                                    ; $6E21: $74
    ld l, $FF                                     ; $6E22: $2E $FF
    ld d, a                                       ; $6E24: $57
    ld h, l                                       ; $6E25: $65
    ld l, h                                       ; $6E26: $6C
    ld l, h                                       ; $6E27: $6C
    jr nz, jr_01C_6E9E                            ; $6E28: $20 $74

    ld l, b                                       ; $6E2A: $68
    ld h, c                                       ; $6E2B: $61
    ld l, [hl]                                    ; $6E2C: $6E
    ld l, e                                       ; $6E2D: $6B
    ld [hl], e                                    ; $6E2E: $73
    jr nz, jr_01C_6E97                            ; $6E2F: $20 $66

    ld l, a                                       ; $6E31: $6F
    ld [hl], d                                    ; $6E32: $72
    cp $74                                        ; $6E33: $FE $74
    ld h, c                                       ; $6E35: $61
    ld l, h                                       ; $6E36: $6C
    ld l, e                                       ; $6E37: $6B
    ld l, c                                       ; $6E38: $69
    ld l, [hl]                                    ; $6E39: $6E

jr_01C_6E3A:
    ld h, a                                       ; $6E3A: $67

jr_01C_6E3B:
    jr nz, jr_01C_6EB4                            ; $6E3B: $20 $77

    ld l, c                                       ; $6E3D: $69
    ld [hl], h                                    ; $6E3E: $74
    ld l, b                                       ; $6E3F: $68
    rst $38                                       ; $6E40: $FF
    ld l, l                                       ; $6E41: $6D
    ld h, l                                       ; $6E42: $65
    inc l                                         ; $6E43: $2C
    jr nz, jr_01C_6E9A                            ; $6E44: $20 $54

    ld l, a                                       ; $6E46: $6F
    ld l, [hl]                                    ; $6E47: $6E
    ld a, c                                       ; $6E48: $79
    ld hl, $FDFE                                  ; $6E49: $21 $FE $FD
    sbc d                                         ; $6E4C: $9A

jr_01C_6E4D:
    ld e, b                                       ; $6E4D: $58

jr_01C_6E4E:
    ld bc, $9B42                                  ; $6E4E: $01 $42 $9B

jr_01C_6E51:
    sbc b                                         ; $6E51: $98
    ld [hl], e                                    ; $6E52: $73
    sbc a                                         ; $6E53: $9F
    ld c, [hl]                                    ; $6E54: $4E

jr_01C_6E55:
    ld l, a                                       ; $6E55: $6F
    ld [hl], b                                    ; $6E56: $70
    ld h, l                                       ; $6E57: $65
    inc l                                         ; $6E58: $2C
    jr nz, jr_01C_6EB2                            ; $6E59: $20 $57

    ld h, l                                       ; $6E5B: $65
    ld l, [hl]                                    ; $6E5C: $6E
    ld h, e                                       ; $6E5D: $63
    ld h, l                                       ; $6E5E: $65
    rst $38                                       ; $6E5F: $FF
    ld [hl], e                                    ; $6E60: $73
    ld [hl], h                                    ; $6E61: $74
    ld l, c                                       ; $6E62: $69
    ld l, h                                       ; $6E63: $6C
    ld l, h                                       ; $6E64: $6C
    jr nz, jr_01C_6ED0                            ; $6E65: $20 $69

    ld [hl], e                                    ; $6E67: $73
    ld l, [hl]                                    ; $6E68: $6E
    daa                                           ; $6E69: $27
    ld [hl], h                                    ; $6E6A: $74
    cp $68                                        ; $6E6B: $FE $68
    ld h, l                                       ; $6E6D: $65
    ld [hl], d                                    ; $6E6E: $72
    ld h, l                                       ; $6E6F: $65
    jr nz, @+$7B                                  ; $6E70: $20 $79

    ld h, l                                       ; $6E72: $65
    ld [hl], h                                    ; $6E73: $74
    ld l, $2E                                     ; $6E74: $2E $2E
    ld l, $FE                                     ; $6E76: $2E $FE
    db $FD                                        ; $6E78: $FD
    sbc d                                         ; $6E79: $9A
    ld e, b                                       ; $6E7A: $58
    ld bc, $9B42                                  ; $6E7B: $01 $42 $9B
    sbc b                                         ; $6E7E: $98
    ld [hl], e                                    ; $6E7F: $73
    sbc a                                         ; $6E80: $9F
    ld l, $2E                                     ; $6E81: $2E $2E
    ld l, $2E                                     ; $6E83: $2E $2E
    ld l, $2E                                     ; $6E85: $2E $2E
    ld l, $2E                                     ; $6E87: $2E $2E
    ld l, $FE                                     ; $6E89: $2E $FE
    db $FD                                        ; $6E8B: $FD
    sbc d                                         ; $6E8C: $9A
    ld e, b                                       ; $6E8D: $58
    ld bc, $9342                                  ; $6E8E: $01 $42 $93
    ld h, l                                       ; $6E91: $65
    cp a                                          ; $6E92: $BF

jr_01C_6E93:
    ld b, h                                       ; $6E93: $44
    ld c, a                                       ; $6E94: $4F
    ld h, h                                       ; $6E95: $64
    ld a, [c]                                     ; $6E96: $F2

jr_01C_6E97:
    ld b, l                                       ; $6E97: $45
    ld l, c                                       ; $6E98: $69
    rst $30                                       ; $6E99: $F7

jr_01C_6E9A:
    ld b, l                                       ; $6E9A: $45
    ld h, [hl]                                    ; $6E9B: $66
    ret nz                                        ; $6E9C: $C0

    ld e, h                                       ; $6E9D: $5C

jr_01C_6E9E:
    ld hl, $0005                                  ; $6E9E: $21 $05 $00
    add c                                         ; $6EA1: $81
    ld e, l                                       ; $6EA2: $5D
    inc b                                         ; $6EA3: $04
    inc bc                                        ; $6EA4: $03
    ld [hl+], a                                   ; $6EA5: $22
    ret nc                                        ; $6EA6: $D0

    nop                                           ; $6EA7: $00
    jr nz, jr_01C_6E55                            ; $6EA8: $20 $AB

    ld d, b                                       ; $6EAA: $50
    ld [hl+], a                                   ; $6EAB: $22
    dec b                                         ; $6EAC: $05
    ld b, b                                       ; $6EAD: $40
    dec b                                         ; $6EAE: $05
    ld [bc], a                                    ; $6EAF: $02
    db $ED                                        ; $6EB0: $ED
    ld h, e                                       ; $6EB1: $63

jr_01C_6EB2:
    inc b                                         ; $6EB2: $04
    inc b                                         ; $6EB3: $04

jr_01C_6EB4:
    inc l                                         ; $6EB4: $2C
    ret nc                                        ; $6EB5: $D0

    nop                                           ; $6EB6: $00
    rrca                                          ; $6EB7: $0F
    ld c, a                                       ; $6EB8: $4F
    ld l, d                                       ; $6EB9: $6A
    inc e                                         ; $6EBA: $1C
    rst $10                                       ; $6EBB: $D7
    ld l, [hl]                                    ; $6EBC: $6E
    ld l, e                                       ; $6EBD: $6B
    jr nc, jr_01C_6ECB                            ; $6EBE: $30 $0B

    db $10                                        ; $6EC0: $10
    ld h, a                                       ; $6EC1: $67
    nop                                           ; $6EC2: $00
    add b                                         ; $6EC3: $80
    nop                                           ; $6EC4: $00
    dec bc                                        ; $6EC5: $0B
    nop                                           ; $6EC6: $00
    ld b, e                                       ; $6EC7: $43
    db $10                                        ; $6EC8: $10
    inc b                                         ; $6EC9: $04
    dec b                                         ; $6ECA: $05

jr_01C_6ECB:
    rlca                                          ; $6ECB: $07
    inc e                                         ; $6ECC: $1C
    pop de                                        ; $6ECD: $D1
    ld l, [hl]                                    ; $6ECE: $6E
    dec bc                                        ; $6ECF: $0B

jr_01C_6ED0:
    ld [bc], a                                    ; $6ED0: $02
    nop                                           ; $6ED1: $00
    add d                                         ; $6ED2: $82
    rra                                           ; $6ED3: $1F
    dec d                                         ; $6ED4: $15
    sub h                                         ; $6ED5: $94
    ld b, d                                       ; $6ED6: $42
    inc d                                         ; $6ED7: $14
    rrca                                          ; $6ED8: $0F
    ld c, a                                       ; $6ED9: $4F
    ld l, d                                       ; $6EDA: $6A
    ld b, e                                       ; $6EDB: $43
    ld de, $2401                                  ; $6EDC: $11 $01 $24
    and d                                         ; $6EDF: $A2
    dec b                                         ; $6EE0: $05
    nop                                           ; $6EE1: $00
    inc e                                         ; $6EE2: $1C
    ld bc, $436F                                  ; $6EE3: $01 $6F $43
    nop                                           ; $6EE6: $00
    dec h                                         ; $6EE7: $25
    and c                                         ; $6EE8: $A1
    ld bc, $F91C                                  ; $6EE9: $01 $1C $F9
    ld l, [hl]                                    ; $6EEC: $6E
    xor a                                         ; $6EED: $AF
    dec h                                         ; $6EEE: $25
    and c                                         ; $6EEF: $A1
    ld bc, $1C5B                                  ; $6EF0: $01 $5B $1C
    call nz, Call_01C_4569                        ; $6EF3: $C4 $69 $45
    rrca                                          ; $6EF6: $0F
    ld e, c                                       ; $6EF7: $59
    ld l, d                                       ; $6EF8: $6A
    ld e, e                                       ; $6EF9: $5B
    inc e                                         ; $6EFA: $1C
    ld d, b                                       ; $6EFB: $50
    ld l, [hl]                                    ; $6EFC: $6E
    ld b, l                                       ; $6EFD: $45
    rrca                                          ; $6EFE: $0F
    ld e, c                                       ; $6EFF: $59
    ld l, d                                       ; $6F00: $6A
    ld e, e                                       ; $6F01: $5B
    inc e                                         ; $6F02: $1C
    ld a, l                                       ; $6F03: $7D
    ld l, [hl]                                    ; $6F04: $6E
    ld b, l                                       ; $6F05: $45
    rrca                                          ; $6F06: $0F
    ld e, c                                       ; $6F07: $59
    ld l, d                                       ; $6F08: $6A
    ld [bc], a                                    ; $6F09: $02
    ld b, $0D                                     ; $6F0A: $06 $0D
    add hl, bc                                    ; $6F0C: $09
    inc l                                         ; $6F0D: $2C
    ld b, l                                       ; $6F0E: $45
    ld [hl+], a                                   ; $6F0F: $22
    ld e, [hl]                                    ; $6F10: $5E
    ld e, c                                       ; $6F11: $59
    ld bc, $0A15                                  ; $6F12: $01 $15 $0A
    ld b, l                                       ; $6F15: $45
    cpl                                           ; $6F16: $2F
    adc a                                         ; $6F17: $8F
    ld b, l                                       ; $6F18: $45
    sbc a                                         ; $6F19: $9F
    ld b, c                                       ; $6F1A: $41
    ld h, e                                       ; $6F1B: $63
    ld h, e                                       ; $6F1C: $63
    ld l, a                                       ; $6F1D: $6F
    ld [hl], d                                    ; $6F1E: $72
    ld h, h                                       ; $6F1F: $64
    ld l, c                                       ; $6F20: $69
    ld l, [hl]                                    ; $6F21: $6E
    ld h, a                                       ; $6F22: $67
    jr nz, jr_01C_6F99                            ; $6F23: $20 $74

    ld l, a                                       ; $6F25: $6F
    rst $38                                       ; $6F26: $FF
    ld l, l                                       ; $6F27: $6D
    ld a, c                                       ; $6F28: $79
    ld [hl], h                                    ; $6F29: $74
    ld l, b                                       ; $6F2A: $68
    inc l                                         ; $6F2B: $2C
    jr nz, jr_01C_6FA2                            ; $6F2C: $20 $74

    ld l, b                                       ; $6F2E: $68
    ld h, l                                       ; $6F2F: $65
    cp $77                                        ; $6F30: $FE $77
    ld l, a                                       ; $6F32: $6F
    ld [hl], d                                    ; $6F33: $72
    ld l, h                                       ; $6F34: $6C
    ld h, h                                       ; $6F35: $64
    jr nz, jr_01C_6F99                            ; $6F36: $20 $61

    ld h, d                                       ; $6F38: $62
    ld l, a                                       ; $6F39: $6F
    halt                                          ; $6F3A: $76
    ld h, l                                       ; $6F3B: $65
    jr nz, @+$6B                                  ; $6F3C: $20 $69

    ld [hl], e                                    ; $6F3E: $73
    rst $38                                       ; $6F3F: $FF
    ld l, c                                       ; $6F40: $69
    ld l, [hl]                                    ; $6F41: $6E
    ld l, b                                       ; $6F42: $68
    ld h, c                                       ; $6F43: $61
    ld h, d                                       ; $6F44: $62
    ld l, c                                       ; $6F45: $69
    ld [hl], h                                    ; $6F46: $74
    ld h, l                                       ; $6F47: $65
    ld h, h                                       ; $6F48: $64
    jr nz, jr_01C_6FAD                            ; $6F49: $20 $62

    ld a, c                                       ; $6F4B: $79
    cp $70                                        ; $6F4C: $FE $70
    ld h, l                                       ; $6F4E: $65
    ld l, a                                       ; $6F4F: $6F
    ld [hl], b                                    ; $6F50: $70
    ld l, h                                       ; $6F51: $6C
    ld h, l                                       ; $6F52: $65
    jr nz, jr_01C_6FC8                            ; $6F53: $20 $73

    ld l, b                                       ; $6F55: $68
    ld h, c                                       ; $6F56: $61
    ld [hl], b                                    ; $6F57: $70
    ld h, l                                       ; $6F58: $65
    ld h, h                                       ; $6F59: $64
    rst $38                                       ; $6F5A: $FF
    ld l, h                                       ; $6F5B: $6C
    ld l, c                                       ; $6F5C: $69
    ld l, e                                       ; $6F5D: $6B
    ld h, l                                       ; $6F5E: $65
    jr nz, jr_01C_6FC8                            ; $6F5F: $20 $67

    ld l, c                                       ; $6F61: $69
    ld h, c                                       ; $6F62: $61
    ld l, [hl]                                    ; $6F63: $6E
    ld [hl], h                                    ; $6F64: $74
    jr nz, jr_01C_6FCD                            ; $6F65: $20 $66

    ld h, l                                       ; $6F67: $65
    ld h, l                                       ; $6F68: $65
    ld [hl], h                                    ; $6F69: $74
    cp $77                                        ; $6F6A: $FE $77
    ld l, b                                       ; $6F6C: $68
    ld l, a                                       ; $6F6D: $6F
    jr nz, jr_01C_6FE3                            ; $6F6E: $20 $73

    ld [hl], h                                    ; $6F70: $74
    ld l, a                                       ; $6F71: $6F
    ld l, l                                       ; $6F72: $6D
    ld [hl], b                                    ; $6F73: $70
    jr nz, jr_01C_6FD8                            ; $6F74: $20 $62

    ld h, c                                       ; $6F76: $61
    ld h, e                                       ; $6F77: $63
    ld l, e                                       ; $6F78: $6B
    rst $38                                       ; $6F79: $FF
    ld h, c                                       ; $6F7A: $61
    ld l, [hl]                                    ; $6F7B: $6E
    ld h, h                                       ; $6F7C: $64
    jr nz, jr_01C_6FE5                            ; $6F7D: $20 $66

    ld l, a                                       ; $6F7F: $6F
    ld [hl], d                                    ; $6F80: $72
    ld [hl], h                                    ; $6F81: $74
    ld l, b                                       ; $6F82: $68
    jr nz, jr_01C_6FF9                            ; $6F83: $20 $74

    ld l, a                                       ; $6F85: $6F
    cp $67                                        ; $6F86: $FE $67
    ld h, c                                       ; $6F88: $61
    ld [hl], h                                    ; $6F89: $74
    ld l, b                                       ; $6F8A: $68
    ld h, l                                       ; $6F8B: $65
    ld [hl], d                                    ; $6F8C: $72
    rst $38                                       ; $6F8D: $FF
    ld l, [hl]                                    ; $6F8E: $6E
    ld [hl], l                                    ; $6F8F: $75
    ld [hl], h                                    ; $6F90: $74
    ld [hl], d                                    ; $6F91: $72
    ld l, c                                       ; $6F92: $69
    ld h, l                                       ; $6F93: $65
    ld l, [hl]                                    ; $6F94: $6E
    ld [hl], h                                    ; $6F95: $74
    ld [hl], e                                    ; $6F96: $73
    ld l, $FE                                     ; $6F97: $2E $FE

jr_01C_6F99:
    db $FD                                        ; $6F99: $FD
    sbc d                                         ; $6F9A: $9A
    ld b, d                                       ; $6F9B: $42
    sbc a                                         ; $6F9C: $9F
    ld c, h                                       ; $6F9D: $4C
    ld h, l                                       ; $6F9E: $65
    ld h, a                                       ; $6F9F: $67
    ld h, l                                       ; $6FA0: $65
    ld l, [hl]                                    ; $6FA1: $6E

jr_01C_6FA2:
    ld h, h                                       ; $6FA2: $64
    jr nz, jr_01C_7014                            ; $6FA3: $20 $6F

    ld h, [hl]                                    ; $6FA5: $66
    jr nz, @+$76                                  ; $6FA6: $20 $74

    ld l, b                                       ; $6FA8: $68
    ld h, l                                       ; $6FA9: $65
    rst $38                                       ; $6FAA: $FF
    ld b, a                                       ; $6FAB: $47
    ld [hl], d                                    ; $6FAC: $72

jr_01C_6FAD:
    ld h, l                                       ; $6FAD: $65
    ld h, c                                       ; $6FAE: $61
    ld [hl], h                                    ; $6FAF: $74
    jr nz, @+$48                                  ; $6FB0: $20 $46

    ld l, c                                       ; $6FB2: $69
    ld [hl], d                                    ; $6FB3: $72
    ld h, l                                       ; $6FB4: $65
    ld h, d                                       ; $6FB5: $62
    ld h, c                                       ; $6FB6: $61
    ld l, h                                       ; $6FB7: $6C
    ld l, h                                       ; $6FB8: $6C
    ld a, [hl-]                                   ; $6FB9: $3A
    cp $41                                        ; $6FBA: $FE $41
    jr nz, jr_01C_7026                            ; $6FBC: $20 $68

    ld l, a                                       ; $6FBE: $6F
    ld [hl], d                                    ; $6FBF: $72
    ld [hl], d                                    ; $6FC0: $72
    ld l, c                                       ; $6FC1: $69
    ld h, [hl]                                    ; $6FC2: $66
    ld l, c                                       ; $6FC3: $69
    ld h, e                                       ; $6FC4: $63
    rst $38                                       ; $6FC5: $FF
    ld [hl], h                                    ; $6FC6: $74
    ld h, c                                       ; $6FC7: $61

jr_01C_6FC8:
    ld l, h                                       ; $6FC8: $6C
    ld h, l                                       ; $6FC9: $65
    jr nz, jr_01C_703B                            ; $6FCA: $20 $6F

    ld h, [hl]                                    ; $6FCC: $66

jr_01C_6FCD:
    jr nz, jr_01C_7043                            ; $6FCD: $20 $74

    ld l, b                                       ; $6FCF: $68
    ld h, l                                       ; $6FD0: $65
    cp $73                                        ; $6FD1: $FE $73
    ld [hl], b                                    ; $6FD3: $70
    ld l, b                                       ; $6FD4: $68
    ld h, l                                       ; $6FD5: $65
    ld [hl], d                                    ; $6FD6: $72
    ld h, l                                       ; $6FD7: $65

jr_01C_6FD8:
    jr nz, jr_01C_7049                            ; $6FD8: $20 $6F

    ld h, [hl]                                    ; $6FDA: $66
    jr nz, jr_01C_7049                            ; $6FDB: $20 $6C

    ld l, c                                       ; $6FDD: $69
    ld h, a                                       ; $6FDE: $67
    ld l, b                                       ; $6FDF: $68
    ld [hl], h                                    ; $6FE0: $74
    rst $38                                       ; $6FE1: $FF
    ld [hl], h                                    ; $6FE2: $74

jr_01C_6FE3:
    ld l, b                                       ; $6FE3: $68
    ld h, c                                       ; $6FE4: $61

jr_01C_6FE5:
    ld [hl], h                                    ; $6FE5: $74
    jr nz, jr_01C_705C                            ; $6FE6: $20 $74

    ld l, a                                       ; $6FE8: $6F
    ld [hl], d                                    ; $6FE9: $72
    ld l, l                                       ; $6FEA: $6D
    ld h, l                                       ; $6FEB: $65
    ld l, [hl]                                    ; $6FEC: $6E
    ld [hl], h                                    ; $6FED: $74
    ld [hl], e                                    ; $6FEE: $73
    cp $61                                        ; $6FEF: $FE $61
    ld l, h                                       ; $6FF1: $6C
    ld l, h                                       ; $6FF2: $6C
    jr nz, jr_01C_706C                            ; $6FF3: $20 $77

    ld l, b                                       ; $6FF5: $68
    ld l, a                                       ; $6FF6: $6F
    jr nz, jr_01C_705D                            ; $6FF7: $20 $64

jr_01C_6FF9:
    ld [hl], a                                    ; $6FF9: $77
    ld h, l                                       ; $6FFA: $65
    ld l, h                                       ; $6FFB: $6C
    ld l, h                                       ; $6FFC: $6C
    rst $38                                       ; $6FFD: $FF
    ld h, c                                       ; $6FFE: $61
    ld h, d                                       ; $6FFF: $62
    ld l, a                                       ; $7000: $6F
    halt                                          ; $7001: $76
    ld h, l                                       ; $7002: $65
    ld l, $FE                                     ; $7003: $2E $FE
    ld b, d                                       ; $7005: $42
    ld h, l                                       ; $7006: $65
    ld [hl], a                                    ; $7007: $77
    ld h, c                                       ; $7008: $61
    ld [hl], d                                    ; $7009: $72
    ld h, l                                       ; $700A: $65
    ld hl, $FDFE                                  ; $700B: $21 $FE $FD
    sbc d                                         ; $700E: $9A
    ld b, d                                       ; $700F: $42
    sbc e                                         ; $7010: $9B
    ld a, b                                       ; $7011: $78
    ld [hl], b                                    ; $7012: $70
    sbc a                                         ; $7013: $9F

jr_01C_7014:
    ld b, c                                       ; $7014: $41
    ld l, [hl]                                    ; $7015: $6E
    ld l, a                                       ; $7016: $6F
    ld [hl], h                                    ; $7017: $74
    ld l, b                                       ; $7018: $68
    ld h, l                                       ; $7019: $65
    ld [hl], d                                    ; $701A: $72
    jr nz, @+$65                                  ; $701B: $20 $63

    ld l, a                                       ; $701D: $6F
    ld l, l                                       ; $701E: $6D
    ld h, [hl]                                    ; $701F: $66
    ld a, c                                       ; $7020: $79
    rst $38                                       ; $7021: $FF
    ld h, e                                       ; $7022: $63
    ld l, b                                       ; $7023: $68
    ld h, c                                       ; $7024: $61
    ld l, c                                       ; $7025: $69

jr_01C_7026:
    ld [hl], d                                    ; $7026: $72
    ld l, $FE                                     ; $7027: $2E $FE
    ld d, h                                       ; $7029: $54
    ld l, b                                       ; $702A: $68
    ld h, l                                       ; $702B: $65
    ld a, c                                       ; $702C: $79
    jr nz, jr_01C_70A1                            ; $702D: $20 $72

    ld h, l                                       ; $702F: $65
    ld h, c                                       ; $7030: $61
    ld l, h                                       ; $7031: $6C
    ld l, h                                       ; $7032: $6C
    ld a, c                                       ; $7033: $79
    rst $38                                       ; $7034: $FF
    ld l, e                                       ; $7035: $6B
    ld l, [hl]                                    ; $7036: $6E
    ld l, a                                       ; $7037: $6F
    ld [hl], a                                    ; $7038: $77
    jr nz, jr_01C_70A3                            ; $7039: $20 $68

jr_01C_703B:
    ld l, a                                       ; $703B: $6F
    ld [hl], a                                    ; $703C: $77
    jr nz, jr_01C_70B3                            ; $703D: $20 $74

    ld l, a                                       ; $703F: $6F
    jr nz, jr_01C_70B5                            ; $7040: $20 $73

    ld l, c                                       ; $7042: $69

jr_01C_7043:
    ld [hl], h                                    ; $7043: $74
    cp $69                                        ; $7044: $FE $69
    ld l, [hl]                                    ; $7046: $6E
    jr nz, jr_01C_70BC                            ; $7047: $20 $73

jr_01C_7049:
    ld [hl], h                                    ; $7049: $74
    ld a, c                                       ; $704A: $79
    ld l, h                                       ; $704B: $6C
    ld h, l                                       ; $704C: $65
    jr nz, jr_01C_70B3                            ; $704D: $20 $64

    ld l, a                                       ; $704F: $6F
    ld [hl], a                                    ; $7050: $77
    ld l, [hl]                                    ; $7051: $6E
    rst $38                                       ; $7052: $FF
    ld l, b                                       ; $7053: $68
    ld h, l                                       ; $7054: $65
    ld [hl], d                                    ; $7055: $72
    ld h, l                                       ; $7056: $65
    ld hl, $FDFE                                  ; $7057: $21 $FE $FD
    sbc d                                         ; $705A: $9A
    ld b, d                                       ; $705B: $42

jr_01C_705C:
    sbc e                                         ; $705C: $9B

jr_01C_705D:
    ld a, b                                       ; $705D: $78
    ld [hl], b                                    ; $705E: $70
    sbc a                                         ; $705F: $9F
    ld c, l                                       ; $7060: $4D
    ld h, c                                       ; $7061: $61
    ld a, c                                       ; $7062: $79
    ld h, d                                       ; $7063: $62
    ld h, l                                       ; $7064: $65
    jr nz, @+$76                                  ; $7065: $20 $74

    ld l, b                                       ; $7067: $68
    ld h, l                                       ; $7068: $65
    jr nz, jr_01C_70CD                            ; $7069: $20 $62

    ld h, l                                       ; $706B: $65

jr_01C_706C:
    ld h, h                                       ; $706C: $64
    ld [hl], e                                    ; $706D: $73
    rst $38                                       ; $706E: $FF
    ld h, c                                       ; $706F: $61
    ld [hl], d                                    ; $7070: $72
    ld h, l                                       ; $7071: $65
    jr nz, jr_01C_70E7                            ; $7072: $20 $73

    ld h, l                                       ; $7074: $65
    ld h, l                                       ; $7075: $65
    ld h, h                                       ; $7076: $64
    ld [hl], e                                    ; $7077: $73
    jr nz, jr_01C_70E9                            ; $7078: $20 $6F

    ld h, [hl]                                    ; $707A: $66
    cp $74                                        ; $707B: $FE $74
    ld l, b                                       ; $707D: $68
    ld h, l                                       ; $707E: $65
    jr nz, jr_01C_70E9                            ; $707F: $20 $68

    ld l, a                                       ; $7081: $6F
    ld [hl], l                                    ; $7082: $75
    ld [hl], e                                    ; $7083: $73
    ld h, l                                       ; $7084: $65
    ld [hl], e                                    ; $7085: $73
    ld l, $2E                                     ; $7086: $2E $2E
    ld l, $FE                                     ; $7088: $2E $FE
    ld c, a                                       ; $708A: $4F
    ld l, [hl]                                    ; $708B: $6E
    ld h, l                                       ; $708C: $65
    jr nz, @+$66                                  ; $708D: $20 $64

    ld h, c                                       ; $708F: $61
    ld a, c                                       ; $7090: $79
    jr nz, jr_01C_7107                            ; $7091: $20 $74

    ld l, b                                       ; $7093: $68
    ld l, c                                       ; $7094: $69
    ld [hl], e                                    ; $7095: $73
    rst $38                                       ; $7096: $FF
    ld h, d                                       ; $7097: $62
    ld h, l                                       ; $7098: $65
    ld h, h                                       ; $7099: $64
    jr nz, jr_01C_7113                            ; $709A: $20 $77

    ld l, c                                       ; $709C: $69
    ld l, h                                       ; $709D: $6C
    ld l, h                                       ; $709E: $6C
    jr nz, jr_01C_7108                            ; $709F: $20 $67

jr_01C_70A1:
    ld [hl], d                                    ; $70A1: $72
    ld l, a                                       ; $70A2: $6F

jr_01C_70A3:
    ld [hl], a                                    ; $70A3: $77
    cp $75                                        ; $70A4: $FE $75
    ld [hl], b                                    ; $70A6: $70
    jr nz, jr_01C_711D                            ; $70A7: $20 $74

    ld l, a                                       ; $70A9: $6F
    jr nz, jr_01C_710E                            ; $70AA: $20 $62

    ld h, l                                       ; $70AC: $65
    jr nz, jr_01C_7110                            ; $70AD: $20 $61

    rst $38                                       ; $70AF: $FF
    ld l, b                                       ; $70B0: $68
    ld l, a                                       ; $70B1: $6F
    ld [hl], l                                    ; $70B2: $75

jr_01C_70B3:
    ld [hl], e                                    ; $70B3: $73
    ld h, l                                       ; $70B4: $65

jr_01C_70B5:
    ld l, $FE                                     ; $70B5: $2E $FE
    ld e, c                                       ; $70B7: $59
    ld h, l                                       ; $70B8: $65
    ld [hl], e                                    ; $70B9: $73
    jr nz, jr_01C_7135                            ; $70BA: $20 $79

jr_01C_70BC:
    ld l, a                                       ; $70BC: $6F
    ld [hl], l                                    ; $70BD: $75
    jr nz, jr_01C_7137                            ; $70BE: $20 $77

    ld l, c                                       ; $70C0: $69
    ld l, h                                       ; $70C1: $6C
    ld l, h                                       ; $70C2: $6C
    ld hl, $FDFE                                  ; $70C3: $21 $FE $FD
    sbc d                                         ; $70C6: $9A
    ld b, d                                       ; $70C7: $42
    sbc e                                         ; $70C8: $9B
    ld a, b                                       ; $70C9: $78
    ld [hl], b                                    ; $70CA: $70
    sbc a                                         ; $70CB: $9F
    ld b, c                                       ; $70CC: $41

jr_01C_70CD:
    ld l, [hl]                                    ; $70CD: $6E
    ld l, a                                       ; $70CE: $6F
    ld [hl], h                                    ; $70CF: $74
    ld l, b                                       ; $70D0: $68
    ld h, l                                       ; $70D1: $65
    ld [hl], d                                    ; $70D2: $72
    jr nz, jr_01C_7137                            ; $70D3: $20 $62

    ld l, c                                       ; $70D5: $69
    ld l, [hl]                                    ; $70D6: $6E
    rst $38                                       ; $70D7: $FF
    ld l, a                                       ; $70D8: $6F
    ld h, [hl]                                    ; $70D9: $66
    jr nz, jr_01C_7140                            ; $70DA: $20 $64

    ld h, l                                       ; $70DC: $65
    ld h, c                                       ; $70DD: $61
    ld l, h                                       ; $70DE: $6C
    ld [hl], e                                    ; $70DF: $73
    ld l, $FE                                     ; $70E0: $2E $FE
    db $FD                                        ; $70E2: $FD
    sbc d                                         ; $70E3: $9A
    ld b, d                                       ; $70E4: $42
    sbc a                                         ; $70E5: $9F
    ld d, b                                       ; $70E6: $50

jr_01C_70E7:
    ld h, c                                       ; $70E7: $61
    ld [hl], d                                    ; $70E8: $72

jr_01C_70E9:
    ld h, c                                       ; $70E9: $61
    ld h, h                                       ; $70EA: $64
    ld [hl], a                                    ; $70EB: $77
    ld a, c                                       ; $70EC: $79
    ld l, [hl]                                    ; $70ED: $6E
    rst $38                                       ; $70EE: $FF
    ld h, c                                       ; $70EF: $61
    ld l, [hl]                                    ; $70F0: $6E
    ld h, h                                       ; $70F1: $64
    jr nz, jr_01C_7143                            ; $70F2: $20 $4F

    ld [hl], h                                    ; $70F4: $74
    ld l, b                                       ; $70F5: $68
    ld h, l                                       ; $70F6: $65
    ld [hl], d                                    ; $70F7: $72
    cp $52                                        ; $70F8: $FE $52
    ld h, l                                       ; $70FA: $65
    ld h, a                                       ; $70FB: $67
    ld l, c                                       ; $70FC: $69
    ld l, a                                       ; $70FD: $6F
    ld l, [hl]                                    ; $70FE: $6E
    ld [hl], e                                    ; $70FF: $73
    jr nz, jr_01C_715B                            ; $7100: $20 $59

    ld l, a                                       ; $7102: $6F
    ld [hl], l                                    ; $7103: $75
    rst $38                                       ; $7104: $FF
    ld b, e                                       ; $7105: $43
    ld h, c                                       ; $7106: $61

jr_01C_7107:
    ld l, [hl]                                    ; $7107: $6E

jr_01C_7108:
    daa                                           ; $7108: $27
    ld [hl], h                                    ; $7109: $74
    jr nz, jr_01C_714D                            ; $710A: $20 $41

    ld h, [hl]                                    ; $710C: $66
    ld h, [hl]                                    ; $710D: $66

jr_01C_710E:
    ld l, a                                       ; $710E: $6F
    ld [hl], d                                    ; $710F: $72

jr_01C_7110:
    ld h, h                                       ; $7110: $64
    cp $61                                        ; $7111: $FE $61

jr_01C_7113:
    jr nz, jr_01C_7169                            ; $7113: $20 $54

    ld l, c                                       ; $7115: $69
    ld h, e                                       ; $7116: $63
    ld l, e                                       ; $7117: $6B
    ld h, l                                       ; $7118: $65
    ld [hl], h                                    ; $7119: $74
    jr nz, @+$56                                  ; $711A: $20 $54

    ld l, a                                       ; $711C: $6F

jr_01C_711D:
    cp $FD                                        ; $711D: $FE $FD
    sbc d                                         ; $711F: $9A
    ld b, d                                       ; $7120: $42
    sbc a                                         ; $7121: $9F
    ld c, c                                       ; $7122: $49
    ld l, [hl]                                    ; $7123: $6E
    jr nz, jr_01C_719A                            ; $7124: $20 $74

    ld l, b                                       ; $7126: $68
    ld h, l                                       ; $7127: $65
    jr nz, @+$44                                  ; $7128: $20 $42

    ld h, l                                       ; $712A: $65
    ld l, h                                       ; $712B: $6C
    ld l, h                                       ; $712C: $6C
    ld a, c                                       ; $712D: $79
    rst $38                                       ; $712E: $FF
    ld l, a                                       ; $712F: $6F
    ld h, [hl]                                    ; $7130: $66
    jr nz, jr_01C_71A7                            ; $7131: $20 $74

    ld l, b                                       ; $7133: $68
    ld h, l                                       ; $7134: $65

jr_01C_7135:
    jr nz, @+$44                                  ; $7135: $20 $42

jr_01C_7137:
    ld h, l                                       ; $7137: $65
    ld h, c                                       ; $7138: $61
    ld [hl], e                                    ; $7139: $73
    ld [hl], h                                    ; $713A: $74
    ld a, [hl-]                                   ; $713B: $3A
    cp $54                                        ; $713C: $FE $54
    ld l, b                                       ; $713E: $68
    ld h, l                                       ; $713F: $65

jr_01C_7140:
    jr nz, jr_01C_71AA                            ; $7140: $20 $68

    ld l, a                                       ; $7142: $6F

jr_01C_7143:
    ld [hl], d                                    ; $7143: $72
    ld [hl], d                                    ; $7144: $72
    ld l, c                                       ; $7145: $69
    ld h, d                                       ; $7146: $62
    ld l, h                                       ; $7147: $6C
    ld h, l                                       ; $7148: $65
    rst $38                                       ; $7149: $FF
    ld [hl], h                                    ; $714A: $74
    ld [hl], d                                    ; $714B: $72
    ld [hl], l                                    ; $714C: $75

jr_01C_714D:
    ld [hl], h                                    ; $714D: $74
    ld l, b                                       ; $714E: $68
    jr nz, jr_01C_71B2                            ; $714F: $20 $61

    ld h, d                                       ; $7151: $62
    ld l, a                                       ; $7152: $6F
    ld [hl], l                                    ; $7153: $75
    ld [hl], h                                    ; $7154: $74
    cp $74                                        ; $7155: $FE $74
    ld l, b                                       ; $7157: $68
    ld h, l                                       ; $7158: $65
    jr nz, @+$45                                  ; $7159: $20 $43

jr_01C_715B:
    ld h, c                                       ; $715B: $61
    ld l, h                                       ; $715C: $6C
    ld h, h                                       ; $715D: $64
    cp $FD                                        ; $715E: $FE $FD
    sbc d                                         ; $7160: $9A
    ld b, d                                       ; $7161: $42
    sbc e                                         ; $7162: $9B
    ld a, b                                       ; $7163: $78
    ld [hl], b                                    ; $7164: $70
    sbc a                                         ; $7165: $9F
    ld d, h                                       ; $7166: $54
    ld l, b                                       ; $7167: $68
    ld h, l                                       ; $7168: $65

jr_01C_7169:
    ld [hl], d                                    ; $7169: $72
    ld h, l                                       ; $716A: $65
    jr nz, jr_01C_71CE                            ; $716B: $20 $61

    ld [hl], d                                    ; $716D: $72
    ld h, l                                       ; $716E: $65
    jr nz, jr_01C_71E8                            ; $716F: $20 $77

    ld l, c                                       ; $7171: $69
    ld [hl], e                                    ; $7172: $73
    ld [hl], b                                    ; $7173: $70
    ld [hl], e                                    ; $7174: $73
    rst $38                                       ; $7175: $FF
    ld l, a                                       ; $7176: $6F
    ld h, [hl]                                    ; $7177: $66
    jr nz, jr_01C_71ED                            ; $7178: $20 $73

    ld [hl], h                                    ; $717A: $74
    ld h, l                                       ; $717B: $65
    ld h, c                                       ; $717C: $61
    ld l, l                                       ; $717D: $6D
    jr nz, jr_01C_71F2                            ; $717E: $20 $72

    ld l, c                                       ; $7180: $69
    ld [hl], e                                    ; $7181: $73
    ld l, c                                       ; $7182: $69
    ld l, [hl]                                    ; $7183: $6E
    ld h, a                                       ; $7184: $67
    cp $66                                        ; $7185: $FE $66
    ld [hl], d                                    ; $7187: $72
    ld l, a                                       ; $7188: $6F
    ld l, l                                       ; $7189: $6D
    jr nz, jr_01C_7200                            ; $718A: $20 $74

    ld l, b                                       ; $718C: $68
    ld l, c                                       ; $718D: $69
    ld [hl], e                                    ; $718E: $73
    rst $38                                       ; $718F: $FF
    ld h, e                                       ; $7190: $63
    ld l, b                                       ; $7191: $68
    ld h, c                                       ; $7192: $61
    ld l, c                                       ; $7193: $69
    ld [hl], d                                    ; $7194: $72
    ld l, $2E                                     ; $7195: $2E $2E
    ld l, $FE                                     ; $7197: $2E $FE
    ld c, c                                       ; $7199: $49

jr_01C_719A:
    ld [hl], h                                    ; $719A: $74
    daa                                           ; $719B: $27
    ld [hl], e                                    ; $719C: $73
    jr nz, jr_01C_7200                            ; $719D: $20 $61

    ld h, e                                       ; $719F: $63
    ld [hl], h                                    ; $71A0: $74
    ld [hl], l                                    ; $71A1: $75
    ld h, c                                       ; $71A2: $61
    ld l, h                                       ; $71A3: $6C
    ld l, h                                       ; $71A4: $6C
    ld a, c                                       ; $71A5: $79
    rst $38                                       ; $71A6: $FF

jr_01C_71A7:
    ld h, d                                       ; $71A7: $62
    ld l, a                                       ; $71A8: $6F
    ld l, c                                       ; $71A9: $69

jr_01C_71AA:
    ld l, h                                       ; $71AA: $6C
    ld l, c                                       ; $71AB: $69
    ld l, [hl]                                    ; $71AC: $6E
    ld h, a                                       ; $71AD: $67
    ld hl, $FDFE                                  ; $71AE: $21 $FE $FD
    sbc d                                         ; $71B1: $9A

jr_01C_71B2:
    ld b, d                                       ; $71B2: $42
    sbc e                                         ; $71B3: $9B
    ld a, b                                       ; $71B4: $78
    ld [hl], b                                    ; $71B5: $70
    sbc a                                         ; $71B6: $9F
    ld d, h                                       ; $71B7: $54
    ld l, b                                       ; $71B8: $68
    ld h, l                                       ; $71B9: $65
    jr nz, jr_01C_7224                            ; $71BA: $20 $68

    ld h, l                                       ; $71BC: $65
    ld h, c                                       ; $71BD: $61
    ld [hl], h                                    ; $71BE: $74
    jr nz, @+$6A                                  ; $71BF: $20 $68

    ld h, c                                       ; $71C1: $61
    ld [hl], e                                    ; $71C2: $73
    rst $38                                       ; $71C3: $FF
    ld h, h                                       ; $71C4: $64
    ld [hl], d                                    ; $71C5: $72
    ld l, c                                       ; $71C6: $69
    ld h, l                                       ; $71C7: $65
    ld h, h                                       ; $71C8: $64
    jr nz, jr_01C_7234                            ; $71C9: $20 $69

    ld [hl], h                                    ; $71CB: $74
    jr nz, jr_01C_723D                            ; $71CC: $20 $6F

jr_01C_71CE:
    ld [hl], l                                    ; $71CE: $75
    ld [hl], h                                    ; $71CF: $74
    cp $6C                                        ; $71D0: $FE $6C
    ld l, c                                       ; $71D2: $69
    ld l, e                                       ; $71D3: $6B
    ld h, l                                       ; $71D4: $65
    jr nz, jr_01C_7239                            ; $71D5: $20 $62

    ld [hl], l                                    ; $71D7: $75
    ld [hl], d                                    ; $71D8: $72
    ld l, [hl]                                    ; $71D9: $6E
    ld [hl], h                                    ; $71DA: $74
    rst $38                                       ; $71DB: $FF
    ld [hl], h                                    ; $71DC: $74
    ld l, a                                       ; $71DD: $6F
    ld h, c                                       ; $71DE: $61
    ld [hl], e                                    ; $71DF: $73
    ld [hl], h                                    ; $71E0: $74
    ld l, $FE                                     ; $71E1: $2E $FE
    db $FD                                        ; $71E3: $FD
    sbc d                                         ; $71E4: $9A
    ld b, d                                       ; $71E5: $42
    sbc e                                         ; $71E6: $9B
    ld a, b                                       ; $71E7: $78

jr_01C_71E8:
    ld [hl], b                                    ; $71E8: $70
    sbc a                                         ; $71E9: $9F
    ld d, l                                       ; $71EA: $55
    ld h, a                                       ; $71EB: $67
    ld l, b                                       ; $71EC: $68

jr_01C_71ED:
    ld hl, $53FE                                  ; $71ED: $21 $FE $53
    ld [hl], h                                    ; $71F0: $74
    ld l, c                                       ; $71F1: $69

jr_01C_71F2:
    ld h, e                                       ; $71F2: $63
    ld l, e                                       ; $71F3: $6B
    ld a, c                                       ; $71F4: $79
    inc l                                         ; $71F5: $2C
    jr nz, jr_01C_7265                            ; $71F6: $20 $6D

    ld h, l                                       ; $71F8: $65
    ld l, h                                       ; $71F9: $6C
    ld [hl], h                                    ; $71FA: $74
    ld h, l                                       ; $71FB: $65
    ld h, h                                       ; $71FC: $64
    rst $38                                       ; $71FD: $FF
    ld h, h                                       ; $71FE: $64
    ld h, l                                       ; $71FF: $65

jr_01C_7200:
    ld h, c                                       ; $7200: $61
    ld l, h                                       ; $7201: $6C
    ld [hl], e                                    ; $7202: $73
    ld l, $FE                                     ; $7203: $2E $FE
    db $FD                                        ; $7205: $FD
    sbc d                                         ; $7206: $9A
    ld b, d                                       ; $7207: $42
    sbc e                                         ; $7208: $9B
    cp b                                          ; $7209: $B8
    ld b, h                                       ; $720A: $44
    sbc a                                         ; $720B: $9F
    ld d, a                                       ; $720C: $57
    ld l, a                                       ; $720D: $6F
    ld [hl], l                                    ; $720E: $75
    ld l, h                                       ; $720F: $6C
    ld h, h                                       ; $7210: $64
    jr nz, jr_01C_728C                            ; $7211: $20 $79

    ld l, a                                       ; $7213: $6F
    ld [hl], l                                    ; $7214: $75
    rst $38                                       ; $7215: $FF
    ld l, h                                       ; $7216: $6C
    ld l, c                                       ; $7217: $69
    ld l, e                                       ; $7218: $6B
    ld h, l                                       ; $7219: $65
    jr nz, jr_01C_7290                            ; $721A: $20 $74

    ld l, a                                       ; $721C: $6F
    jr nz, jr_01C_728F                            ; $721D: $20 $70

    ld l, h                                       ; $721F: $6C
    ld h, c                                       ; $7220: $61
    ld a, c                                       ; $7221: $79
    cp $53                                        ; $7222: $FE $53

jr_01C_7224:
    ld h, e                                       ; $7224: $63
    ld [hl], d                                    ; $7225: $72
    ld [hl], l                                    ; $7226: $75
    ld h, d                                       ; $7227: $62
    jr nz, jr_01C_729E                            ; $7228: $20 $74

    ld l, b                                       ; $722A: $68
    ld h, l                                       ; $722B: $65
    jr nz, jr_01C_7270                            ; $722C: $20 $42

    ld [hl], d                                    ; $722E: $72
    ld [hl], l                                    ; $722F: $75
    ld h, d                                       ; $7230: $62
    ccf                                           ; $7231: $3F
    cp $49                                        ; $7232: $FE $49

jr_01C_7234:
    ld [hl], h                                    ; $7234: $74
    jr nz, jr_01C_72A6                            ; $7235: $20 $6F

    ld l, [hl]                                    ; $7237: $6E
    ld l, h                                       ; $7238: $6C

jr_01C_7239:
    ld a, c                                       ; $7239: $79
    jr nz, jr_01C_729F                            ; $723A: $20 $63

    ld l, a                                       ; $723C: $6F

jr_01C_723D:
    ld [hl], e                                    ; $723D: $73
    ld [hl], h                                    ; $723E: $74
    ld [hl], e                                    ; $723F: $73
    rst $38                                       ; $7240: $FF
    inc sp                                        ; $7241: $33
    jr nc, jr_01C_7264                            ; $7242: $30 $20

    ld b, c                                       ; $7244: $41
    ld l, [hl]                                    ; $7245: $6E
    ld l, c                                       ; $7246: $69
    ld l, l                                       ; $7247: $6D
    ld l, c                                       ; $7248: $69
    ld [hl], h                                    ; $7249: $74
    ld h, l                                       ; $724A: $65
    ld l, $FE                                     ; $724B: $2E $FE
    db $FD                                        ; $724D: $FD
    sbc c                                         ; $724E: $99
    sbc a                                         ; $724F: $9F
    jr nz, jr_01C_72AB                            ; $7250: $20 $59

    ld h, l                                       ; $7252: $65
    ld [hl], e                                    ; $7253: $73
    rst $38                                       ; $7254: $FF
    jr nz, jr_01C_72A5                            ; $7255: $20 $4E

    ld l, a                                       ; $7257: $6F
    db $FD                                        ; $7258: $FD
    sbc h                                         ; $7259: $9C
    ld [bc], a                                    ; $725A: $02
    inc e                                         ; $725B: $1C
    ld h, c                                       ; $725C: $61
    ld [hl], d                                    ; $725D: $72
    inc e                                         ; $725E: $1C
    ld e, l                                       ; $725F: $5D
    ld [hl], e                                    ; $7260: $73
    sbc c                                         ; $7261: $99
    sbc e                                         ; $7262: $9B
    cp b                                          ; $7263: $B8

jr_01C_7264:
    ld b, h                                       ; $7264: $44

jr_01C_7265:
    ld b, e                                       ; $7265: $43
    inc de                                        ; $7266: $13
    ld [bc], a                                    ; $7267: $02
    and l                                         ; $7268: $A5
    and e                                         ; $7269: $A3
    dec b                                         ; $726A: $05
    ld e, $1C                                     ; $726B: $1E $1C
    ld l, l                                       ; $726D: $6D
    ld [hl], e                                    ; $726E: $73
    sbc a                                         ; $726F: $9F

jr_01C_7270:
    ld b, h                                       ; $7270: $44
    ld l, a                                       ; $7271: $6F
    jr nz, @+$7B                                  ; $7272: $20 $79

    ld l, a                                       ; $7274: $6F
    ld [hl], l                                    ; $7275: $75
    jr nz, jr_01C_72E6                            ; $7276: $20 $6E

    ld h, l                                       ; $7278: $65
    ld h, l                                       ; $7279: $65
    ld h, h                                       ; $727A: $64
    rst $38                                       ; $727B: $FF
    ld [hl], h                                    ; $727C: $74
    ld l, a                                       ; $727D: $6F
    jr nz, jr_01C_72EB                            ; $727E: $20 $6B

    ld l, [hl]                                    ; $7280: $6E
    ld l, a                                       ; $7281: $6F
    ld [hl], a                                    ; $7282: $77
    jr nz, @+$6A                                  ; $7283: $20 $68

    ld l, a                                       ; $7285: $6F
    ld [hl], a                                    ; $7286: $77
    cp $74                                        ; $7287: $FE $74
    ld l, a                                       ; $7289: $6F
    jr nz, jr_01C_72FC                            ; $728A: $20 $70

jr_01C_728C:
    ld l, h                                       ; $728C: $6C
    ld h, c                                       ; $728D: $61
    ld a, c                                       ; $728E: $79

jr_01C_728F:
    ccf                                           ; $728F: $3F

jr_01C_7290:
    cp $FD                                        ; $7290: $FE $FD
    sbc c                                         ; $7292: $99
    sbc a                                         ; $7293: $9F
    jr nz, @+$50                                  ; $7294: $20 $4E

    ld l, a                                       ; $7296: $6F
    rst $38                                       ; $7297: $FF
    jr nz, jr_01C_72F3                            ; $7298: $20 $59

    ld h, l                                       ; $729A: $65
    ld [hl], e                                    ; $729B: $73
    db $FD                                        ; $729C: $FD
    sbc h                                         ; $729D: $9C

jr_01C_729E:
    ld [bc], a                                    ; $729E: $02

jr_01C_729F:
    inc e                                         ; $729F: $1C
    ld l, $73                                     ; $72A0: $2E $73
    inc e                                         ; $72A2: $1C
    and l                                         ; $72A3: $A5
    ld [hl], d                                    ; $72A4: $72

jr_01C_72A5:
    sbc e                                         ; $72A5: $9B

jr_01C_72A6:
    cp b                                          ; $72A6: $B8
    ld b, h                                       ; $72A7: $44
    sbc a                                         ; $72A8: $9F
    ld c, d                                       ; $72A9: $4A
    ld [hl], l                                    ; $72AA: $75

jr_01C_72AB:
    ld [hl], e                                    ; $72AB: $73
    ld [hl], h                                    ; $72AC: $74
    jr nz, jr_01C_7321                            ; $72AD: $20 $72

    ld [hl], l                                    ; $72AF: $75
    ld l, [hl]                                    ; $72B0: $6E
    jr nz, @+$71                                  ; $72B1: $20 $6F

    halt                                          ; $72B3: $76
    ld h, l                                       ; $72B4: $65
    ld [hl], d                                    ; $72B5: $72
    rst $38                                       ; $72B6: $FF
    ld [hl], h                                    ; $72B7: $74
    ld l, b                                       ; $72B8: $68
    ld h, l                                       ; $72B9: $65
    jr nz, jr_01C_731E                            ; $72BA: $20 $62

    ld [hl], d                                    ; $72BC: $72
    ld [hl], l                                    ; $72BD: $75
    ld h, d                                       ; $72BE: $62
    ld [hl], e                                    ; $72BF: $73
    jr nz, jr_01C_7323                            ; $72C0: $20 $61

    ld [hl], e                                    ; $72C2: $73
    cp $74                                        ; $72C3: $FE $74
    ld l, b                                       ; $72C5: $68
    ld h, l                                       ; $72C6: $65
    ld a, c                                       ; $72C7: $79
    jr nz, jr_01C_732B                            ; $72C8: $20 $61

    ld [hl], b                                    ; $72CA: $70
    ld [hl], b                                    ; $72CB: $70
    ld h, l                                       ; $72CC: $65
    ld h, c                                       ; $72CD: $61
    ld [hl], d                                    ; $72CE: $72
    jr nz, jr_01C_733A                            ; $72CF: $20 $69

    ld l, [hl]                                    ; $72D1: $6E
    rst $38                                       ; $72D2: $FF
    ld [hl], h                                    ; $72D3: $74
    ld l, b                                       ; $72D4: $68
    ld h, l                                       ; $72D5: $65
    jr nz, jr_01C_7340                            ; $72D6: $20 $68

    ld l, a                                       ; $72D8: $6F
    ld l, h                                       ; $72D9: $6C
    ld h, l                                       ; $72DA: $65
    ld [hl], e                                    ; $72DB: $73
    jr nz, jr_01C_7347                            ; $72DC: $20 $69

    ld l, [hl]                                    ; $72DE: $6E
    cp $74                                        ; $72DF: $FE $74
    ld l, b                                       ; $72E1: $68
    ld h, l                                       ; $72E2: $65
    jr nz, jr_01C_734B                            ; $72E3: $20 $66

    ld l, h                                       ; $72E5: $6C

jr_01C_72E6:
    ld l, a                                       ; $72E6: $6F
    ld l, a                                       ; $72E7: $6F
    ld [hl], d                                    ; $72E8: $72
    ld l, $FE                                     ; $72E9: $2E $FE

jr_01C_72EB:
    ld b, c                                       ; $72EB: $41
    jr nz, jr_01C_7350                            ; $72EC: $20 $62

    ld l, h                                       ; $72EE: $6C
    ld [hl], l                                    ; $72EF: $75
    ld h, l                                       ; $72F0: $65
    jr nz, @+$64                                  ; $72F1: $20 $62

jr_01C_72F3:
    ld [hl], d                                    ; $72F3: $72
    ld [hl], l                                    ; $72F4: $75
    ld h, d                                       ; $72F5: $62
    jr nz, jr_01C_7361                            ; $72F6: $20 $69

    ld [hl], e                                    ; $72F8: $73
    rst $38                                       ; $72F9: $FF
    ld [hl], a                                    ; $72FA: $77
    ld l, a                                       ; $72FB: $6F

jr_01C_72FC:
    ld [hl], d                                    ; $72FC: $72
    ld [hl], h                                    ; $72FD: $74
    ld l, b                                       ; $72FE: $68
    jr nz, jr_01C_7332                            ; $72FF: $20 $31

    jr nz, jr_01C_7373                            ; $7301: $20 $70

    ld l, a                                       ; $7303: $6F
    ld l, c                                       ; $7304: $69
    ld l, [hl]                                    ; $7305: $6E
    ld [hl], h                                    ; $7306: $74
    cp $61                                        ; $7307: $FE $61
    ld l, [hl]                                    ; $7309: $6E
    ld h, h                                       ; $730A: $64
    jr nz, jr_01C_736E                            ; $730B: $20 $61

    jr nz, jr_01C_7381                            ; $730D: $20 $72

    ld h, l                                       ; $730F: $65
    ld h, h                                       ; $7310: $64
    jr nz, jr_01C_7375                            ; $7311: $20 $62

    ld [hl], d                                    ; $7313: $72
    ld [hl], l                                    ; $7314: $75
    ld h, d                                       ; $7315: $62
    rst $38                                       ; $7316: $FF
    ld l, c                                       ; $7317: $69
    ld [hl], e                                    ; $7318: $73
    jr nz, jr_01C_7392                            ; $7319: $20 $77

    ld l, a                                       ; $731B: $6F
    ld [hl], d                                    ; $731C: $72
    ld [hl], h                                    ; $731D: $74

jr_01C_731E:
    ld l, b                                       ; $731E: $68
    jr nz, jr_01C_7356                            ; $731F: $20 $35

jr_01C_7321:
    cp $70                                        ; $7321: $FE $70

jr_01C_7323:
    ld l, a                                       ; $7323: $6F
    ld l, c                                       ; $7324: $69
    ld l, [hl]                                    ; $7325: $6E
    ld [hl], h                                    ; $7326: $74
    ld [hl], e                                    ; $7327: $73
    ld l, $FE                                     ; $7328: $2E $FE
    db $FD                                        ; $732A: $FD

jr_01C_732B:
    ld b, [hl]                                    ; $732B: $46
    ld h, c                                       ; $732C: $61
    ld [hl], d                                    ; $732D: $72
    sbc e                                         ; $732E: $9B
    cp b                                          ; $732F: $B8
    ld b, h                                       ; $7330: $44
    sbc a                                         ; $7331: $9F

jr_01C_7332:
    ld d, d                                       ; $7332: $52
    ld l, c                                       ; $7333: $69
    ld h, a                                       ; $7334: $67
    ld l, b                                       ; $7335: $68
    ld [hl], h                                    ; $7336: $74
    jr nz, jr_01C_73AD                            ; $7337: $20 $74

    ld l, b                                       ; $7339: $68

jr_01C_733A:
    ld l, c                                       ; $733A: $69
    ld [hl], e                                    ; $733B: $73
    rst $38                                       ; $733C: $FF
    ld [hl], a                                    ; $733D: $77
    ld h, c                                       ; $733E: $61
    ld a, c                                       ; $733F: $79

jr_01C_7340:
    ld l, $2E                                     ; $7340: $2E $2E
    ld l, $FE                                     ; $7342: $2E $FE
    db $FD                                        ; $7344: $FD
    sbc d                                         ; $7345: $9A
    and a                                         ; $7346: $A7

jr_01C_7347:
    and l                                         ; $7347: $A5
    and e                                         ; $7348: $A3
    inc c                                         ; $7349: $0C
    ld [bc], a                                    ; $734A: $02

jr_01C_734B:
    and l                                         ; $734B: $A5
    and e                                         ; $734C: $A3
    dec b                                         ; $734D: $05
    ld e, $6E                                     ; $734E: $1E $6E

jr_01C_7350:
    rrca                                          ; $7350: $0F
    rst $38                                       ; $7351: $FF
    ld a, a                                       ; $7352: $7F
    halt                                          ; $7353: $76
    jr nz, jr_01C_7365                            ; $7354: $20 $0F

jr_01C_7356:
    ld bc, $1009                                  ; $7356: $01 $09 $10
    ld b, l                                       ; $7359: $45
    inc e                                         ; $735A: $1C
    xor b                                         ; $735B: $A8
    ld a, c                                       ; $735C: $79
    sbc c                                         ; $735D: $99
    sbc e                                         ; $735E: $9B
    cp b                                          ; $735F: $B8
    ld b, h                                       ; $7360: $44

jr_01C_7361:
    sbc a                                         ; $7361: $9F
    ld b, [hl]                                    ; $7362: $46
    ld l, c                                       ; $7363: $69
    ld l, [hl]                                    ; $7364: $6E

jr_01C_7365:
    ld h, l                                       ; $7365: $65
    ld l, $FE                                     ; $7366: $2E $FE
    db $FD                                        ; $7368: $FD
    sbc d                                         ; $7369: $9A
    ld e, b                                       ; $736A: $58
    ld bc, $9F42                                  ; $736B: $01 $42 $9F

jr_01C_736E:
    ld e, c                                       ; $736E: $59
    ld l, a                                       ; $736F: $6F
    ld [hl], l                                    ; $7370: $75
    jr nz, jr_01C_73D7                            ; $7371: $20 $64

jr_01C_7373:
    ld l, a                                       ; $7373: $6F
    ld l, [hl]                                    ; $7374: $6E

jr_01C_7375:
    daa                                           ; $7375: $27
    ld [hl], h                                    ; $7376: $74
    jr nz, jr_01C_73E1                            ; $7377: $20 $68

    ld h, c                                       ; $7379: $61
    halt                                          ; $737A: $76
    ld h, l                                       ; $737B: $65
    rst $38                                       ; $737C: $FF
    inc sp                                        ; $737D: $33
    jr nc, jr_01C_73A0                            ; $737E: $30 $20

    ld b, c                                       ; $7380: $41

jr_01C_7381:
    ld l, [hl]                                    ; $7381: $6E
    ld l, c                                       ; $7382: $69
    ld l, l                                       ; $7383: $6D
    ld l, c                                       ; $7384: $69
    ld [hl], h                                    ; $7385: $74
    ld h, l                                       ; $7386: $65
    ld hl, $FDFE                                  ; $7387: $21 $FE $FD
    sbc d                                         ; $738A: $9A
    ld e, b                                       ; $738B: $58
    ld bc, $9B42                                  ; $738C: $01 $42 $9B
    cp b                                          ; $738F: $B8
    ld b, h                                       ; $7390: $44
    sbc a                                         ; $7391: $9F

jr_01C_7392:
    ld d, a                                       ; $7392: $57
    ld l, b                                       ; $7393: $68

jr_01C_7394:
    ld h, c                                       ; $7394: $61
    ld [hl], h                                    ; $7395: $74
    jr nz, jr_01C_740F                            ; $7396: $20 $77

    ld h, c                                       ; $7398: $61
    ld [hl], e                                    ; $7399: $73
    jr nz, jr_01C_7410                            ; $739A: $20 $74

    ld l, b                                       ; $739C: $68
    ld h, c                                       ; $739D: $61
    ld [hl], h                                    ; $739E: $74
    ccf                                           ; $739F: $3F

jr_01C_73A0:
    cp $FD                                        ; $73A0: $FE $FD
    sbc d                                         ; $73A2: $9A
    ld e, b                                       ; $73A3: $58
    ld bc, $9B42                                  ; $73A4: $01 $42 $9B
    cp b                                          ; $73A7: $B8
    ld b, h                                       ; $73A8: $44
    sbc a                                         ; $73A9: $9F
    ld c, b                                       ; $73AA: $48
    ld l, a                                       ; $73AB: $6F
    ld [hl], a                                    ; $73AC: $77

jr_01C_73AD:
    jr nz, jr_01C_7423                            ; $73AD: $20 $74

    ld [hl], d                                    ; $73AF: $72
    ld h, c                                       ; $73B0: $61
    ld h, a                                       ; $73B1: $67
    ld l, c                                       ; $73B2: $69
    ld h, e                                       ; $73B3: $63
    ld hl, $FDFE                                  ; $73B4: $21 $FE $FD
    sbc d                                         ; $73B7: $9A
    ld e, b                                       ; $73B8: $58
    ld bc, $9342                                  ; $73B9: $01 $42 $93
    ld h, l                                       ; $73BC: $65
    adc $44                                       ; $73BD: $CE $44
    ld c, a                                       ; $73BF: $4F
    ld h, h                                       ; $73C0: $64
    dec d                                         ; $73C1: $15
    ld b, [hl]                                    ; $73C2: $46
    ld l, c                                       ; $73C3: $69
    cpl                                           ; $73C4: $2F
    ld b, [hl]                                    ; $73C5: $46
    ld h, [hl]                                    ; $73C6: $66
    ret nz                                        ; $73C7: $C0

    ld e, h                                       ; $73C8: $5C
    ld hl, $0005                                  ; $73C9: $21 $05 $00
    add c                                         ; $73CC: $81
    ld e, l                                       ; $73CD: $5D
    dec b                                         ; $73CE: $05
    dec b                                         ; $73CF: $05
    ld d, b                                       ; $73D0: $50
    ret nc                                        ; $73D1: $D0

    nop                                           ; $73D2: $00
    jr nz, jr_01C_7394                            ; $73D3: $20 $BF

    ld d, b                                       ; $73D5: $50
    ld [hl+], a                                   ; $73D6: $22

jr_01C_73D7:
    dec b                                         ; $73D7: $05
    ld b, b                                       ; $73D8: $40
    dec b                                         ; $73D9: $05
    ld [bc], a                                    ; $73DA: $02
    db $ED                                        ; $73DB: $ED
    ld h, e                                       ; $73DC: $63
    inc b                                         ; $73DD: $04
    dec b                                         ; $73DE: $05
    ld c, a                                       ; $73DF: $4F
    ret nc                                        ; $73E0: $D0

jr_01C_73E1:
    nop                                           ; $73E1: $00
    ld c, $F0                                     ; $73E2: $0E $F0
    ld l, b                                       ; $73E4: $68
    inc e                                         ; $73E5: $1C
    ld a, [$0B73]                                 ; $73E6: $FA $73 $0B
    nop                                           ; $73E9: $00
    dec bc                                        ; $73EA: $0B
    ld [bc], a                                    ; $73EB: $02
    ld l, e                                       ; $73EC: $6B
    jr z, jr_01C_73F9                             ; $73ED: $28 $0A

    db $10                                        ; $73EF: $10
    ld d, a                                       ; $73F0: $57
    nop                                           ; $73F1: $00
    add b                                         ; $73F2: $80
    nop                                           ; $73F3: $00
    nop                                           ; $73F4: $00
    add d                                         ; $73F5: $82
    rra                                           ; $73F6: $1F
    dec d                                         ; $73F7: $15
    sub h                                         ; $73F8: $94

jr_01C_73F9:
    ld b, d                                       ; $73F9: $42
    ld e, e                                       ; $73FA: $5B
    inc e                                         ; $73FB: $1C
    call nz, Call_01C_4574                        ; $73FC: $C4 $74 $45
    ld c, $45                                     ; $73FF: $0E $45
    ld l, c                                       ; $7401: $69
    sub e                                         ; $7402: $93
    ld h, l                                       ; $7403: $65
    adc $44                                       ; $7404: $CE $44
    ld c, a                                       ; $7406: $4F
    ld h, h                                       ; $7407: $64
    dec d                                         ; $7408: $15

jr_01C_7409:
    ld b, [hl]                                    ; $7409: $46
    ld l, c                                       ; $740A: $69
    cpl                                           ; $740B: $2F
    ld b, [hl]                                    ; $740C: $46
    ld h, [hl]                                    ; $740D: $66
    ret nz                                        ; $740E: $C0

jr_01C_740F:
    ld e, h                                       ; $740F: $5C

jr_01C_7410:
    ld hl, $0005                                  ; $7410: $21 $05 $00
    ld l, e                                       ; $7413: $6B
    ld c, d                                       ; $7414: $4A
    dec b                                         ; $7415: $05
    dec b                                         ; $7416: $05
    ld d, b                                       ; $7417: $50
    ret nc                                        ; $7418: $D0

jr_01C_7419:
    nop                                           ; $7419: $00
    inc e                                         ; $741A: $1C
    ld b, a                                       ; $741B: $47
    ld [hl], h                                    ; $741C: $74
    ld [hl+], a                                   ; $741D: $22
    dec b                                         ; $741E: $05
    ld b, b                                       ; $741F: $40
    dec b                                         ; $7420: $05
    ld [bc], a                                    ; $7421: $02
    db $ED                                        ; $7422: $ED

jr_01C_7423:
    ld h, e                                       ; $7423: $63
    inc b                                         ; $7424: $04
    dec b                                         ; $7425: $05
    ld c, a                                       ; $7426: $4F
    ret nc                                        ; $7427: $D0

    nop                                           ; $7428: $00
    ld c, $04                                     ; $7429: $0E $04
    ld l, c                                       ; $742B: $69
    inc e                                         ; $742C: $1C
    ld a, [$0B73]                                 ; $742D: $FA $73 $0B
    nop                                           ; $7430: $00
    dec bc                                        ; $7431: $0B
    ld [bc], a                                    ; $7432: $02
    ld l, e                                       ; $7433: $6B
    jr z, jr_01C_7440                             ; $7434: $28 $0A

    db $10                                        ; $7436: $10
    ld d, a                                       ; $7437: $57
    nop                                           ; $7438: $00
    add b                                         ; $7439: $80
    nop                                           ; $743A: $00
    add d                                         ; $743B: $82
    rra                                           ; $743C: $1F
    dec d                                         ; $743D: $15
    ld l, a                                       ; $743E: $6F
    rrca                                          ; $743F: $0F

jr_01C_7440:
    rst $38                                       ; $7440: $FF
    ld a, a                                       ; $7441: $7F
    sub h                                         ; $7442: $94
    halt                                          ; $7443: $76
    jr nz, jr_01C_7455                            ; $7444: $20 $0F

    ld b, d                                       ; $7446: $42
    dec d                                         ; $7447: $15
    jr nz, jr_01C_7409                            ; $7448: $20 $BF

    ld d, b                                       ; $744A: $50
    jr nz, jr_01C_744D                            ; $744B: $20 $00

jr_01C_744D:
    ld e, e                                       ; $744D: $5B
    inc e                                         ; $744E: $1C
    ld e, e                                       ; $744F: $5B
    ld [hl], h                                    ; $7450: $74
    ld e, h                                       ; $7451: $5C
    nop                                           ; $7452: $00
    ld [bc], a                                    ; $7453: $02
    inc de                                        ; $7454: $13

jr_01C_7455:
    add c                                         ; $7455: $81
    ld e, l                                       ; $7456: $5D
    ld b, l                                       ; $7457: $45
    jr nz, jr_01C_7419                            ; $7458: $20 $BF

    ld d, b                                       ; $745A: $50
    sbc e                                         ; $745B: $9B
    cp b                                          ; $745C: $B8
    ld b, h                                       ; $745D: $44
    sbc b                                         ; $745E: $98
    or b                                          ; $745F: $B0
    and d                                         ; $7460: $A2
    sbc a                                         ; $7461: $9F
    ld d, a                                       ; $7462: $57
    ld l, a                                       ; $7463: $6F
    ld [hl], a                                    ; $7464: $77
    inc l                                         ; $7465: $2C
    jr nz, jr_01C_74C1                            ; $7466: $20 $59

    ld l, a                                       ; $7468: $6F
    ld [hl], l                                    ; $7469: $75
    rst $38                                       ; $746A: $FF
    ld h, a                                       ; $746B: $67

jr_01C_746C:
    ld l, a                                       ; $746C: $6F
    ld [hl], h                                    ; $746D: $74
    jr nz, jr_01C_746C                            ; $746E: $20 $FC

    jr nz, @+$72                                  ; $7470: $20 $70

    ld l, a                                       ; $7472: $6F
    ld l, c                                       ; $7473: $69
    ld l, [hl]                                    ; $7474: $6E
    ld [hl], h                                    ; $7475: $74
    ld [hl], e                                    ; $7476: $73
    ld hl, $48FE                                  ; $7477: $21 $FE $48
    ld h, l                                       ; $747A: $65
    ld [hl], d                                    ; $747B: $72
    ld h, l                                       ; $747C: $65
    jr nz, jr_01C_74F8                            ; $747D: $20 $79

    ld l, a                                       ; $747F: $6F
    ld [hl], l                                    ; $7480: $75
    jr nz, jr_01C_74EA                            ; $7481: $20 $67

    ld l, a                                       ; $7483: $6F
    ld l, $FE                                     ; $7484: $2E $FE
    db $FD                                        ; $7486: $FD
    sbc d                                         ; $7487: $9A
    sbc a                                         ; $7488: $9F
    ld d, h                                       ; $7489: $54
    ld l, a                                       ; $748A: $6F
    ld l, [hl]                                    ; $748B: $6E
    ld a, c                                       ; $748C: $79
    jr nz, jr_01C_74F6                            ; $748D: $20 $67

    ld l, a                                       ; $748F: $6F
    ld [hl], h                                    ; $7490: $74
    rst $38                                       ; $7491: $FF
    db $FC                                        ; $7492: $FC
    jr nz, jr_01C_74E9                            ; $7493: $20 $54

    ld l, c                                       ; $7495: $69
    ld h, e                                       ; $7496: $63
    ld l, e                                       ; $7497: $6B
    ld h, l                                       ; $7498: $65
    ld [hl], h                                    ; $7499: $74
    ld [hl], e                                    ; $749A: $73
    ld hl, $FDFE                                  ; $749B: $21 $FE $FD
    sbc d                                         ; $749E: $9A
    ld b, e                                       ; $749F: $43
    rrca                                          ; $74A0: $0F
    ld bc, $A2B0                                  ; $74A1: $01 $B0 $A2
    dec b                                         ; $74A4: $05
    nop                                           ; $74A5: $00
    inc e                                         ; $74A6: $1C
    ret nz                                        ; $74A7: $C0

    ld [hl], h                                    ; $74A8: $74
    add a                                         ; $74A9: $87
    nop                                           ; $74AA: $00
    dec hl                                        ; $74AB: $2B
    ld bc, $B0A6                                  ; $74AC: $01 $A6 $B0
    and d                                         ; $74AF: $A2
    inc c                                         ; $74B0: $0C
    ld bc, $A2B0                                  ; $74B1: $01 $B0 $A2
    dec b                                         ; $74B4: $05
    ld bc, $1143                                  ; $74B5: $01 $43 $11
    ld bc, $A2B0                                  ; $74B8: $01 $B0 $A2
    dec b                                         ; $74BB: $05
    nop                                           ; $74BC: $00
    inc e                                         ; $74BD: $1C
    xor c                                         ; $74BE: $A9
    ld [hl], h                                    ; $74BF: $74
    ld e, h                                       ; $74C0: $5C

jr_01C_74C1:
    nop                                           ; $74C1: $00
    ld [bc], a                                    ; $74C2: $02
    ld b, d                                       ; $74C3: $42
    ld b, e                                       ; $74C4: $43
    ld a, [bc]                                    ; $74C5: $0A
    nop                                           ; $74C6: $00
    and l                                         ; $74C7: $A5
    and c                                         ; $74C8: $A1
    jr nz, jr_01C_74E7                            ; $74C9: $20 $1C

    ld [$9B72], sp                                ; $74CB: $08 $72 $9B
    cp b                                          ; $74CE: $B8
    ld b, h                                       ; $74CF: $44
    sbc a                                         ; $74D0: $9F
    ld c, c                                       ; $74D1: $49
    jr nz, jr_01C_7546                            ; $74D2: $20 $72

    ld h, l                                       ; $74D4: $65
    ld l, h                                       ; $74D5: $6C
    ld l, a                                       ; $74D6: $6F
    ld h, e                                       ; $74D7: $63
    ld h, c                                       ; $74D8: $61
    ld [hl], h                                    ; $74D9: $74
    ld h, l                                       ; $74DA: $65
    ld h, h                                       ; $74DB: $64
    rst $38                                       ; $74DC: $FF
    ld l, b                                       ; $74DD: $68
    ld h, l                                       ; $74DE: $65
    ld [hl], d                                    ; $74DF: $72
    ld h, l                                       ; $74E0: $65
    jr nz, jr_01C_7544                            ; $74E1: $20 $61

    ld h, [hl]                                    ; $74E3: $66
    ld [hl], h                                    ; $74E4: $74
    ld h, l                                       ; $74E5: $65
    ld [hl], d                                    ; $74E6: $72

jr_01C_74E7:
    cp $74                                        ; $74E7: $FE $74

jr_01C_74E9:
    ld l, b                                       ; $74E9: $68

jr_01C_74EA:
    ld h, l                                       ; $74EA: $65
    jr nz, jr_01C_7542                            ; $74EB: $20 $55

    ld l, [hl]                                    ; $74ED: $6E
    ld h, h                                       ; $74EE: $64
    ld h, l                                       ; $74EF: $65
    ld [hl], d                                    ; $74F0: $72
    ld l, [hl]                                    ; $74F1: $6E
    ld h, l                                       ; $74F2: $65
    ld h, c                                       ; $74F3: $61
    ld [hl], h                                    ; $74F4: $74
    ld l, b                                       ; $74F5: $68

jr_01C_74F6:
    rst $38                                       ; $74F6: $FF
    ld d, h                                       ; $74F7: $54

jr_01C_74F8:
    ld l, a                                       ; $74F8: $6F
    ld [hl], a                                    ; $74F9: $77
    ld l, [hl]                                    ; $74FA: $6E
    jr nz, jr_01C_7574                            ; $74FB: $20 $77

    ld h, c                                       ; $74FD: $61
    ld [hl], e                                    ; $74FE: $73
    cp $64                                        ; $74FF: $FE $64
    ld h, l                                       ; $7501: $65
    ld [hl], e                                    ; $7502: $73
    ld [hl], h                                    ; $7503: $74
    ld [hl], d                                    ; $7504: $72
    ld l, a                                       ; $7505: $6F
    ld a, c                                       ; $7506: $79
    ld h, l                                       ; $7507: $65
    ld h, h                                       ; $7508: $64
    ld l, $FE                                     ; $7509: $2E $FE
    ld d, a                                       ; $750B: $57
    ld l, a                                       ; $750C: $6F
    ld [hl], l                                    ; $750D: $75
    ld l, h                                       ; $750E: $6C
    ld h, h                                       ; $750F: $64
    jr nz, jr_01C_758B                            ; $7510: $20 $79

    ld l, a                                       ; $7512: $6F
    ld [hl], l                                    ; $7513: $75
    jr nz, jr_01C_7582                            ; $7514: $20 $6C

    ld l, c                                       ; $7516: $69
    ld l, e                                       ; $7517: $6B
    ld h, l                                       ; $7518: $65
    rst $38                                       ; $7519: $FF
    ld [hl], h                                    ; $751A: $74
    ld l, a                                       ; $751B: $6F
    jr nz, jr_01C_758E                            ; $751C: $20 $70

    ld l, h                                       ; $751E: $6C
    ld h, c                                       ; $751F: $61
    ld a, c                                       ; $7520: $79
    jr nz, jr_01C_7576                            ; $7521: $20 $53

    ld h, e                                       ; $7523: $63
    ld [hl], d                                    ; $7524: $72
    ld [hl], l                                    ; $7525: $75
    ld h, d                                       ; $7526: $62
    cp $61                                        ; $7527: $FE $61
    jr nz, @+$44                                  ; $7529: $20 $42

    ld [hl], d                                    ; $752B: $72
    ld [hl], l                                    ; $752C: $75
    ld h, d                                       ; $752D: $62
    jr nz, jr_01C_759F                            ; $752E: $20 $6F

    ld [hl], d                                    ; $7530: $72
    jr nz, jr_01C_75A0                            ; $7531: $20 $6D

    ld a, c                                       ; $7533: $79
    rst $38                                       ; $7534: $FF
    ld l, [hl]                                    ; $7535: $6E
    ld h, l                                       ; $7536: $65
    ld [hl], a                                    ; $7537: $77
    jr nz, jr_01C_75A1                            ; $7538: $20 $67

    ld h, c                                       ; $753A: $61
    ld l, l                                       ; $753B: $6D
    ld h, l                                       ; $753C: $65
    inc l                                         ; $753D: $2C
    jr nz, jr_01C_7581                            ; $753E: $20 $41

    ld l, c                                       ; $7540: $69
    ld l, l                                       ; $7541: $6D

jr_01C_7542:
    cp $66                                        ; $7542: $FE $66

jr_01C_7544:
    ld l, a                                       ; $7544: $6F
    ld [hl], d                                    ; $7545: $72

jr_01C_7546:
    jr nz, jr_01C_7589                            ; $7546: $20 $41

    ld l, [hl]                                    ; $7548: $6E
    ld l, c                                       ; $7549: $69
    ld l, l                                       ; $754A: $6D
    ld l, c                                       ; $754B: $69
    ld [hl], h                                    ; $754C: $74
    ld h, l                                       ; $754D: $65
    ccf                                           ; $754E: $3F
    cp $42                                        ; $754F: $FE $42
    ld l, a                                       ; $7551: $6F
    ld [hl], h                                    ; $7552: $74
    ld l, b                                       ; $7553: $68
    jr nz, jr_01C_75B9                            ; $7554: $20 $63

    ld l, a                                       ; $7556: $6F
    ld [hl], e                                    ; $7557: $73
    ld [hl], h                                    ; $7558: $74
    rst $38                                       ; $7559: $FF
    inc sp                                        ; $755A: $33
    jr nc, jr_01C_757D                            ; $755B: $30 $20

    ld b, c                                       ; $755D: $41
    ld l, [hl]                                    ; $755E: $6E
    ld l, c                                       ; $755F: $69
    ld l, l                                       ; $7560: $6D
    ld l, c                                       ; $7561: $69
    ld [hl], h                                    ; $7562: $74
    ld h, l                                       ; $7563: $65
    cp $74                                        ; $7564: $FE $74
    ld l, a                                       ; $7566: $6F
    jr nz, jr_01C_75D9                            ; $7567: $20 $70

    ld l, h                                       ; $7569: $6C
    ld h, c                                       ; $756A: $61
    ld a, c                                       ; $756B: $79
    ld l, $FE                                     ; $756C: $2E $FE
    db $FD                                        ; $756E: $FD
    sbc c                                         ; $756F: $99
    sbc a                                         ; $7570: $9F
    jr nz, jr_01C_75C6                            ; $7571: $20 $53

    ld h, e                                       ; $7573: $63

jr_01C_7574:
    ld [hl], d                                    ; $7574: $72
    ld [hl], l                                    ; $7575: $75

jr_01C_7576:
    ld h, d                                       ; $7576: $62
    jr nz, jr_01C_7599                            ; $7577: $20 $20

    ld b, c                                       ; $7579: $41
    ld l, c                                       ; $757A: $69
    ld l, l                                       ; $757B: $6D
    rst $38                                       ; $757C: $FF

jr_01C_757D:
    jr nz, jr_01C_75CD                            ; $757D: $20 $4E

    ld h, l                                       ; $757F: $65
    ld l, c                                       ; $7580: $69

jr_01C_7581:
    ld [hl], h                                    ; $7581: $74

jr_01C_7582:
    ld l, b                                       ; $7582: $68
    ld h, l                                       ; $7583: $65
    ld [hl], d                                    ; $7584: $72
    db $FD                                        ; $7585: $FD
    sbc h                                         ; $7586: $9C
    inc bc                                        ; $7587: $03
    inc e                                         ; $7588: $1C

jr_01C_7589:
    sub c                                         ; $7589: $91
    ld [hl], l                                    ; $758A: $75

jr_01C_758B:
    inc e                                         ; $758B: $1C
    adc l                                         ; $758C: $8D
    halt                                          ; $758D: $76

jr_01C_758E:
    inc e                                         ; $758E: $1C
    cp [hl]                                       ; $758F: $BE
    halt                                          ; $7590: $76
    sbc c                                         ; $7591: $99
    sbc e                                         ; $7592: $9B
    cp b                                          ; $7593: $B8
    ld b, h                                       ; $7594: $44
    ld b, e                                       ; $7595: $43
    inc de                                        ; $7596: $13
    ld [bc], a                                    ; $7597: $02
    and l                                         ; $7598: $A5

jr_01C_7599:
    and e                                         ; $7599: $A3
    dec b                                         ; $759A: $05
    ld e, $1C                                     ; $759B: $1E $1C
    sbc l                                         ; $759D: $9D
    halt                                          ; $759E: $76

jr_01C_759F:
    sbc a                                         ; $759F: $9F

jr_01C_75A0:
    ld b, h                                       ; $75A0: $44

jr_01C_75A1:
    ld l, a                                       ; $75A1: $6F
    jr nz, @+$7B                                  ; $75A2: $20 $79

    ld l, a                                       ; $75A4: $6F
    ld [hl], l                                    ; $75A5: $75
    jr nz, jr_01C_7616                            ; $75A6: $20 $6E

    ld h, l                                       ; $75A8: $65
    ld h, l                                       ; $75A9: $65
    ld h, h                                       ; $75AA: $64
    rst $38                                       ; $75AB: $FF
    ld [hl], h                                    ; $75AC: $74
    ld l, a                                       ; $75AD: $6F
    jr nz, jr_01C_761B                            ; $75AE: $20 $6B

    ld l, [hl]                                    ; $75B0: $6E
    ld l, a                                       ; $75B1: $6F
    ld [hl], a                                    ; $75B2: $77
    jr nz, @+$6A                                  ; $75B3: $20 $68

    ld l, a                                       ; $75B5: $6F
    ld [hl], a                                    ; $75B6: $77
    cp $74                                        ; $75B7: $FE $74

jr_01C_75B9:
    ld l, a                                       ; $75B9: $6F
    jr nz, jr_01C_762C                            ; $75BA: $20 $70

    ld l, h                                       ; $75BC: $6C
    ld h, c                                       ; $75BD: $61
    ld a, c                                       ; $75BE: $79
    ccf                                           ; $75BF: $3F
    cp $FD                                        ; $75C0: $FE $FD
    sbc c                                         ; $75C2: $99
    sbc a                                         ; $75C3: $9F
    jr nz, @+$50                                  ; $75C4: $20 $4E

jr_01C_75C6:
    ld l, a                                       ; $75C6: $6F
    rst $38                                       ; $75C7: $FF
    jr nz, jr_01C_7623                            ; $75C8: $20 $59

    ld h, l                                       ; $75CA: $65
    ld [hl], e                                    ; $75CB: $73
    db $FD                                        ; $75CC: $FD

jr_01C_75CD:
    sbc h                                         ; $75CD: $9C
    ld [bc], a                                    ; $75CE: $02
    inc e                                         ; $75CF: $1C
    ld e, [hl]                                    ; $75D0: $5E
    halt                                          ; $75D1: $76
    inc e                                         ; $75D2: $1C
    push de                                       ; $75D3: $D5
    ld [hl], l                                    ; $75D4: $75
    sbc e                                         ; $75D5: $9B
    cp b                                          ; $75D6: $B8
    ld b, h                                       ; $75D7: $44
    sbc a                                         ; $75D8: $9F

jr_01C_75D9:
    ld c, d                                       ; $75D9: $4A
    ld [hl], l                                    ; $75DA: $75
    ld [hl], e                                    ; $75DB: $73
    ld [hl], h                                    ; $75DC: $74
    jr nz, jr_01C_7651                            ; $75DD: $20 $72

    ld [hl], l                                    ; $75DF: $75
    ld l, [hl]                                    ; $75E0: $6E
    jr nz, @+$71                                  ; $75E1: $20 $6F

    halt                                          ; $75E3: $76
    ld h, l                                       ; $75E4: $65
    ld [hl], d                                    ; $75E5: $72
    rst $38                                       ; $75E6: $FF
    ld [hl], h                                    ; $75E7: $74
    ld l, b                                       ; $75E8: $68
    ld h, l                                       ; $75E9: $65
    jr nz, jr_01C_764E                            ; $75EA: $20 $62

    ld [hl], d                                    ; $75EC: $72
    ld [hl], l                                    ; $75ED: $75
    ld h, d                                       ; $75EE: $62
    ld [hl], e                                    ; $75EF: $73
    jr nz, jr_01C_7653                            ; $75F0: $20 $61

    ld [hl], e                                    ; $75F2: $73
    cp $74                                        ; $75F3: $FE $74
    ld l, b                                       ; $75F5: $68
    ld h, l                                       ; $75F6: $65
    ld a, c                                       ; $75F7: $79
    jr nz, jr_01C_765B                            ; $75F8: $20 $61

    ld [hl], b                                    ; $75FA: $70
    ld [hl], b                                    ; $75FB: $70
    ld h, l                                       ; $75FC: $65
    ld h, c                                       ; $75FD: $61
    ld [hl], d                                    ; $75FE: $72
    jr nz, jr_01C_766A                            ; $75FF: $20 $69

    ld l, [hl]                                    ; $7601: $6E
    rst $38                                       ; $7602: $FF
    ld [hl], h                                    ; $7603: $74
    ld l, b                                       ; $7604: $68
    ld h, l                                       ; $7605: $65
    jr nz, jr_01C_7670                            ; $7606: $20 $68

    ld l, a                                       ; $7608: $6F
    ld l, h                                       ; $7609: $6C
    ld h, l                                       ; $760A: $65
    ld [hl], e                                    ; $760B: $73
    jr nz, jr_01C_7677                            ; $760C: $20 $69

    ld l, [hl]                                    ; $760E: $6E
    cp $74                                        ; $760F: $FE $74
    ld l, b                                       ; $7611: $68
    ld h, l                                       ; $7612: $65
    jr nz, jr_01C_767B                            ; $7613: $20 $66

    ld l, h                                       ; $7615: $6C

jr_01C_7616:
    ld l, a                                       ; $7616: $6F
    ld l, a                                       ; $7617: $6F
    ld [hl], d                                    ; $7618: $72
    ld l, $FE                                     ; $7619: $2E $FE

jr_01C_761B:
    ld b, c                                       ; $761B: $41
    jr nz, jr_01C_7680                            ; $761C: $20 $62

    ld l, h                                       ; $761E: $6C
    ld [hl], l                                    ; $761F: $75
    ld h, l                                       ; $7620: $65
    jr nz, @+$64                                  ; $7621: $20 $62

jr_01C_7623:
    ld [hl], d                                    ; $7623: $72
    ld [hl], l                                    ; $7624: $75
    ld h, d                                       ; $7625: $62
    jr nz, jr_01C_7691                            ; $7626: $20 $69

    ld [hl], e                                    ; $7628: $73
    rst $38                                       ; $7629: $FF
    ld [hl], a                                    ; $762A: $77
    ld l, a                                       ; $762B: $6F

jr_01C_762C:
    ld [hl], d                                    ; $762C: $72
    ld [hl], h                                    ; $762D: $74
    ld l, b                                       ; $762E: $68
    jr nz, jr_01C_7662                            ; $762F: $20 $31

    jr nz, jr_01C_76A3                            ; $7631: $20 $70

    ld l, a                                       ; $7633: $6F
    ld l, c                                       ; $7634: $69
    ld l, [hl]                                    ; $7635: $6E
    ld [hl], h                                    ; $7636: $74
    cp $61                                        ; $7637: $FE $61
    ld l, [hl]                                    ; $7639: $6E
    ld h, h                                       ; $763A: $64
    jr nz, jr_01C_769E                            ; $763B: $20 $61

    jr nz, jr_01C_76B1                            ; $763D: $20 $72

    ld h, l                                       ; $763F: $65
    ld h, h                                       ; $7640: $64
    jr nz, jr_01C_76A5                            ; $7641: $20 $62

    ld [hl], d                                    ; $7643: $72
    ld [hl], l                                    ; $7644: $75
    ld h, d                                       ; $7645: $62
    rst $38                                       ; $7646: $FF
    ld l, c                                       ; $7647: $69
    ld [hl], e                                    ; $7648: $73
    jr nz, jr_01C_76C2                            ; $7649: $20 $77

    ld l, a                                       ; $764B: $6F
    ld [hl], d                                    ; $764C: $72
    ld [hl], h                                    ; $764D: $74

jr_01C_764E:
    ld l, b                                       ; $764E: $68
    jr nz, jr_01C_7686                            ; $764F: $20 $35

jr_01C_7651:
    cp $70                                        ; $7651: $FE $70

jr_01C_7653:
    ld l, a                                       ; $7653: $6F
    ld l, c                                       ; $7654: $69
    ld l, [hl]                                    ; $7655: $6E
    ld [hl], h                                    ; $7656: $74
    ld [hl], e                                    ; $7657: $73
    ld l, $FE                                     ; $7658: $2E $FE
    db $FD                                        ; $765A: $FD

jr_01C_765B:
    ld b, [hl]                                    ; $765B: $46
    sub c                                         ; $765C: $91
    ld [hl], l                                    ; $765D: $75
    sbc e                                         ; $765E: $9B
    cp b                                          ; $765F: $B8
    ld b, h                                       ; $7660: $44
    sbc a                                         ; $7661: $9F

jr_01C_7662:
    ld d, d                                       ; $7662: $52
    ld l, c                                       ; $7663: $69
    ld h, a                                       ; $7664: $67
    ld l, b                                       ; $7665: $68
    ld [hl], h                                    ; $7666: $74
    jr nz, jr_01C_76DD                            ; $7667: $20 $74

    ld l, b                                       ; $7669: $68

jr_01C_766A:
    ld l, c                                       ; $766A: $69
    ld [hl], e                                    ; $766B: $73
    rst $38                                       ; $766C: $FF
    ld [hl], a                                    ; $766D: $77
    ld h, c                                       ; $766E: $61
    ld a, c                                       ; $766F: $79

jr_01C_7670:
    ld l, $2E                                     ; $7670: $2E $2E
    ld l, $FE                                     ; $7672: $2E $FE
    db $FD                                        ; $7674: $FD
    sbc d                                         ; $7675: $9A
    and a                                         ; $7676: $A7

jr_01C_7677:
    and l                                         ; $7677: $A5
    and e                                         ; $7678: $A3
    inc c                                         ; $7679: $0C
    ld [bc], a                                    ; $767A: $02

jr_01C_767B:
    and l                                         ; $767B: $A5
    and e                                         ; $767C: $A3
    dec b                                         ; $767D: $05
    ld e, $6E                                     ; $767E: $1E $6E

jr_01C_7680:
    rrca                                          ; $7680: $0F
    rst $38                                       ; $7681: $FF
    ld a, a                                       ; $7682: $7F
    halt                                          ; $7683: $76
    jr nz, jr_01C_7695                            ; $7684: $20 $0F

jr_01C_7686:
    ld bc, $1009                                  ; $7686: $01 $09 $10
    ld b, l                                       ; $7689: $45
    inc e                                         ; $768A: $1C
    xor b                                         ; $768B: $A8
    ld a, c                                       ; $768C: $79
    sbc c                                         ; $768D: $99
    sbc e                                         ; $768E: $9B
    cp b                                          ; $768F: $B8
    ld b, h                                       ; $7690: $44

jr_01C_7691:
    sbc a                                         ; $7691: $9F
    ld b, [hl]                                    ; $7692: $46
    ld l, c                                       ; $7693: $69
    ld l, [hl]                                    ; $7694: $6E

jr_01C_7695:
    ld h, l                                       ; $7695: $65
    ld l, $FE                                     ; $7696: $2E $FE
    db $FD                                        ; $7698: $FD
    sbc d                                         ; $7699: $9A
    ld e, b                                       ; $769A: $58
    ld bc, $9F42                                  ; $769B: $01 $42 $9F

jr_01C_769E:
    ld e, c                                       ; $769E: $59
    ld l, a                                       ; $769F: $6F
    ld [hl], l                                    ; $76A0: $75
    jr nz, jr_01C_7707                            ; $76A1: $20 $64

jr_01C_76A3:
    ld l, a                                       ; $76A3: $6F
    ld l, [hl]                                    ; $76A4: $6E

jr_01C_76A5:
    daa                                           ; $76A5: $27
    ld [hl], h                                    ; $76A6: $74
    jr nz, jr_01C_7711                            ; $76A7: $20 $68

    ld h, c                                       ; $76A9: $61
    halt                                          ; $76AA: $76
    ld h, l                                       ; $76AB: $65
    rst $38                                       ; $76AC: $FF
    inc sp                                        ; $76AD: $33
    jr nc, @+$22                                  ; $76AE: $30 $20

    ld h, c                                       ; $76B0: $61

jr_01C_76B1:
    ld l, [hl]                                    ; $76B1: $6E
    ld l, c                                       ; $76B2: $69
    ld l, l                                       ; $76B3: $6D
    ld l, c                                       ; $76B4: $69
    ld [hl], h                                    ; $76B5: $74
    ld h, l                                       ; $76B6: $65
    ld hl, $FDFE                                  ; $76B7: $21 $FE $FD
    sbc d                                         ; $76BA: $9A
    ld e, b                                       ; $76BB: $58
    ld bc, $9942                                  ; $76BC: $01 $42 $99
    sbc e                                         ; $76BF: $9B
    cp b                                          ; $76C0: $B8
    ld b, h                                       ; $76C1: $44

jr_01C_76C2:
    ld b, e                                       ; $76C2: $43
    inc de                                        ; $76C3: $13
    ld [bc], a                                    ; $76C4: $02
    and l                                         ; $76C5: $A5
    and e                                         ; $76C6: $A3
    dec b                                         ; $76C7: $05
    ld e, $1C                                     ; $76C8: $1E $1C
    sbc l                                         ; $76CA: $9D
    halt                                          ; $76CB: $76
    sbc a                                         ; $76CC: $9F
    ld b, h                                       ; $76CD: $44
    ld l, a                                       ; $76CE: $6F
    jr nz, jr_01C_774A                            ; $76CF: $20 $79

    ld l, a                                       ; $76D1: $6F
    ld [hl], l                                    ; $76D2: $75
    jr nz, jr_01C_7743                            ; $76D3: $20 $6E

    ld h, l                                       ; $76D5: $65
    ld h, l                                       ; $76D6: $65
    ld h, h                                       ; $76D7: $64
    rst $38                                       ; $76D8: $FF
    ld [hl], h                                    ; $76D9: $74
    ld l, a                                       ; $76DA: $6F
    jr nz, jr_01C_7748                            ; $76DB: $20 $6B

jr_01C_76DD:
    ld l, [hl]                                    ; $76DD: $6E
    ld l, a                                       ; $76DE: $6F
    ld [hl], a                                    ; $76DF: $77
    jr nz, jr_01C_774A                            ; $76E0: $20 $68

    ld l, a                                       ; $76E2: $6F
    ld [hl], a                                    ; $76E3: $77
    cp $74                                        ; $76E4: $FE $74
    ld l, a                                       ; $76E6: $6F
    jr nz, @+$72                                  ; $76E7: $20 $70

    ld l, h                                       ; $76E9: $6C
    ld h, c                                       ; $76EA: $61
    ld a, c                                       ; $76EB: $79
    ccf                                           ; $76EC: $3F
    cp $FD                                        ; $76ED: $FE $FD
    sbc c                                         ; $76EF: $99
    sbc a                                         ; $76F0: $9F
    jr nz, jr_01C_7741                            ; $76F1: $20 $4E

    ld l, a                                       ; $76F3: $6F
    rst $38                                       ; $76F4: $FF
    jr nz, jr_01C_7750                            ; $76F5: $20 $59

    ld h, l                                       ; $76F7: $65
    ld [hl], e                                    ; $76F8: $73
    db $FD                                        ; $76F9: $FD
    sbc h                                         ; $76FA: $9C
    ld [bc], a                                    ; $76FB: $02
    inc e                                         ; $76FC: $1C
    ld [bc], a                                    ; $76FD: $02
    ld [hl], a                                    ; $76FE: $77
    inc e                                         ; $76FF: $1C
    ld [hl-], a                                   ; $7700: $32
    ld [hl], a                                    ; $7701: $77
    sbc c                                         ; $7702: $99
    sbc e                                         ; $7703: $9B
    cp b                                          ; $7704: $B8
    ld b, h                                       ; $7705: $44
    sbc a                                         ; $7706: $9F

jr_01C_7707:
    ld d, d                                       ; $7707: $52
    ld l, c                                       ; $7708: $69
    ld h, a                                       ; $7709: $67
    ld l, b                                       ; $770A: $68
    ld [hl], h                                    ; $770B: $74
    jr nz, jr_01C_7782                            ; $770C: $20 $74

    ld l, b                                       ; $770E: $68
    ld l, c                                       ; $770F: $69
    ld [hl], e                                    ; $7710: $73

jr_01C_7711:
    rst $38                                       ; $7711: $FF
    ld [hl], a                                    ; $7712: $77
    ld h, c                                       ; $7713: $61
    ld a, c                                       ; $7714: $79
    ld l, $2E                                     ; $7715: $2E $2E
    ld l, $FE                                     ; $7717: $2E $FE
    db $FD                                        ; $7719: $FD
    sbc d                                         ; $771A: $9A
    and a                                         ; $771B: $A7
    and l                                         ; $771C: $A5
    and e                                         ; $771D: $A3
    inc c                                         ; $771E: $0C
    ld [bc], a                                    ; $771F: $02
    and l                                         ; $7720: $A5
    and e                                         ; $7721: $A3
    dec b                                         ; $7722: $05
    ld e, $6E                                     ; $7723: $1E $6E
    rrca                                          ; $7725: $0F
    rst $38                                       ; $7726: $FF
    ld a, a                                       ; $7727: $7F
    halt                                          ; $7728: $76
    jr nz, jr_01C_773A                            ; $7729: $20 $0F

    ld bc, $0905                                  ; $772B: $01 $05 $09
    ld b, l                                       ; $772E: $45
    ld h, $24                                     ; $772F: $26 $24
    ld h, [hl]                                    ; $7731: $66
    sbc c                                         ; $7732: $99
    sbc e                                         ; $7733: $9B
    cp b                                          ; $7734: $B8
    ld b, h                                       ; $7735: $44
    sbc a                                         ; $7736: $9F
    ld d, d                                       ; $7737: $52
    ld [hl], l                                    ; $7738: $75
    ld l, [hl]                                    ; $7739: $6E

jr_01C_773A:
    jr nz, jr_01C_77B0                            ; $773A: $20 $74

    ld l, a                                       ; $773C: $6F
    jr nz, @+$71                                  ; $773D: $20 $6F

    ld l, [hl]                                    ; $773F: $6E
    ld h, l                                       ; $7740: $65

jr_01C_7741:
    rst $38                                       ; $7741: $FF
    ld l, a                                       ; $7742: $6F

jr_01C_7743:
    ld h, [hl]                                    ; $7743: $66
    jr nz, jr_01C_77BA                            ; $7744: $20 $74

    ld l, b                                       ; $7746: $68
    ld h, l                                       ; $7747: $65

jr_01C_7748:
    jr nz, jr_01C_77BD                            ; $7748: $20 $73

jr_01C_774A:
    ld l, b                                       ; $774A: $68
    ld l, a                                       ; $774B: $6F
    ld l, a                                       ; $774C: $6F
    ld [hl], h                                    ; $774D: $74
    ld l, c                                       ; $774E: $69
    ld l, [hl]                                    ; $774F: $6E

jr_01C_7750:
    ld h, a                                       ; $7750: $67
    cp $70                                        ; $7751: $FE $70
    ld l, a                                       ; $7753: $6F
    ld l, c                                       ; $7754: $69
    ld l, [hl]                                    ; $7755: $6E
    ld [hl], h                                    ; $7756: $74
    ld [hl], e                                    ; $7757: $73
    jr nz, jr_01C_77BB                            ; $7758: $20 $61

    ld l, [hl]                                    ; $775A: $6E
    ld h, h                                       ; $775B: $64
    rst $38                                       ; $775C: $FF
    ld [hl], e                                    ; $775D: $73
    ld l, b                                       ; $775E: $68
    ld l, a                                       ; $775F: $6F
    ld l, a                                       ; $7760: $6F
    ld [hl], h                                    ; $7761: $74
    jr nz, jr_01C_77C5                            ; $7762: $20 $61

    ld l, [hl]                                    ; $7764: $6E
    jr nz, jr_01C_77C8                            ; $7765: $20 $61

    ld [hl], d                                    ; $7767: $72
    ld [hl], d                                    ; $7768: $72
    ld l, a                                       ; $7769: $6F
    ld [hl], a                                    ; $776A: $77
    ld l, $FE                                     ; $776B: $2E $FE
    ld b, l                                       ; $776D: $45
    ld h, c                                       ; $776E: $61
    ld h, e                                       ; $776F: $63
    ld l, b                                       ; $7770: $68
    jr nz, jr_01C_77DA                            ; $7771: $20 $67

    ld [hl], d                                    ; $7773: $72
    ld h, l                                       ; $7774: $65
    ld h, l                                       ; $7775: $65
    ld l, [hl]                                    ; $7776: $6E
    rst $38                                       ; $7777: $FF
    ld b, c                                       ; $7778: $41
    ld l, [hl]                                    ; $7779: $6E
    ld l, c                                       ; $777A: $69
    ld l, l                                       ; $777B: $6D
    ld l, c                                       ; $777C: $69
    ld [hl], h                                    ; $777D: $74
    ld h, l                                       ; $777E: $65
    jr nz, jr_01C_77EA                            ; $777F: $20 $69

    ld [hl], e                                    ; $7781: $73

jr_01C_7782:
    cp $77                                        ; $7782: $FE $77
    ld l, a                                       ; $7784: $6F
    ld [hl], d                                    ; $7785: $72
    ld [hl], h                                    ; $7786: $74
    ld l, b                                       ; $7787: $68
    jr nz, jr_01C_77BB                            ; $7788: $20 $31

    jr nc, @+$01                                  ; $778A: $30 $FF

    ld [hl], b                                    ; $778C: $70
    ld l, a                                       ; $778D: $6F
    ld l, c                                       ; $778E: $69
    ld l, [hl]                                    ; $778F: $6E
    ld [hl], h                                    ; $7790: $74
    ld [hl], e                                    ; $7791: $73
    ld l, $FE                                     ; $7792: $2E $FE
    ld d, h                                       ; $7794: $54
    ld l, b                                       ; $7795: $68
    ld h, l                                       ; $7796: $65
    jr nz, jr_01C_780D                            ; $7797: $20 $74

    ld h, c                                       ; $7799: $61
    ld [hl], d                                    ; $779A: $72
    ld h, a                                       ; $779B: $67
    ld h, l                                       ; $779C: $65
    ld [hl], h                                    ; $779D: $74
    ld [hl], e                                    ; $779E: $73
    jr nz, @+$63                                  ; $779F: $20 $61

    ld [hl], d                                    ; $77A1: $72
    ld h, l                                       ; $77A2: $65
    rst $38                                       ; $77A3: $FF
    ld [hl], a                                    ; $77A4: $77
    ld l, a                                       ; $77A5: $6F
    ld [hl], d                                    ; $77A6: $72
    ld [hl], h                                    ; $77A7: $74
    ld l, b                                       ; $77A8: $68
    jr nz, jr_01C_77DC                            ; $77A9: $20 $31

    inc l                                         ; $77AB: $2C
    inc sp                                        ; $77AC: $33
    jr nz, @+$71                                  ; $77AD: $20 $6F

    ld [hl], d                                    ; $77AF: $72

jr_01C_77B0:
    cp $35                                        ; $77B0: $FE $35
    jr nz, jr_01C_7824                            ; $77B2: $20 $70

    ld l, a                                       ; $77B4: $6F
    ld l, c                                       ; $77B5: $69
    ld l, [hl]                                    ; $77B6: $6E
    ld [hl], h                                    ; $77B7: $74
    ld [hl], e                                    ; $77B8: $73
    rst $38                                       ; $77B9: $FF

jr_01C_77BA:
    ld h, h                                       ; $77BA: $64

jr_01C_77BB:
    ld h, l                                       ; $77BB: $65
    ld [hl], b                                    ; $77BC: $70

jr_01C_77BD:
    ld h, l                                       ; $77BD: $65
    ld l, [hl]                                    ; $77BE: $6E
    ld h, h                                       ; $77BF: $64
    ld l, c                                       ; $77C0: $69
    ld l, [hl]                                    ; $77C1: $6E
    ld h, a                                       ; $77C2: $67
    jr nz, @+$71                                  ; $77C3: $20 $6F

jr_01C_77C5:
    ld l, [hl]                                    ; $77C5: $6E
    cp $68                                        ; $77C6: $FE $68

jr_01C_77C8:
    ld l, a                                       ; $77C8: $6F
    ld [hl], a                                    ; $77C9: $77
    jr nz, jr_01C_7832                            ; $77CA: $20 $66

    ld h, c                                       ; $77CC: $61
    ld [hl], e                                    ; $77CD: $73
    ld [hl], h                                    ; $77CE: $74
    jr nz, jr_01C_7845                            ; $77CF: $20 $74

    ld l, b                                       ; $77D1: $68
    ld h, l                                       ; $77D2: $65
    ld a, c                                       ; $77D3: $79
    rst $38                                       ; $77D4: $FF
    ld h, c                                       ; $77D5: $61
    ld [hl], d                                    ; $77D6: $72
    ld h, l                                       ; $77D7: $65
    jr nz, jr_01C_7847                            ; $77D8: $20 $6D

jr_01C_77DA:
    ld l, a                                       ; $77DA: $6F
    halt                                          ; $77DB: $76

jr_01C_77DC:
    ld l, c                                       ; $77DC: $69
    ld l, [hl]                                    ; $77DD: $6E
    ld h, a                                       ; $77DE: $67
    ld l, $FE                                     ; $77DF: $2E $FE
    ld d, h                                       ; $77E1: $54
    ld l, b                                       ; $77E2: $68
    ld h, l                                       ; $77E3: $65
    jr nz, jr_01C_784C                            ; $77E4: $20 $66

    ld h, c                                       ; $77E6: $61
    ld [hl], e                                    ; $77E7: $73
    ld [hl], h                                    ; $77E8: $74
    ld h, l                                       ; $77E9: $65

jr_01C_77EA:
    ld [hl], d                                    ; $77EA: $72
    jr nz, jr_01C_7861                            ; $77EB: $20 $74

    ld l, b                                       ; $77ED: $68
    ld h, l                                       ; $77EE: $65
    rst $38                                       ; $77EF: $FF
    ld [hl], h                                    ; $77F0: $74
    ld h, c                                       ; $77F1: $61
    ld [hl], d                                    ; $77F2: $72
    ld h, a                                       ; $77F3: $67

jr_01C_77F4:
    ld h, l                                       ; $77F4: $65
    ld [hl], h                                    ; $77F5: $74
    ld [hl], e                                    ; $77F6: $73
    inc l                                         ; $77F7: $2C
    cp $74                                        ; $77F8: $FE $74
    ld l, b                                       ; $77FA: $68
    ld h, l                                       ; $77FB: $65
    jr nz, jr_01C_786B                            ; $77FC: $20 $6D

    ld l, a                                       ; $77FE: $6F
    ld [hl], d                                    ; $77FF: $72
    ld h, l                                       ; $7800: $65
    jr nz, jr_01C_7873                            ; $7801: $20 $70

    ld l, a                                       ; $7803: $6F
    ld l, c                                       ; $7804: $69
    ld l, [hl]                                    ; $7805: $6E
    ld [hl], h                                    ; $7806: $74
    ld [hl], e                                    ; $7807: $73
    rst $38                                       ; $7808: $FF
    ld l, c                                       ; $7809: $69
    ld [hl], h                                    ; $780A: $74
    jr nz, jr_01C_7876                            ; $780B: $20 $69

jr_01C_780D:
    ld [hl], e                                    ; $780D: $73
    jr nz, jr_01C_7887                            ; $780E: $20 $77

    ld l, a                                       ; $7810: $6F
    ld [hl], d                                    ; $7811: $72
    ld [hl], h                                    ; $7812: $74
    ld l, b                                       ; $7813: $68
    ld hl, $FDFE                                  ; $7814: $21 $FE $FD
    ld b, l                                       ; $7817: $45
    inc e                                         ; $7818: $1C
    cp [hl]                                       ; $7819: $BE
    halt                                          ; $781A: $76
    sub e                                         ; $781B: $93
    ld h, l                                       ; $781C: $65
    adc $44                                       ; $781D: $CE $44
    ld c, a                                       ; $781F: $4F
    ld h, h                                       ; $7820: $64
    db $10                                        ; $7821: $10
    ld b, [hl]                                    ; $7822: $46
    ld l, c                                       ; $7823: $69

jr_01C_7824:
    ld a, [de]                                    ; $7824: $1A
    ld b, [hl]                                    ; $7825: $46
    ld h, [hl]                                    ; $7826: $66
    ret nz                                        ; $7827: $C0

    ld e, h                                       ; $7828: $5C
    ld hl, $0005                                  ; $7829: $21 $05 $00
    add c                                         ; $782C: $81
    ld e, l                                       ; $782D: $5D
    dec b                                         ; $782E: $05
    dec b                                         ; $782F: $05
    ld d, b                                       ; $7830: $50
    ret nc                                        ; $7831: $D0

jr_01C_7832:
    nop                                           ; $7832: $00
    jr nz, jr_01C_77F4                            ; $7833: $20 $BF

    ld d, b                                       ; $7835: $50
    ld [hl+], a                                   ; $7836: $22
    dec b                                         ; $7837: $05
    ld b, b                                       ; $7838: $40
    dec b                                         ; $7839: $05
    ld [bc], a                                    ; $783A: $02
    db $ED                                        ; $783B: $ED
    ld h, e                                       ; $783C: $63
    inc b                                         ; $783D: $04
    dec b                                         ; $783E: $05
    ld c, a                                       ; $783F: $4F
    ret nc                                        ; $7840: $D0

    nop                                           ; $7841: $00
    ld c, $F0                                     ; $7842: $0E $F0
    ld l, b                                       ; $7844: $68

jr_01C_7845:
    inc e                                         ; $7845: $1C
    ld e, d                                       ; $7846: $5A

jr_01C_7847:
    ld a, b                                       ; $7847: $78
    dec bc                                        ; $7848: $0B
    nop                                           ; $7849: $00
    dec bc                                        ; $784A: $0B
    ld [bc], a                                    ; $784B: $02

jr_01C_784C:
    ld l, e                                       ; $784C: $6B
    jr z, jr_01C_7859                             ; $784D: $28 $0A

    db $10                                        ; $784F: $10
    ld d, a                                       ; $7850: $57
    nop                                           ; $7851: $00
    add b                                         ; $7852: $80
    nop                                           ; $7853: $00
    nop                                           ; $7854: $00
    add d                                         ; $7855: $82
    rra                                           ; $7856: $1F
    dec d                                         ; $7857: $15
    sub h                                         ; $7858: $94

jr_01C_7859:
    ld b, d                                       ; $7859: $42
    ld e, e                                       ; $785A: $5B
    inc e                                         ; $785B: $1C
    ld [$4572], sp                                ; $785C: $08 $72 $45
    ld c, $45                                     ; $785F: $0E $45

jr_01C_7861:
    ld l, c                                       ; $7861: $69
    sub e                                         ; $7862: $93
    ld h, l                                       ; $7863: $65
    adc $44                                       ; $7864: $CE $44
    ld c, a                                       ; $7866: $4F
    ld h, h                                       ; $7867: $64
    db $10                                        ; $7868: $10

jr_01C_7869:
    ld b, [hl]                                    ; $7869: $46
    ld l, c                                       ; $786A: $69

jr_01C_786B:
    ld a, [de]                                    ; $786B: $1A
    ld b, [hl]                                    ; $786C: $46
    ld h, [hl]                                    ; $786D: $66
    ret nz                                        ; $786E: $C0

jr_01C_786F:
    ld e, h                                       ; $786F: $5C
    ld hl, $0005                                  ; $7870: $21 $05 $00

jr_01C_7873:
    ld l, e                                       ; $7873: $6B
    ld c, d                                       ; $7874: $4A
    dec b                                         ; $7875: $05

jr_01C_7876:
    dec b                                         ; $7876: $05
    ld d, b                                       ; $7877: $50
    ret nc                                        ; $7878: $D0

    nop                                           ; $7879: $00
    inc e                                         ; $787A: $1C
    and a                                         ; $787B: $A7
    ld a, b                                       ; $787C: $78
    ld [hl+], a                                   ; $787D: $22
    dec b                                         ; $787E: $05
    ld b, b                                       ; $787F: $40
    dec b                                         ; $7880: $05
    ld [bc], a                                    ; $7881: $02
    db $ED                                        ; $7882: $ED
    ld h, e                                       ; $7883: $63
    inc b                                         ; $7884: $04
    dec b                                         ; $7885: $05
    ld c, a                                       ; $7886: $4F

jr_01C_7887:
    ret nc                                        ; $7887: $D0

    nop                                           ; $7888: $00
    ld c, $04                                     ; $7889: $0E $04
    ld l, c                                       ; $788B: $69
    inc e                                         ; $788C: $1C
    ld e, d                                       ; $788D: $5A
    ld a, b                                       ; $788E: $78
    dec bc                                        ; $788F: $0B
    nop                                           ; $7890: $00
    dec bc                                        ; $7891: $0B
    ld [bc], a                                    ; $7892: $02
    ld l, e                                       ; $7893: $6B
    jr z, jr_01C_78A0                             ; $7894: $28 $0A

    db $10                                        ; $7896: $10
    ld d, a                                       ; $7897: $57
    nop                                           ; $7898: $00
    add b                                         ; $7899: $80
    nop                                           ; $789A: $00
    add d                                         ; $789B: $82
    rra                                           ; $789C: $1F
    dec d                                         ; $789D: $15
    ld l, a                                       ; $789E: $6F
    rrca                                          ; $789F: $0F

jr_01C_78A0:
    rst $38                                       ; $78A0: $FF
    ld a, a                                       ; $78A1: $7F
    sub h                                         ; $78A2: $94
    halt                                          ; $78A3: $76
    jr nz, jr_01C_78B5                            ; $78A4: $20 $0F

    ld b, d                                       ; $78A6: $42
    dec d                                         ; $78A7: $15
    jr nz, jr_01C_7869                            ; $78A8: $20 $BF

    ld d, b                                       ; $78AA: $50
    jr nz, jr_01C_78AD                            ; $78AB: $20 $00

jr_01C_78AD:
    ld e, e                                       ; $78AD: $5B
    inc e                                         ; $78AE: $1C
    cp e                                          ; $78AF: $BB
    ld a, b                                       ; $78B0: $78
    ld e, h                                       ; $78B1: $5C
    nop                                           ; $78B2: $00
    ld [bc], a                                    ; $78B3: $02
    inc de                                        ; $78B4: $13

jr_01C_78B5:
    add c                                         ; $78B5: $81
    ld e, l                                       ; $78B6: $5D
    ld b, l                                       ; $78B7: $45
    jr nz, jr_01C_786F                            ; $78B8: $20 $B5

    ld d, b                                       ; $78BA: $50
    sbc e                                         ; $78BB: $9B
    cp b                                          ; $78BC: $B8
    ld b, h                                       ; $78BD: $44
    sbc b                                         ; $78BE: $98
    or b                                          ; $78BF: $B0
    and d                                         ; $78C0: $A2
    sbc a                                         ; $78C1: $9F
    ld d, a                                       ; $78C2: $57
    ld l, a                                       ; $78C3: $6F
    ld [hl], a                                    ; $78C4: $77
    inc l                                         ; $78C5: $2C
    jr nz, jr_01C_7921                            ; $78C6: $20 $59

    ld l, a                                       ; $78C8: $6F
    ld [hl], l                                    ; $78C9: $75
    rst $38                                       ; $78CA: $FF
    ld h, a                                       ; $78CB: $67

jr_01C_78CC:
    ld l, a                                       ; $78CC: $6F
    ld [hl], h                                    ; $78CD: $74
    jr nz, jr_01C_78CC                            ; $78CE: $20 $FC

    jr nz, @+$72                                  ; $78D0: $20 $70

    ld l, a                                       ; $78D2: $6F
    ld l, c                                       ; $78D3: $69
    ld l, [hl]                                    ; $78D4: $6E
    ld [hl], h                                    ; $78D5: $74
    ld [hl], e                                    ; $78D6: $73
    ld hl, $48FE                                  ; $78D7: $21 $FE $48
    ld h, l                                       ; $78DA: $65
    ld [hl], d                                    ; $78DB: $72
    ld h, l                                       ; $78DC: $65
    jr nz, jr_01C_7958                            ; $78DD: $20 $79

    ld l, a                                       ; $78DF: $6F
    ld [hl], l                                    ; $78E0: $75
    jr nz, jr_01C_794A                            ; $78E1: $20 $67

    ld l, a                                       ; $78E3: $6F
    ld l, $FE                                     ; $78E4: $2E $FE
    db $FD                                        ; $78E6: $FD
    sbc d                                         ; $78E7: $9A
    sbc a                                         ; $78E8: $9F
    ld d, h                                       ; $78E9: $54
    ld l, a                                       ; $78EA: $6F
    ld l, [hl]                                    ; $78EB: $6E
    ld a, c                                       ; $78EC: $79
    jr nz, @+$69                                  ; $78ED: $20 $67

    ld l, a                                       ; $78EF: $6F
    ld [hl], h                                    ; $78F0: $74
    rst $38                                       ; $78F1: $FF
    db $FC                                        ; $78F2: $FC
    jr nz, jr_01C_7949                            ; $78F3: $20 $54

    ld l, c                                       ; $78F5: $69
    ld h, e                                       ; $78F6: $63
    ld l, e                                       ; $78F7: $6B
    ld h, l                                       ; $78F8: $65
    ld [hl], h                                    ; $78F9: $74
    ld [hl], e                                    ; $78FA: $73
    ld hl, $FDFE                                  ; $78FB: $21 $FE $FD
    sbc d                                         ; $78FE: $9A
    ld b, e                                       ; $78FF: $43
    rrca                                          ; $7900: $0F
    ld bc, $A2B0                                  ; $7901: $01 $B0 $A2
    dec b                                         ; $7904: $05
    nop                                           ; $7905: $00
    inc e                                         ; $7906: $1C
    jr nz, @+$7B                                  ; $7907: $20 $79

    add a                                         ; $7909: $87
    nop                                           ; $790A: $00
    dec hl                                        ; $790B: $2B
    ld bc, $B0A6                                  ; $790C: $01 $A6 $B0
    and d                                         ; $790F: $A2
    inc c                                         ; $7910: $0C
    ld bc, $A2B0                                  ; $7911: $01 $B0 $A2
    dec b                                         ; $7914: $05
    ld bc, $1143                                  ; $7915: $01 $43 $11
    ld bc, $A2B0                                  ; $7918: $01 $B0 $A2
    dec b                                         ; $791B: $05
    nop                                           ; $791C: $00
    inc e                                         ; $791D: $1C
    add hl, bc                                    ; $791E: $09
    ld a, c                                       ; $791F: $79
    ld e, h                                       ; $7920: $5C

jr_01C_7921:
    nop                                           ; $7921: $00
    ld [bc], a                                    ; $7922: $02
    ld b, d                                       ; $7923: $42
    sbc e                                         ; $7924: $9B
    cp b                                          ; $7925: $B8
    ld b, h                                       ; $7926: $44
    sbc a                                         ; $7927: $9F
    ld d, a                                       ; $7928: $57
    ld l, a                                       ; $7929: $6F
    ld [hl], l                                    ; $792A: $75
    ld l, h                                       ; $792B: $6C
    ld h, h                                       ; $792C: $64
    jr nz, @+$7B                                  ; $792D: $20 $79

    ld l, a                                       ; $792F: $6F
    ld [hl], l                                    ; $7930: $75
    rst $38                                       ; $7931: $FF
    ld l, h                                       ; $7932: $6C
    ld l, c                                       ; $7933: $69
    ld l, e                                       ; $7934: $6B
    ld h, l                                       ; $7935: $65
    jr nz, jr_01C_79AC                            ; $7936: $20 $74

    ld l, a                                       ; $7938: $6F
    jr nz, jr_01C_79A3                            ; $7939: $20 $68

    ld h, l                                       ; $793B: $65
    ld l, h                                       ; $793C: $6C
    ld [hl], b                                    ; $793D: $70
    cp $6D                                        ; $793E: $FE $6D
    ld h, l                                       ; $7940: $65
    jr nz, jr_01C_79B6                            ; $7941: $20 $73

    ld h, e                                       ; $7943: $63
    ld [hl], d                                    ; $7944: $72
    ld [hl], l                                    ; $7945: $75
    ld h, d                                       ; $7946: $62
    jr nz, @+$71                                  ; $7947: $20 $6F

jr_01C_7949:
    ld [hl], l                                    ; $7949: $75

jr_01C_794A:
    ld [hl], h                                    ; $794A: $74
    rst $38                                       ; $794B: $FF
    ld [hl], h                                    ; $794C: $74
    ld l, b                                       ; $794D: $68
    ld h, l                                       ; $794E: $65
    jr nz, @+$44                                  ; $794F: $20 $42

    ld [hl], d                                    ; $7951: $72
    ld [hl], l                                    ; $7952: $75
    ld h, d                                       ; $7953: $62
    ld [hl], e                                    ; $7954: $73
    jr nz, jr_01C_79C0                            ; $7955: $20 $69

    ld l, [hl]                                    ; $7957: $6E

jr_01C_7958:
    cp $6D                                        ; $7958: $FE $6D
    ld a, c                                       ; $795A: $79
    jr nz, jr_01C_79BF                            ; $795B: $20 $62

    ld h, c                                       ; $795D: $61
    ld [hl], e                                    ; $795E: $73
    ld h, l                                       ; $795F: $65
    ld l, l                                       ; $7960: $6D
    ld h, l                                       ; $7961: $65
    ld l, [hl]                                    ; $7962: $6E
    ld [hl], h                                    ; $7963: $74
    ccf                                           ; $7964: $3F
    cp $FD                                        ; $7965: $FE $FD
    sbc c                                         ; $7967: $99
    sbc a                                         ; $7968: $9F
    jr nz, jr_01C_79C4                            ; $7969: $20 $59

    ld h, l                                       ; $796B: $65
    ld [hl], e                                    ; $796C: $73
    rst $38                                       ; $796D: $FF
    jr nz, jr_01C_79BE                            ; $796E: $20 $4E

    ld l, a                                       ; $7970: $6F
    db $FD                                        ; $7971: $FD
    sbc h                                         ; $7972: $9C
    ld [bc], a                                    ; $7973: $02
    inc e                                         ; $7974: $1C
    ld a, d                                       ; $7975: $7A
    ld a, c                                       ; $7976: $79
    inc e                                         ; $7977: $1C
    sbc e                                         ; $7978: $9B
    ld a, c                                       ; $7979: $79
    sbc c                                         ; $797A: $99
    sbc a                                         ; $797B: $9F
    ld d, d                                       ; $797C: $52
    ld l, c                                       ; $797D: $69
    ld h, a                                       ; $797E: $67
    ld l, b                                       ; $797F: $68
    ld [hl], h                                    ; $7980: $74
    jr nz, jr_01C_79F7                            ; $7981: $20 $74

    ld l, b                                       ; $7983: $68
    ld l, c                                       ; $7984: $69
    ld [hl], e                                    ; $7985: $73
    rst $38                                       ; $7986: $FF
    ld [hl], a                                    ; $7987: $77
    ld h, c                                       ; $7988: $61
    ld a, c                                       ; $7989: $79
    cp $FD                                        ; $798A: $FE $FD
    sbc d                                         ; $798C: $9A
    ld l, [hl]                                    ; $798D: $6E
    rrca                                          ; $798E: $0F
    rst $38                                       ; $798F: $FF
    ld a, a                                       ; $7990: $7F
    halt                                          ; $7991: $76
    jr nz, jr_01C_79A3                            ; $7992: $20 $0F

    ld bc, $1009                                  ; $7994: $01 $09 $10
    ld b, l                                       ; $7997: $45
    inc e                                         ; $7998: $1C
    xor b                                         ; $7999: $A8
    ld a, c                                       ; $799A: $79
    sbc c                                         ; $799B: $99
    sbc a                                         ; $799C: $9F
    ld b, [hl]                                    ; $799D: $46
    ld l, c                                       ; $799E: $69
    ld l, [hl]                                    ; $799F: $6E
    ld h, l                                       ; $79A0: $65
    ld l, $FE                                     ; $79A1: $2E $FE

jr_01C_79A3:
    db $FD                                        ; $79A3: $FD
    sbc d                                         ; $79A4: $9A
    ld e, b                                       ; $79A5: $58
    ld bc, $9342                                  ; $79A6: $01 $42 $93
    ld h, l                                       ; $79A9: $65
    db $DD                                        ; $79AA: $DD
    ld b, h                                       ; $79AB: $44

jr_01C_79AC:
    ld c, a                                       ; $79AC: $4F
    ld h, [hl]                                    ; $79AD: $66
    ret nz                                        ; $79AE: $C0

    ld e, h                                       ; $79AF: $5C
    ld hl, $0005                                  ; $79B0: $21 $05 $00
    add c                                         ; $79B3: $81
    ld e, l                                       ; $79B4: $5D
    ld a, [bc]                                    ; $79B5: $0A

jr_01C_79B6:
    dec bc                                        ; $79B6: $0B

jr_01C_79B7:
    and $D0                                       ; $79B7: $E6 $D0
    nop                                           ; $79B9: $00
    jr nz, jr_01C_79B7                            ; $79BA: $20 $FB

    ld d, b                                       ; $79BC: $50
    ld [hl+], a                                   ; $79BD: $22

jr_01C_79BE:
    dec b                                         ; $79BE: $05

jr_01C_79BF:
    ld b, b                                       ; $79BF: $40

jr_01C_79C0:
    dec b                                         ; $79C0: $05
    ld [bc], a                                    ; $79C1: $02
    ld l, e                                       ; $79C2: $6B
    ld c, d                                       ; $79C3: $4A

jr_01C_79C4:
    nop                                           ; $79C4: $00
    nop                                           ; $79C5: $00
    nop                                           ; $79C6: $00
    ret nc                                        ; $79C7: $D0

    nop                                           ; $79C8: $00
    ld [hl+], a                                   ; $79C9: $22
    inc b                                         ; $79CA: $04
    ld b, b                                       ; $79CB: $40
    ld [hl+], a                                   ; $79CC: $22
    dec b                                         ; $79CD: $05
    ld b, b                                       ; $79CE: $40
    dec b                                         ; $79CF: $05
    inc bc                                        ; $79D0: $03
    ld l, e                                       ; $79D1: $6B
    ld c, d                                       ; $79D2: $4A
    nop                                           ; $79D3: $00
    nop                                           ; $79D4: $00
    nop                                           ; $79D5: $00
    ret nc                                        ; $79D6: $D0

    nop                                           ; $79D7: $00
    ld [hl+], a                                   ; $79D8: $22
    inc b                                         ; $79D9: $04
    ld b, b                                       ; $79DA: $40
    ld [hl+], a                                   ; $79DB: $22
    dec b                                         ; $79DC: $05
    ld b, b                                       ; $79DD: $40
    dec b                                         ; $79DE: $05
    inc b                                         ; $79DF: $04
    ld l, e                                       ; $79E0: $6B
    ld c, d                                       ; $79E1: $4A
    nop                                           ; $79E2: $00

jr_01C_79E3:
    nop                                           ; $79E3: $00
    nop                                           ; $79E4: $00
    ret nc                                        ; $79E5: $D0

    nop                                           ; $79E6: $00
    ld [hl+], a                                   ; $79E7: $22
    inc b                                         ; $79E8: $04
    ld b, b                                       ; $79E9: $40
    ld [hl+], a                                   ; $79EA: $22
    dec b                                         ; $79EB: $05
    ld b, b                                       ; $79EC: $40
    dec b                                         ; $79ED: $05
    dec b                                         ; $79EE: $05
    ld l, e                                       ; $79EF: $6B
    ld c, d                                       ; $79F0: $4A
    nop                                           ; $79F1: $00
    nop                                           ; $79F2: $00
    nop                                           ; $79F3: $00
    ret nc                                        ; $79F4: $D0

    nop                                           ; $79F5: $00
    inc e                                         ; $79F6: $1C

jr_01C_79F7:
    ld a, [bc]                                    ; $79F7: $0A
    ld a, l                                       ; $79F8: $7D
    ld [hl+], a                                   ; $79F9: $22
    inc b                                         ; $79FA: $04
    ld b, b                                       ; $79FB: $40
    dec bc                                        ; $79FC: $0B
    nop                                           ; $79FD: $00
    dec bc                                        ; $79FE: $0B
    ld [bc], a                                    ; $79FF: $02
    dec bc                                        ; $7A00: $0B
    inc bc                                        ; $7A01: $03
    dec bc                                        ; $7A02: $0B
    inc b                                         ; $7A03: $04
    dec bc                                        ; $7A04: $0B
    dec b                                         ; $7A05: $05
    ld l, e                                       ; $7A06: $6B
    ld [de], a                                    ; $7A07: $12
    daa                                           ; $7A08: $27
    and b                                         ; $7A09: $A0
    ld d, h                                       ; $7A0A: $54
    nop                                           ; $7A0B: $00
    add b                                         ; $7A0C: $80
    nop                                           ; $7A0D: $00
    ld l, e                                       ; $7A0E: $6B
    ld [de], a                                    ; $7A0F: $12
    daa                                           ; $7A10: $27
    and b                                         ; $7A11: $A0
    ld d, h                                       ; $7A12: $54
    jr nz, @-$7D                                  ; $7A13: $20 $81

    nop                                           ; $7A15: $00
    nop                                           ; $7A16: $00
    add d                                         ; $7A17: $82
    sub h                                         ; $7A18: $94
    rra                                           ; $7A19: $1F
    jr nz, jr_01C_7A76                            ; $7A1A: $20 $5A

    inc e                                         ; $7A1C: $1C
    ld l, e                                       ; $7A1D: $6B
    ld a, d                                       ; $7A1E: $7A
    ld e, h                                       ; $7A1F: $5C
    nop                                           ; $7A20: $00
    ld [bc], a                                    ; $7A21: $02
    ld e, d                                       ; $7A22: $5A
    ld [hl+], a                                   ; $7A23: $22
    inc b                                         ; $7A24: $04
    ld b, b                                       ; $7A25: $40
    rlca                                          ; $7A26: $07
    nop                                           ; $7A27: $00
    ld l, e                                       ; $7A28: $6B
    ld c, d                                       ; $7A29: $4A
    add hl, bc                                    ; $7A2A: $09
    nop                                           ; $7A2B: $00
    jr nz, jr_01C_79E3                            ; $7A2C: $20 $B5

    ld d, b                                       ; $7A2E: $50
    ld b, b                                       ; $7A2F: $40
    jr nz, jr_01C_7A8D                            ; $7A30: $20 $5B

    inc e                                         ; $7A32: $1C
    ld [hl], $7D                                  ; $7A33: $36 $7D
    rra                                           ; $7A35: $1F
    ld bc, $015C                                  ; $7A36: $01 $5C $01
    ld [bc], a                                    ; $7A39: $02
    ld l, [hl]                                    ; $7A3A: $6E
    rrca                                          ; $7A3B: $0F
    rst $38                                       ; $7A3C: $FF
    ld a, a                                       ; $7A3D: $7F
    halt                                          ; $7A3E: $76
    jr nz, jr_01C_7A50                            ; $7A3F: $20 $0F

    ld b, e                                       ; $7A41: $43
    ld de, $0504                                  ; $7A42: $11 $04 $05
    ld a, [bc]                                    ; $7A45: $0A
    inc e                                         ; $7A46: $1C
    ld [bc], a                                    ; $7A47: $02
    ld [hl], h                                    ; $7A48: $74
    ld b, l                                       ; $7A49: $45
    inc e                                         ; $7A4A: $1C
    ld h, d                                       ; $7A4B: $62
    ld a, b                                       ; $7A4C: $78
    and [hl]                                      ; $7A4D: $A6
    or b                                          ; $7A4E: $B0
    and d                                         ; $7A4F: $A2

jr_01C_7A50:
    dec bc                                        ; $7A50: $0B
    ld bc, $A2B0                                  ; $7A51: $01 $B0 $A2
    dec b                                         ; $7A54: $05
    ld bc, $0007                                  ; $7A55: $01 $07 $00
    add c                                         ; $7A58: $81
    ld e, l                                       ; $7A59: $5D
    ld b, l                                       ; $7A5A: $45
    inc e                                         ; $7A5B: $1C
    ld l, e                                       ; $7A5C: $6B
    ld a, d                                       ; $7A5D: $7A
    and [hl]                                      ; $7A5E: $A6
    or b                                          ; $7A5F: $B0
    and d                                         ; $7A60: $A2
    dec bc                                        ; $7A61: $0B
    ld bc, $A2B0                                  ; $7A62: $01 $B0 $A2
    dec b                                         ; $7A65: $05
    dec b                                         ; $7A66: $05
    rlca                                          ; $7A67: $07
    nop                                           ; $7A68: $00
    add c                                         ; $7A69: $81
    ld e, l                                       ; $7A6A: $5D
    ld b, b                                       ; $7A6B: $40
    jr nz, jr_01C_7AB5                            ; $7A6C: $20 $47

    rlca                                          ; $7A6E: $07
    inc e                                         ; $7A6F: $1C
    add h                                         ; $7A70: $84
    ld a, d                                       ; $7A71: $7A
    inc e                                         ; $7A72: $1C
    sub a                                         ; $7A73: $97
    ld a, d                                       ; $7A74: $7A
    inc e                                         ; $7A75: $1C

jr_01C_7A76:
    xor d                                         ; $7A76: $AA
    ld a, d                                       ; $7A77: $7A
    inc e                                         ; $7A78: $1C
    cp l                                          ; $7A79: $BD
    ld a, d                                       ; $7A7A: $7A
    inc e                                         ; $7A7B: $1C
    jp nc, $1C7A                                  ; $7A7C: $D2 $7A $1C

    rst $20                                       ; $7A7F: $E7
    ld a, d                                       ; $7A80: $7A
    inc e                                         ; $7A81: $1C
    db $FC                                        ; $7A82: $FC
    ld a, d                                       ; $7A83: $7A
    dec b                                         ; $7A84: $05
    ld [bc], a                                    ; $7A85: $02
    ld l, e                                       ; $7A86: $6B
    ld c, d                                       ; $7A87: $4A
    nop                                           ; $7A88: $00
    nop                                           ; $7A89: $00
    nop                                           ; $7A8A: $00
    ret nc                                        ; $7A8B: $D0

    nop                                           ; $7A8C: $00

jr_01C_7A8D:
    ld [hl+], a                                   ; $7A8D: $22
    inc b                                         ; $7A8E: $04
    ld b, b                                       ; $7A8F: $40
    ld [hl+], a                                   ; $7A90: $22
    inc b                                         ; $7A91: $04
    ld b, b                                       ; $7A92: $40
    ld b, l                                       ; $7A93: $45
    inc e                                         ; $7A94: $1C
    ld b, d                                       ; $7A95: $42
    ld a, e                                       ; $7A96: $7B
    dec b                                         ; $7A97: $05
    ld [bc], a                                    ; $7A98: $02
    ld l, e                                       ; $7A99: $6B
    ld c, d                                       ; $7A9A: $4A
    nop                                           ; $7A9B: $00
    nop                                           ; $7A9C: $00
    nop                                           ; $7A9D: $00
    ret nc                                        ; $7A9E: $D0

    nop                                           ; $7A9F: $00
    ld [hl+], a                                   ; $7AA0: $22
    inc b                                         ; $7AA1: $04
    ld b, b                                       ; $7AA2: $40
    ld [hl+], a                                   ; $7AA3: $22
    inc b                                         ; $7AA4: $04
    ld b, b                                       ; $7AA5: $40
    ld b, l                                       ; $7AA6: $45
    inc e                                         ; $7AA7: $1C
    ld b, d                                       ; $7AA8: $42
    ld a, e                                       ; $7AA9: $7B
    dec b                                         ; $7AAA: $05
    ld [bc], a                                    ; $7AAB: $02
    ld l, e                                       ; $7AAC: $6B
    ld c, d                                       ; $7AAD: $4A
    nop                                           ; $7AAE: $00
    nop                                           ; $7AAF: $00
    nop                                           ; $7AB0: $00
    ret nc                                        ; $7AB1: $D0

    nop                                           ; $7AB2: $00
    ld [hl+], a                                   ; $7AB3: $22
    inc b                                         ; $7AB4: $04

jr_01C_7AB5:
    ld b, b                                       ; $7AB5: $40
    ld [hl+], a                                   ; $7AB6: $22
    inc b                                         ; $7AB7: $04
    ld b, b                                       ; $7AB8: $40
    ld b, l                                       ; $7AB9: $45
    inc e                                         ; $7ABA: $1C
    ld b, d                                       ; $7ABB: $42
    ld a, e                                       ; $7ABC: $7B
    dec b                                         ; $7ABD: $05
    ld [bc], a                                    ; $7ABE: $02
    and h                                         ; $7ABF: $A4
    ld h, l                                       ; $7AC0: $65
    inc b                                         ; $7AC1: $04
    inc b                                         ; $7AC2: $04
    ld d, h                                       ; $7AC3: $54
    ret nc                                        ; $7AC4: $D0

    nop                                           ; $7AC5: $00
    ld de, $72AB                                  ; $7AC6: $11 $AB $72
    inc e                                         ; $7AC9: $1C
    rst $38                                       ; $7ACA: $FF
    ld a, h                                       ; $7ACB: $7C
    dec de                                        ; $7ACC: $1B
    rra                                           ; $7ACD: $1F
    ld b, l                                       ; $7ACE: $45
    inc e                                         ; $7ACF: $1C
    ld b, d                                       ; $7AD0: $42
    ld a, e                                       ; $7AD1: $7B
    dec b                                         ; $7AD2: $05
    ld [bc], a                                    ; $7AD3: $02
    and h                                         ; $7AD4: $A4
    ld h, l                                       ; $7AD5: $65
    inc b                                         ; $7AD6: $04
    ld [$D0A4], sp                                ; $7AD7: $08 $A4 $D0
    nop                                           ; $7ADA: $00
    ld de, $72AB                                  ; $7ADB: $11 $AB $72
    inc e                                         ; $7ADE: $1C
    rst $38                                       ; $7ADF: $FF
    ld a, h                                       ; $7AE0: $7C
    dec de                                        ; $7AE1: $1B
    rra                                           ; $7AE2: $1F
    ld b, l                                       ; $7AE3: $45
    inc e                                         ; $7AE4: $1C
    ld b, d                                       ; $7AE5: $42
    ld a, e                                       ; $7AE6: $7B
    dec b                                         ; $7AE7: $05
    ld [bc], a                                    ; $7AE8: $02
    and h                                         ; $7AE9: $A4
    ld h, l                                       ; $7AEA: $65
    inc b                                         ; $7AEB: $04
    inc c                                         ; $7AEC: $0C
    db $F4                                        ; $7AED: $F4
    ret nc                                        ; $7AEE: $D0

    nop                                           ; $7AEF: $00
    ld de, $72AB                                  ; $7AF0: $11 $AB $72
    inc e                                         ; $7AF3: $1C
    rst $38                                       ; $7AF4: $FF
    ld a, h                                       ; $7AF5: $7C
    dec de                                        ; $7AF6: $1B
    rra                                           ; $7AF7: $1F
    ld b, l                                       ; $7AF8: $45
    inc e                                         ; $7AF9: $1C
    ld b, d                                       ; $7AFA: $42
    ld a, e                                       ; $7AFB: $7B
    ld b, a                                       ; $7AFC: $47
    inc bc                                        ; $7AFD: $03
    inc e                                         ; $7AFE: $1C
    rlca                                          ; $7AFF: $07
    ld a, e                                       ; $7B00: $7B
    inc e                                         ; $7B01: $1C
    inc e                                         ; $7B02: $1C
    ld a, e                                       ; $7B03: $7B
    inc e                                         ; $7B04: $1C
    ld sp, $057B                                  ; $7B05: $31 $7B $05
    ld [bc], a                                    ; $7B08: $02
    and h                                         ; $7B09: $A4
    ld h, l                                       ; $7B0A: $65
    inc b                                         ; $7B0B: $04
    inc b                                         ; $7B0C: $04
    ld d, h                                       ; $7B0D: $54
    ret nc                                        ; $7B0E: $D0

    nop                                           ; $7B0F: $00
    ld de, $730C                                  ; $7B10: $11 $0C $73
    inc e                                         ; $7B13: $1C
    db $F4                                        ; $7B14: $F4
    ld a, h                                       ; $7B15: $7C
    dec de                                        ; $7B16: $1B
    rra                                           ; $7B17: $1F
    ld b, l                                       ; $7B18: $45
    inc e                                         ; $7B19: $1C
    ld b, d                                       ; $7B1A: $42
    ld a, e                                       ; $7B1B: $7B
    dec b                                         ; $7B1C: $05
    ld [bc], a                                    ; $7B1D: $02
    and h                                         ; $7B1E: $A4
    ld h, l                                       ; $7B1F: $65
    inc b                                         ; $7B20: $04
    ld [$D0A4], sp                                ; $7B21: $08 $A4 $D0
    nop                                           ; $7B24: $00
    ld de, $730C                                  ; $7B25: $11 $0C $73
    inc e                                         ; $7B28: $1C
    db $F4                                        ; $7B29: $F4
    ld a, h                                       ; $7B2A: $7C
    dec de                                        ; $7B2B: $1B
    rra                                           ; $7B2C: $1F
    ld b, l                                       ; $7B2D: $45
    inc e                                         ; $7B2E: $1C
    ld b, d                                       ; $7B2F: $42
    ld a, e                                       ; $7B30: $7B
    dec b                                         ; $7B31: $05
    ld [bc], a                                    ; $7B32: $02
    and h                                         ; $7B33: $A4
    ld h, l                                       ; $7B34: $65
    inc b                                         ; $7B35: $04
    inc c                                         ; $7B36: $0C
    db $F4                                        ; $7B37: $F4
    ret nc                                        ; $7B38: $D0

    nop                                           ; $7B39: $00
    ld de, $730C                                  ; $7B3A: $11 $0C $73
    inc e                                         ; $7B3D: $1C
    db $F4                                        ; $7B3E: $F4
    ld a, h                                       ; $7B3F: $7C
    dec de                                        ; $7B40: $1B
    rra                                           ; $7B41: $1F
    ld b, b                                       ; $7B42: $40
    jr nz, jr_01C_7B8C                            ; $7B43: $20 $47

    rlca                                          ; $7B45: $07
    inc e                                         ; $7B46: $1C
    ld e, e                                       ; $7B47: $5B
    ld a, e                                       ; $7B48: $7B
    inc e                                         ; $7B49: $1C
    ld l, [hl]                                    ; $7B4A: $6E
    ld a, e                                       ; $7B4B: $7B
    inc e                                         ; $7B4C: $1C
    add c                                         ; $7B4D: $81
    ld a, e                                       ; $7B4E: $7B
    inc e                                         ; $7B4F: $1C
    sub h                                         ; $7B50: $94
    ld a, e                                       ; $7B51: $7B
    inc e                                         ; $7B52: $1C
    xor c                                         ; $7B53: $A9
    ld a, e                                       ; $7B54: $7B
    inc e                                         ; $7B55: $1C
    cp [hl]                                       ; $7B56: $BE
    ld a, e                                       ; $7B57: $7B
    inc e                                         ; $7B58: $1C
    db $D3                                        ; $7B59: $D3
    ld a, e                                       ; $7B5A: $7B
    dec b                                         ; $7B5B: $05
    inc bc                                        ; $7B5C: $03
    ld l, e                                       ; $7B5D: $6B
    ld c, d                                       ; $7B5E: $4A
    nop                                           ; $7B5F: $00
    nop                                           ; $7B60: $00
    nop                                           ; $7B61: $00
    ret nc                                        ; $7B62: $D0

    nop                                           ; $7B63: $00
    ld [hl+], a                                   ; $7B64: $22
    inc b                                         ; $7B65: $04
    ld b, b                                       ; $7B66: $40
    ld [hl+], a                                   ; $7B67: $22
    inc b                                         ; $7B68: $04
    ld b, b                                       ; $7B69: $40
    ld b, l                                       ; $7B6A: $45
    inc e                                         ; $7B6B: $1C
    add hl, de                                    ; $7B6C: $19
    ld a, h                                       ; $7B6D: $7C
    dec b                                         ; $7B6E: $05
    inc bc                                        ; $7B6F: $03
    ld l, e                                       ; $7B70: $6B
    ld c, d                                       ; $7B71: $4A
    nop                                           ; $7B72: $00
    nop                                           ; $7B73: $00
    nop                                           ; $7B74: $00
    ret nc                                        ; $7B75: $D0

    nop                                           ; $7B76: $00
    ld [hl+], a                                   ; $7B77: $22
    inc b                                         ; $7B78: $04
    ld b, b                                       ; $7B79: $40
    ld [hl+], a                                   ; $7B7A: $22
    inc b                                         ; $7B7B: $04
    ld b, b                                       ; $7B7C: $40
    ld b, l                                       ; $7B7D: $45
    inc e                                         ; $7B7E: $1C
    add hl, de                                    ; $7B7F: $19
    ld a, h                                       ; $7B80: $7C
    dec b                                         ; $7B81: $05
    inc bc                                        ; $7B82: $03
    ld l, e                                       ; $7B83: $6B
    ld c, d                                       ; $7B84: $4A
    nop                                           ; $7B85: $00
    nop                                           ; $7B86: $00
    nop                                           ; $7B87: $00
    ret nc                                        ; $7B88: $D0

    nop                                           ; $7B89: $00
    ld [hl+], a                                   ; $7B8A: $22
    inc b                                         ; $7B8B: $04

jr_01C_7B8C:
    ld b, b                                       ; $7B8C: $40
    ld [hl+], a                                   ; $7B8D: $22
    inc b                                         ; $7B8E: $04
    ld b, b                                       ; $7B8F: $40
    ld b, l                                       ; $7B90: $45
    inc e                                         ; $7B91: $1C
    add hl, de                                    ; $7B92: $19
    ld a, h                                       ; $7B93: $7C
    dec b                                         ; $7B94: $05
    inc bc                                        ; $7B95: $03
    and h                                         ; $7B96: $A4
    ld h, l                                       ; $7B97: $65
    add hl, bc                                    ; $7B98: $09
    inc b                                         ; $7B99: $04
    ld e, c                                       ; $7B9A: $59
    ret nc                                        ; $7B9B: $D0

    nop                                           ; $7B9C: $00
    ld de, $72AB                                  ; $7B9D: $11 $AB $72
    inc e                                         ; $7BA0: $1C
    rst $38                                       ; $7BA1: $FF
    ld a, h                                       ; $7BA2: $7C
    dec de                                        ; $7BA3: $1B
    rra                                           ; $7BA4: $1F
    ld b, l                                       ; $7BA5: $45
    inc e                                         ; $7BA6: $1C
    add hl, de                                    ; $7BA7: $19
    ld a, h                                       ; $7BA8: $7C
    dec b                                         ; $7BA9: $05
    inc bc                                        ; $7BAA: $03
    and h                                         ; $7BAB: $A4
    ld h, l                                       ; $7BAC: $65
    add hl, bc                                    ; $7BAD: $09
    ld [$D0A9], sp                                ; $7BAE: $08 $A9 $D0
    nop                                           ; $7BB1: $00
    ld de, $72AB                                  ; $7BB2: $11 $AB $72
    inc e                                         ; $7BB5: $1C
    rst $38                                       ; $7BB6: $FF
    ld a, h                                       ; $7BB7: $7C
    dec de                                        ; $7BB8: $1B
    rra                                           ; $7BB9: $1F
    ld b, l                                       ; $7BBA: $45
    inc e                                         ; $7BBB: $1C
    add hl, de                                    ; $7BBC: $19
    ld a, h                                       ; $7BBD: $7C
    dec b                                         ; $7BBE: $05
    inc bc                                        ; $7BBF: $03
    and h                                         ; $7BC0: $A4
    ld h, l                                       ; $7BC1: $65
    add hl, bc                                    ; $7BC2: $09
    inc c                                         ; $7BC3: $0C
    ld sp, hl                                     ; $7BC4: $F9
    ret nc                                        ; $7BC5: $D0

    nop                                           ; $7BC6: $00
    ld de, $72AB                                  ; $7BC7: $11 $AB $72
    inc e                                         ; $7BCA: $1C
    rst $38                                       ; $7BCB: $FF
    ld a, h                                       ; $7BCC: $7C
    dec de                                        ; $7BCD: $1B
    rra                                           ; $7BCE: $1F
    ld b, l                                       ; $7BCF: $45
    inc e                                         ; $7BD0: $1C
    add hl, de                                    ; $7BD1: $19
    ld a, h                                       ; $7BD2: $7C
    ld b, a                                       ; $7BD3: $47
    inc bc                                        ; $7BD4: $03
    inc e                                         ; $7BD5: $1C
    sbc $7B                                       ; $7BD6: $DE $7B
    inc e                                         ; $7BD8: $1C
    di                                            ; $7BD9: $F3
    ld a, e                                       ; $7BDA: $7B
    inc e                                         ; $7BDB: $1C
    ld [$057C], sp                                ; $7BDC: $08 $7C $05
    inc bc                                        ; $7BDF: $03
    and h                                         ; $7BE0: $A4
    ld h, l                                       ; $7BE1: $65
    add hl, bc                                    ; $7BE2: $09
    inc b                                         ; $7BE3: $04
    ld e, c                                       ; $7BE4: $59
    ret nc                                        ; $7BE5: $D0

    nop                                           ; $7BE6: $00
    ld de, $730C                                  ; $7BE7: $11 $0C $73
    inc e                                         ; $7BEA: $1C
    db $F4                                        ; $7BEB: $F4
    ld a, h                                       ; $7BEC: $7C
    dec de                                        ; $7BED: $1B
    rra                                           ; $7BEE: $1F
    ld b, l                                       ; $7BEF: $45
    inc e                                         ; $7BF0: $1C
    add hl, de                                    ; $7BF1: $19
    ld a, h                                       ; $7BF2: $7C
    dec b                                         ; $7BF3: $05
    inc bc                                        ; $7BF4: $03
    and h                                         ; $7BF5: $A4
    ld h, l                                       ; $7BF6: $65
    add hl, bc                                    ; $7BF7: $09
    ld [$D0A9], sp                                ; $7BF8: $08 $A9 $D0
    nop                                           ; $7BFB: $00
    ld de, $730C                                  ; $7BFC: $11 $0C $73
    inc e                                         ; $7BFF: $1C
    db $F4                                        ; $7C00: $F4
    ld a, h                                       ; $7C01: $7C
    dec de                                        ; $7C02: $1B
    rra                                           ; $7C03: $1F
    ld b, l                                       ; $7C04: $45
    inc e                                         ; $7C05: $1C
    add hl, de                                    ; $7C06: $19
    ld a, h                                       ; $7C07: $7C
    dec b                                         ; $7C08: $05
    inc bc                                        ; $7C09: $03
    and h                                         ; $7C0A: $A4
    ld h, l                                       ; $7C0B: $65
    add hl, bc                                    ; $7C0C: $09
    inc c                                         ; $7C0D: $0C
    ld sp, hl                                     ; $7C0E: $F9
    ret nc                                        ; $7C0F: $D0

    nop                                           ; $7C10: $00
    ld de, $730C                                  ; $7C11: $11 $0C $73
    inc e                                         ; $7C14: $1C
    db $F4                                        ; $7C15: $F4
    ld a, h                                       ; $7C16: $7C
    dec de                                        ; $7C17: $1B
    rra                                           ; $7C18: $1F
    ld b, b                                       ; $7C19: $40
    jr nz, jr_01C_7C63                            ; $7C1A: $20 $47

    rlca                                          ; $7C1C: $07
    inc e                                         ; $7C1D: $1C
    ld [hl-], a                                   ; $7C1E: $32
    ld a, h                                       ; $7C1F: $7C
    inc e                                         ; $7C20: $1C
    ld b, l                                       ; $7C21: $45
    ld a, h                                       ; $7C22: $7C
    inc e                                         ; $7C23: $1C
    ld e, b                                       ; $7C24: $58
    ld a, h                                       ; $7C25: $7C
    inc e                                         ; $7C26: $1C
    ld l, e                                       ; $7C27: $6B
    ld a, h                                       ; $7C28: $7C
    inc e                                         ; $7C29: $1C
    add b                                         ; $7C2A: $80
    ld a, h                                       ; $7C2B: $7C
    inc e                                         ; $7C2C: $1C
    sub l                                         ; $7C2D: $95
    ld a, h                                       ; $7C2E: $7C
    inc e                                         ; $7C2F: $1C
    xor d                                         ; $7C30: $AA
    ld a, h                                       ; $7C31: $7C
    dec b                                         ; $7C32: $05
    inc b                                         ; $7C33: $04
    ld l, e                                       ; $7C34: $6B
    ld c, d                                       ; $7C35: $4A
    nop                                           ; $7C36: $00
    nop                                           ; $7C37: $00
    nop                                           ; $7C38: $00
    ret nc                                        ; $7C39: $D0

    nop                                           ; $7C3A: $00
    ld [hl+], a                                   ; $7C3B: $22
    inc b                                         ; $7C3C: $04
    ld b, b                                       ; $7C3D: $40
    ld [hl+], a                                   ; $7C3E: $22
    inc b                                         ; $7C3F: $04
    ld b, b                                       ; $7C40: $40
    ld b, l                                       ; $7C41: $45
    inc e                                         ; $7C42: $1C
    ld l, e                                       ; $7C43: $6B
    ld a, d                                       ; $7C44: $7A
    dec b                                         ; $7C45: $05
    inc b                                         ; $7C46: $04
    ld l, e                                       ; $7C47: $6B
    ld c, d                                       ; $7C48: $4A
    nop                                           ; $7C49: $00
    nop                                           ; $7C4A: $00
    nop                                           ; $7C4B: $00
    ret nc                                        ; $7C4C: $D0

    nop                                           ; $7C4D: $00
    ld [hl+], a                                   ; $7C4E: $22
    inc b                                         ; $7C4F: $04
    ld b, b                                       ; $7C50: $40
    ld [hl+], a                                   ; $7C51: $22
    inc b                                         ; $7C52: $04
    ld b, b                                       ; $7C53: $40
    ld b, l                                       ; $7C54: $45
    inc e                                         ; $7C55: $1C
    ld l, e                                       ; $7C56: $6B
    ld a, d                                       ; $7C57: $7A
    dec b                                         ; $7C58: $05
    inc b                                         ; $7C59: $04
    ld l, e                                       ; $7C5A: $6B
    ld c, d                                       ; $7C5B: $4A
    nop                                           ; $7C5C: $00
    nop                                           ; $7C5D: $00
    nop                                           ; $7C5E: $00
    ret nc                                        ; $7C5F: $D0

    nop                                           ; $7C60: $00
    ld [hl+], a                                   ; $7C61: $22
    inc b                                         ; $7C62: $04

jr_01C_7C63:
    ld b, b                                       ; $7C63: $40
    ld [hl+], a                                   ; $7C64: $22
    inc b                                         ; $7C65: $04
    ld b, b                                       ; $7C66: $40
    ld b, l                                       ; $7C67: $45
    inc e                                         ; $7C68: $1C
    ld l, e                                       ; $7C69: $6B
    ld a, d                                       ; $7C6A: $7A
    dec b                                         ; $7C6B: $05
    inc b                                         ; $7C6C: $04
    and h                                         ; $7C6D: $A4
    ld h, l                                       ; $7C6E: $65
    ld c, $04                                     ; $7C6F: $0E $04
    ld e, [hl]                                    ; $7C71: $5E
    ret nc                                        ; $7C72: $D0

    nop                                           ; $7C73: $00
    ld de, $72AB                                  ; $7C74: $11 $AB $72
    inc e                                         ; $7C77: $1C
    rst $38                                       ; $7C78: $FF
    ld a, h                                       ; $7C79: $7C
    dec de                                        ; $7C7A: $1B
    rra                                           ; $7C7B: $1F
    ld b, l                                       ; $7C7C: $45
    inc e                                         ; $7C7D: $1C
    ld l, e                                       ; $7C7E: $6B
    ld a, d                                       ; $7C7F: $7A
    dec b                                         ; $7C80: $05
    inc b                                         ; $7C81: $04
    and h                                         ; $7C82: $A4
    ld h, l                                       ; $7C83: $65
    ld c, $08                                     ; $7C84: $0E $08
    xor [hl]                                      ; $7C86: $AE
    ret nc                                        ; $7C87: $D0

    nop                                           ; $7C88: $00
    ld de, $72AB                                  ; $7C89: $11 $AB $72
    inc e                                         ; $7C8C: $1C
    rst $38                                       ; $7C8D: $FF
    ld a, h                                       ; $7C8E: $7C
    dec de                                        ; $7C8F: $1B
    rra                                           ; $7C90: $1F
    ld b, l                                       ; $7C91: $45
    inc e                                         ; $7C92: $1C
    ld l, e                                       ; $7C93: $6B
    ld a, d                                       ; $7C94: $7A
    dec b                                         ; $7C95: $05
    inc b                                         ; $7C96: $04
    and h                                         ; $7C97: $A4
    ld h, l                                       ; $7C98: $65
    ld c, $0C                                     ; $7C99: $0E $0C
    cp $D0                                        ; $7C9B: $FE $D0
    nop                                           ; $7C9D: $00
    ld de, $72AB                                  ; $7C9E: $11 $AB $72
    inc e                                         ; $7CA1: $1C
    rst $38                                       ; $7CA2: $FF
    ld a, h                                       ; $7CA3: $7C
    dec de                                        ; $7CA4: $1B
    rra                                           ; $7CA5: $1F
    ld b, l                                       ; $7CA6: $45
    inc e                                         ; $7CA7: $1C
    ld l, e                                       ; $7CA8: $6B
    ld a, d                                       ; $7CA9: $7A
    ld b, a                                       ; $7CAA: $47
    inc bc                                        ; $7CAB: $03
    inc e                                         ; $7CAC: $1C
    or l                                          ; $7CAD: $B5
    ld a, h                                       ; $7CAE: $7C
    inc e                                         ; $7CAF: $1C
    jp z, $1C7C                                   ; $7CB0: $CA $7C $1C

    rst $18                                       ; $7CB3: $DF
    ld a, h                                       ; $7CB4: $7C
    dec b                                         ; $7CB5: $05
    inc b                                         ; $7CB6: $04
    and h                                         ; $7CB7: $A4
    ld h, l                                       ; $7CB8: $65
    ld c, $04                                     ; $7CB9: $0E $04
    ld e, [hl]                                    ; $7CBB: $5E
    ret nc                                        ; $7CBC: $D0

    nop                                           ; $7CBD: $00
    ld de, $730C                                  ; $7CBE: $11 $0C $73
    inc e                                         ; $7CC1: $1C
    db $F4                                        ; $7CC2: $F4
    ld a, h                                       ; $7CC3: $7C
    dec de                                        ; $7CC4: $1B
    rra                                           ; $7CC5: $1F
    ld b, l                                       ; $7CC6: $45
    inc e                                         ; $7CC7: $1C
    ld l, e                                       ; $7CC8: $6B
    ld a, d                                       ; $7CC9: $7A
    dec b                                         ; $7CCA: $05
    inc b                                         ; $7CCB: $04
    and h                                         ; $7CCC: $A4
    ld h, l                                       ; $7CCD: $65
    ld c, $08                                     ; $7CCE: $0E $08
    xor [hl]                                      ; $7CD0: $AE
    ret nc                                        ; $7CD1: $D0

    nop                                           ; $7CD2: $00
    ld de, $730C                                  ; $7CD3: $11 $0C $73
    inc e                                         ; $7CD6: $1C
    db $F4                                        ; $7CD7: $F4
    ld a, h                                       ; $7CD8: $7C
    dec de                                        ; $7CD9: $1B
    rra                                           ; $7CDA: $1F
    ld b, l                                       ; $7CDB: $45
    inc e                                         ; $7CDC: $1C
    ld l, e                                       ; $7CDD: $6B
    ld a, d                                       ; $7CDE: $7A
    dec b                                         ; $7CDF: $05
    inc b                                         ; $7CE0: $04
    and h                                         ; $7CE1: $A4
    ld h, l                                       ; $7CE2: $65
    ld c, $0C                                     ; $7CE3: $0E $0C
    cp $D0                                        ; $7CE5: $FE $D0
    nop                                           ; $7CE7: $00
    ld de, $730C                                  ; $7CE8: $11 $0C $73
    inc e                                         ; $7CEB: $1C
    db $F4                                        ; $7CEC: $F4
    ld a, h                                       ; $7CED: $7C
    dec de                                        ; $7CEE: $1B
    rra                                           ; $7CEF: $1F
    ld b, l                                       ; $7CF0: $45
    inc e                                         ; $7CF1: $1C
    ld l, e                                       ; $7CF2: $6B
    ld a, d                                       ; $7CF3: $7A
    inc d                                         ; $7CF4: $14
    ld de, $7325                                  ; $7CF5: $11 $25 $73
    dec de                                        ; $7CF8: $1B
    ld c, $5A                                     ; $7CF9: $0E $5A
    inc e                                         ; $7CFB: $1C
    ld e, [hl]                                    ; $7CFC: $5E
    ld a, d                                       ; $7CFD: $7A
    ld b, d                                       ; $7CFE: $42
    inc d                                         ; $7CFF: $14
    ld de, $72C4                                  ; $7D00: $11 $C4 $72
    dec de                                        ; $7D03: $1B
    ld c, $5A                                     ; $7D04: $0E $5A
    inc e                                         ; $7D06: $1C
    ld c, l                                       ; $7D07: $4D
    ld a, d                                       ; $7D08: $7A
    ld b, d                                       ; $7D09: $42
    ld b, b                                       ; $7D0A: $40
    rst $38                                       ; $7D0B: $FF
    ld b, b                                       ; $7D0C: $40
    rst $38                                       ; $7D0D: $FF
    ld b, b                                       ; $7D0E: $40
    rst $38                                       ; $7D0F: $FF
    ld b, b                                       ; $7D10: $40
    rst $38                                       ; $7D11: $FF
    ld b, b                                       ; $7D12: $40
    rst $38                                       ; $7D13: $FF
    ld b, b                                       ; $7D14: $40
    rst $38                                       ; $7D15: $FF
    ld b, b                                       ; $7D16: $40
    rst $38                                       ; $7D17: $FF
    ld b, b                                       ; $7D18: $40
    rst $38                                       ; $7D19: $FF
    ld b, b                                       ; $7D1A: $40
    rst $38                                       ; $7D1B: $FF
    ld b, b                                       ; $7D1C: $40
    rst $38                                       ; $7D1D: $FF
    ld e, h                                       ; $7D1E: $5C
    nop                                           ; $7D1F: $00
    ld [bc], a                                    ; $7D20: $02
    ld b, d                                       ; $7D21: $42
    sbc a                                         ; $7D22: $9F
    ld b, c                                       ; $7D23: $41
    ld c, [hl]                                    ; $7D24: $4E
    ld c, a                                       ; $7D25: $4F
    ld d, h                                       ; $7D26: $54
    ld c, b                                       ; $7D27: $48
    ld b, l                                       ; $7D28: $45
    ld d, d                                       ; $7D29: $52
    jr nz, jr_01C_7D6E                            ; $7D2A: $20 $42

    ld d, d                                       ; $7D2C: $52
    ld d, l                                       ; $7D2D: $55
    ld b, d                                       ; $7D2E: $42
    ld hl, $FDFF                                  ; $7D2F: $21 $FF $FD
    sbc d                                         ; $7D32: $9A
    ld e, b                                       ; $7D33: $58
    ld bc, $9F42                                  ; $7D34: $01 $42 $9F
    ld d, h                                       ; $7D37: $54
    ld c, c                                       ; $7D38: $49
    ld c, l                                       ; $7D39: $4D
    ld b, l                                       ; $7D3A: $45
    daa                                           ; $7D3B: $27
    ld d, e                                       ; $7D3C: $53
    jr nz, jr_01C_7D94                            ; $7D3D: $20 $55

    ld d, b                                       ; $7D3F: $50
    ld hl, $FDFE                                  ; $7D40: $21 $FE $FD
    sbc d                                         ; $7D43: $9A
    ld e, h                                       ; $7D44: $5C
    ld bc, $4202                                  ; $7D45: $01 $02 $42
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

jr_01C_7D6E:
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

jr_01C_7D94:
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
