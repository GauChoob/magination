SECTION "ROM Bank $02e", ROMX[$4000], BANK[$2e]

    ld e, e                                       ; $4000: $5B
    ld l, $08                                     ; $4001: $2E $08
    ld b, b                                       ; $4003: $40
    ld b, l                                       ; $4004: $45
    ld c, $4A                                     ; $4005: $0E $4A
    ld e, c                                       ; $4007: $59
    xor h                                         ; $4008: $AC
    cp d                                          ; $4009: $BA
    and d                                         ; $400A: $A2
    nop                                           ; $400B: $00
    sbc e                                         ; $400C: $9B
    ret c                                         ; $400D: $D8

    ld b, a                                       ; $400E: $47
    sbc a                                         ; $400F: $9F
    ld b, a                                       ; $4010: $47
    ld l, a                                       ; $4011: $6F
    jr nz, jr_02E_4075                            ; $4012: $20 $61

    ld l, b                                       ; $4014: $68
    ld h, l                                       ; $4015: $65
    ld h, c                                       ; $4016: $61
    ld h, h                                       ; $4017: $64
    ld l, $FF                                     ; $4018: $2E $FF
    ld b, c                                       ; $401A: $41
    ld [hl], e                                    ; $401B: $73
    ld l, e                                       ; $401C: $6B
    jr nz, jr_02E_408C                            ; $401D: $20 $6D

    ld h, l                                       ; $401F: $65
    cp $61                                        ; $4020: $FE $61
    ld l, [hl]                                    ; $4022: $6E
    ld a, c                                       ; $4023: $79
    ld [hl], h                                    ; $4024: $74
    ld l, b                                       ; $4025: $68
    ld l, c                                       ; $4026: $69
    ld l, [hl]                                    ; $4027: $6E
    ld h, a                                       ; $4028: $67
    ld l, $FE                                     ; $4029: $2E $FE
    db $FD                                        ; $402B: $FD
    sbc d                                         ; $402C: $9A
    adc e                                         ; $402D: $8B
    sbc e                                         ; $402E: $9B
    ret c                                         ; $402F: $D8

    ld b, a                                       ; $4030: $47
    ld c, e                                       ; $4031: $4B
    ld bc, $CCFD                                  ; $4032: $01 $FD $CC
    ld l, $00                                     ; $4035: $2E $00
    nop                                           ; $4037: $00
    dec hl                                        ; $4038: $2B
    ld b, c                                       ; $4039: $41
    ld l, $02                                     ; $403A: $2E $02
    nop                                           ; $403C: $00
    dec e                                         ; $403D: $1D
    ld c, d                                       ; $403E: $4A
    ld l, $03                                     ; $403F: $2E $03
    nop                                           ; $4041: $00
    ld l, b                                       ; $4042: $68
    ld d, e                                       ; $4043: $53
    rst $38                                       ; $4044: $FF
    sbc a                                         ; $4045: $9F
    ld e, d                                       ; $4046: $5A
    ld e, d                                       ; $4047: $5A
    ld e, d                                       ; $4048: $5A
    ld a, d                                       ; $4049: $7A
    ld a, d                                       ; $404A: $7A
    ld a, d                                       ; $404B: $7A
    ld l, $2E                                     ; $404C: $2E $2E
    ld l, $FE                                     ; $404E: $2E $FE
    db $FD                                        ; $4050: $FD
    sbc e                                         ; $4051: $9B
    ld a, b                                       ; $4052: $78
    ld [hl], b                                    ; $4053: $70
    sbc a                                         ; $4054: $9F
    ld c, b                                       ; $4055: $48
    ld h, l                                       ; $4056: $65
    daa                                           ; $4057: $27
    ld [hl], e                                    ; $4058: $73
    jr nz, jr_02E_40C1                            ; $4059: $20 $66

    ld h, c                                       ; $405B: $61
    ld l, h                                       ; $405C: $6C
    ld l, h                                       ; $405D: $6C
    ld h, l                                       ; $405E: $65
    ld l, [hl]                                    ; $405F: $6E
    rst $38                                       ; $4060: $FF
    ld h, c                                       ; $4061: $61
    ld [hl], e                                    ; $4062: $73
    ld l, h                                       ; $4063: $6C
    ld h, l                                       ; $4064: $65
    ld h, l                                       ; $4065: $65
    ld [hl], b                                    ; $4066: $70
    ld l, $FE                                     ; $4067: $2E $FE
    db $FD                                        ; $4069: $FD
    sbc d                                         ; $406A: $9A
    ld [de], a                                    ; $406B: $12
    xor h                                         ; $406C: $AC
    cp d                                          ; $406D: $BA
    and d                                         ; $406E: $A2
    ld [bc], a                                    ; $406F: $02
    adc e                                         ; $4070: $8B
    sbc e                                         ; $4071: $9B
    ret c                                         ; $4072: $D8

    ld h, b                                       ; $4073: $60
    ld c, e                                       ; $4074: $4B

jr_02E_4075:
    ld bc, $CCFD                                  ; $4075: $01 $FD $CC
    ld l, $00                                     ; $4078: $2E $00
    nop                                           ; $407A: $00
    dec hl                                        ; $407B: $2B
    ld b, c                                       ; $407C: $41
    ld l, $02                                     ; $407D: $2E $02
    nop                                           ; $407F: $00
    dec e                                         ; $4080: $1D
    ld c, d                                       ; $4081: $4A
    ld l, $03                                     ; $4082: $2E $03
    nop                                           ; $4084: $00
    ld l, b                                       ; $4085: $68
    ld d, e                                       ; $4086: $53
    rst $38                                       ; $4087: $FF
    sbc a                                         ; $4088: $9F
    ld c, [hl]                                    ; $4089: $4E
    ld l, c                                       ; $408A: $69
    ld h, e                                       ; $408B: $63

jr_02E_408C:
    ld h, l                                       ; $408C: $65
    jr nz, jr_02E_4103                            ; $408D: $20 $74

    ld h, c                                       ; $408F: $61
    ld l, h                                       ; $4090: $6C
    ld l, e                                       ; $4091: $6B
    ld l, c                                       ; $4092: $69
    ld l, [hl]                                    ; $4093: $6E
    ld h, a                                       ; $4094: $67
    rst $38                                       ; $4095: $FF
    ld [hl], h                                    ; $4096: $74
    ld l, a                                       ; $4097: $6F
    jr nz, jr_02E_4113                            ; $4098: $20 $79

    ld l, a                                       ; $409A: $6F
    ld [hl], l                                    ; $409B: $75
    ld l, $FE                                     ; $409C: $2E $FE
    db $FD                                        ; $409E: $FD
    sbc d                                         ; $409F: $9A
    ld e, b                                       ; $40A0: $58
    ld bc, $AC42                                  ; $40A1: $01 $42 $AC
    cp d                                          ; $40A4: $BA
    and d                                         ; $40A5: $A2
    ld bc, $9B8B                                  ; $40A6: $01 $8B $9B
    ret c                                         ; $40A9: $D8

    ld h, b                                       ; $40AA: $60
    ld c, e                                       ; $40AB: $4B
    ld bc, $CCFD                                  ; $40AC: $01 $FD $CC
    ld l, $00                                     ; $40AF: $2E $00
    nop                                           ; $40B1: $00
    push de                                       ; $40B2: $D5
    ld b, b                                       ; $40B3: $40
    ld l, $02                                     ; $40B4: $2E $02
    nop                                           ; $40B6: $00
    dec e                                         ; $40B7: $1D
    ld c, d                                       ; $40B8: $4A
    ld l, $03                                     ; $40B9: $2E $03
    nop                                           ; $40BB: $00
    ld l, b                                       ; $40BC: $68
    ld d, e                                       ; $40BD: $53
    rst $38                                       ; $40BE: $FF
    sbc a                                         ; $40BF: $9F
    ld d, a                                       ; $40C0: $57

jr_02E_40C1:
    ld h, l                                       ; $40C1: $65
    ld l, h                                       ; $40C2: $6C
    ld l, h                                       ; $40C3: $6C
    ld l, $2E                                     ; $40C4: $2E $2E
    ld l, $FE                                     ; $40C6: $2E $FE
    ld b, a                                       ; $40C8: $47
    ld l, a                                       ; $40C9: $6F
    ld l, a                                       ; $40CA: $6F
    ld h, h                                       ; $40CB: $64
    dec l                                         ; $40CC: $2D
    ld h, d                                       ; $40CD: $62
    ld a, c                                       ; $40CE: $79
    ld h, l                                       ; $40CF: $65
    ld l, $FE                                     ; $40D0: $2E $FE
    db $FD                                        ; $40D2: $FD
    sbc d                                         ; $40D3: $9A
    ld [de], a                                    ; $40D4: $12
    ld b, e                                       ; $40D5: $43
    rrca                                          ; $40D6: $0F
    ld bc, $CCFC                                  ; $40D7: $01 $FC $CC
    ld b, $22                                     ; $40DA: $06 $22
    nop                                           ; $40DC: $00
    jr jr_02E_4140                                ; $40DD: $18 $61

    ld l, e                                       ; $40DF: $6B
    ld b, [hl]                                    ; $40E0: $46
    dec hl                                        ; $40E1: $2B
    ld b, c                                       ; $40E2: $41
    ld c, e                                       ; $40E3: $4B
    ld bc, $A2BA                                  ; $40E4: $01 $BA $A2
    ld l, $00                                     ; $40E7: $2E $00
    nop                                           ; $40E9: $00
    ei                                            ; $40EA: $FB
    ld b, b                                       ; $40EB: $40
    ld l, $01                                     ; $40EC: $2E $01
    nop                                           ; $40EE: $00
    rst $38                                       ; $40EF: $FF
    ld b, b                                       ; $40F0: $40
    ld l, $02                                     ; $40F1: $2E $02
    nop                                           ; $40F3: $00
    inc bc                                        ; $40F4: $03
    ld b, c                                       ; $40F5: $41
    rst $38                                       ; $40F6: $FF
    ld b, l                                       ; $40F7: $45
    ld l, $A3                                     ; $40F8: $2E $A3
    ld b, b                                       ; $40FA: $40
    ld b, l                                       ; $40FB: $45
    ld l, $2D                                     ; $40FC: $2E $2D
    ld b, b                                       ; $40FE: $40
    ld b, l                                       ; $40FF: $45
    ld l, $A3                                     ; $4100: $2E $A3
    ld b, b                                       ; $4102: $40

jr_02E_4103:
    ld b, l                                       ; $4103: $45
    ld l, $6C                                     ; $4104: $2E $6C
    ld b, b                                       ; $4106: $40
    sbc a                                         ; $4107: $9F
    ld c, c                                       ; $4108: $49
    jr nz, jr_02E_416F                            ; $4109: $20 $64

    ld l, a                                       ; $410B: $6F
    ld l, [hl]                                    ; $410C: $6E
    daa                                           ; $410D: $27
    ld [hl], h                                    ; $410E: $74
    jr nz, jr_02E_417C                            ; $410F: $20 $6B

    ld l, [hl]                                    ; $4111: $6E
    ld l, a                                       ; $4112: $6F

jr_02E_4113:
    ld [hl], a                                    ; $4113: $77
    rst $38                                       ; $4114: $FF
    ld h, c                                       ; $4115: $61
    ld h, d                                       ; $4116: $62
    ld l, a                                       ; $4117: $6F
    ld [hl], l                                    ; $4118: $75
    ld [hl], h                                    ; $4119: $74
    jr nz, jr_02E_4190                            ; $411A: $20 $74

    ld l, b                                       ; $411C: $68
    ld h, c                                       ; $411D: $61
    ld [hl], h                                    ; $411E: $74
    jr nz, jr_02E_4190                            ; $411F: $20 $6F

    ld l, [hl]                                    ; $4121: $6E
    ld h, l                                       ; $4122: $65
    ld l, $FE                                     ; $4123: $2E $FE
    db $FD                                        ; $4125: $FD
    sbc d                                         ; $4126: $9A
    ld b, l                                       ; $4127: $45
    ld l, $E3                                     ; $4128: $2E $E3
    ld b, b                                       ; $412A: $40
    ld c, e                                       ; $412B: $4B
    ld bc, $CCFC                                  ; $412C: $01 $FC $CC
    ld l, $22                                     ; $412F: $2E $22
    nop                                           ; $4131: $00
    jr jr_02E_4177                                ; $4132: $18 $43

    ld l, $01                                     ; $4134: $2E $01
    nop                                           ; $4136: $00
    ld d, h                                       ; $4137: $54
    ld b, e                                       ; $4138: $43
    ld l, $02                                     ; $4139: $2E $02
    nop                                           ; $413B: $00
    adc l                                         ; $413C: $8D
    ld b, e                                       ; $413D: $43
    ld l, $03                                     ; $413E: $2E $03

jr_02E_4140:
    nop                                           ; $4140: $00
    or h                                          ; $4141: $B4
    ld b, e                                       ; $4142: $43
    ld l, $04                                     ; $4143: $2E $04
    nop                                           ; $4145: $00
    push hl                                       ; $4146: $E5
    ld b, e                                       ; $4147: $43
    ld l, $05                                     ; $4148: $2E $05
    nop                                           ; $414A: $00
    inc e                                         ; $414B: $1C
    ld b, h                                       ; $414C: $44
    ld l, $0B                                     ; $414D: $2E $0B
    nop                                           ; $414F: $00
    ld d, e                                       ; $4150: $53
    ld b, h                                       ; $4151: $44
    ld l, $09                                     ; $4152: $2E $09
    nop                                           ; $4154: $00
    sub l                                         ; $4155: $95
    ld b, h                                       ; $4156: $44
    ld l, $0A                                     ; $4157: $2E $0A
    nop                                           ; $4159: $00
    push de                                       ; $415A: $D5
    ld b, h                                       ; $415B: $44
    ld l, $0C                                     ; $415C: $2E $0C
    nop                                           ; $415E: $00
    ld a, [de]                                    ; $415F: $1A
    ld b, l                                       ; $4160: $45
    ld l, $08                                     ; $4161: $2E $08
    nop                                           ; $4163: $00
    ld h, d                                       ; $4164: $62
    ld b, l                                       ; $4165: $45
    ld l, $0D                                     ; $4166: $2E $0D
    nop                                           ; $4168: $00
    and b                                         ; $4169: $A0
    ld b, l                                       ; $416A: $45
    ld l, $0E                                     ; $416B: $2E $0E
    nop                                           ; $416D: $00
    ret c                                         ; $416E: $D8

jr_02E_416F:
    ld b, l                                       ; $416F: $45
    ld l, $0F                                     ; $4170: $2E $0F
    nop                                           ; $4172: $00
    dec d                                         ; $4173: $15
    ld b, [hl]                                    ; $4174: $46
    ld l, $10                                     ; $4175: $2E $10

jr_02E_4177:
    nop                                           ; $4177: $00
    ld d, c                                       ; $4178: $51
    ld b, [hl]                                    ; $4179: $46
    ld l, $11                                     ; $417A: $2E $11

jr_02E_417C:
    nop                                           ; $417C: $00
    add b                                         ; $417D: $80
    ld b, [hl]                                    ; $417E: $46
    ld l, $12                                     ; $417F: $2E $12
    nop                                           ; $4181: $00
    xor a                                         ; $4182: $AF
    ld b, [hl]                                    ; $4183: $46
    ld l, $13                                     ; $4184: $2E $13
    nop                                           ; $4186: $00
    db $E4                                        ; $4187: $E4
    ld b, [hl]                                    ; $4188: $46
    ld l, $14                                     ; $4189: $2E $14
    nop                                           ; $418B: $00
    add hl, de                                    ; $418C: $19
    ld b, a                                       ; $418D: $47
    ld l, $15                                     ; $418E: $2E $15

jr_02E_4190:
    nop                                           ; $4190: $00
    ld b, [hl]                                    ; $4191: $46
    ld b, a                                       ; $4192: $47
    ld l, $16                                     ; $4193: $2E $16
    nop                                           ; $4195: $00
    ld a, e                                       ; $4196: $7B
    ld b, a                                       ; $4197: $47
    ld l, $17                                     ; $4198: $2E $17
    nop                                           ; $419A: $00
    call z, $2E47                                 ; $419B: $CC $47 $2E
    jr jr_02E_41A0                                ; $419E: $18 $00

jr_02E_41A0:
    dec e                                         ; $41A0: $1D
    ld c, b                                       ; $41A1: $48
    ld l, $19                                     ; $41A2: $2E $19
    nop                                           ; $41A4: $00
    ld [hl], h                                    ; $41A5: $74
    ld c, b                                       ; $41A6: $48
    ld l, $1A                                     ; $41A7: $2E $1A
    nop                                           ; $41A9: $00
    bit 1, b                                      ; $41AA: $CB $48
    ld l, $1B                                     ; $41AC: $2E $1B
    nop                                           ; $41AE: $00
    ld a, [de]                                    ; $41AF: $1A
    ld c, c                                       ; $41B0: $49
    ld l, $1C                                     ; $41B1: $2E $1C
    nop                                           ; $41B3: $00
    xor e                                         ; $41B4: $AB
    ld c, c                                       ; $41B5: $49
    ld l, $21                                     ; $41B6: $2E $21
    nop                                           ; $41B8: $00
    xor e                                         ; $41B9: $AB
    ld c, c                                       ; $41BA: $49
    ld l, $23                                     ; $41BB: $2E $23
    nop                                           ; $41BD: $00
    add sp, $49                                   ; $41BE: $E8 $49
    ld l, $07                                     ; $41C0: $2E $07
    nop                                           ; $41C2: $00
    ld l, l                                       ; $41C3: $6D
    ld b, d                                       ; $41C4: $42
    ld l, $06                                     ; $41C5: $2E $06
    nop                                           ; $41C7: $00
    sbc a                                         ; $41C8: $9F
    ld b, d                                       ; $41C9: $42
    ld l, $2B                                     ; $41CA: $2E $2B
    nop                                           ; $41CC: $00
    push de                                       ; $41CD: $D5
    ld b, d                                       ; $41CE: $42
    ld l, $2D                                     ; $41CF: $2E $2D
    nop                                           ; $41D1: $00
    dec hl                                        ; $41D2: $2B
    ld b, d                                       ; $41D3: $42
    ld l, $2A                                     ; $41D4: $2E $2A
    nop                                           ; $41D6: $00
    db $DD                                        ; $41D7: $DD
    ld b, c                                       ; $41D8: $41
    rst $38                                       ; $41D9: $FF
    ld b, [hl]                                    ; $41DA: $46
    rlca                                          ; $41DB: $07
    ld b, c                                       ; $41DC: $41
    sbc a                                         ; $41DD: $9F
    ld c, b                                       ; $41DE: $48
    ld l, l                                       ; $41DF: $6D
    ld l, l                                       ; $41E0: $6D
    ld l, l                                       ; $41E1: $6D
    ld l, $2E                                     ; $41E2: $2E $2E
    ld l, $20                                     ; $41E4: $2E $20
    ld c, c                                       ; $41E6: $49
    ld [hl], h                                    ; $41E7: $74
    daa                                           ; $41E8: $27
    ld [hl], e                                    ; $41E9: $73
    jr nz, jr_02E_424D                            ; $41EA: $20 $61

    ld l, [hl]                                    ; $41EC: $6E
    rst $38                                       ; $41ED: $FF
    ld h, l                                       ; $41EE: $65
    ld a, b                                       ; $41EF: $78
    ld [hl], b                                    ; $41F0: $70
    ld l, h                                       ; $41F1: $6C
    ld l, a                                       ; $41F2: $6F
    ld [hl], e                                    ; $41F3: $73
    ld l, c                                       ; $41F4: $69
    halt                                          ; $41F5: $76
    ld h, l                                       ; $41F6: $65
    jr nz, jr_02E_426F                            ; $41F7: $20 $76

    ld h, c                                       ; $41F9: $61
    ld [hl], e                                    ; $41FA: $73
    ld h, l                                       ; $41FB: $65
    ld l, $FE                                     ; $41FC: $2E $FE
    ld e, c                                       ; $41FE: $59
    ld l, a                                       ; $41FF: $6F
    ld [hl], l                                    ; $4200: $75
    jr nz, @+$65                                  ; $4201: $20 $63

    ld h, c                                       ; $4203: $61
    ld l, [hl]                                    ; $4204: $6E
    jr nz, jr_02E_427C                            ; $4205: $20 $75

    ld [hl], e                                    ; $4207: $73
    ld h, l                                       ; $4208: $65
    rst $38                                       ; $4209: $FF
    ld l, c                                       ; $420A: $69
    ld [hl], h                                    ; $420B: $74
    jr nz, @+$76                                  ; $420C: $20 $74

    ld l, a                                       ; $420E: $6F
    jr nz, @+$64                                  ; $420F: $20 $62

    ld [hl], d                                    ; $4211: $72
    ld h, l                                       ; $4212: $65
    ld h, c                                       ; $4213: $61
    ld l, e                                       ; $4214: $6B
    cp $63                                        ; $4215: $FE $63
    ld h, l                                       ; $4217: $65
    ld [hl], d                                    ; $4218: $72
    ld [hl], h                                    ; $4219: $74
    ld h, c                                       ; $421A: $61
    ld l, c                                       ; $421B: $69
    ld l, [hl]                                    ; $421C: $6E
    jr nz, jr_02E_4296                            ; $421D: $20 $77

    ld h, c                                       ; $421F: $61
    ld l, h                                       ; $4220: $6C
    ld l, h                                       ; $4221: $6C
    ld [hl], e                                    ; $4222: $73
    ld l, $FE                                     ; $4223: $2E $FE
    db $FD                                        ; $4225: $FD
    sbc d                                         ; $4226: $9A
    ld b, l                                       ; $4227: $45
    ld l, $E3                                     ; $4228: $2E $E3
    ld b, b                                       ; $422A: $40
    sbc a                                         ; $422B: $9F
    ld d, h                                       ; $422C: $54
    ld l, b                                       ; $422D: $68
    ld l, c                                       ; $422E: $69
    ld [hl], e                                    ; $422F: $73
    jr nz, jr_02E_429B                            ; $4230: $20 $69

    ld [hl], h                                    ; $4232: $74
    ld h, l                                       ; $4233: $65
    ld l, l                                       ; $4234: $6D
    jr nz, jr_02E_42AE                            ; $4235: $20 $77

    ld l, c                                       ; $4237: $69
    ld l, h                                       ; $4238: $6C
    ld l, h                                       ; $4239: $6C
    rst $38                                       ; $423A: $FF
    ld [hl], e                                    ; $423B: $73
    ld l, a                                       ; $423C: $6F
    ld l, l                                       ; $423D: $6D
    ld h, l                                       ; $423E: $65
    ld [hl], h                                    ; $423F: $74
    ld l, c                                       ; $4240: $69
    ld l, l                                       ; $4241: $6D
    ld h, l                                       ; $4242: $65
    ld [hl], e                                    ; $4243: $73
    jr nz, jr_02E_42BA                            ; $4244: $20 $74

    ld h, c                                       ; $4246: $61
    ld l, e                                       ; $4247: $6B
    ld h, l                                       ; $4248: $65
    cp $79                                        ; $4249: $FE $79
    ld l, a                                       ; $424B: $6F
    ld [hl], l                                    ; $424C: $75

jr_02E_424D:
    jr nz, jr_02E_42B1                            ; $424D: $20 $62

    ld h, c                                       ; $424F: $61
    ld h, e                                       ; $4250: $63
    ld l, e                                       ; $4251: $6B
    jr nz, jr_02E_42C8                            ; $4252: $20 $74

    ld l, a                                       ; $4254: $6F
    jr nz, @+$63                                  ; $4255: $20 $61

    rst $38                                       ; $4257: $FF
    ld [hl], e                                    ; $4258: $73
    ld h, c                                       ; $4259: $61
    ld h, [hl]                                    ; $425A: $66
    ld h, l                                       ; $425B: $65
    jr nz, @+$6E                                  ; $425C: $20 $6C

    ld l, a                                       ; $425E: $6F
    ld h, e                                       ; $425F: $63
    ld h, c                                       ; $4260: $61
    ld [hl], h                                    ; $4261: $74
    ld l, c                                       ; $4262: $69
    ld l, a                                       ; $4263: $6F
    ld l, [hl]                                    ; $4264: $6E
    ld l, $FE                                     ; $4265: $2E $FE
    db $FD                                        ; $4267: $FD
    sbc d                                         ; $4268: $9A
    ld b, l                                       ; $4269: $45
    ld l, $E3                                     ; $426A: $2E $E3
    ld b, b                                       ; $426C: $40
    sbc a                                         ; $426D: $9F
    ld d, b                                       ; $426E: $50

jr_02E_426F:
    ld l, h                                       ; $426F: $6C
    ld l, a                                       ; $4270: $6F
    ld h, h                                       ; $4271: $64
    jr nz, jr_02E_42C7                            ; $4272: $20 $53

    ld [hl], b                                    ; $4274: $70
    ld l, [hl]                                    ; $4275: $6E
    ld h, l                                       ; $4276: $65
    ld [hl], a                                    ; $4277: $77
    rst $38                                       ; $4278: $FF
    ld [hl], d                                    ; $4279: $72
    ld h, c                                       ; $427A: $61
    ld l, c                                       ; $427B: $69

jr_02E_427C:
    ld [hl], e                                    ; $427C: $73
    ld h, l                                       ; $427D: $65
    ld [hl], e                                    ; $427E: $73
    jr nz, jr_02E_42E2                            ; $427F: $20 $61

    cp $63                                        ; $4281: $FE $63
    ld [hl], d                                    ; $4283: $72
    ld h, l                                       ; $4284: $65
    ld h, c                                       ; $4285: $61
    ld [hl], h                                    ; $4286: $74
    ld [hl], l                                    ; $4287: $75
    ld [hl], d                                    ; $4288: $72
    ld h, l                                       ; $4289: $65
    daa                                           ; $428A: $27
    ld [hl], e                                    ; $428B: $73
    jr nz, jr_02E_42DA                            ; $428C: $20 $4C

    ld [hl], l                                    ; $428E: $75
    ld h, e                                       ; $428F: $63
    ld l, e                                       ; $4290: $6B
    rst $38                                       ; $4291: $FF
    ld h, c                                       ; $4292: $61
    jr nz, jr_02E_4301                            ; $4293: $20 $6C

    ld l, a                                       ; $4295: $6F

jr_02E_4296:
    ld [hl], h                                    ; $4296: $74
    ld l, $FE                                     ; $4297: $2E $FE
    db $FD                                        ; $4299: $FD
    sbc d                                         ; $429A: $9A

jr_02E_429B:
    ld b, l                                       ; $429B: $45
    ld l, $E3                                     ; $429C: $2E $E3
    ld b, b                                       ; $429E: $40
    sbc a                                         ; $429F: $9F
    ld b, d                                       ; $42A0: $42
    ld [hl], l                                    ; $42A1: $75
    ld h, e                                       ; $42A2: $63
    ld l, e                                       ; $42A3: $6B
    ld h, l                                       ; $42A4: $65
    ld [hl], h                                    ; $42A5: $74
    jr nz, jr_02E_42F7                            ; $42A6: $20 $4F

    daa                                           ; $42A8: $27
    jr nz, @+$52                                  ; $42A9: $20 $50

    ld l, c                                       ; $42AB: $69
    ld l, [hl]                                    ; $42AC: $6E
    ld l, e                                       ; $42AD: $6B

jr_02E_42AE:
    rst $38                                       ; $42AE: $FF
    ld l, h                                       ; $42AF: $6C
    ld l, a                                       ; $42B0: $6F

jr_02E_42B1:
    ld [hl], a                                    ; $42B1: $77
    ld h, l                                       ; $42B2: $65
    ld [hl], d                                    ; $42B3: $72
    ld [hl], e                                    ; $42B4: $73
    jr nz, jr_02E_4318                            ; $42B5: $20 $61

    cp $63                                        ; $42B7: $FE $63
    ld [hl], d                                    ; $42B9: $72

jr_02E_42BA:
    ld h, l                                       ; $42BA: $65
    ld h, c                                       ; $42BB: $61
    ld [hl], h                                    ; $42BC: $74
    ld [hl], l                                    ; $42BD: $75
    ld [hl], d                                    ; $42BE: $72
    ld h, l                                       ; $42BF: $65
    daa                                           ; $42C0: $27
    ld [hl], e                                    ; $42C1: $73
    jr nz, jr_02E_4310                            ; $42C2: $20 $4C

    ld [hl], l                                    ; $42C4: $75
    ld h, e                                       ; $42C5: $63
    ld l, e                                       ; $42C6: $6B

jr_02E_42C7:
    rst $38                                       ; $42C7: $FF

jr_02E_42C8:
    ld h, c                                       ; $42C8: $61
    jr nz, jr_02E_4337                            ; $42C9: $20 $6C

    ld l, a                                       ; $42CB: $6F
    ld [hl], h                                    ; $42CC: $74
    ld l, $FE                                     ; $42CD: $2E $FE
    db $FD                                        ; $42CF: $FD
    sbc d                                         ; $42D0: $9A
    ld b, l                                       ; $42D1: $45
    ld l, $E3                                     ; $42D2: $2E $E3
    ld b, b                                       ; $42D4: $40
    sbc a                                         ; $42D5: $9F
    ld d, h                                       ; $42D6: $54
    ld l, b                                       ; $42D7: $68
    ld h, c                                       ; $42D8: $61
    ld [hl], h                                    ; $42D9: $74

jr_02E_42DA:
    daa                                           ; $42DA: $27
    ld [hl], e                                    ; $42DB: $73
    jr nz, @+$63                                  ; $42DC: $20 $61

    rst $38                                       ; $42DE: $FF
    ld [hl], h                                    ; $42DF: $74
    ld l, c                                       ; $42E0: $69
    ld h, e                                       ; $42E1: $63

jr_02E_42E2:
    ld l, e                                       ; $42E2: $6B
    ld h, l                                       ; $42E3: $65
    ld [hl], h                                    ; $42E4: $74
    ld hl, $59FE                                  ; $42E5: $21 $FE $59
    ld l, a                                       ; $42E8: $6F
    ld [hl], l                                    ; $42E9: $75
    jr nz, jr_02E_434F                            ; $42EA: $20 $63

    ld h, c                                       ; $42EC: $61
    ld l, [hl]                                    ; $42ED: $6E
    jr nz, jr_02E_4365                            ; $42EE: $20 $75

    ld [hl], e                                    ; $42F0: $73
    ld h, l                                       ; $42F1: $65
    rst $38                                       ; $42F2: $FF
    ld [hl], h                                    ; $42F3: $74
    ld l, b                                       ; $42F4: $68
    ld h, c                                       ; $42F5: $61
    ld [hl], h                                    ; $42F6: $74

jr_02E_42F7:
    jr nz, jr_02E_4362                            ; $42F7: $20 $69

    ld l, [hl]                                    ; $42F9: $6E
    jr nz, jr_02E_4370                            ; $42FA: $20 $74

    ld l, b                                       ; $42FC: $68
    ld h, l                                       ; $42FD: $65
    cp $4E                                        ; $42FE: $FE $4E
    ld h, c                                       ; $4300: $61

jr_02E_4301:
    ld [hl], d                                    ; $4301: $72
    ld l, a                                       ; $4302: $6F
    ld l, a                                       ; $4303: $6F
    ld l, l                                       ; $4304: $6D
    rst $38                                       ; $4305: $FF
    ld h, e                                       ; $4306: $63
    ld [hl], l                                    ; $4307: $75
    ld [hl], d                                    ; $4308: $72
    ld l, c                                       ; $4309: $69
    ld l, a                                       ; $430A: $6F
    jr nz, jr_02E_4380                            ; $430B: $20 $73

    ld l, b                                       ; $430D: $68
    ld l, a                                       ; $430E: $6F
    ld [hl], b                                    ; $430F: $70

jr_02E_4310:
    ld l, $FE                                     ; $4310: $2E $FE
    db $FD                                        ; $4312: $FD
    sbc d                                         ; $4313: $9A
    ld b, l                                       ; $4314: $45
    ld l, $E3                                     ; $4315: $2E $E3
    ld b, b                                       ; $4317: $40

jr_02E_4318:
    sbc a                                         ; $4318: $9F
    ld c, b                                       ; $4319: $48
    ld l, l                                       ; $431A: $6D
    ld l, l                                       ; $431B: $6D
    ld l, l                                       ; $431C: $6D
    ld l, l                                       ; $431D: $6D
    ld l, $2E                                     ; $431E: $2E $2E
    ld l, $FE                                     ; $4320: $2E $FE
    ld c, c                                       ; $4322: $49
    ld [hl], h                                    ; $4323: $74
    jr nz, jr_02E_4392                            ; $4324: $20 $6C

    ld l, a                                       ; $4326: $6F
    ld l, a                                       ; $4327: $6F
    ld l, e                                       ; $4328: $6B
    ld [hl], e                                    ; $4329: $73
    jr nz, jr_02E_4398                            ; $432A: $20 $6C

    ld l, c                                       ; $432C: $69
    ld l, e                                       ; $432D: $6B
    ld h, l                                       ; $432E: $65
    rst $38                                       ; $432F: $FF
    ld [hl], e                                    ; $4330: $73
    ld l, a                                       ; $4331: $6F
    ld l, l                                       ; $4332: $6D
    ld h, l                                       ; $4333: $65
    jr nz, @+$6D                                  ; $4334: $20 $6B

    ld l, c                                       ; $4336: $69

jr_02E_4337:
    ld l, [hl]                                    ; $4337: $6E
    ld h, h                                       ; $4338: $64
    jr nz, jr_02E_43AA                            ; $4339: $20 $6F

    ld h, [hl]                                    ; $433B: $66
    jr nz, jr_02E_439F                            ; $433C: $20 $61

    cp $62                                        ; $433E: $FE $62
    ld l, h                                       ; $4340: $6C
    ld [hl], l                                    ; $4341: $75
    ld [hl], d                                    ; $4342: $72
    ld [hl], d                                    ; $4343: $72
    ld a, c                                       ; $4344: $79
    jr nz, jr_02E_43BA                            ; $4345: $20 $73

    ld h, e                                       ; $4347: $63
    ld [hl], d                                    ; $4348: $72
    ld l, a                                       ; $4349: $6F
    ld l, h                                       ; $434A: $6C
    ld l, h                                       ; $434B: $6C
    ld hl, $FDFE                                  ; $434C: $21 $FE $FD

jr_02E_434F:
    sbc d                                         ; $434F: $9A
    ld b, l                                       ; $4350: $45
    ld l, $E3                                     ; $4351: $2E $E3
    ld b, b                                       ; $4353: $40
    sbc a                                         ; $4354: $9F
    ld b, d                                       ; $4355: $42
    ld h, c                                       ; $4356: $61
    ld l, h                                       ; $4357: $6C
    ld l, a                                       ; $4358: $6F
    ld l, a                                       ; $4359: $6F
    jr nz, jr_02E_43A8                            ; $435A: $20 $4C

    ld h, l                                       ; $435C: $65
    ld h, c                                       ; $435D: $61
    ld h, [hl]                                    ; $435E: $66
    rst $38                                       ; $435F: $FF
    ld [hl], d                                    ; $4360: $72
    ld h, l                                       ; $4361: $65

jr_02E_4362:
    ld [hl], e                                    ; $4362: $73
    ld [hl], h                                    ; $4363: $74
    ld l, a                                       ; $4364: $6F

jr_02E_4365:
    ld [hl], d                                    ; $4365: $72
    ld h, l                                       ; $4366: $65
    ld [hl], e                                    ; $4367: $73
    jr nz, @+$63                                  ; $4368: $20 $61

    cp $6C                                        ; $436A: $FE $6C
    ld l, c                                       ; $436C: $69
    ld [hl], h                                    ; $436D: $74
    ld [hl], h                                    ; $436E: $74
    ld l, h                                       ; $436F: $6C

jr_02E_4370:
    ld h, l                                       ; $4370: $65
    jr nz, jr_02E_43E2                            ; $4371: $20 $6F

    ld h, [hl]                                    ; $4373: $66
    jr nz, jr_02E_43EF                            ; $4374: $20 $79

    ld l, a                                       ; $4376: $6F
    ld [hl], l                                    ; $4377: $75
    ld [hl], d                                    ; $4378: $72
    rst $38                                       ; $4379: $FF
    ld a, c                                       ; $437A: $79
    ld l, a                                       ; $437B: $6F
    ld [hl], l                                    ; $437C: $75
    ld [hl], d                                    ; $437D: $72
    jr nz, jr_02E_43E5                            ; $437E: $20 $65

jr_02E_4380:
    ld l, [hl]                                    ; $4380: $6E
    ld h, l                                       ; $4381: $65
    ld [hl], d                                    ; $4382: $72
    ld h, a                                       ; $4383: $67
    ld a, c                                       ; $4384: $79
    ld l, $FE                                     ; $4385: $2E $FE
    db $FD                                        ; $4387: $FD
    sbc d                                         ; $4388: $9A
    ld b, l                                       ; $4389: $45
    ld l, $E3                                     ; $438A: $2E $E3
    ld b, b                                       ; $438C: $40
    sbc a                                         ; $438D: $9F
    ld b, d                                       ; $438E: $42
    ld h, c                                       ; $438F: $61
    ld l, h                                       ; $4390: $6C
    ld l, a                                       ; $4391: $6F

jr_02E_4392:
    ld l, a                                       ; $4392: $6F
    jr nz, jr_02E_43E8                            ; $4393: $20 $53

    ld h, c                                       ; $4395: $61
    ld [hl], b                                    ; $4396: $70
    rst $38                                       ; $4397: $FF

jr_02E_4398:
    ld [hl], d                                    ; $4398: $72
    ld h, l                                       ; $4399: $65
    ld [hl], e                                    ; $439A: $73
    ld [hl], h                                    ; $439B: $74
    ld l, a                                       ; $439C: $6F
    ld [hl], d                                    ; $439D: $72
    ld h, l                                       ; $439E: $65

jr_02E_439F:
    ld [hl], e                                    ; $439F: $73
    jr nz, jr_02E_441B                            ; $43A0: $20 $79

    ld l, a                                       ; $43A2: $6F
    ld [hl], l                                    ; $43A3: $75
    ld [hl], d                                    ; $43A4: $72
    cp $65                                        ; $43A5: $FE $65
    ld l, [hl]                                    ; $43A7: $6E

jr_02E_43A8:
    ld h, l                                       ; $43A8: $65
    ld [hl], d                                    ; $43A9: $72

jr_02E_43AA:
    ld h, a                                       ; $43AA: $67
    ld a, c                                       ; $43AB: $79
    ld l, $FE                                     ; $43AC: $2E $FE
    db $FD                                        ; $43AE: $FD
    sbc d                                         ; $43AF: $9A
    ld b, l                                       ; $43B0: $45
    ld l, $E3                                     ; $43B1: $2E $E3
    ld b, b                                       ; $43B3: $40
    sbc a                                         ; $43B4: $9F
    ld b, d                                       ; $43B5: $42
    ld h, c                                       ; $43B6: $61
    ld l, h                                       ; $43B7: $6C
    ld l, a                                       ; $43B8: $6F
    ld l, a                                       ; $43B9: $6F

jr_02E_43BA:
    jr nz, @+$54                                  ; $43BA: $20 $52

    ld l, a                                       ; $43BC: $6F
    ld l, a                                       ; $43BD: $6F
    ld [hl], h                                    ; $43BE: $74
    rst $38                                       ; $43BF: $FF
    ld [hl], d                                    ; $43C0: $72
    ld h, l                                       ; $43C1: $65
    ld [hl], e                                    ; $43C2: $73
    ld [hl], h                                    ; $43C3: $74
    ld l, a                                       ; $43C4: $6F
    ld [hl], d                                    ; $43C5: $72
    ld h, l                                       ; $43C6: $65
    ld [hl], e                                    ; $43C7: $73
    jr nz, jr_02E_442B                            ; $43C8: $20 $61

    jr nz, jr_02E_4438                            ; $43CA: $20 $6C

    ld l, a                                       ; $43CC: $6F
    ld [hl], h                                    ; $43CD: $74
    cp $6F                                        ; $43CE: $FE $6F
    ld h, [hl]                                    ; $43D0: $66
    jr nz, @+$7B                                  ; $43D1: $20 $79

    ld l, a                                       ; $43D3: $6F
    ld [hl], l                                    ; $43D4: $75
    ld [hl], d                                    ; $43D5: $72
    jr nz, jr_02E_443D                            ; $43D6: $20 $65

    ld l, [hl]                                    ; $43D8: $6E
    ld h, l                                       ; $43D9: $65
    ld [hl], d                                    ; $43DA: $72
    ld h, a                                       ; $43DB: $67
    ld a, c                                       ; $43DC: $79
    ld l, $FE                                     ; $43DD: $2E $FE
    db $FD                                        ; $43DF: $FD
    sbc d                                         ; $43E0: $9A
    ld b, l                                       ; $43E1: $45

jr_02E_43E2:
    ld l, $E3                                     ; $43E2: $2E $E3
    ld b, b                                       ; $43E4: $40

jr_02E_43E5:
    sbc a                                         ; $43E5: $9F
    inc sp                                        ; $43E6: $33
    dec l                                         ; $43E7: $2D

jr_02E_43E8:
    ld c, b                                       ; $43E8: $48
    ld h, l                                       ; $43E9: $65
    ld h, c                                       ; $43EA: $61
    ld h, h                                       ; $43EB: $64
    ld h, l                                       ; $43EC: $65
    ld h, h                                       ; $43ED: $64
    ld b, e                                       ; $43EE: $43

jr_02E_43EF:
    ld l, a                                       ; $43EF: $6F
    ld l, c                                       ; $43F0: $69
    ld l, [hl]                                    ; $43F1: $6E
    rst $38                                       ; $43F2: $FF
    ld [hl], d                                    ; $43F3: $72
    ld h, c                                       ; $43F4: $61
    ld l, c                                       ; $43F5: $69
    ld [hl], e                                    ; $43F6: $73
    ld h, l                                       ; $43F7: $65
    ld [hl], e                                    ; $43F8: $73
    jr nz, jr_02E_445C                            ; $43F9: $20 $61

    cp $63                                        ; $43FB: $FE $63
    ld [hl], d                                    ; $43FD: $72
    ld h, l                                       ; $43FE: $65
    ld h, c                                       ; $43FF: $61
    ld [hl], h                                    ; $4400: $74
    ld [hl], l                                    ; $4401: $75
    ld [hl], d                                    ; $4402: $72
    ld h, l                                       ; $4403: $65
    daa                                           ; $4404: $27
    ld [hl], e                                    ; $4405: $73
    jr nz, jr_02E_4454                            ; $4406: $20 $4C

    ld [hl], l                                    ; $4408: $75
    ld h, e                                       ; $4409: $63
    ld l, e                                       ; $440A: $6B
    rst $38                                       ; $440B: $FF
    ld h, c                                       ; $440C: $61
    jr nz, jr_02E_447B                            ; $440D: $20 $6C

    ld l, c                                       ; $440F: $69
    ld [hl], h                                    ; $4410: $74
    ld [hl], h                                    ; $4411: $74
    ld l, h                                       ; $4412: $6C
    ld h, l                                       ; $4413: $65
    ld l, $FE                                     ; $4414: $2E $FE
    db $FD                                        ; $4416: $FD
    sbc d                                         ; $4417: $9A
    ld b, l                                       ; $4418: $45
    ld l, $E3                                     ; $4419: $2E $E3

jr_02E_441B:
    ld b, b                                       ; $441B: $40
    sbc a                                         ; $441C: $9F
    ld b, d                                       ; $441D: $42
    ld h, c                                       ; $441E: $61
    ld l, h                                       ; $441F: $6C
    ld h, c                                       ; $4420: $61
    ld l, [hl]                                    ; $4421: $6E
    ld h, e                                       ; $4422: $63
    ld h, l                                       ; $4423: $65
    ld d, e                                       ; $4424: $53
    ld h, e                                       ; $4425: $63
    ld h, c                                       ; $4426: $61
    ld l, h                                       ; $4427: $6C
    ld h, l                                       ; $4428: $65
    rst $38                                       ; $4429: $FF
    ld l, h                                       ; $442A: $6C

jr_02E_442B:
    ld l, a                                       ; $442B: $6F
    ld [hl], a                                    ; $442C: $77
    ld h, l                                       ; $442D: $65
    ld [hl], d                                    ; $442E: $72
    ld [hl], e                                    ; $442F: $73
    jr nz, @+$63                                  ; $4430: $20 $61

    cp $63                                        ; $4432: $FE $63
    ld [hl], d                                    ; $4434: $72
    ld h, l                                       ; $4435: $65
    ld h, c                                       ; $4436: $61
    ld [hl], h                                    ; $4437: $74

jr_02E_4438:
    ld [hl], l                                    ; $4438: $75
    ld [hl], d                                    ; $4439: $72
    ld h, l                                       ; $443A: $65
    daa                                           ; $443B: $27
    ld [hl], e                                    ; $443C: $73

jr_02E_443D:
    jr nz, jr_02E_448B                            ; $443D: $20 $4C

    ld [hl], l                                    ; $443F: $75
    ld h, e                                       ; $4440: $63
    ld l, e                                       ; $4441: $6B
    rst $38                                       ; $4442: $FF
    ld h, c                                       ; $4443: $61
    jr nz, jr_02E_44B2                            ; $4444: $20 $6C

    ld l, c                                       ; $4446: $69
    ld [hl], h                                    ; $4447: $74
    ld [hl], h                                    ; $4448: $74
    ld l, h                                       ; $4449: $6C
    ld h, l                                       ; $444A: $65
    ld l, $FE                                     ; $444B: $2E $FE
    db $FD                                        ; $444D: $FD
    sbc d                                         ; $444E: $9A
    ld b, l                                       ; $444F: $45
    ld l, $E3                                     ; $4450: $2E $E3
    ld b, b                                       ; $4452: $40
    sbc a                                         ; $4453: $9F

jr_02E_4454:
    ld d, e                                       ; $4454: $53
    ld [hl], h                                    ; $4455: $74
    ld [hl], d                                    ; $4456: $72
    ld h, l                                       ; $4457: $65
    ld l, [hl]                                    ; $4458: $6E
    ld h, a                                       ; $4459: $67
    ld [hl], h                                    ; $445A: $74
    ld l, b                                       ; $445B: $68

jr_02E_445C:
    jr nz, jr_02E_44A5                            ; $445C: $20 $47

    ld h, l                                       ; $445E: $65
    ld l, l                                       ; $445F: $6D
    rst $38                                       ; $4460: $FF
    ld [hl], d                                    ; $4461: $72
    ld h, c                                       ; $4462: $61
    ld l, c                                       ; $4463: $69
    ld [hl], e                                    ; $4464: $73
    ld h, l                                       ; $4465: $65
    ld [hl], e                                    ; $4466: $73
    jr nz, jr_02E_44CA                            ; $4467: $20 $61

    cp $63                                        ; $4469: $FE $63
    ld [hl], d                                    ; $446B: $72
    ld h, l                                       ; $446C: $65
    ld h, c                                       ; $446D: $61
    ld [hl], h                                    ; $446E: $74
    ld [hl], l                                    ; $446F: $75
    ld [hl], d                                    ; $4470: $72
    ld h, l                                       ; $4471: $65
    daa                                           ; $4472: $27
    ld [hl], e                                    ; $4473: $73
    rst $38                                       ; $4474: $FF
    ld b, c                                       ; $4475: $41
    ld [hl], h                                    ; $4476: $74
    ld [hl], h                                    ; $4477: $74
    ld h, c                                       ; $4478: $61
    ld h, e                                       ; $4479: $63
    ld l, e                                       ; $447A: $6B

jr_02E_447B:
    jr nz, jr_02E_44E1                            ; $447B: $20 $64

    ld [hl], l                                    ; $447D: $75
    ld [hl], d                                    ; $447E: $72
    ld l, c                                       ; $447F: $69
    ld l, [hl]                                    ; $4480: $6E
    ld h, a                                       ; $4481: $67
    cp $6F                                        ; $4482: $FE $6F
    ld l, [hl]                                    ; $4484: $6E
    ld h, l                                       ; $4485: $65
    jr nz, jr_02E_44EA                            ; $4486: $20 $62

    ld h, c                                       ; $4488: $61
    ld [hl], h                                    ; $4489: $74
    ld [hl], h                                    ; $448A: $74

jr_02E_448B:
    ld l, h                                       ; $448B: $6C
    ld h, l                                       ; $448C: $65
    ld l, $FE                                     ; $448D: $2E $FE
    db $FD                                        ; $448F: $FD
    sbc d                                         ; $4490: $9A
    ld b, l                                       ; $4491: $45
    ld l, $E3                                     ; $4492: $2E $E3
    ld b, b                                       ; $4494: $40
    sbc a                                         ; $4495: $9F
    ld b, a                                       ; $4496: $47
    ld [hl], l                                    ; $4497: $75
    ld h, c                                       ; $4498: $61
    ld [hl], d                                    ; $4499: $72
    ld h, h                                       ; $449A: $64
    jr nz, jr_02E_44E4                            ; $449B: $20 $47

    ld h, l                                       ; $449D: $65
    ld l, l                                       ; $449E: $6D
    rst $38                                       ; $449F: $FF
    ld [hl], d                                    ; $44A0: $72
    ld h, c                                       ; $44A1: $61
    ld l, c                                       ; $44A2: $69
    ld [hl], e                                    ; $44A3: $73
    ld h, l                                       ; $44A4: $65

jr_02E_44A5:
    ld [hl], e                                    ; $44A5: $73
    jr nz, jr_02E_4509                            ; $44A6: $20 $61

    cp $63                                        ; $44A8: $FE $63
    ld [hl], d                                    ; $44AA: $72
    ld h, l                                       ; $44AB: $65
    ld h, c                                       ; $44AC: $61
    ld [hl], h                                    ; $44AD: $74
    ld [hl], l                                    ; $44AE: $75
    ld [hl], d                                    ; $44AF: $72
    ld h, l                                       ; $44B0: $65
    daa                                           ; $44B1: $27

jr_02E_44B2:
    ld [hl], e                                    ; $44B2: $73
    rst $38                                       ; $44B3: $FF
    ld b, h                                       ; $44B4: $44
    ld h, l                                       ; $44B5: $65
    ld h, [hl]                                    ; $44B6: $66
    ld h, l                                       ; $44B7: $65
    ld l, [hl]                                    ; $44B8: $6E
    ld [hl], e                                    ; $44B9: $73
    ld h, l                                       ; $44BA: $65
    jr nz, jr_02E_4521                            ; $44BB: $20 $64

    ld [hl], l                                    ; $44BD: $75
    ld [hl], d                                    ; $44BE: $72
    ld l, c                                       ; $44BF: $69
    ld l, [hl]                                    ; $44C0: $6E
    ld h, a                                       ; $44C1: $67
    cp $6F                                        ; $44C2: $FE $6F
    ld l, [hl]                                    ; $44C4: $6E
    ld h, l                                       ; $44C5: $65
    jr nz, jr_02E_452A                            ; $44C6: $20 $62

    ld h, c                                       ; $44C8: $61
    ld [hl], h                                    ; $44C9: $74

jr_02E_44CA:
    ld [hl], h                                    ; $44CA: $74
    ld l, h                                       ; $44CB: $6C
    ld h, l                                       ; $44CC: $65
    ld l, $FE                                     ; $44CD: $2E $FE
    db $FD                                        ; $44CF: $FD
    sbc d                                         ; $44D0: $9A
    ld b, l                                       ; $44D1: $45
    ld l, $E3                                     ; $44D2: $2E $E3
    ld b, b                                       ; $44D4: $40
    sbc a                                         ; $44D5: $9F
    ld d, b                                       ; $44D6: $50
    ld l, a                                       ; $44D7: $6F
    ld [hl], a                                    ; $44D8: $77
    ld h, l                                       ; $44D9: $65
    ld [hl], d                                    ; $44DA: $72
    jr nz, jr_02E_4524                            ; $44DB: $20 $47

    ld h, l                                       ; $44DD: $65
    ld l, l                                       ; $44DE: $6D
    rst $38                                       ; $44DF: $FF
    ld [hl], d                                    ; $44E0: $72

jr_02E_44E1:
    ld h, c                                       ; $44E1: $61
    ld l, c                                       ; $44E2: $69
    ld [hl], e                                    ; $44E3: $73

jr_02E_44E4:
    ld h, l                                       ; $44E4: $65
    ld [hl], e                                    ; $44E5: $73
    jr nz, @+$63                                  ; $44E6: $20 $61

    cp $63                                        ; $44E8: $FE $63

jr_02E_44EA:
    ld [hl], d                                    ; $44EA: $72
    ld h, l                                       ; $44EB: $65
    ld h, c                                       ; $44EC: $61
    ld [hl], h                                    ; $44ED: $74
    ld [hl], l                                    ; $44EE: $75
    ld [hl], d                                    ; $44EF: $72
    ld h, l                                       ; $44F0: $65
    daa                                           ; $44F1: $27
    ld [hl], e                                    ; $44F2: $73
    rst $38                                       ; $44F3: $FF
    ld c, l                                       ; $44F4: $4D
    ld h, c                                       ; $44F5: $61
    ld h, a                                       ; $44F6: $67
    ld l, c                                       ; $44F7: $69
    ld h, e                                       ; $44F8: $63
    jr nz, jr_02E_453C                            ; $44F9: $20 $41

    ld [hl], h                                    ; $44FB: $74
    ld [hl], h                                    ; $44FC: $74
    ld h, c                                       ; $44FD: $61
    ld h, e                                       ; $44FE: $63
    ld l, e                                       ; $44FF: $6B
    cp $64                                        ; $4500: $FE $64
    ld [hl], l                                    ; $4502: $75
    ld [hl], d                                    ; $4503: $72
    ld l, c                                       ; $4504: $69
    ld l, [hl]                                    ; $4505: $6E
    ld h, a                                       ; $4506: $67
    jr nz, jr_02E_4578                            ; $4507: $20 $6F

jr_02E_4509:
    ld l, [hl]                                    ; $4509: $6E
    ld h, l                                       ; $450A: $65
    rst $38                                       ; $450B: $FF
    ld h, d                                       ; $450C: $62
    ld h, c                                       ; $450D: $61
    ld [hl], h                                    ; $450E: $74
    ld [hl], h                                    ; $450F: $74
    ld l, h                                       ; $4510: $6C
    ld h, l                                       ; $4511: $65
    ld l, $FE                                     ; $4512: $2E $FE
    db $FD                                        ; $4514: $FD
    sbc d                                         ; $4515: $9A
    ld b, l                                       ; $4516: $45
    ld l, $E3                                     ; $4517: $2E $E3
    ld b, b                                       ; $4519: $40
    sbc a                                         ; $451A: $9F
    ld b, h                                       ; $451B: $44
    ld h, l                                       ; $451C: $65
    ld h, [hl]                                    ; $451D: $66
    ld l, h                                       ; $451E: $6C
    ld h, l                                       ; $451F: $65
    ld h, e                                       ; $4520: $63

jr_02E_4521:
    ld [hl], h                                    ; $4521: $74
    jr nz, jr_02E_456B                            ; $4522: $20 $47

jr_02E_4524:
    ld h, l                                       ; $4524: $65
    ld l, l                                       ; $4525: $6D
    rst $38                                       ; $4526: $FF
    ld [hl], d                                    ; $4527: $72
    ld h, c                                       ; $4528: $61
    ld l, c                                       ; $4529: $69

jr_02E_452A:
    ld [hl], e                                    ; $452A: $73
    ld h, l                                       ; $452B: $65
    ld [hl], e                                    ; $452C: $73
    jr nz, jr_02E_4590                            ; $452D: $20 $61

    cp $63                                        ; $452F: $FE $63
    ld [hl], d                                    ; $4531: $72
    ld h, l                                       ; $4532: $65
    ld h, c                                       ; $4533: $61
    ld [hl], h                                    ; $4534: $74
    ld [hl], l                                    ; $4535: $75
    ld [hl], d                                    ; $4536: $72
    ld h, l                                       ; $4537: $65
    daa                                           ; $4538: $27
    ld [hl], e                                    ; $4539: $73
    rst $38                                       ; $453A: $FF
    ld c, l                                       ; $453B: $4D

jr_02E_453C:
    ld h, c                                       ; $453C: $61
    ld h, a                                       ; $453D: $67
    ld l, c                                       ; $453E: $69
    ld h, e                                       ; $453F: $63
    jr nz, jr_02E_4586                            ; $4540: $20 $44

    ld h, l                                       ; $4542: $65
    ld h, [hl]                                    ; $4543: $66
    ld h, l                                       ; $4544: $65
    ld l, [hl]                                    ; $4545: $6E
    ld [hl], e                                    ; $4546: $73
    ld h, l                                       ; $4547: $65
    cp $64                                        ; $4548: $FE $64
    ld [hl], l                                    ; $454A: $75
    ld [hl], d                                    ; $454B: $72
    ld l, c                                       ; $454C: $69
    ld l, [hl]                                    ; $454D: $6E
    ld h, a                                       ; $454E: $67
    jr nz, jr_02E_45C0                            ; $454F: $20 $6F

    ld l, [hl]                                    ; $4551: $6E
    ld h, l                                       ; $4552: $65
    rst $38                                       ; $4553: $FF
    ld h, d                                       ; $4554: $62
    ld h, c                                       ; $4555: $61
    ld [hl], h                                    ; $4556: $74
    ld [hl], h                                    ; $4557: $74
    ld l, h                                       ; $4558: $6C
    ld h, l                                       ; $4559: $65
    ld l, $FE                                     ; $455A: $2E $FE
    db $FD                                        ; $455C: $FD
    sbc d                                         ; $455D: $9A
    ld b, l                                       ; $455E: $45
    ld l, $E3                                     ; $455F: $2E $E3
    ld b, b                                       ; $4561: $40
    sbc a                                         ; $4562: $9F
    ld c, b                                       ; $4563: $48
    ld h, c                                       ; $4564: $61
    ld [hl], e                                    ; $4565: $73
    ld [hl], h                                    ; $4566: $74
    ld h, l                                       ; $4567: $65
    jr nz, jr_02E_45B1                            ; $4568: $20 $47

    ld h, l                                       ; $456A: $65

jr_02E_456B:
    ld l, l                                       ; $456B: $6D
    rst $38                                       ; $456C: $FF
    ld [hl], d                                    ; $456D: $72
    ld h, c                                       ; $456E: $61
    ld l, c                                       ; $456F: $69
    ld [hl], e                                    ; $4570: $73
    ld h, l                                       ; $4571: $65
    ld [hl], e                                    ; $4572: $73
    jr nz, @+$63                                  ; $4573: $20 $61

    cp $63                                        ; $4575: $FE $63
    ld [hl], d                                    ; $4577: $72

jr_02E_4578:
    ld h, l                                       ; $4578: $65
    ld h, c                                       ; $4579: $61
    ld [hl], h                                    ; $457A: $74
    ld [hl], l                                    ; $457B: $75
    ld [hl], d                                    ; $457C: $72
    ld h, l                                       ; $457D: $65
    daa                                           ; $457E: $27
    ld [hl], e                                    ; $457F: $73
    rst $38                                       ; $4580: $FF
    ld d, e                                       ; $4581: $53
    ld [hl], b                                    ; $4582: $70
    ld h, l                                       ; $4583: $65
    ld h, l                                       ; $4584: $65
    ld h, h                                       ; $4585: $64

jr_02E_4586:
    jr nz, jr_02E_45EC                            ; $4586: $20 $64

    ld [hl], l                                    ; $4588: $75
    ld [hl], d                                    ; $4589: $72
    ld l, c                                       ; $458A: $69
    ld l, [hl]                                    ; $458B: $6E
    ld h, a                                       ; $458C: $67
    cp $6F                                        ; $458D: $FE $6F
    ld l, [hl]                                    ; $458F: $6E

jr_02E_4590:
    ld h, l                                       ; $4590: $65
    jr nz, jr_02E_45F5                            ; $4591: $20 $62

    ld h, c                                       ; $4593: $61
    ld [hl], h                                    ; $4594: $74
    ld [hl], h                                    ; $4595: $74
    ld l, h                                       ; $4596: $6C
    ld h, l                                       ; $4597: $65
    ld l, $FE                                     ; $4598: $2E $FE
    db $FD                                        ; $459A: $FD
    sbc d                                         ; $459B: $9A
    ld b, l                                       ; $459C: $45
    ld l, $E3                                     ; $459D: $2E $E3
    ld b, b                                       ; $459F: $40
    sbc a                                         ; $45A0: $9F
    ld d, d                                       ; $45A1: $52
    ld h, l                                       ; $45A2: $65
    ld l, l                                       ; $45A3: $6D
    ld h, l                                       ; $45A4: $65
    ld h, h                                       ; $45A5: $64
    ld a, c                                       ; $45A6: $79
    jr nz, jr_02E_45ED                            ; $45A7: $20 $44

    ld [hl], d                                    ; $45A9: $72
    ld l, c                                       ; $45AA: $69
    ld l, [hl]                                    ; $45AB: $6E
    ld l, e                                       ; $45AC: $6B
    rst $38                                       ; $45AD: $FF
    ld h, e                                       ; $45AE: $63
    ld [hl], l                                    ; $45AF: $75
    ld [hl], d                                    ; $45B0: $72

jr_02E_45B1:
    ld h, l                                       ; $45B1: $65
    ld [hl], e                                    ; $45B2: $73
    jr nz, jr_02E_4616                            ; $45B3: $20 $61

    ld l, h                                       ; $45B5: $6C
    ld l, h                                       ; $45B6: $6C
    jr nz, jr_02E_4628                            ; $45B7: $20 $6F

    ld h, [hl]                                    ; $45B9: $66
    jr nz, jr_02E_461D                            ; $45BA: $20 $61

    cp $63                                        ; $45BC: $FE $63
    ld [hl], d                                    ; $45BE: $72
    ld h, l                                       ; $45BF: $65

jr_02E_45C0:
    ld h, c                                       ; $45C0: $61
    ld [hl], h                                    ; $45C1: $74
    ld [hl], l                                    ; $45C2: $75
    ld [hl], d                                    ; $45C3: $72
    ld h, l                                       ; $45C4: $65
    daa                                           ; $45C5: $27
    ld [hl], e                                    ; $45C6: $73
    rst $38                                       ; $45C7: $FF
    ld h, c                                       ; $45C8: $61
    ld l, c                                       ; $45C9: $69
    ld l, h                                       ; $45CA: $6C
    ld l, l                                       ; $45CB: $6D
    ld h, l                                       ; $45CC: $65
    ld l, [hl]                                    ; $45CD: $6E
    ld [hl], h                                    ; $45CE: $74
    ld [hl], e                                    ; $45CF: $73
    ld l, $FE                                     ; $45D0: $2E $FE
    db $FD                                        ; $45D2: $FD
    sbc d                                         ; $45D3: $9A
    ld b, l                                       ; $45D4: $45
    ld l, $E3                                     ; $45D5: $2E $E3
    ld b, b                                       ; $45D7: $40
    sbc a                                         ; $45D8: $9F
    ld b, e                                       ; $45D9: $43
    ld [hl], d                                    ; $45DA: $72
    ld h, l                                       ; $45DB: $65
    ld [hl], e                                    ; $45DC: $73
    ld h, e                                       ; $45DD: $63
    ld h, l                                       ; $45DE: $65
    ld l, [hl]                                    ; $45DF: $6E
    ld [hl], h                                    ; $45E0: $74
    jr nz, jr_02E_462A                            ; $45E1: $20 $47

    ld h, l                                       ; $45E3: $65
    ld l, l                                       ; $45E4: $6D
    rst $38                                       ; $45E5: $FF
    ld [hl], d                                    ; $45E6: $72
    ld l, a                                       ; $45E7: $6F
    ld h, d                                       ; $45E8: $62
    ld [hl], l                                    ; $45E9: $75
    ld [hl], e                                    ; $45EA: $73
    ld [hl], h                                    ; $45EB: $74

jr_02E_45EC:
    ld l, h                                       ; $45EC: $6C

jr_02E_45ED:
    ld a, c                                       ; $45ED: $79
    cp $6D                                        ; $45EE: $FE $6D
    ld l, a                                       ; $45F0: $6F
    ld h, h                                       ; $45F1: $64
    ld l, c                                       ; $45F2: $69
    ld h, [hl]                                    ; $45F3: $66
    ld l, c                                       ; $45F4: $69

jr_02E_45F5:
    ld h, l                                       ; $45F5: $65
    ld [hl], e                                    ; $45F6: $73
    jr nz, jr_02E_465A                            ; $45F7: $20 $61

    rst $38                                       ; $45F9: $FF
    ld h, e                                       ; $45FA: $63
    ld [hl], d                                    ; $45FB: $72
    ld h, l                                       ; $45FC: $65
    ld h, c                                       ; $45FD: $61
    ld [hl], h                                    ; $45FE: $74
    ld [hl], l                                    ; $45FF: $75
    ld [hl], d                                    ; $4600: $72
    ld h, l                                       ; $4601: $65
    daa                                           ; $4602: $27
    ld [hl], e                                    ; $4603: $73
    cp $61                                        ; $4604: $FE $61
    ld l, c                                       ; $4606: $69
    ld l, h                                       ; $4607: $6C
    ld l, l                                       ; $4608: $6D
    ld h, l                                       ; $4609: $65
    ld l, [hl]                                    ; $460A: $6E
    ld [hl], h                                    ; $460B: $74
    ld [hl], e                                    ; $460C: $73
    ld l, $FE                                     ; $460D: $2E $FE
    db $FD                                        ; $460F: $FD
    sbc d                                         ; $4610: $9A
    ld b, l                                       ; $4611: $45
    ld l, $E3                                     ; $4612: $2E $E3
    ld b, b                                       ; $4614: $40
    sbc a                                         ; $4615: $9F

jr_02E_4616:
    ld b, a                                       ; $4616: $47
    ld l, c                                       ; $4617: $69
    ld h, d                                       ; $4618: $62
    ld h, d                                       ; $4619: $62
    ld l, a                                       ; $461A: $6F
    ld [hl], l                                    ; $461B: $75
    ld [hl], e                                    ; $461C: $73

jr_02E_461D:
    jr nz, jr_02E_4666                            ; $461D: $20 $47

    ld h, l                                       ; $461F: $65
    ld l, l                                       ; $4620: $6D
    rst $38                                       ; $4621: $FF
    ld l, a                                       ; $4622: $6F
    ld [hl], d                                    ; $4623: $72
    ld l, [hl]                                    ; $4624: $6E
    ld h, c                                       ; $4625: $61
    ld [hl], h                                    ; $4626: $74
    ld h, l                                       ; $4627: $65

jr_02E_4628:
    ld l, h                                       ; $4628: $6C
    ld a, c                                       ; $4629: $79

jr_02E_462A:
    cp $6D                                        ; $462A: $FE $6D
    ld l, a                                       ; $462C: $6F
    ld h, h                                       ; $462D: $64
    ld l, c                                       ; $462E: $69
    ld h, [hl]                                    ; $462F: $66
    ld l, c                                       ; $4630: $69
    ld h, l                                       ; $4631: $65
    ld [hl], e                                    ; $4632: $73
    jr nz, jr_02E_4696                            ; $4633: $20 $61

    rst $38                                       ; $4635: $FF
    ld h, e                                       ; $4636: $63
    ld [hl], d                                    ; $4637: $72
    ld h, l                                       ; $4638: $65
    ld h, c                                       ; $4639: $61
    ld [hl], h                                    ; $463A: $74
    ld [hl], l                                    ; $463B: $75
    ld [hl], d                                    ; $463C: $72
    ld h, l                                       ; $463D: $65
    daa                                           ; $463E: $27
    ld [hl], e                                    ; $463F: $73
    cp $61                                        ; $4640: $FE $61
    ld l, c                                       ; $4642: $69
    ld l, h                                       ; $4643: $6C
    ld l, l                                       ; $4644: $6D
    ld h, l                                       ; $4645: $65
    ld l, [hl]                                    ; $4646: $6E
    ld [hl], h                                    ; $4647: $74
    ld [hl], e                                    ; $4648: $73
    ld l, $FE                                     ; $4649: $2E $FE
    db $FD                                        ; $464B: $FD
    sbc d                                         ; $464C: $9A
    ld b, l                                       ; $464D: $45
    ld l, $E3                                     ; $464E: $2E $E3
    ld b, b                                       ; $4650: $40
    sbc a                                         ; $4651: $9F
    ld d, d                                       ; $4652: $52
    ld [hl], l                                    ; $4653: $75
    ld l, [hl]                                    ; $4654: $6E
    ld h, l                                       ; $4655: $65
    ld c, a                                       ; $4656: $4F
    ld h, [hl]                                    ; $4657: $66
    ld c, l                                       ; $4658: $4D
    ld l, c                                       ; $4659: $69

jr_02E_465A:
    ld h, a                                       ; $465A: $67
    ld l, b                                       ; $465B: $68
    ld [hl], h                                    ; $465C: $74
    rst $38                                       ; $465D: $FF
    ld [hl], d                                    ; $465E: $72
    ld h, c                                       ; $465F: $61
    ld l, c                                       ; $4660: $69
    ld [hl], e                                    ; $4661: $73
    ld h, l                                       ; $4662: $65
    ld [hl], e                                    ; $4663: $73
    jr nz, jr_02E_46C7                            ; $4664: $20 $61

jr_02E_4666:
    cp $63                                        ; $4666: $FE $63
    ld [hl], d                                    ; $4668: $72
    ld h, l                                       ; $4669: $65
    ld h, c                                       ; $466A: $61
    ld [hl], h                                    ; $466B: $74
    ld [hl], l                                    ; $466C: $75
    ld [hl], d                                    ; $466D: $72
    ld h, l                                       ; $466E: $65
    daa                                           ; $466F: $27
    ld [hl], e                                    ; $4670: $73
    rst $38                                       ; $4671: $FF
    ld b, c                                       ; $4672: $41
    ld [hl], h                                    ; $4673: $74
    ld [hl], h                                    ; $4674: $74
    ld h, c                                       ; $4675: $61
    ld h, e                                       ; $4676: $63
    ld l, e                                       ; $4677: $6B
    ld l, $FE                                     ; $4678: $2E $FE
    db $FD                                        ; $467A: $FD
    sbc d                                         ; $467B: $9A
    ld b, l                                       ; $467C: $45
    ld l, $E3                                     ; $467D: $2E $E3
    ld b, b                                       ; $467F: $40
    sbc a                                         ; $4680: $9F
    ld d, d                                       ; $4681: $52
    ld [hl], l                                    ; $4682: $75
    ld l, [hl]                                    ; $4683: $6E
    ld h, l                                       ; $4684: $65
    ld c, a                                       ; $4685: $4F
    ld h, [hl]                                    ; $4686: $66
    ld c, b                                       ; $4687: $48
    ld l, a                                       ; $4688: $6F
    ld [hl], b                                    ; $4689: $70
    ld h, l                                       ; $468A: $65
    rst $38                                       ; $468B: $FF
    ld [hl], d                                    ; $468C: $72
    ld h, c                                       ; $468D: $61
    ld l, c                                       ; $468E: $69
    ld [hl], e                                    ; $468F: $73
    ld h, l                                       ; $4690: $65
    ld [hl], e                                    ; $4691: $73
    jr nz, jr_02E_46F5                            ; $4692: $20 $61

    cp $63                                        ; $4694: $FE $63

jr_02E_4696:
    ld [hl], d                                    ; $4696: $72
    ld h, l                                       ; $4697: $65
    ld h, c                                       ; $4698: $61
    ld [hl], h                                    ; $4699: $74
    ld [hl], l                                    ; $469A: $75
    ld [hl], d                                    ; $469B: $72
    ld h, l                                       ; $469C: $65
    daa                                           ; $469D: $27
    ld [hl], e                                    ; $469E: $73
    rst $38                                       ; $469F: $FF
    ld b, h                                       ; $46A0: $44
    ld h, l                                       ; $46A1: $65
    ld h, [hl]                                    ; $46A2: $66
    ld h, l                                       ; $46A3: $65
    ld l, [hl]                                    ; $46A4: $6E
    ld [hl], e                                    ; $46A5: $73
    ld h, l                                       ; $46A6: $65
    ld l, $FE                                     ; $46A7: $2E $FE
    db $FD                                        ; $46A9: $FD
    sbc d                                         ; $46AA: $9A
    ld b, l                                       ; $46AB: $45
    ld l, $E3                                     ; $46AC: $2E $E3
    ld b, b                                       ; $46AE: $40
    sbc a                                         ; $46AF: $9F
    ld d, d                                       ; $46B0: $52
    ld [hl], l                                    ; $46B1: $75
    ld l, [hl]                                    ; $46B2: $6E
    ld h, l                                       ; $46B3: $65
    ld c, a                                       ; $46B4: $4F
    ld h, [hl]                                    ; $46B5: $66
    ld d, b                                       ; $46B6: $50
    ld l, a                                       ; $46B7: $6F
    ld [hl], a                                    ; $46B8: $77
    ld h, l                                       ; $46B9: $65
    ld [hl], d                                    ; $46BA: $72
    rst $38                                       ; $46BB: $FF
    ld [hl], d                                    ; $46BC: $72
    ld h, c                                       ; $46BD: $61
    ld l, c                                       ; $46BE: $69
    ld [hl], e                                    ; $46BF: $73
    ld h, l                                       ; $46C0: $65
    ld [hl], e                                    ; $46C1: $73
    jr nz, jr_02E_4725                            ; $46C2: $20 $61

    cp $63                                        ; $46C4: $FE $63
    ld [hl], d                                    ; $46C6: $72

jr_02E_46C7:
    ld h, l                                       ; $46C7: $65
    ld h, c                                       ; $46C8: $61
    ld [hl], h                                    ; $46C9: $74
    ld [hl], l                                    ; $46CA: $75
    ld [hl], d                                    ; $46CB: $72
    ld h, l                                       ; $46CC: $65
    daa                                           ; $46CD: $27
    ld [hl], e                                    ; $46CE: $73
    rst $38                                       ; $46CF: $FF
    ld c, l                                       ; $46D0: $4D
    ld h, c                                       ; $46D1: $61
    ld h, a                                       ; $46D2: $67
    ld l, c                                       ; $46D3: $69
    ld h, e                                       ; $46D4: $63
    jr nz, jr_02E_4718                            ; $46D5: $20 $41

    ld [hl], h                                    ; $46D7: $74
    ld [hl], h                                    ; $46D8: $74
    ld h, c                                       ; $46D9: $61
    ld h, e                                       ; $46DA: $63
    ld l, e                                       ; $46DB: $6B
    ld l, $FE                                     ; $46DC: $2E $FE
    db $FD                                        ; $46DE: $FD
    sbc d                                         ; $46DF: $9A
    ld b, l                                       ; $46E0: $45
    ld l, $E3                                     ; $46E1: $2E $E3
    ld b, b                                       ; $46E3: $40
    sbc a                                         ; $46E4: $9F
    ld d, d                                       ; $46E5: $52
    ld [hl], l                                    ; $46E6: $75
    ld l, [hl]                                    ; $46E7: $6E
    ld h, l                                       ; $46E8: $65
    ld c, a                                       ; $46E9: $4F
    ld h, [hl]                                    ; $46EA: $66
    ld d, a                                       ; $46EB: $57
    ld l, c                                       ; $46EC: $69
    ld l, h                                       ; $46ED: $6C
    ld l, h                                       ; $46EE: $6C
    rst $38                                       ; $46EF: $FF
    ld [hl], d                                    ; $46F0: $72
    ld h, c                                       ; $46F1: $61
    ld l, c                                       ; $46F2: $69
    ld [hl], e                                    ; $46F3: $73
    ld h, l                                       ; $46F4: $65

jr_02E_46F5:
    ld [hl], e                                    ; $46F5: $73
    jr nz, jr_02E_4759                            ; $46F6: $20 $61

    cp $63                                        ; $46F8: $FE $63
    ld [hl], d                                    ; $46FA: $72
    ld h, l                                       ; $46FB: $65
    ld h, c                                       ; $46FC: $61
    ld [hl], h                                    ; $46FD: $74
    ld [hl], l                                    ; $46FE: $75
    ld [hl], d                                    ; $46FF: $72
    ld h, l                                       ; $4700: $65
    daa                                           ; $4701: $27
    ld [hl], e                                    ; $4702: $73
    rst $38                                       ; $4703: $FF
    ld c, l                                       ; $4704: $4D
    ld h, c                                       ; $4705: $61
    ld h, a                                       ; $4706: $67
    ld l, c                                       ; $4707: $69
    ld h, e                                       ; $4708: $63
    jr nz, jr_02E_474F                            ; $4709: $20 $44

    ld h, l                                       ; $470B: $65
    ld h, [hl]                                    ; $470C: $66
    ld h, l                                       ; $470D: $65
    ld l, [hl]                                    ; $470E: $6E
    ld [hl], e                                    ; $470F: $73
    ld h, l                                       ; $4710: $65
    ld l, $FE                                     ; $4711: $2E $FE
    db $FD                                        ; $4713: $FD
    sbc d                                         ; $4714: $9A
    ld b, l                                       ; $4715: $45
    ld l, $E3                                     ; $4716: $2E $E3

jr_02E_4718:
    ld b, b                                       ; $4718: $40
    sbc a                                         ; $4719: $9F
    ld d, d                                       ; $471A: $52
    ld [hl], l                                    ; $471B: $75
    ld l, [hl]                                    ; $471C: $6E
    ld h, l                                       ; $471D: $65
    ld c, a                                       ; $471E: $4F
    ld h, [hl]                                    ; $471F: $66
    ld b, [hl]                                    ; $4720: $46
    ld [hl], l                                    ; $4721: $75
    ld [hl], d                                    ; $4722: $72
    ld a, c                                       ; $4723: $79
    rst $38                                       ; $4724: $FF

jr_02E_4725:
    ld [hl], d                                    ; $4725: $72
    ld h, c                                       ; $4726: $61
    ld l, c                                       ; $4727: $69
    ld [hl], e                                    ; $4728: $73
    ld h, l                                       ; $4729: $65
    ld [hl], e                                    ; $472A: $73
    jr nz, jr_02E_478E                            ; $472B: $20 $61

    cp $63                                        ; $472D: $FE $63
    ld [hl], d                                    ; $472F: $72
    ld h, l                                       ; $4730: $65
    ld h, c                                       ; $4731: $61
    ld [hl], h                                    ; $4732: $74
    ld [hl], l                                    ; $4733: $75
    ld [hl], d                                    ; $4734: $72
    ld h, l                                       ; $4735: $65
    daa                                           ; $4736: $27
    ld [hl], e                                    ; $4737: $73
    rst $38                                       ; $4738: $FF
    ld d, e                                       ; $4739: $53
    ld [hl], b                                    ; $473A: $70
    ld h, l                                       ; $473B: $65
    ld h, l                                       ; $473C: $65
    ld h, h                                       ; $473D: $64
    ld l, $FE                                     ; $473E: $2E $FE
    db $FD                                        ; $4740: $FD
    sbc d                                         ; $4741: $9A
    ld b, l                                       ; $4742: $45
    ld l, $E3                                     ; $4743: $2E $E3
    ld b, b                                       ; $4745: $40
    sbc a                                         ; $4746: $9F
    ld c, l                                       ; $4747: $4D
    ld h, c                                       ; $4748: $61
    ld [hl], e                                    ; $4749: $73
    ld [hl], h                                    ; $474A: $74
    ld h, l                                       ; $474B: $65
    ld [hl], d                                    ; $474C: $72
    jr nz, jr_02E_47A1                            ; $474D: $20 $52

jr_02E_474F:
    ld [hl], l                                    ; $474F: $75
    ld l, [hl]                                    ; $4750: $6E
    ld h, l                                       ; $4751: $65
    rst $38                                       ; $4752: $FF
    ld [hl], d                                    ; $4753: $72
    ld h, c                                       ; $4754: $61
    ld l, c                                       ; $4755: $69
    ld [hl], e                                    ; $4756: $73
    ld h, l                                       ; $4757: $65
    ld [hl], e                                    ; $4758: $73

jr_02E_4759:
    jr nz, jr_02E_47BC                            ; $4759: $20 $61

    ld l, h                                       ; $475B: $6C
    ld l, h                                       ; $475C: $6C
    jr nz, jr_02E_47CE                            ; $475D: $20 $6F

    ld h, [hl]                                    ; $475F: $66
    jr nz, jr_02E_47C3                            ; $4760: $20 $61

    cp $63                                        ; $4762: $FE $63
    ld [hl], d                                    ; $4764: $72
    ld h, l                                       ; $4765: $65
    ld h, c                                       ; $4766: $61
    ld [hl], h                                    ; $4767: $74
    ld [hl], l                                    ; $4768: $75
    ld [hl], d                                    ; $4769: $72
    ld h, l                                       ; $476A: $65
    daa                                           ; $476B: $27
    ld [hl], e                                    ; $476C: $73
    rst $38                                       ; $476D: $FF
    ld [hl], e                                    ; $476E: $73
    ld [hl], h                                    ; $476F: $74
    ld h, c                                       ; $4770: $61
    ld [hl], h                                    ; $4771: $74
    ld [hl], e                                    ; $4772: $73
    ld l, $FE                                     ; $4773: $2E $FE
    db $FD                                        ; $4775: $FD
    sbc d                                         ; $4776: $9A
    ld b, l                                       ; $4777: $45
    ld l, $E3                                     ; $4778: $2E $E3
    ld b, b                                       ; $477A: $40
    sbc a                                         ; $477B: $9F
    ld c, e                                       ; $477C: $4B
    ld h, c                                       ; $477D: $61
    ld [hl], d                                    ; $477E: $72
    ld l, l                                       ; $477F: $6D
    ld l, c                                       ; $4780: $69
    ld h, e                                       ; $4781: $63
    jr nz, jr_02E_47D1                            ; $4782: $20 $4D

    ld l, c                                       ; $4784: $69
    ld h, a                                       ; $4785: $67
    ld l, b                                       ; $4786: $68
    ld [hl], h                                    ; $4787: $74
    rst $38                                       ; $4788: $FF
    ld [hl], d                                    ; $4789: $72
    ld h, c                                       ; $478A: $61
    ld l, c                                       ; $478B: $69
    ld [hl], e                                    ; $478C: $73
    ld h, l                                       ; $478D: $65

jr_02E_478E:
    ld [hl], e                                    ; $478E: $73
    jr nz, jr_02E_47F2                            ; $478F: $20 $61

    cp $63                                        ; $4791: $FE $63
    ld [hl], d                                    ; $4793: $72
    ld h, l                                       ; $4794: $65
    ld h, c                                       ; $4795: $61
    ld [hl], h                                    ; $4796: $74
    ld [hl], l                                    ; $4797: $75
    ld [hl], d                                    ; $4798: $72
    ld h, l                                       ; $4799: $65
    daa                                           ; $479A: $27
    ld [hl], e                                    ; $479B: $73
    rst $38                                       ; $479C: $FF
    ld b, c                                       ; $479D: $41
    ld [hl], h                                    ; $479E: $74
    ld [hl], h                                    ; $479F: $74
    ld h, c                                       ; $47A0: $61

jr_02E_47A1:
    ld h, e                                       ; $47A1: $63
    ld l, e                                       ; $47A2: $6B
    jr nz, jr_02E_4806                            ; $47A3: $20 $61

    jr nz, jr_02E_4813                            ; $47A5: $20 $6C

    ld l, a                                       ; $47A7: $6F
    ld [hl], h                                    ; $47A8: $74
    inc l                                         ; $47A9: $2C
    cp $62                                        ; $47AA: $FE $62
    ld [hl], l                                    ; $47AC: $75
    ld [hl], h                                    ; $47AD: $74
    jr nz, jr_02E_481C                            ; $47AE: $20 $6C

    ld l, a                                       ; $47B0: $6F
    ld [hl], a                                    ; $47B1: $77
    ld h, l                                       ; $47B2: $65
    ld [hl], d                                    ; $47B3: $72
    ld [hl], e                                    ; $47B4: $73
    rst $38                                       ; $47B5: $FF
    ld [hl], e                                    ; $47B6: $73
    ld l, a                                       ; $47B7: $6F
    ld l, l                                       ; $47B8: $6D
    ld h, l                                       ; $47B9: $65
    ld [hl], h                                    ; $47BA: $74
    ld l, b                                       ; $47BB: $68

jr_02E_47BC:
    ld l, c                                       ; $47BC: $69
    ld l, [hl]                                    ; $47BD: $6E
    ld h, a                                       ; $47BE: $67
    jr nz, jr_02E_4826                            ; $47BF: $20 $65

    ld l, h                                       ; $47C1: $6C
    ld [hl], e                                    ; $47C2: $73

jr_02E_47C3:
    ld h, l                                       ; $47C3: $65
    ld l, $FE                                     ; $47C4: $2E $FE
    db $FD                                        ; $47C6: $FD
    sbc d                                         ; $47C7: $9A
    ld b, l                                       ; $47C8: $45
    ld l, $E3                                     ; $47C9: $2E $E3
    ld b, b                                       ; $47CB: $40
    sbc a                                         ; $47CC: $9F
    ld c, e                                       ; $47CD: $4B

jr_02E_47CE:
    ld h, c                                       ; $47CE: $61
    ld [hl], d                                    ; $47CF: $72
    ld l, l                                       ; $47D0: $6D

jr_02E_47D1:
    ld l, c                                       ; $47D1: $69
    ld h, e                                       ; $47D2: $63
    jr nz, jr_02E_481D                            ; $47D3: $20 $48

    ld l, a                                       ; $47D5: $6F
    ld [hl], b                                    ; $47D6: $70
    ld h, l                                       ; $47D7: $65
    rst $38                                       ; $47D8: $FF
    ld [hl], d                                    ; $47D9: $72
    ld h, c                                       ; $47DA: $61
    ld l, c                                       ; $47DB: $69
    ld [hl], e                                    ; $47DC: $73
    ld h, l                                       ; $47DD: $65
    ld [hl], e                                    ; $47DE: $73
    jr nz, jr_02E_4842                            ; $47DF: $20 $61

    cp $63                                        ; $47E1: $FE $63
    ld [hl], d                                    ; $47E3: $72
    ld h, l                                       ; $47E4: $65
    ld h, c                                       ; $47E5: $61
    ld [hl], h                                    ; $47E6: $74
    ld [hl], l                                    ; $47E7: $75
    ld [hl], d                                    ; $47E8: $72
    ld h, l                                       ; $47E9: $65
    daa                                           ; $47EA: $27
    ld [hl], e                                    ; $47EB: $73
    rst $38                                       ; $47EC: $FF
    ld b, h                                       ; $47ED: $44
    ld h, l                                       ; $47EE: $65
    ld h, [hl]                                    ; $47EF: $66
    ld h, l                                       ; $47F0: $65
    ld l, [hl]                                    ; $47F1: $6E

jr_02E_47F2:
    ld [hl], e                                    ; $47F2: $73
    ld h, l                                       ; $47F3: $65
    jr nz, @+$63                                  ; $47F4: $20 $61

    jr nz, jr_02E_4864                            ; $47F6: $20 $6C

    ld l, a                                       ; $47F8: $6F
    ld [hl], h                                    ; $47F9: $74
    inc l                                         ; $47FA: $2C
    cp $62                                        ; $47FB: $FE $62
    ld [hl], l                                    ; $47FD: $75
    ld [hl], h                                    ; $47FE: $74
    jr nz, @+$6E                                  ; $47FF: $20 $6C

    ld l, a                                       ; $4801: $6F
    ld [hl], a                                    ; $4802: $77
    ld h, l                                       ; $4803: $65
    ld [hl], d                                    ; $4804: $72
    ld [hl], e                                    ; $4805: $73

jr_02E_4806:
    rst $38                                       ; $4806: $FF
    ld [hl], e                                    ; $4807: $73
    ld l, a                                       ; $4808: $6F
    ld l, l                                       ; $4809: $6D
    ld h, l                                       ; $480A: $65
    ld [hl], h                                    ; $480B: $74
    ld l, b                                       ; $480C: $68
    ld l, c                                       ; $480D: $69
    ld l, [hl]                                    ; $480E: $6E
    ld h, a                                       ; $480F: $67
    jr nz, jr_02E_4877                            ; $4810: $20 $65

    ld l, h                                       ; $4812: $6C

jr_02E_4813:
    ld [hl], e                                    ; $4813: $73
    ld h, l                                       ; $4814: $65
    ld l, $FE                                     ; $4815: $2E $FE
    db $FD                                        ; $4817: $FD
    sbc d                                         ; $4818: $9A
    ld b, l                                       ; $4819: $45
    ld l, $E3                                     ; $481A: $2E $E3

jr_02E_481C:
    ld b, b                                       ; $481C: $40

jr_02E_481D:
    sbc a                                         ; $481D: $9F
    ld c, e                                       ; $481E: $4B
    ld h, c                                       ; $481F: $61
    ld [hl], d                                    ; $4820: $72
    ld l, l                                       ; $4821: $6D
    ld l, c                                       ; $4822: $69
    ld h, e                                       ; $4823: $63
    jr nz, jr_02E_4876                            ; $4824: $20 $50

jr_02E_4826:
    ld l, a                                       ; $4826: $6F
    ld [hl], a                                    ; $4827: $77
    ld h, l                                       ; $4828: $65
    ld [hl], d                                    ; $4829: $72
    rst $38                                       ; $482A: $FF
    ld [hl], d                                    ; $482B: $72
    ld h, c                                       ; $482C: $61
    ld l, c                                       ; $482D: $69
    ld [hl], e                                    ; $482E: $73
    ld h, l                                       ; $482F: $65
    ld [hl], e                                    ; $4830: $73
    jr nz, jr_02E_4894                            ; $4831: $20 $61

    cp $63                                        ; $4833: $FE $63
    ld [hl], d                                    ; $4835: $72
    ld h, l                                       ; $4836: $65
    ld h, c                                       ; $4837: $61
    ld [hl], h                                    ; $4838: $74
    ld [hl], l                                    ; $4839: $75
    ld [hl], d                                    ; $483A: $72
    ld h, l                                       ; $483B: $65
    daa                                           ; $483C: $27
    ld [hl], e                                    ; $483D: $73
    rst $38                                       ; $483E: $FF
    ld c, l                                       ; $483F: $4D
    ld h, c                                       ; $4840: $61
    ld h, a                                       ; $4841: $67

jr_02E_4842:
    ld l, c                                       ; $4842: $69
    ld h, e                                       ; $4843: $63
    jr nz, jr_02E_4887                            ; $4844: $20 $41

    ld [hl], h                                    ; $4846: $74
    ld [hl], h                                    ; $4847: $74
    ld h, c                                       ; $4848: $61
    ld h, e                                       ; $4849: $63
    ld l, e                                       ; $484A: $6B
    jr nz, @+$63                                  ; $484B: $20 $61

    cp $6C                                        ; $484D: $FE $6C
    ld l, a                                       ; $484F: $6F
    ld [hl], h                                    ; $4850: $74
    inc l                                         ; $4851: $2C
    jr nz, jr_02E_48B6                            ; $4852: $20 $62

    ld [hl], l                                    ; $4854: $75
    ld [hl], h                                    ; $4855: $74
    jr nz, @+$6E                                  ; $4856: $20 $6C

    ld l, a                                       ; $4858: $6F
    ld [hl], a                                    ; $4859: $77
    ld h, l                                       ; $485A: $65
    ld [hl], d                                    ; $485B: $72
    ld [hl], e                                    ; $485C: $73
    rst $38                                       ; $485D: $FF
    ld [hl], e                                    ; $485E: $73
    ld l, a                                       ; $485F: $6F
    ld l, l                                       ; $4860: $6D
    ld h, l                                       ; $4861: $65
    ld [hl], h                                    ; $4862: $74
    ld l, b                                       ; $4863: $68

jr_02E_4864:
    ld l, c                                       ; $4864: $69
    ld l, [hl]                                    ; $4865: $6E
    ld h, a                                       ; $4866: $67
    jr nz, jr_02E_48CE                            ; $4867: $20 $65

    ld l, h                                       ; $4869: $6C
    ld [hl], e                                    ; $486A: $73
    ld h, l                                       ; $486B: $65
    ld l, $FE                                     ; $486C: $2E $FE
    db $FD                                        ; $486E: $FD
    sbc d                                         ; $486F: $9A
    ld b, l                                       ; $4870: $45
    ld l, $E3                                     ; $4871: $2E $E3
    ld b, b                                       ; $4873: $40
    sbc a                                         ; $4874: $9F
    ld c, e                                       ; $4875: $4B

jr_02E_4876:
    ld h, c                                       ; $4876: $61

jr_02E_4877:
    ld [hl], d                                    ; $4877: $72
    ld l, l                                       ; $4878: $6D
    ld l, c                                       ; $4879: $69
    ld h, e                                       ; $487A: $63
    jr nz, jr_02E_48D4                            ; $487B: $20 $57

    ld l, c                                       ; $487D: $69
    ld l, h                                       ; $487E: $6C
    ld l, h                                       ; $487F: $6C
    rst $38                                       ; $4880: $FF
    ld [hl], d                                    ; $4881: $72
    ld h, c                                       ; $4882: $61
    ld l, c                                       ; $4883: $69
    ld [hl], e                                    ; $4884: $73
    ld h, l                                       ; $4885: $65
    ld [hl], e                                    ; $4886: $73

jr_02E_4887:
    jr nz, jr_02E_48EA                            ; $4887: $20 $61

    cp $63                                        ; $4889: $FE $63
    ld [hl], d                                    ; $488B: $72
    ld h, l                                       ; $488C: $65
    ld h, c                                       ; $488D: $61
    ld [hl], h                                    ; $488E: $74
    ld [hl], l                                    ; $488F: $75
    ld [hl], d                                    ; $4890: $72
    ld h, l                                       ; $4891: $65
    daa                                           ; $4892: $27
    ld [hl], e                                    ; $4893: $73

jr_02E_4894:
    rst $38                                       ; $4894: $FF
    ld c, l                                       ; $4895: $4D
    ld h, c                                       ; $4896: $61
    ld h, a                                       ; $4897: $67
    ld l, c                                       ; $4898: $69
    ld h, e                                       ; $4899: $63
    jr nz, jr_02E_48E0                            ; $489A: $20 $44

    ld h, l                                       ; $489C: $65
    ld h, [hl]                                    ; $489D: $66
    ld h, l                                       ; $489E: $65
    ld l, [hl]                                    ; $489F: $6E
    ld [hl], e                                    ; $48A0: $73
    ld h, l                                       ; $48A1: $65
    jr nz, jr_02E_4905                            ; $48A2: $20 $61

    cp $6C                                        ; $48A4: $FE $6C
    ld l, a                                       ; $48A6: $6F
    ld [hl], h                                    ; $48A7: $74
    inc l                                         ; $48A8: $2C
    jr nz, jr_02E_490D                            ; $48A9: $20 $62

    ld [hl], l                                    ; $48AB: $75
    ld [hl], h                                    ; $48AC: $74
    jr nz, jr_02E_491B                            ; $48AD: $20 $6C

    ld l, a                                       ; $48AF: $6F
    ld [hl], a                                    ; $48B0: $77
    ld h, l                                       ; $48B1: $65
    ld [hl], d                                    ; $48B2: $72
    ld [hl], e                                    ; $48B3: $73
    rst $38                                       ; $48B4: $FF
    ld [hl], e                                    ; $48B5: $73

jr_02E_48B6:
    ld l, a                                       ; $48B6: $6F
    ld l, l                                       ; $48B7: $6D
    ld h, l                                       ; $48B8: $65
    ld [hl], h                                    ; $48B9: $74
    ld l, b                                       ; $48BA: $68
    ld l, c                                       ; $48BB: $69
    ld l, [hl]                                    ; $48BC: $6E
    ld h, a                                       ; $48BD: $67
    jr nz, @+$67                                  ; $48BE: $20 $65

    ld l, h                                       ; $48C0: $6C
    ld [hl], e                                    ; $48C1: $73
    ld h, l                                       ; $48C2: $65
    ld l, $FE                                     ; $48C3: $2E $FE
    db $FD                                        ; $48C5: $FD
    sbc d                                         ; $48C6: $9A
    ld b, l                                       ; $48C7: $45
    ld l, $E3                                     ; $48C8: $2E $E3
    ld b, b                                       ; $48CA: $40
    sbc a                                         ; $48CB: $9F
    ld c, e                                       ; $48CC: $4B
    ld h, c                                       ; $48CD: $61

jr_02E_48CE:
    ld [hl], d                                    ; $48CE: $72
    ld l, l                                       ; $48CF: $6D
    ld l, c                                       ; $48D0: $69
    ld h, e                                       ; $48D1: $63
    jr nz, jr_02E_491A                            ; $48D2: $20 $46

jr_02E_48D4:
    ld [hl], l                                    ; $48D4: $75
    ld [hl], d                                    ; $48D5: $72
    ld a, c                                       ; $48D6: $79
    rst $38                                       ; $48D7: $FF
    ld [hl], d                                    ; $48D8: $72
    ld h, c                                       ; $48D9: $61
    ld l, c                                       ; $48DA: $69
    ld [hl], e                                    ; $48DB: $73
    ld h, l                                       ; $48DC: $65
    ld [hl], e                                    ; $48DD: $73
    jr nz, jr_02E_4941                            ; $48DE: $20 $61

jr_02E_48E0:
    cp $63                                        ; $48E0: $FE $63
    ld [hl], d                                    ; $48E2: $72
    ld h, l                                       ; $48E3: $65
    ld h, c                                       ; $48E4: $61
    ld [hl], h                                    ; $48E5: $74
    ld [hl], l                                    ; $48E6: $75
    ld [hl], d                                    ; $48E7: $72
    ld h, l                                       ; $48E8: $65
    daa                                           ; $48E9: $27

jr_02E_48EA:
    ld [hl], e                                    ; $48EA: $73
    rst $38                                       ; $48EB: $FF
    ld d, e                                       ; $48EC: $53
    ld [hl], b                                    ; $48ED: $70
    ld h, l                                       ; $48EE: $65
    ld h, l                                       ; $48EF: $65
    ld h, h                                       ; $48F0: $64
    jr nz, @+$63                                  ; $48F1: $20 $61

    jr nz, jr_02E_4961                            ; $48F3: $20 $6C

    ld l, a                                       ; $48F5: $6F
    ld [hl], h                                    ; $48F6: $74
    inc l                                         ; $48F7: $2C
    cp $62                                        ; $48F8: $FE $62
    ld [hl], l                                    ; $48FA: $75
    ld [hl], h                                    ; $48FB: $74
    jr nz, @+$6E                                  ; $48FC: $20 $6C

    ld l, a                                       ; $48FE: $6F
    ld [hl], a                                    ; $48FF: $77
    ld h, l                                       ; $4900: $65
    ld [hl], d                                    ; $4901: $72
    ld [hl], e                                    ; $4902: $73
    rst $38                                       ; $4903: $FF
    ld [hl], e                                    ; $4904: $73

jr_02E_4905:
    ld l, a                                       ; $4905: $6F
    ld l, l                                       ; $4906: $6D
    ld h, l                                       ; $4907: $65
    ld [hl], h                                    ; $4908: $74
    ld l, b                                       ; $4909: $68
    ld l, c                                       ; $490A: $69
    ld l, [hl]                                    ; $490B: $6E
    ld h, a                                       ; $490C: $67

jr_02E_490D:
    jr nz, jr_02E_4974                            ; $490D: $20 $65

    ld l, h                                       ; $490F: $6C
    ld [hl], e                                    ; $4910: $73
    ld h, l                                       ; $4911: $65
    ld l, $FE                                     ; $4912: $2E $FE
    db $FD                                        ; $4914: $FD
    sbc d                                         ; $4915: $9A
    ld b, l                                       ; $4916: $45
    ld l, $E3                                     ; $4917: $2E $E3
    ld b, b                                       ; $4919: $40

jr_02E_491A:
    sbc a                                         ; $491A: $9F

jr_02E_491B:
    ld c, a                                       ; $491B: $4F
    ld l, b                                       ; $491C: $68
    inc l                                         ; $491D: $2C
    jr nz, jr_02E_4969                            ; $491E: $20 $49

    jr nz, jr_02E_4995                            ; $4920: $20 $73

    ld h, l                                       ; $4922: $65
    ld h, l                                       ; $4923: $65
    jr nz, jr_02E_499F                            ; $4924: $20 $79

    ld l, a                                       ; $4926: $6F
    ld [hl], l                                    ; $4927: $75
    rst $38                                       ; $4928: $FF
    ld l, b                                       ; $4929: $68
    ld h, c                                       ; $492A: $61
    halt                                          ; $492B: $76
    ld h, l                                       ; $492C: $65
    jr nz, jr_02E_4990                            ; $492D: $20 $61

    jr nz, jr_02E_4974                            ; $492F: $20 $43

    ld l, h                                       ; $4931: $6C
    ld l, a                                       ; $4932: $6F
    ld [hl], l                                    ; $4933: $75
    ld h, h                                       ; $4934: $64
    cp $46                                        ; $4935: $FE $46
    ld [hl], d                                    ; $4937: $72
    ld l, a                                       ; $4938: $6F
    ld l, [hl]                                    ; $4939: $6E
    ld h, h                                       ; $493A: $64
    ld l, $2E                                     ; $493B: $2E $2E
    ld l, $76                                     ; $493D: $2E $76
    ld h, l                                       ; $493F: $65
    ld [hl], d                                    ; $4940: $72

jr_02E_4941:
    ld a, c                                       ; $4941: $79
    rst $38                                       ; $4942: $FF
    ld [hl], d                                    ; $4943: $72
    ld h, c                                       ; $4944: $61
    ld [hl], d                                    ; $4945: $72
    ld h, l                                       ; $4946: $65
    jr nz, jr_02E_49B2                            ; $4947: $20 $69

    ld l, [hl]                                    ; $4949: $6E
    ld h, h                                       ; $494A: $64
    ld h, l                                       ; $494B: $65
    ld h, l                                       ; $494C: $65
    ld h, h                                       ; $494D: $64
    ld l, $20                                     ; $494E: $2E $20
    cp $49                                        ; $4950: $FE $49
    ld [hl], h                                    ; $4952: $74
    jr nz, jr_02E_49BD                            ; $4953: $20 $68

    ld h, c                                       ; $4955: $61
    ld [hl], e                                    ; $4956: $73
    jr nz, jr_02E_49CD                            ; $4957: $20 $74

    ld l, b                                       ; $4959: $68
    ld h, l                                       ; $495A: $65
    rst $38                                       ; $495B: $FF
    ld [hl], b                                    ; $495C: $70
    ld l, a                                       ; $495D: $6F
    ld [hl], a                                    ; $495E: $77
    ld h, l                                       ; $495F: $65
    ld [hl], d                                    ; $4960: $72

jr_02E_4961:
    jr nz, jr_02E_49D7                            ; $4961: $20 $74

    ld l, a                                       ; $4963: $6F
    jr nz, jr_02E_49CE                            ; $4964: $20 $68

    ld h, l                                       ; $4966: $65
    ld h, c                                       ; $4967: $61
    ld l, h                                       ; $4968: $6C

jr_02E_4969:
    cp $61                                        ; $4969: $FE $61
    ld l, [hl]                                    ; $496B: $6E
    ld a, c                                       ; $496C: $79
    jr nz, @+$79                                  ; $496D: $20 $77

    ld l, a                                       ; $496F: $6F
    ld [hl], l                                    ; $4970: $75
    ld l, [hl]                                    ; $4971: $6E
    ld h, h                                       ; $4972: $64
    inc l                                         ; $4973: $2C

jr_02E_4974:
    jr nz, jr_02E_49E4                            ; $4974: $20 $6E

    ld l, a                                       ; $4976: $6F
    rst $38                                       ; $4977: $FF
    ld l, l                                       ; $4978: $6D
    ld h, c                                       ; $4979: $61
    ld [hl], h                                    ; $497A: $74
    ld [hl], h                                    ; $497B: $74
    ld h, l                                       ; $497C: $65
    ld [hl], d                                    ; $497D: $72
    jr nz, jr_02E_49E8                            ; $497E: $20 $68

    ld l, a                                       ; $4980: $6F
    ld [hl], a                                    ; $4981: $77
    cp $73                                        ; $4982: $FE $73
    ld h, l                                       ; $4984: $65
    halt                                          ; $4985: $76
    ld h, l                                       ; $4986: $65
    ld [hl], d                                    ; $4987: $72
    ld h, l                                       ; $4988: $65
    ld l, $20                                     ; $4989: $2E $20
    jr nz, jr_02E_49D6                            ; $498B: $20 $49

    rst $38                                       ; $498D: $FF
    ld [hl], a                                    ; $498E: $77
    ld l, a                                       ; $498F: $6F

jr_02E_4990:
    ld [hl], l                                    ; $4990: $75
    ld l, h                                       ; $4991: $6C
    ld h, h                                       ; $4992: $64
    jr nz, @+$77                                  ; $4993: $20 $75

jr_02E_4995:
    ld [hl], e                                    ; $4995: $73
    ld h, l                                       ; $4996: $65
    jr nz, jr_02E_4A0D                            ; $4997: $20 $74

    ld l, b                                       ; $4999: $68
    ld h, c                                       ; $499A: $61
    ld [hl], h                                    ; $499B: $74
    cp $77                                        ; $499C: $FE $77
    ld l, c                                       ; $499E: $69

jr_02E_499F:
    ld [hl], e                                    ; $499F: $73
    ld h, l                                       ; $49A0: $65
    ld l, h                                       ; $49A1: $6C
    ld a, c                                       ; $49A2: $79
    ld hl, $FDFE                                  ; $49A3: $21 $FE $FD
    sbc d                                         ; $49A6: $9A
    ld b, l                                       ; $49A7: $45
    ld l, $E3                                     ; $49A8: $2E $E3
    ld b, b                                       ; $49AA: $40
    sbc a                                         ; $49AB: $9F
    ld b, c                                       ; $49AC: $41
    jr nz, @+$75                                  ; $49AD: $20 $73

    ld [hl], h                                    ; $49AF: $74
    ld [hl], d                                    ; $49B0: $72
    ld h, c                                       ; $49B1: $61

jr_02E_49B2:
    ld l, [hl]                                    ; $49B2: $6E
    ld h, a                                       ; $49B3: $67
    ld h, l                                       ; $49B4: $65
    rst $38                                       ; $49B5: $FF
    ld l, e                                       ; $49B6: $6B
    ld h, l                                       ; $49B7: $65
    ld a, c                                       ; $49B8: $79
    ld l, $2E                                     ; $49B9: $2E $2E
    ld l, $49                                     ; $49BB: $2E $49

jr_02E_49BD:
    jr nz, jr_02E_4A23                            ; $49BD: $20 $64

    ld l, a                                       ; $49BF: $6F
    jr nz, jr_02E_4A30                            ; $49C0: $20 $6E

    ld l, a                                       ; $49C2: $6F
    ld [hl], h                                    ; $49C3: $74
    cp $6B                                        ; $49C4: $FE $6B
    ld l, [hl]                                    ; $49C6: $6E
    ld l, a                                       ; $49C7: $6F
    ld [hl], a                                    ; $49C8: $77
    jr nz, jr_02E_4A42                            ; $49C9: $20 $77

    ld l, b                                       ; $49CB: $68
    ld h, l                                       ; $49CC: $65

jr_02E_49CD:
    ld [hl], d                                    ; $49CD: $72

jr_02E_49CE:
    ld h, l                                       ; $49CE: $65
    jr nz, @+$7B                                  ; $49CF: $20 $79

    ld l, a                                       ; $49D1: $6F
    ld [hl], l                                    ; $49D2: $75
    rst $38                                       ; $49D3: $FF
    ld h, e                                       ; $49D4: $63
    ld h, c                                       ; $49D5: $61

jr_02E_49D6:
    ld l, [hl]                                    ; $49D6: $6E

jr_02E_49D7:
    jr nz, jr_02E_4A4E                            ; $49D7: $20 $75

    ld [hl], e                                    ; $49D9: $73
    ld h, l                                       ; $49DA: $65
    jr nz, jr_02E_4A51                            ; $49DB: $20 $74

    ld l, b                                       ; $49DD: $68
    ld l, c                                       ; $49DE: $69
    ld [hl], e                                    ; $49DF: $73
    ld l, $FE                                     ; $49E0: $2E $FE
    db $FD                                        ; $49E2: $FD
    sbc d                                         ; $49E3: $9A

jr_02E_49E4:
    ld b, l                                       ; $49E4: $45
    ld l, $E3                                     ; $49E5: $2E $E3
    ld b, b                                       ; $49E7: $40

jr_02E_49E8:
    sbc a                                         ; $49E8: $9F
    ld d, a                                       ; $49E9: $57
    ld h, c                                       ; $49EA: $61
    ld [hl], h                                    ; $49EB: $74
    ld h, l                                       ; $49EC: $65
    ld [hl], d                                    ; $49ED: $72
    jr nz, jr_02E_4A5F                            ; $49EE: $20 $6F

    ld h, [hl]                                    ; $49F0: $66
    jr nz, jr_02E_4A3F                            ; $49F1: $20 $4C

    ld l, c                                       ; $49F3: $69
    ld h, [hl]                                    ; $49F4: $66
    ld h, l                                       ; $49F5: $65
    rst $38                                       ; $49F6: $FF
    ld [hl], b                                    ; $49F7: $70
    ld h, l                                       ; $49F8: $65
    ld [hl], d                                    ; $49F9: $72
    ld l, l                                       ; $49FA: $6D
    ld h, c                                       ; $49FB: $61
    ld l, [hl]                                    ; $49FC: $6E
    ld h, l                                       ; $49FD: $65
    ld l, [hl]                                    ; $49FE: $6E
    ld [hl], h                                    ; $49FF: $74
    ld l, h                                       ; $4A00: $6C
    ld a, c                                       ; $4A01: $79
    cp $72                                        ; $4A02: $FE $72
    ld h, c                                       ; $4A04: $61
    ld l, c                                       ; $4A05: $69
    ld [hl], e                                    ; $4A06: $73
    ld h, l                                       ; $4A07: $65
    ld [hl], e                                    ; $4A08: $73
    jr nz, jr_02E_4A84                            ; $4A09: $20 $79

    ld l, a                                       ; $4A0B: $6F
    ld [hl], l                                    ; $4A0C: $75

jr_02E_4A0D:
    ld [hl], d                                    ; $4A0D: $72
    rst $38                                       ; $4A0E: $FF
    ld h, l                                       ; $4A0F: $65
    ld l, [hl]                                    ; $4A10: $6E
    ld h, l                                       ; $4A11: $65
    ld [hl], d                                    ; $4A12: $72
    ld h, a                                       ; $4A13: $67
    ld a, c                                       ; $4A14: $79
    ld l, $FE                                     ; $4A15: $2E $FE
    db $FD                                        ; $4A17: $FD
    sbc d                                         ; $4A18: $9A
    ld b, l                                       ; $4A19: $45
    ld l, $E3                                     ; $4A1A: $2E $E3
    ld b, b                                       ; $4A1C: $40
    ld c, e                                       ; $4A1D: $4B
    ld bc, $CCFC                                  ; $4A1E: $01 $FC $CC
    ld l, $01                                     ; $4A21: $2E $01

jr_02E_4A23:
    nop                                           ; $4A23: $00
    rst $08                                       ; $4A24: $CF
    ld c, d                                       ; $4A25: $4A
    ld l, $02                                     ; $4A26: $2E $02
    nop                                           ; $4A28: $00
    cp $4A                                        ; $4A29: $FE $4A
    ld l, $03                                     ; $4A2B: $2E $03
    nop                                           ; $4A2D: $00
    inc l                                         ; $4A2E: $2C
    ld c, e                                       ; $4A2F: $4B

jr_02E_4A30:
    ld l, $04                                     ; $4A30: $2E $04
    nop                                           ; $4A32: $00
    ld e, [hl]                                    ; $4A33: $5E
    ld c, e                                       ; $4A34: $4B
    ld l, $05                                     ; $4A35: $2E $05
    nop                                           ; $4A37: $00
    adc a                                         ; $4A38: $8F
    ld c, e                                       ; $4A39: $4B
    ld l, $06                                     ; $4A3A: $2E $06
    nop                                           ; $4A3C: $00
    cp [hl]                                       ; $4A3D: $BE
    ld c, e                                       ; $4A3E: $4B

jr_02E_4A3F:
    ld l, $07                                     ; $4A3F: $2E $07
    nop                                           ; $4A41: $00

jr_02E_4A42:
    add hl, bc                                    ; $4A42: $09
    ld c, h                                       ; $4A43: $4C
    ld l, $08                                     ; $4A44: $2E $08
    nop                                           ; $4A46: $00
    ld d, e                                       ; $4A47: $53
    ld c, h                                       ; $4A48: $4C
    ld l, $09                                     ; $4A49: $2E $09
    nop                                           ; $4A4B: $00
    cp c                                          ; $4A4C: $B9
    ld c, h                                       ; $4A4D: $4C

jr_02E_4A4E:
    ld l, $0A                                     ; $4A4E: $2E $0A
    nop                                           ; $4A50: $00

jr_02E_4A51:
    rlca                                          ; $4A51: $07
    ld c, l                                       ; $4A52: $4D
    ld l, $0B                                     ; $4A53: $2E $0B
    nop                                           ; $4A55: $00
    dec [hl]                                      ; $4A56: $35
    ld c, l                                       ; $4A57: $4D
    ld l, $0C                                     ; $4A58: $2E $0C
    nop                                           ; $4A5A: $00
    sbc h                                         ; $4A5B: $9C
    ld c, l                                       ; $4A5C: $4D
    ld l, $0D                                     ; $4A5D: $2E $0D

jr_02E_4A5F:
    nop                                           ; $4A5F: $00
    di                                            ; $4A60: $F3
    ld c, l                                       ; $4A61: $4D
    ld l, $0E                                     ; $4A62: $2E $0E
    nop                                           ; $4A64: $00
    inc hl                                        ; $4A65: $23
    ld c, [hl]                                    ; $4A66: $4E
    ld l, $0F                                     ; $4A67: $2E $0F
    nop                                           ; $4A69: $00
    ld d, c                                       ; $4A6A: $51
    ld c, [hl]                                    ; $4A6B: $4E
    ld l, $10                                     ; $4A6C: $2E $10
    nop                                           ; $4A6E: $00
    add b                                         ; $4A6F: $80
    ld c, [hl]                                    ; $4A70: $4E
    ld l, $11                                     ; $4A71: $2E $11
    nop                                           ; $4A73: $00
    or d                                          ; $4A74: $B2
    ld c, [hl]                                    ; $4A75: $4E
    ld l, $12                                     ; $4A76: $2E $12
    nop                                           ; $4A78: $00
    add hl, bc                                    ; $4A79: $09
    ld c, a                                       ; $4A7A: $4F
    ld l, $14                                     ; $4A7B: $2E $14
    nop                                           ; $4A7D: $00
    scf                                           ; $4A7E: $37
    ld c, a                                       ; $4A7F: $4F
    ld l, $16                                     ; $4A80: $2E $16
    nop                                           ; $4A82: $00
    ld h, a                                       ; $4A83: $67

jr_02E_4A84:
    ld c, a                                       ; $4A84: $4F
    ld l, $17                                     ; $4A85: $2E $17
    nop                                           ; $4A87: $00
    call $2E4F                                    ; $4A88: $CD $4F $2E
    jr jr_02E_4A8D                                ; $4A8B: $18 $00

jr_02E_4A8D:
    nop                                           ; $4A8D: $00
    ld d, b                                       ; $4A8E: $50
    ld l, $19                                     ; $4A8F: $2E $19
    nop                                           ; $4A91: $00
    jr c, @+$52                                   ; $4A92: $38 $50

    ld l, $1A                                     ; $4A94: $2E $1A
    nop                                           ; $4A96: $00
    add b                                         ; $4A97: $80
    ld d, b                                       ; $4A98: $50
    ld l, $1B                                     ; $4A99: $2E $1B
    nop                                           ; $4A9B: $00
    xor a                                         ; $4A9C: $AF
    ld d, b                                       ; $4A9D: $50
    ld l, $1C                                     ; $4A9E: $2E $1C
    nop                                           ; $4AA0: $00
    dec b                                         ; $4AA1: $05
    ld d, c                                       ; $4AA2: $51
    ld l, $1D                                     ; $4AA3: $2E $1D
    nop                                           ; $4AA5: $00
    inc [hl]                                      ; $4AA6: $34
    ld d, c                                       ; $4AA7: $51
    ld l, $1E                                     ; $4AA8: $2E $1E
    nop                                           ; $4AAA: $00
    adc b                                         ; $4AAB: $88
    ld d, c                                       ; $4AAC: $51
    ld l, $1F                                     ; $4AAD: $2E $1F
    nop                                           ; $4AAF: $00
    cp e                                          ; $4AB0: $BB
    ld d, c                                       ; $4AB1: $51
    ld l, $20                                     ; $4AB2: $2E $20
    nop                                           ; $4AB4: $00
    dec d                                         ; $4AB5: $15
    ld d, d                                       ; $4AB6: $52
    ld l, $21                                     ; $4AB7: $2E $21
    nop                                           ; $4AB9: $00
    ld b, [hl]                                    ; $4ABA: $46
    ld d, d                                       ; $4ABB: $52
    ld l, $22                                     ; $4ABC: $2E $22
    nop                                           ; $4ABE: $00
    sbc l                                         ; $4ABF: $9D
    ld d, d                                       ; $4AC0: $52
    ld l, $23                                     ; $4AC1: $2E $23
    nop                                           ; $4AC3: $00
    call $2E52                                    ; $4AC4: $CD $52 $2E
    inc h                                         ; $4AC7: $24
    nop                                           ; $4AC8: $00
    ld a, $53                                     ; $4AC9: $3E $53
    rst $38                                       ; $4ACB: $FF
    ld b, [hl]                                    ; $4ACC: $46
    rlca                                          ; $4ACD: $07
    ld b, c                                       ; $4ACE: $41
    sbc a                                         ; $4ACF: $9F
    ld b, c                                       ; $4AD0: $41
    ld [hl], d                                    ; $4AD1: $72
    ld h, e                                       ; $4AD2: $63
    ld l, b                                       ; $4AD3: $68
    ld h, c                                       ; $4AD4: $61
    ld l, c                                       ; $4AD5: $69
    ld h, e                                       ; $4AD6: $63
    jr nz, @+$4E                                  ; $4AD7: $20 $4C

    ld h, l                                       ; $4AD9: $65
    ld h, c                                       ; $4ADA: $61
    ld h, [hl]                                    ; $4ADB: $66
    rst $38                                       ; $4ADC: $FF
    ld [hl], d                                    ; $4ADD: $72
    ld h, c                                       ; $4ADE: $61
    ld l, c                                       ; $4ADF: $69
    ld [hl], e                                    ; $4AE0: $73
    ld h, l                                       ; $4AE1: $65
    ld [hl], e                                    ; $4AE2: $73
    jr nz, jr_02E_4B46                            ; $4AE3: $20 $61

    cp $63                                        ; $4AE5: $FE $63
    ld [hl], d                                    ; $4AE7: $72
    ld h, l                                       ; $4AE8: $65
    ld h, c                                       ; $4AE9: $61
    ld [hl], h                                    ; $4AEA: $74
    ld [hl], l                                    ; $4AEB: $75
    ld [hl], d                                    ; $4AEC: $72
    ld h, l                                       ; $4AED: $65
    daa                                           ; $4AEE: $27
    ld [hl], e                                    ; $4AEF: $73
    rst $38                                       ; $4AF0: $FF
    ld d, e                                       ; $4AF1: $53
    ld l, e                                       ; $4AF2: $6B
    ld l, c                                       ; $4AF3: $69
    ld l, h                                       ; $4AF4: $6C
    ld l, h                                       ; $4AF5: $6C
    ld l, $FE                                     ; $4AF6: $2E $FE
    db $FD                                        ; $4AF8: $FD
    sbc d                                         ; $4AF9: $9A
    ld b, l                                       ; $4AFA: $45
    ld l, $E3                                     ; $4AFB: $2E $E3
    ld b, b                                       ; $4AFD: $40
    sbc a                                         ; $4AFE: $9F
    ld b, c                                       ; $4AFF: $41
    ld [hl], d                                    ; $4B00: $72
    ld l, l                                       ; $4B01: $6D
    ld l, a                                       ; $4B02: $6F
    ld [hl], d                                    ; $4B03: $72
    jr nz, jr_02E_4B55                            ; $4B04: $20 $4F

    ld [hl], d                                    ; $4B06: $72
    ld h, d                                       ; $4B07: $62
    rst $38                                       ; $4B08: $FF
    ld [hl], d                                    ; $4B09: $72
    ld h, c                                       ; $4B0A: $61
    ld l, c                                       ; $4B0B: $69
    ld [hl], e                                    ; $4B0C: $73
    ld h, l                                       ; $4B0D: $65
    ld [hl], e                                    ; $4B0E: $73
    jr nz, jr_02E_4B72                            ; $4B0F: $20 $61

    cp $63                                        ; $4B11: $FE $63
    ld [hl], d                                    ; $4B13: $72
    ld h, l                                       ; $4B14: $65
    ld h, c                                       ; $4B15: $61
    ld [hl], h                                    ; $4B16: $74
    ld [hl], l                                    ; $4B17: $75
    ld [hl], d                                    ; $4B18: $72
    ld h, l                                       ; $4B19: $65
    daa                                           ; $4B1A: $27
    ld [hl], e                                    ; $4B1B: $73
    rst $38                                       ; $4B1C: $FF
    ld b, h                                       ; $4B1D: $44
    ld h, l                                       ; $4B1E: $65
    ld h, [hl]                                    ; $4B1F: $66
    ld h, l                                       ; $4B20: $65
    ld l, [hl]                                    ; $4B21: $6E
    ld [hl], e                                    ; $4B22: $73
    ld h, l                                       ; $4B23: $65
    ld l, $FE                                     ; $4B24: $2E $FE
    db $FD                                        ; $4B26: $FD
    sbc d                                         ; $4B27: $9A
    ld b, l                                       ; $4B28: $45
    ld l, $E3                                     ; $4B29: $2E $E3
    ld b, b                                       ; $4B2B: $40
    sbc a                                         ; $4B2C: $9F
    ld b, d                                       ; $4B2D: $42
    ld h, c                                       ; $4B2E: $61
    ld h, a                                       ; $4B2F: $67
    jr nz, jr_02E_4BA1                            ; $4B30: $20 $6F

    ld h, [hl]                                    ; $4B32: $66
    jr nz, jr_02E_4B77                            ; $4B33: $20 $42

    ld l, a                                       ; $4B35: $6F
    ld l, [hl]                                    ; $4B36: $6E
    ld h, l                                       ; $4B37: $65
    ld [hl], e                                    ; $4B38: $73
    rst $38                                       ; $4B39: $FF
    ld [hl], d                                    ; $4B3A: $72
    ld h, c                                       ; $4B3B: $61
    ld l, c                                       ; $4B3C: $69
    ld [hl], e                                    ; $4B3D: $73
    ld h, l                                       ; $4B3E: $65
    ld [hl], e                                    ; $4B3F: $73
    jr nz, jr_02E_4BA3                            ; $4B40: $20 $61

    cp $63                                        ; $4B42: $FE $63
    ld [hl], d                                    ; $4B44: $72
    ld h, l                                       ; $4B45: $65

jr_02E_4B46:
    ld h, c                                       ; $4B46: $61
    ld [hl], h                                    ; $4B47: $74
    ld [hl], l                                    ; $4B48: $75
    ld [hl], d                                    ; $4B49: $72
    ld h, l                                       ; $4B4A: $65
    daa                                           ; $4B4B: $27
    ld [hl], e                                    ; $4B4C: $73
    rst $38                                       ; $4B4D: $FF
    ld d, e                                       ; $4B4E: $53
    ld [hl], h                                    ; $4B4F: $74
    ld [hl], d                                    ; $4B50: $72
    ld h, l                                       ; $4B51: $65
    ld l, [hl]                                    ; $4B52: $6E
    ld h, a                                       ; $4B53: $67
    ld [hl], h                                    ; $4B54: $74

jr_02E_4B55:
    ld l, b                                       ; $4B55: $68
    ld l, $FE                                     ; $4B56: $2E $FE
    db $FD                                        ; $4B58: $FD
    sbc d                                         ; $4B59: $9A
    ld b, l                                       ; $4B5A: $45
    ld l, $E3                                     ; $4B5B: $2E $E3
    ld b, b                                       ; $4B5D: $40
    sbc a                                         ; $4B5E: $9F
    ld b, d                                       ; $4B5F: $42
    ld h, c                                       ; $4B60: $61
    ld [hl], d                                    ; $4B61: $72
    ld l, e                                       ; $4B62: $6B
    jr nz, jr_02E_4BB9                            ; $4B63: $20 $54

    ld l, b                                       ; $4B65: $68
    ld l, c                                       ; $4B66: $69
    ld l, l                                       ; $4B67: $6D
    ld h, d                                       ; $4B68: $62
    ld l, h                                       ; $4B69: $6C
    ld h, l                                       ; $4B6A: $65
    rst $38                                       ; $4B6B: $FF
    ld [hl], d                                    ; $4B6C: $72
    ld h, c                                       ; $4B6D: $61
    ld l, c                                       ; $4B6E: $69
    ld [hl], e                                    ; $4B6F: $73
    ld h, l                                       ; $4B70: $65
    ld [hl], e                                    ; $4B71: $73

jr_02E_4B72:
    jr nz, jr_02E_4BD5                            ; $4B72: $20 $61

    cp $63                                        ; $4B74: $FE $63
    ld [hl], d                                    ; $4B76: $72

jr_02E_4B77:
    ld h, l                                       ; $4B77: $65
    ld h, c                                       ; $4B78: $61
    ld [hl], h                                    ; $4B79: $74
    ld [hl], l                                    ; $4B7A: $75
    ld [hl], d                                    ; $4B7B: $72
    ld h, l                                       ; $4B7C: $65
    daa                                           ; $4B7D: $27
    ld [hl], e                                    ; $4B7E: $73
    rst $38                                       ; $4B7F: $FF
    ld b, h                                       ; $4B80: $44
    ld h, l                                       ; $4B81: $65
    ld h, [hl]                                    ; $4B82: $66
    ld h, l                                       ; $4B83: $65
    ld l, [hl]                                    ; $4B84: $6E
    ld [hl], e                                    ; $4B85: $73
    ld h, l                                       ; $4B86: $65
    ld l, $FE                                     ; $4B87: $2E $FE
    db $FD                                        ; $4B89: $FD
    sbc d                                         ; $4B8A: $9A
    ld b, l                                       ; $4B8B: $45
    ld l, $E3                                     ; $4B8C: $2E $E3
    ld b, b                                       ; $4B8E: $40
    sbc a                                         ; $4B8F: $9F
    ld b, e                                       ; $4B90: $43
    ld l, b                                       ; $4B91: $68
    ld h, c                                       ; $4B92: $61
    ld l, [hl]                                    ; $4B93: $6E
    ld l, [hl]                                    ; $4B94: $6E
    ld h, l                                       ; $4B95: $65
    ld l, h                                       ; $4B96: $6C
    ld h, l                                       ; $4B97: $65
    ld h, h                                       ; $4B98: $64
    ld b, a                                       ; $4B99: $47
    ld h, l                                       ; $4B9A: $65
    ld l, l                                       ; $4B9B: $6D
    rst $38                                       ; $4B9C: $FF
    ld [hl], d                                    ; $4B9D: $72
    ld h, c                                       ; $4B9E: $61
    ld l, c                                       ; $4B9F: $69
    ld [hl], e                                    ; $4BA0: $73

jr_02E_4BA1:
    ld h, l                                       ; $4BA1: $65
    ld [hl], e                                    ; $4BA2: $73

jr_02E_4BA3:
    jr nz, jr_02E_4C06                            ; $4BA3: $20 $61

    cp $63                                        ; $4BA5: $FE $63
    ld [hl], d                                    ; $4BA7: $72
    ld h, l                                       ; $4BA8: $65
    ld h, c                                       ; $4BA9: $61
    ld [hl], h                                    ; $4BAA: $74
    ld [hl], l                                    ; $4BAB: $75
    ld [hl], d                                    ; $4BAC: $72
    ld h, l                                       ; $4BAD: $65
    daa                                           ; $4BAE: $27
    ld [hl], e                                    ; $4BAF: $73
    rst $38                                       ; $4BB0: $FF
    ld d, e                                       ; $4BB1: $53
    ld l, e                                       ; $4BB2: $6B
    ld l, c                                       ; $4BB3: $69
    ld l, h                                       ; $4BB4: $6C
    ld l, h                                       ; $4BB5: $6C
    ld l, $FE                                     ; $4BB6: $2E $FE
    db $FD                                        ; $4BB8: $FD

jr_02E_4BB9:
    sbc d                                         ; $4BB9: $9A
    ld b, l                                       ; $4BBA: $45
    ld l, $E3                                     ; $4BBB: $2E $E3
    ld b, b                                       ; $4BBD: $40
    sbc a                                         ; $4BBE: $9F
    ld b, e                                       ; $4BBF: $43
    ld l, a                                       ; $4BC0: $6F
    ld [hl], d                                    ; $4BC1: $72
    ld h, [hl]                                    ; $4BC2: $66
    jr nz, jr_02E_4C15                            ; $4BC3: $20 $50

    ld h, l                                       ; $4BC5: $65
    ld h, c                                       ; $4BC6: $61
    ld [hl], d                                    ; $4BC7: $72
    ld l, h                                       ; $4BC8: $6C
    rst $38                                       ; $4BC9: $FF
    ld [hl], d                                    ; $4BCA: $72
    ld h, c                                       ; $4BCB: $61
    ld l, c                                       ; $4BCC: $69
    ld [hl], e                                    ; $4BCD: $73
    ld h, l                                       ; $4BCE: $65
    ld [hl], e                                    ; $4BCF: $73
    jr nz, jr_02E_4C33                            ; $4BD0: $20 $61

    cp $63                                        ; $4BD2: $FE $63
    ld [hl], d                                    ; $4BD4: $72

jr_02E_4BD5:
    ld h, l                                       ; $4BD5: $65
    ld h, c                                       ; $4BD6: $61
    ld [hl], h                                    ; $4BD7: $74
    ld [hl], l                                    ; $4BD8: $75
    ld [hl], d                                    ; $4BD9: $72
    ld h, l                                       ; $4BDA: $65
    daa                                           ; $4BDB: $27
    ld [hl], e                                    ; $4BDC: $73
    rst $38                                       ; $4BDD: $FF
    ld d, d                                       ; $4BDE: $52
    ld h, l                                       ; $4BDF: $65
    ld [hl], e                                    ; $4BE0: $73
    ld l, c                                       ; $4BE1: $69
    ld [hl], e                                    ; $4BE2: $73
    ld [hl], h                                    ; $4BE3: $74
    cp $61                                        ; $4BE4: $FE $61
    ld l, [hl]                                    ; $4BE6: $6E
    ld h, h                                       ; $4BE7: $64
    jr nz, jr_02E_4C3D                            ; $4BE8: $20 $53

    ld l, e                                       ; $4BEA: $6B
    ld l, c                                       ; $4BEB: $69
    ld l, h                                       ; $4BEC: $6C
    ld l, h                                       ; $4BED: $6C
    inc l                                         ; $4BEE: $2C
    jr nz, jr_02E_4C53                            ; $4BEF: $20 $62

    ld [hl], l                                    ; $4BF1: $75
    ld [hl], h                                    ; $4BF2: $74
    cp $6C                                        ; $4BF3: $FE $6C
    ld l, a                                       ; $4BF5: $6F
    ld [hl], a                                    ; $4BF6: $77
    ld h, l                                       ; $4BF7: $65
    ld [hl], d                                    ; $4BF8: $72
    ld [hl], e                                    ; $4BF9: $73
    jr nz, jr_02E_4C3D                            ; $4BFA: $20 $41

    ld [hl], h                                    ; $4BFC: $74
    ld [hl], h                                    ; $4BFD: $74
    ld h, c                                       ; $4BFE: $61
    ld h, e                                       ; $4BFF: $63
    ld l, e                                       ; $4C00: $6B
    ld l, $FE                                     ; $4C01: $2E $FE
    db $FD                                        ; $4C03: $FD
    sbc d                                         ; $4C04: $9A
    ld b, l                                       ; $4C05: $45

jr_02E_4C06:
    ld l, $E3                                     ; $4C06: $2E $E3
    ld b, b                                       ; $4C08: $40
    sbc a                                         ; $4C09: $9F
    ld b, e                                       ; $4C0A: $43
    ld [hl], d                                    ; $4C0B: $72
    ld l, c                                       ; $4C0C: $69
    ld l, l                                       ; $4C0D: $6D
    ld [hl], e                                    ; $4C0E: $73
    ld l, a                                       ; $4C0F: $6F
    ld l, [hl]                                    ; $4C10: $6E
    jr nz, jr_02E_4C69                            ; $4C11: $20 $56

    ld l, a                                       ; $4C13: $6F
    ld l, c                                       ; $4C14: $69

jr_02E_4C15:
    ld h, h                                       ; $4C15: $64
    rst $38                                       ; $4C16: $FF
    ld [hl], d                                    ; $4C17: $72
    ld h, c                                       ; $4C18: $61
    ld l, c                                       ; $4C19: $69
    ld [hl], e                                    ; $4C1A: $73
    ld h, l                                       ; $4C1B: $65
    ld [hl], e                                    ; $4C1C: $73
    jr nz, jr_02E_4C98                            ; $4C1D: $20 $79

    ld l, a                                       ; $4C1F: $6F
    ld [hl], l                                    ; $4C20: $75
    ld [hl], d                                    ; $4C21: $72
    cp $63                                        ; $4C22: $FE $63
    ld [hl], d                                    ; $4C24: $72
    ld h, l                                       ; $4C25: $65
    ld h, c                                       ; $4C26: $61
    ld [hl], h                                    ; $4C27: $74
    ld [hl], l                                    ; $4C28: $75
    ld [hl], d                                    ; $4C29: $72
    ld h, l                                       ; $4C2A: $65
    daa                                           ; $4C2B: $27
    ld [hl], e                                    ; $4C2C: $73
    rst $38                                       ; $4C2D: $FF
    ld [hl], b                                    ; $4C2E: $70
    ld l, a                                       ; $4C2F: $6F
    ld [hl], a                                    ; $4C30: $77
    ld h, l                                       ; $4C31: $65
    ld [hl], d                                    ; $4C32: $72

jr_02E_4C33:
    inc l                                         ; $4C33: $2C
    jr nz, jr_02E_4C98                            ; $4C34: $20 $62

    ld [hl], l                                    ; $4C36: $75
    ld [hl], h                                    ; $4C37: $74
    cp $6C                                        ; $4C38: $FE $6C
    ld l, a                                       ; $4C3A: $6F
    ld [hl], a                                    ; $4C3B: $77
    ld h, l                                       ; $4C3C: $65

jr_02E_4C3D:
    ld [hl], d                                    ; $4C3D: $72
    ld [hl], e                                    ; $4C3E: $73
    jr nz, jr_02E_4CAA                            ; $4C3F: $20 $69

    ld [hl], h                                    ; $4C41: $74
    ld [hl], e                                    ; $4C42: $73
    rst $38                                       ; $4C43: $FF
    ld h, h                                       ; $4C44: $64
    ld h, l                                       ; $4C45: $65
    ld h, [hl]                                    ; $4C46: $66
    ld h, l                                       ; $4C47: $65
    ld l, [hl]                                    ; $4C48: $6E
    ld [hl], e                                    ; $4C49: $73
    ld h, l                                       ; $4C4A: $65
    ld l, $FE                                     ; $4C4B: $2E $FE
    db $FD                                        ; $4C4D: $FD
    sbc d                                         ; $4C4E: $9A
    ld b, l                                       ; $4C4F: $45
    ld l, $E3                                     ; $4C50: $2E $E3
    ld b, b                                       ; $4C52: $40

jr_02E_4C53:
    sbc a                                         ; $4C53: $9F
    ld b, l                                       ; $4C54: $45
    ld h, c                                       ; $4C55: $61
    ld [hl], d                                    ; $4C56: $72
    ld [hl], h                                    ; $4C57: $74
    ld l, b                                       ; $4C58: $68
    daa                                           ; $4C59: $27
    ld [hl], e                                    ; $4C5A: $73
    jr nz, jr_02E_4C9E                            ; $4C5B: $20 $41

    ld [hl], l                                    ; $4C5D: $75
    ld [hl], d                                    ; $4C5E: $72
    ld h, c                                       ; $4C5F: $61
    rst $38                                       ; $4C60: $FF
    ld l, l                                       ; $4C61: $6D
    ld h, c                                       ; $4C62: $61
    ld l, e                                       ; $4C63: $6B
    ld h, l                                       ; $4C64: $65
    ld [hl], e                                    ; $4C65: $73
    jr nz, jr_02E_4CE1                            ; $4C66: $20 $79

    ld l, a                                       ; $4C68: $6F

jr_02E_4C69:
    ld [hl], l                                    ; $4C69: $75
    ld [hl], d                                    ; $4C6A: $72
    cp $63                                        ; $4C6B: $FE $63
    ld [hl], d                                    ; $4C6D: $72
    ld h, l                                       ; $4C6E: $65
    ld h, c                                       ; $4C6F: $61
    ld [hl], h                                    ; $4C70: $74
    ld [hl], l                                    ; $4C71: $75
    ld [hl], d                                    ; $4C72: $72
    ld h, l                                       ; $4C73: $65
    rst $38                                       ; $4C74: $FF
    ld [hl], e                                    ; $4C75: $73
    ld [hl], h                                    ; $4C76: $74
    ld [hl], d                                    ; $4C77: $72
    ld l, a                                       ; $4C78: $6F
    ld l, [hl]                                    ; $4C79: $6E
    ld h, a                                       ; $4C7A: $67
    jr nz, jr_02E_4CDE                            ; $4C7B: $20 $61

    ld h, a                                       ; $4C7D: $67
    ld h, c                                       ; $4C7E: $61
    ld l, c                                       ; $4C7F: $69
    ld l, [hl]                                    ; $4C80: $6E
    ld [hl], e                                    ; $4C81: $73
    ld [hl], h                                    ; $4C82: $74
    cp $45                                        ; $4C83: $FE $45
    ld h, c                                       ; $4C85: $61
    ld [hl], d                                    ; $4C86: $72
    ld [hl], h                                    ; $4C87: $74
    ld l, b                                       ; $4C88: $68
    inc l                                         ; $4C89: $2C
    jr nz, jr_02E_4CEE                            ; $4C8A: $20 $62

    ld [hl], l                                    ; $4C8C: $75
    ld [hl], h                                    ; $4C8D: $74
    rst $38                                       ; $4C8E: $FF
    ld h, c                                       ; $4C8F: $61
    ld l, h                                       ; $4C90: $6C
    ld [hl], e                                    ; $4C91: $73
    ld l, a                                       ; $4C92: $6F
    jr nz, jr_02E_4D02                            ; $4C93: $20 $6D

    ld h, c                                       ; $4C95: $61
    ld l, e                                       ; $4C96: $6B
    ld h, l                                       ; $4C97: $65

jr_02E_4C98:
    ld [hl], e                                    ; $4C98: $73
    jr nz, jr_02E_4D04                            ; $4C99: $20 $69

    ld [hl], h                                    ; $4C9B: $74
    cp $73                                        ; $4C9C: $FE $73

jr_02E_4C9E:
    ld l, h                                       ; $4C9E: $6C
    ld l, a                                       ; $4C9F: $6F
    ld [hl], a                                    ; $4CA0: $77
    ld h, l                                       ; $4CA1: $65
    ld [hl], d                                    ; $4CA2: $72
    jr nz, jr_02E_4D06                            ; $4CA3: $20 $61

    ld l, [hl]                                    ; $4CA5: $6E
    ld h, h                                       ; $4CA6: $64
    rst $38                                       ; $4CA7: $FF
    ld h, h                                       ; $4CA8: $64
    ld h, l                                       ; $4CA9: $65

jr_02E_4CAA:
    ld h, [hl]                                    ; $4CAA: $66
    ld h, l                                       ; $4CAB: $65
    ld l, [hl]                                    ; $4CAC: $6E
    ld [hl], e                                    ; $4CAD: $73
    ld l, c                                       ; $4CAE: $69
    halt                                          ; $4CAF: $76
    ld h, l                                       ; $4CB0: $65
    ld l, $FE                                     ; $4CB1: $2E $FE
    db $FD                                        ; $4CB3: $FD
    sbc d                                         ; $4CB4: $9A
    ld b, l                                       ; $4CB5: $45
    ld l, $E3                                     ; $4CB6: $2E $E3
    ld b, b                                       ; $4CB8: $40
    sbc a                                         ; $4CB9: $9F
    ld b, l                                       ; $4CBA: $45
    ld l, [hl]                                    ; $4CBB: $6E
    ld h, h                                       ; $4CBC: $64
    jr nz, jr_02E_4D01                            ; $4CBD: $20 $42

    ld [hl], d                                    ; $4CBF: $72
    ld l, c                                       ; $4CC0: $69
    ld l, [hl]                                    ; $4CC1: $6E
    ld h, a                                       ; $4CC2: $67
    ld h, l                                       ; $4CC3: $65
    ld [hl], d                                    ; $4CC4: $72
    rst $38                                       ; $4CC5: $FF
    ld [hl], d                                    ; $4CC6: $72
    ld h, c                                       ; $4CC7: $61
    ld l, c                                       ; $4CC8: $69
    ld [hl], e                                    ; $4CC9: $73
    ld h, l                                       ; $4CCA: $65
    ld [hl], e                                    ; $4CCB: $73
    jr nz, jr_02E_4D2F                            ; $4CCC: $20 $61

    ld l, h                                       ; $4CCE: $6C
    ld l, h                                       ; $4CCF: $6C
    jr nz, jr_02E_4D4B                            ; $4CD0: $20 $79

    ld l, a                                       ; $4CD2: $6F
    ld [hl], l                                    ; $4CD3: $75
    ld [hl], d                                    ; $4CD4: $72

jr_02E_4CD5:
    jr nz, jr_02E_4CD5                            ; $4CD5: $20 $FE

    ld h, e                                       ; $4CD7: $63
    ld [hl], d                                    ; $4CD8: $72
    ld h, l                                       ; $4CD9: $65
    ld h, c                                       ; $4CDA: $61
    ld [hl], h                                    ; $4CDB: $74
    ld [hl], l                                    ; $4CDC: $75
    ld [hl], d                                    ; $4CDD: $72

jr_02E_4CDE:
    ld h, l                                       ; $4CDE: $65
    daa                                           ; $4CDF: $27
    ld [hl], e                                    ; $4CE0: $73

jr_02E_4CE1:
    rst $38                                       ; $4CE1: $FF
    ld [hl], e                                    ; $4CE2: $73
    ld [hl], h                                    ; $4CE3: $74
    ld h, c                                       ; $4CE4: $61
    ld [hl], h                                    ; $4CE5: $74
    ld [hl], e                                    ; $4CE6: $73
    jr nz, jr_02E_4D4A                            ; $4CE7: $20 $61

    jr nz, jr_02E_4D57                            ; $4CE9: $20 $6C

    ld l, a                                       ; $4CEB: $6F
    ld [hl], h                                    ; $4CEC: $74
    inc l                                         ; $4CED: $2C

jr_02E_4CEE:
    cp $62                                        ; $4CEE: $FE $62
    ld [hl], l                                    ; $4CF0: $75
    ld [hl], h                                    ; $4CF1: $74
    jr nz, jr_02E_4D57                            ; $4CF2: $20 $63

    ld h, c                                       ; $4CF4: $61
    ld [hl], l                                    ; $4CF5: $75
    ld [hl], e                                    ; $4CF6: $73
    ld h, l                                       ; $4CF7: $65
    ld [hl], e                                    ; $4CF8: $73
    rst $38                                       ; $4CF9: $FF
    ld b, l                                       ; $4CFA: $45
    ld [hl], d                                    ; $4CFB: $72
    ld [hl], l                                    ; $4CFC: $75
    ld [hl], b                                    ; $4CFD: $70
    ld [hl], h                                    ; $4CFE: $74
    ld l, $FE                                     ; $4CFF: $2E $FE

jr_02E_4D01:
    db $FD                                        ; $4D01: $FD

jr_02E_4D02:
    sbc d                                         ; $4D02: $9A
    ld b, l                                       ; $4D03: $45

jr_02E_4D04:
    ld l, $E3                                     ; $4D04: $2E $E3

jr_02E_4D06:
    ld b, b                                       ; $4D06: $40
    sbc a                                         ; $4D07: $9F
    ld b, l                                       ; $4D08: $45
    ld l, [hl]                                    ; $4D09: $6E
    ld h, l                                       ; $4D0A: $65
    ld [hl], d                                    ; $4D0B: $72
    ld h, a                                       ; $4D0C: $67
    ld a, c                                       ; $4D0D: $79
    jr nz, jr_02E_4D57                            ; $4D0E: $20 $47

    ld h, l                                       ; $4D10: $65
    ld l, l                                       ; $4D11: $6D
    rst $38                                       ; $4D12: $FF
    ld [hl], d                                    ; $4D13: $72
    ld h, c                                       ; $4D14: $61
    ld l, c                                       ; $4D15: $69
    ld [hl], e                                    ; $4D16: $73
    ld h, l                                       ; $4D17: $65
    ld [hl], e                                    ; $4D18: $73
    jr nz, jr_02E_4D7C                            ; $4D19: $20 $61

    cp $63                                        ; $4D1B: $FE $63
    ld [hl], d                                    ; $4D1D: $72
    ld h, l                                       ; $4D1E: $65
    ld h, c                                       ; $4D1F: $61
    ld [hl], h                                    ; $4D20: $74
    ld [hl], l                                    ; $4D21: $75
    ld [hl], d                                    ; $4D22: $72
    ld h, l                                       ; $4D23: $65
    daa                                           ; $4D24: $27
    ld [hl], e                                    ; $4D25: $73
    rst $38                                       ; $4D26: $FF
    ld b, l                                       ; $4D27: $45
    ld l, [hl]                                    ; $4D28: $6E
    ld h, l                                       ; $4D29: $65
    ld [hl], d                                    ; $4D2A: $72
    ld h, a                                       ; $4D2B: $67
    ld a, c                                       ; $4D2C: $79
    ld l, $FE                                     ; $4D2D: $2E $FE

jr_02E_4D2F:
    db $FD                                        ; $4D2F: $FD
    sbc d                                         ; $4D30: $9A
    ld b, l                                       ; $4D31: $45
    ld l, $E3                                     ; $4D32: $2E $E3
    ld b, b                                       ; $4D34: $40
    sbc a                                         ; $4D35: $9F
    ld b, [hl]                                    ; $4D36: $46
    ld l, h                                       ; $4D37: $6C
    ld h, c                                       ; $4D38: $61
    ld l, l                                       ; $4D39: $6D
    ld h, l                                       ; $4D3A: $65
    jr nz, @+$43                                  ; $4D3B: $20 $41

    ld [hl], l                                    ; $4D3D: $75
    ld [hl], d                                    ; $4D3E: $72
    ld h, c                                       ; $4D3F: $61
    rst $38                                       ; $4D40: $FF
    ld l, l                                       ; $4D41: $6D
    ld h, c                                       ; $4D42: $61
    ld l, e                                       ; $4D43: $6B
    ld h, l                                       ; $4D44: $65
    ld [hl], e                                    ; $4D45: $73
    jr nz, jr_02E_4DC1                            ; $4D46: $20 $79

    ld l, a                                       ; $4D48: $6F
    ld [hl], l                                    ; $4D49: $75

jr_02E_4D4A:
    ld [hl], d                                    ; $4D4A: $72

jr_02E_4D4B:
    cp $63                                        ; $4D4B: $FE $63
    ld [hl], d                                    ; $4D4D: $72
    ld h, l                                       ; $4D4E: $65
    ld h, c                                       ; $4D4F: $61
    ld [hl], h                                    ; $4D50: $74
    ld [hl], l                                    ; $4D51: $75
    ld [hl], d                                    ; $4D52: $72
    ld h, l                                       ; $4D53: $65
    jr nz, jr_02E_4DC3                            ; $4D54: $20 $6D

    ld l, a                                       ; $4D56: $6F

jr_02E_4D57:
    ld [hl], d                                    ; $4D57: $72
    ld h, l                                       ; $4D58: $65
    rst $38                                       ; $4D59: $FF
    ld h, c                                       ; $4D5A: $61
    ld h, a                                       ; $4D5B: $67
    ld h, a                                       ; $4D5C: $67
    ld [hl], d                                    ; $4D5D: $72
    ld h, l                                       ; $4D5E: $65
    ld [hl], e                                    ; $4D5F: $73
    ld [hl], e                                    ; $4D60: $73
    ld l, c                                       ; $4D61: $69
    halt                                          ; $4D62: $76
    ld h, l                                       ; $4D63: $65
    jr nz, jr_02E_4DC7                            ; $4D64: $20 $61

    ld l, [hl]                                    ; $4D66: $6E
    ld h, h                                       ; $4D67: $64
    cp $73                                        ; $4D68: $FE $73
    ld [hl], h                                    ; $4D6A: $74
    ld [hl], d                                    ; $4D6B: $72
    ld l, a                                       ; $4D6C: $6F
    ld l, [hl]                                    ; $4D6D: $6E
    ld h, a                                       ; $4D6E: $67
    jr nz, jr_02E_4DD2                            ; $4D6F: $20 $61

    ld h, a                                       ; $4D71: $67
    ld h, c                                       ; $4D72: $61
    ld l, c                                       ; $4D73: $69
    ld l, [hl]                                    ; $4D74: $6E
    ld [hl], e                                    ; $4D75: $73
    ld [hl], h                                    ; $4D76: $74
    rst $38                                       ; $4D77: $FF
    ld b, [hl]                                    ; $4D78: $46
    ld l, c                                       ; $4D79: $69
    ld [hl], d                                    ; $4D7A: $72
    ld h, l                                       ; $4D7B: $65

jr_02E_4D7C:
    inc l                                         ; $4D7C: $2C
    jr nz, jr_02E_4DE1                            ; $4D7D: $20 $62

    ld [hl], l                                    ; $4D7F: $75
    ld [hl], h                                    ; $4D80: $74
    cp $6C                                        ; $4D81: $FE $6C
    ld l, a                                       ; $4D83: $6F
    ld [hl], a                                    ; $4D84: $77
    ld h, l                                       ; $4D85: $65
    ld [hl], d                                    ; $4D86: $72
    ld [hl], e                                    ; $4D87: $73
    jr nz, jr_02E_4DF3                            ; $4D88: $20 $69

    ld [hl], h                                    ; $4D8A: $74
    ld [hl], e                                    ; $4D8B: $73
    rst $38                                       ; $4D8C: $FF
    ld h, h                                       ; $4D8D: $64
    ld h, l                                       ; $4D8E: $65
    ld h, [hl]                                    ; $4D8F: $66
    ld h, l                                       ; $4D90: $65
    ld l, [hl]                                    ; $4D91: $6E
    ld [hl], e                                    ; $4D92: $73
    ld h, l                                       ; $4D93: $65
    ld l, $FE                                     ; $4D94: $2E $FE
    db $FD                                        ; $4D96: $FD
    sbc d                                         ; $4D97: $9A
    ld b, l                                       ; $4D98: $45
    ld l, $E3                                     ; $4D99: $2E $E3
    ld b, b                                       ; $4D9B: $40
    sbc a                                         ; $4D9C: $9F
    ld b, [hl]                                    ; $4D9D: $46
    ld l, h                                       ; $4D9E: $6C
    ld h, c                                       ; $4D9F: $61
    ld l, l                                       ; $4DA0: $6D
    ld h, l                                       ; $4DA1: $65
    ld b, l                                       ; $4DA2: $45
    ld [hl], e                                    ; $4DA3: $73
    ld [hl], e                                    ; $4DA4: $73
    ld h, l                                       ; $4DA5: $65
    ld l, [hl]                                    ; $4DA6: $6E
    ld h, e                                       ; $4DA7: $63
    ld h, l                                       ; $4DA8: $65
    rst $38                                       ; $4DA9: $FF
    ld l, l                                       ; $4DAA: $6D
    ld h, c                                       ; $4DAB: $61
    ld l, e                                       ; $4DAC: $6B
    ld h, l                                       ; $4DAD: $65
    ld [hl], e                                    ; $4DAE: $73
    jr nz, jr_02E_4E2A                            ; $4DAF: $20 $79

    ld l, a                                       ; $4DB1: $6F
    ld [hl], l                                    ; $4DB2: $75
    ld [hl], d                                    ; $4DB3: $72
    cp $63                                        ; $4DB4: $FE $63
    ld [hl], d                                    ; $4DB6: $72
    ld h, l                                       ; $4DB7: $65
    ld h, c                                       ; $4DB8: $61
    ld [hl], h                                    ; $4DB9: $74
    ld [hl], l                                    ; $4DBA: $75
    ld [hl], d                                    ; $4DBB: $72
    ld h, l                                       ; $4DBC: $65
    jr nz, jr_02E_4E32                            ; $4DBD: $20 $73

    ld [hl], h                                    ; $4DBF: $74
    ld [hl], d                                    ; $4DC0: $72

jr_02E_4DC1:
    ld l, a                                       ; $4DC1: $6F
    ld l, [hl]                                    ; $4DC2: $6E

jr_02E_4DC3:
    ld h, a                                       ; $4DC3: $67
    rst $38                                       ; $4DC4: $FF
    ld h, c                                       ; $4DC5: $61
    ld h, a                                       ; $4DC6: $67

jr_02E_4DC7:
    ld h, c                                       ; $4DC7: $61
    ld l, c                                       ; $4DC8: $69
    ld l, [hl]                                    ; $4DC9: $6E
    ld [hl], e                                    ; $4DCA: $73
    ld [hl], h                                    ; $4DCB: $74
    jr nz, jr_02E_4E13                            ; $4DCC: $20 $45

    ld h, c                                       ; $4DCE: $61
    ld [hl], d                                    ; $4DCF: $72
    ld [hl], h                                    ; $4DD0: $74
    ld l, b                                       ; $4DD1: $68

jr_02E_4DD2:
    inc l                                         ; $4DD2: $2C
    cp $62                                        ; $4DD3: $FE $62
    ld [hl], l                                    ; $4DD5: $75
    ld [hl], h                                    ; $4DD6: $74
    jr nz, jr_02E_4E50                            ; $4DD7: $20 $77

    ld h, l                                       ; $4DD9: $65
    ld h, c                                       ; $4DDA: $61
    ld l, e                                       ; $4DDB: $6B
    rst $38                                       ; $4DDC: $FF
    ld h, c                                       ; $4DDD: $61
    ld h, a                                       ; $4DDE: $67
    ld h, c                                       ; $4DDF: $61
    ld l, c                                       ; $4DE0: $69

jr_02E_4DE1:
    ld l, [hl]                                    ; $4DE1: $6E
    ld [hl], e                                    ; $4DE2: $73
    ld [hl], h                                    ; $4DE3: $74
    jr nz, jr_02E_4E39                            ; $4DE4: $20 $53

    ld l, b                                       ; $4DE6: $68
    ld h, c                                       ; $4DE7: $61
    ld h, h                                       ; $4DE8: $64
    ld l, a                                       ; $4DE9: $6F
    ld [hl], a                                    ; $4DEA: $77
    ld l, $FE                                     ; $4DEB: $2E $FE
    db $FD                                        ; $4DED: $FD
    sbc d                                         ; $4DEE: $9A
    ld b, l                                       ; $4DEF: $45
    ld l, $E3                                     ; $4DF0: $2E $E3
    ld b, b                                       ; $4DF2: $40

jr_02E_4DF3:
    sbc a                                         ; $4DF3: $9F
    ld b, a                                       ; $4DF4: $47
    ld h, l                                       ; $4DF5: $65
    ld l, l                                       ; $4DF6: $6D
    ld c, a                                       ; $4DF7: $4F
    ld h, [hl]                                    ; $4DF8: $66
    ld c, [hl]                                    ; $4DF9: $4E
    ld h, c                                       ; $4DFA: $61
    ld [hl], d                                    ; $4DFB: $72
    ld l, a                                       ; $4DFC: $6F
    ld l, a                                       ; $4DFD: $6F
    ld l, l                                       ; $4DFE: $6D
    rst $38                                       ; $4DFF: $FF
    ld [hl], d                                    ; $4E00: $72
    ld h, c                                       ; $4E01: $61
    ld l, c                                       ; $4E02: $69
    ld [hl], e                                    ; $4E03: $73
    ld h, l                                       ; $4E04: $65
    ld [hl], e                                    ; $4E05: $73
    jr nz, jr_02E_4E69                            ; $4E06: $20 $61

    cp $63                                        ; $4E08: $FE $63
    ld [hl], d                                    ; $4E0A: $72
    ld h, l                                       ; $4E0B: $65
    ld h, c                                       ; $4E0C: $61
    ld [hl], h                                    ; $4E0D: $74
    ld [hl], l                                    ; $4E0E: $75
    ld [hl], d                                    ; $4E0F: $72
    ld h, l                                       ; $4E10: $65
    daa                                           ; $4E11: $27
    ld [hl], e                                    ; $4E12: $73

jr_02E_4E13:
    rst $38                                       ; $4E13: $FF
    ld b, h                                       ; $4E14: $44
    ld h, l                                       ; $4E15: $65
    ld h, [hl]                                    ; $4E16: $66
    ld h, l                                       ; $4E17: $65
    ld l, [hl]                                    ; $4E18: $6E
    ld [hl], e                                    ; $4E19: $73
    ld h, l                                       ; $4E1A: $65
    ld l, $FE                                     ; $4E1B: $2E $FE
    db $FD                                        ; $4E1D: $FD
    sbc d                                         ; $4E1E: $9A
    ld b, l                                       ; $4E1F: $45
    ld l, $E3                                     ; $4E20: $2E $E3
    ld b, b                                       ; $4E22: $40
    sbc a                                         ; $4E23: $9F
    ld b, a                                       ; $4E24: $47
    ld l, a                                       ; $4E25: $6F
    ld l, h                                       ; $4E26: $6C
    ld h, h                                       ; $4E27: $64
    ld h, l                                       ; $4E28: $65
    ld l, [hl]                                    ; $4E29: $6E

jr_02E_4E2A:
    ld b, e                                       ; $4E2A: $43
    ld l, h                                       ; $4E2B: $6C
    ld l, a                                       ; $4E2C: $6F
    halt                                          ; $4E2D: $76
    ld h, l                                       ; $4E2E: $65
    ld [hl], d                                    ; $4E2F: $72
    rst $38                                       ; $4E30: $FF
    ld [hl], d                                    ; $4E31: $72

jr_02E_4E32:
    ld h, c                                       ; $4E32: $61
    ld l, c                                       ; $4E33: $69
    ld [hl], e                                    ; $4E34: $73
    ld h, l                                       ; $4E35: $65
    ld [hl], e                                    ; $4E36: $73
    jr nz, jr_02E_4E9A                            ; $4E37: $20 $61

jr_02E_4E39:
    cp $63                                        ; $4E39: $FE $63
    ld [hl], d                                    ; $4E3B: $72
    ld h, l                                       ; $4E3C: $65
    ld h, c                                       ; $4E3D: $61
    ld [hl], h                                    ; $4E3E: $74
    ld [hl], l                                    ; $4E3F: $75
    ld [hl], d                                    ; $4E40: $72
    ld h, l                                       ; $4E41: $65
    daa                                           ; $4E42: $27
    ld [hl], e                                    ; $4E43: $73
    rst $38                                       ; $4E44: $FF
    ld c, h                                       ; $4E45: $4C
    ld [hl], l                                    ; $4E46: $75
    ld h, e                                       ; $4E47: $63
    ld l, e                                       ; $4E48: $6B
    ld l, $FE                                     ; $4E49: $2E $FE
    db $FD                                        ; $4E4B: $FD
    sbc d                                         ; $4E4C: $9A
    ld b, l                                       ; $4E4D: $45
    ld l, $E3                                     ; $4E4E: $2E $E3

jr_02E_4E50:
    ld b, b                                       ; $4E50: $40
    sbc a                                         ; $4E51: $9F
    ld b, a                                       ; $4E52: $47
    ld [hl], d                                    ; $4E53: $72
    ld h, c                                       ; $4E54: $61
    ld l, c                                       ; $4E55: $69
    ld l, h                                       ; $4E56: $6C
    ld c, a                                       ; $4E57: $4F
    ld h, [hl]                                    ; $4E58: $66
    ld c, h                                       ; $4E59: $4C
    ld l, c                                       ; $4E5A: $69
    ld h, [hl]                                    ; $4E5B: $66
    ld h, l                                       ; $4E5C: $65
    rst $38                                       ; $4E5D: $FF
    ld [hl], d                                    ; $4E5E: $72
    ld h, c                                       ; $4E5F: $61
    ld l, c                                       ; $4E60: $69
    ld [hl], e                                    ; $4E61: $73
    ld h, l                                       ; $4E62: $65
    ld [hl], e                                    ; $4E63: $73
    jr nz, jr_02E_4EC7                            ; $4E64: $20 $61

    cp $63                                        ; $4E66: $FE $63
    ld [hl], d                                    ; $4E68: $72

jr_02E_4E69:
    ld h, l                                       ; $4E69: $65
    ld h, c                                       ; $4E6A: $61
    ld [hl], h                                    ; $4E6B: $74
    ld [hl], l                                    ; $4E6C: $75
    ld [hl], d                                    ; $4E6D: $72
    ld h, l                                       ; $4E6E: $65
    daa                                           ; $4E6F: $27
    ld [hl], e                                    ; $4E70: $73
    rst $38                                       ; $4E71: $FF
    ld b, l                                       ; $4E72: $45
    ld l, [hl]                                    ; $4E73: $6E
    ld h, l                                       ; $4E74: $65
    ld [hl], d                                    ; $4E75: $72
    ld h, a                                       ; $4E76: $67
    ld a, c                                       ; $4E77: $79
    ld l, $FE                                     ; $4E78: $2E $FE
    db $FD                                        ; $4E7A: $FD
    sbc d                                         ; $4E7B: $9A
    ld b, l                                       ; $4E7C: $45
    ld l, $E3                                     ; $4E7D: $2E $E3
    ld b, b                                       ; $4E7F: $40
    sbc a                                         ; $4E80: $9F
    ld c, b                                       ; $4E81: $48
    ld a, c                                       ; $4E82: $79
    ld [hl], d                                    ; $4E83: $72
    ld h, l                                       ; $4E84: $65
    ld l, [hl]                                    ; $4E85: $6E
    daa                                           ; $4E86: $27
    ld [hl], e                                    ; $4E87: $73
    jr nz, jr_02E_4ECD                            ; $4E88: $20 $43

    ld l, h                                       ; $4E8A: $6C
    ld h, c                                       ; $4E8B: $61
    ld [hl], a                                    ; $4E8C: $77
    rst $38                                       ; $4E8D: $FF
    ld [hl], d                                    ; $4E8E: $72
    ld h, c                                       ; $4E8F: $61
    ld l, c                                       ; $4E90: $69
    ld [hl], e                                    ; $4E91: $73
    ld h, l                                       ; $4E92: $65
    ld [hl], e                                    ; $4E93: $73
    jr nz, jr_02E_4EF7                            ; $4E94: $20 $61

    cp $63                                        ; $4E96: $FE $63
    ld [hl], d                                    ; $4E98: $72
    ld h, l                                       ; $4E99: $65

jr_02E_4E9A:
    ld h, c                                       ; $4E9A: $61
    ld [hl], h                                    ; $4E9B: $74
    ld [hl], l                                    ; $4E9C: $75
    ld [hl], d                                    ; $4E9D: $72
    ld h, l                                       ; $4E9E: $65
    daa                                           ; $4E9F: $27
    ld [hl], e                                    ; $4EA0: $73
    rst $38                                       ; $4EA1: $FF
    ld d, e                                       ; $4EA2: $53
    ld [hl], h                                    ; $4EA3: $74
    ld [hl], d                                    ; $4EA4: $72
    ld h, l                                       ; $4EA5: $65
    ld l, [hl]                                    ; $4EA6: $6E
    ld h, a                                       ; $4EA7: $67
    ld [hl], h                                    ; $4EA8: $74
    ld l, b                                       ; $4EA9: $68
    ld l, $FE                                     ; $4EAA: $2E $FE
    db $FD                                        ; $4EAC: $FD
    sbc d                                         ; $4EAD: $9A
    ld b, l                                       ; $4EAE: $45
    ld l, $E3                                     ; $4EAF: $2E $E3
    ld b, b                                       ; $4EB1: $40
    sbc a                                         ; $4EB2: $9F
    ld c, h                                       ; $4EB3: $4C
    ld h, l                                       ; $4EB4: $65
    ld h, c                                       ; $4EB5: $61
    ld h, [hl]                                    ; $4EB6: $66
    jr nz, jr_02E_4EFE                            ; $4EB7: $20 $45

    ld [hl], e                                    ; $4EB9: $73
    ld [hl], e                                    ; $4EBA: $73
    ld h, l                                       ; $4EBB: $65
    ld l, [hl]                                    ; $4EBC: $6E
    ld h, e                                       ; $4EBD: $63
    ld h, l                                       ; $4EBE: $65
    rst $38                                       ; $4EBF: $FF
    ld l, l                                       ; $4EC0: $6D
    ld h, c                                       ; $4EC1: $61
    ld l, e                                       ; $4EC2: $6B
    ld h, l                                       ; $4EC3: $65
    ld [hl], e                                    ; $4EC4: $73
    jr nz, jr_02E_4F40                            ; $4EC5: $20 $79

jr_02E_4EC7:
    ld l, a                                       ; $4EC7: $6F
    ld [hl], l                                    ; $4EC8: $75
    ld [hl], d                                    ; $4EC9: $72
    cp $63                                        ; $4ECA: $FE $63
    ld [hl], d                                    ; $4ECC: $72

jr_02E_4ECD:
    ld h, l                                       ; $4ECD: $65
    ld h, c                                       ; $4ECE: $61
    ld [hl], h                                    ; $4ECF: $74
    ld [hl], l                                    ; $4ED0: $75
    ld [hl], d                                    ; $4ED1: $72
    ld h, l                                       ; $4ED2: $65
    jr nz, jr_02E_4F48                            ; $4ED3: $20 $73

    ld [hl], h                                    ; $4ED5: $74
    ld [hl], d                                    ; $4ED6: $72
    ld l, a                                       ; $4ED7: $6F
    ld l, [hl]                                    ; $4ED8: $6E
    ld h, a                                       ; $4ED9: $67
    rst $38                                       ; $4EDA: $FF
    ld h, c                                       ; $4EDB: $61
    ld h, a                                       ; $4EDC: $67
    ld h, c                                       ; $4EDD: $61
    ld l, c                                       ; $4EDE: $69
    ld l, [hl]                                    ; $4EDF: $6E
    ld [hl], e                                    ; $4EE0: $73
    ld [hl], h                                    ; $4EE1: $74
    jr nz, jr_02E_4F37                            ; $4EE2: $20 $53

    ld l, b                                       ; $4EE4: $68
    ld h, c                                       ; $4EE5: $61
    ld h, h                                       ; $4EE6: $64
    ld l, a                                       ; $4EE7: $6F
    ld [hl], a                                    ; $4EE8: $77
    inc l                                         ; $4EE9: $2C
    cp $62                                        ; $4EEA: $FE $62
    ld [hl], l                                    ; $4EEC: $75
    ld [hl], h                                    ; $4EED: $74
    jr nz, jr_02E_4F67                            ; $4EEE: $20 $77

    ld h, l                                       ; $4EF0: $65
    ld h, c                                       ; $4EF1: $61
    ld l, e                                       ; $4EF2: $6B
    rst $38                                       ; $4EF3: $FF
    ld h, c                                       ; $4EF4: $61
    ld h, a                                       ; $4EF5: $67
    ld h, c                                       ; $4EF6: $61

jr_02E_4EF7:
    ld l, c                                       ; $4EF7: $69
    ld l, [hl]                                    ; $4EF8: $6E
    ld [hl], e                                    ; $4EF9: $73
    ld [hl], h                                    ; $4EFA: $74
    jr nz, jr_02E_4F54                            ; $4EFB: $20 $57

    ld h, c                                       ; $4EFD: $61

jr_02E_4EFE:
    ld [hl], h                                    ; $4EFE: $74
    ld h, l                                       ; $4EFF: $65
    ld [hl], d                                    ; $4F00: $72
    ld l, $FE                                     ; $4F01: $2E $FE
    db $FD                                        ; $4F03: $FD
    sbc d                                         ; $4F04: $9A
    ld b, l                                       ; $4F05: $45
    ld l, $E3                                     ; $4F06: $2E $E3
    ld b, b                                       ; $4F08: $40
    sbc a                                         ; $4F09: $9F
    ld c, h                                       ; $4F0A: $4C
    ld [hl], l                                    ; $4F0B: $75
    ld h, e                                       ; $4F0C: $63
    ld h, l                                       ; $4F0D: $65
    ld l, [hl]                                    ; $4F0E: $6E
    ld [hl], h                                    ; $4F0F: $74
    jr nz, jr_02E_4F54                            ; $4F10: $20 $42

    ld h, l                                       ; $4F12: $65
    ld l, h                                       ; $4F13: $6C
    ld [hl], h                                    ; $4F14: $74
    rst $38                                       ; $4F15: $FF
    ld [hl], d                                    ; $4F16: $72
    ld h, c                                       ; $4F17: $61
    ld l, c                                       ; $4F18: $69
    ld [hl], e                                    ; $4F19: $73
    ld h, l                                       ; $4F1A: $65
    ld [hl], e                                    ; $4F1B: $73
    jr nz, @+$63                                  ; $4F1C: $20 $61

    cp $63                                        ; $4F1E: $FE $63
    ld [hl], d                                    ; $4F20: $72
    ld h, l                                       ; $4F21: $65
    ld h, c                                       ; $4F22: $61
    ld [hl], h                                    ; $4F23: $74
    ld [hl], l                                    ; $4F24: $75
    ld [hl], d                                    ; $4F25: $72
    ld h, l                                       ; $4F26: $65
    daa                                           ; $4F27: $27
    ld [hl], e                                    ; $4F28: $73
    rst $38                                       ; $4F29: $FF
    ld d, e                                       ; $4F2A: $53
    ld l, e                                       ; $4F2B: $6B
    ld l, c                                       ; $4F2C: $69
    ld l, h                                       ; $4F2D: $6C
    ld l, h                                       ; $4F2E: $6C
    ld l, $FE                                     ; $4F2F: $2E $FE
    db $FD                                        ; $4F31: $FD
    sbc d                                         ; $4F32: $9A
    ld b, l                                       ; $4F33: $45
    ld l, $E3                                     ; $4F34: $2E $E3
    ld b, b                                       ; $4F36: $40

jr_02E_4F37:
    sbc a                                         ; $4F37: $9F
    ld c, a                                       ; $4F38: $4F
    ld l, l                                       ; $4F39: $6D
    ld h, d                                       ; $4F3A: $62
    ld l, a                                       ; $4F3B: $6F
    ld [hl], d                                    ; $4F3C: $72
    ld [hl], e                                    ; $4F3D: $73
    ld b, c                                       ; $4F3E: $41
    ld l, l                                       ; $4F3F: $6D

jr_02E_4F40:
    ld [hl], l                                    ; $4F40: $75
    ld l, h                                       ; $4F41: $6C
    ld h, l                                       ; $4F42: $65
    ld [hl], h                                    ; $4F43: $74
    rst $38                                       ; $4F44: $FF
    ld [hl], d                                    ; $4F45: $72
    ld h, c                                       ; $4F46: $61
    ld l, c                                       ; $4F47: $69

jr_02E_4F48:
    ld [hl], e                                    ; $4F48: $73
    ld h, l                                       ; $4F49: $65
    ld [hl], e                                    ; $4F4A: $73
    jr nz, jr_02E_4FAE                            ; $4F4B: $20 $61

    cp $63                                        ; $4F4D: $FE $63
    ld [hl], d                                    ; $4F4F: $72
    ld h, l                                       ; $4F50: $65
    ld h, c                                       ; $4F51: $61
    ld [hl], h                                    ; $4F52: $74
    ld [hl], l                                    ; $4F53: $75

jr_02E_4F54:
    ld [hl], d                                    ; $4F54: $72
    ld h, l                                       ; $4F55: $65
    daa                                           ; $4F56: $27
    ld [hl], e                                    ; $4F57: $73
    rst $38                                       ; $4F58: $FF
    ld d, d                                       ; $4F59: $52
    ld h, l                                       ; $4F5A: $65
    ld [hl], e                                    ; $4F5B: $73
    ld l, c                                       ; $4F5C: $69
    ld [hl], e                                    ; $4F5D: $73
    ld [hl], h                                    ; $4F5E: $74
    ld l, $FE                                     ; $4F5F: $2E $FE
    db $FD                                        ; $4F61: $FD
    sbc d                                         ; $4F62: $9A
    ld b, l                                       ; $4F63: $45
    ld l, $E3                                     ; $4F64: $2E $E3
    ld b, b                                       ; $4F66: $40

jr_02E_4F67:
    sbc a                                         ; $4F67: $9F
    ld d, b                                       ; $4F68: $50
    ld l, c                                       ; $4F69: $69
    ld l, [hl]                                    ; $4F6A: $6E
    ld h, e                                       ; $4F6B: $63
    ld l, b                                       ; $4F6C: $68
    ld c, a                                       ; $4F6D: $4F
    ld h, [hl]                                    ; $4F6E: $66
    ld c, h                                       ; $4F6F: $4C
    ld l, c                                       ; $4F70: $69
    ld h, [hl]                                    ; $4F71: $66
    ld h, l                                       ; $4F72: $65
    rst $38                                       ; $4F73: $FF
    ld l, l                                       ; $4F74: $6D
    ld h, c                                       ; $4F75: $61
    ld l, e                                       ; $4F76: $6B
    ld h, l                                       ; $4F77: $65
    ld [hl], e                                    ; $4F78: $73
    jr nz, jr_02E_4FF4                            ; $4F79: $20 $79

    ld l, a                                       ; $4F7B: $6F
    ld [hl], l                                    ; $4F7C: $75
    ld [hl], d                                    ; $4F7D: $72
    cp $63                                        ; $4F7E: $FE $63
    ld [hl], d                                    ; $4F80: $72
    ld h, l                                       ; $4F81: $65
    ld h, c                                       ; $4F82: $61
    ld [hl], h                                    ; $4F83: $74
    ld [hl], l                                    ; $4F84: $75
    ld [hl], d                                    ; $4F85: $72
    ld h, l                                       ; $4F86: $65
    jr nz, jr_02E_4FF6                            ; $4F87: $20 $6D

    ld l, a                                       ; $4F89: $6F
    ld [hl], d                                    ; $4F8A: $72
    ld h, l                                       ; $4F8B: $65
    rst $38                                       ; $4F8C: $FF
    ld h, h                                       ; $4F8D: $64
    ld h, l                                       ; $4F8E: $65
    ld h, [hl]                                    ; $4F8F: $66
    ld h, l                                       ; $4F90: $65
    ld l, [hl]                                    ; $4F91: $6E
    ld [hl], e                                    ; $4F92: $73
    ld l, c                                       ; $4F93: $69
    halt                                          ; $4F94: $76
    ld h, l                                       ; $4F95: $65
    jr nz, @+$63                                  ; $4F96: $20 $61

    ld l, [hl]                                    ; $4F98: $6E
    ld h, h                                       ; $4F99: $64
    cp $73                                        ; $4F9A: $FE $73
    ld [hl], h                                    ; $4F9C: $74
    ld [hl], d                                    ; $4F9D: $72
    ld l, a                                       ; $4F9E: $6F
    ld l, [hl]                                    ; $4F9F: $6E
    ld h, a                                       ; $4FA0: $67
    jr nz, jr_02E_5004                            ; $4FA1: $20 $61

    ld h, a                                       ; $4FA3: $67
    ld h, c                                       ; $4FA4: $61
    ld l, c                                       ; $4FA5: $69
    ld l, [hl]                                    ; $4FA6: $6E
    ld [hl], e                                    ; $4FA7: $73
    ld [hl], h                                    ; $4FA8: $74
    rst $38                                       ; $4FA9: $FF
    ld c, h                                       ; $4FAA: $4C
    ld l, c                                       ; $4FAB: $69
    ld h, [hl]                                    ; $4FAC: $66
    ld h, l                                       ; $4FAD: $65

jr_02E_4FAE:
    inc l                                         ; $4FAE: $2C
    jr nz, jr_02E_5013                            ; $4FAF: $20 $62

    ld [hl], l                                    ; $4FB1: $75
    ld [hl], h                                    ; $4FB2: $74
    cp $6C                                        ; $4FB3: $FE $6C
    ld l, a                                       ; $4FB5: $6F
    ld [hl], a                                    ; $4FB6: $77
    ld h, l                                       ; $4FB7: $65
    ld [hl], d                                    ; $4FB8: $72
    ld [hl], e                                    ; $4FB9: $73
    jr nz, jr_02E_5025                            ; $4FBA: $20 $69

    ld [hl], h                                    ; $4FBC: $74
    ld [hl], e                                    ; $4FBD: $73
    rst $38                                       ; $4FBE: $FF
    ld b, c                                       ; $4FBF: $41
    ld [hl], h                                    ; $4FC0: $74
    ld [hl], h                                    ; $4FC1: $74
    ld h, c                                       ; $4FC2: $61
    ld h, e                                       ; $4FC3: $63
    ld l, e                                       ; $4FC4: $6B
    ld l, $FE                                     ; $4FC5: $2E $FE
    db $FD                                        ; $4FC7: $FD
    sbc d                                         ; $4FC8: $9A
    ld b, l                                       ; $4FC9: $45
    ld l, $E3                                     ; $4FCA: $2E $E3
    ld b, b                                       ; $4FCC: $40
    sbc a                                         ; $4FCD: $9F
    ld d, d                                       ; $4FCE: $52
    ld h, c                                       ; $4FCF: $61
    ld h, d                                       ; $4FD0: $62
    ld h, d                                       ; $4FD1: $62
    ld h, c                                       ; $4FD2: $61
    ld h, a                                       ; $4FD3: $67
    ld h, l                                       ; $4FD4: $65
    jr nz, jr_02E_501D                            ; $4FD5: $20 $46

    ld l, a                                       ; $4FD7: $6F
    ld l, a                                       ; $4FD8: $6F
    ld [hl], h                                    ; $4FD9: $74
    rst $38                                       ; $4FDA: $FF
    ld h, a                                       ; $4FDB: $67
    ld h, l                                       ; $4FDC: $65
    ld [hl], h                                    ; $4FDD: $74
    ld [hl], e                                    ; $4FDE: $73
    jr nz, jr_02E_5053                            ; $4FDF: $20 $72

    ld l, c                                       ; $4FE1: $69
    ld h, h                                       ; $4FE2: $64
    jr nz, jr_02E_5054                            ; $4FE3: $20 $6F

    ld h, [hl]                                    ; $4FE5: $66
    jr nz, jr_02E_5049                            ; $4FE6: $20 $61

    cp $63                                        ; $4FE8: $FE $63
    ld [hl], d                                    ; $4FEA: $72
    ld h, l                                       ; $4FEB: $65
    ld h, c                                       ; $4FEC: $61
    ld [hl], h                                    ; $4FED: $74
    ld [hl], l                                    ; $4FEE: $75
    ld [hl], d                                    ; $4FEF: $72
    ld h, l                                       ; $4FF0: $65
    daa                                           ; $4FF1: $27
    ld [hl], e                                    ; $4FF2: $73
    rst $38                                       ; $4FF3: $FF

jr_02E_4FF4:
    ld c, h                                       ; $4FF4: $4C
    ld [hl], l                                    ; $4FF5: $75

jr_02E_4FF6:
    ld h, e                                       ; $4FF6: $63
    ld l, e                                       ; $4FF7: $6B
    ld l, $FE                                     ; $4FF8: $2E $FE
    db $FD                                        ; $4FFA: $FD
    sbc d                                         ; $4FFB: $9A
    ld b, l                                       ; $4FFC: $45
    ld l, $E3                                     ; $4FFD: $2E $E3
    ld b, b                                       ; $4FFF: $40
    sbc a                                         ; $5000: $9F
    ld d, d                                       ; $5001: $52
    ld h, c                                       ; $5002: $61
    ld h, a                                       ; $5003: $67

jr_02E_5004:
    ld h, l                                       ; $5004: $65
    jr nz, jr_02E_505A                            ; $5005: $20 $53

    ld [hl], h                                    ; $5007: $74
    ld l, a                                       ; $5008: $6F
    ld l, [hl]                                    ; $5009: $6E
    ld h, l                                       ; $500A: $65
    rst $38                                       ; $500B: $FF
    ld l, l                                       ; $500C: $6D
    ld h, c                                       ; $500D: $61
    ld l, e                                       ; $500E: $6B
    ld h, l                                       ; $500F: $65
    ld [hl], e                                    ; $5010: $73
    jr nz, jr_02E_5074                            ; $5011: $20 $61

jr_02E_5013:
    cp $63                                        ; $5013: $FE $63
    ld [hl], d                                    ; $5015: $72
    ld h, l                                       ; $5016: $65
    ld h, c                                       ; $5017: $61
    ld [hl], h                                    ; $5018: $74
    ld [hl], l                                    ; $5019: $75
    ld [hl], d                                    ; $501A: $72
    ld h, l                                       ; $501B: $65
    rst $38                                       ; $501C: $FF

jr_02E_501D:
    ld [hl], e                                    ; $501D: $73
    ld [hl], h                                    ; $501E: $74
    ld [hl], d                                    ; $501F: $72
    ld l, a                                       ; $5020: $6F
    ld l, [hl]                                    ; $5021: $6E
    ld h, a                                       ; $5022: $67
    ld h, l                                       ; $5023: $65
    ld [hl], d                                    ; $5024: $72

jr_02E_5025:
    jr nz, @+$63                                  ; $5025: $20 $61

    ld l, [hl]                                    ; $5027: $6E
    ld h, h                                       ; $5028: $64
    cp $66                                        ; $5029: $FE $66
    ld h, c                                       ; $502B: $61
    ld [hl], e                                    ; $502C: $73
    ld [hl], h                                    ; $502D: $74
    ld h, l                                       ; $502E: $65
    ld [hl], d                                    ; $502F: $72
    ld l, $FE                                     ; $5030: $2E $FE
    db $FD                                        ; $5032: $FD
    sbc d                                         ; $5033: $9A
    ld b, l                                       ; $5034: $45
    ld l, $E3                                     ; $5035: $2E $E3
    ld b, b                                       ; $5037: $40
    sbc a                                         ; $5038: $9F
    ld d, e                                       ; $5039: $53
    ld l, b                                       ; $503A: $68
    ld h, c                                       ; $503B: $61
    ld h, h                                       ; $503C: $64
    ld l, a                                       ; $503D: $6F
    ld [hl], a                                    ; $503E: $77
    jr nz, jr_02E_5097                            ; $503F: $20 $56

    ld h, l                                       ; $5041: $65
    ld l, c                                       ; $5042: $69
    ld l, h                                       ; $5043: $6C
    rst $38                                       ; $5044: $FF
    ld l, l                                       ; $5045: $6D
    ld h, c                                       ; $5046: $61
    ld l, e                                       ; $5047: $6B
    ld h, l                                       ; $5048: $65

jr_02E_5049:
    ld [hl], e                                    ; $5049: $73
    jr nz, @+$63                                  ; $504A: $20 $61

    cp $63                                        ; $504C: $FE $63
    ld [hl], d                                    ; $504E: $72
    ld h, l                                       ; $504F: $65
    ld h, c                                       ; $5050: $61
    ld [hl], h                                    ; $5051: $74
    ld [hl], l                                    ; $5052: $75

jr_02E_5053:
    ld [hl], d                                    ; $5053: $72

jr_02E_5054:
    ld h, l                                       ; $5054: $65
    jr nz, jr_02E_50CD                            ; $5055: $20 $76

    ld h, l                                       ; $5057: $65
    ld [hl], d                                    ; $5058: $72
    ld a, c                                       ; $5059: $79

jr_02E_505A:
    rst $38                                       ; $505A: $FF
    ld h, h                                       ; $505B: $64
    ld h, l                                       ; $505C: $65
    ld h, [hl]                                    ; $505D: $66
    ld h, l                                       ; $505E: $65
    ld l, [hl]                                    ; $505F: $6E
    ld [hl], e                                    ; $5060: $73
    ld l, c                                       ; $5061: $69
    halt                                          ; $5062: $76
    ld h, l                                       ; $5063: $65
    inc l                                         ; $5064: $2C
    jr nz, jr_02E_50C9                            ; $5065: $20 $62

    ld [hl], l                                    ; $5067: $75
    ld [hl], h                                    ; $5068: $74
    cp $63                                        ; $5069: $FE $63
    ld h, c                                       ; $506B: $61
    ld [hl], l                                    ; $506C: $75
    ld [hl], e                                    ; $506D: $73
    ld h, l                                       ; $506E: $65
    ld [hl], e                                    ; $506F: $73
    jr nz, @+$45                                  ; $5070: $20 $43

    ld l, a                                       ; $5072: $6F
    ld l, [hl]                                    ; $5073: $6E

jr_02E_5074:
    ld h, [hl]                                    ; $5074: $66
    ld [hl], l                                    ; $5075: $75
    ld [hl], e                                    ; $5076: $73
    ld h, l                                       ; $5077: $65
    ld l, $FE                                     ; $5078: $2E $FE
    db $FD                                        ; $507A: $FD
    sbc d                                         ; $507B: $9A
    ld b, l                                       ; $507C: $45
    ld l, $E3                                     ; $507D: $2E $E3
    ld b, b                                       ; $507F: $40
    sbc a                                         ; $5080: $9F
    ld d, e                                       ; $5081: $53
    ld l, b                                       ; $5082: $68
    ld l, c                                       ; $5083: $69
    ld h, l                                       ; $5084: $65
    ld l, h                                       ; $5085: $6C
    ld h, h                                       ; $5086: $64
    jr nz, jr_02E_50D8                            ; $5087: $20 $4F

    ld [hl], d                                    ; $5089: $72
    ld h, d                                       ; $508A: $62
    rst $38                                       ; $508B: $FF
    ld [hl], d                                    ; $508C: $72
    ld h, c                                       ; $508D: $61
    ld l, c                                       ; $508E: $69
    ld [hl], e                                    ; $508F: $73
    ld h, l                                       ; $5090: $65
    ld [hl], e                                    ; $5091: $73
    jr nz, jr_02E_50F5                            ; $5092: $20 $61

    cp $63                                        ; $5094: $FE $63
    ld [hl], d                                    ; $5096: $72

jr_02E_5097:
    ld h, l                                       ; $5097: $65
    ld h, c                                       ; $5098: $61
    ld [hl], h                                    ; $5099: $74
    ld [hl], l                                    ; $509A: $75
    ld [hl], d                                    ; $509B: $72
    ld h, l                                       ; $509C: $65
    daa                                           ; $509D: $27
    ld [hl], e                                    ; $509E: $73
    rst $38                                       ; $509F: $FF
    ld b, h                                       ; $50A0: $44
    ld h, l                                       ; $50A1: $65
    ld h, [hl]                                    ; $50A2: $66
    ld h, l                                       ; $50A3: $65
    ld l, [hl]                                    ; $50A4: $6E
    ld [hl], e                                    ; $50A5: $73
    ld h, l                                       ; $50A6: $65
    ld l, $FE                                     ; $50A7: $2E $FE
    db $FD                                        ; $50A9: $FD
    sbc d                                         ; $50AA: $9A
    ld b, l                                       ; $50AB: $45
    ld l, $E3                                     ; $50AC: $2E $E3
    ld b, b                                       ; $50AE: $40
    sbc a                                         ; $50AF: $9F
    ld c, h                                       ; $50B0: $4C
    ld h, l                                       ; $50B1: $65
    ld h, c                                       ; $50B2: $61
    ld h, [hl]                                    ; $50B3: $66
    jr nz, jr_02E_50FB                            ; $50B4: $20 $45

    ld [hl], e                                    ; $50B6: $73
    ld [hl], e                                    ; $50B7: $73
    ld h, l                                       ; $50B8: $65
    ld l, [hl]                                    ; $50B9: $6E
    ld h, e                                       ; $50BA: $63
    ld h, l                                       ; $50BB: $65
    rst $38                                       ; $50BC: $FF
    ld l, l                                       ; $50BD: $6D
    ld h, c                                       ; $50BE: $61
    ld l, e                                       ; $50BF: $6B
    ld h, l                                       ; $50C0: $65
    ld [hl], e                                    ; $50C1: $73
    jr nz, jr_02E_513D                            ; $50C2: $20 $79

    ld l, a                                       ; $50C4: $6F
    ld [hl], l                                    ; $50C5: $75
    ld [hl], d                                    ; $50C6: $72
    cp $63                                        ; $50C7: $FE $63

jr_02E_50C9:
    ld [hl], d                                    ; $50C9: $72
    ld h, l                                       ; $50CA: $65
    ld h, c                                       ; $50CB: $61
    ld [hl], h                                    ; $50CC: $74

jr_02E_50CD:
    ld [hl], l                                    ; $50CD: $75
    ld [hl], d                                    ; $50CE: $72
    ld h, l                                       ; $50CF: $65
    jr nz, jr_02E_5145                            ; $50D0: $20 $73

    ld [hl], h                                    ; $50D2: $74
    ld [hl], d                                    ; $50D3: $72
    ld l, a                                       ; $50D4: $6F
    ld l, [hl]                                    ; $50D5: $6E
    ld h, a                                       ; $50D6: $67
    rst $38                                       ; $50D7: $FF

jr_02E_50D8:
    ld h, c                                       ; $50D8: $61
    ld h, a                                       ; $50D9: $67
    ld h, c                                       ; $50DA: $61
    ld l, c                                       ; $50DB: $69
    ld l, [hl]                                    ; $50DC: $6E
    ld [hl], e                                    ; $50DD: $73
    ld [hl], h                                    ; $50DE: $74
    jr nz, jr_02E_5138                            ; $50DF: $20 $57

    ld h, c                                       ; $50E1: $61
    ld [hl], h                                    ; $50E2: $74
    ld h, l                                       ; $50E3: $65
    ld [hl], d                                    ; $50E4: $72
    inc l                                         ; $50E5: $2C
    cp $62                                        ; $50E6: $FE $62
    ld [hl], l                                    ; $50E8: $75
    ld [hl], h                                    ; $50E9: $74
    jr nz, jr_02E_5163                            ; $50EA: $20 $77

    ld h, l                                       ; $50EC: $65
    ld h, c                                       ; $50ED: $61
    ld l, e                                       ; $50EE: $6B
    rst $38                                       ; $50EF: $FF
    ld h, c                                       ; $50F0: $61
    ld h, a                                       ; $50F1: $67
    ld h, c                                       ; $50F2: $61
    ld l, c                                       ; $50F3: $69
    ld l, [hl]                                    ; $50F4: $6E

jr_02E_50F5:
    ld [hl], e                                    ; $50F5: $73
    ld [hl], h                                    ; $50F6: $74
    jr nz, jr_02E_513E                            ; $50F7: $20 $45

    ld h, c                                       ; $50F9: $61
    ld [hl], d                                    ; $50FA: $72

jr_02E_50FB:
    ld [hl], h                                    ; $50FB: $74
    ld l, b                                       ; $50FC: $68
    ld l, $FE                                     ; $50FD: $2E $FE
    db $FD                                        ; $50FF: $FD
    sbc d                                         ; $5100: $9A
    ld b, l                                       ; $5101: $45
    ld l, $E3                                     ; $5102: $2E $E3
    ld b, b                                       ; $5104: $40
    sbc a                                         ; $5105: $9F
    ld d, e                                       ; $5106: $53
    ld [hl], b                                    ; $5107: $70
    ld l, c                                       ; $5108: $69
    ld h, e                                       ; $5109: $63
    ld h, l                                       ; $510A: $65
    ld c, a                                       ; $510B: $4F
    ld h, [hl]                                    ; $510C: $66
    ld c, h                                       ; $510D: $4C
    ld l, c                                       ; $510E: $69
    ld h, [hl]                                    ; $510F: $66
    ld h, l                                       ; $5110: $65
    rst $38                                       ; $5111: $FF
    ld [hl], d                                    ; $5112: $72
    ld h, c                                       ; $5113: $61
    ld l, c                                       ; $5114: $69
    ld [hl], e                                    ; $5115: $73
    ld h, l                                       ; $5116: $65
    ld [hl], e                                    ; $5117: $73
    jr nz, jr_02E_517B                            ; $5118: $20 $61

    cp $63                                        ; $511A: $FE $63
    ld [hl], d                                    ; $511C: $72
    ld h, l                                       ; $511D: $65
    ld h, c                                       ; $511E: $61
    ld [hl], h                                    ; $511F: $74
    ld [hl], l                                    ; $5120: $75
    ld [hl], d                                    ; $5121: $72
    ld h, l                                       ; $5122: $65
    daa                                           ; $5123: $27
    ld [hl], e                                    ; $5124: $73
    rst $38                                       ; $5125: $FF
    ld b, l                                       ; $5126: $45
    ld l, [hl]                                    ; $5127: $6E
    ld h, l                                       ; $5128: $65
    ld [hl], d                                    ; $5129: $72
    ld h, a                                       ; $512A: $67
    ld a, c                                       ; $512B: $79
    ld l, $FE                                     ; $512C: $2E $FE
    db $FD                                        ; $512E: $FD
    sbc d                                         ; $512F: $9A
    ld b, l                                       ; $5130: $45
    ld l, $E3                                     ; $5131: $2E $E3
    ld b, b                                       ; $5133: $40
    sbc a                                         ; $5134: $9F
    ld d, e                                       ; $5135: $53
    ld [hl], h                                    ; $5136: $74
    ld l, a                                       ; $5137: $6F

jr_02E_5138:
    ld l, [hl]                                    ; $5138: $6E
    ld h, l                                       ; $5139: $65
    ld b, l                                       ; $513A: $45
    ld [hl], e                                    ; $513B: $73
    ld [hl], e                                    ; $513C: $73

jr_02E_513D:
    ld h, l                                       ; $513D: $65

jr_02E_513E:
    ld l, [hl]                                    ; $513E: $6E
    ld h, e                                       ; $513F: $63
    ld h, l                                       ; $5140: $65
    rst $38                                       ; $5141: $FF
    ld l, l                                       ; $5142: $6D
    ld h, c                                       ; $5143: $61
    ld l, e                                       ; $5144: $6B

jr_02E_5145:
    ld h, l                                       ; $5145: $65
    ld [hl], e                                    ; $5146: $73
    jr nz, jr_02E_51C2                            ; $5147: $20 $79

    ld l, a                                       ; $5149: $6F
    ld [hl], l                                    ; $514A: $75
    ld [hl], d                                    ; $514B: $72
    cp $63                                        ; $514C: $FE $63
    ld [hl], d                                    ; $514E: $72
    ld h, l                                       ; $514F: $65
    ld h, c                                       ; $5150: $61
    ld [hl], h                                    ; $5151: $74
    ld [hl], l                                    ; $5152: $75
    ld [hl], d                                    ; $5153: $72
    ld h, l                                       ; $5154: $65
    jr nz, jr_02E_51CA                            ; $5155: $20 $73

    ld [hl], h                                    ; $5157: $74
    ld [hl], d                                    ; $5158: $72
    ld l, a                                       ; $5159: $6F
    ld l, [hl]                                    ; $515A: $6E
    ld h, a                                       ; $515B: $67
    rst $38                                       ; $515C: $FF
    ld h, c                                       ; $515D: $61
    ld h, a                                       ; $515E: $67
    ld h, c                                       ; $515F: $61
    ld l, c                                       ; $5160: $69
    ld l, [hl]                                    ; $5161: $6E
    ld [hl], e                                    ; $5162: $73

jr_02E_5163:
    ld [hl], h                                    ; $5163: $74
    jr nz, jr_02E_51BD                            ; $5164: $20 $57

    ld l, c                                       ; $5166: $69
    ld l, [hl]                                    ; $5167: $6E
    ld h, h                                       ; $5168: $64
    inc l                                         ; $5169: $2C
    cp $62                                        ; $516A: $FE $62
    ld [hl], l                                    ; $516C: $75
    ld [hl], h                                    ; $516D: $74
    jr nz, jr_02E_51E7                            ; $516E: $20 $77

    ld h, l                                       ; $5170: $65
    ld h, c                                       ; $5171: $61
    ld l, e                                       ; $5172: $6B
    rst $38                                       ; $5173: $FF
    ld h, c                                       ; $5174: $61
    ld h, a                                       ; $5175: $67
    ld h, c                                       ; $5176: $61
    ld l, c                                       ; $5177: $69
    ld l, [hl]                                    ; $5178: $6E
    ld [hl], e                                    ; $5179: $73
    ld [hl], h                                    ; $517A: $74

jr_02E_517B:
    jr nz, jr_02E_51C3                            ; $517B: $20 $46

    ld l, c                                       ; $517D: $69
    ld [hl], d                                    ; $517E: $72
    ld h, l                                       ; $517F: $65
    ld l, $FE                                     ; $5180: $2E $FE
    db $FD                                        ; $5182: $FD
    sbc d                                         ; $5183: $9A
    ld b, l                                       ; $5184: $45
    ld l, $E3                                     ; $5185: $2E $E3
    ld b, b                                       ; $5187: $40
    sbc a                                         ; $5188: $9F
    ld d, e                                       ; $5189: $53
    ld [hl], h                                    ; $518A: $74
    ld l, a                                       ; $518B: $6F
    ld l, [hl]                                    ; $518C: $6E
    ld h, l                                       ; $518D: $65
    ld c, a                                       ; $518E: $4F
    ld h, [hl]                                    ; $518F: $66
    ld b, h                                       ; $5190: $44
    ld l, a                                       ; $5191: $6F
    ld l, a                                       ; $5192: $6F
    ld l, l                                       ; $5193: $6D
    rst $38                                       ; $5194: $FF
    ld h, e                                       ; $5195: $63
    ld h, c                                       ; $5196: $61
    ld [hl], l                                    ; $5197: $75
    ld [hl], e                                    ; $5198: $73
    ld h, l                                       ; $5199: $65
    ld [hl], e                                    ; $519A: $73
    jr nz, jr_02E_51ED                            ; $519B: $20 $50

    ld l, h                                       ; $519D: $6C
    ld h, c                                       ; $519E: $61
    ld h, a                                       ; $519F: $67
    ld [hl], l                                    ; $51A0: $75
    ld h, l                                       ; $51A1: $65
    cp $6F                                        ; $51A2: $FE $6F
    ld l, [hl]                                    ; $51A4: $6E
    jr nz, jr_02E_5220                            ; $51A5: $20 $79

    ld l, a                                       ; $51A7: $6F
    ld [hl], l                                    ; $51A8: $75
    ld [hl], d                                    ; $51A9: $72
    rst $38                                       ; $51AA: $FF
    ld h, e                                       ; $51AB: $63
    ld [hl], d                                    ; $51AC: $72
    ld h, l                                       ; $51AD: $65
    ld h, c                                       ; $51AE: $61
    ld [hl], h                                    ; $51AF: $74
    ld [hl], l                                    ; $51B0: $75
    ld [hl], d                                    ; $51B1: $72
    ld h, l                                       ; $51B2: $65
    ld l, $FE                                     ; $51B3: $2E $FE
    db $FD                                        ; $51B5: $FD
    sbc d                                         ; $51B6: $9A
    ld b, l                                       ; $51B7: $45
    ld l, $E3                                     ; $51B8: $2E $E3
    ld b, b                                       ; $51BA: $40
    sbc a                                         ; $51BB: $9F
    ld d, e                                       ; $51BC: $53

jr_02E_51BD:
    ld [hl], h                                    ; $51BD: $74
    ld l, a                                       ; $51BE: $6F
    ld l, [hl]                                    ; $51BF: $6E
    ld h, l                                       ; $51C0: $65
    ld c, a                                       ; $51C1: $4F

jr_02E_51C2:
    ld h, [hl]                                    ; $51C2: $66

jr_02E_51C3:
    ld c, h                                       ; $51C3: $4C
    ld l, c                                       ; $51C4: $69
    ld h, [hl]                                    ; $51C5: $66
    ld h, l                                       ; $51C6: $65
    rst $38                                       ; $51C7: $FF
    ld [hl], d                                    ; $51C8: $72
    ld h, c                                       ; $51C9: $61

jr_02E_51CA:
    ld l, c                                       ; $51CA: $69
    ld [hl], e                                    ; $51CB: $73
    ld h, l                                       ; $51CC: $65
    ld [hl], e                                    ; $51CD: $73
    jr nz, jr_02E_5249                            ; $51CE: $20 $79

    ld l, a                                       ; $51D0: $6F
    ld [hl], l                                    ; $51D1: $75
    ld [hl], d                                    ; $51D2: $72
    cp $63                                        ; $51D3: $FE $63
    ld [hl], d                                    ; $51D5: $72
    ld h, l                                       ; $51D6: $65
    ld h, c                                       ; $51D7: $61
    ld [hl], h                                    ; $51D8: $74
    ld [hl], l                                    ; $51D9: $75
    ld [hl], d                                    ; $51DA: $72
    ld h, l                                       ; $51DB: $65
    ld [hl], e                                    ; $51DC: $73
    rst $38                                       ; $51DD: $FF
    ld b, l                                       ; $51DE: $45
    ld l, [hl]                                    ; $51DF: $6E
    ld h, l                                       ; $51E0: $65
    ld [hl], d                                    ; $51E1: $72
    ld h, a                                       ; $51E2: $67
    ld a, c                                       ; $51E3: $79
    inc l                                         ; $51E4: $2C
    jr nz, jr_02E_5248                            ; $51E5: $20 $61

jr_02E_51E7:
    ld l, [hl]                                    ; $51E7: $6E
    ld h, h                                       ; $51E8: $64
    cp $79                                        ; $51E9: $FE $79
    ld l, a                                       ; $51EB: $6F
    ld [hl], l                                    ; $51EC: $75

jr_02E_51ED:
    ld [hl], d                                    ; $51ED: $72
    jr nz, jr_02E_5253                            ; $51EE: $20 $63

    ld [hl], d                                    ; $51F0: $72
    ld h, l                                       ; $51F1: $65
    ld h, c                                       ; $51F2: $61
    ld [hl], h                                    ; $51F3: $74
    ld [hl], l                                    ; $51F4: $75
    ld [hl], d                                    ; $51F5: $72
    ld h, l                                       ; $51F6: $65
    rst $38                                       ; $51F7: $FF
    ld l, c                                       ; $51F8: $69
    ld [hl], e                                    ; $51F9: $73
    jr nz, jr_02E_5265                            ; $51FA: $20 $69

    ld l, l                                       ; $51FC: $6D
    ld l, l                                       ; $51FD: $6D
    ld [hl], l                                    ; $51FE: $75
    ld l, [hl]                                    ; $51FF: $6E
    ld h, l                                       ; $5200: $65
    jr nz, @+$76                                  ; $5201: $20 $74

    ld l, a                                       ; $5203: $6F
    cp $61                                        ; $5204: $FE $61
    ld l, c                                       ; $5206: $69
    ld l, h                                       ; $5207: $6C
    ld l, l                                       ; $5208: $6D
    ld h, l                                       ; $5209: $65
    ld l, [hl]                                    ; $520A: $6E
    ld [hl], h                                    ; $520B: $74
    ld [hl], e                                    ; $520C: $73
    ld l, $FE                                     ; $520D: $2E $FE
    db $FD                                        ; $520F: $FD
    sbc d                                         ; $5210: $9A
    ld b, l                                       ; $5211: $45
    ld l, $E3                                     ; $5212: $2E $E3
    ld b, b                                       ; $5214: $40
    sbc a                                         ; $5215: $9F
    ld d, e                                       ; $5216: $53
    ld [hl], a                                    ; $5217: $77
    ld l, a                                       ; $5218: $6F
    ld [hl], d                                    ; $5219: $72
    ld h, h                                       ; $521A: $64
    ld c, a                                       ; $521B: $4F
    ld h, [hl]                                    ; $521C: $66
    ld d, a                                       ; $521D: $57
    ld l, c                                       ; $521E: $69
    ld l, [hl]                                    ; $521F: $6E

jr_02E_5220:
    ld h, h                                       ; $5220: $64
    rst $38                                       ; $5221: $FF
    ld [hl], d                                    ; $5222: $72
    ld h, c                                       ; $5223: $61
    ld l, c                                       ; $5224: $69
    ld [hl], e                                    ; $5225: $73
    ld h, l                                       ; $5226: $65
    ld [hl], e                                    ; $5227: $73
    jr nz, jr_02E_528B                            ; $5228: $20 $61

    cp $63                                        ; $522A: $FE $63
    ld [hl], d                                    ; $522C: $72
    ld h, l                                       ; $522D: $65
    ld h, c                                       ; $522E: $61
    ld [hl], h                                    ; $522F: $74
    ld [hl], l                                    ; $5230: $75
    ld [hl], d                                    ; $5231: $72
    ld h, l                                       ; $5232: $65
    daa                                           ; $5233: $27
    ld [hl], e                                    ; $5234: $73
    rst $38                                       ; $5235: $FF
    ld d, e                                       ; $5236: $53
    ld [hl], h                                    ; $5237: $74
    ld [hl], d                                    ; $5238: $72
    ld h, l                                       ; $5239: $65
    ld l, [hl]                                    ; $523A: $6E
    ld h, a                                       ; $523B: $67
    ld [hl], h                                    ; $523C: $74
    ld l, b                                       ; $523D: $68
    ld l, $FE                                     ; $523E: $2E $FE
    db $FD                                        ; $5240: $FD
    sbc d                                         ; $5241: $9A
    ld b, l                                       ; $5242: $45
    ld l, $E3                                     ; $5243: $2E $E3
    ld b, b                                       ; $5245: $40
    sbc a                                         ; $5246: $9F
    ld d, h                                       ; $5247: $54

jr_02E_5248:
    ld l, c                                       ; $5248: $69

jr_02E_5249:
    ld h, h                                       ; $5249: $64
    ld h, l                                       ; $524A: $65
    jr nz, jr_02E_5292                            ; $524B: $20 $45

    ld [hl], e                                    ; $524D: $73
    ld [hl], e                                    ; $524E: $73
    ld h, l                                       ; $524F: $65
    ld l, [hl]                                    ; $5250: $6E
    ld h, e                                       ; $5251: $63
    ld h, l                                       ; $5252: $65

jr_02E_5253:
    rst $38                                       ; $5253: $FF
    ld l, l                                       ; $5254: $6D
    ld h, c                                       ; $5255: $61
    ld l, e                                       ; $5256: $6B
    ld h, l                                       ; $5257: $65
    ld [hl], e                                    ; $5258: $73
    jr nz, @+$7B                                  ; $5259: $20 $79

    ld l, a                                       ; $525B: $6F
    ld [hl], l                                    ; $525C: $75
    ld [hl], d                                    ; $525D: $72
    cp $63                                        ; $525E: $FE $63
    ld [hl], d                                    ; $5260: $72
    ld h, l                                       ; $5261: $65
    ld h, c                                       ; $5262: $61
    ld [hl], h                                    ; $5263: $74
    ld [hl], l                                    ; $5264: $75

jr_02E_5265:
    ld [hl], d                                    ; $5265: $72
    ld h, l                                       ; $5266: $65
    jr nz, jr_02E_52DC                            ; $5267: $20 $73

    ld [hl], h                                    ; $5269: $74
    ld [hl], d                                    ; $526A: $72
    ld l, a                                       ; $526B: $6F
    ld l, [hl]                                    ; $526C: $6E
    ld h, a                                       ; $526D: $67
    rst $38                                       ; $526E: $FF
    ld h, c                                       ; $526F: $61
    ld h, a                                       ; $5270: $67
    ld h, c                                       ; $5271: $61
    ld l, c                                       ; $5272: $69
    ld l, [hl]                                    ; $5273: $6E
    ld [hl], e                                    ; $5274: $73
    ld [hl], h                                    ; $5275: $74
    jr nz, @+$55                                  ; $5276: $20 $53

    ld l, b                                       ; $5278: $68
    ld h, c                                       ; $5279: $61
    ld h, h                                       ; $527A: $64
    ld l, a                                       ; $527B: $6F
    ld [hl], a                                    ; $527C: $77
    inc l                                         ; $527D: $2C
    cp $62                                        ; $527E: $FE $62
    ld [hl], l                                    ; $5280: $75
    ld [hl], h                                    ; $5281: $74
    jr nz, @+$79                                  ; $5282: $20 $77

    ld h, l                                       ; $5284: $65
    ld h, c                                       ; $5285: $61
    ld l, e                                       ; $5286: $6B
    rst $38                                       ; $5287: $FF
    ld h, c                                       ; $5288: $61
    ld h, a                                       ; $5289: $67
    ld h, c                                       ; $528A: $61

jr_02E_528B:
    ld l, c                                       ; $528B: $69
    ld l, [hl]                                    ; $528C: $6E
    ld [hl], e                                    ; $528D: $73
    ld [hl], h                                    ; $528E: $74
    jr nz, jr_02E_52E8                            ; $528F: $20 $57

    ld h, c                                       ; $5291: $61

jr_02E_5292:
    ld [hl], h                                    ; $5292: $74
    ld h, l                                       ; $5293: $65
    ld [hl], d                                    ; $5294: $72
    ld l, $FE                                     ; $5295: $2E $FE
    db $FD                                        ; $5297: $FD
    sbc d                                         ; $5298: $9A
    ld b, l                                       ; $5299: $45
    ld l, $E3                                     ; $529A: $2E $E3
    ld b, b                                       ; $529C: $40
    sbc a                                         ; $529D: $9F
    ld d, h                                       ; $529E: $54
    ld l, c                                       ; $529F: $69
    ld [hl], h                                    ; $52A0: $74
    ld h, c                                       ; $52A1: $61
    ld l, [hl]                                    ; $52A2: $6E
    jr nz, jr_02E_52F7                            ; $52A3: $20 $52

    ld l, c                                       ; $52A5: $69
    ld l, [hl]                                    ; $52A6: $6E
    ld h, a                                       ; $52A7: $67
    rst $38                                       ; $52A8: $FF
    ld [hl], d                                    ; $52A9: $72
    ld h, c                                       ; $52AA: $61
    ld l, c                                       ; $52AB: $69
    ld [hl], e                                    ; $52AC: $73
    ld h, l                                       ; $52AD: $65
    ld [hl], e                                    ; $52AE: $73
    jr nz, @+$63                                  ; $52AF: $20 $61

    cp $63                                        ; $52B1: $FE $63
    ld [hl], d                                    ; $52B3: $72
    ld h, l                                       ; $52B4: $65
    ld h, c                                       ; $52B5: $61
    ld [hl], h                                    ; $52B6: $74
    ld [hl], l                                    ; $52B7: $75
    ld [hl], d                                    ; $52B8: $72
    ld h, l                                       ; $52B9: $65
    daa                                           ; $52BA: $27
    ld [hl], e                                    ; $52BB: $73
    rst $38                                       ; $52BC: $FF
    ld d, e                                       ; $52BD: $53
    ld [hl], h                                    ; $52BE: $74
    ld [hl], d                                    ; $52BF: $72
    ld h, l                                       ; $52C0: $65
    ld l, [hl]                                    ; $52C1: $6E
    ld h, a                                       ; $52C2: $67
    ld [hl], h                                    ; $52C3: $74
    ld l, b                                       ; $52C4: $68
    ld l, $FE                                     ; $52C5: $2E $FE
    db $FD                                        ; $52C7: $FD
    sbc d                                         ; $52C8: $9A
    ld b, l                                       ; $52C9: $45
    ld l, $E3                                     ; $52CA: $2E $E3
    ld b, b                                       ; $52CC: $40
    sbc a                                         ; $52CD: $9F
    ld d, a                                       ; $52CE: $57
    ld h, c                                       ; $52CF: $61
    ld [hl], h                                    ; $52D0: $74
    ld h, l                                       ; $52D1: $65
    ld [hl], d                                    ; $52D2: $72
    jr nz, @+$51                                  ; $52D3: $20 $4F

    ld [hl], d                                    ; $52D5: $72
    ld h, d                                       ; $52D6: $62
    rst $38                                       ; $52D7: $FF
    ld l, l                                       ; $52D8: $6D
    ld h, c                                       ; $52D9: $61
    ld l, e                                       ; $52DA: $6B
    ld h, l                                       ; $52DB: $65

jr_02E_52DC:
    ld [hl], e                                    ; $52DC: $73
    jr nz, jr_02E_5358                            ; $52DD: $20 $79

    ld l, a                                       ; $52DF: $6F
    ld [hl], l                                    ; $52E0: $75
    ld [hl], d                                    ; $52E1: $72
    cp $63                                        ; $52E2: $FE $63
    ld [hl], d                                    ; $52E4: $72
    ld h, l                                       ; $52E5: $65
    ld h, c                                       ; $52E6: $61
    ld [hl], h                                    ; $52E7: $74

jr_02E_52E8:
    ld [hl], l                                    ; $52E8: $75
    ld [hl], d                                    ; $52E9: $72
    ld h, l                                       ; $52EA: $65
    rst $38                                       ; $52EB: $FF
    ld [hl], e                                    ; $52EC: $73
    ld [hl], h                                    ; $52ED: $74
    ld [hl], d                                    ; $52EE: $72
    ld l, a                                       ; $52EF: $6F
    ld l, [hl]                                    ; $52F0: $6E
    ld h, a                                       ; $52F1: $67
    jr nz, jr_02E_5355                            ; $52F2: $20 $61

    ld h, a                                       ; $52F4: $67
    ld h, c                                       ; $52F5: $61
    ld l, c                                       ; $52F6: $69

jr_02E_52F7:
    ld l, [hl]                                    ; $52F7: $6E
    ld [hl], e                                    ; $52F8: $73
    ld [hl], h                                    ; $52F9: $74
    cp $57                                        ; $52FA: $FE $57
    ld h, c                                       ; $52FC: $61
    ld [hl], h                                    ; $52FD: $74
    ld h, l                                       ; $52FE: $65
    ld [hl], d                                    ; $52FF: $72
    inc l                                         ; $5300: $2C
    jr nz, jr_02E_5375                            ; $5301: $20 $72

    ld h, c                                       ; $5303: $61
    ld l, c                                       ; $5304: $69
    ld [hl], e                                    ; $5305: $73
    ld h, l                                       ; $5306: $65
    ld [hl], e                                    ; $5307: $73
    rst $38                                       ; $5308: $FF
    ld h, c                                       ; $5309: $61
    ld l, h                                       ; $530A: $6C
    ld l, h                                       ; $530B: $6C
    jr nz, jr_02E_5387                            ; $530C: $20 $79

    ld l, a                                       ; $530E: $6F
    ld [hl], l                                    ; $530F: $75
    ld [hl], d                                    ; $5310: $72
    cp $63                                        ; $5311: $FE $63
    ld [hl], d                                    ; $5313: $72
    ld h, l                                       ; $5314: $65
    ld h, c                                       ; $5315: $61
    ld [hl], h                                    ; $5316: $74
    ld [hl], l                                    ; $5317: $75
    ld [hl], d                                    ; $5318: $72
    ld h, l                                       ; $5319: $65
    daa                                           ; $531A: $27
    ld [hl], e                                    ; $531B: $73
    rst $38                                       ; $531C: $FF
    ld [hl], e                                    ; $531D: $73
    ld [hl], h                                    ; $531E: $74
    ld h, c                                       ; $531F: $61
    ld [hl], h                                    ; $5320: $74
    ld [hl], e                                    ; $5321: $73
    inc l                                         ; $5322: $2C
    jr nz, jr_02E_5387                            ; $5323: $20 $62

    ld [hl], l                                    ; $5325: $75
    ld [hl], h                                    ; $5326: $74
    cp $63                                        ; $5327: $FE $63
    ld h, c                                       ; $5329: $61
    ld [hl], l                                    ; $532A: $75
    ld [hl], e                                    ; $532B: $73
    ld h, l                                       ; $532C: $65
    ld [hl], e                                    ; $532D: $73
    jr nz, jr_02E_5378                            ; $532E: $20 $48

    ld l, c                                       ; $5330: $69
    ld h, e                                       ; $5331: $63
    ld h, e                                       ; $5332: $63
    ld [hl], l                                    ; $5333: $75
    ld [hl], b                                    ; $5334: $70
    ld [hl], e                                    ; $5335: $73
    ld l, $FE                                     ; $5336: $2E $FE
    db $FD                                        ; $5338: $FD
    sbc d                                         ; $5339: $9A
    ld b, l                                       ; $533A: $45
    ld l, $E3                                     ; $533B: $2E $E3
    ld b, b                                       ; $533D: $40
    sbc a                                         ; $533E: $9F
    ld d, a                                       ; $533F: $57
    ld l, c                                       ; $5340: $69
    ld [hl], e                                    ; $5341: $73
    ld l, b                                       ; $5342: $68
    ld h, d                                       ; $5343: $62
    ld l, a                                       ; $5344: $6F
    ld l, [hl]                                    ; $5345: $6E
    ld h, l                                       ; $5346: $65
    rst $38                                       ; $5347: $FF
    ld [hl], d                                    ; $5348: $72
    ld h, c                                       ; $5349: $61
    ld l, c                                       ; $534A: $69
    ld [hl], e                                    ; $534B: $73
    ld h, l                                       ; $534C: $65
    ld [hl], e                                    ; $534D: $73
    jr nz, jr_02E_53B1                            ; $534E: $20 $61

    cp $63                                        ; $5350: $FE $63
    ld [hl], d                                    ; $5352: $72
    ld h, l                                       ; $5353: $65
    ld h, c                                       ; $5354: $61

jr_02E_5355:
    ld [hl], h                                    ; $5355: $74
    ld [hl], l                                    ; $5356: $75
    ld [hl], d                                    ; $5357: $72

jr_02E_5358:
    ld h, l                                       ; $5358: $65
    daa                                           ; $5359: $27
    ld [hl], e                                    ; $535A: $73
    rst $38                                       ; $535B: $FF
    ld c, h                                       ; $535C: $4C
    ld [hl], l                                    ; $535D: $75
    ld h, e                                       ; $535E: $63
    ld l, e                                       ; $535F: $6B
    ld l, $FE                                     ; $5360: $2E $FE
    db $FD                                        ; $5362: $FD
    sbc d                                         ; $5363: $9A
    ld b, l                                       ; $5364: $45
    ld l, $E3                                     ; $5365: $2E $E3
    ld b, b                                       ; $5367: $40
    ld c, e                                       ; $5368: $4B
    ld bc, $CCFC                                  ; $5369: $01 $FC $CC
    ld l, $01                                     ; $536C: $2E $01
    nop                                           ; $536E: $00
    xor h                                         ; $536F: $AC
    ld d, e                                       ; $5370: $53
    ld l, $02                                     ; $5371: $2E $02
    nop                                           ; $5373: $00
    rst $18                                       ; $5374: $DF

jr_02E_5375:
    ld d, e                                       ; $5375: $53
    ld l, $03                                     ; $5376: $2E $03

jr_02E_5378:
    nop                                           ; $5378: $00
    inc c                                         ; $5379: $0C
    ld d, h                                       ; $537A: $54
    ld l, $04                                     ; $537B: $2E $04
    nop                                           ; $537D: $00
    scf                                           ; $537E: $37
    ld d, h                                       ; $537F: $54
    ld l, $05                                     ; $5380: $2E $05
    nop                                           ; $5382: $00
    ld h, e                                       ; $5383: $63
    ld d, h                                       ; $5384: $54
    ld l, $06                                     ; $5385: $2E $06

jr_02E_5387:
    nop                                           ; $5387: $00
    sub [hl]                                      ; $5388: $96
    ld d, h                                       ; $5389: $54
    ld l, $07                                     ; $538A: $2E $07
    nop                                           ; $538C: $00
    ret nz                                        ; $538D: $C0

    ld d, h                                       ; $538E: $54
    ld l, $08                                     ; $538F: $2E $08
    nop                                           ; $5391: $00
    ldh a, [rHDMA4]                               ; $5392: $F0 $54
    ld l, $09                                     ; $5394: $2E $09
    nop                                           ; $5396: $00
    dec de                                        ; $5397: $1B
    ld d, l                                       ; $5398: $55
    ld l, $0A                                     ; $5399: $2E $0A
    nop                                           ; $539B: $00
    ld c, d                                       ; $539C: $4A
    ld d, l                                       ; $539D: $55
    ld l, $0B                                     ; $539E: $2E $0B
    nop                                           ; $53A0: $00
    ld a, [hl]                                    ; $53A1: $7E
    ld d, l                                       ; $53A2: $55
    ld l, $0C                                     ; $53A3: $2E $0C
    nop                                           ; $53A5: $00
    xor a                                         ; $53A6: $AF
    ld d, l                                       ; $53A7: $55
    rst $38                                       ; $53A8: $FF
    ld b, [hl]                                    ; $53A9: $46
    rlca                                          ; $53AA: $07
    ld b, c                                       ; $53AB: $41
    sbc a                                         ; $53AC: $9F
    ld c, h                                       ; $53AD: $4C
    ld h, l                                       ; $53AE: $65
    ld h, c                                       ; $53AF: $61
    ld h, [hl]                                    ; $53B0: $66

jr_02E_53B1:
    jr nz, jr_02E_53F6                            ; $53B1: $20 $43

    ld [hl], l                                    ; $53B3: $75
    ld [hl], h                                    ; $53B4: $74
    rst $38                                       ; $53B5: $FF
    ld h, h                                       ; $53B6: $64
    ld h, l                                       ; $53B7: $65
    ld h, c                                       ; $53B8: $61
    ld l, h                                       ; $53B9: $6C
    ld [hl], e                                    ; $53BA: $73
    jr nz, jr_02E_541E                            ; $53BB: $20 $61

    jr nz, jr_02E_542B                            ; $53BD: $20 $6C

    ld l, c                                       ; $53BF: $69
    ld [hl], h                                    ; $53C0: $74
    ld [hl], h                                    ; $53C1: $74
    ld l, h                                       ; $53C2: $6C
    ld h, l                                       ; $53C3: $65
    cp $64                                        ; $53C4: $FE $64
    ld h, c                                       ; $53C6: $61
    ld l, l                                       ; $53C7: $6D
    ld h, c                                       ; $53C8: $61
    ld h, a                                       ; $53C9: $67
    ld h, l                                       ; $53CA: $65
    jr nz, jr_02E_5441                            ; $53CB: $20 $74

    ld l, a                                       ; $53CD: $6F
    jr nz, jr_02E_5431                            ; $53CE: $20 $61

    ld l, [hl]                                    ; $53D0: $6E
    rst $38                                       ; $53D1: $FF
    ld h, l                                       ; $53D2: $65
    ld l, [hl]                                    ; $53D3: $6E
    ld h, l                                       ; $53D4: $65
    ld l, l                                       ; $53D5: $6D
    ld a, c                                       ; $53D6: $79
    ld l, $FE                                     ; $53D7: $2E $FE
    db $FD                                        ; $53D9: $FD
    sbc d                                         ; $53DA: $9A
    ld b, l                                       ; $53DB: $45
    ld l, $E3                                     ; $53DC: $2E $E3
    ld b, b                                       ; $53DE: $40
    sbc a                                         ; $53DF: $9F
    ld b, a                                       ; $53E0: $47
    ld [hl], d                                    ; $53E1: $72
    ld l, a                                       ; $53E2: $6F
    ld [hl], a                                    ; $53E3: $77
    jr nz, jr_02E_5452                            ; $53E4: $20 $6C

    ld h, l                                       ; $53E6: $65
    ld [hl], h                                    ; $53E7: $74
    ld [hl], e                                    ; $53E8: $73
    rst $38                                       ; $53E9: $FF
    ld a, c                                       ; $53EA: $79
    ld l, a                                       ; $53EB: $6F
    ld [hl], l                                    ; $53EC: $75
    jr nz, jr_02E_5456                            ; $53ED: $20 $67

    ld l, c                                       ; $53EF: $69
    halt                                          ; $53F0: $76
    ld h, l                                       ; $53F1: $65
    jr nz, jr_02E_5455                            ; $53F2: $20 $61

    cp $63                                        ; $53F4: $FE $63

jr_02E_53F6:
    ld [hl], d                                    ; $53F6: $72
    ld h, l                                       ; $53F7: $65
    ld h, c                                       ; $53F8: $61
    ld [hl], h                                    ; $53F9: $74
    ld [hl], l                                    ; $53FA: $75
    ld [hl], d                                    ; $53FB: $72
    ld h, l                                       ; $53FC: $65
    rst $38                                       ; $53FD: $FF
    ld h, l                                       ; $53FE: $65
    ld l, [hl]                                    ; $53FF: $6E
    ld h, l                                       ; $5400: $65
    ld [hl], d                                    ; $5401: $72
    ld h, a                                       ; $5402: $67
    ld a, c                                       ; $5403: $79
    ld l, $FE                                     ; $5404: $2E $FE
    db $FD                                        ; $5406: $FD
    sbc d                                         ; $5407: $9A
    ld b, l                                       ; $5408: $45
    ld l, $E3                                     ; $5409: $2E $E3
    ld b, b                                       ; $540B: $40
    sbc a                                         ; $540C: $9F
    ld b, d                                       ; $540D: $42
    ld [hl], l                                    ; $540E: $75
    ld [hl], d                                    ; $540F: $72
    ld [hl], d                                    ; $5410: $72
    ld l, a                                       ; $5411: $6F
    ld [hl], a                                    ; $5412: $77
    rst $38                                       ; $5413: $FF
    ld [hl], d                                    ; $5414: $72
    ld h, c                                       ; $5415: $61
    ld l, c                                       ; $5416: $69
    ld [hl], e                                    ; $5417: $73
    ld h, l                                       ; $5418: $65
    ld [hl], e                                    ; $5419: $73
    jr nz, jr_02E_547D                            ; $541A: $20 $61

    cp $63                                        ; $541C: $FE $63

jr_02E_541E:
    ld [hl], d                                    ; $541E: $72
    ld h, l                                       ; $541F: $65
    ld h, c                                       ; $5420: $61
    ld [hl], h                                    ; $5421: $74
    ld [hl], l                                    ; $5422: $75
    ld [hl], d                                    ; $5423: $72
    ld h, l                                       ; $5424: $65
    daa                                           ; $5425: $27
    ld [hl], e                                    ; $5426: $73
    rst $38                                       ; $5427: $FF
    ld b, h                                       ; $5428: $44
    ld h, l                                       ; $5429: $65
    ld h, [hl]                                    ; $542A: $66

jr_02E_542B:
    ld h, l                                       ; $542B: $65
    ld l, [hl]                                    ; $542C: $6E
    ld [hl], e                                    ; $542D: $73
    ld h, l                                       ; $542E: $65
    ld l, $FE                                     ; $542F: $2E $FE

jr_02E_5431:
    db $FD                                        ; $5431: $FD
    sbc d                                         ; $5432: $9A
    ld b, l                                       ; $5433: $45
    ld l, $E3                                     ; $5434: $2E $E3
    ld b, b                                       ; $5436: $40
    sbc a                                         ; $5437: $9F
    ld b, e                                       ; $5438: $43
    ld h, c                                       ; $5439: $61
    halt                                          ; $543A: $76
    ld h, l                                       ; $543B: $65
    jr nz, jr_02E_5487                            ; $543C: $20 $49

    ld l, [hl]                                    ; $543E: $6E
    rst $38                                       ; $543F: $FF
    ld l, h                                       ; $5440: $6C

jr_02E_5441:
    ld l, a                                       ; $5441: $6F
    ld [hl], a                                    ; $5442: $77
    ld h, l                                       ; $5443: $65
    ld [hl], d                                    ; $5444: $72
    ld [hl], e                                    ; $5445: $73
    jr nz, jr_02E_54A9                            ; $5446: $20 $61

    cp $63                                        ; $5448: $FE $63
    ld [hl], d                                    ; $544A: $72
    ld h, l                                       ; $544B: $65
    ld h, c                                       ; $544C: $61
    ld [hl], h                                    ; $544D: $74
    ld [hl], l                                    ; $544E: $75
    ld [hl], d                                    ; $544F: $72
    ld h, l                                       ; $5450: $65
    daa                                           ; $5451: $27

jr_02E_5452:
    ld [hl], e                                    ; $5452: $73
    rst $38                                       ; $5453: $FF
    ld b, h                                       ; $5454: $44

jr_02E_5455:
    ld h, l                                       ; $5455: $65

jr_02E_5456:
    ld h, [hl]                                    ; $5456: $66
    ld h, l                                       ; $5457: $65
    ld l, [hl]                                    ; $5458: $6E
    ld [hl], e                                    ; $5459: $73
    ld h, l                                       ; $545A: $65
    ld l, $FE                                     ; $545B: $2E $FE
    db $FD                                        ; $545D: $FD
    sbc d                                         ; $545E: $9A
    ld b, l                                       ; $545F: $45
    ld l, $E3                                     ; $5460: $2E $E3
    ld b, b                                       ; $5462: $40
    sbc a                                         ; $5463: $9F
    ld d, h                                       ; $5464: $54
    ld l, b                                       ; $5465: $68
    ld [hl], l                                    ; $5466: $75
    ld l, [hl]                                    ; $5467: $6E
    ld h, h                                       ; $5468: $64
    ld h, l                                       ; $5469: $65
    ld [hl], d                                    ; $546A: $72
    ld [hl], c                                    ; $546B: $71
    ld [hl], l                                    ; $546C: $75
    ld h, c                                       ; $546D: $61
    ld l, e                                       ; $546E: $6B
    ld h, l                                       ; $546F: $65
    rst $38                                       ; $5470: $FF
    ld h, h                                       ; $5471: $64
    ld h, l                                       ; $5472: $65
    ld h, c                                       ; $5473: $61
    ld l, h                                       ; $5474: $6C
    ld [hl], e                                    ; $5475: $73
    jr nz, jr_02E_54DC                            ; $5476: $20 $64

    ld h, c                                       ; $5478: $61
    ld l, l                                       ; $5479: $6D
    ld h, c                                       ; $547A: $61
    ld h, a                                       ; $547B: $67
    ld h, l                                       ; $547C: $65

jr_02E_547D:
    cp $74                                        ; $547D: $FE $74
    ld l, a                                       ; $547F: $6F
    jr nz, jr_02E_54E3                            ; $5480: $20 $61

    ld l, h                                       ; $5482: $6C
    ld l, h                                       ; $5483: $6C
    rst $38                                       ; $5484: $FF
    ld h, e                                       ; $5485: $63
    ld [hl], d                                    ; $5486: $72

jr_02E_5487:
    ld h, l                                       ; $5487: $65
    ld h, c                                       ; $5488: $61
    ld [hl], h                                    ; $5489: $74
    ld [hl], l                                    ; $548A: $75
    ld [hl], d                                    ; $548B: $72
    ld h, l                                       ; $548C: $65
    ld [hl], e                                    ; $548D: $73
    ld l, $FE                                     ; $548E: $2E $FE
    db $FD                                        ; $5490: $FD
    sbc d                                         ; $5491: $9A
    ld b, l                                       ; $5492: $45
    ld l, $E3                                     ; $5493: $2E $E3
    ld b, b                                       ; $5495: $40
    sbc a                                         ; $5496: $9F
    ld b, [hl]                                    ; $5497: $46
    ld l, c                                       ; $5498: $69
    ld [hl], d                                    ; $5499: $72
    ld h, l                                       ; $549A: $65
    ld h, d                                       ; $549B: $62
    ld h, c                                       ; $549C: $61
    ld l, h                                       ; $549D: $6C
    ld l, h                                       ; $549E: $6C
    rst $38                                       ; $549F: $FF
    ld h, h                                       ; $54A0: $64
    ld h, l                                       ; $54A1: $65
    ld h, c                                       ; $54A2: $61
    ld l, h                                       ; $54A3: $6C
    ld [hl], e                                    ; $54A4: $73
    jr nz, jr_02E_550B                            ; $54A5: $20 $64

    ld h, c                                       ; $54A7: $61
    ld l, l                                       ; $54A8: $6D

jr_02E_54A9:
    ld h, c                                       ; $54A9: $61
    ld h, a                                       ; $54AA: $67
    ld h, l                                       ; $54AB: $65
    rst $38                                       ; $54AC: $FF
    ld [hl], h                                    ; $54AD: $74
    ld l, a                                       ; $54AE: $6F
    jr nz, jr_02E_5512                            ; $54AF: $20 $61

    ld l, [hl]                                    ; $54B1: $6E
    jr nz, @+$67                                  ; $54B2: $20 $65

    ld l, [hl]                                    ; $54B4: $6E
    ld h, l                                       ; $54B5: $65
    ld l, l                                       ; $54B6: $6D
    ld a, c                                       ; $54B7: $79
    ld l, $FE                                     ; $54B8: $2E $FE
    db $FD                                        ; $54BA: $FD
    sbc d                                         ; $54BB: $9A
    ld b, l                                       ; $54BC: $45
    ld l, $E3                                     ; $54BD: $2E $E3
    ld b, b                                       ; $54BF: $40
    sbc a                                         ; $54C0: $9F
    ld b, [hl]                                    ; $54C1: $46
    ld l, h                                       ; $54C2: $6C
    ld h, c                                       ; $54C3: $61
    ld l, l                                       ; $54C4: $6D
    ld h, l                                       ; $54C5: $65
    jr nz, jr_02E_550F                            ; $54C6: $20 $47

    ld h, l                                       ; $54C8: $65
    ld a, c                                       ; $54C9: $79
    ld [hl], e                                    ; $54CA: $73
    ld h, l                                       ; $54CB: $65
    ld [hl], d                                    ; $54CC: $72
    rst $38                                       ; $54CD: $FF
    ld h, h                                       ; $54CE: $64
    ld h, l                                       ; $54CF: $65
    ld h, c                                       ; $54D0: $61
    ld l, h                                       ; $54D1: $6C
    ld [hl], e                                    ; $54D2: $73
    jr nz, jr_02E_5539                            ; $54D3: $20 $64

    ld h, c                                       ; $54D5: $61
    ld l, l                                       ; $54D6: $6D
    ld h, c                                       ; $54D7: $61
    ld h, a                                       ; $54D8: $67
    ld h, l                                       ; $54D9: $65
    cp $74                                        ; $54DA: $FE $74

jr_02E_54DC:
    ld l, a                                       ; $54DC: $6F
    jr nz, jr_02E_5544                            ; $54DD: $20 $65

    halt                                          ; $54DF: $76
    ld h, l                                       ; $54E0: $65
    ld [hl], d                                    ; $54E1: $72
    ld a, c                                       ; $54E2: $79

jr_02E_54E3:
    ld [hl], h                                    ; $54E3: $74
    ld l, b                                       ; $54E4: $68
    ld l, c                                       ; $54E5: $69
    ld l, [hl]                                    ; $54E6: $6E
    ld h, a                                       ; $54E7: $67
    ld l, $FE                                     ; $54E8: $2E $FE
    db $FD                                        ; $54EA: $FD
    sbc d                                         ; $54EB: $9A
    ld b, l                                       ; $54EC: $45
    ld l, $E3                                     ; $54ED: $2E $E3
    ld b, b                                       ; $54EF: $40
    sbc a                                         ; $54F0: $9F
    ld b, l                                       ; $54F1: $45
    ld l, [hl]                                    ; $54F2: $6E
    ld [hl], h                                    ; $54F3: $74
    ld h, c                                       ; $54F4: $61
    ld l, [hl]                                    ; $54F5: $6E
    ld h, a                                       ; $54F6: $67
    ld l, h                                       ; $54F7: $6C
    ld h, l                                       ; $54F8: $65
    rst $38                                       ; $54F9: $FF
    ld l, h                                       ; $54FA: $6C
    ld l, a                                       ; $54FB: $6F
    ld [hl], a                                    ; $54FC: $77
    ld h, l                                       ; $54FD: $65
    ld [hl], d                                    ; $54FE: $72
    ld [hl], e                                    ; $54FF: $73
    jr nz, @+$63                                  ; $5500: $20 $61

    cp $63                                        ; $5502: $FE $63
    ld [hl], d                                    ; $5504: $72
    ld h, l                                       ; $5505: $65
    ld h, c                                       ; $5506: $61
    ld [hl], h                                    ; $5507: $74
    ld [hl], l                                    ; $5508: $75
    ld [hl], d                                    ; $5509: $72
    ld h, l                                       ; $550A: $65

jr_02E_550B:
    daa                                           ; $550B: $27
    ld [hl], e                                    ; $550C: $73
    rst $38                                       ; $550D: $FF
    ld d, e                                       ; $550E: $53

jr_02E_550F:
    ld [hl], b                                    ; $550F: $70
    ld h, l                                       ; $5510: $65
    ld h, l                                       ; $5511: $65

jr_02E_5512:
    ld h, h                                       ; $5512: $64
    ld l, $FE                                     ; $5513: $2E $FE
    db $FD                                        ; $5515: $FD
    sbc d                                         ; $5516: $9A
    ld b, l                                       ; $5517: $45
    ld l, $E3                                     ; $5518: $2E $E3
    ld b, b                                       ; $551A: $40
    sbc a                                         ; $551B: $9F
    ld d, h                                       ; $551C: $54
    ld l, c                                       ; $551D: $69
    ld h, h                                       ; $551E: $64
    ld h, c                                       ; $551F: $61
    ld l, h                                       ; $5520: $6C
    jr nz, jr_02E_557A                            ; $5521: $20 $57

    ld h, c                                       ; $5523: $61
    halt                                          ; $5524: $76
    ld h, l                                       ; $5525: $65
    rst $38                                       ; $5526: $FF
    ld h, h                                       ; $5527: $64
    ld h, l                                       ; $5528: $65
    ld h, c                                       ; $5529: $61
    ld l, h                                       ; $552A: $6C
    ld [hl], e                                    ; $552B: $73
    jr nz, @+$66                                  ; $552C: $20 $64

    ld h, c                                       ; $552E: $61
    ld l, l                                       ; $552F: $6D
    ld h, c                                       ; $5530: $61
    ld h, a                                       ; $5531: $67
    ld h, l                                       ; $5532: $65
    cp $74                                        ; $5533: $FE $74
    ld l, a                                       ; $5535: $6F
    jr nz, jr_02E_5599                            ; $5536: $20 $61

    ld l, h                                       ; $5538: $6C

jr_02E_5539:
    ld l, h                                       ; $5539: $6C
    jr nz, jr_02E_55A1                            ; $553A: $20 $65

    ld l, [hl]                                    ; $553C: $6E
    ld h, l                                       ; $553D: $65
    ld l, l                                       ; $553E: $6D
    ld l, c                                       ; $553F: $69
    ld h, l                                       ; $5540: $65
    ld [hl], e                                    ; $5541: $73
    ld l, $FF                                     ; $5542: $2E $FF

jr_02E_5544:
    db $FD                                        ; $5544: $FD
    sbc d                                         ; $5545: $9A
    ld b, l                                       ; $5546: $45
    ld l, $E3                                     ; $5547: $2E $E3
    ld b, b                                       ; $5549: $40
    sbc a                                         ; $554A: $9F
    ld b, h                                       ; $554B: $44
    ld l, c                                       ; $554C: $69
    ld [hl], e                                    ; $554D: $73
    ld [hl], b                                    ; $554E: $70
    ld h, l                                       ; $554F: $65
    ld l, h                                       ; $5550: $6C
    jr nz, jr_02E_55AB                            ; $5551: $20 $58

    rst $38                                       ; $5553: $FF
    ld h, e                                       ; $5554: $63
    ld [hl], l                                    ; $5555: $75
    ld [hl], d                                    ; $5556: $72
    ld h, l                                       ; $5557: $65
    ld [hl], e                                    ; $5558: $73
    jr nz, jr_02E_55BC                            ; $5559: $20 $61

    ld l, h                                       ; $555B: $6C
    ld l, h                                       ; $555C: $6C
    jr nz, jr_02E_55D8                            ; $555D: $20 $79

    ld l, a                                       ; $555F: $6F
    ld [hl], l                                    ; $5560: $75
    ld [hl], d                                    ; $5561: $72
    cp $63                                        ; $5562: $FE $63
    ld [hl], d                                    ; $5564: $72
    ld h, l                                       ; $5565: $65
    ld h, c                                       ; $5566: $61
    ld [hl], h                                    ; $5567: $74
    ld [hl], l                                    ; $5568: $75
    ld [hl], d                                    ; $5569: $72
    ld h, l                                       ; $556A: $65
    ld [hl], e                                    ; $556B: $73
    daa                                           ; $556C: $27
    rst $38                                       ; $556D: $FF
    ld h, c                                       ; $556E: $61
    ld l, c                                       ; $556F: $69
    ld l, h                                       ; $5570: $6C
    ld l, l                                       ; $5571: $6D
    ld h, l                                       ; $5572: $65
    ld l, [hl]                                    ; $5573: $6E
    ld [hl], h                                    ; $5574: $74
    ld [hl], e                                    ; $5575: $73
    ld l, $FE                                     ; $5576: $2E $FE
    db $FD                                        ; $5578: $FD
    sbc d                                         ; $5579: $9A

jr_02E_557A:
    ld b, l                                       ; $557A: $45
    ld l, $E3                                     ; $557B: $2E $E3
    ld b, b                                       ; $557D: $40
    sbc a                                         ; $557E: $9F
    ld d, l                                       ; $557F: $55
    ld [hl], b                                    ; $5580: $70
    ld h, h                                       ; $5581: $64
    ld [hl], d                                    ; $5582: $72
    ld h, c                                       ; $5583: $61
    ld h, [hl]                                    ; $5584: $66
    ld [hl], h                                    ; $5585: $74
    rst $38                                       ; $5586: $FF
    ld [hl], d                                    ; $5587: $72
    ld h, c                                       ; $5588: $61
    ld l, c                                       ; $5589: $69
    ld [hl], e                                    ; $558A: $73
    ld h, l                                       ; $558B: $65
    ld [hl], e                                    ; $558C: $73
    jr nz, jr_02E_55F0                            ; $558D: $20 $61

    ld l, h                                       ; $558F: $6C
    ld l, h                                       ; $5590: $6C
    cp $79                                        ; $5591: $FE $79
    ld l, a                                       ; $5593: $6F
    ld [hl], l                                    ; $5594: $75
    ld [hl], d                                    ; $5595: $72
    jr nz, jr_02E_55FB                            ; $5596: $20 $63

    ld [hl], d                                    ; $5598: $72

jr_02E_5599:
    ld h, l                                       ; $5599: $65
    ld h, c                                       ; $559A: $61
    ld [hl], h                                    ; $559B: $74
    ld [hl], l                                    ; $559C: $75
    ld [hl], d                                    ; $559D: $72
    ld h, l                                       ; $559E: $65
    ld [hl], e                                    ; $559F: $73
    daa                                           ; $55A0: $27

jr_02E_55A1:
    rst $38                                       ; $55A1: $FF
    ld d, e                                       ; $55A2: $53
    ld [hl], b                                    ; $55A3: $70
    ld h, l                                       ; $55A4: $65
    ld h, l                                       ; $55A5: $65
    ld h, h                                       ; $55A6: $64
    ld l, $FE                                     ; $55A7: $2E $FE
    db $FD                                        ; $55A9: $FD
    sbc d                                         ; $55AA: $9A

jr_02E_55AB:
    ld b, l                                       ; $55AB: $45
    ld l, $E3                                     ; $55AC: $2E $E3
    ld b, b                                       ; $55AE: $40
    sbc a                                         ; $55AF: $9F
    ld c, h                                       ; $55B0: $4C
    ld l, c                                       ; $55B1: $69
    ld h, a                                       ; $55B2: $67
    ld l, b                                       ; $55B3: $68
    ld [hl], h                                    ; $55B4: $74
    ld l, [hl]                                    ; $55B5: $6E
    ld l, c                                       ; $55B6: $69
    ld l, [hl]                                    ; $55B7: $6E
    ld h, a                                       ; $55B8: $67
    rst $38                                       ; $55B9: $FF
    ld h, h                                       ; $55BA: $64
    ld h, l                                       ; $55BB: $65

jr_02E_55BC:
    ld h, c                                       ; $55BC: $61
    ld l, h                                       ; $55BD: $6C
    ld [hl], e                                    ; $55BE: $73
    jr nz, jr_02E_5622                            ; $55BF: $20 $61

    jr nz, @+$6E                                  ; $55C1: $20 $6C

    ld l, a                                       ; $55C3: $6F
    ld [hl], h                                    ; $55C4: $74
    jr nz, jr_02E_5636                            ; $55C5: $20 $6F

    ld h, [hl]                                    ; $55C7: $66
    cp $64                                        ; $55C8: $FE $64
    ld h, c                                       ; $55CA: $61
    ld l, l                                       ; $55CB: $6D
    ld h, c                                       ; $55CC: $61
    ld h, a                                       ; $55CD: $67
    ld h, l                                       ; $55CE: $65
    jr nz, jr_02E_5645                            ; $55CF: $20 $74

    ld l, a                                       ; $55D1: $6F
    jr nz, jr_02E_5635                            ; $55D2: $20 $61

    ld l, [hl]                                    ; $55D4: $6E
    rst $38                                       ; $55D5: $FF
    ld h, l                                       ; $55D6: $65
    ld l, [hl]                                    ; $55D7: $6E

jr_02E_55D8:
    ld h, l                                       ; $55D8: $65
    ld l, l                                       ; $55D9: $6D
    ld a, c                                       ; $55DA: $79
    ld l, $FE                                     ; $55DB: $2E $FE
    db $FD                                        ; $55DD: $FD
    sbc d                                         ; $55DE: $9A
    ld b, l                                       ; $55DF: $45
    ld l, $E3                                     ; $55E0: $2E $E3
    ld b, b                                       ; $55E2: $40
    inc d                                         ; $55E3: $14
    ld [hl+], a                                   ; $55E4: $22
    inc b                                         ; $55E5: $04
    ld b, b                                       ; $55E6: $40
    ld de, $47B0                                  ; $55E7: $11 $B0 $47
    ld [bc], a                                    ; $55EA: $02
    ld l, $F1                                     ; $55EB: $2E $F1
    ld d, l                                       ; $55ED: $55
    ld l, $FA                                     ; $55EE: $2E $FA

jr_02E_55F0:
    ld d, l                                       ; $55F0: $55
    inc d                                         ; $55F1: $14
    ld de, $76D0                                  ; $55F2: $11 $D0 $76
    ld b, b                                       ; $55F5: $40
    jr nz, jr_02E_563E                            ; $55F6: $20 $46

    db $E3                                        ; $55F8: $E3
    ld d, l                                       ; $55F9: $55
    inc d                                         ; $55FA: $14

jr_02E_55FB:
    ld de, $76E5                                  ; $55FB: $11 $E5 $76
    ld b, b                                       ; $55FE: $40
    jr nz, jr_02E_5647                            ; $55FF: $20 $46

    db $E3                                        ; $5601: $E3
    ld d, l                                       ; $5602: $55
    inc d                                         ; $5603: $14
    ld [hl+], a                                   ; $5604: $22
    inc b                                         ; $5605: $04
    ld b, b                                       ; $5606: $40
    ld de, $4701                                  ; $5607: $11 $01 $47
    ld [bc], a                                    ; $560A: $02
    ld l, $11                                     ; $560B: $2E $11
    ld d, [hl]                                    ; $560D: $56
    ld l, $1A                                     ; $560E: $2E $1A
    ld d, [hl]                                    ; $5610: $56
    inc d                                         ; $5611: $14
    ld de, $7995                                  ; $5612: $11 $95 $79
    ld b, b                                       ; $5615: $40
    add hl, hl                                    ; $5616: $29
    ld b, [hl]                                    ; $5617: $46
    inc bc                                        ; $5618: $03
    ld d, [hl]                                    ; $5619: $56
    inc d                                         ; $561A: $14
    ld de, $79B3                                  ; $561B: $11 $B3 $79
    ld b, b                                       ; $561E: $40
    dec de                                        ; $561F: $1B
    ld b, [hl]                                    ; $5620: $46
    inc bc                                        ; $5621: $03

jr_02E_5622:
    ld d, [hl]                                    ; $5622: $56
    inc d                                         ; $5623: $14
    ld [hl+], a                                   ; $5624: $22
    inc b                                         ; $5625: $04
    ld b, b                                       ; $5626: $40
    ld de, $4702                                  ; $5627: $11 $02 $47
    ld [bc], a                                    ; $562A: $02
    ld l, $31                                     ; $562B: $2E $31
    ld d, [hl]                                    ; $562D: $56
    ld l, $3A                                     ; $562E: $2E $3A
    ld d, [hl]                                    ; $5630: $56
    inc d                                         ; $5631: $14
    ld de, $7936                                  ; $5632: $11 $36 $79

jr_02E_5635:
    ld b, b                                       ; $5635: $40

jr_02E_5636:
    jr nz, jr_02E_567E                            ; $5636: $20 $46

    inc hl                                        ; $5638: $23
    ld d, [hl]                                    ; $5639: $56
    inc d                                         ; $563A: $14
    ld de, $7936                                  ; $563B: $11 $36 $79

jr_02E_563E:
    ld b, b                                       ; $563E: $40
    jr nz, jr_02E_5687                            ; $563F: $20 $46

    inc hl                                        ; $5641: $23
    ld d, [hl]                                    ; $5642: $56
    nop                                           ; $5643: $00
    nop                                           ; $5644: $00

jr_02E_5645:
    nop                                           ; $5645: $00
    nop                                           ; $5646: $00

jr_02E_5647:
    nop                                           ; $5647: $00
    nop                                           ; $5648: $00
    nop                                           ; $5649: $00
    nop                                           ; $564A: $00
    nop                                           ; $564B: $00
    nop                                           ; $564C: $00
    nop                                           ; $564D: $00
    nop                                           ; $564E: $00
    nop                                           ; $564F: $00
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    nop                                           ; $5652: $00
    nop                                           ; $5653: $00
    nop                                           ; $5654: $00
    nop                                           ; $5655: $00
    nop                                           ; $5656: $00
    nop                                           ; $5657: $00
    nop                                           ; $5658: $00
    nop                                           ; $5659: $00
    nop                                           ; $565A: $00
    nop                                           ; $565B: $00
    nop                                           ; $565C: $00
    nop                                           ; $565D: $00
    nop                                           ; $565E: $00
    nop                                           ; $565F: $00
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00
    nop                                           ; $5664: $00
    nop                                           ; $5665: $00
    nop                                           ; $5666: $00
    nop                                           ; $5667: $00
    nop                                           ; $5668: $00
    nop                                           ; $5669: $00
    nop                                           ; $566A: $00
    nop                                           ; $566B: $00
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
    nop                                           ; $5677: $00
    nop                                           ; $5678: $00
    nop                                           ; $5679: $00
    nop                                           ; $567A: $00
    nop                                           ; $567B: $00
    nop                                           ; $567C: $00
    nop                                           ; $567D: $00

jr_02E_567E:
    nop                                           ; $567E: $00
    nop                                           ; $567F: $00
    nop                                           ; $5680: $00
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    nop                                           ; $5683: $00
    nop                                           ; $5684: $00
    nop                                           ; $5685: $00
    nop                                           ; $5686: $00

jr_02E_5687:
    nop                                           ; $5687: $00
    nop                                           ; $5688: $00
    nop                                           ; $5689: $00
    nop                                           ; $568A: $00
    nop                                           ; $568B: $00
    nop                                           ; $568C: $00
    nop                                           ; $568D: $00
    nop                                           ; $568E: $00
    nop                                           ; $568F: $00
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    nop                                           ; $5693: $00
    nop                                           ; $5694: $00
    nop                                           ; $5695: $00
    nop                                           ; $5696: $00
    nop                                           ; $5697: $00
    nop                                           ; $5698: $00
    nop                                           ; $5699: $00
    nop                                           ; $569A: $00
    nop                                           ; $569B: $00
    nop                                           ; $569C: $00
    nop                                           ; $569D: $00
    nop                                           ; $569E: $00
    nop                                           ; $569F: $00
    nop                                           ; $56A0: $00
    nop                                           ; $56A1: $00
    nop                                           ; $56A2: $00
    nop                                           ; $56A3: $00
    nop                                           ; $56A4: $00
    nop                                           ; $56A5: $00
    nop                                           ; $56A6: $00
    nop                                           ; $56A7: $00
    nop                                           ; $56A8: $00
    nop                                           ; $56A9: $00
    nop                                           ; $56AA: $00
    nop                                           ; $56AB: $00
    nop                                           ; $56AC: $00
    nop                                           ; $56AD: $00
    nop                                           ; $56AE: $00
    nop                                           ; $56AF: $00
    nop                                           ; $56B0: $00
    nop                                           ; $56B1: $00
    nop                                           ; $56B2: $00
    nop                                           ; $56B3: $00
    nop                                           ; $56B4: $00
    nop                                           ; $56B5: $00
    nop                                           ; $56B6: $00
    nop                                           ; $56B7: $00
    nop                                           ; $56B8: $00
    nop                                           ; $56B9: $00
    nop                                           ; $56BA: $00
    nop                                           ; $56BB: $00
    nop                                           ; $56BC: $00
    nop                                           ; $56BD: $00
    nop                                           ; $56BE: $00
    nop                                           ; $56BF: $00
    nop                                           ; $56C0: $00
    nop                                           ; $56C1: $00
    nop                                           ; $56C2: $00
    nop                                           ; $56C3: $00
    nop                                           ; $56C4: $00
    nop                                           ; $56C5: $00
    nop                                           ; $56C6: $00
    nop                                           ; $56C7: $00
    nop                                           ; $56C8: $00
    nop                                           ; $56C9: $00
    nop                                           ; $56CA: $00
    nop                                           ; $56CB: $00
    nop                                           ; $56CC: $00
    nop                                           ; $56CD: $00
    nop                                           ; $56CE: $00
    nop                                           ; $56CF: $00
    nop                                           ; $56D0: $00
    nop                                           ; $56D1: $00
    nop                                           ; $56D2: $00
    nop                                           ; $56D3: $00
    nop                                           ; $56D4: $00
    nop                                           ; $56D5: $00
    nop                                           ; $56D6: $00
    nop                                           ; $56D7: $00
    nop                                           ; $56D8: $00
    nop                                           ; $56D9: $00
    nop                                           ; $56DA: $00
    nop                                           ; $56DB: $00
    nop                                           ; $56DC: $00
    nop                                           ; $56DD: $00
    nop                                           ; $56DE: $00
    nop                                           ; $56DF: $00
    nop                                           ; $56E0: $00
    nop                                           ; $56E1: $00
    nop                                           ; $56E2: $00
    nop                                           ; $56E3: $00
    nop                                           ; $56E4: $00
    nop                                           ; $56E5: $00
    nop                                           ; $56E6: $00
    nop                                           ; $56E7: $00
    nop                                           ; $56E8: $00
    nop                                           ; $56E9: $00
    nop                                           ; $56EA: $00
    nop                                           ; $56EB: $00
    nop                                           ; $56EC: $00
    nop                                           ; $56ED: $00
    nop                                           ; $56EE: $00
    nop                                           ; $56EF: $00
    nop                                           ; $56F0: $00
    nop                                           ; $56F1: $00
    nop                                           ; $56F2: $00
    nop                                           ; $56F3: $00
    nop                                           ; $56F4: $00
    nop                                           ; $56F5: $00
    nop                                           ; $56F6: $00
    nop                                           ; $56F7: $00
    nop                                           ; $56F8: $00
    nop                                           ; $56F9: $00
    nop                                           ; $56FA: $00
    nop                                           ; $56FB: $00
    nop                                           ; $56FC: $00
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
    nop                                           ; $570A: $00
    nop                                           ; $570B: $00
    nop                                           ; $570C: $00
    nop                                           ; $570D: $00
    nop                                           ; $570E: $00
    nop                                           ; $570F: $00
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    nop                                           ; $5712: $00
    nop                                           ; $5713: $00
    nop                                           ; $5714: $00
    nop                                           ; $5715: $00
    nop                                           ; $5716: $00
    nop                                           ; $5717: $00
    nop                                           ; $5718: $00
    nop                                           ; $5719: $00
    nop                                           ; $571A: $00
    nop                                           ; $571B: $00
    nop                                           ; $571C: $00
    nop                                           ; $571D: $00
    nop                                           ; $571E: $00
    nop                                           ; $571F: $00
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    nop                                           ; $5722: $00
    nop                                           ; $5723: $00
    nop                                           ; $5724: $00
    nop                                           ; $5725: $00
    nop                                           ; $5726: $00
    nop                                           ; $5727: $00
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    nop                                           ; $572A: $00
    nop                                           ; $572B: $00
    nop                                           ; $572C: $00
    nop                                           ; $572D: $00
    nop                                           ; $572E: $00
    nop                                           ; $572F: $00
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    nop                                           ; $5734: $00
    nop                                           ; $5735: $00
    nop                                           ; $5736: $00
    nop                                           ; $5737: $00
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    nop                                           ; $573A: $00
    nop                                           ; $573B: $00
    nop                                           ; $573C: $00
    nop                                           ; $573D: $00
    nop                                           ; $573E: $00
    nop                                           ; $573F: $00
    nop                                           ; $5740: $00
    nop                                           ; $5741: $00
    nop                                           ; $5742: $00
    nop                                           ; $5743: $00
    nop                                           ; $5744: $00
    nop                                           ; $5745: $00
    nop                                           ; $5746: $00
    nop                                           ; $5747: $00
    nop                                           ; $5748: $00
    nop                                           ; $5749: $00
    nop                                           ; $574A: $00
    nop                                           ; $574B: $00
    nop                                           ; $574C: $00
    nop                                           ; $574D: $00
    nop                                           ; $574E: $00
    nop                                           ; $574F: $00
    nop                                           ; $5750: $00
    nop                                           ; $5751: $00
    nop                                           ; $5752: $00
    nop                                           ; $5753: $00
    nop                                           ; $5754: $00
    nop                                           ; $5755: $00
    nop                                           ; $5756: $00
    nop                                           ; $5757: $00
    nop                                           ; $5758: $00
    nop                                           ; $5759: $00
    nop                                           ; $575A: $00
    nop                                           ; $575B: $00
    nop                                           ; $575C: $00
    nop                                           ; $575D: $00
    nop                                           ; $575E: $00
    nop                                           ; $575F: $00
    nop                                           ; $5760: $00
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00
    nop                                           ; $5764: $00
    nop                                           ; $5765: $00
    nop                                           ; $5766: $00
    nop                                           ; $5767: $00
    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    nop                                           ; $576A: $00
    nop                                           ; $576B: $00
    nop                                           ; $576C: $00
    nop                                           ; $576D: $00
    nop                                           ; $576E: $00
    nop                                           ; $576F: $00
    nop                                           ; $5770: $00
    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    nop                                           ; $5778: $00
    nop                                           ; $5779: $00
    nop                                           ; $577A: $00
    nop                                           ; $577B: $00
    nop                                           ; $577C: $00
    nop                                           ; $577D: $00
    nop                                           ; $577E: $00
    nop                                           ; $577F: $00
    nop                                           ; $5780: $00
    nop                                           ; $5781: $00
    nop                                           ; $5782: $00
    nop                                           ; $5783: $00
    nop                                           ; $5784: $00
    nop                                           ; $5785: $00
    nop                                           ; $5786: $00
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
    nop                                           ; $5797: $00
    nop                                           ; $5798: $00
    nop                                           ; $5799: $00
    nop                                           ; $579A: $00
    nop                                           ; $579B: $00
    nop                                           ; $579C: $00
    nop                                           ; $579D: $00
    nop                                           ; $579E: $00
    nop                                           ; $579F: $00
    nop                                           ; $57A0: $00
    nop                                           ; $57A1: $00
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
    nop                                           ; $57BB: $00
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
    nop                                           ; $57CE: $00
    nop                                           ; $57CF: $00
    nop                                           ; $57D0: $00
    nop                                           ; $57D1: $00
    nop                                           ; $57D2: $00
    nop                                           ; $57D3: $00
    nop                                           ; $57D4: $00
    nop                                           ; $57D5: $00
    nop                                           ; $57D6: $00
    nop                                           ; $57D7: $00
    nop                                           ; $57D8: $00
    nop                                           ; $57D9: $00
    nop                                           ; $57DA: $00
    nop                                           ; $57DB: $00
    nop                                           ; $57DC: $00
    nop                                           ; $57DD: $00
    nop                                           ; $57DE: $00
    nop                                           ; $57DF: $00
    nop                                           ; $57E0: $00
    nop                                           ; $57E1: $00
    nop                                           ; $57E2: $00
    nop                                           ; $57E3: $00
    nop                                           ; $57E4: $00
    nop                                           ; $57E5: $00
    nop                                           ; $57E6: $00
    nop                                           ; $57E7: $00
    nop                                           ; $57E8: $00
    nop                                           ; $57E9: $00
    nop                                           ; $57EA: $00
    nop                                           ; $57EB: $00
    nop                                           ; $57EC: $00
    nop                                           ; $57ED: $00
    nop                                           ; $57EE: $00
    nop                                           ; $57EF: $00
    nop                                           ; $57F0: $00
    nop                                           ; $57F1: $00
    nop                                           ; $57F2: $00
    nop                                           ; $57F3: $00
    nop                                           ; $57F4: $00
    nop                                           ; $57F5: $00
    nop                                           ; $57F6: $00
    nop                                           ; $57F7: $00
    nop                                           ; $57F8: $00
    nop                                           ; $57F9: $00
    nop                                           ; $57FA: $00
    nop                                           ; $57FB: $00
    nop                                           ; $57FC: $00
    nop                                           ; $57FD: $00
    nop                                           ; $57FE: $00
    nop                                           ; $57FF: $00
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    nop                                           ; $5805: $00
    nop                                           ; $5806: $00
    nop                                           ; $5807: $00
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    nop                                           ; $580A: $00
    nop                                           ; $580B: $00
    nop                                           ; $580C: $00
    nop                                           ; $580D: $00
    nop                                           ; $580E: $00
    nop                                           ; $580F: $00
    nop                                           ; $5810: $00
    nop                                           ; $5811: $00
    nop                                           ; $5812: $00
    nop                                           ; $5813: $00
    nop                                           ; $5814: $00
    nop                                           ; $5815: $00
    nop                                           ; $5816: $00
    nop                                           ; $5817: $00
    nop                                           ; $5818: $00
    nop                                           ; $5819: $00
    nop                                           ; $581A: $00
    nop                                           ; $581B: $00
    nop                                           ; $581C: $00
    nop                                           ; $581D: $00
    nop                                           ; $581E: $00
    nop                                           ; $581F: $00
    nop                                           ; $5820: $00
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
    nop                                           ; $5824: $00
    nop                                           ; $5825: $00
    nop                                           ; $5826: $00
    nop                                           ; $5827: $00
    nop                                           ; $5828: $00
    nop                                           ; $5829: $00
    nop                                           ; $582A: $00
    nop                                           ; $582B: $00
    nop                                           ; $582C: $00
    nop                                           ; $582D: $00
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
    nop                                           ; $5839: $00
    nop                                           ; $583A: $00
    nop                                           ; $583B: $00
    nop                                           ; $583C: $00
    nop                                           ; $583D: $00
    nop                                           ; $583E: $00
    nop                                           ; $583F: $00
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    nop                                           ; $5844: $00
    nop                                           ; $5845: $00
    nop                                           ; $5846: $00
    nop                                           ; $5847: $00
    nop                                           ; $5848: $00
    nop                                           ; $5849: $00
    nop                                           ; $584A: $00
    nop                                           ; $584B: $00
    nop                                           ; $584C: $00
    nop                                           ; $584D: $00
    nop                                           ; $584E: $00
    nop                                           ; $584F: $00
    nop                                           ; $5850: $00
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00
    nop                                           ; $5854: $00
    nop                                           ; $5855: $00
    nop                                           ; $5856: $00
    nop                                           ; $5857: $00
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    nop                                           ; $585A: $00
    nop                                           ; $585B: $00
    nop                                           ; $585C: $00
    nop                                           ; $585D: $00
    nop                                           ; $585E: $00
    nop                                           ; $585F: $00
    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
    nop                                           ; $5863: $00
    nop                                           ; $5864: $00
    nop                                           ; $5865: $00
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
    nop                                           ; $586A: $00
    nop                                           ; $586B: $00
    nop                                           ; $586C: $00
    nop                                           ; $586D: $00
    nop                                           ; $586E: $00
    nop                                           ; $586F: $00
    nop                                           ; $5870: $00
    nop                                           ; $5871: $00
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    nop                                           ; $5874: $00
    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    nop                                           ; $5877: $00
    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    nop                                           ; $587A: $00
    nop                                           ; $587B: $00
    nop                                           ; $587C: $00
    nop                                           ; $587D: $00
    nop                                           ; $587E: $00
    nop                                           ; $587F: $00
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
    nop                                           ; $5883: $00
    nop                                           ; $5884: $00
    nop                                           ; $5885: $00
    nop                                           ; $5886: $00
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    nop                                           ; $5889: $00
    nop                                           ; $588A: $00
    nop                                           ; $588B: $00
    nop                                           ; $588C: $00
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
    nop                                           ; $5899: $00
    nop                                           ; $589A: $00
    nop                                           ; $589B: $00
    nop                                           ; $589C: $00
    nop                                           ; $589D: $00
    nop                                           ; $589E: $00
    nop                                           ; $589F: $00
    nop                                           ; $58A0: $00
    nop                                           ; $58A1: $00
    nop                                           ; $58A2: $00
    nop                                           ; $58A3: $00
    nop                                           ; $58A4: $00
    nop                                           ; $58A5: $00
    nop                                           ; $58A6: $00
    nop                                           ; $58A7: $00
    nop                                           ; $58A8: $00
    nop                                           ; $58A9: $00
    nop                                           ; $58AA: $00
    nop                                           ; $58AB: $00
    nop                                           ; $58AC: $00
    nop                                           ; $58AD: $00
    nop                                           ; $58AE: $00
    nop                                           ; $58AF: $00
    nop                                           ; $58B0: $00
    nop                                           ; $58B1: $00
    nop                                           ; $58B2: $00
    nop                                           ; $58B3: $00
    nop                                           ; $58B4: $00
    nop                                           ; $58B5: $00
    nop                                           ; $58B6: $00
    nop                                           ; $58B7: $00
    nop                                           ; $58B8: $00
    nop                                           ; $58B9: $00
    nop                                           ; $58BA: $00
    nop                                           ; $58BB: $00
    nop                                           ; $58BC: $00
    nop                                           ; $58BD: $00
    nop                                           ; $58BE: $00
    nop                                           ; $58BF: $00
    nop                                           ; $58C0: $00
    nop                                           ; $58C1: $00
    nop                                           ; $58C2: $00
    nop                                           ; $58C3: $00
    nop                                           ; $58C4: $00
    nop                                           ; $58C5: $00
    nop                                           ; $58C6: $00
    nop                                           ; $58C7: $00
    nop                                           ; $58C8: $00
    nop                                           ; $58C9: $00
    nop                                           ; $58CA: $00
    nop                                           ; $58CB: $00
    nop                                           ; $58CC: $00
    nop                                           ; $58CD: $00
    nop                                           ; $58CE: $00
    nop                                           ; $58CF: $00
    nop                                           ; $58D0: $00
    nop                                           ; $58D1: $00
    nop                                           ; $58D2: $00
    nop                                           ; $58D3: $00
    nop                                           ; $58D4: $00
    nop                                           ; $58D5: $00
    nop                                           ; $58D6: $00
    nop                                           ; $58D7: $00
    nop                                           ; $58D8: $00
    nop                                           ; $58D9: $00
    nop                                           ; $58DA: $00
    nop                                           ; $58DB: $00
    nop                                           ; $58DC: $00
    nop                                           ; $58DD: $00
    nop                                           ; $58DE: $00
    nop                                           ; $58DF: $00
    nop                                           ; $58E0: $00
    nop                                           ; $58E1: $00
    nop                                           ; $58E2: $00
    nop                                           ; $58E3: $00
    nop                                           ; $58E4: $00
    nop                                           ; $58E5: $00
    nop                                           ; $58E6: $00
    nop                                           ; $58E7: $00
    nop                                           ; $58E8: $00
    nop                                           ; $58E9: $00
    nop                                           ; $58EA: $00
    nop                                           ; $58EB: $00
    nop                                           ; $58EC: $00
    nop                                           ; $58ED: $00
    nop                                           ; $58EE: $00
    nop                                           ; $58EF: $00
    nop                                           ; $58F0: $00
    nop                                           ; $58F1: $00
    nop                                           ; $58F2: $00
    nop                                           ; $58F3: $00
    nop                                           ; $58F4: $00
    nop                                           ; $58F5: $00
    nop                                           ; $58F6: $00
    nop                                           ; $58F7: $00
    nop                                           ; $58F8: $00
    nop                                           ; $58F9: $00
    nop                                           ; $58FA: $00
    nop                                           ; $58FB: $00
    nop                                           ; $58FC: $00
    nop                                           ; $58FD: $00
    nop                                           ; $58FE: $00
    nop                                           ; $58FF: $00
    nop                                           ; $5900: $00
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    nop                                           ; $5903: $00
    nop                                           ; $5904: $00
    nop                                           ; $5905: $00
    nop                                           ; $5906: $00
    nop                                           ; $5907: $00
    nop                                           ; $5908: $00
    nop                                           ; $5909: $00
    nop                                           ; $590A: $00
    nop                                           ; $590B: $00
    nop                                           ; $590C: $00
    nop                                           ; $590D: $00
    nop                                           ; $590E: $00
    nop                                           ; $590F: $00
    nop                                           ; $5910: $00
    nop                                           ; $5911: $00
    nop                                           ; $5912: $00
    nop                                           ; $5913: $00
    nop                                           ; $5914: $00
    nop                                           ; $5915: $00
    nop                                           ; $5916: $00
    nop                                           ; $5917: $00
    nop                                           ; $5918: $00
    nop                                           ; $5919: $00
    nop                                           ; $591A: $00
    nop                                           ; $591B: $00
    nop                                           ; $591C: $00
    nop                                           ; $591D: $00
    nop                                           ; $591E: $00
    nop                                           ; $591F: $00
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    nop                                           ; $5922: $00
    nop                                           ; $5923: $00
    nop                                           ; $5924: $00
    nop                                           ; $5925: $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    nop                                           ; $5929: $00
    nop                                           ; $592A: $00
    nop                                           ; $592B: $00
    nop                                           ; $592C: $00
    nop                                           ; $592D: $00
    nop                                           ; $592E: $00
    nop                                           ; $592F: $00
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    nop                                           ; $5932: $00
    nop                                           ; $5933: $00
    nop                                           ; $5934: $00
    nop                                           ; $5935: $00
    nop                                           ; $5936: $00
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    nop                                           ; $593A: $00
    nop                                           ; $593B: $00
    nop                                           ; $593C: $00
    nop                                           ; $593D: $00
    nop                                           ; $593E: $00
    nop                                           ; $593F: $00
    nop                                           ; $5940: $00
    nop                                           ; $5941: $00
    nop                                           ; $5942: $00
    nop                                           ; $5943: $00
    nop                                           ; $5944: $00
    nop                                           ; $5945: $00
    nop                                           ; $5946: $00
    nop                                           ; $5947: $00
    nop                                           ; $5948: $00
    nop                                           ; $5949: $00
    nop                                           ; $594A: $00
    nop                                           ; $594B: $00
    nop                                           ; $594C: $00
    nop                                           ; $594D: $00
    nop                                           ; $594E: $00
    nop                                           ; $594F: $00
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    nop                                           ; $5953: $00
    nop                                           ; $5954: $00
    nop                                           ; $5955: $00
    nop                                           ; $5956: $00
    nop                                           ; $5957: $00
    nop                                           ; $5958: $00
    nop                                           ; $5959: $00
    nop                                           ; $595A: $00
    nop                                           ; $595B: $00
    nop                                           ; $595C: $00
    nop                                           ; $595D: $00
    nop                                           ; $595E: $00
    nop                                           ; $595F: $00
    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    nop                                           ; $5964: $00
    nop                                           ; $5965: $00
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    nop                                           ; $5968: $00
    nop                                           ; $5969: $00
    nop                                           ; $596A: $00
    nop                                           ; $596B: $00
    nop                                           ; $596C: $00
    nop                                           ; $596D: $00
    nop                                           ; $596E: $00
    nop                                           ; $596F: $00
    nop                                           ; $5970: $00
    nop                                           ; $5971: $00
    nop                                           ; $5972: $00
    nop                                           ; $5973: $00
    nop                                           ; $5974: $00
    nop                                           ; $5975: $00
    nop                                           ; $5976: $00
    nop                                           ; $5977: $00
    nop                                           ; $5978: $00
    nop                                           ; $5979: $00
    nop                                           ; $597A: $00
    nop                                           ; $597B: $00
    nop                                           ; $597C: $00
    nop                                           ; $597D: $00
    nop                                           ; $597E: $00
    nop                                           ; $597F: $00
    nop                                           ; $5980: $00
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00
    nop                                           ; $5984: $00
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
    nop                                           ; $5993: $00
    nop                                           ; $5994: $00
    nop                                           ; $5995: $00
    nop                                           ; $5996: $00
    nop                                           ; $5997: $00
    nop                                           ; $5998: $00
    nop                                           ; $5999: $00
    nop                                           ; $599A: $00
    nop                                           ; $599B: $00
    nop                                           ; $599C: $00
    nop                                           ; $599D: $00
    nop                                           ; $599E: $00
    nop                                           ; $599F: $00
    nop                                           ; $59A0: $00
    nop                                           ; $59A1: $00
    nop                                           ; $59A2: $00
    nop                                           ; $59A3: $00
    nop                                           ; $59A4: $00
    nop                                           ; $59A5: $00
    nop                                           ; $59A6: $00
    nop                                           ; $59A7: $00
    nop                                           ; $59A8: $00
    nop                                           ; $59A9: $00
    nop                                           ; $59AA: $00
    nop                                           ; $59AB: $00
    nop                                           ; $59AC: $00
    nop                                           ; $59AD: $00
    nop                                           ; $59AE: $00
    nop                                           ; $59AF: $00
    nop                                           ; $59B0: $00
    nop                                           ; $59B1: $00
    nop                                           ; $59B2: $00
    nop                                           ; $59B3: $00
    nop                                           ; $59B4: $00
    nop                                           ; $59B5: $00
    nop                                           ; $59B6: $00
    nop                                           ; $59B7: $00
    nop                                           ; $59B8: $00
    nop                                           ; $59B9: $00
    nop                                           ; $59BA: $00
    nop                                           ; $59BB: $00
    nop                                           ; $59BC: $00
    nop                                           ; $59BD: $00
    nop                                           ; $59BE: $00
    nop                                           ; $59BF: $00
    nop                                           ; $59C0: $00
    nop                                           ; $59C1: $00
    nop                                           ; $59C2: $00
    nop                                           ; $59C3: $00
    nop                                           ; $59C4: $00
    nop                                           ; $59C5: $00
    nop                                           ; $59C6: $00
    nop                                           ; $59C7: $00
    nop                                           ; $59C8: $00
    nop                                           ; $59C9: $00
    nop                                           ; $59CA: $00
    nop                                           ; $59CB: $00
    nop                                           ; $59CC: $00
    nop                                           ; $59CD: $00
    nop                                           ; $59CE: $00
    nop                                           ; $59CF: $00
    nop                                           ; $59D0: $00
    nop                                           ; $59D1: $00
    nop                                           ; $59D2: $00
    nop                                           ; $59D3: $00
    nop                                           ; $59D4: $00
    nop                                           ; $59D5: $00
    nop                                           ; $59D6: $00
    nop                                           ; $59D7: $00
    nop                                           ; $59D8: $00
    nop                                           ; $59D9: $00
    nop                                           ; $59DA: $00
    nop                                           ; $59DB: $00
    nop                                           ; $59DC: $00
    nop                                           ; $59DD: $00
    nop                                           ; $59DE: $00
    nop                                           ; $59DF: $00
    nop                                           ; $59E0: $00
    nop                                           ; $59E1: $00
    nop                                           ; $59E2: $00
    nop                                           ; $59E3: $00
    nop                                           ; $59E4: $00
    nop                                           ; $59E5: $00
    nop                                           ; $59E6: $00
    nop                                           ; $59E7: $00
    nop                                           ; $59E8: $00
    nop                                           ; $59E9: $00
    nop                                           ; $59EA: $00
    nop                                           ; $59EB: $00
    nop                                           ; $59EC: $00
    nop                                           ; $59ED: $00
    nop                                           ; $59EE: $00
    nop                                           ; $59EF: $00
    nop                                           ; $59F0: $00
    nop                                           ; $59F1: $00
    nop                                           ; $59F2: $00
    nop                                           ; $59F3: $00
    nop                                           ; $59F4: $00
    nop                                           ; $59F5: $00
    nop                                           ; $59F6: $00
    nop                                           ; $59F7: $00
    nop                                           ; $59F8: $00
    nop                                           ; $59F9: $00
    nop                                           ; $59FA: $00
    nop                                           ; $59FB: $00
    nop                                           ; $59FC: $00
    nop                                           ; $59FD: $00
    nop                                           ; $59FE: $00
    nop                                           ; $59FF: $00
    nop                                           ; $5A00: $00
    nop                                           ; $5A01: $00
    nop                                           ; $5A02: $00
    nop                                           ; $5A03: $00
    nop                                           ; $5A04: $00
    nop                                           ; $5A05: $00
    nop                                           ; $5A06: $00
    nop                                           ; $5A07: $00
    nop                                           ; $5A08: $00
    nop                                           ; $5A09: $00
    nop                                           ; $5A0A: $00
    nop                                           ; $5A0B: $00
    nop                                           ; $5A0C: $00
    nop                                           ; $5A0D: $00
    nop                                           ; $5A0E: $00
    nop                                           ; $5A0F: $00
    nop                                           ; $5A10: $00
    nop                                           ; $5A11: $00
    nop                                           ; $5A12: $00
    nop                                           ; $5A13: $00
    nop                                           ; $5A14: $00
    nop                                           ; $5A15: $00
    nop                                           ; $5A16: $00
    nop                                           ; $5A17: $00
    nop                                           ; $5A18: $00
    nop                                           ; $5A19: $00
    nop                                           ; $5A1A: $00
    nop                                           ; $5A1B: $00
    nop                                           ; $5A1C: $00
    nop                                           ; $5A1D: $00
    nop                                           ; $5A1E: $00
    nop                                           ; $5A1F: $00
    nop                                           ; $5A20: $00
    nop                                           ; $5A21: $00
    nop                                           ; $5A22: $00
    nop                                           ; $5A23: $00
    nop                                           ; $5A24: $00
    nop                                           ; $5A25: $00
    nop                                           ; $5A26: $00
    nop                                           ; $5A27: $00
    nop                                           ; $5A28: $00
    nop                                           ; $5A29: $00
    nop                                           ; $5A2A: $00
    nop                                           ; $5A2B: $00
    nop                                           ; $5A2C: $00
    nop                                           ; $5A2D: $00
    nop                                           ; $5A2E: $00
    nop                                           ; $5A2F: $00
    nop                                           ; $5A30: $00
    nop                                           ; $5A31: $00
    nop                                           ; $5A32: $00
    nop                                           ; $5A33: $00
    nop                                           ; $5A34: $00
    nop                                           ; $5A35: $00
    nop                                           ; $5A36: $00
    nop                                           ; $5A37: $00
    nop                                           ; $5A38: $00
    nop                                           ; $5A39: $00
    nop                                           ; $5A3A: $00
    nop                                           ; $5A3B: $00
    nop                                           ; $5A3C: $00
    nop                                           ; $5A3D: $00
    nop                                           ; $5A3E: $00
    nop                                           ; $5A3F: $00
    nop                                           ; $5A40: $00
    nop                                           ; $5A41: $00
    nop                                           ; $5A42: $00
    nop                                           ; $5A43: $00
    nop                                           ; $5A44: $00
    nop                                           ; $5A45: $00
    nop                                           ; $5A46: $00
    nop                                           ; $5A47: $00
    nop                                           ; $5A48: $00
    nop                                           ; $5A49: $00
    nop                                           ; $5A4A: $00
    nop                                           ; $5A4B: $00
    nop                                           ; $5A4C: $00
    nop                                           ; $5A4D: $00
    nop                                           ; $5A4E: $00
    nop                                           ; $5A4F: $00
    nop                                           ; $5A50: $00
    nop                                           ; $5A51: $00
    nop                                           ; $5A52: $00
    nop                                           ; $5A53: $00
    nop                                           ; $5A54: $00
    nop                                           ; $5A55: $00
    nop                                           ; $5A56: $00
    nop                                           ; $5A57: $00
    nop                                           ; $5A58: $00
    nop                                           ; $5A59: $00
    nop                                           ; $5A5A: $00
    nop                                           ; $5A5B: $00
    nop                                           ; $5A5C: $00
    nop                                           ; $5A5D: $00
    nop                                           ; $5A5E: $00
    nop                                           ; $5A5F: $00
    nop                                           ; $5A60: $00
    nop                                           ; $5A61: $00
    nop                                           ; $5A62: $00
    nop                                           ; $5A63: $00
    nop                                           ; $5A64: $00
    nop                                           ; $5A65: $00
    nop                                           ; $5A66: $00
    nop                                           ; $5A67: $00
    nop                                           ; $5A68: $00
    nop                                           ; $5A69: $00
    nop                                           ; $5A6A: $00
    nop                                           ; $5A6B: $00
    nop                                           ; $5A6C: $00
    nop                                           ; $5A6D: $00
    nop                                           ; $5A6E: $00
    nop                                           ; $5A6F: $00
    nop                                           ; $5A70: $00
    nop                                           ; $5A71: $00
    nop                                           ; $5A72: $00
    nop                                           ; $5A73: $00
    nop                                           ; $5A74: $00
    nop                                           ; $5A75: $00
    nop                                           ; $5A76: $00
    nop                                           ; $5A77: $00
    nop                                           ; $5A78: $00
    nop                                           ; $5A79: $00
    nop                                           ; $5A7A: $00
    nop                                           ; $5A7B: $00
    nop                                           ; $5A7C: $00
    nop                                           ; $5A7D: $00
    nop                                           ; $5A7E: $00
    nop                                           ; $5A7F: $00
    nop                                           ; $5A80: $00
    nop                                           ; $5A81: $00
    nop                                           ; $5A82: $00
    nop                                           ; $5A83: $00
    nop                                           ; $5A84: $00
    nop                                           ; $5A85: $00
    nop                                           ; $5A86: $00
    nop                                           ; $5A87: $00
    nop                                           ; $5A88: $00
    nop                                           ; $5A89: $00
    nop                                           ; $5A8A: $00
    nop                                           ; $5A8B: $00
    nop                                           ; $5A8C: $00
    nop                                           ; $5A8D: $00
    nop                                           ; $5A8E: $00
    nop                                           ; $5A8F: $00
    nop                                           ; $5A90: $00
    nop                                           ; $5A91: $00
    nop                                           ; $5A92: $00
    nop                                           ; $5A93: $00
    nop                                           ; $5A94: $00
    nop                                           ; $5A95: $00
    nop                                           ; $5A96: $00
    nop                                           ; $5A97: $00
    nop                                           ; $5A98: $00
    nop                                           ; $5A99: $00
    nop                                           ; $5A9A: $00
    nop                                           ; $5A9B: $00
    nop                                           ; $5A9C: $00
    nop                                           ; $5A9D: $00
    nop                                           ; $5A9E: $00
    nop                                           ; $5A9F: $00
    nop                                           ; $5AA0: $00
    nop                                           ; $5AA1: $00
    nop                                           ; $5AA2: $00
    nop                                           ; $5AA3: $00
    nop                                           ; $5AA4: $00
    nop                                           ; $5AA5: $00
    nop                                           ; $5AA6: $00
    nop                                           ; $5AA7: $00
    nop                                           ; $5AA8: $00
    nop                                           ; $5AA9: $00
    nop                                           ; $5AAA: $00
    nop                                           ; $5AAB: $00
    nop                                           ; $5AAC: $00
    nop                                           ; $5AAD: $00
    nop                                           ; $5AAE: $00
    nop                                           ; $5AAF: $00
    nop                                           ; $5AB0: $00
    nop                                           ; $5AB1: $00
    nop                                           ; $5AB2: $00
    nop                                           ; $5AB3: $00
    nop                                           ; $5AB4: $00
    nop                                           ; $5AB5: $00
    nop                                           ; $5AB6: $00
    nop                                           ; $5AB7: $00
    nop                                           ; $5AB8: $00
    nop                                           ; $5AB9: $00
    nop                                           ; $5ABA: $00
    nop                                           ; $5ABB: $00
    nop                                           ; $5ABC: $00
    nop                                           ; $5ABD: $00
    nop                                           ; $5ABE: $00
    nop                                           ; $5ABF: $00
    nop                                           ; $5AC0: $00
    nop                                           ; $5AC1: $00
    nop                                           ; $5AC2: $00
    nop                                           ; $5AC3: $00
    nop                                           ; $5AC4: $00
    nop                                           ; $5AC5: $00
    nop                                           ; $5AC6: $00
    nop                                           ; $5AC7: $00
    nop                                           ; $5AC8: $00
    nop                                           ; $5AC9: $00
    nop                                           ; $5ACA: $00
    nop                                           ; $5ACB: $00
    nop                                           ; $5ACC: $00
    nop                                           ; $5ACD: $00
    nop                                           ; $5ACE: $00
    nop                                           ; $5ACF: $00
    nop                                           ; $5AD0: $00
    nop                                           ; $5AD1: $00
    nop                                           ; $5AD2: $00
    nop                                           ; $5AD3: $00
    nop                                           ; $5AD4: $00
    nop                                           ; $5AD5: $00
    nop                                           ; $5AD6: $00
    nop                                           ; $5AD7: $00
    nop                                           ; $5AD8: $00
    nop                                           ; $5AD9: $00
    nop                                           ; $5ADA: $00
    nop                                           ; $5ADB: $00
    nop                                           ; $5ADC: $00
    nop                                           ; $5ADD: $00
    nop                                           ; $5ADE: $00
    nop                                           ; $5ADF: $00
    nop                                           ; $5AE0: $00
    nop                                           ; $5AE1: $00
    nop                                           ; $5AE2: $00
    nop                                           ; $5AE3: $00
    nop                                           ; $5AE4: $00
    nop                                           ; $5AE5: $00
    nop                                           ; $5AE6: $00
    nop                                           ; $5AE7: $00
    nop                                           ; $5AE8: $00
    nop                                           ; $5AE9: $00
    nop                                           ; $5AEA: $00
    nop                                           ; $5AEB: $00
    nop                                           ; $5AEC: $00
    nop                                           ; $5AED: $00
    nop                                           ; $5AEE: $00
    nop                                           ; $5AEF: $00
    nop                                           ; $5AF0: $00
    nop                                           ; $5AF1: $00
    nop                                           ; $5AF2: $00
    nop                                           ; $5AF3: $00
    nop                                           ; $5AF4: $00
    nop                                           ; $5AF5: $00
    nop                                           ; $5AF6: $00
    nop                                           ; $5AF7: $00
    nop                                           ; $5AF8: $00
    nop                                           ; $5AF9: $00
    nop                                           ; $5AFA: $00
    nop                                           ; $5AFB: $00
    nop                                           ; $5AFC: $00
    nop                                           ; $5AFD: $00
    nop                                           ; $5AFE: $00
    nop                                           ; $5AFF: $00
    nop                                           ; $5B00: $00
    nop                                           ; $5B01: $00
    nop                                           ; $5B02: $00
    nop                                           ; $5B03: $00
    nop                                           ; $5B04: $00
    nop                                           ; $5B05: $00
    nop                                           ; $5B06: $00
    nop                                           ; $5B07: $00
    nop                                           ; $5B08: $00
    nop                                           ; $5B09: $00
    nop                                           ; $5B0A: $00
    nop                                           ; $5B0B: $00
    nop                                           ; $5B0C: $00
    nop                                           ; $5B0D: $00
    nop                                           ; $5B0E: $00
    nop                                           ; $5B0F: $00
    nop                                           ; $5B10: $00
    nop                                           ; $5B11: $00
    nop                                           ; $5B12: $00
    nop                                           ; $5B13: $00
    nop                                           ; $5B14: $00
    nop                                           ; $5B15: $00
    nop                                           ; $5B16: $00
    nop                                           ; $5B17: $00
    nop                                           ; $5B18: $00
    nop                                           ; $5B19: $00
    nop                                           ; $5B1A: $00
    nop                                           ; $5B1B: $00
    nop                                           ; $5B1C: $00
    nop                                           ; $5B1D: $00
    nop                                           ; $5B1E: $00
    nop                                           ; $5B1F: $00
    nop                                           ; $5B20: $00
    nop                                           ; $5B21: $00
    nop                                           ; $5B22: $00
    nop                                           ; $5B23: $00
    nop                                           ; $5B24: $00
    nop                                           ; $5B25: $00
    nop                                           ; $5B26: $00
    nop                                           ; $5B27: $00
    nop                                           ; $5B28: $00
    nop                                           ; $5B29: $00
    nop                                           ; $5B2A: $00
    nop                                           ; $5B2B: $00
    nop                                           ; $5B2C: $00
    nop                                           ; $5B2D: $00
    nop                                           ; $5B2E: $00
    nop                                           ; $5B2F: $00
    nop                                           ; $5B30: $00
    nop                                           ; $5B31: $00
    nop                                           ; $5B32: $00
    nop                                           ; $5B33: $00
    nop                                           ; $5B34: $00
    nop                                           ; $5B35: $00
    nop                                           ; $5B36: $00
    nop                                           ; $5B37: $00
    nop                                           ; $5B38: $00
    nop                                           ; $5B39: $00
    nop                                           ; $5B3A: $00
    nop                                           ; $5B3B: $00
    nop                                           ; $5B3C: $00
    nop                                           ; $5B3D: $00
    nop                                           ; $5B3E: $00
    nop                                           ; $5B3F: $00
    nop                                           ; $5B40: $00
    nop                                           ; $5B41: $00
    nop                                           ; $5B42: $00
    nop                                           ; $5B43: $00
    nop                                           ; $5B44: $00
    nop                                           ; $5B45: $00
    nop                                           ; $5B46: $00
    nop                                           ; $5B47: $00
    nop                                           ; $5B48: $00
    nop                                           ; $5B49: $00
    nop                                           ; $5B4A: $00
    nop                                           ; $5B4B: $00
    nop                                           ; $5B4C: $00
    nop                                           ; $5B4D: $00
    nop                                           ; $5B4E: $00
    nop                                           ; $5B4F: $00
    nop                                           ; $5B50: $00
    nop                                           ; $5B51: $00
    nop                                           ; $5B52: $00
    nop                                           ; $5B53: $00
    nop                                           ; $5B54: $00
    nop                                           ; $5B55: $00
    nop                                           ; $5B56: $00
    nop                                           ; $5B57: $00
    nop                                           ; $5B58: $00
    nop                                           ; $5B59: $00
    nop                                           ; $5B5A: $00
    nop                                           ; $5B5B: $00
    nop                                           ; $5B5C: $00
    nop                                           ; $5B5D: $00
    nop                                           ; $5B5E: $00
    nop                                           ; $5B5F: $00
    nop                                           ; $5B60: $00
    nop                                           ; $5B61: $00
    nop                                           ; $5B62: $00
    nop                                           ; $5B63: $00
    nop                                           ; $5B64: $00
    nop                                           ; $5B65: $00
    nop                                           ; $5B66: $00
    nop                                           ; $5B67: $00
    nop                                           ; $5B68: $00
    nop                                           ; $5B69: $00
    nop                                           ; $5B6A: $00
    nop                                           ; $5B6B: $00
    nop                                           ; $5B6C: $00
    nop                                           ; $5B6D: $00
    nop                                           ; $5B6E: $00
    nop                                           ; $5B6F: $00
    nop                                           ; $5B70: $00
    nop                                           ; $5B71: $00
    nop                                           ; $5B72: $00
    nop                                           ; $5B73: $00
    nop                                           ; $5B74: $00
    nop                                           ; $5B75: $00
    nop                                           ; $5B76: $00
    nop                                           ; $5B77: $00
    nop                                           ; $5B78: $00
    nop                                           ; $5B79: $00
    nop                                           ; $5B7A: $00
    nop                                           ; $5B7B: $00
    nop                                           ; $5B7C: $00
    nop                                           ; $5B7D: $00
    nop                                           ; $5B7E: $00
    nop                                           ; $5B7F: $00
    nop                                           ; $5B80: $00
    nop                                           ; $5B81: $00
    nop                                           ; $5B82: $00
    nop                                           ; $5B83: $00
    nop                                           ; $5B84: $00
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
    nop                                           ; $5B8F: $00
    nop                                           ; $5B90: $00
    nop                                           ; $5B91: $00
    nop                                           ; $5B92: $00
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
    nop                                           ; $5B9F: $00
    nop                                           ; $5BA0: $00
    nop                                           ; $5BA1: $00
    nop                                           ; $5BA2: $00
    nop                                           ; $5BA3: $00
    nop                                           ; $5BA4: $00
    nop                                           ; $5BA5: $00
    nop                                           ; $5BA6: $00
    nop                                           ; $5BA7: $00
    nop                                           ; $5BA8: $00
    nop                                           ; $5BA9: $00
    nop                                           ; $5BAA: $00
    nop                                           ; $5BAB: $00
    nop                                           ; $5BAC: $00
    nop                                           ; $5BAD: $00
    nop                                           ; $5BAE: $00
    nop                                           ; $5BAF: $00
    nop                                           ; $5BB0: $00
    nop                                           ; $5BB1: $00
    nop                                           ; $5BB2: $00
    nop                                           ; $5BB3: $00
    nop                                           ; $5BB4: $00
    nop                                           ; $5BB5: $00
    nop                                           ; $5BB6: $00
    nop                                           ; $5BB7: $00
    nop                                           ; $5BB8: $00
    nop                                           ; $5BB9: $00
    nop                                           ; $5BBA: $00
    nop                                           ; $5BBB: $00
    nop                                           ; $5BBC: $00
    nop                                           ; $5BBD: $00
    nop                                           ; $5BBE: $00
    nop                                           ; $5BBF: $00
    nop                                           ; $5BC0: $00
    nop                                           ; $5BC1: $00
    nop                                           ; $5BC2: $00
    nop                                           ; $5BC3: $00
    nop                                           ; $5BC4: $00
    nop                                           ; $5BC5: $00
    nop                                           ; $5BC6: $00
    nop                                           ; $5BC7: $00
    nop                                           ; $5BC8: $00
    nop                                           ; $5BC9: $00
    nop                                           ; $5BCA: $00
    nop                                           ; $5BCB: $00
    nop                                           ; $5BCC: $00
    nop                                           ; $5BCD: $00
    nop                                           ; $5BCE: $00
    nop                                           ; $5BCF: $00
    nop                                           ; $5BD0: $00
    nop                                           ; $5BD1: $00
    nop                                           ; $5BD2: $00
    nop                                           ; $5BD3: $00
    nop                                           ; $5BD4: $00
    nop                                           ; $5BD5: $00
    nop                                           ; $5BD6: $00
    nop                                           ; $5BD7: $00
    nop                                           ; $5BD8: $00
    nop                                           ; $5BD9: $00
    nop                                           ; $5BDA: $00
    nop                                           ; $5BDB: $00
    nop                                           ; $5BDC: $00
    nop                                           ; $5BDD: $00
    nop                                           ; $5BDE: $00
    nop                                           ; $5BDF: $00
    nop                                           ; $5BE0: $00
    nop                                           ; $5BE1: $00
    nop                                           ; $5BE2: $00
    nop                                           ; $5BE3: $00
    nop                                           ; $5BE4: $00
    nop                                           ; $5BE5: $00
    nop                                           ; $5BE6: $00
    nop                                           ; $5BE7: $00
    nop                                           ; $5BE8: $00
    nop                                           ; $5BE9: $00
    nop                                           ; $5BEA: $00
    nop                                           ; $5BEB: $00
    nop                                           ; $5BEC: $00
    nop                                           ; $5BED: $00
    nop                                           ; $5BEE: $00
    nop                                           ; $5BEF: $00
    nop                                           ; $5BF0: $00
    nop                                           ; $5BF1: $00
    nop                                           ; $5BF2: $00
    nop                                           ; $5BF3: $00
    nop                                           ; $5BF4: $00
    nop                                           ; $5BF5: $00
    nop                                           ; $5BF6: $00
    nop                                           ; $5BF7: $00
    nop                                           ; $5BF8: $00
    nop                                           ; $5BF9: $00
    nop                                           ; $5BFA: $00
    nop                                           ; $5BFB: $00
    nop                                           ; $5BFC: $00
    nop                                           ; $5BFD: $00
    nop                                           ; $5BFE: $00
    nop                                           ; $5BFF: $00
    nop                                           ; $5C00: $00
    nop                                           ; $5C01: $00
    nop                                           ; $5C02: $00
    nop                                           ; $5C03: $00
    nop                                           ; $5C04: $00
    nop                                           ; $5C05: $00
    nop                                           ; $5C06: $00
    nop                                           ; $5C07: $00
    nop                                           ; $5C08: $00
    nop                                           ; $5C09: $00
    nop                                           ; $5C0A: $00
    nop                                           ; $5C0B: $00
    nop                                           ; $5C0C: $00
    nop                                           ; $5C0D: $00
    nop                                           ; $5C0E: $00
    nop                                           ; $5C0F: $00
    nop                                           ; $5C10: $00
    nop                                           ; $5C11: $00
    nop                                           ; $5C12: $00
    nop                                           ; $5C13: $00
    nop                                           ; $5C14: $00
    nop                                           ; $5C15: $00
    nop                                           ; $5C16: $00
    nop                                           ; $5C17: $00
    nop                                           ; $5C18: $00
    nop                                           ; $5C19: $00
    nop                                           ; $5C1A: $00
    nop                                           ; $5C1B: $00
    nop                                           ; $5C1C: $00
    nop                                           ; $5C1D: $00
    nop                                           ; $5C1E: $00
    nop                                           ; $5C1F: $00
    nop                                           ; $5C20: $00
    nop                                           ; $5C21: $00
    nop                                           ; $5C22: $00
    nop                                           ; $5C23: $00
    nop                                           ; $5C24: $00
    nop                                           ; $5C25: $00
    nop                                           ; $5C26: $00
    nop                                           ; $5C27: $00
    nop                                           ; $5C28: $00
    nop                                           ; $5C29: $00
    nop                                           ; $5C2A: $00
    nop                                           ; $5C2B: $00
    nop                                           ; $5C2C: $00
    nop                                           ; $5C2D: $00
    nop                                           ; $5C2E: $00
    nop                                           ; $5C2F: $00
    nop                                           ; $5C30: $00
    nop                                           ; $5C31: $00
    nop                                           ; $5C32: $00
    nop                                           ; $5C33: $00
    nop                                           ; $5C34: $00
    nop                                           ; $5C35: $00
    nop                                           ; $5C36: $00
    nop                                           ; $5C37: $00
    nop                                           ; $5C38: $00
    nop                                           ; $5C39: $00
    nop                                           ; $5C3A: $00
    nop                                           ; $5C3B: $00
    nop                                           ; $5C3C: $00
    nop                                           ; $5C3D: $00
    nop                                           ; $5C3E: $00
    nop                                           ; $5C3F: $00
    nop                                           ; $5C40: $00
    nop                                           ; $5C41: $00
    nop                                           ; $5C42: $00
    nop                                           ; $5C43: $00
    nop                                           ; $5C44: $00
    nop                                           ; $5C45: $00
    nop                                           ; $5C46: $00
    nop                                           ; $5C47: $00
    nop                                           ; $5C48: $00
    nop                                           ; $5C49: $00
    nop                                           ; $5C4A: $00
    nop                                           ; $5C4B: $00
    nop                                           ; $5C4C: $00
    nop                                           ; $5C4D: $00
    nop                                           ; $5C4E: $00
    nop                                           ; $5C4F: $00
    nop                                           ; $5C50: $00
    nop                                           ; $5C51: $00
    nop                                           ; $5C52: $00
    nop                                           ; $5C53: $00
    nop                                           ; $5C54: $00
    nop                                           ; $5C55: $00
    nop                                           ; $5C56: $00
    nop                                           ; $5C57: $00
    nop                                           ; $5C58: $00
    nop                                           ; $5C59: $00
    nop                                           ; $5C5A: $00
    nop                                           ; $5C5B: $00
    nop                                           ; $5C5C: $00
    nop                                           ; $5C5D: $00
    nop                                           ; $5C5E: $00
    nop                                           ; $5C5F: $00
    nop                                           ; $5C60: $00
    nop                                           ; $5C61: $00
    nop                                           ; $5C62: $00
    nop                                           ; $5C63: $00
    nop                                           ; $5C64: $00
    nop                                           ; $5C65: $00
    nop                                           ; $5C66: $00
    nop                                           ; $5C67: $00
    nop                                           ; $5C68: $00
    nop                                           ; $5C69: $00
    nop                                           ; $5C6A: $00
    nop                                           ; $5C6B: $00
    nop                                           ; $5C6C: $00
    nop                                           ; $5C6D: $00
    nop                                           ; $5C6E: $00
    nop                                           ; $5C6F: $00
    nop                                           ; $5C70: $00
    nop                                           ; $5C71: $00
    nop                                           ; $5C72: $00
    nop                                           ; $5C73: $00
    nop                                           ; $5C74: $00
    nop                                           ; $5C75: $00
    nop                                           ; $5C76: $00
    nop                                           ; $5C77: $00
    nop                                           ; $5C78: $00
    nop                                           ; $5C79: $00
    nop                                           ; $5C7A: $00
    nop                                           ; $5C7B: $00
    nop                                           ; $5C7C: $00
    nop                                           ; $5C7D: $00
    nop                                           ; $5C7E: $00
    nop                                           ; $5C7F: $00
    nop                                           ; $5C80: $00
    nop                                           ; $5C81: $00
    nop                                           ; $5C82: $00
    nop                                           ; $5C83: $00
    nop                                           ; $5C84: $00
    nop                                           ; $5C85: $00
    nop                                           ; $5C86: $00
    nop                                           ; $5C87: $00
    nop                                           ; $5C88: $00
    nop                                           ; $5C89: $00
    nop                                           ; $5C8A: $00
    nop                                           ; $5C8B: $00
    nop                                           ; $5C8C: $00
    nop                                           ; $5C8D: $00
    nop                                           ; $5C8E: $00
    nop                                           ; $5C8F: $00
    nop                                           ; $5C90: $00
    nop                                           ; $5C91: $00
    nop                                           ; $5C92: $00
    nop                                           ; $5C93: $00
    nop                                           ; $5C94: $00
    nop                                           ; $5C95: $00
    nop                                           ; $5C96: $00
    nop                                           ; $5C97: $00
    nop                                           ; $5C98: $00
    nop                                           ; $5C99: $00
    nop                                           ; $5C9A: $00
    nop                                           ; $5C9B: $00
    nop                                           ; $5C9C: $00
    nop                                           ; $5C9D: $00
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
    nop                                           ; $5CA9: $00
    nop                                           ; $5CAA: $00
    nop                                           ; $5CAB: $00
    nop                                           ; $5CAC: $00
    nop                                           ; $5CAD: $00
    nop                                           ; $5CAE: $00
    nop                                           ; $5CAF: $00
    nop                                           ; $5CB0: $00
    nop                                           ; $5CB1: $00
    nop                                           ; $5CB2: $00
    nop                                           ; $5CB3: $00
    nop                                           ; $5CB4: $00
    nop                                           ; $5CB5: $00
    nop                                           ; $5CB6: $00
    nop                                           ; $5CB7: $00
    nop                                           ; $5CB8: $00
    nop                                           ; $5CB9: $00
    nop                                           ; $5CBA: $00
    nop                                           ; $5CBB: $00
    nop                                           ; $5CBC: $00
    nop                                           ; $5CBD: $00
    nop                                           ; $5CBE: $00
    nop                                           ; $5CBF: $00
    nop                                           ; $5CC0: $00
    nop                                           ; $5CC1: $00
    nop                                           ; $5CC2: $00
    nop                                           ; $5CC3: $00
    nop                                           ; $5CC4: $00
    nop                                           ; $5CC5: $00
    nop                                           ; $5CC6: $00
    nop                                           ; $5CC7: $00
    nop                                           ; $5CC8: $00
    nop                                           ; $5CC9: $00
    nop                                           ; $5CCA: $00
    nop                                           ; $5CCB: $00
    nop                                           ; $5CCC: $00
    nop                                           ; $5CCD: $00
    nop                                           ; $5CCE: $00
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
    nop                                           ; $5CD9: $00
    nop                                           ; $5CDA: $00
    nop                                           ; $5CDB: $00
    nop                                           ; $5CDC: $00
    nop                                           ; $5CDD: $00
    nop                                           ; $5CDE: $00
    nop                                           ; $5CDF: $00
    nop                                           ; $5CE0: $00
    nop                                           ; $5CE1: $00
    nop                                           ; $5CE2: $00
    nop                                           ; $5CE3: $00
    nop                                           ; $5CE4: $00
    nop                                           ; $5CE5: $00
    nop                                           ; $5CE6: $00
    nop                                           ; $5CE7: $00
    nop                                           ; $5CE8: $00
    nop                                           ; $5CE9: $00
    nop                                           ; $5CEA: $00
    nop                                           ; $5CEB: $00
    nop                                           ; $5CEC: $00
    nop                                           ; $5CED: $00
    nop                                           ; $5CEE: $00
    nop                                           ; $5CEF: $00
    nop                                           ; $5CF0: $00
    nop                                           ; $5CF1: $00
    nop                                           ; $5CF2: $00
    nop                                           ; $5CF3: $00
    nop                                           ; $5CF4: $00
    nop                                           ; $5CF5: $00
    nop                                           ; $5CF6: $00
    nop                                           ; $5CF7: $00
    nop                                           ; $5CF8: $00
    nop                                           ; $5CF9: $00
    nop                                           ; $5CFA: $00
    nop                                           ; $5CFB: $00
    nop                                           ; $5CFC: $00
    nop                                           ; $5CFD: $00
    nop                                           ; $5CFE: $00
    nop                                           ; $5CFF: $00
    nop                                           ; $5D00: $00
    nop                                           ; $5D01: $00
    nop                                           ; $5D02: $00
    nop                                           ; $5D03: $00
    nop                                           ; $5D04: $00
    nop                                           ; $5D05: $00
    nop                                           ; $5D06: $00
    nop                                           ; $5D07: $00
    nop                                           ; $5D08: $00
    nop                                           ; $5D09: $00
    nop                                           ; $5D0A: $00
    nop                                           ; $5D0B: $00
    nop                                           ; $5D0C: $00
    nop                                           ; $5D0D: $00
    nop                                           ; $5D0E: $00
    nop                                           ; $5D0F: $00
    nop                                           ; $5D10: $00
    nop                                           ; $5D11: $00
    nop                                           ; $5D12: $00
    nop                                           ; $5D13: $00
    nop                                           ; $5D14: $00
    nop                                           ; $5D15: $00
    nop                                           ; $5D16: $00
    nop                                           ; $5D17: $00
    nop                                           ; $5D18: $00
    nop                                           ; $5D19: $00
    nop                                           ; $5D1A: $00
    nop                                           ; $5D1B: $00
    nop                                           ; $5D1C: $00
    nop                                           ; $5D1D: $00
    nop                                           ; $5D1E: $00
    nop                                           ; $5D1F: $00
    nop                                           ; $5D20: $00
    nop                                           ; $5D21: $00
    nop                                           ; $5D22: $00
    nop                                           ; $5D23: $00
    nop                                           ; $5D24: $00
    nop                                           ; $5D25: $00
    nop                                           ; $5D26: $00
    nop                                           ; $5D27: $00
    nop                                           ; $5D28: $00
    nop                                           ; $5D29: $00
    nop                                           ; $5D2A: $00
    nop                                           ; $5D2B: $00
    nop                                           ; $5D2C: $00
    nop                                           ; $5D2D: $00
    nop                                           ; $5D2E: $00
    nop                                           ; $5D2F: $00
    nop                                           ; $5D30: $00
    nop                                           ; $5D31: $00
    nop                                           ; $5D32: $00
    nop                                           ; $5D33: $00
    nop                                           ; $5D34: $00
    nop                                           ; $5D35: $00
    nop                                           ; $5D36: $00
    nop                                           ; $5D37: $00
    nop                                           ; $5D38: $00
    nop                                           ; $5D39: $00
    nop                                           ; $5D3A: $00
    nop                                           ; $5D3B: $00
    nop                                           ; $5D3C: $00
    nop                                           ; $5D3D: $00
    nop                                           ; $5D3E: $00
    nop                                           ; $5D3F: $00
    nop                                           ; $5D40: $00
    nop                                           ; $5D41: $00
    nop                                           ; $5D42: $00
    nop                                           ; $5D43: $00
    nop                                           ; $5D44: $00
    nop                                           ; $5D45: $00
    nop                                           ; $5D46: $00
    nop                                           ; $5D47: $00
    nop                                           ; $5D48: $00
    nop                                           ; $5D49: $00
    nop                                           ; $5D4A: $00
    nop                                           ; $5D4B: $00
    nop                                           ; $5D4C: $00
    nop                                           ; $5D4D: $00
    nop                                           ; $5D4E: $00
    nop                                           ; $5D4F: $00
    nop                                           ; $5D50: $00
    nop                                           ; $5D51: $00
    nop                                           ; $5D52: $00
    nop                                           ; $5D53: $00
    nop                                           ; $5D54: $00
    nop                                           ; $5D55: $00
    nop                                           ; $5D56: $00
    nop                                           ; $5D57: $00
    nop                                           ; $5D58: $00
    nop                                           ; $5D59: $00
    nop                                           ; $5D5A: $00
    nop                                           ; $5D5B: $00
    nop                                           ; $5D5C: $00
    nop                                           ; $5D5D: $00
    nop                                           ; $5D5E: $00
    nop                                           ; $5D5F: $00
    nop                                           ; $5D60: $00
    nop                                           ; $5D61: $00
    nop                                           ; $5D62: $00
    nop                                           ; $5D63: $00
    nop                                           ; $5D64: $00
    nop                                           ; $5D65: $00
    nop                                           ; $5D66: $00
    nop                                           ; $5D67: $00
    nop                                           ; $5D68: $00
    nop                                           ; $5D69: $00
    nop                                           ; $5D6A: $00
    nop                                           ; $5D6B: $00
    nop                                           ; $5D6C: $00
    nop                                           ; $5D6D: $00
    nop                                           ; $5D6E: $00
    nop                                           ; $5D6F: $00
    nop                                           ; $5D70: $00
    nop                                           ; $5D71: $00
    nop                                           ; $5D72: $00
    nop                                           ; $5D73: $00
    nop                                           ; $5D74: $00
    nop                                           ; $5D75: $00
    nop                                           ; $5D76: $00
    nop                                           ; $5D77: $00
    nop                                           ; $5D78: $00
    nop                                           ; $5D79: $00
    nop                                           ; $5D7A: $00
    nop                                           ; $5D7B: $00
    nop                                           ; $5D7C: $00
    nop                                           ; $5D7D: $00
    nop                                           ; $5D7E: $00
    nop                                           ; $5D7F: $00
    nop                                           ; $5D80: $00
    nop                                           ; $5D81: $00
    nop                                           ; $5D82: $00
    nop                                           ; $5D83: $00
    nop                                           ; $5D84: $00
    nop                                           ; $5D85: $00
    nop                                           ; $5D86: $00
    nop                                           ; $5D87: $00
    nop                                           ; $5D88: $00
    nop                                           ; $5D89: $00
    nop                                           ; $5D8A: $00
    nop                                           ; $5D8B: $00
    nop                                           ; $5D8C: $00
    nop                                           ; $5D8D: $00
    nop                                           ; $5D8E: $00
    nop                                           ; $5D8F: $00
    nop                                           ; $5D90: $00
    nop                                           ; $5D91: $00
    nop                                           ; $5D92: $00
    nop                                           ; $5D93: $00
    nop                                           ; $5D94: $00
    nop                                           ; $5D95: $00
    nop                                           ; $5D96: $00
    nop                                           ; $5D97: $00
    nop                                           ; $5D98: $00
    nop                                           ; $5D99: $00
    nop                                           ; $5D9A: $00
    nop                                           ; $5D9B: $00
    nop                                           ; $5D9C: $00
    nop                                           ; $5D9D: $00
    nop                                           ; $5D9E: $00
    nop                                           ; $5D9F: $00
    nop                                           ; $5DA0: $00
    nop                                           ; $5DA1: $00
    nop                                           ; $5DA2: $00
    nop                                           ; $5DA3: $00
    nop                                           ; $5DA4: $00
    nop                                           ; $5DA5: $00
    nop                                           ; $5DA6: $00
    nop                                           ; $5DA7: $00
    nop                                           ; $5DA8: $00
    nop                                           ; $5DA9: $00
    nop                                           ; $5DAA: $00
    nop                                           ; $5DAB: $00
    nop                                           ; $5DAC: $00
    nop                                           ; $5DAD: $00
    nop                                           ; $5DAE: $00
    nop                                           ; $5DAF: $00
    nop                                           ; $5DB0: $00
    nop                                           ; $5DB1: $00
    nop                                           ; $5DB2: $00
    nop                                           ; $5DB3: $00
    nop                                           ; $5DB4: $00
    nop                                           ; $5DB5: $00
    nop                                           ; $5DB6: $00
    nop                                           ; $5DB7: $00
    nop                                           ; $5DB8: $00
    nop                                           ; $5DB9: $00
    nop                                           ; $5DBA: $00
    nop                                           ; $5DBB: $00
    nop                                           ; $5DBC: $00
    nop                                           ; $5DBD: $00
    nop                                           ; $5DBE: $00
    nop                                           ; $5DBF: $00
    nop                                           ; $5DC0: $00
    nop                                           ; $5DC1: $00
    nop                                           ; $5DC2: $00
    nop                                           ; $5DC3: $00
    nop                                           ; $5DC4: $00
    nop                                           ; $5DC5: $00
    nop                                           ; $5DC6: $00
    nop                                           ; $5DC7: $00
    nop                                           ; $5DC8: $00
    nop                                           ; $5DC9: $00
    nop                                           ; $5DCA: $00
    nop                                           ; $5DCB: $00
    nop                                           ; $5DCC: $00
    nop                                           ; $5DCD: $00
    nop                                           ; $5DCE: $00
    nop                                           ; $5DCF: $00
    nop                                           ; $5DD0: $00
    nop                                           ; $5DD1: $00
    nop                                           ; $5DD2: $00
    nop                                           ; $5DD3: $00
    nop                                           ; $5DD4: $00
    nop                                           ; $5DD5: $00
    nop                                           ; $5DD6: $00
    nop                                           ; $5DD7: $00
    nop                                           ; $5DD8: $00
    nop                                           ; $5DD9: $00
    nop                                           ; $5DDA: $00
    nop                                           ; $5DDB: $00
    nop                                           ; $5DDC: $00
    nop                                           ; $5DDD: $00
    nop                                           ; $5DDE: $00
    nop                                           ; $5DDF: $00
    nop                                           ; $5DE0: $00
    nop                                           ; $5DE1: $00
    nop                                           ; $5DE2: $00
    nop                                           ; $5DE3: $00
    nop                                           ; $5DE4: $00
    nop                                           ; $5DE5: $00
    nop                                           ; $5DE6: $00
    nop                                           ; $5DE7: $00
    nop                                           ; $5DE8: $00
    nop                                           ; $5DE9: $00
    nop                                           ; $5DEA: $00
    nop                                           ; $5DEB: $00
    nop                                           ; $5DEC: $00
    nop                                           ; $5DED: $00
    nop                                           ; $5DEE: $00
    nop                                           ; $5DEF: $00
    nop                                           ; $5DF0: $00
    nop                                           ; $5DF1: $00
    nop                                           ; $5DF2: $00
    nop                                           ; $5DF3: $00
    nop                                           ; $5DF4: $00
    nop                                           ; $5DF5: $00
    nop                                           ; $5DF6: $00
    nop                                           ; $5DF7: $00
    nop                                           ; $5DF8: $00
    nop                                           ; $5DF9: $00
    nop                                           ; $5DFA: $00
    nop                                           ; $5DFB: $00
    nop                                           ; $5DFC: $00
    nop                                           ; $5DFD: $00
    nop                                           ; $5DFE: $00
    nop                                           ; $5DFF: $00
    nop                                           ; $5E00: $00
    nop                                           ; $5E01: $00
    nop                                           ; $5E02: $00
    nop                                           ; $5E03: $00
    nop                                           ; $5E04: $00
    nop                                           ; $5E05: $00
    nop                                           ; $5E06: $00
    nop                                           ; $5E07: $00
    nop                                           ; $5E08: $00
    nop                                           ; $5E09: $00
    nop                                           ; $5E0A: $00
    nop                                           ; $5E0B: $00
    nop                                           ; $5E0C: $00
    nop                                           ; $5E0D: $00
    nop                                           ; $5E0E: $00
    nop                                           ; $5E0F: $00
    nop                                           ; $5E10: $00
    nop                                           ; $5E11: $00
    nop                                           ; $5E12: $00
    nop                                           ; $5E13: $00
    nop                                           ; $5E14: $00
    nop                                           ; $5E15: $00
    nop                                           ; $5E16: $00
    nop                                           ; $5E17: $00
    nop                                           ; $5E18: $00
    nop                                           ; $5E19: $00
    nop                                           ; $5E1A: $00
    nop                                           ; $5E1B: $00
    nop                                           ; $5E1C: $00
    nop                                           ; $5E1D: $00
    nop                                           ; $5E1E: $00
    nop                                           ; $5E1F: $00
    nop                                           ; $5E20: $00
    nop                                           ; $5E21: $00
    nop                                           ; $5E22: $00
    nop                                           ; $5E23: $00
    nop                                           ; $5E24: $00
    nop                                           ; $5E25: $00
    nop                                           ; $5E26: $00
    nop                                           ; $5E27: $00
    nop                                           ; $5E28: $00
    nop                                           ; $5E29: $00
    nop                                           ; $5E2A: $00
    nop                                           ; $5E2B: $00
    nop                                           ; $5E2C: $00
    nop                                           ; $5E2D: $00
    nop                                           ; $5E2E: $00
    nop                                           ; $5E2F: $00
    nop                                           ; $5E30: $00
    nop                                           ; $5E31: $00
    nop                                           ; $5E32: $00
    nop                                           ; $5E33: $00
    nop                                           ; $5E34: $00
    nop                                           ; $5E35: $00
    nop                                           ; $5E36: $00
    nop                                           ; $5E37: $00
    nop                                           ; $5E38: $00
    nop                                           ; $5E39: $00
    nop                                           ; $5E3A: $00
    nop                                           ; $5E3B: $00
    nop                                           ; $5E3C: $00
    nop                                           ; $5E3D: $00
    nop                                           ; $5E3E: $00
    nop                                           ; $5E3F: $00
    nop                                           ; $5E40: $00
    nop                                           ; $5E41: $00
    nop                                           ; $5E42: $00
    nop                                           ; $5E43: $00
    nop                                           ; $5E44: $00
    nop                                           ; $5E45: $00
    nop                                           ; $5E46: $00
    nop                                           ; $5E47: $00
    nop                                           ; $5E48: $00
    nop                                           ; $5E49: $00
    nop                                           ; $5E4A: $00
    nop                                           ; $5E4B: $00
    nop                                           ; $5E4C: $00
    nop                                           ; $5E4D: $00
    nop                                           ; $5E4E: $00
    nop                                           ; $5E4F: $00
    nop                                           ; $5E50: $00
    nop                                           ; $5E51: $00
    nop                                           ; $5E52: $00
    nop                                           ; $5E53: $00
    nop                                           ; $5E54: $00
    nop                                           ; $5E55: $00
    nop                                           ; $5E56: $00
    nop                                           ; $5E57: $00
    nop                                           ; $5E58: $00
    nop                                           ; $5E59: $00
    nop                                           ; $5E5A: $00
    nop                                           ; $5E5B: $00
    nop                                           ; $5E5C: $00
    nop                                           ; $5E5D: $00
    nop                                           ; $5E5E: $00
    nop                                           ; $5E5F: $00
    nop                                           ; $5E60: $00
    nop                                           ; $5E61: $00
    nop                                           ; $5E62: $00
    nop                                           ; $5E63: $00
    nop                                           ; $5E64: $00
    nop                                           ; $5E65: $00
    nop                                           ; $5E66: $00
    nop                                           ; $5E67: $00
    nop                                           ; $5E68: $00
    nop                                           ; $5E69: $00
    nop                                           ; $5E6A: $00
    nop                                           ; $5E6B: $00
    nop                                           ; $5E6C: $00
    nop                                           ; $5E6D: $00
    nop                                           ; $5E6E: $00
    nop                                           ; $5E6F: $00
    nop                                           ; $5E70: $00
    nop                                           ; $5E71: $00
    nop                                           ; $5E72: $00
    nop                                           ; $5E73: $00
    nop                                           ; $5E74: $00
    nop                                           ; $5E75: $00
    nop                                           ; $5E76: $00
    nop                                           ; $5E77: $00
    nop                                           ; $5E78: $00
    nop                                           ; $5E79: $00
    nop                                           ; $5E7A: $00
    nop                                           ; $5E7B: $00
    nop                                           ; $5E7C: $00
    nop                                           ; $5E7D: $00
    nop                                           ; $5E7E: $00
    nop                                           ; $5E7F: $00
    nop                                           ; $5E80: $00
    nop                                           ; $5E81: $00
    nop                                           ; $5E82: $00
    nop                                           ; $5E83: $00
    nop                                           ; $5E84: $00
    nop                                           ; $5E85: $00
    nop                                           ; $5E86: $00
    nop                                           ; $5E87: $00
    nop                                           ; $5E88: $00
    nop                                           ; $5E89: $00
    nop                                           ; $5E8A: $00
    nop                                           ; $5E8B: $00
    nop                                           ; $5E8C: $00
    nop                                           ; $5E8D: $00
    nop                                           ; $5E8E: $00
    nop                                           ; $5E8F: $00
    nop                                           ; $5E90: $00
    nop                                           ; $5E91: $00
    nop                                           ; $5E92: $00
    nop                                           ; $5E93: $00
    nop                                           ; $5E94: $00
    nop                                           ; $5E95: $00
    nop                                           ; $5E96: $00
    nop                                           ; $5E97: $00
    nop                                           ; $5E98: $00
    nop                                           ; $5E99: $00
    nop                                           ; $5E9A: $00
    nop                                           ; $5E9B: $00
    nop                                           ; $5E9C: $00
    nop                                           ; $5E9D: $00
    nop                                           ; $5E9E: $00
    nop                                           ; $5E9F: $00
    nop                                           ; $5EA0: $00
    nop                                           ; $5EA1: $00
    nop                                           ; $5EA2: $00
    nop                                           ; $5EA3: $00
    nop                                           ; $5EA4: $00
    nop                                           ; $5EA5: $00
    nop                                           ; $5EA6: $00
    nop                                           ; $5EA7: $00
    nop                                           ; $5EA8: $00
    nop                                           ; $5EA9: $00
    nop                                           ; $5EAA: $00
    nop                                           ; $5EAB: $00
    nop                                           ; $5EAC: $00
    nop                                           ; $5EAD: $00
    nop                                           ; $5EAE: $00
    nop                                           ; $5EAF: $00
    nop                                           ; $5EB0: $00
    nop                                           ; $5EB1: $00
    nop                                           ; $5EB2: $00
    nop                                           ; $5EB3: $00
    nop                                           ; $5EB4: $00
    nop                                           ; $5EB5: $00
    nop                                           ; $5EB6: $00
    nop                                           ; $5EB7: $00
    nop                                           ; $5EB8: $00
    nop                                           ; $5EB9: $00
    nop                                           ; $5EBA: $00
    nop                                           ; $5EBB: $00
    nop                                           ; $5EBC: $00
    nop                                           ; $5EBD: $00
    nop                                           ; $5EBE: $00
    nop                                           ; $5EBF: $00
    nop                                           ; $5EC0: $00
    nop                                           ; $5EC1: $00
    nop                                           ; $5EC2: $00
    nop                                           ; $5EC3: $00
    nop                                           ; $5EC4: $00
    nop                                           ; $5EC5: $00
    nop                                           ; $5EC6: $00
    nop                                           ; $5EC7: $00
    nop                                           ; $5EC8: $00
    nop                                           ; $5EC9: $00
    nop                                           ; $5ECA: $00
    nop                                           ; $5ECB: $00
    nop                                           ; $5ECC: $00
    nop                                           ; $5ECD: $00
    nop                                           ; $5ECE: $00
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
    nop                                           ; $5ED9: $00
    nop                                           ; $5EDA: $00
    nop                                           ; $5EDB: $00
    nop                                           ; $5EDC: $00
    nop                                           ; $5EDD: $00
    nop                                           ; $5EDE: $00
    nop                                           ; $5EDF: $00
    nop                                           ; $5EE0: $00
    nop                                           ; $5EE1: $00
    nop                                           ; $5EE2: $00
    nop                                           ; $5EE3: $00
    nop                                           ; $5EE4: $00
    nop                                           ; $5EE5: $00
    nop                                           ; $5EE6: $00
    nop                                           ; $5EE7: $00
    nop                                           ; $5EE8: $00
    nop                                           ; $5EE9: $00
    nop                                           ; $5EEA: $00
    nop                                           ; $5EEB: $00
    nop                                           ; $5EEC: $00
    nop                                           ; $5EED: $00
    nop                                           ; $5EEE: $00
    nop                                           ; $5EEF: $00
    nop                                           ; $5EF0: $00
    nop                                           ; $5EF1: $00
    nop                                           ; $5EF2: $00
    nop                                           ; $5EF3: $00
    nop                                           ; $5EF4: $00
    nop                                           ; $5EF5: $00
    nop                                           ; $5EF6: $00
    nop                                           ; $5EF7: $00
    nop                                           ; $5EF8: $00
    nop                                           ; $5EF9: $00
    nop                                           ; $5EFA: $00
    nop                                           ; $5EFB: $00
    nop                                           ; $5EFC: $00
    nop                                           ; $5EFD: $00
    nop                                           ; $5EFE: $00
    nop                                           ; $5EFF: $00
    nop                                           ; $5F00: $00
    nop                                           ; $5F01: $00
    nop                                           ; $5F02: $00
    nop                                           ; $5F03: $00
    nop                                           ; $5F04: $00
    nop                                           ; $5F05: $00
    nop                                           ; $5F06: $00
    nop                                           ; $5F07: $00
    nop                                           ; $5F08: $00
    nop                                           ; $5F09: $00
    nop                                           ; $5F0A: $00
    nop                                           ; $5F0B: $00
    nop                                           ; $5F0C: $00
    nop                                           ; $5F0D: $00
    nop                                           ; $5F0E: $00
    nop                                           ; $5F0F: $00
    nop                                           ; $5F10: $00
    nop                                           ; $5F11: $00
    nop                                           ; $5F12: $00
    nop                                           ; $5F13: $00
    nop                                           ; $5F14: $00
    nop                                           ; $5F15: $00
    nop                                           ; $5F16: $00
    nop                                           ; $5F17: $00
    nop                                           ; $5F18: $00
    nop                                           ; $5F19: $00
    nop                                           ; $5F1A: $00
    nop                                           ; $5F1B: $00
    nop                                           ; $5F1C: $00
    nop                                           ; $5F1D: $00
    nop                                           ; $5F1E: $00
    nop                                           ; $5F1F: $00
    nop                                           ; $5F20: $00
    nop                                           ; $5F21: $00
    nop                                           ; $5F22: $00
    nop                                           ; $5F23: $00
    nop                                           ; $5F24: $00
    nop                                           ; $5F25: $00
    nop                                           ; $5F26: $00
    nop                                           ; $5F27: $00
    nop                                           ; $5F28: $00
    nop                                           ; $5F29: $00
    nop                                           ; $5F2A: $00
    nop                                           ; $5F2B: $00
    nop                                           ; $5F2C: $00
    nop                                           ; $5F2D: $00
    nop                                           ; $5F2E: $00
    nop                                           ; $5F2F: $00
    nop                                           ; $5F30: $00
    nop                                           ; $5F31: $00
    nop                                           ; $5F32: $00
    nop                                           ; $5F33: $00
    nop                                           ; $5F34: $00
    nop                                           ; $5F35: $00
    nop                                           ; $5F36: $00
    nop                                           ; $5F37: $00
    nop                                           ; $5F38: $00
    nop                                           ; $5F39: $00
    nop                                           ; $5F3A: $00
    nop                                           ; $5F3B: $00
    nop                                           ; $5F3C: $00
    nop                                           ; $5F3D: $00
    nop                                           ; $5F3E: $00
    nop                                           ; $5F3F: $00
    nop                                           ; $5F40: $00
    nop                                           ; $5F41: $00
    nop                                           ; $5F42: $00
    nop                                           ; $5F43: $00
    nop                                           ; $5F44: $00
    nop                                           ; $5F45: $00
    nop                                           ; $5F46: $00
    nop                                           ; $5F47: $00
    nop                                           ; $5F48: $00
    nop                                           ; $5F49: $00
    nop                                           ; $5F4A: $00
    nop                                           ; $5F4B: $00
    nop                                           ; $5F4C: $00
    nop                                           ; $5F4D: $00
    nop                                           ; $5F4E: $00
    nop                                           ; $5F4F: $00
    nop                                           ; $5F50: $00
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
    nop                                           ; $5F5D: $00
    nop                                           ; $5F5E: $00
    nop                                           ; $5F5F: $00
    nop                                           ; $5F60: $00
    nop                                           ; $5F61: $00
    nop                                           ; $5F62: $00
    nop                                           ; $5F63: $00
    nop                                           ; $5F64: $00
    nop                                           ; $5F65: $00
    nop                                           ; $5F66: $00
    nop                                           ; $5F67: $00
    nop                                           ; $5F68: $00
    nop                                           ; $5F69: $00
    nop                                           ; $5F6A: $00
    nop                                           ; $5F6B: $00
    nop                                           ; $5F6C: $00
    nop                                           ; $5F6D: $00
    nop                                           ; $5F6E: $00
    nop                                           ; $5F6F: $00
    nop                                           ; $5F70: $00
    nop                                           ; $5F71: $00
    nop                                           ; $5F72: $00
    nop                                           ; $5F73: $00
    nop                                           ; $5F74: $00
    nop                                           ; $5F75: $00
    nop                                           ; $5F76: $00
    nop                                           ; $5F77: $00
    nop                                           ; $5F78: $00
    nop                                           ; $5F79: $00
    nop                                           ; $5F7A: $00
    nop                                           ; $5F7B: $00
    nop                                           ; $5F7C: $00
    nop                                           ; $5F7D: $00
    nop                                           ; $5F7E: $00
    nop                                           ; $5F7F: $00
    nop                                           ; $5F80: $00
    nop                                           ; $5F81: $00
    nop                                           ; $5F82: $00
    nop                                           ; $5F83: $00
    nop                                           ; $5F84: $00
    nop                                           ; $5F85: $00
    nop                                           ; $5F86: $00
    nop                                           ; $5F87: $00
    nop                                           ; $5F88: $00
    nop                                           ; $5F89: $00
    nop                                           ; $5F8A: $00
    nop                                           ; $5F8B: $00
    nop                                           ; $5F8C: $00
    nop                                           ; $5F8D: $00
    nop                                           ; $5F8E: $00
    nop                                           ; $5F8F: $00
    nop                                           ; $5F90: $00
    nop                                           ; $5F91: $00
    nop                                           ; $5F92: $00
    nop                                           ; $5F93: $00
    nop                                           ; $5F94: $00
    nop                                           ; $5F95: $00
    nop                                           ; $5F96: $00
    nop                                           ; $5F97: $00
    nop                                           ; $5F98: $00
    nop                                           ; $5F99: $00
    nop                                           ; $5F9A: $00
    nop                                           ; $5F9B: $00
    nop                                           ; $5F9C: $00
    nop                                           ; $5F9D: $00
    nop                                           ; $5F9E: $00
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
    nop                                           ; $5FA9: $00
    nop                                           ; $5FAA: $00
    nop                                           ; $5FAB: $00
    nop                                           ; $5FAC: $00
    nop                                           ; $5FAD: $00
    nop                                           ; $5FAE: $00
    nop                                           ; $5FAF: $00
    nop                                           ; $5FB0: $00
    nop                                           ; $5FB1: $00
    nop                                           ; $5FB2: $00
    nop                                           ; $5FB3: $00
    nop                                           ; $5FB4: $00
    nop                                           ; $5FB5: $00
    nop                                           ; $5FB6: $00
    nop                                           ; $5FB7: $00
    nop                                           ; $5FB8: $00
    nop                                           ; $5FB9: $00
    nop                                           ; $5FBA: $00
    nop                                           ; $5FBB: $00
    nop                                           ; $5FBC: $00
    nop                                           ; $5FBD: $00
    nop                                           ; $5FBE: $00
    nop                                           ; $5FBF: $00
    nop                                           ; $5FC0: $00
    nop                                           ; $5FC1: $00
    nop                                           ; $5FC2: $00
    nop                                           ; $5FC3: $00
    nop                                           ; $5FC4: $00
    nop                                           ; $5FC5: $00
    nop                                           ; $5FC6: $00
    nop                                           ; $5FC7: $00
    nop                                           ; $5FC8: $00
    nop                                           ; $5FC9: $00
    nop                                           ; $5FCA: $00
    nop                                           ; $5FCB: $00
    nop                                           ; $5FCC: $00
    nop                                           ; $5FCD: $00
    nop                                           ; $5FCE: $00
    nop                                           ; $5FCF: $00
    nop                                           ; $5FD0: $00
    nop                                           ; $5FD1: $00
    nop                                           ; $5FD2: $00
    nop                                           ; $5FD3: $00
    nop                                           ; $5FD4: $00
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
    nop                                           ; $5FDF: $00
    nop                                           ; $5FE0: $00
    nop                                           ; $5FE1: $00
    nop                                           ; $5FE2: $00
    nop                                           ; $5FE3: $00
    nop                                           ; $5FE4: $00
    nop                                           ; $5FE5: $00
    nop                                           ; $5FE6: $00
    nop                                           ; $5FE7: $00
    nop                                           ; $5FE8: $00
    nop                                           ; $5FE9: $00
    nop                                           ; $5FEA: $00
    nop                                           ; $5FEB: $00
    nop                                           ; $5FEC: $00
    nop                                           ; $5FED: $00
    nop                                           ; $5FEE: $00
    nop                                           ; $5FEF: $00
    nop                                           ; $5FF0: $00
    nop                                           ; $5FF1: $00
    nop                                           ; $5FF2: $00
    nop                                           ; $5FF3: $00
    nop                                           ; $5FF4: $00
    nop                                           ; $5FF5: $00
    nop                                           ; $5FF6: $00
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
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    nop                                           ; $6007: $00
    nop                                           ; $6008: $00
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
    nop                                           ; $6015: $00
    nop                                           ; $6016: $00
    nop                                           ; $6017: $00
    nop                                           ; $6018: $00
    nop                                           ; $6019: $00
    nop                                           ; $601A: $00
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
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    nop                                           ; $6028: $00
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
    nop                                           ; $6035: $00
    nop                                           ; $6036: $00
    nop                                           ; $6037: $00
    nop                                           ; $6038: $00
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
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    nop                                           ; $6048: $00
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
    nop                                           ; $6055: $00
    nop                                           ; $6056: $00
    nop                                           ; $6057: $00
    nop                                           ; $6058: $00
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
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    nop                                           ; $6068: $00
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
    nop                                           ; $6075: $00
    nop                                           ; $6076: $00
    nop                                           ; $6077: $00
    nop                                           ; $6078: $00
    nop                                           ; $6079: $00
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
    nop                                           ; $608D: $00
    nop                                           ; $608E: $00
    nop                                           ; $608F: $00
    nop                                           ; $6090: $00
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    nop                                           ; $6093: $00
    nop                                           ; $6094: $00
    nop                                           ; $6095: $00
    nop                                           ; $6096: $00
    nop                                           ; $6097: $00
    nop                                           ; $6098: $00
    nop                                           ; $6099: $00
    nop                                           ; $609A: $00
    nop                                           ; $609B: $00
    nop                                           ; $609C: $00
    nop                                           ; $609D: $00
    nop                                           ; $609E: $00
    nop                                           ; $609F: $00
    nop                                           ; $60A0: $00
    nop                                           ; $60A1: $00
    nop                                           ; $60A2: $00
    nop                                           ; $60A3: $00
    nop                                           ; $60A4: $00
    nop                                           ; $60A5: $00
    nop                                           ; $60A6: $00
    nop                                           ; $60A7: $00
    nop                                           ; $60A8: $00
    nop                                           ; $60A9: $00
    nop                                           ; $60AA: $00
    nop                                           ; $60AB: $00
    nop                                           ; $60AC: $00
    nop                                           ; $60AD: $00
    nop                                           ; $60AE: $00
    nop                                           ; $60AF: $00
    nop                                           ; $60B0: $00
    nop                                           ; $60B1: $00
    nop                                           ; $60B2: $00
    nop                                           ; $60B3: $00
    nop                                           ; $60B4: $00
    nop                                           ; $60B5: $00
    nop                                           ; $60B6: $00
    nop                                           ; $60B7: $00
    nop                                           ; $60B8: $00
    nop                                           ; $60B9: $00
    nop                                           ; $60BA: $00
    nop                                           ; $60BB: $00
    nop                                           ; $60BC: $00
    nop                                           ; $60BD: $00
    nop                                           ; $60BE: $00
    nop                                           ; $60BF: $00
    nop                                           ; $60C0: $00
    nop                                           ; $60C1: $00
    nop                                           ; $60C2: $00
    nop                                           ; $60C3: $00
    nop                                           ; $60C4: $00
    nop                                           ; $60C5: $00
    nop                                           ; $60C6: $00
    nop                                           ; $60C7: $00
    nop                                           ; $60C8: $00
    nop                                           ; $60C9: $00
    nop                                           ; $60CA: $00
    nop                                           ; $60CB: $00
    nop                                           ; $60CC: $00
    nop                                           ; $60CD: $00
    nop                                           ; $60CE: $00
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
    nop                                           ; $60D9: $00
    nop                                           ; $60DA: $00
    nop                                           ; $60DB: $00
    nop                                           ; $60DC: $00
    nop                                           ; $60DD: $00
    nop                                           ; $60DE: $00
    nop                                           ; $60DF: $00
    nop                                           ; $60E0: $00
    nop                                           ; $60E1: $00
    nop                                           ; $60E2: $00
    nop                                           ; $60E3: $00
    nop                                           ; $60E4: $00
    nop                                           ; $60E5: $00
    nop                                           ; $60E6: $00
    nop                                           ; $60E7: $00
    nop                                           ; $60E8: $00
    nop                                           ; $60E9: $00
    nop                                           ; $60EA: $00
    nop                                           ; $60EB: $00
    nop                                           ; $60EC: $00
    nop                                           ; $60ED: $00
    nop                                           ; $60EE: $00
    nop                                           ; $60EF: $00
    nop                                           ; $60F0: $00
    nop                                           ; $60F1: $00
    nop                                           ; $60F2: $00
    nop                                           ; $60F3: $00
    nop                                           ; $60F4: $00
    nop                                           ; $60F5: $00
    nop                                           ; $60F6: $00
    nop                                           ; $60F7: $00
    nop                                           ; $60F8: $00
    nop                                           ; $60F9: $00
    nop                                           ; $60FA: $00
    nop                                           ; $60FB: $00
    nop                                           ; $60FC: $00
    nop                                           ; $60FD: $00
    nop                                           ; $60FE: $00
    nop                                           ; $60FF: $00
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    nop                                           ; $6103: $00
    nop                                           ; $6104: $00
    nop                                           ; $6105: $00
    nop                                           ; $6106: $00
    nop                                           ; $6107: $00
    nop                                           ; $6108: $00
    nop                                           ; $6109: $00
    nop                                           ; $610A: $00
    nop                                           ; $610B: $00
    nop                                           ; $610C: $00
    nop                                           ; $610D: $00
    nop                                           ; $610E: $00
    nop                                           ; $610F: $00
    nop                                           ; $6110: $00
    nop                                           ; $6111: $00
    nop                                           ; $6112: $00
    nop                                           ; $6113: $00
    nop                                           ; $6114: $00
    nop                                           ; $6115: $00
    nop                                           ; $6116: $00
    nop                                           ; $6117: $00
    nop                                           ; $6118: $00
    nop                                           ; $6119: $00
    nop                                           ; $611A: $00
    nop                                           ; $611B: $00
    nop                                           ; $611C: $00
    nop                                           ; $611D: $00
    nop                                           ; $611E: $00
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
    nop                                           ; $6129: $00
    nop                                           ; $612A: $00
    nop                                           ; $612B: $00
    nop                                           ; $612C: $00
    nop                                           ; $612D: $00
    nop                                           ; $612E: $00
    nop                                           ; $612F: $00
    nop                                           ; $6130: $00
    nop                                           ; $6131: $00
    nop                                           ; $6132: $00
    nop                                           ; $6133: $00
    nop                                           ; $6134: $00
    nop                                           ; $6135: $00
    nop                                           ; $6136: $00
    nop                                           ; $6137: $00
    nop                                           ; $6138: $00
    nop                                           ; $6139: $00
    nop                                           ; $613A: $00
    nop                                           ; $613B: $00
    nop                                           ; $613C: $00
    nop                                           ; $613D: $00
    nop                                           ; $613E: $00
    nop                                           ; $613F: $00
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    nop                                           ; $6142: $00
    nop                                           ; $6143: $00
    nop                                           ; $6144: $00
    nop                                           ; $6145: $00
    nop                                           ; $6146: $00
    nop                                           ; $6147: $00
    nop                                           ; $6148: $00
    nop                                           ; $6149: $00
    nop                                           ; $614A: $00
    nop                                           ; $614B: $00
    nop                                           ; $614C: $00
    nop                                           ; $614D: $00
    nop                                           ; $614E: $00
    nop                                           ; $614F: $00
    nop                                           ; $6150: $00
    nop                                           ; $6151: $00
    nop                                           ; $6152: $00
    nop                                           ; $6153: $00
    nop                                           ; $6154: $00
    nop                                           ; $6155: $00
    nop                                           ; $6156: $00
    nop                                           ; $6157: $00
    nop                                           ; $6158: $00
    nop                                           ; $6159: $00
    nop                                           ; $615A: $00
    nop                                           ; $615B: $00
    nop                                           ; $615C: $00
    nop                                           ; $615D: $00
    nop                                           ; $615E: $00
    nop                                           ; $615F: $00
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    nop                                           ; $6164: $00
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    nop                                           ; $6168: $00
    nop                                           ; $6169: $00
    nop                                           ; $616A: $00
    nop                                           ; $616B: $00
    nop                                           ; $616C: $00
    nop                                           ; $616D: $00
    nop                                           ; $616E: $00
    nop                                           ; $616F: $00
    nop                                           ; $6170: $00
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00
    nop                                           ; $6173: $00
    nop                                           ; $6174: $00
    nop                                           ; $6175: $00
    nop                                           ; $6176: $00
    nop                                           ; $6177: $00
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    nop                                           ; $617A: $00
    nop                                           ; $617B: $00
    nop                                           ; $617C: $00
    nop                                           ; $617D: $00
    nop                                           ; $617E: $00
    nop                                           ; $617F: $00
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    nop                                           ; $6183: $00
    nop                                           ; $6184: $00
    nop                                           ; $6185: $00
    nop                                           ; $6186: $00
    nop                                           ; $6187: $00
    nop                                           ; $6188: $00
    nop                                           ; $6189: $00
    nop                                           ; $618A: $00
    nop                                           ; $618B: $00
    nop                                           ; $618C: $00
    nop                                           ; $618D: $00
    nop                                           ; $618E: $00
    nop                                           ; $618F: $00
    nop                                           ; $6190: $00
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    nop                                           ; $6193: $00
    nop                                           ; $6194: $00
    nop                                           ; $6195: $00
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
    nop                                           ; $61A0: $00
    nop                                           ; $61A1: $00
    nop                                           ; $61A2: $00
    nop                                           ; $61A3: $00
    nop                                           ; $61A4: $00
    nop                                           ; $61A5: $00
    nop                                           ; $61A6: $00
    nop                                           ; $61A7: $00
    nop                                           ; $61A8: $00
    nop                                           ; $61A9: $00
    nop                                           ; $61AA: $00
    nop                                           ; $61AB: $00
    nop                                           ; $61AC: $00
    nop                                           ; $61AD: $00
    nop                                           ; $61AE: $00
    nop                                           ; $61AF: $00
    nop                                           ; $61B0: $00
    nop                                           ; $61B1: $00
    nop                                           ; $61B2: $00
    nop                                           ; $61B3: $00
    nop                                           ; $61B4: $00
    nop                                           ; $61B5: $00
    nop                                           ; $61B6: $00
    nop                                           ; $61B7: $00
    nop                                           ; $61B8: $00
    nop                                           ; $61B9: $00
    nop                                           ; $61BA: $00
    nop                                           ; $61BB: $00
    nop                                           ; $61BC: $00
    nop                                           ; $61BD: $00
    nop                                           ; $61BE: $00
    nop                                           ; $61BF: $00
    nop                                           ; $61C0: $00
    nop                                           ; $61C1: $00
    nop                                           ; $61C2: $00
    nop                                           ; $61C3: $00
    nop                                           ; $61C4: $00
    nop                                           ; $61C5: $00
    nop                                           ; $61C6: $00
    nop                                           ; $61C7: $00
    nop                                           ; $61C8: $00
    nop                                           ; $61C9: $00
    nop                                           ; $61CA: $00
    nop                                           ; $61CB: $00
    nop                                           ; $61CC: $00
    nop                                           ; $61CD: $00
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
    nop                                           ; $61DD: $00
    nop                                           ; $61DE: $00
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
    nop                                           ; $61F9: $00
    nop                                           ; $61FA: $00
    nop                                           ; $61FB: $00
    nop                                           ; $61FC: $00
    nop                                           ; $61FD: $00
    nop                                           ; $61FE: $00
    nop                                           ; $61FF: $00
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    nop                                           ; $6202: $00
    nop                                           ; $6203: $00
    nop                                           ; $6204: $00
    nop                                           ; $6205: $00
    nop                                           ; $6206: $00
    nop                                           ; $6207: $00
    nop                                           ; $6208: $00
    nop                                           ; $6209: $00
    nop                                           ; $620A: $00
    nop                                           ; $620B: $00
    nop                                           ; $620C: $00
    nop                                           ; $620D: $00
    nop                                           ; $620E: $00
    nop                                           ; $620F: $00
    nop                                           ; $6210: $00
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00
    nop                                           ; $6214: $00
    nop                                           ; $6215: $00
    nop                                           ; $6216: $00
    nop                                           ; $6217: $00
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
    nop                                           ; $6227: $00
    nop                                           ; $6228: $00
    nop                                           ; $6229: $00
    nop                                           ; $622A: $00
    nop                                           ; $622B: $00
    nop                                           ; $622C: $00
    nop                                           ; $622D: $00
    nop                                           ; $622E: $00
    nop                                           ; $622F: $00
    nop                                           ; $6230: $00
    nop                                           ; $6231: $00
    nop                                           ; $6232: $00
    nop                                           ; $6233: $00
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00
    nop                                           ; $6236: $00
    nop                                           ; $6237: $00
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00
    nop                                           ; $623A: $00
    nop                                           ; $623B: $00
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
    nop                                           ; $6249: $00
    nop                                           ; $624A: $00
    nop                                           ; $624B: $00
    nop                                           ; $624C: $00
    nop                                           ; $624D: $00
    nop                                           ; $624E: $00
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
    nop                                           ; $6259: $00
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
    nop                                           ; $6269: $00
    nop                                           ; $626A: $00
    nop                                           ; $626B: $00
    nop                                           ; $626C: $00
    nop                                           ; $626D: $00
    nop                                           ; $626E: $00
    nop                                           ; $626F: $00
    nop                                           ; $6270: $00
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
    nop                                           ; $6286: $00
    nop                                           ; $6287: $00
    nop                                           ; $6288: $00
    nop                                           ; $6289: $00
    nop                                           ; $628A: $00
    nop                                           ; $628B: $00
    nop                                           ; $628C: $00
    nop                                           ; $628D: $00
    nop                                           ; $628E: $00
    nop                                           ; $628F: $00
    nop                                           ; $6290: $00
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    nop                                           ; $6293: $00
    nop                                           ; $6294: $00
    nop                                           ; $6295: $00
    nop                                           ; $6296: $00
    nop                                           ; $6297: $00
    nop                                           ; $6298: $00
    nop                                           ; $6299: $00
    nop                                           ; $629A: $00
    nop                                           ; $629B: $00
    nop                                           ; $629C: $00
    nop                                           ; $629D: $00
    nop                                           ; $629E: $00
    nop                                           ; $629F: $00
    nop                                           ; $62A0: $00
    nop                                           ; $62A1: $00
    nop                                           ; $62A2: $00
    nop                                           ; $62A3: $00
    nop                                           ; $62A4: $00
    nop                                           ; $62A5: $00
    nop                                           ; $62A6: $00
    nop                                           ; $62A7: $00
    nop                                           ; $62A8: $00
    nop                                           ; $62A9: $00
    nop                                           ; $62AA: $00
    nop                                           ; $62AB: $00
    nop                                           ; $62AC: $00
    nop                                           ; $62AD: $00
    nop                                           ; $62AE: $00
    nop                                           ; $62AF: $00
    nop                                           ; $62B0: $00
    nop                                           ; $62B1: $00
    nop                                           ; $62B2: $00
    nop                                           ; $62B3: $00
    nop                                           ; $62B4: $00
    nop                                           ; $62B5: $00
    nop                                           ; $62B6: $00
    nop                                           ; $62B7: $00
    nop                                           ; $62B8: $00
    nop                                           ; $62B9: $00
    nop                                           ; $62BA: $00
    nop                                           ; $62BB: $00
    nop                                           ; $62BC: $00
    nop                                           ; $62BD: $00
    nop                                           ; $62BE: $00
    nop                                           ; $62BF: $00
    nop                                           ; $62C0: $00
    nop                                           ; $62C1: $00
    nop                                           ; $62C2: $00
    nop                                           ; $62C3: $00
    nop                                           ; $62C4: $00
    nop                                           ; $62C5: $00
    nop                                           ; $62C6: $00
    nop                                           ; $62C7: $00
    nop                                           ; $62C8: $00
    nop                                           ; $62C9: $00
    nop                                           ; $62CA: $00
    nop                                           ; $62CB: $00
    nop                                           ; $62CC: $00
    nop                                           ; $62CD: $00
    nop                                           ; $62CE: $00
    nop                                           ; $62CF: $00
    nop                                           ; $62D0: $00
    nop                                           ; $62D1: $00
    nop                                           ; $62D2: $00
    nop                                           ; $62D3: $00
    nop                                           ; $62D4: $00
    nop                                           ; $62D5: $00
    nop                                           ; $62D6: $00
    nop                                           ; $62D7: $00
    nop                                           ; $62D8: $00
    nop                                           ; $62D9: $00
    nop                                           ; $62DA: $00
    nop                                           ; $62DB: $00
    nop                                           ; $62DC: $00
    nop                                           ; $62DD: $00
    nop                                           ; $62DE: $00
    nop                                           ; $62DF: $00
    nop                                           ; $62E0: $00
    nop                                           ; $62E1: $00
    nop                                           ; $62E2: $00
    nop                                           ; $62E3: $00
    nop                                           ; $62E4: $00
    nop                                           ; $62E5: $00
    nop                                           ; $62E6: $00
    nop                                           ; $62E7: $00
    nop                                           ; $62E8: $00
    nop                                           ; $62E9: $00
    nop                                           ; $62EA: $00
    nop                                           ; $62EB: $00
    nop                                           ; $62EC: $00
    nop                                           ; $62ED: $00
    nop                                           ; $62EE: $00
    nop                                           ; $62EF: $00
    nop                                           ; $62F0: $00
    nop                                           ; $62F1: $00
    nop                                           ; $62F2: $00
    nop                                           ; $62F3: $00
    nop                                           ; $62F4: $00
    nop                                           ; $62F5: $00
    nop                                           ; $62F6: $00
    nop                                           ; $62F7: $00
    nop                                           ; $62F8: $00
    nop                                           ; $62F9: $00
    nop                                           ; $62FA: $00
    nop                                           ; $62FB: $00
    nop                                           ; $62FC: $00
    nop                                           ; $62FD: $00
    nop                                           ; $62FE: $00
    nop                                           ; $62FF: $00
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    nop                                           ; $6304: $00
    nop                                           ; $6305: $00
    nop                                           ; $6306: $00
    nop                                           ; $6307: $00
    nop                                           ; $6308: $00
    nop                                           ; $6309: $00
    nop                                           ; $630A: $00
    nop                                           ; $630B: $00
    nop                                           ; $630C: $00
    nop                                           ; $630D: $00
    nop                                           ; $630E: $00
    nop                                           ; $630F: $00
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    nop                                           ; $6312: $00
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    nop                                           ; $6316: $00
    nop                                           ; $6317: $00
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    nop                                           ; $631A: $00
    nop                                           ; $631B: $00
    nop                                           ; $631C: $00
    nop                                           ; $631D: $00
    nop                                           ; $631E: $00
    nop                                           ; $631F: $00
    nop                                           ; $6320: $00
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    nop                                           ; $6323: $00
    nop                                           ; $6324: $00
    nop                                           ; $6325: $00
    nop                                           ; $6326: $00
    nop                                           ; $6327: $00
    nop                                           ; $6328: $00
    nop                                           ; $6329: $00
    nop                                           ; $632A: $00
    nop                                           ; $632B: $00
    nop                                           ; $632C: $00
    nop                                           ; $632D: $00
    nop                                           ; $632E: $00
    nop                                           ; $632F: $00
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    nop                                           ; $6332: $00
    nop                                           ; $6333: $00
    nop                                           ; $6334: $00
    nop                                           ; $6335: $00
    nop                                           ; $6336: $00
    nop                                           ; $6337: $00
    nop                                           ; $6338: $00
    nop                                           ; $6339: $00
    nop                                           ; $633A: $00
    nop                                           ; $633B: $00
    nop                                           ; $633C: $00
    nop                                           ; $633D: $00
    nop                                           ; $633E: $00
    nop                                           ; $633F: $00
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    nop                                           ; $6344: $00
    nop                                           ; $6345: $00
    nop                                           ; $6346: $00
    nop                                           ; $6347: $00
    nop                                           ; $6348: $00
    nop                                           ; $6349: $00
    nop                                           ; $634A: $00
    nop                                           ; $634B: $00
    nop                                           ; $634C: $00
    nop                                           ; $634D: $00
    nop                                           ; $634E: $00
    nop                                           ; $634F: $00
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    nop                                           ; $6352: $00
    nop                                           ; $6353: $00
    nop                                           ; $6354: $00
    nop                                           ; $6355: $00
    nop                                           ; $6356: $00
    nop                                           ; $6357: $00
    nop                                           ; $6358: $00
    nop                                           ; $6359: $00
    nop                                           ; $635A: $00
    nop                                           ; $635B: $00
    nop                                           ; $635C: $00
    nop                                           ; $635D: $00
    nop                                           ; $635E: $00
    nop                                           ; $635F: $00
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    nop                                           ; $6363: $00
    nop                                           ; $6364: $00
    nop                                           ; $6365: $00
    nop                                           ; $6366: $00
    nop                                           ; $6367: $00
    nop                                           ; $6368: $00
    nop                                           ; $6369: $00
    nop                                           ; $636A: $00
    nop                                           ; $636B: $00
    nop                                           ; $636C: $00
    nop                                           ; $636D: $00
    nop                                           ; $636E: $00
    nop                                           ; $636F: $00
    nop                                           ; $6370: $00
    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    nop                                           ; $6374: $00
    nop                                           ; $6375: $00
    nop                                           ; $6376: $00
    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    nop                                           ; $6379: $00
    nop                                           ; $637A: $00
    nop                                           ; $637B: $00
    nop                                           ; $637C: $00
    nop                                           ; $637D: $00
    nop                                           ; $637E: $00
    nop                                           ; $637F: $00
    nop                                           ; $6380: $00
    nop                                           ; $6381: $00
    nop                                           ; $6382: $00
    nop                                           ; $6383: $00
    nop                                           ; $6384: $00
    nop                                           ; $6385: $00
    nop                                           ; $6386: $00
    nop                                           ; $6387: $00
    nop                                           ; $6388: $00
    nop                                           ; $6389: $00
    nop                                           ; $638A: $00
    nop                                           ; $638B: $00
    nop                                           ; $638C: $00
    nop                                           ; $638D: $00
    nop                                           ; $638E: $00
    nop                                           ; $638F: $00
    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    nop                                           ; $6393: $00
    nop                                           ; $6394: $00
    nop                                           ; $6395: $00
    nop                                           ; $6396: $00
    nop                                           ; $6397: $00
    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    nop                                           ; $639A: $00
    nop                                           ; $639B: $00
    nop                                           ; $639C: $00
    nop                                           ; $639D: $00
    nop                                           ; $639E: $00
    nop                                           ; $639F: $00
    nop                                           ; $63A0: $00
    nop                                           ; $63A1: $00
    nop                                           ; $63A2: $00
    nop                                           ; $63A3: $00
    nop                                           ; $63A4: $00
    nop                                           ; $63A5: $00
    nop                                           ; $63A6: $00
    nop                                           ; $63A7: $00
    nop                                           ; $63A8: $00
    nop                                           ; $63A9: $00
    nop                                           ; $63AA: $00
    nop                                           ; $63AB: $00
    nop                                           ; $63AC: $00
    nop                                           ; $63AD: $00
    nop                                           ; $63AE: $00
    nop                                           ; $63AF: $00
    nop                                           ; $63B0: $00
    nop                                           ; $63B1: $00
    nop                                           ; $63B2: $00
    nop                                           ; $63B3: $00
    nop                                           ; $63B4: $00
    nop                                           ; $63B5: $00
    nop                                           ; $63B6: $00
    nop                                           ; $63B7: $00
    nop                                           ; $63B8: $00
    nop                                           ; $63B9: $00
    nop                                           ; $63BA: $00
    nop                                           ; $63BB: $00
    nop                                           ; $63BC: $00
    nop                                           ; $63BD: $00
    nop                                           ; $63BE: $00
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
    nop                                           ; $63C9: $00
    nop                                           ; $63CA: $00
    nop                                           ; $63CB: $00
    nop                                           ; $63CC: $00
    nop                                           ; $63CD: $00
    nop                                           ; $63CE: $00
    nop                                           ; $63CF: $00
    nop                                           ; $63D0: $00
    nop                                           ; $63D1: $00
    nop                                           ; $63D2: $00
    nop                                           ; $63D3: $00
    nop                                           ; $63D4: $00
    nop                                           ; $63D5: $00
    nop                                           ; $63D6: $00
    nop                                           ; $63D7: $00
    nop                                           ; $63D8: $00
    nop                                           ; $63D9: $00
    nop                                           ; $63DA: $00
    nop                                           ; $63DB: $00
    nop                                           ; $63DC: $00
    nop                                           ; $63DD: $00
    nop                                           ; $63DE: $00
    nop                                           ; $63DF: $00
    nop                                           ; $63E0: $00
    nop                                           ; $63E1: $00
    nop                                           ; $63E2: $00
    nop                                           ; $63E3: $00
    nop                                           ; $63E4: $00
    nop                                           ; $63E5: $00
    nop                                           ; $63E6: $00
    nop                                           ; $63E7: $00
    nop                                           ; $63E8: $00
    nop                                           ; $63E9: $00
    nop                                           ; $63EA: $00
    nop                                           ; $63EB: $00
    nop                                           ; $63EC: $00
    nop                                           ; $63ED: $00
    nop                                           ; $63EE: $00
    nop                                           ; $63EF: $00
    nop                                           ; $63F0: $00
    nop                                           ; $63F1: $00
    nop                                           ; $63F2: $00
    nop                                           ; $63F3: $00
    nop                                           ; $63F4: $00
    nop                                           ; $63F5: $00
    nop                                           ; $63F6: $00
    nop                                           ; $63F7: $00
    nop                                           ; $63F8: $00
    nop                                           ; $63F9: $00
    nop                                           ; $63FA: $00
    nop                                           ; $63FB: $00
    nop                                           ; $63FC: $00
    nop                                           ; $63FD: $00
    nop                                           ; $63FE: $00
    nop                                           ; $63FF: $00
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    nop                                           ; $6408: $00
    nop                                           ; $6409: $00
    nop                                           ; $640A: $00
    nop                                           ; $640B: $00
    nop                                           ; $640C: $00
    nop                                           ; $640D: $00
    nop                                           ; $640E: $00
    nop                                           ; $640F: $00
    nop                                           ; $6410: $00
    nop                                           ; $6411: $00
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    nop                                           ; $6414: $00
    nop                                           ; $6415: $00
    nop                                           ; $6416: $00
    nop                                           ; $6417: $00
    nop                                           ; $6418: $00
    nop                                           ; $6419: $00
    nop                                           ; $641A: $00
    nop                                           ; $641B: $00
    nop                                           ; $641C: $00
    nop                                           ; $641D: $00
    nop                                           ; $641E: $00
    nop                                           ; $641F: $00
    nop                                           ; $6420: $00
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    nop                                           ; $6423: $00
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    nop                                           ; $6427: $00
    nop                                           ; $6428: $00
    nop                                           ; $6429: $00
    nop                                           ; $642A: $00
    nop                                           ; $642B: $00
    nop                                           ; $642C: $00
    nop                                           ; $642D: $00
    nop                                           ; $642E: $00
    nop                                           ; $642F: $00
    nop                                           ; $6430: $00
    nop                                           ; $6431: $00
    nop                                           ; $6432: $00
    nop                                           ; $6433: $00
    nop                                           ; $6434: $00
    nop                                           ; $6435: $00
    nop                                           ; $6436: $00
    nop                                           ; $6437: $00
    nop                                           ; $6438: $00
    nop                                           ; $6439: $00
    nop                                           ; $643A: $00
    nop                                           ; $643B: $00
    nop                                           ; $643C: $00
    nop                                           ; $643D: $00
    nop                                           ; $643E: $00
    nop                                           ; $643F: $00
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    nop                                           ; $6443: $00
    nop                                           ; $6444: $00
    nop                                           ; $6445: $00
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00
    nop                                           ; $6448: $00
    nop                                           ; $6449: $00
    nop                                           ; $644A: $00
    nop                                           ; $644B: $00
    nop                                           ; $644C: $00
    nop                                           ; $644D: $00
    nop                                           ; $644E: $00
    nop                                           ; $644F: $00
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    nop                                           ; $6452: $00
    nop                                           ; $6453: $00
    nop                                           ; $6454: $00
    nop                                           ; $6455: $00
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    nop                                           ; $6458: $00
    nop                                           ; $6459: $00
    nop                                           ; $645A: $00
    nop                                           ; $645B: $00
    nop                                           ; $645C: $00
    nop                                           ; $645D: $00
    nop                                           ; $645E: $00
    nop                                           ; $645F: $00
    nop                                           ; $6460: $00
    nop                                           ; $6461: $00
    nop                                           ; $6462: $00
    nop                                           ; $6463: $00
    nop                                           ; $6464: $00
    nop                                           ; $6465: $00
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    nop                                           ; $6469: $00
    nop                                           ; $646A: $00
    nop                                           ; $646B: $00
    nop                                           ; $646C: $00
    nop                                           ; $646D: $00
    nop                                           ; $646E: $00
    nop                                           ; $646F: $00
    nop                                           ; $6470: $00
    nop                                           ; $6471: $00
    nop                                           ; $6472: $00
    nop                                           ; $6473: $00
    nop                                           ; $6474: $00
    nop                                           ; $6475: $00
    nop                                           ; $6476: $00
    nop                                           ; $6477: $00
    nop                                           ; $6478: $00
    nop                                           ; $6479: $00
    nop                                           ; $647A: $00
    nop                                           ; $647B: $00
    nop                                           ; $647C: $00
    nop                                           ; $647D: $00
    nop                                           ; $647E: $00
    nop                                           ; $647F: $00
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00
    nop                                           ; $6484: $00
    nop                                           ; $6485: $00
    nop                                           ; $6486: $00
    nop                                           ; $6487: $00
    nop                                           ; $6488: $00
    nop                                           ; $6489: $00
    nop                                           ; $648A: $00
    nop                                           ; $648B: $00
    nop                                           ; $648C: $00
    nop                                           ; $648D: $00
    nop                                           ; $648E: $00
    nop                                           ; $648F: $00
    nop                                           ; $6490: $00
    nop                                           ; $6491: $00
    nop                                           ; $6492: $00
    nop                                           ; $6493: $00
    nop                                           ; $6494: $00
    nop                                           ; $6495: $00
    nop                                           ; $6496: $00
    nop                                           ; $6497: $00
    nop                                           ; $6498: $00
    nop                                           ; $6499: $00
    nop                                           ; $649A: $00
    nop                                           ; $649B: $00
    nop                                           ; $649C: $00
    nop                                           ; $649D: $00
    nop                                           ; $649E: $00
    nop                                           ; $649F: $00
    nop                                           ; $64A0: $00
    nop                                           ; $64A1: $00
    nop                                           ; $64A2: $00
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
    nop                                           ; $64B1: $00
    nop                                           ; $64B2: $00
    nop                                           ; $64B3: $00
    nop                                           ; $64B4: $00
    nop                                           ; $64B5: $00
    nop                                           ; $64B6: $00
    nop                                           ; $64B7: $00
    nop                                           ; $64B8: $00
    nop                                           ; $64B9: $00
    nop                                           ; $64BA: $00
    nop                                           ; $64BB: $00
    nop                                           ; $64BC: $00
    nop                                           ; $64BD: $00
    nop                                           ; $64BE: $00
    nop                                           ; $64BF: $00
    nop                                           ; $64C0: $00
    nop                                           ; $64C1: $00
    nop                                           ; $64C2: $00
    nop                                           ; $64C3: $00
    nop                                           ; $64C4: $00
    nop                                           ; $64C5: $00
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
    nop                                           ; $64D3: $00
    nop                                           ; $64D4: $00
    nop                                           ; $64D5: $00
    nop                                           ; $64D6: $00
    nop                                           ; $64D7: $00
    nop                                           ; $64D8: $00
    nop                                           ; $64D9: $00
    nop                                           ; $64DA: $00
    nop                                           ; $64DB: $00
    nop                                           ; $64DC: $00
    nop                                           ; $64DD: $00
    nop                                           ; $64DE: $00
    nop                                           ; $64DF: $00
    nop                                           ; $64E0: $00
    nop                                           ; $64E1: $00
    nop                                           ; $64E2: $00
    nop                                           ; $64E3: $00
    nop                                           ; $64E4: $00
    nop                                           ; $64E5: $00
    nop                                           ; $64E6: $00
    nop                                           ; $64E7: $00
    nop                                           ; $64E8: $00
    nop                                           ; $64E9: $00
    nop                                           ; $64EA: $00
    nop                                           ; $64EB: $00
    nop                                           ; $64EC: $00
    nop                                           ; $64ED: $00
    nop                                           ; $64EE: $00
    nop                                           ; $64EF: $00
    nop                                           ; $64F0: $00
    nop                                           ; $64F1: $00
    nop                                           ; $64F2: $00
    nop                                           ; $64F3: $00
    nop                                           ; $64F4: $00
    nop                                           ; $64F5: $00
    nop                                           ; $64F6: $00
    nop                                           ; $64F7: $00
    nop                                           ; $64F8: $00
    nop                                           ; $64F9: $00
    nop                                           ; $64FA: $00
    nop                                           ; $64FB: $00
    nop                                           ; $64FC: $00
    nop                                           ; $64FD: $00
    nop                                           ; $64FE: $00
    nop                                           ; $64FF: $00
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    nop                                           ; $6506: $00
    nop                                           ; $6507: $00
    nop                                           ; $6508: $00
    nop                                           ; $6509: $00
    nop                                           ; $650A: $00
    nop                                           ; $650B: $00
    nop                                           ; $650C: $00
    nop                                           ; $650D: $00
    nop                                           ; $650E: $00
    nop                                           ; $650F: $00
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    nop                                           ; $6515: $00
    nop                                           ; $6516: $00
    nop                                           ; $6517: $00
    nop                                           ; $6518: $00
    nop                                           ; $6519: $00
    nop                                           ; $651A: $00
    nop                                           ; $651B: $00
    nop                                           ; $651C: $00
    nop                                           ; $651D: $00
    nop                                           ; $651E: $00
    nop                                           ; $651F: $00
    nop                                           ; $6520: $00
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
    nop                                           ; $652B: $00
    nop                                           ; $652C: $00
    nop                                           ; $652D: $00
    nop                                           ; $652E: $00
    nop                                           ; $652F: $00
    nop                                           ; $6530: $00
    nop                                           ; $6531: $00
    nop                                           ; $6532: $00
    nop                                           ; $6533: $00
    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    nop                                           ; $6536: $00
    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    nop                                           ; $6539: $00
    nop                                           ; $653A: $00
    nop                                           ; $653B: $00
    nop                                           ; $653C: $00
    nop                                           ; $653D: $00
    nop                                           ; $653E: $00
    nop                                           ; $653F: $00
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    nop                                           ; $6544: $00
    nop                                           ; $6545: $00
    nop                                           ; $6546: $00
    nop                                           ; $6547: $00
    nop                                           ; $6548: $00
    nop                                           ; $6549: $00
    nop                                           ; $654A: $00
    nop                                           ; $654B: $00
    nop                                           ; $654C: $00
    nop                                           ; $654D: $00
    nop                                           ; $654E: $00
    nop                                           ; $654F: $00
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    nop                                           ; $655A: $00
    nop                                           ; $655B: $00
    nop                                           ; $655C: $00
    nop                                           ; $655D: $00
    nop                                           ; $655E: $00
    nop                                           ; $655F: $00
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    nop                                           ; $656A: $00
    nop                                           ; $656B: $00
    nop                                           ; $656C: $00
    nop                                           ; $656D: $00
    nop                                           ; $656E: $00
    nop                                           ; $656F: $00
    nop                                           ; $6570: $00
    nop                                           ; $6571: $00
    nop                                           ; $6572: $00
    nop                                           ; $6573: $00
    nop                                           ; $6574: $00
    nop                                           ; $6575: $00
    nop                                           ; $6576: $00
    nop                                           ; $6577: $00
    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    nop                                           ; $657A: $00
    nop                                           ; $657B: $00
    nop                                           ; $657C: $00
    nop                                           ; $657D: $00
    nop                                           ; $657E: $00
    nop                                           ; $657F: $00
    nop                                           ; $6580: $00
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    nop                                           ; $6583: $00
    nop                                           ; $6584: $00
    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    nop                                           ; $6588: $00
    nop                                           ; $6589: $00
    nop                                           ; $658A: $00
    nop                                           ; $658B: $00
    nop                                           ; $658C: $00
    nop                                           ; $658D: $00
    nop                                           ; $658E: $00
    nop                                           ; $658F: $00
    nop                                           ; $6590: $00
    nop                                           ; $6591: $00
    nop                                           ; $6592: $00
    nop                                           ; $6593: $00
    nop                                           ; $6594: $00
    nop                                           ; $6595: $00
    nop                                           ; $6596: $00
    nop                                           ; $6597: $00
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00
    nop                                           ; $659A: $00
    nop                                           ; $659B: $00
    nop                                           ; $659C: $00
    nop                                           ; $659D: $00
    nop                                           ; $659E: $00
    nop                                           ; $659F: $00
    nop                                           ; $65A0: $00
    nop                                           ; $65A1: $00
    nop                                           ; $65A2: $00
    nop                                           ; $65A3: $00
    nop                                           ; $65A4: $00
    nop                                           ; $65A5: $00
    nop                                           ; $65A6: $00
    nop                                           ; $65A7: $00
    nop                                           ; $65A8: $00
    nop                                           ; $65A9: $00
    nop                                           ; $65AA: $00
    nop                                           ; $65AB: $00
    nop                                           ; $65AC: $00
    nop                                           ; $65AD: $00
    nop                                           ; $65AE: $00
    nop                                           ; $65AF: $00
    nop                                           ; $65B0: $00
    nop                                           ; $65B1: $00
    nop                                           ; $65B2: $00
    nop                                           ; $65B3: $00
    nop                                           ; $65B4: $00
    nop                                           ; $65B5: $00
    nop                                           ; $65B6: $00
    nop                                           ; $65B7: $00
    nop                                           ; $65B8: $00
    nop                                           ; $65B9: $00
    nop                                           ; $65BA: $00
    nop                                           ; $65BB: $00
    nop                                           ; $65BC: $00
    nop                                           ; $65BD: $00
    nop                                           ; $65BE: $00
    nop                                           ; $65BF: $00
    nop                                           ; $65C0: $00
    nop                                           ; $65C1: $00
    nop                                           ; $65C2: $00
    nop                                           ; $65C3: $00
    nop                                           ; $65C4: $00
    nop                                           ; $65C5: $00
    nop                                           ; $65C6: $00
    nop                                           ; $65C7: $00
    nop                                           ; $65C8: $00
    nop                                           ; $65C9: $00
    nop                                           ; $65CA: $00
    nop                                           ; $65CB: $00
    nop                                           ; $65CC: $00
    nop                                           ; $65CD: $00
    nop                                           ; $65CE: $00
    nop                                           ; $65CF: $00
    nop                                           ; $65D0: $00
    nop                                           ; $65D1: $00
    nop                                           ; $65D2: $00
    nop                                           ; $65D3: $00
    nop                                           ; $65D4: $00
    nop                                           ; $65D5: $00
    nop                                           ; $65D6: $00
    nop                                           ; $65D7: $00
    nop                                           ; $65D8: $00
    nop                                           ; $65D9: $00
    nop                                           ; $65DA: $00
    nop                                           ; $65DB: $00
    nop                                           ; $65DC: $00
    nop                                           ; $65DD: $00
    nop                                           ; $65DE: $00
    nop                                           ; $65DF: $00
    nop                                           ; $65E0: $00
    nop                                           ; $65E1: $00
    nop                                           ; $65E2: $00
    nop                                           ; $65E3: $00
    nop                                           ; $65E4: $00
    nop                                           ; $65E5: $00
    nop                                           ; $65E6: $00
    nop                                           ; $65E7: $00
    nop                                           ; $65E8: $00
    nop                                           ; $65E9: $00
    nop                                           ; $65EA: $00
    nop                                           ; $65EB: $00
    nop                                           ; $65EC: $00
    nop                                           ; $65ED: $00
    nop                                           ; $65EE: $00
    nop                                           ; $65EF: $00
    nop                                           ; $65F0: $00
    nop                                           ; $65F1: $00
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
    nop                                           ; $6600: $00
    nop                                           ; $6601: $00
    nop                                           ; $6602: $00
    nop                                           ; $6603: $00
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    nop                                           ; $6606: $00
    nop                                           ; $6607: $00
    nop                                           ; $6608: $00
    nop                                           ; $6609: $00
    nop                                           ; $660A: $00
    nop                                           ; $660B: $00
    nop                                           ; $660C: $00
    nop                                           ; $660D: $00
    nop                                           ; $660E: $00
    nop                                           ; $660F: $00
    nop                                           ; $6610: $00
    nop                                           ; $6611: $00
    nop                                           ; $6612: $00
    nop                                           ; $6613: $00
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
    nop                                           ; $6625: $00
    nop                                           ; $6626: $00
    nop                                           ; $6627: $00
    nop                                           ; $6628: $00
    nop                                           ; $6629: $00
    nop                                           ; $662A: $00
    nop                                           ; $662B: $00
    nop                                           ; $662C: $00
    nop                                           ; $662D: $00
    nop                                           ; $662E: $00
    nop                                           ; $662F: $00
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    nop                                           ; $6632: $00
    nop                                           ; $6633: $00
    nop                                           ; $6634: $00
    nop                                           ; $6635: $00
    nop                                           ; $6636: $00
    nop                                           ; $6637: $00
    nop                                           ; $6638: $00
    nop                                           ; $6639: $00
    nop                                           ; $663A: $00
    nop                                           ; $663B: $00
    nop                                           ; $663C: $00
    nop                                           ; $663D: $00
    nop                                           ; $663E: $00
    nop                                           ; $663F: $00
    nop                                           ; $6640: $00
    nop                                           ; $6641: $00
    nop                                           ; $6642: $00
    nop                                           ; $6643: $00
    nop                                           ; $6644: $00
    nop                                           ; $6645: $00
    nop                                           ; $6646: $00
    nop                                           ; $6647: $00
    nop                                           ; $6648: $00
    nop                                           ; $6649: $00
    nop                                           ; $664A: $00
    nop                                           ; $664B: $00
    nop                                           ; $664C: $00
    nop                                           ; $664D: $00
    nop                                           ; $664E: $00
    nop                                           ; $664F: $00
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    nop                                           ; $6653: $00
    nop                                           ; $6654: $00
    nop                                           ; $6655: $00
    nop                                           ; $6656: $00
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    nop                                           ; $6659: $00
    nop                                           ; $665A: $00
    nop                                           ; $665B: $00
    nop                                           ; $665C: $00
    nop                                           ; $665D: $00
    nop                                           ; $665E: $00
    nop                                           ; $665F: $00
    nop                                           ; $6660: $00
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    nop                                           ; $6664: $00
    nop                                           ; $6665: $00
    nop                                           ; $6666: $00
    nop                                           ; $6667: $00
    nop                                           ; $6668: $00
    nop                                           ; $6669: $00
    nop                                           ; $666A: $00
    nop                                           ; $666B: $00
    nop                                           ; $666C: $00
    nop                                           ; $666D: $00
    nop                                           ; $666E: $00
    nop                                           ; $666F: $00
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    nop                                           ; $6673: $00
    nop                                           ; $6674: $00
    nop                                           ; $6675: $00
    nop                                           ; $6676: $00
    nop                                           ; $6677: $00
    nop                                           ; $6678: $00
    nop                                           ; $6679: $00
    nop                                           ; $667A: $00
    nop                                           ; $667B: $00
    nop                                           ; $667C: $00
    nop                                           ; $667D: $00
    nop                                           ; $667E: $00
    nop                                           ; $667F: $00
    nop                                           ; $6680: $00
    nop                                           ; $6681: $00
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    nop                                           ; $6684: $00
    nop                                           ; $6685: $00
    nop                                           ; $6686: $00
    nop                                           ; $6687: $00
    nop                                           ; $6688: $00
    nop                                           ; $6689: $00
    nop                                           ; $668A: $00
    nop                                           ; $668B: $00
    nop                                           ; $668C: $00
    nop                                           ; $668D: $00
    nop                                           ; $668E: $00
    nop                                           ; $668F: $00
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    nop                                           ; $6692: $00
    nop                                           ; $6693: $00
    nop                                           ; $6694: $00
    nop                                           ; $6695: $00
    nop                                           ; $6696: $00
    nop                                           ; $6697: $00
    nop                                           ; $6698: $00
    nop                                           ; $6699: $00
    nop                                           ; $669A: $00
    nop                                           ; $669B: $00
    nop                                           ; $669C: $00
    nop                                           ; $669D: $00
    nop                                           ; $669E: $00
    nop                                           ; $669F: $00
    nop                                           ; $66A0: $00
    nop                                           ; $66A1: $00
    nop                                           ; $66A2: $00
    nop                                           ; $66A3: $00
    nop                                           ; $66A4: $00
    nop                                           ; $66A5: $00
    nop                                           ; $66A6: $00
    nop                                           ; $66A7: $00
    nop                                           ; $66A8: $00
    nop                                           ; $66A9: $00
    nop                                           ; $66AA: $00
    nop                                           ; $66AB: $00
    nop                                           ; $66AC: $00
    nop                                           ; $66AD: $00
    nop                                           ; $66AE: $00
    nop                                           ; $66AF: $00
    nop                                           ; $66B0: $00
    nop                                           ; $66B1: $00
    nop                                           ; $66B2: $00
    nop                                           ; $66B3: $00
    nop                                           ; $66B4: $00
    nop                                           ; $66B5: $00
    nop                                           ; $66B6: $00
    nop                                           ; $66B7: $00
    nop                                           ; $66B8: $00
    nop                                           ; $66B9: $00
    nop                                           ; $66BA: $00
    nop                                           ; $66BB: $00
    nop                                           ; $66BC: $00
    nop                                           ; $66BD: $00
    nop                                           ; $66BE: $00
    nop                                           ; $66BF: $00
    nop                                           ; $66C0: $00
    nop                                           ; $66C1: $00
    nop                                           ; $66C2: $00
    nop                                           ; $66C3: $00
    nop                                           ; $66C4: $00
    nop                                           ; $66C5: $00
    nop                                           ; $66C6: $00
    nop                                           ; $66C7: $00
    nop                                           ; $66C8: $00
    nop                                           ; $66C9: $00
    nop                                           ; $66CA: $00
    nop                                           ; $66CB: $00
    nop                                           ; $66CC: $00
    nop                                           ; $66CD: $00
    nop                                           ; $66CE: $00
    nop                                           ; $66CF: $00
    nop                                           ; $66D0: $00
    nop                                           ; $66D1: $00
    nop                                           ; $66D2: $00
    nop                                           ; $66D3: $00
    nop                                           ; $66D4: $00
    nop                                           ; $66D5: $00
    nop                                           ; $66D6: $00
    nop                                           ; $66D7: $00
    nop                                           ; $66D8: $00
    nop                                           ; $66D9: $00
    nop                                           ; $66DA: $00
    nop                                           ; $66DB: $00
    nop                                           ; $66DC: $00
    nop                                           ; $66DD: $00
    nop                                           ; $66DE: $00
    nop                                           ; $66DF: $00
    nop                                           ; $66E0: $00
    nop                                           ; $66E1: $00
    nop                                           ; $66E2: $00
    nop                                           ; $66E3: $00
    nop                                           ; $66E4: $00
    nop                                           ; $66E5: $00
    nop                                           ; $66E6: $00
    nop                                           ; $66E7: $00
    nop                                           ; $66E8: $00
    nop                                           ; $66E9: $00
    nop                                           ; $66EA: $00
    nop                                           ; $66EB: $00
    nop                                           ; $66EC: $00
    nop                                           ; $66ED: $00
    nop                                           ; $66EE: $00
    nop                                           ; $66EF: $00
    nop                                           ; $66F0: $00
    nop                                           ; $66F1: $00
    nop                                           ; $66F2: $00
    nop                                           ; $66F3: $00
    nop                                           ; $66F4: $00
    nop                                           ; $66F5: $00
    nop                                           ; $66F6: $00
    nop                                           ; $66F7: $00
    nop                                           ; $66F8: $00
    nop                                           ; $66F9: $00
    nop                                           ; $66FA: $00
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
    nop                                           ; $6707: $00
    nop                                           ; $6708: $00
    nop                                           ; $6709: $00
    nop                                           ; $670A: $00
    nop                                           ; $670B: $00
    nop                                           ; $670C: $00
    nop                                           ; $670D: $00
    nop                                           ; $670E: $00
    nop                                           ; $670F: $00
    nop                                           ; $6710: $00
    nop                                           ; $6711: $00
    nop                                           ; $6712: $00
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    nop                                           ; $6715: $00
    nop                                           ; $6716: $00
    nop                                           ; $6717: $00
    nop                                           ; $6718: $00
    nop                                           ; $6719: $00
    nop                                           ; $671A: $00
    nop                                           ; $671B: $00
    nop                                           ; $671C: $00
    nop                                           ; $671D: $00
    nop                                           ; $671E: $00
    nop                                           ; $671F: $00
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00
    nop                                           ; $6724: $00
    nop                                           ; $6725: $00
    nop                                           ; $6726: $00
    nop                                           ; $6727: $00
    nop                                           ; $6728: $00
    nop                                           ; $6729: $00
    nop                                           ; $672A: $00
    nop                                           ; $672B: $00
    nop                                           ; $672C: $00
    nop                                           ; $672D: $00
    nop                                           ; $672E: $00
    nop                                           ; $672F: $00
    nop                                           ; $6730: $00
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    nop                                           ; $6734: $00
    nop                                           ; $6735: $00
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    nop                                           ; $6738: $00
    nop                                           ; $6739: $00
    nop                                           ; $673A: $00
    nop                                           ; $673B: $00
    nop                                           ; $673C: $00
    nop                                           ; $673D: $00
    nop                                           ; $673E: $00
    nop                                           ; $673F: $00
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    nop                                           ; $6744: $00
    nop                                           ; $6745: $00
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    nop                                           ; $674A: $00
    nop                                           ; $674B: $00
    nop                                           ; $674C: $00
    nop                                           ; $674D: $00
    nop                                           ; $674E: $00
    nop                                           ; $674F: $00
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    nop                                           ; $6752: $00
    nop                                           ; $6753: $00
    nop                                           ; $6754: $00
    nop                                           ; $6755: $00
    nop                                           ; $6756: $00
    nop                                           ; $6757: $00
    nop                                           ; $6758: $00
    nop                                           ; $6759: $00
    nop                                           ; $675A: $00
    nop                                           ; $675B: $00
    nop                                           ; $675C: $00
    nop                                           ; $675D: $00
    nop                                           ; $675E: $00
    nop                                           ; $675F: $00
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    nop                                           ; $6764: $00
    nop                                           ; $6765: $00
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    nop                                           ; $6769: $00
    nop                                           ; $676A: $00
    nop                                           ; $676B: $00
    nop                                           ; $676C: $00
    nop                                           ; $676D: $00
    nop                                           ; $676E: $00
    nop                                           ; $676F: $00
    nop                                           ; $6770: $00
    nop                                           ; $6771: $00
    nop                                           ; $6772: $00
    nop                                           ; $6773: $00
    nop                                           ; $6774: $00
    nop                                           ; $6775: $00
    nop                                           ; $6776: $00
    nop                                           ; $6777: $00
    nop                                           ; $6778: $00
    nop                                           ; $6779: $00
    nop                                           ; $677A: $00
    nop                                           ; $677B: $00
    nop                                           ; $677C: $00
    nop                                           ; $677D: $00
    nop                                           ; $677E: $00
    nop                                           ; $677F: $00
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    nop                                           ; $6784: $00
    nop                                           ; $6785: $00
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    nop                                           ; $6788: $00
    nop                                           ; $6789: $00
    nop                                           ; $678A: $00
    nop                                           ; $678B: $00
    nop                                           ; $678C: $00
    nop                                           ; $678D: $00
    nop                                           ; $678E: $00
    nop                                           ; $678F: $00
    nop                                           ; $6790: $00
    nop                                           ; $6791: $00
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    nop                                           ; $6794: $00
    nop                                           ; $6795: $00
    nop                                           ; $6796: $00
    nop                                           ; $6797: $00
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    nop                                           ; $679A: $00
    nop                                           ; $679B: $00
    nop                                           ; $679C: $00
    nop                                           ; $679D: $00
    nop                                           ; $679E: $00
    nop                                           ; $679F: $00
    nop                                           ; $67A0: $00
    nop                                           ; $67A1: $00
    nop                                           ; $67A2: $00
    nop                                           ; $67A3: $00
    nop                                           ; $67A4: $00
    nop                                           ; $67A5: $00
    nop                                           ; $67A6: $00
    nop                                           ; $67A7: $00
    nop                                           ; $67A8: $00
    nop                                           ; $67A9: $00
    nop                                           ; $67AA: $00
    nop                                           ; $67AB: $00
    nop                                           ; $67AC: $00
    nop                                           ; $67AD: $00
    nop                                           ; $67AE: $00
    nop                                           ; $67AF: $00
    nop                                           ; $67B0: $00
    nop                                           ; $67B1: $00
    nop                                           ; $67B2: $00
    nop                                           ; $67B3: $00
    nop                                           ; $67B4: $00
    nop                                           ; $67B5: $00
    nop                                           ; $67B6: $00
    nop                                           ; $67B7: $00
    nop                                           ; $67B8: $00
    nop                                           ; $67B9: $00
    nop                                           ; $67BA: $00
    nop                                           ; $67BB: $00
    nop                                           ; $67BC: $00
    nop                                           ; $67BD: $00
    nop                                           ; $67BE: $00
    nop                                           ; $67BF: $00
    nop                                           ; $67C0: $00
    nop                                           ; $67C1: $00
    nop                                           ; $67C2: $00
    nop                                           ; $67C3: $00
    nop                                           ; $67C4: $00
    nop                                           ; $67C5: $00
    nop                                           ; $67C6: $00
    nop                                           ; $67C7: $00
    nop                                           ; $67C8: $00
    nop                                           ; $67C9: $00
    nop                                           ; $67CA: $00
    nop                                           ; $67CB: $00
    nop                                           ; $67CC: $00
    nop                                           ; $67CD: $00
    nop                                           ; $67CE: $00
    nop                                           ; $67CF: $00
    nop                                           ; $67D0: $00
    nop                                           ; $67D1: $00
    nop                                           ; $67D2: $00
    nop                                           ; $67D3: $00
    nop                                           ; $67D4: $00
    nop                                           ; $67D5: $00
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
    nop                                           ; $67E2: $00
    nop                                           ; $67E3: $00
    nop                                           ; $67E4: $00
    nop                                           ; $67E5: $00
    nop                                           ; $67E6: $00
    nop                                           ; $67E7: $00
    nop                                           ; $67E8: $00
    nop                                           ; $67E9: $00
    nop                                           ; $67EA: $00
    nop                                           ; $67EB: $00
    nop                                           ; $67EC: $00
    nop                                           ; $67ED: $00
    nop                                           ; $67EE: $00
    nop                                           ; $67EF: $00
    nop                                           ; $67F0: $00
    nop                                           ; $67F1: $00
    nop                                           ; $67F2: $00
    nop                                           ; $67F3: $00
    nop                                           ; $67F4: $00
    nop                                           ; $67F5: $00
    nop                                           ; $67F6: $00
    nop                                           ; $67F7: $00
    nop                                           ; $67F8: $00
    nop                                           ; $67F9: $00
    nop                                           ; $67FA: $00
    nop                                           ; $67FB: $00
    nop                                           ; $67FC: $00
    nop                                           ; $67FD: $00
    nop                                           ; $67FE: $00
    nop                                           ; $67FF: $00
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00
    nop                                           ; $6804: $00
    nop                                           ; $6805: $00
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    nop                                           ; $6808: $00
    nop                                           ; $6809: $00
    nop                                           ; $680A: $00
    nop                                           ; $680B: $00
    nop                                           ; $680C: $00
    nop                                           ; $680D: $00
    nop                                           ; $680E: $00
    nop                                           ; $680F: $00
    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    nop                                           ; $6812: $00
    nop                                           ; $6813: $00
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    nop                                           ; $6818: $00
    nop                                           ; $6819: $00
    nop                                           ; $681A: $00
    nop                                           ; $681B: $00
    nop                                           ; $681C: $00
    nop                                           ; $681D: $00
    nop                                           ; $681E: $00
    nop                                           ; $681F: $00
    nop                                           ; $6820: $00
    nop                                           ; $6821: $00
    nop                                           ; $6822: $00
    nop                                           ; $6823: $00
    nop                                           ; $6824: $00
    nop                                           ; $6825: $00
    nop                                           ; $6826: $00
    nop                                           ; $6827: $00
    nop                                           ; $6828: $00
    nop                                           ; $6829: $00
    nop                                           ; $682A: $00
    nop                                           ; $682B: $00
    nop                                           ; $682C: $00
    nop                                           ; $682D: $00
    nop                                           ; $682E: $00
    nop                                           ; $682F: $00
    nop                                           ; $6830: $00
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    nop                                           ; $6833: $00
    nop                                           ; $6834: $00
    nop                                           ; $6835: $00
    nop                                           ; $6836: $00
    nop                                           ; $6837: $00
    nop                                           ; $6838: $00
    nop                                           ; $6839: $00
    nop                                           ; $683A: $00
    nop                                           ; $683B: $00
    nop                                           ; $683C: $00
    nop                                           ; $683D: $00
    nop                                           ; $683E: $00
    nop                                           ; $683F: $00
    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    nop                                           ; $6842: $00
    nop                                           ; $6843: $00
    nop                                           ; $6844: $00
    nop                                           ; $6845: $00
    nop                                           ; $6846: $00
    nop                                           ; $6847: $00
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    nop                                           ; $684A: $00
    nop                                           ; $684B: $00
    nop                                           ; $684C: $00
    nop                                           ; $684D: $00
    nop                                           ; $684E: $00
    nop                                           ; $684F: $00
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    nop                                           ; $6852: $00
    nop                                           ; $6853: $00
    nop                                           ; $6854: $00
    nop                                           ; $6855: $00
    nop                                           ; $6856: $00
    nop                                           ; $6857: $00
    nop                                           ; $6858: $00
    nop                                           ; $6859: $00
    nop                                           ; $685A: $00
    nop                                           ; $685B: $00
    nop                                           ; $685C: $00
    nop                                           ; $685D: $00
    nop                                           ; $685E: $00
    nop                                           ; $685F: $00
    nop                                           ; $6860: $00
    nop                                           ; $6861: $00
    nop                                           ; $6862: $00
    nop                                           ; $6863: $00
    nop                                           ; $6864: $00
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    nop                                           ; $6867: $00
    nop                                           ; $6868: $00
    nop                                           ; $6869: $00
    nop                                           ; $686A: $00
    nop                                           ; $686B: $00
    nop                                           ; $686C: $00
    nop                                           ; $686D: $00
    nop                                           ; $686E: $00
    nop                                           ; $686F: $00
    nop                                           ; $6870: $00
    nop                                           ; $6871: $00
    nop                                           ; $6872: $00
    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    nop                                           ; $6875: $00
    nop                                           ; $6876: $00
    nop                                           ; $6877: $00
    nop                                           ; $6878: $00
    nop                                           ; $6879: $00
    nop                                           ; $687A: $00
    nop                                           ; $687B: $00
    nop                                           ; $687C: $00
    nop                                           ; $687D: $00
    nop                                           ; $687E: $00
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
    nop                                           ; $6889: $00
    nop                                           ; $688A: $00
    nop                                           ; $688B: $00
    nop                                           ; $688C: $00
    nop                                           ; $688D: $00
    nop                                           ; $688E: $00
    nop                                           ; $688F: $00
    nop                                           ; $6890: $00
    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    nop                                           ; $6896: $00
    nop                                           ; $6897: $00
    nop                                           ; $6898: $00
    nop                                           ; $6899: $00
    nop                                           ; $689A: $00
    nop                                           ; $689B: $00
    nop                                           ; $689C: $00
    nop                                           ; $689D: $00
    nop                                           ; $689E: $00
    nop                                           ; $689F: $00
    nop                                           ; $68A0: $00
    nop                                           ; $68A1: $00
    nop                                           ; $68A2: $00
    nop                                           ; $68A3: $00
    nop                                           ; $68A4: $00
    nop                                           ; $68A5: $00
    nop                                           ; $68A6: $00
    nop                                           ; $68A7: $00
    nop                                           ; $68A8: $00
    nop                                           ; $68A9: $00
    nop                                           ; $68AA: $00
    nop                                           ; $68AB: $00
    nop                                           ; $68AC: $00
    nop                                           ; $68AD: $00
    nop                                           ; $68AE: $00
    nop                                           ; $68AF: $00
    nop                                           ; $68B0: $00
    nop                                           ; $68B1: $00
    nop                                           ; $68B2: $00
    nop                                           ; $68B3: $00
    nop                                           ; $68B4: $00
    nop                                           ; $68B5: $00
    nop                                           ; $68B6: $00
    nop                                           ; $68B7: $00
    nop                                           ; $68B8: $00
    nop                                           ; $68B9: $00
    nop                                           ; $68BA: $00
    nop                                           ; $68BB: $00
    nop                                           ; $68BC: $00
    nop                                           ; $68BD: $00
    nop                                           ; $68BE: $00
    nop                                           ; $68BF: $00
    nop                                           ; $68C0: $00
    nop                                           ; $68C1: $00
    nop                                           ; $68C2: $00
    nop                                           ; $68C3: $00
    nop                                           ; $68C4: $00
    nop                                           ; $68C5: $00
    nop                                           ; $68C6: $00
    nop                                           ; $68C7: $00
    nop                                           ; $68C8: $00
    nop                                           ; $68C9: $00
    nop                                           ; $68CA: $00
    nop                                           ; $68CB: $00
    nop                                           ; $68CC: $00
    nop                                           ; $68CD: $00
    nop                                           ; $68CE: $00
    nop                                           ; $68CF: $00
    nop                                           ; $68D0: $00
    nop                                           ; $68D1: $00
    nop                                           ; $68D2: $00
    nop                                           ; $68D3: $00
    nop                                           ; $68D4: $00
    nop                                           ; $68D5: $00
    nop                                           ; $68D6: $00
    nop                                           ; $68D7: $00
    nop                                           ; $68D8: $00
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
    nop                                           ; $68E7: $00
    nop                                           ; $68E8: $00
    nop                                           ; $68E9: $00
    nop                                           ; $68EA: $00
    nop                                           ; $68EB: $00
    nop                                           ; $68EC: $00
    nop                                           ; $68ED: $00
    nop                                           ; $68EE: $00
    nop                                           ; $68EF: $00
    nop                                           ; $68F0: $00
    nop                                           ; $68F1: $00
    nop                                           ; $68F2: $00
    nop                                           ; $68F3: $00
    nop                                           ; $68F4: $00
    nop                                           ; $68F5: $00
    nop                                           ; $68F6: $00
    nop                                           ; $68F7: $00
    nop                                           ; $68F8: $00
    nop                                           ; $68F9: $00
    nop                                           ; $68FA: $00
    nop                                           ; $68FB: $00
    nop                                           ; $68FC: $00
    nop                                           ; $68FD: $00
    nop                                           ; $68FE: $00
    nop                                           ; $68FF: $00
    nop                                           ; $6900: $00
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    nop                                           ; $6908: $00
    nop                                           ; $6909: $00
    nop                                           ; $690A: $00
    nop                                           ; $690B: $00
    nop                                           ; $690C: $00
    nop                                           ; $690D: $00
    nop                                           ; $690E: $00
    nop                                           ; $690F: $00
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    nop                                           ; $6914: $00
    nop                                           ; $6915: $00
    nop                                           ; $6916: $00
    nop                                           ; $6917: $00
    nop                                           ; $6918: $00
    nop                                           ; $6919: $00
    nop                                           ; $691A: $00
    nop                                           ; $691B: $00
    nop                                           ; $691C: $00
    nop                                           ; $691D: $00
    nop                                           ; $691E: $00
    nop                                           ; $691F: $00
    nop                                           ; $6920: $00
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    nop                                           ; $6923: $00
    nop                                           ; $6924: $00
    nop                                           ; $6925: $00
    nop                                           ; $6926: $00
    nop                                           ; $6927: $00
    nop                                           ; $6928: $00
    nop                                           ; $6929: $00
    nop                                           ; $692A: $00
    nop                                           ; $692B: $00
    nop                                           ; $692C: $00
    nop                                           ; $692D: $00
    nop                                           ; $692E: $00
    nop                                           ; $692F: $00
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00
    nop                                           ; $6939: $00
    nop                                           ; $693A: $00
    nop                                           ; $693B: $00
    nop                                           ; $693C: $00
    nop                                           ; $693D: $00
    nop                                           ; $693E: $00
    nop                                           ; $693F: $00
    nop                                           ; $6940: $00
    nop                                           ; $6941: $00
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    nop                                           ; $6944: $00
    nop                                           ; $6945: $00
    nop                                           ; $6946: $00
    nop                                           ; $6947: $00
    nop                                           ; $6948: $00
    nop                                           ; $6949: $00
    nop                                           ; $694A: $00
    nop                                           ; $694B: $00
    nop                                           ; $694C: $00
    nop                                           ; $694D: $00
    nop                                           ; $694E: $00
    nop                                           ; $694F: $00
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    nop                                           ; $6954: $00
    nop                                           ; $6955: $00
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    nop                                           ; $6958: $00
    nop                                           ; $6959: $00
    nop                                           ; $695A: $00
    nop                                           ; $695B: $00
    nop                                           ; $695C: $00
    nop                                           ; $695D: $00
    nop                                           ; $695E: $00
    nop                                           ; $695F: $00
    nop                                           ; $6960: $00
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    nop                                           ; $696A: $00
    nop                                           ; $696B: $00
    nop                                           ; $696C: $00
    nop                                           ; $696D: $00
    nop                                           ; $696E: $00
    nop                                           ; $696F: $00
    nop                                           ; $6970: $00
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    nop                                           ; $6973: $00
    nop                                           ; $6974: $00
    nop                                           ; $6975: $00
    nop                                           ; $6976: $00
    nop                                           ; $6977: $00
    nop                                           ; $6978: $00
    nop                                           ; $6979: $00
    nop                                           ; $697A: $00
    nop                                           ; $697B: $00
    nop                                           ; $697C: $00
    nop                                           ; $697D: $00
    nop                                           ; $697E: $00
    nop                                           ; $697F: $00
    nop                                           ; $6980: $00
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    nop                                           ; $6984: $00
    nop                                           ; $6985: $00
    nop                                           ; $6986: $00
    nop                                           ; $6987: $00
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    nop                                           ; $698A: $00
    nop                                           ; $698B: $00
    nop                                           ; $698C: $00
    nop                                           ; $698D: $00
    nop                                           ; $698E: $00
    nop                                           ; $698F: $00
    nop                                           ; $6990: $00
    nop                                           ; $6991: $00
    nop                                           ; $6992: $00
    nop                                           ; $6993: $00
    nop                                           ; $6994: $00
    nop                                           ; $6995: $00
    nop                                           ; $6996: $00
    nop                                           ; $6997: $00
    nop                                           ; $6998: $00
    nop                                           ; $6999: $00
    nop                                           ; $699A: $00
    nop                                           ; $699B: $00
    nop                                           ; $699C: $00
    nop                                           ; $699D: $00
    nop                                           ; $699E: $00
    nop                                           ; $699F: $00
    nop                                           ; $69A0: $00
    nop                                           ; $69A1: $00
    nop                                           ; $69A2: $00
    nop                                           ; $69A3: $00
    nop                                           ; $69A4: $00
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
    nop                                           ; $69B0: $00
    nop                                           ; $69B1: $00
    nop                                           ; $69B2: $00
    nop                                           ; $69B3: $00
    nop                                           ; $69B4: $00
    nop                                           ; $69B5: $00
    nop                                           ; $69B6: $00
    nop                                           ; $69B7: $00
    nop                                           ; $69B8: $00
    nop                                           ; $69B9: $00
    nop                                           ; $69BA: $00
    nop                                           ; $69BB: $00
    nop                                           ; $69BC: $00
    nop                                           ; $69BD: $00
    nop                                           ; $69BE: $00
    nop                                           ; $69BF: $00
    nop                                           ; $69C0: $00
    nop                                           ; $69C1: $00
    nop                                           ; $69C2: $00
    nop                                           ; $69C3: $00
    nop                                           ; $69C4: $00
    nop                                           ; $69C5: $00
    nop                                           ; $69C6: $00
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
    nop                                           ; $69D3: $00
    nop                                           ; $69D4: $00
    nop                                           ; $69D5: $00
    nop                                           ; $69D6: $00
    nop                                           ; $69D7: $00
    nop                                           ; $69D8: $00
    nop                                           ; $69D9: $00
    nop                                           ; $69DA: $00
    nop                                           ; $69DB: $00
    nop                                           ; $69DC: $00
    nop                                           ; $69DD: $00
    nop                                           ; $69DE: $00
    nop                                           ; $69DF: $00
    nop                                           ; $69E0: $00
    nop                                           ; $69E1: $00
    nop                                           ; $69E2: $00
    nop                                           ; $69E3: $00
    nop                                           ; $69E4: $00
    nop                                           ; $69E5: $00
    nop                                           ; $69E6: $00
    nop                                           ; $69E7: $00
    nop                                           ; $69E8: $00
    nop                                           ; $69E9: $00
    nop                                           ; $69EA: $00
    nop                                           ; $69EB: $00
    nop                                           ; $69EC: $00
    nop                                           ; $69ED: $00
    nop                                           ; $69EE: $00
    nop                                           ; $69EF: $00
    nop                                           ; $69F0: $00
    nop                                           ; $69F1: $00
    nop                                           ; $69F2: $00
    nop                                           ; $69F3: $00
    nop                                           ; $69F4: $00
    nop                                           ; $69F5: $00
    nop                                           ; $69F6: $00
    nop                                           ; $69F7: $00
    nop                                           ; $69F8: $00
    nop                                           ; $69F9: $00
    nop                                           ; $69FA: $00
    nop                                           ; $69FB: $00
    nop                                           ; $69FC: $00
    nop                                           ; $69FD: $00
    nop                                           ; $69FE: $00
    nop                                           ; $69FF: $00
    nop                                           ; $6A00: $00
    nop                                           ; $6A01: $00
    nop                                           ; $6A02: $00
    nop                                           ; $6A03: $00
    nop                                           ; $6A04: $00
    nop                                           ; $6A05: $00
    nop                                           ; $6A06: $00
    nop                                           ; $6A07: $00
    nop                                           ; $6A08: $00
    nop                                           ; $6A09: $00
    nop                                           ; $6A0A: $00
    nop                                           ; $6A0B: $00
    nop                                           ; $6A0C: $00
    nop                                           ; $6A0D: $00
    nop                                           ; $6A0E: $00
    nop                                           ; $6A0F: $00
    nop                                           ; $6A10: $00
    nop                                           ; $6A11: $00
    nop                                           ; $6A12: $00
    nop                                           ; $6A13: $00
    nop                                           ; $6A14: $00
    nop                                           ; $6A15: $00
    nop                                           ; $6A16: $00
    nop                                           ; $6A17: $00
    nop                                           ; $6A18: $00
    nop                                           ; $6A19: $00
    nop                                           ; $6A1A: $00
    nop                                           ; $6A1B: $00
    nop                                           ; $6A1C: $00
    nop                                           ; $6A1D: $00
    nop                                           ; $6A1E: $00
    nop                                           ; $6A1F: $00
    nop                                           ; $6A20: $00
    nop                                           ; $6A21: $00
    nop                                           ; $6A22: $00
    nop                                           ; $6A23: $00
    nop                                           ; $6A24: $00
    nop                                           ; $6A25: $00
    nop                                           ; $6A26: $00
    nop                                           ; $6A27: $00
    nop                                           ; $6A28: $00
    nop                                           ; $6A29: $00
    nop                                           ; $6A2A: $00
    nop                                           ; $6A2B: $00
    nop                                           ; $6A2C: $00
    nop                                           ; $6A2D: $00
    nop                                           ; $6A2E: $00
    nop                                           ; $6A2F: $00
    nop                                           ; $6A30: $00
    nop                                           ; $6A31: $00
    nop                                           ; $6A32: $00
    nop                                           ; $6A33: $00
    nop                                           ; $6A34: $00
    nop                                           ; $6A35: $00
    nop                                           ; $6A36: $00
    nop                                           ; $6A37: $00
    nop                                           ; $6A38: $00
    nop                                           ; $6A39: $00
    nop                                           ; $6A3A: $00
    nop                                           ; $6A3B: $00
    nop                                           ; $6A3C: $00
    nop                                           ; $6A3D: $00
    nop                                           ; $6A3E: $00
    nop                                           ; $6A3F: $00
    nop                                           ; $6A40: $00
    nop                                           ; $6A41: $00
    nop                                           ; $6A42: $00
    nop                                           ; $6A43: $00
    nop                                           ; $6A44: $00
    nop                                           ; $6A45: $00
    nop                                           ; $6A46: $00
    nop                                           ; $6A47: $00
    nop                                           ; $6A48: $00
    nop                                           ; $6A49: $00
    nop                                           ; $6A4A: $00
    nop                                           ; $6A4B: $00
    nop                                           ; $6A4C: $00
    nop                                           ; $6A4D: $00
    nop                                           ; $6A4E: $00
    nop                                           ; $6A4F: $00
    nop                                           ; $6A50: $00
    nop                                           ; $6A51: $00
    nop                                           ; $6A52: $00
    nop                                           ; $6A53: $00
    nop                                           ; $6A54: $00
    nop                                           ; $6A55: $00
    nop                                           ; $6A56: $00
    nop                                           ; $6A57: $00
    nop                                           ; $6A58: $00
    nop                                           ; $6A59: $00
    nop                                           ; $6A5A: $00
    nop                                           ; $6A5B: $00
    nop                                           ; $6A5C: $00
    nop                                           ; $6A5D: $00
    nop                                           ; $6A5E: $00
    nop                                           ; $6A5F: $00
    nop                                           ; $6A60: $00
    nop                                           ; $6A61: $00
    nop                                           ; $6A62: $00
    nop                                           ; $6A63: $00
    nop                                           ; $6A64: $00
    nop                                           ; $6A65: $00
    nop                                           ; $6A66: $00
    nop                                           ; $6A67: $00
    nop                                           ; $6A68: $00
    nop                                           ; $6A69: $00
    nop                                           ; $6A6A: $00
    nop                                           ; $6A6B: $00
    nop                                           ; $6A6C: $00
    nop                                           ; $6A6D: $00
    nop                                           ; $6A6E: $00
    nop                                           ; $6A6F: $00
    nop                                           ; $6A70: $00
    nop                                           ; $6A71: $00
    nop                                           ; $6A72: $00
    nop                                           ; $6A73: $00
    nop                                           ; $6A74: $00
    nop                                           ; $6A75: $00
    nop                                           ; $6A76: $00
    nop                                           ; $6A77: $00
    nop                                           ; $6A78: $00
    nop                                           ; $6A79: $00
    nop                                           ; $6A7A: $00
    nop                                           ; $6A7B: $00
    nop                                           ; $6A7C: $00
    nop                                           ; $6A7D: $00
    nop                                           ; $6A7E: $00
    nop                                           ; $6A7F: $00
    nop                                           ; $6A80: $00
    nop                                           ; $6A81: $00
    nop                                           ; $6A82: $00
    nop                                           ; $6A83: $00
    nop                                           ; $6A84: $00
    nop                                           ; $6A85: $00
    nop                                           ; $6A86: $00
    nop                                           ; $6A87: $00
    nop                                           ; $6A88: $00
    nop                                           ; $6A89: $00
    nop                                           ; $6A8A: $00
    nop                                           ; $6A8B: $00
    nop                                           ; $6A8C: $00
    nop                                           ; $6A8D: $00
    nop                                           ; $6A8E: $00
    nop                                           ; $6A8F: $00
    nop                                           ; $6A90: $00
    nop                                           ; $6A91: $00
    nop                                           ; $6A92: $00
    nop                                           ; $6A93: $00
    nop                                           ; $6A94: $00
    nop                                           ; $6A95: $00
    nop                                           ; $6A96: $00
    nop                                           ; $6A97: $00
    nop                                           ; $6A98: $00
    nop                                           ; $6A99: $00
    nop                                           ; $6A9A: $00
    nop                                           ; $6A9B: $00
    nop                                           ; $6A9C: $00
    nop                                           ; $6A9D: $00
    nop                                           ; $6A9E: $00
    nop                                           ; $6A9F: $00
    nop                                           ; $6AA0: $00
    nop                                           ; $6AA1: $00
    nop                                           ; $6AA2: $00
    nop                                           ; $6AA3: $00
    nop                                           ; $6AA4: $00
    nop                                           ; $6AA5: $00
    nop                                           ; $6AA6: $00
    nop                                           ; $6AA7: $00
    nop                                           ; $6AA8: $00
    nop                                           ; $6AA9: $00
    nop                                           ; $6AAA: $00
    nop                                           ; $6AAB: $00
    nop                                           ; $6AAC: $00
    nop                                           ; $6AAD: $00
    nop                                           ; $6AAE: $00
    nop                                           ; $6AAF: $00
    nop                                           ; $6AB0: $00
    nop                                           ; $6AB1: $00
    nop                                           ; $6AB2: $00
    nop                                           ; $6AB3: $00
    nop                                           ; $6AB4: $00
    nop                                           ; $6AB5: $00
    nop                                           ; $6AB6: $00
    nop                                           ; $6AB7: $00
    nop                                           ; $6AB8: $00
    nop                                           ; $6AB9: $00
    nop                                           ; $6ABA: $00
    nop                                           ; $6ABB: $00
    nop                                           ; $6ABC: $00
    nop                                           ; $6ABD: $00
    nop                                           ; $6ABE: $00
    nop                                           ; $6ABF: $00
    nop                                           ; $6AC0: $00
    nop                                           ; $6AC1: $00
    nop                                           ; $6AC2: $00
    nop                                           ; $6AC3: $00
    nop                                           ; $6AC4: $00
    nop                                           ; $6AC5: $00
    nop                                           ; $6AC6: $00
    nop                                           ; $6AC7: $00
    nop                                           ; $6AC8: $00
    nop                                           ; $6AC9: $00
    nop                                           ; $6ACA: $00
    nop                                           ; $6ACB: $00
    nop                                           ; $6ACC: $00
    nop                                           ; $6ACD: $00
    nop                                           ; $6ACE: $00
    nop                                           ; $6ACF: $00
    nop                                           ; $6AD0: $00
    nop                                           ; $6AD1: $00
    nop                                           ; $6AD2: $00
    nop                                           ; $6AD3: $00
    nop                                           ; $6AD4: $00
    nop                                           ; $6AD5: $00
    nop                                           ; $6AD6: $00
    nop                                           ; $6AD7: $00
    nop                                           ; $6AD8: $00
    nop                                           ; $6AD9: $00
    nop                                           ; $6ADA: $00
    nop                                           ; $6ADB: $00
    nop                                           ; $6ADC: $00
    nop                                           ; $6ADD: $00
    nop                                           ; $6ADE: $00
    nop                                           ; $6ADF: $00
    nop                                           ; $6AE0: $00
    nop                                           ; $6AE1: $00
    nop                                           ; $6AE2: $00
    nop                                           ; $6AE3: $00
    nop                                           ; $6AE4: $00
    nop                                           ; $6AE5: $00
    nop                                           ; $6AE6: $00
    nop                                           ; $6AE7: $00
    nop                                           ; $6AE8: $00
    nop                                           ; $6AE9: $00
    nop                                           ; $6AEA: $00
    nop                                           ; $6AEB: $00
    nop                                           ; $6AEC: $00
    nop                                           ; $6AED: $00
    nop                                           ; $6AEE: $00
    nop                                           ; $6AEF: $00
    nop                                           ; $6AF0: $00
    nop                                           ; $6AF1: $00
    nop                                           ; $6AF2: $00
    nop                                           ; $6AF3: $00
    nop                                           ; $6AF4: $00
    nop                                           ; $6AF5: $00
    nop                                           ; $6AF6: $00
    nop                                           ; $6AF7: $00
    nop                                           ; $6AF8: $00
    nop                                           ; $6AF9: $00
    nop                                           ; $6AFA: $00
    nop                                           ; $6AFB: $00
    nop                                           ; $6AFC: $00
    nop                                           ; $6AFD: $00
    nop                                           ; $6AFE: $00
    nop                                           ; $6AFF: $00
    nop                                           ; $6B00: $00
    nop                                           ; $6B01: $00
    nop                                           ; $6B02: $00
    nop                                           ; $6B03: $00
    nop                                           ; $6B04: $00
    nop                                           ; $6B05: $00
    nop                                           ; $6B06: $00
    nop                                           ; $6B07: $00
    nop                                           ; $6B08: $00
    nop                                           ; $6B09: $00
    nop                                           ; $6B0A: $00
    nop                                           ; $6B0B: $00
    nop                                           ; $6B0C: $00
    nop                                           ; $6B0D: $00
    nop                                           ; $6B0E: $00
    nop                                           ; $6B0F: $00
    nop                                           ; $6B10: $00
    nop                                           ; $6B11: $00
    nop                                           ; $6B12: $00
    nop                                           ; $6B13: $00
    nop                                           ; $6B14: $00
    nop                                           ; $6B15: $00
    nop                                           ; $6B16: $00
    nop                                           ; $6B17: $00
    nop                                           ; $6B18: $00
    nop                                           ; $6B19: $00
    nop                                           ; $6B1A: $00
    nop                                           ; $6B1B: $00
    nop                                           ; $6B1C: $00
    nop                                           ; $6B1D: $00
    nop                                           ; $6B1E: $00
    nop                                           ; $6B1F: $00
    nop                                           ; $6B20: $00
    nop                                           ; $6B21: $00
    nop                                           ; $6B22: $00
    nop                                           ; $6B23: $00
    nop                                           ; $6B24: $00
    nop                                           ; $6B25: $00
    nop                                           ; $6B26: $00
    nop                                           ; $6B27: $00
    nop                                           ; $6B28: $00
    nop                                           ; $6B29: $00
    nop                                           ; $6B2A: $00
    nop                                           ; $6B2B: $00
    nop                                           ; $6B2C: $00
    nop                                           ; $6B2D: $00
    nop                                           ; $6B2E: $00
    nop                                           ; $6B2F: $00
    nop                                           ; $6B30: $00
    nop                                           ; $6B31: $00
    nop                                           ; $6B32: $00
    nop                                           ; $6B33: $00
    nop                                           ; $6B34: $00
    nop                                           ; $6B35: $00
    nop                                           ; $6B36: $00
    nop                                           ; $6B37: $00
    nop                                           ; $6B38: $00
    nop                                           ; $6B39: $00
    nop                                           ; $6B3A: $00
    nop                                           ; $6B3B: $00
    nop                                           ; $6B3C: $00
    nop                                           ; $6B3D: $00
    nop                                           ; $6B3E: $00
    nop                                           ; $6B3F: $00
    nop                                           ; $6B40: $00
    nop                                           ; $6B41: $00
    nop                                           ; $6B42: $00
    nop                                           ; $6B43: $00
    nop                                           ; $6B44: $00
    nop                                           ; $6B45: $00
    nop                                           ; $6B46: $00
    nop                                           ; $6B47: $00
    nop                                           ; $6B48: $00
    nop                                           ; $6B49: $00
    nop                                           ; $6B4A: $00
    nop                                           ; $6B4B: $00
    nop                                           ; $6B4C: $00
    nop                                           ; $6B4D: $00
    nop                                           ; $6B4E: $00
    nop                                           ; $6B4F: $00
    nop                                           ; $6B50: $00
    nop                                           ; $6B51: $00
    nop                                           ; $6B52: $00
    nop                                           ; $6B53: $00
    nop                                           ; $6B54: $00
    nop                                           ; $6B55: $00
    nop                                           ; $6B56: $00
    nop                                           ; $6B57: $00
    nop                                           ; $6B58: $00
    nop                                           ; $6B59: $00
    nop                                           ; $6B5A: $00
    nop                                           ; $6B5B: $00
    nop                                           ; $6B5C: $00
    nop                                           ; $6B5D: $00
    nop                                           ; $6B5E: $00
    nop                                           ; $6B5F: $00
    nop                                           ; $6B60: $00
    nop                                           ; $6B61: $00
    nop                                           ; $6B62: $00
    nop                                           ; $6B63: $00
    nop                                           ; $6B64: $00
    nop                                           ; $6B65: $00
    nop                                           ; $6B66: $00
    nop                                           ; $6B67: $00
    nop                                           ; $6B68: $00
    nop                                           ; $6B69: $00
    nop                                           ; $6B6A: $00
    nop                                           ; $6B6B: $00
    nop                                           ; $6B6C: $00
    nop                                           ; $6B6D: $00
    nop                                           ; $6B6E: $00
    nop                                           ; $6B6F: $00
    nop                                           ; $6B70: $00
    nop                                           ; $6B71: $00
    nop                                           ; $6B72: $00
    nop                                           ; $6B73: $00
    nop                                           ; $6B74: $00
    nop                                           ; $6B75: $00
    nop                                           ; $6B76: $00
    nop                                           ; $6B77: $00
    nop                                           ; $6B78: $00
    nop                                           ; $6B79: $00
    nop                                           ; $6B7A: $00
    nop                                           ; $6B7B: $00
    nop                                           ; $6B7C: $00
    nop                                           ; $6B7D: $00
    nop                                           ; $6B7E: $00
    nop                                           ; $6B7F: $00
    nop                                           ; $6B80: $00
    nop                                           ; $6B81: $00
    nop                                           ; $6B82: $00
    nop                                           ; $6B83: $00
    nop                                           ; $6B84: $00
    nop                                           ; $6B85: $00
    nop                                           ; $6B86: $00
    nop                                           ; $6B87: $00
    nop                                           ; $6B88: $00
    nop                                           ; $6B89: $00
    nop                                           ; $6B8A: $00
    nop                                           ; $6B8B: $00
    nop                                           ; $6B8C: $00
    nop                                           ; $6B8D: $00
    nop                                           ; $6B8E: $00
    nop                                           ; $6B8F: $00
    nop                                           ; $6B90: $00
    nop                                           ; $6B91: $00
    nop                                           ; $6B92: $00
    nop                                           ; $6B93: $00
    nop                                           ; $6B94: $00
    nop                                           ; $6B95: $00
    nop                                           ; $6B96: $00
    nop                                           ; $6B97: $00
    nop                                           ; $6B98: $00
    nop                                           ; $6B99: $00
    nop                                           ; $6B9A: $00
    nop                                           ; $6B9B: $00
    nop                                           ; $6B9C: $00
    nop                                           ; $6B9D: $00
    nop                                           ; $6B9E: $00
    nop                                           ; $6B9F: $00
    nop                                           ; $6BA0: $00
    nop                                           ; $6BA1: $00
    nop                                           ; $6BA2: $00
    nop                                           ; $6BA3: $00
    nop                                           ; $6BA4: $00
    nop                                           ; $6BA5: $00
    nop                                           ; $6BA6: $00
    nop                                           ; $6BA7: $00
    nop                                           ; $6BA8: $00
    nop                                           ; $6BA9: $00
    nop                                           ; $6BAA: $00
    nop                                           ; $6BAB: $00
    nop                                           ; $6BAC: $00
    nop                                           ; $6BAD: $00
    nop                                           ; $6BAE: $00
    nop                                           ; $6BAF: $00
    nop                                           ; $6BB0: $00
    nop                                           ; $6BB1: $00
    nop                                           ; $6BB2: $00
    nop                                           ; $6BB3: $00
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
    nop                                           ; $6BBF: $00
    nop                                           ; $6BC0: $00
    nop                                           ; $6BC1: $00
    nop                                           ; $6BC2: $00
    nop                                           ; $6BC3: $00
    nop                                           ; $6BC4: $00
    nop                                           ; $6BC5: $00
    nop                                           ; $6BC6: $00
    nop                                           ; $6BC7: $00
    nop                                           ; $6BC8: $00
    nop                                           ; $6BC9: $00
    nop                                           ; $6BCA: $00
    nop                                           ; $6BCB: $00
    nop                                           ; $6BCC: $00
    nop                                           ; $6BCD: $00
    nop                                           ; $6BCE: $00
    nop                                           ; $6BCF: $00
    nop                                           ; $6BD0: $00
    nop                                           ; $6BD1: $00
    nop                                           ; $6BD2: $00
    nop                                           ; $6BD3: $00
    nop                                           ; $6BD4: $00
    nop                                           ; $6BD5: $00
    nop                                           ; $6BD6: $00
    nop                                           ; $6BD7: $00
    nop                                           ; $6BD8: $00
    nop                                           ; $6BD9: $00
    nop                                           ; $6BDA: $00
    nop                                           ; $6BDB: $00
    nop                                           ; $6BDC: $00
    nop                                           ; $6BDD: $00
    nop                                           ; $6BDE: $00
    nop                                           ; $6BDF: $00
    nop                                           ; $6BE0: $00
    nop                                           ; $6BE1: $00
    nop                                           ; $6BE2: $00
    nop                                           ; $6BE3: $00
    nop                                           ; $6BE4: $00
    nop                                           ; $6BE5: $00
    nop                                           ; $6BE6: $00
    nop                                           ; $6BE7: $00
    nop                                           ; $6BE8: $00
    nop                                           ; $6BE9: $00
    nop                                           ; $6BEA: $00
    nop                                           ; $6BEB: $00
    nop                                           ; $6BEC: $00
    nop                                           ; $6BED: $00
    nop                                           ; $6BEE: $00
    nop                                           ; $6BEF: $00
    nop                                           ; $6BF0: $00
    nop                                           ; $6BF1: $00
    nop                                           ; $6BF2: $00
    nop                                           ; $6BF3: $00
    nop                                           ; $6BF4: $00
    nop                                           ; $6BF5: $00
    nop                                           ; $6BF6: $00
    nop                                           ; $6BF7: $00
    nop                                           ; $6BF8: $00
    nop                                           ; $6BF9: $00
    nop                                           ; $6BFA: $00
    nop                                           ; $6BFB: $00
    nop                                           ; $6BFC: $00
    nop                                           ; $6BFD: $00
    nop                                           ; $6BFE: $00
    nop                                           ; $6BFF: $00
    nop                                           ; $6C00: $00
    nop                                           ; $6C01: $00
    nop                                           ; $6C02: $00
    nop                                           ; $6C03: $00
    nop                                           ; $6C04: $00
    nop                                           ; $6C05: $00
    nop                                           ; $6C06: $00
    nop                                           ; $6C07: $00
    nop                                           ; $6C08: $00
    nop                                           ; $6C09: $00
    nop                                           ; $6C0A: $00
    nop                                           ; $6C0B: $00
    nop                                           ; $6C0C: $00
    nop                                           ; $6C0D: $00
    nop                                           ; $6C0E: $00
    nop                                           ; $6C0F: $00
    nop                                           ; $6C10: $00
    nop                                           ; $6C11: $00
    nop                                           ; $6C12: $00
    nop                                           ; $6C13: $00
    nop                                           ; $6C14: $00
    nop                                           ; $6C15: $00
    nop                                           ; $6C16: $00
    nop                                           ; $6C17: $00
    nop                                           ; $6C18: $00
    nop                                           ; $6C19: $00
    nop                                           ; $6C1A: $00
    nop                                           ; $6C1B: $00
    nop                                           ; $6C1C: $00
    nop                                           ; $6C1D: $00
    nop                                           ; $6C1E: $00
    nop                                           ; $6C1F: $00
    nop                                           ; $6C20: $00
    nop                                           ; $6C21: $00
    nop                                           ; $6C22: $00
    nop                                           ; $6C23: $00
    nop                                           ; $6C24: $00
    nop                                           ; $6C25: $00
    nop                                           ; $6C26: $00
    nop                                           ; $6C27: $00
    nop                                           ; $6C28: $00
    nop                                           ; $6C29: $00
    nop                                           ; $6C2A: $00
    nop                                           ; $6C2B: $00
    nop                                           ; $6C2C: $00
    nop                                           ; $6C2D: $00
    nop                                           ; $6C2E: $00
    nop                                           ; $6C2F: $00
    nop                                           ; $6C30: $00
    nop                                           ; $6C31: $00
    nop                                           ; $6C32: $00
    nop                                           ; $6C33: $00
    nop                                           ; $6C34: $00
    nop                                           ; $6C35: $00
    nop                                           ; $6C36: $00
    nop                                           ; $6C37: $00
    nop                                           ; $6C38: $00
    nop                                           ; $6C39: $00
    nop                                           ; $6C3A: $00
    nop                                           ; $6C3B: $00
    nop                                           ; $6C3C: $00
    nop                                           ; $6C3D: $00
    nop                                           ; $6C3E: $00
    nop                                           ; $6C3F: $00
    nop                                           ; $6C40: $00
    nop                                           ; $6C41: $00
    nop                                           ; $6C42: $00
    nop                                           ; $6C43: $00
    nop                                           ; $6C44: $00
    nop                                           ; $6C45: $00
    nop                                           ; $6C46: $00
    nop                                           ; $6C47: $00
    nop                                           ; $6C48: $00
    nop                                           ; $6C49: $00
    nop                                           ; $6C4A: $00
    nop                                           ; $6C4B: $00
    nop                                           ; $6C4C: $00
    nop                                           ; $6C4D: $00
    nop                                           ; $6C4E: $00
    nop                                           ; $6C4F: $00
    nop                                           ; $6C50: $00
    nop                                           ; $6C51: $00
    nop                                           ; $6C52: $00
    nop                                           ; $6C53: $00
    nop                                           ; $6C54: $00
    nop                                           ; $6C55: $00
    nop                                           ; $6C56: $00
    nop                                           ; $6C57: $00
    nop                                           ; $6C58: $00
    nop                                           ; $6C59: $00
    nop                                           ; $6C5A: $00
    nop                                           ; $6C5B: $00
    nop                                           ; $6C5C: $00
    nop                                           ; $6C5D: $00
    nop                                           ; $6C5E: $00
    nop                                           ; $6C5F: $00
    nop                                           ; $6C60: $00
    nop                                           ; $6C61: $00
    nop                                           ; $6C62: $00
    nop                                           ; $6C63: $00
    nop                                           ; $6C64: $00
    nop                                           ; $6C65: $00
    nop                                           ; $6C66: $00
    nop                                           ; $6C67: $00
    nop                                           ; $6C68: $00
    nop                                           ; $6C69: $00
    nop                                           ; $6C6A: $00
    nop                                           ; $6C6B: $00
    nop                                           ; $6C6C: $00
    nop                                           ; $6C6D: $00
    nop                                           ; $6C6E: $00
    nop                                           ; $6C6F: $00
    nop                                           ; $6C70: $00
    nop                                           ; $6C71: $00
    nop                                           ; $6C72: $00
    nop                                           ; $6C73: $00
    nop                                           ; $6C74: $00
    nop                                           ; $6C75: $00
    nop                                           ; $6C76: $00
    nop                                           ; $6C77: $00
    nop                                           ; $6C78: $00
    nop                                           ; $6C79: $00
    nop                                           ; $6C7A: $00
    nop                                           ; $6C7B: $00
    nop                                           ; $6C7C: $00
    nop                                           ; $6C7D: $00
    nop                                           ; $6C7E: $00
    nop                                           ; $6C7F: $00
    nop                                           ; $6C80: $00
    nop                                           ; $6C81: $00
    nop                                           ; $6C82: $00
    nop                                           ; $6C83: $00
    nop                                           ; $6C84: $00
    nop                                           ; $6C85: $00
    nop                                           ; $6C86: $00
    nop                                           ; $6C87: $00
    nop                                           ; $6C88: $00
    nop                                           ; $6C89: $00
    nop                                           ; $6C8A: $00
    nop                                           ; $6C8B: $00
    nop                                           ; $6C8C: $00
    nop                                           ; $6C8D: $00
    nop                                           ; $6C8E: $00
    nop                                           ; $6C8F: $00
    nop                                           ; $6C90: $00
    nop                                           ; $6C91: $00
    nop                                           ; $6C92: $00
    nop                                           ; $6C93: $00
    nop                                           ; $6C94: $00
    nop                                           ; $6C95: $00
    nop                                           ; $6C96: $00
    nop                                           ; $6C97: $00
    nop                                           ; $6C98: $00
    nop                                           ; $6C99: $00
    nop                                           ; $6C9A: $00
    nop                                           ; $6C9B: $00
    nop                                           ; $6C9C: $00
    nop                                           ; $6C9D: $00
    nop                                           ; $6C9E: $00
    nop                                           ; $6C9F: $00
    nop                                           ; $6CA0: $00
    nop                                           ; $6CA1: $00
    nop                                           ; $6CA2: $00
    nop                                           ; $6CA3: $00
    nop                                           ; $6CA4: $00
    nop                                           ; $6CA5: $00
    nop                                           ; $6CA6: $00
    nop                                           ; $6CA7: $00
    nop                                           ; $6CA8: $00
    nop                                           ; $6CA9: $00
    nop                                           ; $6CAA: $00
    nop                                           ; $6CAB: $00
    nop                                           ; $6CAC: $00
    nop                                           ; $6CAD: $00
    nop                                           ; $6CAE: $00
    nop                                           ; $6CAF: $00
    nop                                           ; $6CB0: $00
    nop                                           ; $6CB1: $00
    nop                                           ; $6CB2: $00
    nop                                           ; $6CB3: $00
    nop                                           ; $6CB4: $00
    nop                                           ; $6CB5: $00
    nop                                           ; $6CB6: $00
    nop                                           ; $6CB7: $00
    nop                                           ; $6CB8: $00
    nop                                           ; $6CB9: $00
    nop                                           ; $6CBA: $00
    nop                                           ; $6CBB: $00
    nop                                           ; $6CBC: $00
    nop                                           ; $6CBD: $00
    nop                                           ; $6CBE: $00
    nop                                           ; $6CBF: $00
    nop                                           ; $6CC0: $00
    nop                                           ; $6CC1: $00
    nop                                           ; $6CC2: $00
    nop                                           ; $6CC3: $00
    nop                                           ; $6CC4: $00
    nop                                           ; $6CC5: $00
    nop                                           ; $6CC6: $00
    nop                                           ; $6CC7: $00
    nop                                           ; $6CC8: $00
    nop                                           ; $6CC9: $00
    nop                                           ; $6CCA: $00
    nop                                           ; $6CCB: $00
    nop                                           ; $6CCC: $00
    nop                                           ; $6CCD: $00
    nop                                           ; $6CCE: $00
    nop                                           ; $6CCF: $00
    nop                                           ; $6CD0: $00
    nop                                           ; $6CD1: $00
    nop                                           ; $6CD2: $00
    nop                                           ; $6CD3: $00
    nop                                           ; $6CD4: $00
    nop                                           ; $6CD5: $00
    nop                                           ; $6CD6: $00
    nop                                           ; $6CD7: $00
    nop                                           ; $6CD8: $00
    nop                                           ; $6CD9: $00
    nop                                           ; $6CDA: $00
    nop                                           ; $6CDB: $00
    nop                                           ; $6CDC: $00
    nop                                           ; $6CDD: $00
    nop                                           ; $6CDE: $00
    nop                                           ; $6CDF: $00
    nop                                           ; $6CE0: $00
    nop                                           ; $6CE1: $00
    nop                                           ; $6CE2: $00
    nop                                           ; $6CE3: $00
    nop                                           ; $6CE4: $00
    nop                                           ; $6CE5: $00
    nop                                           ; $6CE6: $00
    nop                                           ; $6CE7: $00
    nop                                           ; $6CE8: $00
    nop                                           ; $6CE9: $00
    nop                                           ; $6CEA: $00
    nop                                           ; $6CEB: $00
    nop                                           ; $6CEC: $00
    nop                                           ; $6CED: $00
    nop                                           ; $6CEE: $00
    nop                                           ; $6CEF: $00
    nop                                           ; $6CF0: $00
    nop                                           ; $6CF1: $00
    nop                                           ; $6CF2: $00
    nop                                           ; $6CF3: $00
    nop                                           ; $6CF4: $00
    nop                                           ; $6CF5: $00
    nop                                           ; $6CF6: $00
    nop                                           ; $6CF7: $00
    nop                                           ; $6CF8: $00
    nop                                           ; $6CF9: $00
    nop                                           ; $6CFA: $00
    nop                                           ; $6CFB: $00
    nop                                           ; $6CFC: $00
    nop                                           ; $6CFD: $00
    nop                                           ; $6CFE: $00
    nop                                           ; $6CFF: $00
    nop                                           ; $6D00: $00
    nop                                           ; $6D01: $00
    nop                                           ; $6D02: $00
    nop                                           ; $6D03: $00
    nop                                           ; $6D04: $00
    nop                                           ; $6D05: $00
    nop                                           ; $6D06: $00
    nop                                           ; $6D07: $00
    nop                                           ; $6D08: $00
    nop                                           ; $6D09: $00
    nop                                           ; $6D0A: $00
    nop                                           ; $6D0B: $00
    nop                                           ; $6D0C: $00
    nop                                           ; $6D0D: $00
    nop                                           ; $6D0E: $00
    nop                                           ; $6D0F: $00
    nop                                           ; $6D10: $00
    nop                                           ; $6D11: $00
    nop                                           ; $6D12: $00
    nop                                           ; $6D13: $00
    nop                                           ; $6D14: $00
    nop                                           ; $6D15: $00
    nop                                           ; $6D16: $00
    nop                                           ; $6D17: $00
    nop                                           ; $6D18: $00
    nop                                           ; $6D19: $00
    nop                                           ; $6D1A: $00
    nop                                           ; $6D1B: $00
    nop                                           ; $6D1C: $00
    nop                                           ; $6D1D: $00
    nop                                           ; $6D1E: $00
    nop                                           ; $6D1F: $00
    nop                                           ; $6D20: $00
    nop                                           ; $6D21: $00
    nop                                           ; $6D22: $00
    nop                                           ; $6D23: $00
    nop                                           ; $6D24: $00
    nop                                           ; $6D25: $00
    nop                                           ; $6D26: $00
    nop                                           ; $6D27: $00
    nop                                           ; $6D28: $00
    nop                                           ; $6D29: $00
    nop                                           ; $6D2A: $00
    nop                                           ; $6D2B: $00
    nop                                           ; $6D2C: $00
    nop                                           ; $6D2D: $00
    nop                                           ; $6D2E: $00
    nop                                           ; $6D2F: $00
    nop                                           ; $6D30: $00
    nop                                           ; $6D31: $00
    nop                                           ; $6D32: $00
    nop                                           ; $6D33: $00
    nop                                           ; $6D34: $00
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
    nop                                           ; $6D3F: $00
    nop                                           ; $6D40: $00
    nop                                           ; $6D41: $00
    nop                                           ; $6D42: $00
    nop                                           ; $6D43: $00
    nop                                           ; $6D44: $00
    nop                                           ; $6D45: $00
    nop                                           ; $6D46: $00
    nop                                           ; $6D47: $00
    nop                                           ; $6D48: $00
    nop                                           ; $6D49: $00
    nop                                           ; $6D4A: $00
    nop                                           ; $6D4B: $00
    nop                                           ; $6D4C: $00
    nop                                           ; $6D4D: $00
    nop                                           ; $6D4E: $00
    nop                                           ; $6D4F: $00
    nop                                           ; $6D50: $00
    nop                                           ; $6D51: $00
    nop                                           ; $6D52: $00
    nop                                           ; $6D53: $00
    nop                                           ; $6D54: $00
    nop                                           ; $6D55: $00
    nop                                           ; $6D56: $00
    nop                                           ; $6D57: $00
    nop                                           ; $6D58: $00
    nop                                           ; $6D59: $00
    nop                                           ; $6D5A: $00
    nop                                           ; $6D5B: $00
    nop                                           ; $6D5C: $00
    nop                                           ; $6D5D: $00
    nop                                           ; $6D5E: $00
    nop                                           ; $6D5F: $00
    nop                                           ; $6D60: $00
    nop                                           ; $6D61: $00
    nop                                           ; $6D62: $00
    nop                                           ; $6D63: $00
    nop                                           ; $6D64: $00
    nop                                           ; $6D65: $00
    nop                                           ; $6D66: $00
    nop                                           ; $6D67: $00
    nop                                           ; $6D68: $00
    nop                                           ; $6D69: $00
    nop                                           ; $6D6A: $00
    nop                                           ; $6D6B: $00
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
    nop                                           ; $6D79: $00
    nop                                           ; $6D7A: $00
    nop                                           ; $6D7B: $00
    nop                                           ; $6D7C: $00
    nop                                           ; $6D7D: $00
    nop                                           ; $6D7E: $00
    nop                                           ; $6D7F: $00
    nop                                           ; $6D80: $00
    nop                                           ; $6D81: $00
    nop                                           ; $6D82: $00
    nop                                           ; $6D83: $00
    nop                                           ; $6D84: $00
    nop                                           ; $6D85: $00
    nop                                           ; $6D86: $00
    nop                                           ; $6D87: $00
    nop                                           ; $6D88: $00
    nop                                           ; $6D89: $00
    nop                                           ; $6D8A: $00
    nop                                           ; $6D8B: $00
    nop                                           ; $6D8C: $00
    nop                                           ; $6D8D: $00
    nop                                           ; $6D8E: $00
    nop                                           ; $6D8F: $00
    nop                                           ; $6D90: $00
    nop                                           ; $6D91: $00
    nop                                           ; $6D92: $00
    nop                                           ; $6D93: $00
    nop                                           ; $6D94: $00
    nop                                           ; $6D95: $00
    nop                                           ; $6D96: $00
    nop                                           ; $6D97: $00
    nop                                           ; $6D98: $00
    nop                                           ; $6D99: $00
    nop                                           ; $6D9A: $00
    nop                                           ; $6D9B: $00
    nop                                           ; $6D9C: $00
    nop                                           ; $6D9D: $00
    nop                                           ; $6D9E: $00
    nop                                           ; $6D9F: $00
    nop                                           ; $6DA0: $00
    nop                                           ; $6DA1: $00
    nop                                           ; $6DA2: $00
    nop                                           ; $6DA3: $00
    nop                                           ; $6DA4: $00
    nop                                           ; $6DA5: $00
    nop                                           ; $6DA6: $00
    nop                                           ; $6DA7: $00
    nop                                           ; $6DA8: $00
    nop                                           ; $6DA9: $00
    nop                                           ; $6DAA: $00
    nop                                           ; $6DAB: $00
    nop                                           ; $6DAC: $00
    nop                                           ; $6DAD: $00
    nop                                           ; $6DAE: $00
    nop                                           ; $6DAF: $00
    nop                                           ; $6DB0: $00
    nop                                           ; $6DB1: $00
    nop                                           ; $6DB2: $00
    nop                                           ; $6DB3: $00
    nop                                           ; $6DB4: $00
    nop                                           ; $6DB5: $00
    nop                                           ; $6DB6: $00
    nop                                           ; $6DB7: $00
    nop                                           ; $6DB8: $00
    nop                                           ; $6DB9: $00
    nop                                           ; $6DBA: $00
    nop                                           ; $6DBB: $00
    nop                                           ; $6DBC: $00
    nop                                           ; $6DBD: $00
    nop                                           ; $6DBE: $00
    nop                                           ; $6DBF: $00
    nop                                           ; $6DC0: $00
    nop                                           ; $6DC1: $00
    nop                                           ; $6DC2: $00
    nop                                           ; $6DC3: $00
    nop                                           ; $6DC4: $00
    nop                                           ; $6DC5: $00
    nop                                           ; $6DC6: $00
    nop                                           ; $6DC7: $00
    nop                                           ; $6DC8: $00
    nop                                           ; $6DC9: $00
    nop                                           ; $6DCA: $00
    nop                                           ; $6DCB: $00
    nop                                           ; $6DCC: $00
    nop                                           ; $6DCD: $00
    nop                                           ; $6DCE: $00
    nop                                           ; $6DCF: $00
    nop                                           ; $6DD0: $00
    nop                                           ; $6DD1: $00
    nop                                           ; $6DD2: $00
    nop                                           ; $6DD3: $00
    nop                                           ; $6DD4: $00
    nop                                           ; $6DD5: $00
    nop                                           ; $6DD6: $00
    nop                                           ; $6DD7: $00
    nop                                           ; $6DD8: $00
    nop                                           ; $6DD9: $00
    nop                                           ; $6DDA: $00
    nop                                           ; $6DDB: $00
    nop                                           ; $6DDC: $00
    nop                                           ; $6DDD: $00
    nop                                           ; $6DDE: $00
    nop                                           ; $6DDF: $00
    nop                                           ; $6DE0: $00
    nop                                           ; $6DE1: $00
    nop                                           ; $6DE2: $00
    nop                                           ; $6DE3: $00
    nop                                           ; $6DE4: $00
    nop                                           ; $6DE5: $00
    nop                                           ; $6DE6: $00
    nop                                           ; $6DE7: $00
    nop                                           ; $6DE8: $00
    nop                                           ; $6DE9: $00
    nop                                           ; $6DEA: $00
    nop                                           ; $6DEB: $00
    nop                                           ; $6DEC: $00
    nop                                           ; $6DED: $00
    nop                                           ; $6DEE: $00
    nop                                           ; $6DEF: $00
    nop                                           ; $6DF0: $00
    nop                                           ; $6DF1: $00
    nop                                           ; $6DF2: $00
    nop                                           ; $6DF3: $00
    nop                                           ; $6DF4: $00
    nop                                           ; $6DF5: $00
    nop                                           ; $6DF6: $00
    nop                                           ; $6DF7: $00
    nop                                           ; $6DF8: $00
    nop                                           ; $6DF9: $00
    nop                                           ; $6DFA: $00
    nop                                           ; $6DFB: $00
    nop                                           ; $6DFC: $00
    nop                                           ; $6DFD: $00
    nop                                           ; $6DFE: $00
    nop                                           ; $6DFF: $00
    nop                                           ; $6E00: $00
    nop                                           ; $6E01: $00
    nop                                           ; $6E02: $00
    nop                                           ; $6E03: $00
    nop                                           ; $6E04: $00
    nop                                           ; $6E05: $00
    nop                                           ; $6E06: $00
    nop                                           ; $6E07: $00
    nop                                           ; $6E08: $00
    nop                                           ; $6E09: $00
    nop                                           ; $6E0A: $00
    nop                                           ; $6E0B: $00
    nop                                           ; $6E0C: $00
    nop                                           ; $6E0D: $00
    nop                                           ; $6E0E: $00
    nop                                           ; $6E0F: $00
    nop                                           ; $6E10: $00
    nop                                           ; $6E11: $00
    nop                                           ; $6E12: $00
    nop                                           ; $6E13: $00
    nop                                           ; $6E14: $00
    nop                                           ; $6E15: $00
    nop                                           ; $6E16: $00
    nop                                           ; $6E17: $00
    nop                                           ; $6E18: $00
    nop                                           ; $6E19: $00
    nop                                           ; $6E1A: $00
    nop                                           ; $6E1B: $00
    nop                                           ; $6E1C: $00
    nop                                           ; $6E1D: $00
    nop                                           ; $6E1E: $00
    nop                                           ; $6E1F: $00
    nop                                           ; $6E20: $00
    nop                                           ; $6E21: $00
    nop                                           ; $6E22: $00
    nop                                           ; $6E23: $00
    nop                                           ; $6E24: $00
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
    nop                                           ; $6E37: $00
    nop                                           ; $6E38: $00
    nop                                           ; $6E39: $00
    nop                                           ; $6E3A: $00
    nop                                           ; $6E3B: $00
    nop                                           ; $6E3C: $00
    nop                                           ; $6E3D: $00
    nop                                           ; $6E3E: $00
    nop                                           ; $6E3F: $00
    nop                                           ; $6E40: $00
    nop                                           ; $6E41: $00
    nop                                           ; $6E42: $00
    nop                                           ; $6E43: $00
    nop                                           ; $6E44: $00
    nop                                           ; $6E45: $00
    nop                                           ; $6E46: $00
    nop                                           ; $6E47: $00
    nop                                           ; $6E48: $00
    nop                                           ; $6E49: $00
    nop                                           ; $6E4A: $00
    nop                                           ; $6E4B: $00
    nop                                           ; $6E4C: $00
    nop                                           ; $6E4D: $00
    nop                                           ; $6E4E: $00
    nop                                           ; $6E4F: $00
    nop                                           ; $6E50: $00
    nop                                           ; $6E51: $00
    nop                                           ; $6E52: $00
    nop                                           ; $6E53: $00
    nop                                           ; $6E54: $00
    nop                                           ; $6E55: $00
    nop                                           ; $6E56: $00
    nop                                           ; $6E57: $00
    nop                                           ; $6E58: $00
    nop                                           ; $6E59: $00
    nop                                           ; $6E5A: $00
    nop                                           ; $6E5B: $00
    nop                                           ; $6E5C: $00
    nop                                           ; $6E5D: $00
    nop                                           ; $6E5E: $00
    nop                                           ; $6E5F: $00
    nop                                           ; $6E60: $00
    nop                                           ; $6E61: $00
    nop                                           ; $6E62: $00
    nop                                           ; $6E63: $00
    nop                                           ; $6E64: $00
    nop                                           ; $6E65: $00
    nop                                           ; $6E66: $00
    nop                                           ; $6E67: $00
    nop                                           ; $6E68: $00
    nop                                           ; $6E69: $00
    nop                                           ; $6E6A: $00
    nop                                           ; $6E6B: $00
    nop                                           ; $6E6C: $00
    nop                                           ; $6E6D: $00
    nop                                           ; $6E6E: $00
    nop                                           ; $6E6F: $00
    nop                                           ; $6E70: $00
    nop                                           ; $6E71: $00
    nop                                           ; $6E72: $00
    nop                                           ; $6E73: $00
    nop                                           ; $6E74: $00
    nop                                           ; $6E75: $00
    nop                                           ; $6E76: $00
    nop                                           ; $6E77: $00
    nop                                           ; $6E78: $00
    nop                                           ; $6E79: $00
    nop                                           ; $6E7A: $00
    nop                                           ; $6E7B: $00
    nop                                           ; $6E7C: $00
    nop                                           ; $6E7D: $00
    nop                                           ; $6E7E: $00
    nop                                           ; $6E7F: $00
    nop                                           ; $6E80: $00
    nop                                           ; $6E81: $00
    nop                                           ; $6E82: $00
    nop                                           ; $6E83: $00
    nop                                           ; $6E84: $00
    nop                                           ; $6E85: $00
    nop                                           ; $6E86: $00
    nop                                           ; $6E87: $00
    nop                                           ; $6E88: $00
    nop                                           ; $6E89: $00
    nop                                           ; $6E8A: $00
    nop                                           ; $6E8B: $00
    nop                                           ; $6E8C: $00
    nop                                           ; $6E8D: $00
    nop                                           ; $6E8E: $00
    nop                                           ; $6E8F: $00
    nop                                           ; $6E90: $00
    nop                                           ; $6E91: $00
    nop                                           ; $6E92: $00
    nop                                           ; $6E93: $00
    nop                                           ; $6E94: $00
    nop                                           ; $6E95: $00
    nop                                           ; $6E96: $00
    nop                                           ; $6E97: $00
    nop                                           ; $6E98: $00
    nop                                           ; $6E99: $00
    nop                                           ; $6E9A: $00
    nop                                           ; $6E9B: $00
    nop                                           ; $6E9C: $00
    nop                                           ; $6E9D: $00
    nop                                           ; $6E9E: $00
    nop                                           ; $6E9F: $00
    nop                                           ; $6EA0: $00
    nop                                           ; $6EA1: $00
    nop                                           ; $6EA2: $00
    nop                                           ; $6EA3: $00
    nop                                           ; $6EA4: $00
    nop                                           ; $6EA5: $00
    nop                                           ; $6EA6: $00
    nop                                           ; $6EA7: $00
    nop                                           ; $6EA8: $00
    nop                                           ; $6EA9: $00
    nop                                           ; $6EAA: $00
    nop                                           ; $6EAB: $00
    nop                                           ; $6EAC: $00
    nop                                           ; $6EAD: $00
    nop                                           ; $6EAE: $00
    nop                                           ; $6EAF: $00
    nop                                           ; $6EB0: $00
    nop                                           ; $6EB1: $00
    nop                                           ; $6EB2: $00
    nop                                           ; $6EB3: $00
    nop                                           ; $6EB4: $00
    nop                                           ; $6EB5: $00
    nop                                           ; $6EB6: $00
    nop                                           ; $6EB7: $00
    nop                                           ; $6EB8: $00
    nop                                           ; $6EB9: $00
    nop                                           ; $6EBA: $00
    nop                                           ; $6EBB: $00
    nop                                           ; $6EBC: $00
    nop                                           ; $6EBD: $00
    nop                                           ; $6EBE: $00
    nop                                           ; $6EBF: $00
    nop                                           ; $6EC0: $00
    nop                                           ; $6EC1: $00
    nop                                           ; $6EC2: $00
    nop                                           ; $6EC3: $00
    nop                                           ; $6EC4: $00
    nop                                           ; $6EC5: $00
    nop                                           ; $6EC6: $00
    nop                                           ; $6EC7: $00
    nop                                           ; $6EC8: $00
    nop                                           ; $6EC9: $00
    nop                                           ; $6ECA: $00
    nop                                           ; $6ECB: $00
    nop                                           ; $6ECC: $00
    nop                                           ; $6ECD: $00
    nop                                           ; $6ECE: $00
    nop                                           ; $6ECF: $00
    nop                                           ; $6ED0: $00
    nop                                           ; $6ED1: $00
    nop                                           ; $6ED2: $00
    nop                                           ; $6ED3: $00
    nop                                           ; $6ED4: $00
    nop                                           ; $6ED5: $00
    nop                                           ; $6ED6: $00
    nop                                           ; $6ED7: $00
    nop                                           ; $6ED8: $00
    nop                                           ; $6ED9: $00
    nop                                           ; $6EDA: $00
    nop                                           ; $6EDB: $00
    nop                                           ; $6EDC: $00
    nop                                           ; $6EDD: $00
    nop                                           ; $6EDE: $00
    nop                                           ; $6EDF: $00
    nop                                           ; $6EE0: $00
    nop                                           ; $6EE1: $00
    nop                                           ; $6EE2: $00
    nop                                           ; $6EE3: $00
    nop                                           ; $6EE4: $00
    nop                                           ; $6EE5: $00
    nop                                           ; $6EE6: $00
    nop                                           ; $6EE7: $00
    nop                                           ; $6EE8: $00
    nop                                           ; $6EE9: $00
    nop                                           ; $6EEA: $00
    nop                                           ; $6EEB: $00
    nop                                           ; $6EEC: $00
    nop                                           ; $6EED: $00
    nop                                           ; $6EEE: $00
    nop                                           ; $6EEF: $00
    nop                                           ; $6EF0: $00
    nop                                           ; $6EF1: $00
    nop                                           ; $6EF2: $00
    nop                                           ; $6EF3: $00
    nop                                           ; $6EF4: $00
    nop                                           ; $6EF5: $00
    nop                                           ; $6EF6: $00
    nop                                           ; $6EF7: $00
    nop                                           ; $6EF8: $00
    nop                                           ; $6EF9: $00
    nop                                           ; $6EFA: $00
    nop                                           ; $6EFB: $00
    nop                                           ; $6EFC: $00
    nop                                           ; $6EFD: $00
    nop                                           ; $6EFE: $00
    nop                                           ; $6EFF: $00
    nop                                           ; $6F00: $00
    nop                                           ; $6F01: $00
    nop                                           ; $6F02: $00
    nop                                           ; $6F03: $00
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
    nop                                           ; $6F11: $00
    nop                                           ; $6F12: $00
    nop                                           ; $6F13: $00
    nop                                           ; $6F14: $00
    nop                                           ; $6F15: $00
    nop                                           ; $6F16: $00
    nop                                           ; $6F17: $00
    nop                                           ; $6F18: $00
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
    nop                                           ; $6F2B: $00
    nop                                           ; $6F2C: $00
    nop                                           ; $6F2D: $00
    nop                                           ; $6F2E: $00
    nop                                           ; $6F2F: $00
    nop                                           ; $6F30: $00
    nop                                           ; $6F31: $00
    nop                                           ; $6F32: $00
    nop                                           ; $6F33: $00
    nop                                           ; $6F34: $00
    nop                                           ; $6F35: $00
    nop                                           ; $6F36: $00
    nop                                           ; $6F37: $00
    nop                                           ; $6F38: $00
    nop                                           ; $6F39: $00
    nop                                           ; $6F3A: $00
    nop                                           ; $6F3B: $00
    nop                                           ; $6F3C: $00
    nop                                           ; $6F3D: $00
    nop                                           ; $6F3E: $00
    nop                                           ; $6F3F: $00
    nop                                           ; $6F40: $00
    nop                                           ; $6F41: $00
    nop                                           ; $6F42: $00
    nop                                           ; $6F43: $00
    nop                                           ; $6F44: $00
    nop                                           ; $6F45: $00
    nop                                           ; $6F46: $00
    nop                                           ; $6F47: $00
    nop                                           ; $6F48: $00
    nop                                           ; $6F49: $00
    nop                                           ; $6F4A: $00
    nop                                           ; $6F4B: $00
    nop                                           ; $6F4C: $00
    nop                                           ; $6F4D: $00
    nop                                           ; $6F4E: $00
    nop                                           ; $6F4F: $00
    nop                                           ; $6F50: $00
    nop                                           ; $6F51: $00
    nop                                           ; $6F52: $00
    nop                                           ; $6F53: $00
    nop                                           ; $6F54: $00
    nop                                           ; $6F55: $00
    nop                                           ; $6F56: $00
    nop                                           ; $6F57: $00
    nop                                           ; $6F58: $00
    nop                                           ; $6F59: $00
    nop                                           ; $6F5A: $00
    nop                                           ; $6F5B: $00
    nop                                           ; $6F5C: $00
    nop                                           ; $6F5D: $00
    nop                                           ; $6F5E: $00
    nop                                           ; $6F5F: $00
    nop                                           ; $6F60: $00
    nop                                           ; $6F61: $00
    nop                                           ; $6F62: $00
    nop                                           ; $6F63: $00
    nop                                           ; $6F64: $00
    nop                                           ; $6F65: $00
    nop                                           ; $6F66: $00
    nop                                           ; $6F67: $00
    nop                                           ; $6F68: $00
    nop                                           ; $6F69: $00
    nop                                           ; $6F6A: $00
    nop                                           ; $6F6B: $00
    nop                                           ; $6F6C: $00
    nop                                           ; $6F6D: $00
    nop                                           ; $6F6E: $00
    nop                                           ; $6F6F: $00
    nop                                           ; $6F70: $00
    nop                                           ; $6F71: $00
    nop                                           ; $6F72: $00
    nop                                           ; $6F73: $00
    nop                                           ; $6F74: $00
    nop                                           ; $6F75: $00
    nop                                           ; $6F76: $00
    nop                                           ; $6F77: $00
    nop                                           ; $6F78: $00
    nop                                           ; $6F79: $00
    nop                                           ; $6F7A: $00
    nop                                           ; $6F7B: $00
    nop                                           ; $6F7C: $00
    nop                                           ; $6F7D: $00
    nop                                           ; $6F7E: $00
    nop                                           ; $6F7F: $00
    nop                                           ; $6F80: $00
    nop                                           ; $6F81: $00
    nop                                           ; $6F82: $00
    nop                                           ; $6F83: $00
    nop                                           ; $6F84: $00
    nop                                           ; $6F85: $00
    nop                                           ; $6F86: $00
    nop                                           ; $6F87: $00
    nop                                           ; $6F88: $00
    nop                                           ; $6F89: $00
    nop                                           ; $6F8A: $00
    nop                                           ; $6F8B: $00
    nop                                           ; $6F8C: $00
    nop                                           ; $6F8D: $00
    nop                                           ; $6F8E: $00
    nop                                           ; $6F8F: $00
    nop                                           ; $6F90: $00
    nop                                           ; $6F91: $00
    nop                                           ; $6F92: $00
    nop                                           ; $6F93: $00
    nop                                           ; $6F94: $00
    nop                                           ; $6F95: $00
    nop                                           ; $6F96: $00
    nop                                           ; $6F97: $00
    nop                                           ; $6F98: $00
    nop                                           ; $6F99: $00
    nop                                           ; $6F9A: $00
    nop                                           ; $6F9B: $00
    nop                                           ; $6F9C: $00
    nop                                           ; $6F9D: $00
    nop                                           ; $6F9E: $00
    nop                                           ; $6F9F: $00
    nop                                           ; $6FA0: $00
    nop                                           ; $6FA1: $00
    nop                                           ; $6FA2: $00
    nop                                           ; $6FA3: $00
    nop                                           ; $6FA4: $00
    nop                                           ; $6FA5: $00
    nop                                           ; $6FA6: $00
    nop                                           ; $6FA7: $00
    nop                                           ; $6FA8: $00
    nop                                           ; $6FA9: $00
    nop                                           ; $6FAA: $00
    nop                                           ; $6FAB: $00
    nop                                           ; $6FAC: $00
    nop                                           ; $6FAD: $00
    nop                                           ; $6FAE: $00
    nop                                           ; $6FAF: $00
    nop                                           ; $6FB0: $00
    nop                                           ; $6FB1: $00
    nop                                           ; $6FB2: $00
    nop                                           ; $6FB3: $00
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
    nop                                           ; $6FC5: $00
    nop                                           ; $6FC6: $00
    nop                                           ; $6FC7: $00
    nop                                           ; $6FC8: $00
    nop                                           ; $6FC9: $00
    nop                                           ; $6FCA: $00
    nop                                           ; $6FCB: $00
    nop                                           ; $6FCC: $00
    nop                                           ; $6FCD: $00
    nop                                           ; $6FCE: $00
    nop                                           ; $6FCF: $00
    nop                                           ; $6FD0: $00
    nop                                           ; $6FD1: $00
    nop                                           ; $6FD2: $00
    nop                                           ; $6FD3: $00
    nop                                           ; $6FD4: $00
    nop                                           ; $6FD5: $00
    nop                                           ; $6FD6: $00
    nop                                           ; $6FD7: $00
    nop                                           ; $6FD8: $00
    nop                                           ; $6FD9: $00
    nop                                           ; $6FDA: $00
    nop                                           ; $6FDB: $00
    nop                                           ; $6FDC: $00
    nop                                           ; $6FDD: $00
    nop                                           ; $6FDE: $00
    nop                                           ; $6FDF: $00
    nop                                           ; $6FE0: $00
    nop                                           ; $6FE1: $00
    nop                                           ; $6FE2: $00
    nop                                           ; $6FE3: $00
    nop                                           ; $6FE4: $00
    nop                                           ; $6FE5: $00
    nop                                           ; $6FE6: $00
    nop                                           ; $6FE7: $00
    nop                                           ; $6FE8: $00
    nop                                           ; $6FE9: $00
    nop                                           ; $6FEA: $00
    nop                                           ; $6FEB: $00
    nop                                           ; $6FEC: $00
    nop                                           ; $6FED: $00
    nop                                           ; $6FEE: $00
    nop                                           ; $6FEF: $00
    nop                                           ; $6FF0: $00
    nop                                           ; $6FF1: $00
    nop                                           ; $6FF2: $00
    nop                                           ; $6FF3: $00
    nop                                           ; $6FF4: $00
    nop                                           ; $6FF5: $00
    nop                                           ; $6FF6: $00
    nop                                           ; $6FF7: $00
    nop                                           ; $6FF8: $00
    nop                                           ; $6FF9: $00
    nop                                           ; $6FFA: $00
    nop                                           ; $6FFB: $00
    nop                                           ; $6FFC: $00
    nop                                           ; $6FFD: $00
    nop                                           ; $6FFE: $00
    nop                                           ; $6FFF: $00
    nop                                           ; $7000: $00
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    nop                                           ; $7005: $00
    nop                                           ; $7006: $00
    nop                                           ; $7007: $00
    nop                                           ; $7008: $00
    nop                                           ; $7009: $00
    nop                                           ; $700A: $00
    nop                                           ; $700B: $00
    nop                                           ; $700C: $00
    nop                                           ; $700D: $00
    nop                                           ; $700E: $00
    nop                                           ; $700F: $00
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    nop                                           ; $7013: $00
    nop                                           ; $7014: $00
    nop                                           ; $7015: $00
    nop                                           ; $7016: $00
    nop                                           ; $7017: $00
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    nop                                           ; $701A: $00
    nop                                           ; $701B: $00
    nop                                           ; $701C: $00
    nop                                           ; $701D: $00
    nop                                           ; $701E: $00
    nop                                           ; $701F: $00
    nop                                           ; $7020: $00
    nop                                           ; $7021: $00
    nop                                           ; $7022: $00
    nop                                           ; $7023: $00
    nop                                           ; $7024: $00
    nop                                           ; $7025: $00
    nop                                           ; $7026: $00
    nop                                           ; $7027: $00
    nop                                           ; $7028: $00
    nop                                           ; $7029: $00
    nop                                           ; $702A: $00
    nop                                           ; $702B: $00
    nop                                           ; $702C: $00
    nop                                           ; $702D: $00
    nop                                           ; $702E: $00
    nop                                           ; $702F: $00
    nop                                           ; $7030: $00
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    nop                                           ; $7033: $00
    nop                                           ; $7034: $00
    nop                                           ; $7035: $00
    nop                                           ; $7036: $00
    nop                                           ; $7037: $00
    nop                                           ; $7038: $00
    nop                                           ; $7039: $00
    nop                                           ; $703A: $00
    nop                                           ; $703B: $00
    nop                                           ; $703C: $00
    nop                                           ; $703D: $00
    nop                                           ; $703E: $00
    nop                                           ; $703F: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    nop                                           ; $7043: $00
    nop                                           ; $7044: $00
    nop                                           ; $7045: $00
    nop                                           ; $7046: $00
    nop                                           ; $7047: $00
    nop                                           ; $7048: $00
    nop                                           ; $7049: $00
    nop                                           ; $704A: $00
    nop                                           ; $704B: $00
    nop                                           ; $704C: $00
    nop                                           ; $704D: $00
    nop                                           ; $704E: $00
    nop                                           ; $704F: $00
    nop                                           ; $7050: $00
    nop                                           ; $7051: $00
    nop                                           ; $7052: $00
    nop                                           ; $7053: $00
    nop                                           ; $7054: $00
    nop                                           ; $7055: $00
    nop                                           ; $7056: $00
    nop                                           ; $7057: $00
    nop                                           ; $7058: $00
    nop                                           ; $7059: $00
    nop                                           ; $705A: $00
    nop                                           ; $705B: $00
    nop                                           ; $705C: $00
    nop                                           ; $705D: $00
    nop                                           ; $705E: $00
    nop                                           ; $705F: $00
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    nop                                           ; $7062: $00
    nop                                           ; $7063: $00
    nop                                           ; $7064: $00
    nop                                           ; $7065: $00
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    nop                                           ; $7068: $00
    nop                                           ; $7069: $00
    nop                                           ; $706A: $00
    nop                                           ; $706B: $00
    nop                                           ; $706C: $00
    nop                                           ; $706D: $00
    nop                                           ; $706E: $00
    nop                                           ; $706F: $00
    nop                                           ; $7070: $00
    nop                                           ; $7071: $00
    nop                                           ; $7072: $00
    nop                                           ; $7073: $00
    nop                                           ; $7074: $00
    nop                                           ; $7075: $00
    nop                                           ; $7076: $00
    nop                                           ; $7077: $00
    nop                                           ; $7078: $00
    nop                                           ; $7079: $00
    nop                                           ; $707A: $00
    nop                                           ; $707B: $00
    nop                                           ; $707C: $00
    nop                                           ; $707D: $00
    nop                                           ; $707E: $00
    nop                                           ; $707F: $00
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    nop                                           ; $7086: $00
    nop                                           ; $7087: $00
    nop                                           ; $7088: $00
    nop                                           ; $7089: $00
    nop                                           ; $708A: $00
    nop                                           ; $708B: $00
    nop                                           ; $708C: $00
    nop                                           ; $708D: $00
    nop                                           ; $708E: $00
    nop                                           ; $708F: $00
    nop                                           ; $7090: $00
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    nop                                           ; $7093: $00
    nop                                           ; $7094: $00
    nop                                           ; $7095: $00
    nop                                           ; $7096: $00
    nop                                           ; $7097: $00
    nop                                           ; $7098: $00
    nop                                           ; $7099: $00
    nop                                           ; $709A: $00
    nop                                           ; $709B: $00
    nop                                           ; $709C: $00
    nop                                           ; $709D: $00
    nop                                           ; $709E: $00
    nop                                           ; $709F: $00
    nop                                           ; $70A0: $00
    nop                                           ; $70A1: $00
    nop                                           ; $70A2: $00
    nop                                           ; $70A3: $00
    nop                                           ; $70A4: $00
    nop                                           ; $70A5: $00
    nop                                           ; $70A6: $00
    nop                                           ; $70A7: $00
    nop                                           ; $70A8: $00
    nop                                           ; $70A9: $00
    nop                                           ; $70AA: $00
    nop                                           ; $70AB: $00
    nop                                           ; $70AC: $00
    nop                                           ; $70AD: $00
    nop                                           ; $70AE: $00
    nop                                           ; $70AF: $00
    nop                                           ; $70B0: $00
    nop                                           ; $70B1: $00
    nop                                           ; $70B2: $00
    nop                                           ; $70B3: $00
    nop                                           ; $70B4: $00
    nop                                           ; $70B5: $00
    nop                                           ; $70B6: $00
    nop                                           ; $70B7: $00
    nop                                           ; $70B8: $00
    nop                                           ; $70B9: $00
    nop                                           ; $70BA: $00
    nop                                           ; $70BB: $00
    nop                                           ; $70BC: $00
    nop                                           ; $70BD: $00
    nop                                           ; $70BE: $00
    nop                                           ; $70BF: $00
    nop                                           ; $70C0: $00
    nop                                           ; $70C1: $00
    nop                                           ; $70C2: $00
    nop                                           ; $70C3: $00
    nop                                           ; $70C4: $00
    nop                                           ; $70C5: $00
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
    nop                                           ; $70DB: $00
    nop                                           ; $70DC: $00
    nop                                           ; $70DD: $00
    nop                                           ; $70DE: $00
    nop                                           ; $70DF: $00
    nop                                           ; $70E0: $00
    nop                                           ; $70E1: $00
    nop                                           ; $70E2: $00
    nop                                           ; $70E3: $00
    nop                                           ; $70E4: $00
    nop                                           ; $70E5: $00
    nop                                           ; $70E6: $00
    nop                                           ; $70E7: $00
    nop                                           ; $70E8: $00
    nop                                           ; $70E9: $00
    nop                                           ; $70EA: $00
    nop                                           ; $70EB: $00
    nop                                           ; $70EC: $00
    nop                                           ; $70ED: $00
    nop                                           ; $70EE: $00
    nop                                           ; $70EF: $00
    nop                                           ; $70F0: $00
    nop                                           ; $70F1: $00
    nop                                           ; $70F2: $00
    nop                                           ; $70F3: $00
    nop                                           ; $70F4: $00
    nop                                           ; $70F5: $00
    nop                                           ; $70F6: $00
    nop                                           ; $70F7: $00
    nop                                           ; $70F8: $00
    nop                                           ; $70F9: $00
    nop                                           ; $70FA: $00
    nop                                           ; $70FB: $00
    nop                                           ; $70FC: $00
    nop                                           ; $70FD: $00
    nop                                           ; $70FE: $00
    nop                                           ; $70FF: $00
    nop                                           ; $7100: $00
    nop                                           ; $7101: $00
    nop                                           ; $7102: $00
    nop                                           ; $7103: $00
    nop                                           ; $7104: $00
    nop                                           ; $7105: $00
    nop                                           ; $7106: $00
    nop                                           ; $7107: $00
    nop                                           ; $7108: $00
    nop                                           ; $7109: $00
    nop                                           ; $710A: $00
    nop                                           ; $710B: $00
    nop                                           ; $710C: $00
    nop                                           ; $710D: $00
    nop                                           ; $710E: $00
    nop                                           ; $710F: $00
    nop                                           ; $7110: $00
    nop                                           ; $7111: $00
    nop                                           ; $7112: $00
    nop                                           ; $7113: $00
    nop                                           ; $7114: $00
    nop                                           ; $7115: $00
    nop                                           ; $7116: $00
    nop                                           ; $7117: $00
    nop                                           ; $7118: $00
    nop                                           ; $7119: $00
    nop                                           ; $711A: $00
    nop                                           ; $711B: $00
    nop                                           ; $711C: $00
    nop                                           ; $711D: $00
    nop                                           ; $711E: $00
    nop                                           ; $711F: $00
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    nop                                           ; $7127: $00
    nop                                           ; $7128: $00
    nop                                           ; $7129: $00
    nop                                           ; $712A: $00
    nop                                           ; $712B: $00
    nop                                           ; $712C: $00
    nop                                           ; $712D: $00
    nop                                           ; $712E: $00
    nop                                           ; $712F: $00
    nop                                           ; $7130: $00
    nop                                           ; $7131: $00
    nop                                           ; $7132: $00
    nop                                           ; $7133: $00
    nop                                           ; $7134: $00
    nop                                           ; $7135: $00
    nop                                           ; $7136: $00
    nop                                           ; $7137: $00
    nop                                           ; $7138: $00
    nop                                           ; $7139: $00
    nop                                           ; $713A: $00
    nop                                           ; $713B: $00
    nop                                           ; $713C: $00
    nop                                           ; $713D: $00
    nop                                           ; $713E: $00
    nop                                           ; $713F: $00
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    nop                                           ; $7143: $00
    nop                                           ; $7144: $00
    nop                                           ; $7145: $00
    nop                                           ; $7146: $00
    nop                                           ; $7147: $00
    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    nop                                           ; $714A: $00
    nop                                           ; $714B: $00
    nop                                           ; $714C: $00
    nop                                           ; $714D: $00
    nop                                           ; $714E: $00
    nop                                           ; $714F: $00
    nop                                           ; $7150: $00
    nop                                           ; $7151: $00
    nop                                           ; $7152: $00
    nop                                           ; $7153: $00
    nop                                           ; $7154: $00
    nop                                           ; $7155: $00
    nop                                           ; $7156: $00
    nop                                           ; $7157: $00
    nop                                           ; $7158: $00
    nop                                           ; $7159: $00
    nop                                           ; $715A: $00
    nop                                           ; $715B: $00
    nop                                           ; $715C: $00
    nop                                           ; $715D: $00
    nop                                           ; $715E: $00
    nop                                           ; $715F: $00
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
    nop                                           ; $7164: $00
    nop                                           ; $7165: $00
    nop                                           ; $7166: $00
    nop                                           ; $7167: $00
    nop                                           ; $7168: $00
    nop                                           ; $7169: $00
    nop                                           ; $716A: $00
    nop                                           ; $716B: $00
    nop                                           ; $716C: $00
    nop                                           ; $716D: $00
    nop                                           ; $716E: $00
    nop                                           ; $716F: $00
    nop                                           ; $7170: $00
    nop                                           ; $7171: $00
    nop                                           ; $7172: $00
    nop                                           ; $7173: $00
    nop                                           ; $7174: $00
    nop                                           ; $7175: $00
    nop                                           ; $7176: $00
    nop                                           ; $7177: $00
    nop                                           ; $7178: $00
    nop                                           ; $7179: $00
    nop                                           ; $717A: $00
    nop                                           ; $717B: $00
    nop                                           ; $717C: $00
    nop                                           ; $717D: $00
    nop                                           ; $717E: $00
    nop                                           ; $717F: $00
    nop                                           ; $7180: $00
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00
    nop                                           ; $7183: $00
    nop                                           ; $7184: $00
    nop                                           ; $7185: $00
    nop                                           ; $7186: $00
    nop                                           ; $7187: $00
    nop                                           ; $7188: $00
    nop                                           ; $7189: $00
    nop                                           ; $718A: $00
    nop                                           ; $718B: $00
    nop                                           ; $718C: $00
    nop                                           ; $718D: $00
    nop                                           ; $718E: $00
    nop                                           ; $718F: $00
    nop                                           ; $7190: $00
    nop                                           ; $7191: $00
    nop                                           ; $7192: $00
    nop                                           ; $7193: $00
    nop                                           ; $7194: $00
    nop                                           ; $7195: $00
    nop                                           ; $7196: $00
    nop                                           ; $7197: $00
    nop                                           ; $7198: $00
    nop                                           ; $7199: $00
    nop                                           ; $719A: $00
    nop                                           ; $719B: $00
    nop                                           ; $719C: $00
    nop                                           ; $719D: $00
    nop                                           ; $719E: $00
    nop                                           ; $719F: $00
    nop                                           ; $71A0: $00
    nop                                           ; $71A1: $00
    nop                                           ; $71A2: $00
    nop                                           ; $71A3: $00
    nop                                           ; $71A4: $00
    nop                                           ; $71A5: $00
    nop                                           ; $71A6: $00
    nop                                           ; $71A7: $00
    nop                                           ; $71A8: $00
    nop                                           ; $71A9: $00
    nop                                           ; $71AA: $00
    nop                                           ; $71AB: $00
    nop                                           ; $71AC: $00
    nop                                           ; $71AD: $00
    nop                                           ; $71AE: $00
    nop                                           ; $71AF: $00
    nop                                           ; $71B0: $00
    nop                                           ; $71B1: $00
    nop                                           ; $71B2: $00
    nop                                           ; $71B3: $00
    nop                                           ; $71B4: $00
    nop                                           ; $71B5: $00
    nop                                           ; $71B6: $00
    nop                                           ; $71B7: $00
    nop                                           ; $71B8: $00
    nop                                           ; $71B9: $00
    nop                                           ; $71BA: $00
    nop                                           ; $71BB: $00
    nop                                           ; $71BC: $00
    nop                                           ; $71BD: $00
    nop                                           ; $71BE: $00
    nop                                           ; $71BF: $00
    nop                                           ; $71C0: $00
    nop                                           ; $71C1: $00
    nop                                           ; $71C2: $00
    nop                                           ; $71C3: $00
    nop                                           ; $71C4: $00
    nop                                           ; $71C5: $00
    nop                                           ; $71C6: $00
    nop                                           ; $71C7: $00
    nop                                           ; $71C8: $00
    nop                                           ; $71C9: $00
    nop                                           ; $71CA: $00
    nop                                           ; $71CB: $00
    nop                                           ; $71CC: $00
    nop                                           ; $71CD: $00
    nop                                           ; $71CE: $00
    nop                                           ; $71CF: $00
    nop                                           ; $71D0: $00
    nop                                           ; $71D1: $00
    nop                                           ; $71D2: $00
    nop                                           ; $71D3: $00
    nop                                           ; $71D4: $00
    nop                                           ; $71D5: $00
    nop                                           ; $71D6: $00
    nop                                           ; $71D7: $00
    nop                                           ; $71D8: $00
    nop                                           ; $71D9: $00
    nop                                           ; $71DA: $00
    nop                                           ; $71DB: $00
    nop                                           ; $71DC: $00
    nop                                           ; $71DD: $00
    nop                                           ; $71DE: $00
    nop                                           ; $71DF: $00
    nop                                           ; $71E0: $00
    nop                                           ; $71E1: $00
    nop                                           ; $71E2: $00
    nop                                           ; $71E3: $00
    nop                                           ; $71E4: $00
    nop                                           ; $71E5: $00
    nop                                           ; $71E6: $00
    nop                                           ; $71E7: $00
    nop                                           ; $71E8: $00
    nop                                           ; $71E9: $00
    nop                                           ; $71EA: $00
    nop                                           ; $71EB: $00
    nop                                           ; $71EC: $00
    nop                                           ; $71ED: $00
    nop                                           ; $71EE: $00
    nop                                           ; $71EF: $00
    nop                                           ; $71F0: $00
    nop                                           ; $71F1: $00
    nop                                           ; $71F2: $00
    nop                                           ; $71F3: $00
    nop                                           ; $71F4: $00
    nop                                           ; $71F5: $00
    nop                                           ; $71F6: $00
    nop                                           ; $71F7: $00
    nop                                           ; $71F8: $00
    nop                                           ; $71F9: $00
    nop                                           ; $71FA: $00
    nop                                           ; $71FB: $00
    nop                                           ; $71FC: $00
    nop                                           ; $71FD: $00
    nop                                           ; $71FE: $00
    nop                                           ; $71FF: $00
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    nop                                           ; $7202: $00
    nop                                           ; $7203: $00
    nop                                           ; $7204: $00
    nop                                           ; $7205: $00
    nop                                           ; $7206: $00
    nop                                           ; $7207: $00
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    nop                                           ; $720A: $00
    nop                                           ; $720B: $00
    nop                                           ; $720C: $00
    nop                                           ; $720D: $00
    nop                                           ; $720E: $00
    nop                                           ; $720F: $00
    nop                                           ; $7210: $00
    nop                                           ; $7211: $00
    nop                                           ; $7212: $00
    nop                                           ; $7213: $00
    nop                                           ; $7214: $00
    nop                                           ; $7215: $00
    nop                                           ; $7216: $00
    nop                                           ; $7217: $00
    nop                                           ; $7218: $00
    nop                                           ; $7219: $00
    nop                                           ; $721A: $00
    nop                                           ; $721B: $00
    nop                                           ; $721C: $00
    nop                                           ; $721D: $00
    nop                                           ; $721E: $00
    nop                                           ; $721F: $00
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00
    nop                                           ; $7223: $00
    nop                                           ; $7224: $00
    nop                                           ; $7225: $00
    nop                                           ; $7226: $00
    nop                                           ; $7227: $00
    nop                                           ; $7228: $00
    nop                                           ; $7229: $00
    nop                                           ; $722A: $00
    nop                                           ; $722B: $00
    nop                                           ; $722C: $00
    nop                                           ; $722D: $00
    nop                                           ; $722E: $00
    nop                                           ; $722F: $00
    nop                                           ; $7230: $00
    nop                                           ; $7231: $00
    nop                                           ; $7232: $00
    nop                                           ; $7233: $00
    nop                                           ; $7234: $00
    nop                                           ; $7235: $00
    nop                                           ; $7236: $00
    nop                                           ; $7237: $00
    nop                                           ; $7238: $00
    nop                                           ; $7239: $00
    nop                                           ; $723A: $00
    nop                                           ; $723B: $00
    nop                                           ; $723C: $00
    nop                                           ; $723D: $00
    nop                                           ; $723E: $00
    nop                                           ; $723F: $00
    nop                                           ; $7240: $00
    nop                                           ; $7241: $00
    nop                                           ; $7242: $00
    nop                                           ; $7243: $00
    nop                                           ; $7244: $00
    nop                                           ; $7245: $00
    nop                                           ; $7246: $00
    nop                                           ; $7247: $00
    nop                                           ; $7248: $00
    nop                                           ; $7249: $00
    nop                                           ; $724A: $00
    nop                                           ; $724B: $00
    nop                                           ; $724C: $00
    nop                                           ; $724D: $00
    nop                                           ; $724E: $00
    nop                                           ; $724F: $00
    nop                                           ; $7250: $00
    nop                                           ; $7251: $00
    nop                                           ; $7252: $00
    nop                                           ; $7253: $00
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
    nop                                           ; $725F: $00
    nop                                           ; $7260: $00
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    nop                                           ; $7264: $00
    nop                                           ; $7265: $00
    nop                                           ; $7266: $00
    nop                                           ; $7267: $00
    nop                                           ; $7268: $00
    nop                                           ; $7269: $00
    nop                                           ; $726A: $00
    nop                                           ; $726B: $00
    nop                                           ; $726C: $00
    nop                                           ; $726D: $00
    nop                                           ; $726E: $00
    nop                                           ; $726F: $00
    nop                                           ; $7270: $00
    nop                                           ; $7271: $00
    nop                                           ; $7272: $00
    nop                                           ; $7273: $00
    nop                                           ; $7274: $00
    nop                                           ; $7275: $00
    nop                                           ; $7276: $00
    nop                                           ; $7277: $00
    nop                                           ; $7278: $00
    nop                                           ; $7279: $00
    nop                                           ; $727A: $00
    nop                                           ; $727B: $00
    nop                                           ; $727C: $00
    nop                                           ; $727D: $00
    nop                                           ; $727E: $00
    nop                                           ; $727F: $00
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00
    nop                                           ; $7283: $00
    nop                                           ; $7284: $00
    nop                                           ; $7285: $00
    nop                                           ; $7286: $00
    nop                                           ; $7287: $00
    nop                                           ; $7288: $00
    nop                                           ; $7289: $00
    nop                                           ; $728A: $00
    nop                                           ; $728B: $00
    nop                                           ; $728C: $00
    nop                                           ; $728D: $00
    nop                                           ; $728E: $00
    nop                                           ; $728F: $00
    nop                                           ; $7290: $00
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    nop                                           ; $7293: $00
    nop                                           ; $7294: $00
    nop                                           ; $7295: $00
    nop                                           ; $7296: $00
    nop                                           ; $7297: $00
    nop                                           ; $7298: $00
    nop                                           ; $7299: $00
    nop                                           ; $729A: $00
    nop                                           ; $729B: $00
    nop                                           ; $729C: $00
    nop                                           ; $729D: $00
    nop                                           ; $729E: $00
    nop                                           ; $729F: $00
    nop                                           ; $72A0: $00
    nop                                           ; $72A1: $00
    nop                                           ; $72A2: $00
    nop                                           ; $72A3: $00
    nop                                           ; $72A4: $00
    nop                                           ; $72A5: $00
    nop                                           ; $72A6: $00
    nop                                           ; $72A7: $00
    nop                                           ; $72A8: $00
    nop                                           ; $72A9: $00
    nop                                           ; $72AA: $00
    nop                                           ; $72AB: $00
    nop                                           ; $72AC: $00
    nop                                           ; $72AD: $00
    nop                                           ; $72AE: $00
    nop                                           ; $72AF: $00
    nop                                           ; $72B0: $00
    nop                                           ; $72B1: $00
    nop                                           ; $72B2: $00
    nop                                           ; $72B3: $00
    nop                                           ; $72B4: $00
    nop                                           ; $72B5: $00
    nop                                           ; $72B6: $00
    nop                                           ; $72B7: $00
    nop                                           ; $72B8: $00
    nop                                           ; $72B9: $00
    nop                                           ; $72BA: $00
    nop                                           ; $72BB: $00
    nop                                           ; $72BC: $00
    nop                                           ; $72BD: $00
    nop                                           ; $72BE: $00
    nop                                           ; $72BF: $00
    nop                                           ; $72C0: $00
    nop                                           ; $72C1: $00
    nop                                           ; $72C2: $00
    nop                                           ; $72C3: $00
    nop                                           ; $72C4: $00
    nop                                           ; $72C5: $00
    nop                                           ; $72C6: $00
    nop                                           ; $72C7: $00
    nop                                           ; $72C8: $00
    nop                                           ; $72C9: $00
    nop                                           ; $72CA: $00
    nop                                           ; $72CB: $00
    nop                                           ; $72CC: $00
    nop                                           ; $72CD: $00
    nop                                           ; $72CE: $00
    nop                                           ; $72CF: $00
    nop                                           ; $72D0: $00
    nop                                           ; $72D1: $00
    nop                                           ; $72D2: $00
    nop                                           ; $72D3: $00
    nop                                           ; $72D4: $00
    nop                                           ; $72D5: $00
    nop                                           ; $72D6: $00
    nop                                           ; $72D7: $00
    nop                                           ; $72D8: $00
    nop                                           ; $72D9: $00
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
    nop                                           ; $72E5: $00
    nop                                           ; $72E6: $00
    nop                                           ; $72E7: $00
    nop                                           ; $72E8: $00
    nop                                           ; $72E9: $00
    nop                                           ; $72EA: $00
    nop                                           ; $72EB: $00
    nop                                           ; $72EC: $00
    nop                                           ; $72ED: $00
    nop                                           ; $72EE: $00
    nop                                           ; $72EF: $00
    nop                                           ; $72F0: $00
    nop                                           ; $72F1: $00
    nop                                           ; $72F2: $00
    nop                                           ; $72F3: $00
    nop                                           ; $72F4: $00
    nop                                           ; $72F5: $00
    nop                                           ; $72F6: $00
    nop                                           ; $72F7: $00
    nop                                           ; $72F8: $00
    nop                                           ; $72F9: $00
    nop                                           ; $72FA: $00
    nop                                           ; $72FB: $00
    nop                                           ; $72FC: $00
    nop                                           ; $72FD: $00
    nop                                           ; $72FE: $00
    nop                                           ; $72FF: $00
    nop                                           ; $7300: $00
    nop                                           ; $7301: $00
    nop                                           ; $7302: $00
    nop                                           ; $7303: $00
    nop                                           ; $7304: $00
    nop                                           ; $7305: $00
    nop                                           ; $7306: $00
    nop                                           ; $7307: $00
    nop                                           ; $7308: $00
    nop                                           ; $7309: $00
    nop                                           ; $730A: $00
    nop                                           ; $730B: $00
    nop                                           ; $730C: $00
    nop                                           ; $730D: $00
    nop                                           ; $730E: $00
    nop                                           ; $730F: $00
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    nop                                           ; $7312: $00
    nop                                           ; $7313: $00
    nop                                           ; $7314: $00
    nop                                           ; $7315: $00
    nop                                           ; $7316: $00
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
    nop                                           ; $7325: $00
    nop                                           ; $7326: $00
    nop                                           ; $7327: $00
    nop                                           ; $7328: $00
    nop                                           ; $7329: $00
    nop                                           ; $732A: $00
    nop                                           ; $732B: $00
    nop                                           ; $732C: $00
    nop                                           ; $732D: $00
    nop                                           ; $732E: $00
    nop                                           ; $732F: $00
    nop                                           ; $7330: $00
    nop                                           ; $7331: $00
    nop                                           ; $7332: $00
    nop                                           ; $7333: $00
    nop                                           ; $7334: $00
    nop                                           ; $7335: $00
    nop                                           ; $7336: $00
    nop                                           ; $7337: $00
    nop                                           ; $7338: $00
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
    nop                                           ; $734B: $00
    nop                                           ; $734C: $00
    nop                                           ; $734D: $00
    nop                                           ; $734E: $00
    nop                                           ; $734F: $00
    nop                                           ; $7350: $00
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    nop                                           ; $7353: $00
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    nop                                           ; $7358: $00
    nop                                           ; $7359: $00
    nop                                           ; $735A: $00
    nop                                           ; $735B: $00
    nop                                           ; $735C: $00
    nop                                           ; $735D: $00
    nop                                           ; $735E: $00
    nop                                           ; $735F: $00
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    nop                                           ; $7362: $00
    nop                                           ; $7363: $00
    nop                                           ; $7364: $00
    nop                                           ; $7365: $00
    nop                                           ; $7366: $00
    nop                                           ; $7367: $00
    nop                                           ; $7368: $00
    nop                                           ; $7369: $00
    nop                                           ; $736A: $00
    nop                                           ; $736B: $00
    nop                                           ; $736C: $00
    nop                                           ; $736D: $00
    nop                                           ; $736E: $00
    nop                                           ; $736F: $00
    nop                                           ; $7370: $00
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    nop                                           ; $7373: $00
    nop                                           ; $7374: $00
    nop                                           ; $7375: $00
    nop                                           ; $7376: $00
    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    nop                                           ; $737A: $00
    nop                                           ; $737B: $00
    nop                                           ; $737C: $00
    nop                                           ; $737D: $00
    nop                                           ; $737E: $00
    nop                                           ; $737F: $00
    nop                                           ; $7380: $00
    nop                                           ; $7381: $00
    nop                                           ; $7382: $00
    nop                                           ; $7383: $00
    nop                                           ; $7384: $00
    nop                                           ; $7385: $00
    nop                                           ; $7386: $00
    nop                                           ; $7387: $00
    nop                                           ; $7388: $00
    nop                                           ; $7389: $00
    nop                                           ; $738A: $00
    nop                                           ; $738B: $00
    nop                                           ; $738C: $00
    nop                                           ; $738D: $00
    nop                                           ; $738E: $00
    nop                                           ; $738F: $00
    nop                                           ; $7390: $00
    nop                                           ; $7391: $00
    nop                                           ; $7392: $00
    nop                                           ; $7393: $00
    nop                                           ; $7394: $00
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
    nop                                           ; $73A3: $00
    nop                                           ; $73A4: $00
    nop                                           ; $73A5: $00
    nop                                           ; $73A6: $00
    nop                                           ; $73A7: $00
    nop                                           ; $73A8: $00
    nop                                           ; $73A9: $00
    nop                                           ; $73AA: $00
    nop                                           ; $73AB: $00
    nop                                           ; $73AC: $00
    nop                                           ; $73AD: $00
    nop                                           ; $73AE: $00
    nop                                           ; $73AF: $00
    nop                                           ; $73B0: $00
    nop                                           ; $73B1: $00
    nop                                           ; $73B2: $00
    nop                                           ; $73B3: $00
    nop                                           ; $73B4: $00
    nop                                           ; $73B5: $00
    nop                                           ; $73B6: $00
    nop                                           ; $73B7: $00
    nop                                           ; $73B8: $00
    nop                                           ; $73B9: $00
    nop                                           ; $73BA: $00
    nop                                           ; $73BB: $00
    nop                                           ; $73BC: $00
    nop                                           ; $73BD: $00
    nop                                           ; $73BE: $00
    nop                                           ; $73BF: $00
    nop                                           ; $73C0: $00
    nop                                           ; $73C1: $00
    nop                                           ; $73C2: $00
    nop                                           ; $73C3: $00
    nop                                           ; $73C4: $00
    nop                                           ; $73C5: $00
    nop                                           ; $73C6: $00
    nop                                           ; $73C7: $00
    nop                                           ; $73C8: $00
    nop                                           ; $73C9: $00
    nop                                           ; $73CA: $00
    nop                                           ; $73CB: $00
    nop                                           ; $73CC: $00
    nop                                           ; $73CD: $00
    nop                                           ; $73CE: $00
    nop                                           ; $73CF: $00
    nop                                           ; $73D0: $00
    nop                                           ; $73D1: $00
    nop                                           ; $73D2: $00
    nop                                           ; $73D3: $00
    nop                                           ; $73D4: $00
    nop                                           ; $73D5: $00
    nop                                           ; $73D6: $00
    nop                                           ; $73D7: $00
    nop                                           ; $73D8: $00
    nop                                           ; $73D9: $00
    nop                                           ; $73DA: $00
    nop                                           ; $73DB: $00
    nop                                           ; $73DC: $00
    nop                                           ; $73DD: $00
    nop                                           ; $73DE: $00
    nop                                           ; $73DF: $00
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
    nop                                           ; $73EA: $00
    nop                                           ; $73EB: $00
    nop                                           ; $73EC: $00
    nop                                           ; $73ED: $00
    nop                                           ; $73EE: $00
    nop                                           ; $73EF: $00
    nop                                           ; $73F0: $00
    nop                                           ; $73F1: $00
    nop                                           ; $73F2: $00
    nop                                           ; $73F3: $00
    nop                                           ; $73F4: $00
    nop                                           ; $73F5: $00
    nop                                           ; $73F6: $00
    nop                                           ; $73F7: $00
    nop                                           ; $73F8: $00
    nop                                           ; $73F9: $00
    nop                                           ; $73FA: $00
    nop                                           ; $73FB: $00
    nop                                           ; $73FC: $00
    nop                                           ; $73FD: $00
    nop                                           ; $73FE: $00
    nop                                           ; $73FF: $00
    nop                                           ; $7400: $00
    nop                                           ; $7401: $00
    nop                                           ; $7402: $00
    nop                                           ; $7403: $00
    nop                                           ; $7404: $00
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
    nop                                           ; $740F: $00
    nop                                           ; $7410: $00
    nop                                           ; $7411: $00
    nop                                           ; $7412: $00
    nop                                           ; $7413: $00
    nop                                           ; $7414: $00
    nop                                           ; $7415: $00
    nop                                           ; $7416: $00
    nop                                           ; $7417: $00
    nop                                           ; $7418: $00
    nop                                           ; $7419: $00
    nop                                           ; $741A: $00
    nop                                           ; $741B: $00
    nop                                           ; $741C: $00
    nop                                           ; $741D: $00
    nop                                           ; $741E: $00
    nop                                           ; $741F: $00
    nop                                           ; $7420: $00
    nop                                           ; $7421: $00
    nop                                           ; $7422: $00
    nop                                           ; $7423: $00
    nop                                           ; $7424: $00
    nop                                           ; $7425: $00
    nop                                           ; $7426: $00
    nop                                           ; $7427: $00
    nop                                           ; $7428: $00
    nop                                           ; $7429: $00
    nop                                           ; $742A: $00
    nop                                           ; $742B: $00
    nop                                           ; $742C: $00
    nop                                           ; $742D: $00
    nop                                           ; $742E: $00
    nop                                           ; $742F: $00
    nop                                           ; $7430: $00
    nop                                           ; $7431: $00
    nop                                           ; $7432: $00
    nop                                           ; $7433: $00
    nop                                           ; $7434: $00
    nop                                           ; $7435: $00
    nop                                           ; $7436: $00
    nop                                           ; $7437: $00
    nop                                           ; $7438: $00
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
    nop                                           ; $744A: $00
    nop                                           ; $744B: $00
    nop                                           ; $744C: $00
    nop                                           ; $744D: $00
    nop                                           ; $744E: $00
    nop                                           ; $744F: $00
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    nop                                           ; $7454: $00
    nop                                           ; $7455: $00
    nop                                           ; $7456: $00
    nop                                           ; $7457: $00
    nop                                           ; $7458: $00
    nop                                           ; $7459: $00
    nop                                           ; $745A: $00
    nop                                           ; $745B: $00
    nop                                           ; $745C: $00
    nop                                           ; $745D: $00
    nop                                           ; $745E: $00
    nop                                           ; $745F: $00
    nop                                           ; $7460: $00
    nop                                           ; $7461: $00
    nop                                           ; $7462: $00
    nop                                           ; $7463: $00
    nop                                           ; $7464: $00
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
    nop                                           ; $747C: $00
    nop                                           ; $747D: $00
    nop                                           ; $747E: $00
    nop                                           ; $747F: $00
    nop                                           ; $7480: $00
    nop                                           ; $7481: $00
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
    nop                                           ; $748F: $00
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00
    nop                                           ; $7493: $00
    nop                                           ; $7494: $00
    nop                                           ; $7495: $00
    nop                                           ; $7496: $00
    nop                                           ; $7497: $00
    nop                                           ; $7498: $00
    nop                                           ; $7499: $00
    nop                                           ; $749A: $00
    nop                                           ; $749B: $00
    nop                                           ; $749C: $00
    nop                                           ; $749D: $00
    nop                                           ; $749E: $00
    nop                                           ; $749F: $00
    nop                                           ; $74A0: $00
    nop                                           ; $74A1: $00
    nop                                           ; $74A2: $00
    nop                                           ; $74A3: $00
    nop                                           ; $74A4: $00
    nop                                           ; $74A5: $00
    nop                                           ; $74A6: $00
    nop                                           ; $74A7: $00
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
    nop                                           ; $74B9: $00
    nop                                           ; $74BA: $00
    nop                                           ; $74BB: $00
    nop                                           ; $74BC: $00
    nop                                           ; $74BD: $00
    nop                                           ; $74BE: $00
    nop                                           ; $74BF: $00
    nop                                           ; $74C0: $00
    nop                                           ; $74C1: $00
    nop                                           ; $74C2: $00
    nop                                           ; $74C3: $00
    nop                                           ; $74C4: $00
    nop                                           ; $74C5: $00
    nop                                           ; $74C6: $00
    nop                                           ; $74C7: $00
    nop                                           ; $74C8: $00
    nop                                           ; $74C9: $00
    nop                                           ; $74CA: $00
    nop                                           ; $74CB: $00
    nop                                           ; $74CC: $00
    nop                                           ; $74CD: $00
    nop                                           ; $74CE: $00
    nop                                           ; $74CF: $00
    nop                                           ; $74D0: $00
    nop                                           ; $74D1: $00
    nop                                           ; $74D2: $00
    nop                                           ; $74D3: $00
    nop                                           ; $74D4: $00
    nop                                           ; $74D5: $00
    nop                                           ; $74D6: $00
    nop                                           ; $74D7: $00
    nop                                           ; $74D8: $00
    nop                                           ; $74D9: $00
    nop                                           ; $74DA: $00
    nop                                           ; $74DB: $00
    nop                                           ; $74DC: $00
    nop                                           ; $74DD: $00
    nop                                           ; $74DE: $00
    nop                                           ; $74DF: $00
    nop                                           ; $74E0: $00
    nop                                           ; $74E1: $00
    nop                                           ; $74E2: $00
    nop                                           ; $74E3: $00
    nop                                           ; $74E4: $00
    nop                                           ; $74E5: $00
    nop                                           ; $74E6: $00
    nop                                           ; $74E7: $00
    nop                                           ; $74E8: $00
    nop                                           ; $74E9: $00
    nop                                           ; $74EA: $00
    nop                                           ; $74EB: $00
    nop                                           ; $74EC: $00
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
    nop                                           ; $74F7: $00
    nop                                           ; $74F8: $00
    nop                                           ; $74F9: $00
    nop                                           ; $74FA: $00
    nop                                           ; $74FB: $00
    nop                                           ; $74FC: $00
    nop                                           ; $74FD: $00
    nop                                           ; $74FE: $00
    nop                                           ; $74FF: $00
    nop                                           ; $7500: $00
    nop                                           ; $7501: $00
    nop                                           ; $7502: $00
    nop                                           ; $7503: $00
    nop                                           ; $7504: $00
    nop                                           ; $7505: $00
    nop                                           ; $7506: $00
    nop                                           ; $7507: $00
    nop                                           ; $7508: $00
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
    nop                                           ; $751B: $00
    nop                                           ; $751C: $00
    nop                                           ; $751D: $00
    nop                                           ; $751E: $00
    nop                                           ; $751F: $00
    nop                                           ; $7520: $00
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
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
    nop                                           ; $752D: $00
    nop                                           ; $752E: $00
    nop                                           ; $752F: $00
    nop                                           ; $7530: $00
    nop                                           ; $7531: $00
    nop                                           ; $7532: $00
    nop                                           ; $7533: $00
    nop                                           ; $7534: $00
    nop                                           ; $7535: $00
    nop                                           ; $7536: $00
    nop                                           ; $7537: $00
    nop                                           ; $7538: $00
    nop                                           ; $7539: $00
    nop                                           ; $753A: $00
    nop                                           ; $753B: $00
    nop                                           ; $753C: $00
    nop                                           ; $753D: $00
    nop                                           ; $753E: $00
    nop                                           ; $753F: $00
    nop                                           ; $7540: $00
    nop                                           ; $7541: $00
    nop                                           ; $7542: $00
    nop                                           ; $7543: $00
    nop                                           ; $7544: $00
    nop                                           ; $7545: $00
    nop                                           ; $7546: $00
    nop                                           ; $7547: $00
    nop                                           ; $7548: $00
    nop                                           ; $7549: $00
    nop                                           ; $754A: $00
    nop                                           ; $754B: $00
    nop                                           ; $754C: $00
    nop                                           ; $754D: $00
    nop                                           ; $754E: $00
    nop                                           ; $754F: $00
    nop                                           ; $7550: $00
    nop                                           ; $7551: $00
    nop                                           ; $7552: $00
    nop                                           ; $7553: $00
    nop                                           ; $7554: $00
    nop                                           ; $7555: $00
    nop                                           ; $7556: $00
    nop                                           ; $7557: $00
    nop                                           ; $7558: $00
    nop                                           ; $7559: $00
    nop                                           ; $755A: $00
    nop                                           ; $755B: $00
    nop                                           ; $755C: $00
    nop                                           ; $755D: $00
    nop                                           ; $755E: $00
    nop                                           ; $755F: $00
    nop                                           ; $7560: $00
    nop                                           ; $7561: $00
    nop                                           ; $7562: $00
    nop                                           ; $7563: $00
    nop                                           ; $7564: $00
    nop                                           ; $7565: $00
    nop                                           ; $7566: $00
    nop                                           ; $7567: $00
    nop                                           ; $7568: $00
    nop                                           ; $7569: $00
    nop                                           ; $756A: $00
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
    nop                                           ; $7576: $00
    nop                                           ; $7577: $00
    nop                                           ; $7578: $00
    nop                                           ; $7579: $00
    nop                                           ; $757A: $00
    nop                                           ; $757B: $00
    nop                                           ; $757C: $00
    nop                                           ; $757D: $00
    nop                                           ; $757E: $00
    nop                                           ; $757F: $00
    nop                                           ; $7580: $00
    nop                                           ; $7581: $00
    nop                                           ; $7582: $00
    nop                                           ; $7583: $00
    nop                                           ; $7584: $00
    nop                                           ; $7585: $00
    nop                                           ; $7586: $00
    nop                                           ; $7587: $00
    nop                                           ; $7588: $00
    nop                                           ; $7589: $00
    nop                                           ; $758A: $00
    nop                                           ; $758B: $00
    nop                                           ; $758C: $00
    nop                                           ; $758D: $00
    nop                                           ; $758E: $00
    nop                                           ; $758F: $00
    nop                                           ; $7590: $00
    nop                                           ; $7591: $00
    nop                                           ; $7592: $00
    nop                                           ; $7593: $00
    nop                                           ; $7594: $00
    nop                                           ; $7595: $00
    nop                                           ; $7596: $00
    nop                                           ; $7597: $00
    nop                                           ; $7598: $00
    nop                                           ; $7599: $00
    nop                                           ; $759A: $00
    nop                                           ; $759B: $00
    nop                                           ; $759C: $00
    nop                                           ; $759D: $00
    nop                                           ; $759E: $00
    nop                                           ; $759F: $00
    nop                                           ; $75A0: $00
    nop                                           ; $75A1: $00
    nop                                           ; $75A2: $00
    nop                                           ; $75A3: $00
    nop                                           ; $75A4: $00
    nop                                           ; $75A5: $00
    nop                                           ; $75A6: $00
    nop                                           ; $75A7: $00
    nop                                           ; $75A8: $00
    nop                                           ; $75A9: $00
    nop                                           ; $75AA: $00
    nop                                           ; $75AB: $00
    nop                                           ; $75AC: $00
    nop                                           ; $75AD: $00
    nop                                           ; $75AE: $00
    nop                                           ; $75AF: $00
    nop                                           ; $75B0: $00
    nop                                           ; $75B1: $00
    nop                                           ; $75B2: $00
    nop                                           ; $75B3: $00
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
    nop                                           ; $75BF: $00
    nop                                           ; $75C0: $00
    nop                                           ; $75C1: $00
    nop                                           ; $75C2: $00
    nop                                           ; $75C3: $00
    nop                                           ; $75C4: $00
    nop                                           ; $75C5: $00
    nop                                           ; $75C6: $00
    nop                                           ; $75C7: $00
    nop                                           ; $75C8: $00
    nop                                           ; $75C9: $00
    nop                                           ; $75CA: $00
    nop                                           ; $75CB: $00
    nop                                           ; $75CC: $00
    nop                                           ; $75CD: $00
    nop                                           ; $75CE: $00
    nop                                           ; $75CF: $00
    nop                                           ; $75D0: $00
    nop                                           ; $75D1: $00
    nop                                           ; $75D2: $00
    nop                                           ; $75D3: $00
    nop                                           ; $75D4: $00
    nop                                           ; $75D5: $00
    nop                                           ; $75D6: $00
    nop                                           ; $75D7: $00
    nop                                           ; $75D8: $00
    nop                                           ; $75D9: $00
    nop                                           ; $75DA: $00
    nop                                           ; $75DB: $00
    nop                                           ; $75DC: $00
    nop                                           ; $75DD: $00
    nop                                           ; $75DE: $00
    nop                                           ; $75DF: $00
    nop                                           ; $75E0: $00
    nop                                           ; $75E1: $00
    nop                                           ; $75E2: $00
    nop                                           ; $75E3: $00
    nop                                           ; $75E4: $00
    nop                                           ; $75E5: $00
    nop                                           ; $75E6: $00
    nop                                           ; $75E7: $00
    nop                                           ; $75E8: $00
    nop                                           ; $75E9: $00
    nop                                           ; $75EA: $00
    nop                                           ; $75EB: $00
    nop                                           ; $75EC: $00
    nop                                           ; $75ED: $00
    nop                                           ; $75EE: $00
    nop                                           ; $75EF: $00
    nop                                           ; $75F0: $00
    nop                                           ; $75F1: $00
    nop                                           ; $75F2: $00
    nop                                           ; $75F3: $00
    nop                                           ; $75F4: $00
    nop                                           ; $75F5: $00
    nop                                           ; $75F6: $00
    nop                                           ; $75F7: $00
    nop                                           ; $75F8: $00
    nop                                           ; $75F9: $00
    nop                                           ; $75FA: $00
    nop                                           ; $75FB: $00
    nop                                           ; $75FC: $00
    nop                                           ; $75FD: $00
    nop                                           ; $75FE: $00
    nop                                           ; $75FF: $00
    nop                                           ; $7600: $00
    nop                                           ; $7601: $00
    nop                                           ; $7602: $00
    nop                                           ; $7603: $00
    nop                                           ; $7604: $00
    nop                                           ; $7605: $00
    nop                                           ; $7606: $00
    nop                                           ; $7607: $00
    nop                                           ; $7608: $00
    nop                                           ; $7609: $00
    nop                                           ; $760A: $00
    nop                                           ; $760B: $00
    nop                                           ; $760C: $00
    nop                                           ; $760D: $00
    nop                                           ; $760E: $00
    nop                                           ; $760F: $00
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    nop                                           ; $7614: $00
    nop                                           ; $7615: $00
    nop                                           ; $7616: $00
    nop                                           ; $7617: $00
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
    nop                                           ; $7624: $00
    nop                                           ; $7625: $00
    nop                                           ; $7626: $00
    nop                                           ; $7627: $00
    nop                                           ; $7628: $00
    nop                                           ; $7629: $00
    nop                                           ; $762A: $00
    nop                                           ; $762B: $00
    nop                                           ; $762C: $00
    nop                                           ; $762D: $00
    nop                                           ; $762E: $00
    nop                                           ; $762F: $00
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    nop                                           ; $7632: $00
    nop                                           ; $7633: $00
    nop                                           ; $7634: $00
    nop                                           ; $7635: $00
    nop                                           ; $7636: $00
    nop                                           ; $7637: $00
    nop                                           ; $7638: $00
    nop                                           ; $7639: $00
    nop                                           ; $763A: $00
    nop                                           ; $763B: $00
    nop                                           ; $763C: $00
    nop                                           ; $763D: $00
    nop                                           ; $763E: $00
    nop                                           ; $763F: $00
    nop                                           ; $7640: $00
    nop                                           ; $7641: $00
    nop                                           ; $7642: $00
    nop                                           ; $7643: $00
    nop                                           ; $7644: $00
    nop                                           ; $7645: $00
    nop                                           ; $7646: $00
    nop                                           ; $7647: $00
    nop                                           ; $7648: $00
    nop                                           ; $7649: $00
    nop                                           ; $764A: $00
    nop                                           ; $764B: $00
    nop                                           ; $764C: $00
    nop                                           ; $764D: $00
    nop                                           ; $764E: $00
    nop                                           ; $764F: $00
    nop                                           ; $7650: $00
    nop                                           ; $7651: $00
    nop                                           ; $7652: $00
    nop                                           ; $7653: $00
    nop                                           ; $7654: $00
    nop                                           ; $7655: $00
    nop                                           ; $7656: $00
    nop                                           ; $7657: $00
    nop                                           ; $7658: $00
    nop                                           ; $7659: $00
    nop                                           ; $765A: $00
    nop                                           ; $765B: $00
    nop                                           ; $765C: $00
    nop                                           ; $765D: $00
    nop                                           ; $765E: $00
    nop                                           ; $765F: $00
    nop                                           ; $7660: $00
    nop                                           ; $7661: $00
    nop                                           ; $7662: $00
    nop                                           ; $7663: $00
    nop                                           ; $7664: $00
    nop                                           ; $7665: $00
    nop                                           ; $7666: $00
    nop                                           ; $7667: $00
    nop                                           ; $7668: $00
    nop                                           ; $7669: $00
    nop                                           ; $766A: $00
    nop                                           ; $766B: $00
    nop                                           ; $766C: $00
    nop                                           ; $766D: $00
    nop                                           ; $766E: $00
    nop                                           ; $766F: $00
    nop                                           ; $7670: $00
    nop                                           ; $7671: $00
    nop                                           ; $7672: $00
    nop                                           ; $7673: $00
    nop                                           ; $7674: $00
    nop                                           ; $7675: $00
    nop                                           ; $7676: $00
    nop                                           ; $7677: $00
    nop                                           ; $7678: $00
    nop                                           ; $7679: $00
    nop                                           ; $767A: $00
    nop                                           ; $767B: $00
    nop                                           ; $767C: $00
    nop                                           ; $767D: $00
    nop                                           ; $767E: $00
    nop                                           ; $767F: $00
    nop                                           ; $7680: $00
    nop                                           ; $7681: $00
    nop                                           ; $7682: $00
    nop                                           ; $7683: $00
    nop                                           ; $7684: $00
    nop                                           ; $7685: $00
    nop                                           ; $7686: $00
    nop                                           ; $7687: $00
    nop                                           ; $7688: $00
    nop                                           ; $7689: $00
    nop                                           ; $768A: $00
    nop                                           ; $768B: $00
    nop                                           ; $768C: $00
    nop                                           ; $768D: $00
    nop                                           ; $768E: $00
    nop                                           ; $768F: $00
    nop                                           ; $7690: $00
    nop                                           ; $7691: $00
    nop                                           ; $7692: $00
    nop                                           ; $7693: $00
    nop                                           ; $7694: $00
    nop                                           ; $7695: $00
    nop                                           ; $7696: $00
    nop                                           ; $7697: $00
    nop                                           ; $7698: $00
    nop                                           ; $7699: $00
    nop                                           ; $769A: $00
    nop                                           ; $769B: $00
    nop                                           ; $769C: $00
    nop                                           ; $769D: $00
    nop                                           ; $769E: $00
    nop                                           ; $769F: $00
    nop                                           ; $76A0: $00
    nop                                           ; $76A1: $00
    nop                                           ; $76A2: $00
    nop                                           ; $76A3: $00
    nop                                           ; $76A4: $00
    nop                                           ; $76A5: $00
    nop                                           ; $76A6: $00
    nop                                           ; $76A7: $00
    nop                                           ; $76A8: $00
    nop                                           ; $76A9: $00
    nop                                           ; $76AA: $00
    nop                                           ; $76AB: $00
    nop                                           ; $76AC: $00
    nop                                           ; $76AD: $00
    nop                                           ; $76AE: $00
    nop                                           ; $76AF: $00
    nop                                           ; $76B0: $00
    nop                                           ; $76B1: $00
    nop                                           ; $76B2: $00
    nop                                           ; $76B3: $00
    nop                                           ; $76B4: $00
    nop                                           ; $76B5: $00
    nop                                           ; $76B6: $00
    nop                                           ; $76B7: $00
    nop                                           ; $76B8: $00
    nop                                           ; $76B9: $00
    nop                                           ; $76BA: $00
    nop                                           ; $76BB: $00
    nop                                           ; $76BC: $00
    nop                                           ; $76BD: $00
    nop                                           ; $76BE: $00
    nop                                           ; $76BF: $00
    nop                                           ; $76C0: $00
    nop                                           ; $76C1: $00
    nop                                           ; $76C2: $00
    nop                                           ; $76C3: $00
    nop                                           ; $76C4: $00
    nop                                           ; $76C5: $00
    nop                                           ; $76C6: $00
    nop                                           ; $76C7: $00
    nop                                           ; $76C8: $00
    nop                                           ; $76C9: $00
    nop                                           ; $76CA: $00
    nop                                           ; $76CB: $00
    nop                                           ; $76CC: $00
    nop                                           ; $76CD: $00
    nop                                           ; $76CE: $00
    nop                                           ; $76CF: $00
    nop                                           ; $76D0: $00
    nop                                           ; $76D1: $00
    nop                                           ; $76D2: $00
    nop                                           ; $76D3: $00
    nop                                           ; $76D4: $00
    nop                                           ; $76D5: $00
    nop                                           ; $76D6: $00
    nop                                           ; $76D7: $00
    nop                                           ; $76D8: $00
    nop                                           ; $76D9: $00
    nop                                           ; $76DA: $00
    nop                                           ; $76DB: $00
    nop                                           ; $76DC: $00
    nop                                           ; $76DD: $00
    nop                                           ; $76DE: $00
    nop                                           ; $76DF: $00
    nop                                           ; $76E0: $00
    nop                                           ; $76E1: $00
    nop                                           ; $76E2: $00
    nop                                           ; $76E3: $00
    nop                                           ; $76E4: $00
    nop                                           ; $76E5: $00
    nop                                           ; $76E6: $00
    nop                                           ; $76E7: $00
    nop                                           ; $76E8: $00
    nop                                           ; $76E9: $00
    nop                                           ; $76EA: $00
    nop                                           ; $76EB: $00
    nop                                           ; $76EC: $00
    nop                                           ; $76ED: $00
    nop                                           ; $76EE: $00
    nop                                           ; $76EF: $00
    nop                                           ; $76F0: $00
    nop                                           ; $76F1: $00
    nop                                           ; $76F2: $00
    nop                                           ; $76F3: $00
    nop                                           ; $76F4: $00
    nop                                           ; $76F5: $00
    nop                                           ; $76F6: $00
    nop                                           ; $76F7: $00
    nop                                           ; $76F8: $00
    nop                                           ; $76F9: $00
    nop                                           ; $76FA: $00
    nop                                           ; $76FB: $00
    nop                                           ; $76FC: $00
    nop                                           ; $76FD: $00
    nop                                           ; $76FE: $00
    nop                                           ; $76FF: $00
    nop                                           ; $7700: $00
    nop                                           ; $7701: $00
    nop                                           ; $7702: $00
    nop                                           ; $7703: $00
    nop                                           ; $7704: $00
    nop                                           ; $7705: $00
    nop                                           ; $7706: $00
    nop                                           ; $7707: $00
    nop                                           ; $7708: $00
    nop                                           ; $7709: $00
    nop                                           ; $770A: $00
    nop                                           ; $770B: $00
    nop                                           ; $770C: $00
    nop                                           ; $770D: $00
    nop                                           ; $770E: $00
    nop                                           ; $770F: $00
    nop                                           ; $7710: $00
    nop                                           ; $7711: $00
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    nop                                           ; $7714: $00
    nop                                           ; $7715: $00
    nop                                           ; $7716: $00
    nop                                           ; $7717: $00
    nop                                           ; $7718: $00
    nop                                           ; $7719: $00
    nop                                           ; $771A: $00
    nop                                           ; $771B: $00
    nop                                           ; $771C: $00
    nop                                           ; $771D: $00
    nop                                           ; $771E: $00
    nop                                           ; $771F: $00
    nop                                           ; $7720: $00
    nop                                           ; $7721: $00
    nop                                           ; $7722: $00
    nop                                           ; $7723: $00
    nop                                           ; $7724: $00
    nop                                           ; $7725: $00
    nop                                           ; $7726: $00
    nop                                           ; $7727: $00
    nop                                           ; $7728: $00
    nop                                           ; $7729: $00
    nop                                           ; $772A: $00
    nop                                           ; $772B: $00
    nop                                           ; $772C: $00
    nop                                           ; $772D: $00
    nop                                           ; $772E: $00
    nop                                           ; $772F: $00
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    nop                                           ; $7732: $00
    nop                                           ; $7733: $00
    nop                                           ; $7734: $00
    nop                                           ; $7735: $00
    nop                                           ; $7736: $00
    nop                                           ; $7737: $00
    nop                                           ; $7738: $00
    nop                                           ; $7739: $00
    nop                                           ; $773A: $00
    nop                                           ; $773B: $00
    nop                                           ; $773C: $00
    nop                                           ; $773D: $00
    nop                                           ; $773E: $00
    nop                                           ; $773F: $00
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    nop                                           ; $7742: $00
    nop                                           ; $7743: $00
    nop                                           ; $7744: $00
    nop                                           ; $7745: $00
    nop                                           ; $7746: $00
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
