SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    ld hl, sp+$00                                 ; $4000: $F8 $00
    ldh a, [$E0]                                  ; $4002: $F0 $E0
    ld hl, sp+$70                                 ; $4004: $F8 $70
    ld hl, sp+$40                                 ; $4006: $F8 $40
    ld hl, sp+$30                                 ; $4008: $F8 $30
    db $FC                                        ; $400A: $FC
    ld a, b                                       ; $400B: $78
    db $FC                                        ; $400C: $FC
    jr c, @-$06                                   ; $400D: $38 $F8

    nop                                           ; $400F: $00
    rra                                           ; $4010: $1F
    nop                                           ; $4011: $00
    rrca                                          ; $4012: $0F
    rlca                                          ; $4013: $07
    rrca                                          ; $4014: $0F
    rlca                                          ; $4015: $07
    rlca                                          ; $4016: $07
    inc bc                                        ; $4017: $03
    rlca                                          ; $4018: $07
    nop                                           ; $4019: $00
    rlca                                          ; $401A: $07
    ld [bc], a                                    ; $401B: $02
    inc bc                                        ; $401C: $03
    nop                                           ; $401D: $00
    nop                                           ; $401E: $00
    nop                                           ; $401F: $00
    ld hl, sp+$00                                 ; $4020: $F8 $00
    ldh a, [$E0]                                  ; $4022: $F0 $E0
    ldh a, [$E0]                                  ; $4024: $F0 $E0
    ldh a, [$60]                                  ; $4026: $F0 $60
    ldh a, [$60]                                  ; $4028: $F0 $60
    ldh [$80], a                                  ; $402A: $E0 $80
    ldh [$C0], a                                  ; $402C: $E0 $C0
    ret nz                                        ; $402E: $C0

    nop                                           ; $402F: $00
    nop                                           ; $4030: $00
    nop                                           ; $4031: $00
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    ld bc, $0200                                  ; $4034: $01 $00 $02
    ld bc, $0205                                  ; $4037: $01 $05 $02
    dec b                                         ; $403A: $05
    ld [bc], a                                    ; $403B: $02
    dec b                                         ; $403C: $05
    ld [bc], a                                    ; $403D: $02
    inc bc                                        ; $403E: $03
    nop                                           ; $403F: $00
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    ld c, $00                                     ; $4042: $0E $00
    ld [hl], c                                    ; $4044: $71
    ld c, $8C                                     ; $4045: $0E $8C
    ld [hl], e                                    ; $4047: $73
    ld [hl], a                                    ; $4048: $77
    adc b                                         ; $4049: $88
    add l                                         ; $404A: $85
    ld a, d                                       ; $404B: $7A
    ld [$50F7], sp                                ; $404C: $08 $F7 $50
    xor a                                         ; $404F: $AF
    rlca                                          ; $4050: $07
    nop                                           ; $4051: $00
    rrca                                          ; $4052: $0F
    rlca                                          ; $4053: $07
    rra                                           ; $4054: $1F
    rrca                                          ; $4055: $0F
    sbc a                                         ; $4056: $9F
    rrca                                          ; $4057: $0F
    ld e, a                                       ; $4058: $5F
    adc e                                         ; $4059: $8B
    cp a                                          ; $405A: $BF
    ld c, c                                       ; $405B: $49
    rst $18                                       ; $405C: $DF
    jr z, @+$01                                   ; $405D: $28 $FF

    inc c                                         ; $405F: $0C
    sub c                                         ; $4060: $91
    ld l, $2B                                     ; $4061: $2E $2B
    inc b                                         ; $4063: $04
    dec b                                         ; $4064: $05
    nop                                           ; $4065: $00
    nop                                           ; $4066: $00
    nop                                           ; $4067: $00
    nop                                           ; $4068: $00
    nop                                           ; $4069: $00
    nop                                           ; $406A: $00
    nop                                           ; $406B: $00
    nop                                           ; $406C: $00
    nop                                           ; $406D: $00
    nop                                           ; $406E: $00
    nop                                           ; $406F: $00
    cp a                                          ; $4070: $BF
    ld b, [hl]                                    ; $4071: $46
    rra                                           ; $4072: $1F
    ld [c], a                                     ; $4073: $E2
    ld a, a                                       ; $4074: $7F
    sbc b                                         ; $4075: $98
    rst $38                                       ; $4076: $FF

jr_00D_4077:
    dec sp                                        ; $4077: $3B
    ld a, a                                       ; $4078: $7F
    inc sp                                        ; $4079: $33
    ccf                                           ; $407A: $3F
    nop                                           ; $407B: $00
    daa                                           ; $407C: $27
    dec de                                        ; $407D: $1B
    daa                                           ; $407E: $27
    jr jr_00D_4082                                ; $407F: $18 $01

    nop                                           ; $4081: $00

jr_00D_4082:
    ld [bc], a                                    ; $4082: $02
    ld bc, $0205                                  ; $4083: $01 $05 $02
    dec b                                         ; $4086: $05
    ld [bc], a                                    ; $4087: $02
    ld a, [bc]                                    ; $4088: $0A
    dec b                                         ; $4089: $05
    ld a, [bc]                                    ; $408A: $0A
    dec b                                         ; $408B: $05
    dec bc                                        ; $408C: $0B
    inc b                                         ; $408D: $04
    ld b, $00                                     ; $408E: $06 $00
    nop                                           ; $4090: $00
    nop                                           ; $4091: $00
    nop                                           ; $4092: $00
    nop                                           ; $4093: $00
    ld c, $00                                     ; $4094: $0E $00
    ld sp, $CC0E                                  ; $4096: $31 $0E $CC
    inc sp                                        ; $4099: $33
    scf                                           ; $409A: $37
    ret z                                         ; $409B: $C8

    push bc                                       ; $409C: $C5
    ld a, [hl-]                                   ; $409D: $3A
    jr z, jr_00D_4077                             ; $409E: $28 $D7

    rlca                                          ; $40A0: $07
    nop                                           ; $40A1: $00
    rrca                                          ; $40A2: $0F
    rlca                                          ; $40A3: $07
    rra                                           ; $40A4: $1F
    rrca                                          ; $40A5: $0F
    rra                                           ; $40A6: $1F
    rrca                                          ; $40A7: $0F
    sbc a                                         ; $40A8: $9F
    dec bc                                        ; $40A9: $0B
    ld e, a                                       ; $40AA: $5F
    adc c                                         ; $40AB: $89
    cp a                                          ; $40AC: $BF
    ld c, b                                       ; $40AD: $48
    rst $18                                       ; $40AE: $DF
    inc l                                         ; $40AF: $2C
    ld d, c                                       ; $40B0: $51
    xor [hl]                                      ; $40B1: $AE
    ld d, c                                       ; $40B2: $51
    xor [hl]                                      ; $40B3: $AE
    xor d                                         ; $40B4: $AA
    inc b                                         ; $40B5: $04
    inc b                                         ; $40B6: $04
    nop                                           ; $40B7: $00
    nop                                           ; $40B8: $00
    nop                                           ; $40B9: $00
    nop                                           ; $40BA: $00
    nop                                           ; $40BB: $00
    nop                                           ; $40BC: $00
    nop                                           ; $40BD: $00
    nop                                           ; $40BE: $00
    nop                                           ; $40BF: $00
    rst $28                                       ; $40C0: $EF
    ld d, $3F                                     ; $40C1: $16 $3F
    jp nz, $987F                                  ; $40C3: $C2 $7F $98

    rst $38                                       ; $40C6: $FF
    dec sp                                        ; $40C7: $3B
    ld a, a                                       ; $40C8: $7F
    inc sp                                        ; $40C9: $33
    ccf                                           ; $40CA: $3F
    nop                                           ; $40CB: $00
    daa                                           ; $40CC: $27
    dec de                                        ; $40CD: $1B
    daa                                           ; $40CE: $27
    jr jr_00D_40D1                                ; $40CF: $18 $00

jr_00D_40D1:
    nop                                           ; $40D1: $00
    nop                                           ; $40D2: $00
    nop                                           ; $40D3: $00
    nop                                           ; $40D4: $00
    nop                                           ; $40D5: $00
    nop                                           ; $40D6: $00
    nop                                           ; $40D7: $00
    inc bc                                        ; $40D8: $03
    nop                                           ; $40D9: $00
    inc c                                         ; $40DA: $0C
    inc bc                                        ; $40DB: $03
    inc sp                                        ; $40DC: $33
    inc c                                         ; $40DD: $0C
    ld c, [hl]                                    ; $40DE: $4E
    ld sp, $0007                                  ; $40DF: $31 $07 $00
    rrca                                          ; $40E2: $0F
    rlca                                          ; $40E3: $07
    rra                                           ; $40E4: $1F
    rrca                                          ; $40E5: $0F
    rra                                           ; $40E6: $1F
    rrca                                          ; $40E7: $0F
    rst $18                                       ; $40E8: $DF
    dec bc                                        ; $40E9: $0B
    ccf                                           ; $40EA: $3F
    ret                                           ; $40EB: $C9


    rst $18                                       ; $40EC: $DF
    jr z, jr_00D_416E                             ; $40ED: $28 $7F

    adc h                                         ; $40EF: $8C
    nop                                           ; $40F0: $00
    nop                                           ; $40F1: $00
    ld bc, $0200                                  ; $40F2: $01 $00 $02
    ld bc, $0102                                  ; $40F5: $01 $02 $01
    dec b                                         ; $40F8: $05
    ld [bc], a                                    ; $40F9: $02
    dec b                                         ; $40FA: $05
    ld [bc], a                                    ; $40FB: $02
    dec b                                         ; $40FC: $05
    ld [bc], a                                    ; $40FD: $02
    inc bc                                        ; $40FE: $03
    nop                                           ; $40FF: $00
    or b                                          ; $4100: $B0
    ld c, a                                       ; $4101: $4F
    ld b, h                                       ; $4102: $44
    cp e                                          ; $4103: $BB
    xor c                                         ; $4104: $A9
    ld d, [hl]                                    ; $4105: $56
    pop de                                        ; $4106: $D1
    ld l, $51                                     ; $4107: $2E $51
    xor [hl]                                      ; $4109: $AE
    ld l, d                                       ; $410A: $6A
    add h                                         ; $410B: $84
    add h                                         ; $410C: $84
    nop                                           ; $410D: $00
    nop                                           ; $410E: $00
    nop                                           ; $410F: $00
    ld a, a                                       ; $4110: $7F
    add [hl]                                      ; $4111: $86
    sbc a                                         ; $4112: $9F
    ld h, d                                       ; $4113: $62
    ccf                                           ; $4114: $3F
    ret c                                         ; $4115: $D8

    rst $38                                       ; $4116: $FF
    dec sp                                        ; $4117: $3B
    ld a, a                                       ; $4118: $7F
    inc sp                                        ; $4119: $33
    ccf                                           ; $411A: $3F
    nop                                           ; $411B: $00
    daa                                           ; $411C: $27
    dec de                                        ; $411D: $1B
    daa                                           ; $411E: $27
    jr jr_00D_4140                                ; $411F: $18 $1F

    nop                                           ; $4121: $00
    rrca                                          ; $4122: $0F
    rlca                                          ; $4123: $07
    rrca                                          ; $4124: $0F
    inc b                                         ; $4125: $04
    rlca                                          ; $4126: $07
    inc bc                                        ; $4127: $03
    rlca                                          ; $4128: $07
    inc bc                                        ; $4129: $03
    rlca                                          ; $412A: $07
    ld [bc], a                                    ; $412B: $02
    inc bc                                        ; $412C: $03
    nop                                           ; $412D: $00
    nop                                           ; $412E: $00
    nop                                           ; $412F: $00
    ld hl, sp+$00                                 ; $4130: $F8 $00
    ldh a, [$E0]                                  ; $4132: $F0 $E0
    ldh a, [$E0]                                  ; $4134: $F0 $E0
    ldh a, [rP1]                                  ; $4136: $F0 $00
    ldh a, [$60]                                  ; $4138: $F0 $60
    ldh a, [$E0]                                  ; $413A: $F0 $E0
    ldh [$C0], a                                  ; $413C: $E0 $C0
    ret nz                                        ; $413E: $C0

    nop                                           ; $413F: $00

jr_00D_4140:
    rlca                                          ; $4140: $07
    nop                                           ; $4141: $00
    rrca                                          ; $4142: $0F
    rlca                                          ; $4143: $07
    rra                                           ; $4144: $1F
    rrca                                          ; $4145: $0F
    sbc a                                         ; $4146: $9F
    rrca                                          ; $4147: $0F
    ld e, a                                       ; $4148: $5F
    adc a                                         ; $4149: $8F
    cp a                                          ; $414A: $BF
    ld c, a                                       ; $414B: $4F
    rst $18                                       ; $414C: $DF
    daa                                           ; $414D: $27
    rst $28                                       ; $414E: $EF
    db $10                                        ; $414F: $10
    or a                                          ; $4150: $B7
    ld c, b                                       ; $4151: $48
    add hl, de                                    ; $4152: $19
    and $71                                       ; $4153: $E6 $71
    adc [hl]                                      ; $4155: $8E
    ld sp, hl                                     ; $4156: $F9
    ld h, $7D                                     ; $4157: $26 $7D
    ld [bc], a                                    ; $4159: $02
    ccf                                           ; $415A: $3F
    nop                                           ; $415B: $00
    cpl                                           ; $415C: $2F
    db $10                                        ; $415D: $10
    cpl                                           ; $415E: $2F
    inc de                                        ; $415F: $13
    rlca                                          ; $4160: $07
    nop                                           ; $4161: $00
    rrca                                          ; $4162: $0F
    rlca                                          ; $4163: $07
    rra                                           ; $4164: $1F
    rrca                                          ; $4165: $0F
    rra                                           ; $4166: $1F
    rrca                                          ; $4167: $0F
    sbc a                                         ; $4168: $9F
    rrca                                          ; $4169: $0F
    ld e, a                                       ; $416A: $5F
    adc a                                         ; $416B: $8F
    cp a                                          ; $416C: $BF
    ld c, a                                       ; $416D: $4F

jr_00D_416E:
    rst $18                                       ; $416E: $DF
    jr nz, @-$17                                  ; $416F: $20 $E7

    jr jr_00D_41AC                                ; $4171: $18 $39

    add $4D                                       ; $4173: $C6 $4D
    or d                                          ; $4175: $B2
    pop af                                        ; $4176: $F1
    ld c, $7D                                     ; $4177: $0E $7D
    ld [bc], a                                    ; $4179: $02
    ccf                                           ; $417A: $3F
    nop                                           ; $417B: $00
    cpl                                           ; $417C: $2F
    db $10                                        ; $417D: $10
    cpl                                           ; $417E: $2F
    inc de                                        ; $417F: $13
    ld a, c                                       ; $4180: $79
    add [hl]                                      ; $4181: $86
    adc l                                         ; $4182: $8D
    ld [hl], d                                    ; $4183: $72
    ld bc, $ADFE                                  ; $4184: $01 $FE $AD
    ld d, d                                       ; $4187: $52
    ld a, a                                       ; $4188: $7F
    nop                                           ; $4189: $00
    ccf                                           ; $418A: $3F
    nop                                           ; $418B: $00
    cpl                                           ; $418C: $2F
    db $10                                        ; $418D: $10
    cpl                                           ; $418E: $2F
    inc de                                        ; $418F: $13
    nop                                           ; $4190: $00
    nop                                           ; $4191: $00
    rlca                                          ; $4192: $07

jr_00D_4193:
    nop                                           ; $4193: $00
    rrca                                          ; $4194: $0F
    dec b                                         ; $4195: $05
    rrca                                          ; $4196: $0F
    dec b                                         ; $4197: $05
    rrca                                          ; $4198: $0F
    inc b                                         ; $4199: $04
    rrca                                          ; $419A: $0F
    ld b, $07                                     ; $419B: $06 $07
    nop                                           ; $419D: $00
    nop                                           ; $419E: $00
    nop                                           ; $419F: $00
    cp $00                                        ; $41A0: $FE $00
    cp $7C                                        ; $41A2: $FE $7C
    rst $38                                       ; $41A4: $FF
    cp $FF                                        ; $41A5: $FE $FF
    or $FE                                        ; $41A7: $F6 $FE
    ret nz                                        ; $41A9: $C0

    ld hl, sp+$30                                 ; $41AA: $F8 $30

jr_00D_41AC:
    or b                                          ; $41AC: $B0

jr_00D_41AD:
    nop                                           ; $41AD: $00
    nop                                           ; $41AE: $00
    nop                                           ; $41AF: $00
    ld a, [hl]                                    ; $41B0: $7E
    nop                                           ; $41B1: $00
    rst $38                                       ; $41B2: $FF
    ld a, [hl]                                    ; $41B3: $7E
    rst $38                                       ; $41B4: $FF
    rst $38                                       ; $41B5: $FF
    rst $38                                       ; $41B6: $FF
    rst $38                                       ; $41B7: $FF
    rst $38                                       ; $41B8: $FF
    rst $28                                       ; $41B9: $EF
    rst $38                                       ; $41BA: $FF
    and $FF                                       ; $41BB: $E6 $FF
    ld h, b                                       ; $41BD: $60
    rst $38                                       ; $41BE: $FF
    jr nc, @+$01                                  ; $41BF: $30 $FF

jr_00D_41C1:
    reti                                          ; $41C1: $D9


    rst $38                                       ; $41C2: $FF
    ret                                           ; $41C3: $C9


    rst $38                                       ; $41C4: $FF
    or b                                          ; $41C5: $B0
    rst $38                                       ; $41C6: $FF
    ld a, [de]                                    ; $41C7: $1A
    rst $38                                       ; $41C8: $FF
    ld h, b                                       ; $41C9: $60
    rst $38                                       ; $41CA: $FF
    inc a                                         ; $41CB: $3C
    ld a, $DD                                     ; $41CC: $3E $DD
    ccf                                           ; $41CE: $3F
    ret nz                                        ; $41CF: $C0

    nop                                           ; $41D0: $00
    nop                                           ; $41D1: $00
    nop                                           ; $41D2: $00
    nop                                           ; $41D3: $00
    inc bc                                        ; $41D4: $03
    nop                                           ; $41D5: $00
    inc b                                         ; $41D6: $04
    inc bc                                        ; $41D7: $03
    dec bc                                        ; $41D8: $0B
    inc b                                         ; $41D9: $04
    inc d                                         ; $41DA: $14
    dec bc                                        ; $41DB: $0B
    jr z, @+$19                                   ; $41DC: $28 $17

    add hl, hl                                    ; $41DE: $29
    ld d, $00                                     ; $41DF: $16 $00
    nop                                           ; $41E1: $00
    ldh [rP1], a                                  ; $41E2: $E0 $00
    add hl, de                                    ; $41E4: $19
    ldh [$C5], a                                  ; $41E5: $E0 $C5
    jr c, @+$75                                   ; $41E7: $38 $73

    adc h                                         ; $41E9: $8C
    add hl, de                                    ; $41EA: $19
    and $8D                                       ; $41EB: $E6 $8D
    ld [hl], d                                    ; $41ED: $72
    daa                                           ; $41EE: $27
    ret c                                         ; $41EF: $D8

    nop                                           ; $41F0: $00
    nop                                           ; $41F1: $00
    nop                                           ; $41F2: $00
    nop                                           ; $41F3: $00
    ldh a, [rP1]                                  ; $41F4: $F0 $00
    ret z                                         ; $41F6: $C8

    jr nc, jr_00D_41AD                            ; $41F7: $30 $B4

    ld c, b                                       ; $41F9: $48
    db $E4                                        ; $41FA: $E4
    jr jr_00D_41C1                                ; $41FB: $18 $C4

    jr c, jr_00D_4193                             ; $41FD: $38 $94

    ld l, b                                       ; $41FF: $68
    ld d, c                                       ; $4200: $51
    ld l, $56                                     ; $4201: $2E $56
    jr z, @+$5A                                   ; $4203: $28 $58

    jr nz, jr_00D_4227                            ; $4205: $20 $20

    nop                                           ; $4207: $00
    nop                                           ; $4208: $00
    nop                                           ; $4209: $00
    nop                                           ; $420A: $00
    nop                                           ; $420B: $00
    nop                                           ; $420C: $00
    nop                                           ; $420D: $00
    nop                                           ; $420E: $00
    nop                                           ; $420F: $00
    cpl                                           ; $4210: $2F
    pop de                                        ; $4211: $D1
    rst $18                                       ; $4212: $DF
    inc bc                                        ; $4213: $03
    adc a                                         ; $4214: $8F
    inc bc                                        ; $4215: $03
    rlca                                          ; $4216: $07
    nop                                           ; $4217: $00
    inc bc                                        ; $4218: $03
    nop                                           ; $4219: $00
    inc bc                                        ; $421A: $03
    nop                                           ; $421B: $00
    inc bc                                        ; $421C: $03
    nop                                           ; $421D: $00
    ld bc, $8800                                  ; $421E: $01 $00 $88
    ld [hl], b                                    ; $4221: $70
    ret z                                         ; $4222: $C8

    jr nc, @-$2E                                  ; $4223: $30 $D0

    and b                                         ; $4225: $A0
    and b                                         ; $4226: $A0

jr_00D_4227:
    nop                                           ; $4227: $00
    nop                                           ; $4228: $00
    nop                                           ; $4229: $00
    add b                                         ; $422A: $80
    nop                                           ; $422B: $00
    add b                                         ; $422C: $80
    nop                                           ; $422D: $00
    nop                                           ; $422E: $00
    nop                                           ; $422F: $00
    nop                                           ; $4230: $00
    nop                                           ; $4231: $00
    nop                                           ; $4232: $00
    nop                                           ; $4233: $00
    nop                                           ; $4234: $00
    nop                                           ; $4235: $00
    nop                                           ; $4236: $00
    nop                                           ; $4237: $00
    ld bc, $0200                                  ; $4238: $01 $00 $02
    ld bc, $0205                                  ; $423B: $01 $05 $02
    dec b                                         ; $423E: $05
    ld [bc], a                                    ; $423F: $02
    nop                                           ; $4240: $00
    nop                                           ; $4241: $00
    nop                                           ; $4242: $00
    nop                                           ; $4243: $00
    ld bc, $FD00                                  ; $4244: $01 $00 $FD
    nop                                           ; $4247: $00
    rlca                                          ; $4248: $07
    ld hl, sp-$0D                                 ; $4249: $F8 $F3
    inc c                                         ; $424B: $0C
    add hl, de                                    ; $424C: $19

jr_00D_424D:
    and $0F                                       ; $424D: $E6 $0F
    ldh a, [rP1]                                  ; $424F: $F0 $00
    nop                                           ; $4251: $00
    nop                                           ; $4252: $00
    nop                                           ; $4253: $00
    add b                                         ; $4254: $80
    nop                                           ; $4255: $00
    ldh a, [rP1]                                  ; $4256: $F0 $00
    adc b                                         ; $4258: $88
    ld [hl], b                                    ; $4259: $70
    db $F4                                        ; $425A: $F4
    ld [$28D4], sp                                ; $425B: $08 $D4 $28
    add h                                         ; $425E: $84
    ld a, b                                       ; $425F: $78
    ld a, [bc]                                    ; $4260: $0A
    dec b                                         ; $4261: $05
    add hl, bc                                    ; $4262: $09
    ld b, $13                                     ; $4263: $06 $13
    inc c                                         ; $4265: $0C
    ld [de], a                                    ; $4266: $12
    inc c                                         ; $4267: $0C
    inc d                                         ; $4268: $14
    ld [$0008], sp                                ; $4269: $08 $08 $00
    nop                                           ; $426C: $00
    nop                                           ; $426D: $00
    nop                                           ; $426E: $00
    nop                                           ; $426F: $00
    xor a                                         ; $4270: $AF
    ld d, c                                       ; $4271: $51
    ccf                                           ; $4272: $3F
    jp $834F                                      ; $4273: $C3 $4F $83


    add a                                         ; $4276: $87
    nop                                           ; $4277: $00
    inc bc                                        ; $4278: $03
    nop                                           ; $4279: $00
    inc bc                                        ; $427A: $03
    nop                                           ; $427B: $00
    inc bc                                        ; $427C: $03
    nop                                           ; $427D: $00
    ld bc, $9400                                  ; $427E: $01 $00 $94
    ld l, b                                       ; $4281: $68
    ret z                                         ; $4282: $C8

    jr nc, jr_00D_424D                            ; $4283: $30 $C8

    or b                                          ; $4285: $B0
    ret nc                                        ; $4286: $D0

    jr nz, jr_00D_42A9                            ; $4287: $20 $20

    nop                                           ; $4289: $00
    add b                                         ; $428A: $80

jr_00D_428B:
    nop                                           ; $428B: $00
    add b                                         ; $428C: $80
    nop                                           ; $428D: $00
    nop                                           ; $428E: $00
    nop                                           ; $428F: $00
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    nop                                           ; $4292: $00
    nop                                           ; $4293: $00
    nop                                           ; $4294: $00
    nop                                           ; $4295: $00
    nop                                           ; $4296: $00
    nop                                           ; $4297: $00
    nop                                           ; $4298: $00
    nop                                           ; $4299: $00
    nop                                           ; $429A: $00
    nop                                           ; $429B: $00
    ld bc, $0200                                  ; $429C: $01 $00 $02
    ld bc, $0000                                  ; $429F: $01 $00 $00
    nop                                           ; $42A2: $00
    nop                                           ; $42A3: $00
    ld bc, $0100                                  ; $42A4: $01 $00 $01
    nop                                           ; $42A7: $00
    ld a, l                                       ; $42A8: $7D

jr_00D_42A9:
    nop                                           ; $42A9: $00
    add a                                         ; $42AA: $87
    ld a, b                                       ; $42AB: $78
    ld [hl], e                                    ; $42AC: $73
    adc h                                         ; $42AD: $8C
    sbc c                                         ; $42AE: $99
    ld h, [hl]                                    ; $42AF: $66
    nop                                           ; $42B0: $00
    nop                                           ; $42B1: $00
    nop                                           ; $42B2: $00
    nop                                           ; $42B3: $00
    add b                                         ; $42B4: $80
    nop                                           ; $42B5: $00
    add b                                         ; $42B6: $80
    nop                                           ; $42B7: $00
    ldh [rP1], a                                  ; $42B8: $E0 $00
    sub b                                         ; $42BA: $90
    ld h, b                                       ; $42BB: $60
    add sp, $10                                   ; $42BC: $E8 $10
    call nc, $0228                                ; $42BE: $D4 $28 $02
    ld bc, $0304                                  ; $42C1: $01 $04 $03
    inc b                                         ; $42C4: $04
    inc bc                                        ; $42C5: $03
    add hl, bc                                    ; $42C6: $09
    ld b, $0A                                     ; $42C7: $06 $0A
    inc b                                         ; $42C9: $04
    ld a, [bc]                                    ; $42CA: $0A
    inc b                                         ; $42CB: $04
    inc b                                         ; $42CC: $04
    nop                                           ; $42CD: $00
    nop                                           ; $42CE: $00
    nop                                           ; $42CF: $00
    rrca                                          ; $42D0: $0F
    pop af                                        ; $42D1: $F1
    xor a                                         ; $42D2: $AF
    ld d, e                                       ; $42D3: $53
    ccf                                           ; $42D4: $3F
    jp $8057                                      ; $42D5: $C3 $57 $80


    add e                                         ; $42D8: $83
    nop                                           ; $42D9: $00
    inc bc                                        ; $42DA: $03
    nop                                           ; $42DB: $00
    inc bc                                        ; $42DC: $03
    nop                                           ; $42DD: $00
    ld bc, $8400                                  ; $42DE: $01 $00 $84
    ld a, b                                       ; $42E1: $78
    call nc, $C828                                ; $42E2: $D4 $28 $C8
    or b                                          ; $42E5: $B0
    ret z                                         ; $42E6: $C8

    jr nc, @+$52                                  ; $42E7: $30 $50

    jr nz, jr_00D_428B                            ; $42E9: $20 $A0

    nop                                           ; $42EB: $00
    add b                                         ; $42EC: $80
    nop                                           ; $42ED: $00
    nop                                           ; $42EE: $00
    nop                                           ; $42EF: $00
    nop                                           ; $42F0: $00
    nop                                           ; $42F1: $00
    add a                                         ; $42F2: $87
    nop                                           ; $42F3: $00
    sbc b                                         ; $42F4: $98
    rlca                                          ; $42F5: $07
    and e                                         ; $42F6: $A3
    inc e                                         ; $42F7: $1C
    adc $31                                       ; $42F8: $CE $31
    sbc b                                         ; $42FA: $98
    ld h, a                                       ; $42FB: $67
    or c                                          ; $42FC: $B1
    ld c, [hl]                                    ; $42FD: $4E
    db $E4                                        ; $42FE: $E4
    sbc e                                         ; $42FF: $9B
    ld de, $130E                                  ; $4300: $11 $0E $13
    dec c                                         ; $4303: $0D
    dec bc                                        ; $4304: $0B
    inc b                                         ; $4305: $04
    dec b                                         ; $4306: $05
    nop                                           ; $4307: $00
    ld bc, $0100                                  ; $4308: $01 $00 $01
    nop                                           ; $430B: $00
    nop                                           ; $430C: $00
    nop                                           ; $430D: $00
    nop                                           ; $430E: $00
    nop                                           ; $430F: $00
    rst $38                                       ; $4310: $FF
    sub a                                         ; $4311: $97
    rst $38                                       ; $4312: $FF
    ld b, $FF                                     ; $4313: $06 $FF
    ld b, c                                       ; $4315: $41
    rst $38                                       ; $4316: $FF
    ld bc, $C73F                                  ; $4317: $01 $3F $C7
    ccf                                           ; $431A: $3F
    adc $FF                                       ; $431B: $CE $FF
    nop                                           ; $431D: $00
    ld a, a                                       ; $431E: $7F
    nop                                           ; $431F: $00
    db $FC                                        ; $4320: $FC
    inc bc                                        ; $4321: $03
    ei                                            ; $4322: $FB
    nop                                           ; $4323: $00
    pop af                                        ; $4324: $F1
    nop                                           ; $4325: $00
    ldh [rP1], a                                  ; $4326: $E0 $00
    ret nz                                        ; $4328: $C0

    nop                                           ; $4329: $00
    ret nz                                        ; $432A: $C0

    nop                                           ; $432B: $00
    add b                                         ; $432C: $80
    nop                                           ; $432D: $00
    nop                                           ; $432E: $00
    nop                                           ; $432F: $00
    nop                                           ; $4330: $00
    nop                                           ; $4331: $00
    add a                                         ; $4332: $87
    nop                                           ; $4333: $00
    sbc b                                         ; $4334: $98
    rlca                                          ; $4335: $07
    and e                                         ; $4336: $A3
    inc e                                         ; $4337: $1C
    adc $31                                       ; $4338: $CE $31
    sbc b                                         ; $433A: $98
    ld h, a                                       ; $433B: $67
    pop af                                        ; $433C: $F1
    adc [hl]                                      ; $433D: $8E
    db $F4                                        ; $433E: $F4
    dec bc                                        ; $433F: $0B
    rst $38                                       ; $4340: $FF
    sub d                                         ; $4341: $92
    rst $38                                       ; $4342: $FF
    inc c                                         ; $4343: $0C
    rst $38                                       ; $4344: $FF
    ld e, b                                       ; $4345: $58
    rst $38                                       ; $4346: $FF
    ld b, $FF                                     ; $4347: $06 $FF
    ccf                                           ; $4349: $3F
    ld a, a                                       ; $434A: $7F
    cp [hl]                                       ; $434B: $BE
    rst $38                                       ; $434C: $FF
    nop                                           ; $434D: $00
    ld a, a                                       ; $434E: $7F
    nop                                           ; $434F: $00
    db $FC                                        ; $4350: $FC
    inc bc                                        ; $4351: $03
    dec sp                                        ; $4352: $3B
    ret nz                                        ; $4353: $C0

    ld sp, $C0C0                                  ; $4354: $31 $C0 $C0
    nop                                           ; $4357: $00
    ret nz                                        ; $4358: $C0

    nop                                           ; $4359: $00
    ret nz                                        ; $435A: $C0

    nop                                           ; $435B: $00
    add b                                         ; $435C: $80
    nop                                           ; $435D: $00
    nop                                           ; $435E: $00
    nop                                           ; $435F: $00
    ldh [rP1], a                                  ; $4360: $E0 $00
    ldh a, [$E0]                                  ; $4362: $F0 $E0
    ld hl, sp-$10                                 ; $4364: $F8 $F0
    ld hl, sp-$10                                 ; $4366: $F8 $F0
    db $FC                                        ; $4368: $FC
    ret nc                                        ; $4369: $D0

    ld a, [$F994]                                 ; $436A: $FA $94 $F9
    ld d, $F9                                     ; $436D: $16 $F9
    ld [hl], $F1                                  ; $436F: $36 $F1
    ld l, [hl]                                    ; $4371: $6E
    ld sp, hl                                     ; $4372: $F9
    ld b, [hl]                                    ; $4373: $46
    db $FD                                        ; $4374: $FD
    ld a, [de]                                    ; $4375: $1A
    rst $38                                       ; $4376: $FF
    call c, $CCFF                                 ; $4377: $DC $FF $CC
    db $FD                                        ; $437A: $FD
    ld [bc], a                                    ; $437B: $02
    push hl                                       ; $437C: $E5
    jp c, $1AE5                                   ; $437D: $DA $E5 $1A

    sbc a                                         ; $4380: $9F
    ld h, b                                       ; $4381: $60
    ld b, a                                       ; $4382: $47
    dec sp                                        ; $4383: $3B
    ld e, a                                       ; $4384: $5F
    daa                                           ; $4385: $27
    cpl                                           ; $4386: $2F
    ld bc, $060F                                  ; $4387: $01 $0F $06
    rra                                           ; $438A: $1F
    rrca                                          ; $438B: $0F
    rra                                           ; $438C: $1F
    ld c, $0F                                     ; $438D: $0E $0F
    nop                                           ; $438F: $00
    ld sp, hl                                     ; $4390: $F9
    ld b, $F2                                     ; $4391: $06 $F2
    db $EC                                        ; $4393: $EC
    ld a, [$FC74]                                 ; $4394: $FA $74 $FC

jr_00D_4397:
    ld b, b                                       ; $4397: $40
    ld hl, sp+$30                                 ; $4398: $F8 $30
    db $FC                                        ; $439A: $FC
    ld a, b                                       ; $439B: $78
    db $FC                                        ; $439C: $FC
    jr c, jr_00D_4397                             ; $439D: $38 $F8

    nop                                           ; $439F: $00
    ldh [rP1], a                                  ; $43A0: $E0 $00
    ldh a, [$E0]                                  ; $43A2: $F0 $E0
    ld hl, sp-$10                                 ; $43A4: $F8 $F0
    ld hl, sp-$20                                 ; $43A6: $F8 $E0
    db $EC                                        ; $43A8: $EC
    sub b                                         ; $43A9: $90
    call nz, $A438                                ; $43AA: $C4 $38 $A4
    ld e, b                                       ; $43AD: $58
    and h                                         ; $43AE: $A4
    ld e, b                                       ; $43AF: $58
    and h                                         ; $43B0: $A4
    ld e, b                                       ; $43B1: $58
    and h                                         ; $43B2: $A4
    ld e, b                                       ; $43B3: $58
    or h                                          ; $43B4: $B4
    ld c, b                                       ; $43B5: $48
    db $F4                                        ; $43B6: $F4
    ld [$0CF2], sp                                ; $43B7: $08 $F2 $0C
    ld a, [c]                                     ; $43BA: $F2
    inc c                                         ; $43BB: $0C
    ld a, [$FA04]                                 ; $43BC: $FA $04 $FA
    add h                                         ; $43BF: $84
    ld e, a                                       ; $43C0: $5F
    jr nz, jr_00D_4422                            ; $43C1: $20 $5F

    ld hl, $235F                                  ; $43C3: $21 $5F $23
    cpl                                           ; $43C6: $2F
    rla                                           ; $43C7: $17
    rra                                           ; $43C8: $1F
    inc bc                                        ; $43C9: $03
    rra                                           ; $43CA: $1F
    ld [$071F], sp                                ; $43CB: $08 $1F $07
    rrca                                          ; $43CE: $0F
    nop                                           ; $43CF: $00
    ld a, [$FA04]                                 ; $43D0: $FA $04 $FA
    ld b, h                                       ; $43D3: $44
    ld a, [$F664]                                 ; $43D4: $FA $64 $F6
    ld l, b                                       ; $43D7: $68
    db $FC                                        ; $43D8: $FC
    ld h, b                                       ; $43D9: $60
    db $FC                                        ; $43DA: $FC
    ld [$70FC], sp                                ; $43DB: $08 $FC $70
    ld hl, sp+$00                                 ; $43DE: $F8 $00
    ld bc, $3300                                  ; $43E0: $01 $00 $33
    ld bc, $334F                                  ; $43E3: $01 $4F $33
    add a                                         ; $43E6: $87
    ld a, e                                       ; $43E7: $7B
    add a                                         ; $43E8: $87
    ld a, e                                       ; $43E9: $7B
    sub a                                         ; $43EA: $97
    ld l, e                                       ; $43EB: $6B
    adc a                                         ; $43EC: $8F
    ld [hl], c                                    ; $43ED: $71
    adc a                                         ; $43EE: $8F
    ld [hl], b                                    ; $43EF: $70
    ld hl, sp+$00                                 ; $43F0: $F8 $00
    db $FC                                        ; $43F2: $FC
    ld hl, sp-$02                                 ; $43F3: $F8 $FE
    db $FC                                        ; $43F5: $FC
    cp $FC                                        ; $43F6: $FE $FC
    cp $BC                                        ; $43F8: $FE $BC
    cp $98                                        ; $43FA: $FE $98
    cp $80                                        ; $43FC: $FE $80
    cp $C0                                        ; $43FE: $FE $C0
    adc a                                         ; $4400: $8F
    ld [hl], a                                    ; $4401: $77
    sbc a                                         ; $4402: $9F
    ld l, a                                       ; $4403: $6F
    sbc a                                         ; $4404: $9F
    ld l, [hl]                                    ; $4405: $6E
    sbc a                                         ; $4406: $9F
    ld h, b                                       ; $4407: $60
    adc a                                         ; $4408: $8F
    ld [hl], c                                    ; $4409: $71
    xor a                                         ; $440A: $AF
    ld d, b                                       ; $440B: $50
    adc h                                         ; $440C: $8C
    ld [hl], e                                    ; $440D: $73
    xor h                                         ; $440E: $AC
    ld d, e                                       ; $440F: $53
    cp $64                                        ; $4410: $FE $64
    rst $38                                       ; $4412: $FF
    ld [hl+], a                                   ; $4413: $22
    rst $38                                       ; $4414: $FF
    jp nz, Jump_00D_78FE                          ; $4415: $C2 $FE $78

    db $FC                                        ; $4418: $FC
    add b                                         ; $4419: $80
    cp $F0                                        ; $441A: $FE $F0
    ld a, [$FC74]                                 ; $441C: $FA $74 $FC
    nop                                           ; $441F: $00
    cp e                                          ; $4420: $BB
    ld b, b                                       ; $4421: $40

jr_00D_4422:
    or e                                          ; $4422: $B3
    ld b, c                                       ; $4423: $41
    or a                                          ; $4424: $B7
    ld b, e                                       ; $4425: $43
    rst $20                                       ; $4426: $E7
    inc bc                                        ; $4427: $03
    ld c, a                                       ; $4428: $4F
    inc b                                         ; $4429: $04
    rrca                                          ; $442A: $0F
    ld bc, $070F                                  ; $442B: $01 $0F $07
    rlca                                          ; $442E: $07
    nop                                           ; $442F: $00
    ld hl, sp+$00                                 ; $4430: $F8 $00
    ld hl, sp-$10                                 ; $4432: $F8 $F0
    db $FC                                        ; $4434: $FC
    ret c                                         ; $4435: $D8

    db $FC                                        ; $4436: $FC
    or b                                          ; $4437: $B0
    cp $0C                                        ; $4438: $FE $0C
    cp $BC                                        ; $443A: $FE $BC
    db $FC                                        ; $443C: $FC
    add b                                         ; $443D: $80
    ret nz                                        ; $443E: $C0

    nop                                           ; $443F: $00
    ld e, a                                       ; $4440: $5F
    inc l                                         ; $4441: $2C
    ld c, a                                       ; $4442: $4F
    ld [hl], $5F                                  ; $4443: $36 $5F
    ld a, [hl+]                                   ; $4445: $2A
    ld a, a                                       ; $4446: $7F
    db $10                                        ; $4447: $10
    ld a, a                                       ; $4448: $7F
    rlca                                          ; $4449: $07

jr_00D_444A:
    ld e, a                                       ; $444A: $5F
    jr nz, jr_00D_44A4                            ; $444B: $20 $57

    dec hl                                        ; $444D: $2B
    ld d, a                                       ; $444E: $57
    jr z, jr_00D_444A                             ; $444F: $28 $F9

    ld [hl], $F9                                  ; $4451: $36 $F9
    ld h, [hl]                                    ; $4453: $66
    db $FD                                        ; $4454: $FD
    ld e, d                                       ; $4455: $5A
    rst $38                                       ; $4456: $FF
    inc a                                         ; $4457: $3C
    rst $38                                       ; $4458: $FF
    cp b                                          ; $4459: $B8
    db $FD                                        ; $445A: $FD
    ld [de], a                                    ; $445B: $12
    sbc c                                         ; $445C: $99
    ld h, [hl]                                    ; $445D: $66
    sub c                                         ; $445E: $91
    ld l, [hl]                                    ; $445F: $6E
    ld e, a                                       ; $4460: $5F
    jr nz, jr_00D_44B2                            ; $4461: $20 $4F

    scf                                           ; $4463: $37
    ld c, a                                       ; $4464: $4F
    inc sp                                        ; $4465: $33
    ld e, a                                       ; $4466: $5F
    ld hl, $062F                                  ; $4467: $21 $2F $06
    rrca                                          ; $446A: $0F
    rlca                                          ; $446B: $07
    rlca                                          ; $446C: $07
    inc bc                                        ; $446D: $03
    rlca                                          ; $446E: $07
    nop                                           ; $446F: $00
    pop af                                        ; $4470: $F1
    ld c, $F1                                     ; $4471: $0E $F1
    adc $F2                                       ; $4473: $CE $F2
    db $EC                                        ; $4475: $EC
    ld a, [$F4A4]                                 ; $4476: $FA $A4 $F4
    ld h, b                                       ; $4479: $60
    ldh [rP1], a                                  ; $447A: $E0 $00
    ldh [rLCDC], a                                ; $447C: $E0 $40
    ret nz                                        ; $447E: $C0

    nop                                           ; $447F: $00
    nop                                           ; $4480: $00
    nop                                           ; $4481: $00
    rlca                                          ; $4482: $07
    nop                                           ; $4483: $00
    rrca                                          ; $4484: $0F
    rlca                                          ; $4485: $07
    rra                                           ; $4486: $1F
    rrca                                          ; $4487: $0F
    rra                                           ; $4488: $1F
    rlca                                          ; $4489: $07
    daa                                           ; $448A: $27
    add hl, de                                    ; $448B: $19
    ld c, e                                       ; $448C: $4B
    inc [hl]                                      ; $448D: $34
    sbc l                                         ; $448E: $9D
    ld h, d                                       ; $448F: $62
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    ldh [rP1], a                                  ; $4492: $E0 $00
    ldh a, [$E0]                                  ; $4494: $F0 $E0
    ld hl, sp-$10                                 ; $4496: $F8 $F0
    ld hl, sp-$20                                 ; $4498: $F8 $E0
    db $E4                                        ; $449A: $E4
    sbc b                                         ; $449B: $98
    call nz, $A838                                ; $449C: $C4 $38 $A8
    ld d, b                                       ; $449F: $50
    sbc l                                         ; $44A0: $9D

jr_00D_44A1:
    ld h, d                                       ; $44A1: $62
    sbc l                                         ; $44A2: $9D

jr_00D_44A3:
    ld h, d                                       ; $44A3: $62

jr_00D_44A4:
    sbc l                                         ; $44A4: $9D
    ld h, d                                       ; $44A5: $62
    sub l                                         ; $44A6: $95
    ld l, d                                       ; $44A7: $6A
    or a                                          ; $44A8: $B7
    ld c, b                                       ; $44A9: $48
    or a                                          ; $44AA: $B7
    ld c, b                                       ; $44AB: $48
    and a                                         ; $44AC: $A7
    ld e, b                                       ; $44AD: $58
    xor a                                         ; $44AE: $AF
    ld d, c                                       ; $44AF: $51
    xor b                                         ; $44B0: $A8
    ld d, b                                       ; $44B1: $50

jr_00D_44B2:
    xor b                                         ; $44B2: $A8
    ld d, b                                       ; $44B3: $50
    xor b                                         ; $44B4: $A8
    ld d, b                                       ; $44B5: $50
    xor b                                         ; $44B6: $A8
    ld d, b                                       ; $44B7: $50
    add sp, $10                                   ; $44B8: $E8 $10
    db $E4                                        ; $44BA: $E4
    jr jr_00D_44A1                                ; $44BB: $18 $E4

    jr jr_00D_44A3                                ; $44BD: $18 $E4

    sbc b                                         ; $44BF: $98
    xor a                                         ; $44C0: $AF
    ld d, b                                       ; $44C1: $50
    cp a                                          ; $44C2: $BF
    ld b, c                                       ; $44C3: $41
    cp a                                          ; $44C4: $BF
    ld b, e                                       ; $44C5: $43
    ld e, a                                       ; $44C6: $5F
    ld h, $3F                                     ; $44C7: $26 $3F
    nop                                           ; $44C9: $00
    rrca                                          ; $44CA: $0F
    inc bc                                        ; $44CB: $03
    rlca                                          ; $44CC: $07
    inc bc                                        ; $44CD: $03
    rlca                                          ; $44CE: $07
    nop                                           ; $44CF: $00
    ld a, [c]                                     ; $44D0: $F2
    inc c                                         ; $44D1: $0C
    ld a, [c]                                     ; $44D2: $F2
    call z, $A4FA                                 ; $44D3: $CC $FA $A4
    ld a, [$FC64]                                 ; $44D6: $FA $64 $FC
    ld h, b                                       ; $44D9: $60
    ldh a, [rP1]                                  ; $44DA: $F0 $00
    ldh a, [$60]                                  ; $44DC: $F0 $60
    ldh a, [rP1]                                  ; $44DE: $F0 $00
    nop                                           ; $44E0: $00
    nop                                           ; $44E1: $00
    ld bc, $0300                                  ; $44E2: $01 $00 $03
    ld bc, $011B                                  ; $44E5: $01 $1B $01
    daa                                           ; $44E8: $27
    add hl, de                                    ; $44E9: $19
    ld b, e                                       ; $44EA: $43
    dec a                                         ; $44EB: $3D
    ld e, e                                       ; $44EC: $5B
    inc h                                         ; $44ED: $24
    xor a                                         ; $44EE: $AF
    ld d, b                                       ; $44EF: $50
    db $FC                                        ; $44F0: $FC
    nop                                           ; $44F1: $00
    cp $FC                                        ; $44F2: $FE $FC
    rst $38                                       ; $44F4: $FF
    cp $FF                                        ; $44F5: $FE $FF
    cp $FF                                        ; $44F7: $FE $FF
    or $FF                                        ; $44F9: $F6 $FF
    ld a, [c]                                     ; $44FB: $F2
    rst $38                                       ; $44FC: $FF
    ldh a, [rIE]                                  ; $44FD: $F0 $FF
    ld a, b                                       ; $44FF: $78
    xor a                                         ; $4500: $AF
    ld d, b                                       ; $4501: $50
    and a                                         ; $4502: $A7
    ld e, b                                       ; $4503: $58
    and e                                         ; $4504: $A3
    ld e, h                                       ; $4505: $5C
    add e                                         ; $4506: $83
    ld a, l                                       ; $4507: $7D
    and e                                         ; $4508: $A3
    ld e, h                                       ; $4509: $5C
    rlca                                          ; $450A: $07
    ld sp, hl                                     ; $450B: $F9
    rrca                                          ; $450C: $0F
    ldh a, [rIF]                                  ; $450D: $F0 $0F
    ldh a, [rIE]                                  ; $450F: $F0 $FF
    ld a, b                                       ; $4511: $78
    rst $38                                       ; $4512: $FF
    inc a                                         ; $4513: $3C
    rst $38                                       ; $4514: $FF
    call c, $E0FE                                 ; $4515: $DC $FE $E0
    ldh a, [$E0]                                  ; $4518: $F0 $E0
    ld hl, sp+$40                                 ; $451A: $F8 $40
    db $E4                                        ; $451C: $E4
    sbc b                                         ; $451D: $98
    db $E4                                        ; $451E: $E4
    jr jr_00D_4540                                ; $451F: $18 $1F

    ldh [$1F], a                                  ; $4521: $E0 $1F
    pop hl                                        ; $4523: $E1
    ccf                                           ; $4524: $3F
    jp $877F                                      ; $4525: $C3 $7F $87


    rst $18                                       ; $4528: $DF
    rrca                                          ; $4529: $0F
    rra                                           ; $452A: $1F
    ld [$071F], sp                                ; $452B: $08 $1F $07
    rra                                           ; $452E: $1F
    nop                                           ; $452F: $00
    ld hl, sp+$00                                 ; $4530: $F8 $00
    ld hl, sp-$20                                 ; $4532: $F8 $E0
    cp $E0                                        ; $4534: $FE $E0
    rst $38                                       ; $4536: $FF
    add $FF                                       ; $4537: $C6 $FF
    ld l, $FE                                     ; $4539: $2E $FE
    xor h                                         ; $453B: $AC
    cp $90                                        ; $453C: $FE $90
    ld hl, sp+$00                                 ; $453E: $F8 $00

jr_00D_4540:
    and a                                         ; $4540: $A7
    ld e, b                                       ; $4541: $58
    and e                                         ; $4542: $A3
    ld e, l                                       ; $4543: $5D
    add e                                         ; $4544: $83
    ld a, l                                       ; $4545: $7D
    and e                                         ; $4546: $A3
    ld e, l                                       ; $4547: $5D
    rlca                                          ; $4548: $07
    ld sp, hl                                     ; $4549: $F9
    rrca                                          ; $454A: $0F
    ldh a, [rIF]                                  ; $454B: $F0 $0F
    ldh a, [$1F]                                  ; $454D: $F0 $1F
    ldh [rIE], a                                  ; $454F: $E0 $FF
    inc a                                         ; $4551: $3C
    rst $38                                       ; $4552: $FF
    sbc h                                         ; $4553: $9C
    cp $C0                                        ; $4554: $FE $C0
    ld hl, sp-$30                                 ; $4556: $F8 $D0
    ld hl, sp-$30                                 ; $4558: $F8 $D0
    ld hl, sp-$80                                 ; $455A: $F8 $80
    sbc b                                         ; $455C: $98
    ld h, b                                       ; $455D: $60
    sbc b                                         ; $455E: $98
    ld h, b                                       ; $455F: $60
    rra                                           ; $4560: $1F
    ldh [$3F], a                                  ; $4561: $E0 $3F
    pop bc                                        ; $4563: $C1
    ld a, a                                       ; $4564: $7F
    add a                                         ; $4565: $87
    rst $18                                       ; $4566: $DF
    rrca                                          ; $4567: $0F
    rrca                                          ; $4568: $0F
    inc b                                         ; $4569: $04
    rrca                                          ; $456A: $0F
    ld bc, $030F                                  ; $456B: $01 $0F $03
    rlca                                          ; $456E: $07
    nop                                           ; $456F: $00
    ld hl, sp+$00                                 ; $4570: $F8 $00
    ld hl, sp-$10                                 ; $4572: $F8 $F0
    ld hl, sp-$10                                 ; $4574: $F8 $F0
    ld hl, sp-$20                                 ; $4576: $F8 $E0
    db $FC                                        ; $4578: $FC
    ld [$E8FC], sp                                ; $4579: $08 $FC $E8
    db $FC                                        ; $457C: $FC
    ldh [$F0], a                                  ; $457D: $E0 $F0
    nop                                           ; $457F: $00
    xor a                                         ; $4580: $AF
    ld d, b                                       ; $4581: $50
    and a                                         ; $4582: $A7
    ld e, b                                       ; $4583: $58
    and e                                         ; $4584: $A3
    ld e, h                                       ; $4585: $5C
    add e                                         ; $4586: $83
    ld a, l                                       ; $4587: $7D
    and a                                         ; $4588: $A7
    ld e, e                                       ; $4589: $5B
    rlca                                          ; $458A: $07
    ld sp, hl                                     ; $458B: $F9
    add hl, bc                                    ; $458C: $09
    or $09                                        ; $458D: $F6 $09
    or $FF                                        ; $458F: $F6 $FF
    ld a, b                                       ; $4591: $78
    rst $38                                       ; $4592: $FF
    inc a                                         ; $4593: $3C
    rst $38                                       ; $4594: $FF
    call c, $C0FE                                 ; $4595: $DC $FE $C0
    ldh a, [$C0]                                  ; $4598: $F0 $C0
    ld hl, sp-$60                                 ; $459A: $F8 $A0
    db $F4                                        ; $459C: $F4
    ld [$E8F4], sp                                ; $459D: $08 $F4 $E8
    rra                                           ; $45A0: $1F
    ldh [$1F], a                                  ; $45A1: $E0 $1F
    pop hl                                        ; $45A3: $E1
    ccf                                           ; $45A4: $3F
    jp $867F                                      ; $45A5: $C3 $7F $86


    rst $18                                       ; $45A8: $DF
    ld [$0F1F], sp                                ; $45A9: $08 $1F $0F
    rra                                           ; $45AC: $1F
    rlca                                          ; $45AD: $07
    rra                                           ; $45AE: $1F
    nop                                           ; $45AF: $00
    ld hl, sp+$00                                 ; $45B0: $F8 $00
    ldh a, [$E0]                                  ; $45B2: $F0 $E0
    cp $F0                                        ; $45B4: $FE $F0
    rst $38                                       ; $45B6: $FF
    or $FF                                        ; $45B7: $F6 $FF
    ld l, [hl]                                    ; $45B9: $6E
    cp $0C                                        ; $45BA: $FE $0C
    cp $90                                        ; $45BC: $FE $90
    ld hl, sp+$00                                 ; $45BE: $F8 $00
    ld bc, $0100                                  ; $45C0: $01 $00 $01
    nop                                           ; $45C3: $00
    ld bc, $0100                                  ; $45C4: $01 $00 $01
    nop                                           ; $45C7: $00
    ld [bc], a                                    ; $45C8: $02
    ld bc, $0205                                  ; $45C9: $01 $05 $02
    ld a, [bc]                                    ; $45CC: $0A
    dec b                                         ; $45CD: $05
    rlca                                          ; $45CE: $07
    nop                                           ; $45CF: $00
    nop                                           ; $45D0: $00
    nop                                           ; $45D1: $00
    ldh [rP1], a                                  ; $45D2: $E0 $00
    ldh a, [$E0]                                  ; $45D4: $F0 $E0
    ld hl, sp-$10                                 ; $45D6: $F8 $F0
    ld hl, sp-$10                                 ; $45D8: $F8 $F0
    db $FC                                        ; $45DA: $FC
    ret nc                                        ; $45DB: $D0

    ld a, [$FA94]                                 ; $45DC: $FA $94 $FA
    inc d                                         ; $45DF: $14
    nop                                           ; $45E0: $00
    nop                                           ; $45E1: $00
    nop                                           ; $45E2: $00
    nop                                           ; $45E3: $00
    nop                                           ; $45E4: $00
    nop                                           ; $45E5: $00
    nop                                           ; $45E6: $00
    ld d, a                                       ; $45E7: $57
    nop                                           ; $45E8: $00
    nop                                           ; $45E9: $00
    nop                                           ; $45EA: $00
    nop                                           ; $45EB: $00
    nop                                           ; $45EC: $00
    nop                                           ; $45ED: $00
    nop                                           ; $45EE: $00
    nop                                           ; $45EF: $00
    nop                                           ; $45F0: $00
    stop                                          ; $45F1: $10 $00
    stop                                          ; $45F3: $10 $00
    jr c, jr_00D_45F7                             ; $45F5: $38 $00

jr_00D_45F7:
    rst $38                                       ; $45F7: $FF
    nop                                           ; $45F8: $00
    jr c, jr_00D_45FB                             ; $45F9: $38 $00

jr_00D_45FB:
    stop                                          ; $45FB: $10 $00
    stop                                          ; $45FD: $10 $00
    stop                                          ; $45FF: $10 $00
    nop                                           ; $4601: $00
    nop                                           ; $4602: $00
    nop                                           ; $4603: $00
    nop                                           ; $4604: $00
    stop                                          ; $4605: $10 $00
    nop                                           ; $4607: $00
    nop                                           ; $4608: $00
    stop                                          ; $4609: $10 $00
    stop                                          ; $460B: $10 $00
    stop                                          ; $460D: $10 $00
    stop                                          ; $460F: $10 $00
    nop                                           ; $4611: $00
    nop                                           ; $4612: $00
    stop                                          ; $4613: $10 $00
    jr c, jr_00D_4617                             ; $4615: $38 $00

jr_00D_4617:
    ld a, h                                       ; $4617: $7C
    nop                                           ; $4618: $00
    jr c, jr_00D_461B                             ; $4619: $38 $00

jr_00D_461B:
    stop                                          ; $461B: $10 $00
    nop                                           ; $461D: $00
    nop                                           ; $461E: $00
    nop                                           ; $461F: $00
    nop                                           ; $4620: $00
    nop                                           ; $4621: $00
    nop                                           ; $4622: $00
    nop                                           ; $4623: $00
    nop                                           ; $4624: $00
    rlca                                          ; $4625: $07
    nop                                           ; $4626: $00
    rrca                                          ; $4627: $0F
    nop                                           ; $4628: $00
    rra                                           ; $4629: $1F
    nop                                           ; $462A: $00
    ccf                                           ; $462B: $3F
    nop                                           ; $462C: $00
    ccf                                           ; $462D: $3F
    nop                                           ; $462E: $00
    ccf                                           ; $462F: $3F
    nop                                           ; $4630: $00
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    nop                                           ; $4633: $00
    nop                                           ; $4634: $00
    nop                                           ; $4635: $00
    nop                                           ; $4636: $00
    nop                                           ; $4637: $00
    nop                                           ; $4638: $00
    nop                                           ; $4639: $00
    nop                                           ; $463A: $00
    ld bc, $0300                                  ; $463B: $01 $00 $03
    nop                                           ; $463E: $00
    inc bc                                        ; $463F: $03
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    nop                                           ; $4642: $00
    rrca                                          ; $4643: $0F
    nop                                           ; $4644: $00
    ccf                                           ; $4645: $3F
    nop                                           ; $4646: $00
    ld a, a                                       ; $4647: $7F
    nop                                           ; $4648: $00
    rst $38                                       ; $4649: $FF
    nop                                           ; $464A: $00
    rst $38                                       ; $464B: $FF
    nop                                           ; $464C: $00
    rst $38                                       ; $464D: $FF
    nop                                           ; $464E: $00
    rst $38                                       ; $464F: $FF
    nop                                           ; $4650: $00
    inc bc                                        ; $4651: $03
    nop                                           ; $4652: $00
    rlca                                          ; $4653: $07
    nop                                           ; $4654: $00
    rlca                                          ; $4655: $07
    nop                                           ; $4656: $00
    rlca                                          ; $4657: $07
    nop                                           ; $4658: $00
    rlca                                          ; $4659: $07
    nop                                           ; $465A: $00
    rlca                                          ; $465B: $07
    nop                                           ; $465C: $00
    rlca                                          ; $465D: $07
    nop                                           ; $465E: $00
    rlca                                          ; $465F: $07
    nop                                           ; $4660: $00
    rst $38                                       ; $4661: $FF
    nop                                           ; $4662: $00
    rst $38                                       ; $4663: $FF
    nop                                           ; $4664: $00
    rst $38                                       ; $4665: $FF
    nop                                           ; $4666: $00
    rst $38                                       ; $4667: $FF
    nop                                           ; $4668: $00
    rst $38                                       ; $4669: $FF
    nop                                           ; $466A: $00
    rst $38                                       ; $466B: $FF
    nop                                           ; $466C: $00
    rst $38                                       ; $466D: $FF
    nop                                           ; $466E: $00
    rst $38                                       ; $466F: $FF
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    nop                                           ; $4673: $00
    nop                                           ; $4674: $00
    inc bc                                        ; $4675: $03
    nop                                           ; $4676: $00
    inc de                                        ; $4677: $13
    nop                                           ; $4678: $00
    dec sp                                        ; $4679: $3B
    nop                                           ; $467A: $00
    dec sp                                        ; $467B: $3B
    nop                                           ; $467C: $00
    dec sp                                        ; $467D: $3B
    nop                                           ; $467E: $00
    cp l                                          ; $467F: $BD
    nop                                           ; $4680: $00
    ld bc, $0300                                  ; $4681: $01 $00 $03
    nop                                           ; $4684: $00
    inc bc                                        ; $4685: $03
    nop                                           ; $4686: $00
    ld bc, $0300                                  ; $4687: $01 $00 $03
    nop                                           ; $468A: $00
    inc bc                                        ; $468B: $03
    nop                                           ; $468C: $00
    nop                                           ; $468D: $00
    nop                                           ; $468E: $00
    nop                                           ; $468F: $00
    nop                                           ; $4690: $00
    db $DD                                        ; $4691: $DD
    nop                                           ; $4692: $00
    rst $18                                       ; $4693: $DF
    nop                                           ; $4694: $00
    rst $28                                       ; $4695: $EF
    nop                                           ; $4696: $00
    rst $38                                       ; $4697: $FF
    nop                                           ; $4698: $00
    rst $38                                       ; $4699: $FF
    nop                                           ; $469A: $00
    rst $38                                       ; $469B: $FF
    nop                                           ; $469C: $00
    dec e                                         ; $469D: $1D
    nop                                           ; $469E: $00
    rst $38                                       ; $469F: $FF
    nop                                           ; $46A0: $00
    db $FD                                        ; $46A1: $FD
    nop                                           ; $46A2: $00
    di                                            ; $46A3: $F3
    nop                                           ; $46A4: $00
    rst $20                                       ; $46A5: $E7
    nop                                           ; $46A6: $00
    ld c, $00                                     ; $46A7: $0E $00
    ld e, $00                                     ; $46A9: $1E $00
    inc e                                         ; $46AB: $1C
    nop                                           ; $46AC: $00
    nop                                           ; $46AD: $00
    nop                                           ; $46AE: $00
    nop                                           ; $46AF: $00
    nop                                           ; $46B0: $00
    nop                                           ; $46B1: $00
    nop                                           ; $46B2: $00
    nop                                           ; $46B3: $00
    nop                                           ; $46B4: $00
    ld [bc], a                                    ; $46B5: $02
    nop                                           ; $46B6: $00
    ld [de], a                                    ; $46B7: $12
    nop                                           ; $46B8: $00
    dec de                                        ; $46B9: $1B
    nop                                           ; $46BA: $00
    dec hl                                        ; $46BB: $2B
    nop                                           ; $46BC: $00
    add hl, hl                                    ; $46BD: $29
    nop                                           ; $46BE: $00
    dec [hl]                                      ; $46BF: $35
    nop                                           ; $46C0: $00
    ld bc, $0200                                  ; $46C1: $01 $00 $02
    nop                                           ; $46C4: $00
    inc bc                                        ; $46C5: $03
    nop                                           ; $46C6: $00
    ld bc, $0300                                  ; $46C7: $01 $00 $03
    nop                                           ; $46CA: $00
    inc bc                                        ; $46CB: $03
    nop                                           ; $46CC: $00
    nop                                           ; $46CD: $00
    nop                                           ; $46CE: $00
    nop                                           ; $46CF: $00
    nop                                           ; $46D0: $00
    sub h                                         ; $46D1: $94
    nop                                           ; $46D2: $00
    add $00                                       ; $46D3: $C6 $00
    ld l, c                                       ; $46D5: $69
    nop                                           ; $46D6: $00
    cp [hl]                                       ; $46D7: $BE
    nop                                           ; $46D8: $00
    ldh [rP1], a                                  ; $46D9: $E0 $00
    ld e, $00                                     ; $46DB: $1E $00
    dec d                                         ; $46DD: $15
    nop                                           ; $46DE: $00
    db $ED                                        ; $46DF: $ED
    nop                                           ; $46E0: $00
    sbc c                                         ; $46E1: $99
    nop                                           ; $46E2: $00
    ld [hl], e                                    ; $46E3: $73
    nop                                           ; $46E4: $00
    rst $20                                       ; $46E5: $E7
    nop                                           ; $46E6: $00
    ld a, [bc]                                    ; $46E7: $0A
    nop                                           ; $46E8: $00
    ld d, $00                                     ; $46E9: $16 $00
    inc c                                         ; $46EB: $0C
    nop                                           ; $46EC: $00
    nop                                           ; $46ED: $00
    nop                                           ; $46EE: $00
    nop                                           ; $46EF: $00
    nop                                           ; $46F0: $00
    nop                                           ; $46F1: $00
    nop                                           ; $46F2: $00
    nop                                           ; $46F3: $00
    nop                                           ; $46F4: $00
    nop                                           ; $46F5: $00
    nop                                           ; $46F6: $00
    stop                                          ; $46F7: $10 $00
    ld [$0200], sp                                ; $46F9: $08 $00 $02
    nop                                           ; $46FC: $00
    jr z, jr_00D_46FF                             ; $46FD: $28 $00

jr_00D_46FF:
    inc d                                         ; $46FF: $14
    nop                                           ; $4700: $00
    ld bc, $0000                                  ; $4701: $01 $00 $00
    nop                                           ; $4704: $00
    inc bc                                        ; $4705: $03
    nop                                           ; $4706: $00
    ld bc, $0000                                  ; $4707: $01 $00 $00
    nop                                           ; $470A: $00
    inc bc                                        ; $470B: $03
    nop                                           ; $470C: $00
    nop                                           ; $470D: $00
    nop                                           ; $470E: $00
    nop                                           ; $470F: $00
    nop                                           ; $4710: $00
    nop                                           ; $4711: $00
    nop                                           ; $4712: $00
    ret nz                                        ; $4713: $C0

    nop                                           ; $4714: $00
    add hl, bc                                    ; $4715: $09
    nop                                           ; $4716: $00
    add b                                         ; $4717: $80
    nop                                           ; $4718: $00
    jr nz, jr_00D_471B                            ; $4719: $20 $00

jr_00D_471B:
    nop                                           ; $471B: $00
    nop                                           ; $471C: $00
    inc d                                         ; $471D: $14
    nop                                           ; $471E: $00
    add hl, hl                                    ; $471F: $29
    nop                                           ; $4720: $00
    add b                                         ; $4721: $80
    nop                                           ; $4722: $00
    stop                                          ; $4723: $10 $00
    ld h, l                                       ; $4725: $65
    nop                                           ; $4726: $00
    nop                                           ; $4727: $00
    nop                                           ; $4728: $00
    ld [de], a                                    ; $4729: $12
    nop                                           ; $472A: $00
    ld [rRAMG], sp                                ; $472B: $08 $00 $00
    nop                                           ; $472E: $00
    nop                                           ; $472F: $00
    nop                                           ; $4730: $00
    nop                                           ; $4731: $00
    nop                                           ; $4732: $00
    nop                                           ; $4733: $00
    nop                                           ; $4734: $00
    ld [rRAMG], sp                                ; $4735: $08 $00 $00
    nop                                           ; $4738: $00
    nop                                           ; $4739: $00
    nop                                           ; $473A: $00
    nop                                           ; $473B: $00
    nop                                           ; $473C: $00
    inc b                                         ; $473D: $04
    nop                                           ; $473E: $00
    nop                                           ; $473F: $00
    nop                                           ; $4740: $00
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00
    ld bc, $0000                                  ; $4743: $01 $00 $00
    nop                                           ; $4746: $00
    stop                                          ; $4747: $10 $00
    nop                                           ; $4749: $00
    nop                                           ; $474A: $00
    nop                                           ; $474B: $00
    nop                                           ; $474C: $00
    nop                                           ; $474D: $00
    nop                                           ; $474E: $00
    nop                                           ; $474F: $00
    nop                                           ; $4750: $00
    ld [bc], a                                    ; $4751: $02
    nop                                           ; $4752: $00
    nop                                           ; $4753: $00
    nop                                           ; $4754: $00
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00
    ld [bc], a                                    ; $4757: $02
    nop                                           ; $4758: $00
    nop                                           ; $4759: $00
    nop                                           ; $475A: $00
    add b                                         ; $475B: $80
    nop                                           ; $475C: $00
    nop                                           ; $475D: $00
    nop                                           ; $475E: $00
    nop                                           ; $475F: $00
    nop                                           ; $4760: $00
    jr nz, jr_00D_4763                            ; $4761: $20 $00

jr_00D_4763:
    ld bc, $4008                                  ; $4763: $01 $08 $40
    inc d                                         ; $4766: $14
    ld [$1924], sp                                ; $4767: $08 $24 $19
    ld l, $1C                                     ; $476A: $2E $1C
    ld e, [hl]                                    ; $476C: $5E
    inc l                                         ; $476D: $2C
    ld e, a                                       ; $476E: $5F
    ld a, [hl+]                                   ; $476F: $2A
    sbc a                                         ; $4770: $9F
    ld h, [hl]                                    ; $4771: $66
    rst $18                                       ; $4772: $DF
    ld l, [hl]                                    ; $4773: $6E
    rst $38                                       ; $4774: $FF
    ld l, [hl]                                    ; $4775: $6E
    cp $5C                                        ; $4776: $FE $5C
    ld a, [c]                                     ; $4778: $F2
    ld e, h                                       ; $4779: $5C
    ld b, d                                       ; $477A: $42
    inc a                                         ; $477B: $3C
    inc a                                         ; $477C: $3C
    jr jr_00D_4797                                ; $477D: $18 $18

    nop                                           ; $477F: $00
    nop                                           ; $4780: $00
    nop                                           ; $4781: $00
    nop                                           ; $4782: $00
    ld [bc], a                                    ; $4783: $02
    ld [$1C20], sp                                ; $4784: $08 $20 $1C
    ld [$1834], sp                                ; $4787: $08 $34 $18
    ld [hl+], a                                   ; $478A: $22
    inc e                                         ; $478B: $1C
    halt                                          ; $478C: $76
    inc l                                         ; $478D: $2C
    ld a, a                                       ; $478E: $7F
    ld a, [hl+]                                   ; $478F: $2A
    cp a                                          ; $4790: $BF
    ld h, [hl]                                    ; $4791: $66
    sbc c                                         ; $4792: $99
    ld l, [hl]                                    ; $4793: $6E
    sub e                                         ; $4794: $93
    ld l, [hl]                                    ; $4795: $6E
    ld [c], a                                     ; $4796: $E2

jr_00D_4797:
    ld e, h                                       ; $4797: $5C
    xor $5C                                       ; $4798: $EE $5C
    ld a, [hl]                                    ; $479A: $7E
    inc a                                         ; $479B: $3C
    inc a                                         ; $479C: $3C
    jr jr_00D_47B7                                ; $479D: $18 $18

    nop                                           ; $479F: $00
    nop                                           ; $47A0: $00
    nop                                           ; $47A1: $00
    nop                                           ; $47A2: $00
    nop                                           ; $47A3: $00
    ld [$1C00], sp                                ; $47A4: $08 $00 $1C
    ld [$183C], sp                                ; $47A7: $08 $3C $18
    ld a, [hl-]                                   ; $47AA: $3A
    inc e                                         ; $47AB: $1C
    ld [hl], d                                    ; $47AC: $72
    inc l                                         ; $47AD: $2C
    ld [hl], a                                    ; $47AE: $77
    ld a, [hl+]                                   ; $47AF: $2A
    ld sp, hl                                     ; $47B0: $F9
    ld h, [hl]                                    ; $47B1: $66
    pop af                                        ; $47B2: $F1
    ld l, [hl]                                    ; $47B3: $6E
    rst $10                                       ; $47B4: $D7
    ld l, [hl]                                    ; $47B5: $6E
    cp [hl]                                       ; $47B6: $BE

jr_00D_47B7:
    ld e, h                                       ; $47B7: $5C
    cp [hl]                                       ; $47B8: $BE
    ld e, h                                       ; $47B9: $5C
    ld a, [hl]                                    ; $47BA: $7E
    inc a                                         ; $47BB: $3C
    inc a                                         ; $47BC: $3C
    jr @+$1A                                      ; $47BD: $18 $18

    nop                                           ; $47BF: $00
    nop                                           ; $47C0: $00
    nop                                           ; $47C1: $00
    nop                                           ; $47C2: $00
    nop                                           ; $47C3: $00
    ld [$1C00], sp                                ; $47C4: $08 $00 $1C
    ld [$183C], sp                                ; $47C7: $08 $3C $18
    ld a, $1C                                     ; $47CA: $3E $1C
    ld a, [hl]                                    ; $47CC: $7E
    inc l                                         ; $47CD: $2C
    ld a, a                                       ; $47CE: $7F
    ld a, [hl+]                                   ; $47CF: $2A
    rst $38                                       ; $47D0: $FF
    ld h, [hl]                                    ; $47D1: $66
    rst $38                                       ; $47D2: $FF
    ld l, [hl]                                    ; $47D3: $6E
    rst $38                                       ; $47D4: $FF
    ld l, [hl]                                    ; $47D5: $6E
    cp $5C                                        ; $47D6: $FE $5C
    cp $5C                                        ; $47D8: $FE $5C
    ld a, [hl]                                    ; $47DA: $7E
    inc a                                         ; $47DB: $3C
    inc a                                         ; $47DC: $3C
    jr jr_00D_47F7                                ; $47DD: $18 $18

    nop                                           ; $47DF: $00
    nop                                           ; $47E0: $00
    nop                                           ; $47E1: $00
    nop                                           ; $47E2: $00
    nop                                           ; $47E3: $00
    ld [hl], b                                    ; $47E4: $70
    nop                                           ; $47E5: $00
    ld hl, sp+$70                                 ; $47E6: $F8 $70
    ld a, h                                       ; $47E8: $7C
    jr c, jr_00D_4829                             ; $47E9: $38 $3E

    db $10                                        ; $47EB: $10
    rra                                           ; $47EC: $1F
    ld c, $1F                                     ; $47ED: $0E $1F
    ld [bc], a                                    ; $47EF: $02
    nop                                           ; $47F0: $00
    nop                                           ; $47F1: $00
    nop                                           ; $47F2: $00
    nop                                           ; $47F3: $00
    nop                                           ; $47F4: $00

jr_00D_47F5:
    nop                                           ; $47F5: $00
    nop                                           ; $47F6: $00

jr_00D_47F7:
    nop                                           ; $47F7: $00
    nop                                           ; $47F8: $00
    nop                                           ; $47F9: $00
    ldh [rP1], a                                  ; $47FA: $E0 $00
    ldh a, [$E0]                                  ; $47FC: $F0 $E0
    ld a, b                                       ; $47FE: $78
    and b                                         ; $47FF: $A0
    jr nz, jr_00D_4802                            ; $4800: $20 $00

jr_00D_4802:
    ld [hl], b                                    ; $4802: $70
    jr nz, jr_00D_47F5                            ; $4803: $20 $F0

    ld h, b                                       ; $4805: $60
    ldh a, [$60]                                  ; $4806: $F0 $60
    ldh a, [$60]                                  ; $4808: $F0 $60
    ldh a, [$60]                                  ; $480A: $F0 $60
    ld sp, hl                                     ; $480C: $F9
    ld [hl], b                                    ; $480D: $70
    rst $38                                       ; $480E: $FF
    add hl, sp                                    ; $480F: $39
    nop                                           ; $4810: $00
    nop                                           ; $4811: $00
    inc b                                         ; $4812: $04
    nop                                           ; $4813: $00

jr_00D_4814:
    ld c, $04                                     ; $4814: $0E $04
    rrca                                          ; $4816: $0F
    ld b, $1F                                     ; $4817: $06 $1F
    ld c, $3F                                     ; $4819: $0E $3F
    ld e, $FE                                     ; $481B: $1E $FE
    inc a                                         ; $481D: $3C
    db $FC                                        ; $481E: $FC
    ret c                                         ; $481F: $D8

    ccf                                           ; $4820: $3F
    rrca                                          ; $4821: $0F
    ccf                                           ; $4822: $3F
    ld e, $3E                                     ; $4823: $1E $3E
    inc e                                         ; $4825: $1C
    ld a, h                                       ; $4826: $7C
    jr c, jr_00D_48A5                             ; $4827: $38 $7C

jr_00D_4829:
    jr c, jr_00D_48A3                             ; $4829: $38 $78

    jr nc, jr_00D_4865                            ; $482B: $30 $38

    db $10                                        ; $482D: $10
    jr nc, jr_00D_4830                            ; $482E: $30 $00

jr_00D_4830:
    sbc h                                         ; $4830: $9C
    ld l, b                                       ; $4831: $68
    sbc $2C                                       ; $4832: $DE $2C
    cpl                                           ; $4834: $2F
    ld b, $07                                     ; $4835: $06 $07
    ld [bc], a                                    ; $4837: $02
    rlca                                          ; $4838: $07
    ld [bc], a                                    ; $4839: $02
    ld [bc], a                                    ; $483A: $02
    nop                                           ; $483B: $00
    nop                                           ; $483C: $00
    nop                                           ; $483D: $00
    nop                                           ; $483E: $00
    nop                                           ; $483F: $00
    cp $5D                                        ; $4840: $FE $5D
    rst $38                                       ; $4842: $FF
    ld h, d                                       ; $4843: $62
    ld a, a                                       ; $4844: $7F
    inc a                                         ; $4845: $3C
    ld a, $00                                     ; $4846: $3E $00
    nop                                           ; $4848: $00
    nop                                           ; $4849: $00
    nop                                           ; $484A: $00
    nop                                           ; $484B: $00
    nop                                           ; $484C: $00
    nop                                           ; $484D: $00
    nop                                           ; $484E: $00
    nop                                           ; $484F: $00
    ld hl, sp+$40                                 ; $4850: $F8 $40
    jr nz, jr_00D_4814                            ; $4852: $20 $C0

    and b                                         ; $4854: $A0
    ld b, b                                       ; $4855: $40

jr_00D_4856:
    ld b, b                                       ; $4856: $40
    nop                                           ; $4857: $00
    nop                                           ; $4858: $00
    nop                                           ; $4859: $00
    nop                                           ; $485A: $00
    nop                                           ; $485B: $00
    nop                                           ; $485C: $00
    nop                                           ; $485D: $00
    nop                                           ; $485E: $00
    nop                                           ; $485F: $00
    nop                                           ; $4860: $00
    nop                                           ; $4861: $00
    rlca                                          ; $4862: $07
    nop                                           ; $4863: $00
    ld [bc], a                                    ; $4864: $02

jr_00D_4865:
    ld bc, $0305                                  ; $4865: $01 $05 $03
    dec bc                                        ; $4868: $0B
    rlca                                          ; $4869: $07
    rla                                           ; $486A: $17
    ld c, $1F                                     ; $486B: $0E $1F
    inc c                                         ; $486D: $0C
    scf                                           ; $486E: $37
    jr jr_00D_4871                                ; $486F: $18 $00

jr_00D_4871:
    nop                                           ; $4871: $00
    ldh [rP1], a                                  ; $4872: $E0 $00
    db $E3                                        ; $4874: $E3
    nop                                           ; $4875: $00
    or a                                          ; $4876: $B7
    ret nz                                        ; $4877: $C0

    rst $18                                       ; $4878: $DF
    and b                                         ; $4879: $A0
    rst $38                                       ; $487A: $FF
    nop                                           ; $487B: $00
    rst $38                                       ; $487C: $FF
    nop                                           ; $487D: $00
    db $FC                                        ; $487E: $FC
    inc bc                                        ; $487F: $03
    ccf                                           ; $4880: $3F
    nop                                           ; $4881: $00
    db $FD                                        ; $4882: $FD
    ld [bc], a                                    ; $4883: $02
    xor $17                                       ; $4884: $EE $17
    ld a, e                                       ; $4886: $7B
    db $FD                                        ; $4887: $FD
    db $FD                                        ; $4888: $FD
    ld a, [hl]                                    ; $4889: $7E
    db $FD                                        ; $488A: $FD
    ld a, $FE                                     ; $488B: $3E $FE
    rra                                           ; $488D: $1F
    db $FC                                        ; $488E: $FC
    rra                                           ; $488F: $1F
    nop                                           ; $4890: $00
    nop                                           ; $4891: $00
    ret nz                                        ; $4892: $C0

    nop                                           ; $4893: $00
    jr nc, jr_00D_4856                            ; $4894: $30 $C0

    ret z                                         ; $4896: $C8

    ldh a, [$E4]                                  ; $4897: $F0 $E4
    ld hl, sp-$3C                                 ; $4899: $F8 $C4
    ldh [$80], a                                  ; $489B: $E0 $80
    ld b, b                                       ; $489D: $40
    add b                                         ; $489E: $80
    nop                                           ; $489F: $00
    nop                                           ; $48A0: $00
    nop                                           ; $48A1: $00
    nop                                           ; $48A2: $00

jr_00D_48A3:
    nop                                           ; $48A3: $00
    nop                                           ; $48A4: $00

jr_00D_48A5:
    nop                                           ; $48A5: $00
    nop                                           ; $48A6: $00
    nop                                           ; $48A7: $00
    nop                                           ; $48A8: $00
    nop                                           ; $48A9: $00
    ld bc, $0300                                  ; $48AA: $01 $00 $03
    nop                                           ; $48AD: $00
    rlca                                          ; $48AE: $07
    nop                                           ; $48AF: $00
    nop                                           ; $48B0: $00
    nop                                           ; $48B1: $00
    nop                                           ; $48B2: $00
    nop                                           ; $48B3: $00
    nop                                           ; $48B4: $00
    nop                                           ; $48B5: $00
    rlca                                          ; $48B6: $07
    nop                                           ; $48B7: $00
    rra                                           ; $48B8: $1F
    nop                                           ; $48B9: $00
    rst $38                                       ; $48BA: $FF
    nop                                           ; $48BB: $00
    rst $38                                       ; $48BC: $FF
    nop                                           ; $48BD: $00
    rst $38                                       ; $48BE: $FF
    ld [bc], a                                    ; $48BF: $02
    nop                                           ; $48C0: $00
    nop                                           ; $48C1: $00
    nop                                           ; $48C2: $00
    nop                                           ; $48C3: $00
    nop                                           ; $48C4: $00
    nop                                           ; $48C5: $00
    nop                                           ; $48C6: $00
    nop                                           ; $48C7: $00
    add b                                         ; $48C8: $80
    nop                                           ; $48C9: $00
    ldh [rP1], a                                  ; $48CA: $E0 $00
    ld hl, sp+$00                                 ; $48CC: $F8 $00
    cp $00                                        ; $48CE: $FE $00
    nop                                           ; $48D0: $00
    nop                                           ; $48D1: $00
    nop                                           ; $48D2: $00
    nop                                           ; $48D3: $00
    inc bc                                        ; $48D4: $03
    nop                                           ; $48D5: $00
    rra                                           ; $48D6: $1F
    nop                                           ; $48D7: $00
    ld a, a                                       ; $48D8: $7F
    nop                                           ; $48D9: $00
    rst $38                                       ; $48DA: $FF
    nop                                           ; $48DB: $00
    rst $38                                       ; $48DC: $FF
    nop                                           ; $48DD: $00
    rst $38                                       ; $48DE: $FF
    inc bc                                        ; $48DF: $03
    nop                                           ; $48E0: $00
    nop                                           ; $48E1: $00
    nop                                           ; $48E2: $00
    nop                                           ; $48E3: $00
    ret nz                                        ; $48E4: $C0

    nop                                           ; $48E5: $00
    ldh [rP1], a                                  ; $48E6: $E0 $00
    ldh [rNR10], a                                ; $48E8: $E0 $10
    ldh a, [rNR32]                                ; $48EA: $F0 $1C
    db $FC                                        ; $48EC: $FC
    ld c, $FF                                     ; $48ED: $0E $FF
    ld c, $27                                     ; $48EF: $0E $27
    db $10                                        ; $48F1: $10
    rlca                                          ; $48F2: $07
    nop                                           ; $48F3: $00
    rlca                                          ; $48F4: $07
    nop                                           ; $48F5: $00
    rlca                                          ; $48F6: $07
    nop                                           ; $48F7: $00
    ld b, $00                                     ; $48F8: $06 $00
    ld [bc], a                                    ; $48FA: $02
    nop                                           ; $48FB: $00
    nop                                           ; $48FC: $00
    nop                                           ; $48FD: $00
    nop                                           ; $48FE: $00
    nop                                           ; $48FF: $00
    rst $38                                       ; $4900: $FF
    daa                                           ; $4901: $27
    rst $38                                       ; $4902: $FF
    ld b, a                                       ; $4903: $47
    ld sp, hl                                     ; $4904: $F9
    rlca                                          ; $4905: $07
    ld a, b                                       ; $4906: $78
    ld hl, $2070                                  ; $4907: $21 $70 $20
    ld [hl], b                                    ; $490A: $70
    nop                                           ; $490B: $00
    ld h, c                                       ; $490C: $61
    nop                                           ; $490D: $00
    rra                                           ; $490E: $1F
    nop                                           ; $490F: $00
    ld a, b                                       ; $4910: $78
    sbc h                                         ; $4911: $9C
    ld [hl], b                                    ; $4912: $70
    sbc b                                         ; $4913: $98
    ldh [$90], a                                  ; $4914: $E0 $90
    ldh [$90], a                                  ; $4916: $E0 $90
    ld [hl], b                                    ; $4918: $70
    add b                                         ; $4919: $80
    ldh a, [rP1]                                  ; $491A: $F0 $00
    ldh [rP1], a                                  ; $491C: $E0 $00
    ret nz                                        ; $491E: $C0

    nop                                           ; $491F: $00
    rlca                                          ; $4920: $07
    nop                                           ; $4921: $00
    rlca                                          ; $4922: $07
    nop                                           ; $4923: $00
    rlca                                          ; $4924: $07
    nop                                           ; $4925: $00
    rlca                                          ; $4926: $07
    nop                                           ; $4927: $00
    rlca                                          ; $4928: $07
    ld bc, $0102                                  ; $4929: $01 $02 $01
    inc b                                         ; $492C: $04
    ld [bc], a                                    ; $492D: $02
    nop                                           ; $492E: $00
    nop                                           ; $492F: $00
    rst $38                                       ; $4930: $FF
    daa                                           ; $4931: $27
    rst $38                                       ; $4932: $FF
    ld b, a                                       ; $4933: $47
    rst $38                                       ; $4934: $FF
    rlca                                          ; $4935: $07
    ld sp, hl                                     ; $4936: $F9
    and e                                         ; $4937: $A3
    ldh a, [$A1]                                  ; $4938: $F0 $A1
    ld [hl], c                                    ; $493A: $71
    ld bc, $0061                                  ; $493B: $01 $61 $00
    rra                                           ; $493E: $1F
    nop                                           ; $493F: $00
    rst $38                                       ; $4940: $FF
    jr nz, @+$01                                  ; $4941: $20 $FF

    inc e                                         ; $4943: $1C
    rst $38                                       ; $4944: $FF
    sbc e                                         ; $4945: $9B
    db $FC                                        ; $4946: $FC
    sbc e                                         ; $4947: $9B
    ldh a, [$98]                                  ; $4948: $F0 $98
    ldh a, [rP1]                                  ; $494A: $F0 $00
    ldh [rP1], a                                  ; $494C: $E0 $00
    ret nz                                        ; $494E: $C0

    nop                                           ; $494F: $00
    add b                                         ; $4950: $80
    nop                                           ; $4951: $00
    ldh [rP1], a                                  ; $4952: $E0 $00
    ldh a, [rP1]                                  ; $4954: $F0 $00
    ld hl, sp-$40                                 ; $4956: $F8 $C0
    ld e, h                                       ; $4958: $5C
    jr nc, jr_00D_4961                            ; $4959: $30 $06

    inc c                                         ; $495B: $0C
    nop                                           ; $495C: $00
    nop                                           ; $495D: $00
    nop                                           ; $495E: $00
    nop                                           ; $495F: $00
    rlca                                          ; $4960: $07

jr_00D_4961:
    nop                                           ; $4961: $00
    rlca                                          ; $4962: $07
    nop                                           ; $4963: $00
    rlca                                          ; $4964: $07
    nop                                           ; $4965: $00
    rlca                                          ; $4966: $07
    nop                                           ; $4967: $00
    ld b, $00                                     ; $4968: $06 $00
    ld [bc], a                                    ; $496A: $02
    nop                                           ; $496B: $00
    nop                                           ; $496C: $00
    nop                                           ; $496D: $00
    nop                                           ; $496E: $00
    nop                                           ; $496F: $00
    rst $38                                       ; $4970: $FF
    daa                                           ; $4971: $27
    ei                                            ; $4972: $FB
    ld b, a                                       ; $4973: $47
    db $FD                                        ; $4974: $FD
    inc bc                                        ; $4975: $03
    ld a, l                                       ; $4976: $7D
    inc hl                                        ; $4977: $23
    ld [hl], d                                    ; $4978: $72
    ld hl, $0071                                  ; $4979: $21 $71 $00
    ld h, e                                       ; $497C: $63
    nop                                           ; $497D: $00
    rra                                           ; $497E: $1F
    nop                                           ; $497F: $00
    cp $89                                        ; $4980: $FE $89
    cp $87                                        ; $4982: $FE $87
    rst $38                                       ; $4984: $FF
    add a                                         ; $4985: $87
    rst $38                                       ; $4986: $FF
    add a                                         ; $4987: $87
    rst $38                                       ; $4988: $FF
    add e                                         ; $4989: $83
    rst $38                                       ; $498A: $FF
    ld bc, $01FF                                  ; $498B: $01 $FF $01
    rst $08                                       ; $498E: $CF
    ld bc, $0000                                  ; $498F: $01 $00 $00
    nop                                           ; $4992: $00
    nop                                           ; $4993: $00
    nop                                           ; $4994: $00
    add b                                         ; $4995: $80
    nop                                           ; $4996: $00
    add b                                         ; $4997: $80
    add b                                         ; $4998: $80
    ret nz                                        ; $4999: $C0

    ret nz                                        ; $499A: $C0

    ldh [$C0], a                                  ; $499B: $E0 $C0
    and b                                         ; $499D: $A0
    ret nz                                        ; $499E: $C0

    ld b, b                                       ; $499F: $40
    ld a, a                                       ; $49A0: $7F
    nop                                           ; $49A1: $00
    ldh a, [rP1]                                  ; $49A2: $F0 $00
    ret nz                                        ; $49A4: $C0

    nop                                           ; $49A5: $00
    ret nz                                        ; $49A6: $C0

    nop                                           ; $49A7: $00
    add sp, $00                                   ; $49A8: $E8 $00
    ld [hl], b                                    ; $49AA: $70
    nop                                           ; $49AB: $00
    nop                                           ; $49AC: $00
    nop                                           ; $49AD: $00
    nop                                           ; $49AE: $00
    nop                                           ; $49AF: $00
    ld a, a                                       ; $49B0: $7F
    nop                                           ; $49B1: $00
    ldh a, [rP1]                                  ; $49B2: $F0 $00
    ret nz                                        ; $49B4: $C0

    nop                                           ; $49B5: $00
    ret nz                                        ; $49B6: $C0

    nop                                           ; $49B7: $00
    ldh [rP1], a                                  ; $49B8: $E0 $00
    ld a, b                                       ; $49BA: $78
    nop                                           ; $49BB: $00
    nop                                           ; $49BC: $00
    nop                                           ; $49BD: $00
    nop                                           ; $49BE: $00
    nop                                           ; $49BF: $00
    ld a, a                                       ; $49C0: $7F
    nop                                           ; $49C1: $00
    ldh a, [rP1]                                  ; $49C2: $F0 $00
    ret nz                                        ; $49C4: $C0

    nop                                           ; $49C5: $00
    ret nz                                        ; $49C6: $C0

    nop                                           ; $49C7: $00
    ldh [rP1], a                                  ; $49C8: $E0 $00
    ld [hl], b                                    ; $49CA: $70
    nop                                           ; $49CB: $00
    ld [rRAMG], sp                                ; $49CC: $08 $00 $00
    nop                                           ; $49CF: $00
    ld b, a                                       ; $49D0: $47
    ret nz                                        ; $49D1: $C0

    rst $00                                       ; $49D2: $C7
    ld b, b                                       ; $49D3: $40
    add e                                         ; $49D4: $83
    ld b, b                                       ; $49D5: $40
    ld b, c                                       ; $49D6: $41
    nop                                           ; $49D7: $00
    nop                                           ; $49D8: $00
    nop                                           ; $49D9: $00
    nop                                           ; $49DA: $00
    nop                                           ; $49DB: $00
    nop                                           ; $49DC: $00
    nop                                           ; $49DD: $00
    nop                                           ; $49DE: $00
    nop                                           ; $49DF: $00
    add b                                         ; $49E0: $80
    ret nz                                        ; $49E1: $C0

    add b                                         ; $49E2: $80
    ret nz                                        ; $49E3: $C0

    ret nz                                        ; $49E4: $C0

    ldh [$C0], a                                  ; $49E5: $E0 $C0
    ld h, b                                       ; $49E7: $60
    ldh [rNR41], a                                ; $49E8: $E0 $20
    ld h, b                                       ; $49EA: $60
    db $10                                        ; $49EB: $10
    stop                                          ; $49EC: $10 $00
    nop                                           ; $49EE: $00
    nop                                           ; $49EF: $00
    nop                                           ; $49F0: $00
    nop                                           ; $49F1: $00
    nop                                           ; $49F2: $00
    nop                                           ; $49F3: $00
    ccf                                           ; $49F4: $3F
    nop                                           ; $49F5: $00
    rst $38                                       ; $49F6: $FF
    nop                                           ; $49F7: $00
    rst $38                                       ; $49F8: $FF
    nop                                           ; $49F9: $00
    ld a, a                                       ; $49FA: $7F
    nop                                           ; $49FB: $00
    rra                                           ; $49FC: $1F
    nop                                           ; $49FD: $00
    nop                                           ; $49FE: $00
    nop                                           ; $49FF: $00
    nop                                           ; $4A00: $00
    nop                                           ; $4A01: $00
    nop                                           ; $4A02: $00
    nop                                           ; $4A03: $00
    rra                                           ; $4A04: $1F
    nop                                           ; $4A05: $00
    ld a, a                                       ; $4A06: $7F
    nop                                           ; $4A07: $00
    ld a, a                                       ; $4A08: $7F
    nop                                           ; $4A09: $00
    ccf                                           ; $4A0A: $3F
    nop                                           ; $4A0B: $00
    rrca                                          ; $4A0C: $0F
    nop                                           ; $4A0D: $00
    nop                                           ; $4A0E: $00
    nop                                           ; $4A0F: $00
    nop                                           ; $4A10: $00
    nop                                           ; $4A11: $00
    nop                                           ; $4A12: $00
    nop                                           ; $4A13: $00
    rrca                                          ; $4A14: $0F
    nop                                           ; $4A15: $00
    ccf                                           ; $4A16: $3F
    nop                                           ; $4A17: $00
    ccf                                           ; $4A18: $3F
    nop                                           ; $4A19: $00
    rra                                           ; $4A1A: $1F
    nop                                           ; $4A1B: $00
    rlca                                          ; $4A1C: $07
    nop                                           ; $4A1D: $00
    nop                                           ; $4A1E: $00
    nop                                           ; $4A1F: $00
    nop                                           ; $4A20: $00
    nop                                           ; $4A21: $00
    nop                                           ; $4A22: $00
    nop                                           ; $4A23: $00
    nop                                           ; $4A24: $00
    nop                                           ; $4A25: $00
    nop                                           ; $4A26: $00
    nop                                           ; $4A27: $00
    nop                                           ; $4A28: $00
    nop                                           ; $4A29: $00
    ld bc, $0300                                  ; $4A2A: $01 $00 $03
    nop                                           ; $4A2D: $00
    rlca                                          ; $4A2E: $07
    nop                                           ; $4A2F: $00
    nop                                           ; $4A30: $00
    nop                                           ; $4A31: $00
    nop                                           ; $4A32: $00
    nop                                           ; $4A33: $00
    nop                                           ; $4A34: $00
    nop                                           ; $4A35: $00
    rlca                                          ; $4A36: $07
    nop                                           ; $4A37: $00
    rra                                           ; $4A38: $1F
    nop                                           ; $4A39: $00
    rst $30                                       ; $4A3A: $F7
    nop                                           ; $4A3B: $00
    ld hl, sp+$00                                 ; $4A3C: $F8 $00
    ldh a, [$03]                                  ; $4A3E: $F0 $03
    nop                                           ; $4A40: $00
    nop                                           ; $4A41: $00
    nop                                           ; $4A42: $00
    nop                                           ; $4A43: $00
    nop                                           ; $4A44: $00
    nop                                           ; $4A45: $00
    nop                                           ; $4A46: $00
    nop                                           ; $4A47: $00
    add b                                         ; $4A48: $80
    nop                                           ; $4A49: $00
    ldh [rP1], a                                  ; $4A4A: $E0 $00
    jr c, jr_00D_4A4E                             ; $4A4C: $38 $00

jr_00D_4A4E:
    ld d, $80                                     ; $4A4E: $16 $80
    rlca                                          ; $4A50: $07
    nop                                           ; $4A51: $00
    rlca                                          ; $4A52: $07
    nop                                           ; $4A53: $00
    rlca                                          ; $4A54: $07
    nop                                           ; $4A55: $00
    rlca                                          ; $4A56: $07
    nop                                           ; $4A57: $00
    rlca                                          ; $4A58: $07
    ld bc, $0102                                  ; $4A59: $01 $02 $01
    inc b                                         ; $4A5C: $04
    ld [bc], a                                    ; $4A5D: $02
    nop                                           ; $4A5E: $00
    nop                                           ; $4A5F: $00
    ldh [$27], a                                  ; $4A60: $E0 $27
    add b                                         ; $4A62: $80
    rrca                                          ; $4A63: $0F
    ldh [rIF], a                                  ; $4A64: $E0 $0F
    ldh [$AF], a                                  ; $4A66: $E0 $AF
    ldh [$A7], a                                  ; $4A68: $E0 $A7
    ld d, b                                       ; $4A6A: $50
    inc bc                                        ; $4A6B: $03
    ld h, b                                       ; $4A6C: $60
    nop                                           ; $4A6D: $00
    dec de                                        ; $4A6E: $1B
    nop                                           ; $4A6F: $00
    rrca                                          ; $4A70: $0F
    ret nz                                        ; $4A71: $C0

    rrca                                          ; $4A72: $0F
    db $EC                                        ; $4A73: $EC
    inc bc                                        ; $4A74: $03
    db $E3                                        ; $4A75: $E3
    inc c                                         ; $4A76: $0C
    db $EB                                        ; $4A77: $EB
    nop                                           ; $4A78: $00
    ret z                                         ; $4A79: $C8

    db $10                                        ; $4A7A: $10
    add b                                         ; $4A7B: $80
    nop                                           ; $4A7C: $00
    nop                                           ; $4A7D: $00
    ret nz                                        ; $4A7E: $C0

    nop                                           ; $4A7F: $00
    add b                                         ; $4A80: $80
    nop                                           ; $4A81: $00
    ldh [rP1], a                                  ; $4A82: $E0 $00
    ldh a, [rP1]                                  ; $4A84: $F0 $00
    ld hl, sp-$40                                 ; $4A86: $F8 $C0
    ld e, h                                       ; $4A88: $5C
    jr nc, jr_00D_4A91                            ; $4A89: $30 $06

    inc c                                         ; $4A8B: $0C
    nop                                           ; $4A8C: $00
    nop                                           ; $4A8D: $00
    nop                                           ; $4A8E: $00
    nop                                           ; $4A8F: $00
    ld a, a                                       ; $4A90: $7F

jr_00D_4A91:
    nop                                           ; $4A91: $00
    ldh a, [rP1]                                  ; $4A92: $F0 $00
    ret nz                                        ; $4A94: $C0

    nop                                           ; $4A95: $00
    ret nz                                        ; $4A96: $C0

    nop                                           ; $4A97: $00
    ldh [rP1], a                                  ; $4A98: $E0 $00
    ld a, b                                       ; $4A9A: $78
    nop                                           ; $4A9B: $00
    nop                                           ; $4A9C: $00
    nop                                           ; $4A9D: $00
    nop                                           ; $4A9E: $00
    nop                                           ; $4A9F: $00
    nop                                           ; $4AA0: $00
    nop                                           ; $4AA1: $00
    nop                                           ; $4AA2: $00
    nop                                           ; $4AA3: $00
    nop                                           ; $4AA4: $00
    nop                                           ; $4AA5: $00
    ld bc, $1C00                                  ; $4AA6: $01 $00 $1C
    nop                                           ; $4AA9: $00
    ld c, b                                       ; $4AAA: $48
    nop                                           ; $4AAB: $00
    jr nz, jr_00D_4AB1                            ; $4AAC: $20 $03

    and b                                         ; $4AAE: $A0
    rrca                                          ; $4AAF: $0F
    nop                                           ; $4AB0: $00

jr_00D_4AB1:
    nop                                           ; $4AB1: $00
    nop                                           ; $4AB2: $00
    nop                                           ; $4AB3: $00
    nop                                           ; $4AB4: $00
    nop                                           ; $4AB5: $00
    nop                                           ; $4AB6: $00
    nop                                           ; $4AB7: $00
    add b                                         ; $4AB8: $80
    nop                                           ; $4AB9: $00
    jr nz, jr_00D_4ABC                            ; $4ABA: $20 $00

jr_00D_4ABC:
    ld [$0880], sp                                ; $4ABC: $08 $80 $08
    ldh [rSB], a                                  ; $4ABF: $E0 $01
    nop                                           ; $4AC1: $00
    dec b                                         ; $4AC2: $05
    nop                                           ; $4AC3: $00
    dec b                                         ; $4AC4: $05
    nop                                           ; $4AC5: $00
    ld b, $00                                     ; $4AC6: $06 $00
    rlca                                          ; $4AC8: $07
    ld bc, $0102                                  ; $4AC9: $01 $02 $01
    inc b                                         ; $4ACC: $04
    ld [bc], a                                    ; $4ACD: $02
    nop                                           ; $4ACE: $00
    nop                                           ; $4ACF: $00
    ret nz                                        ; $4AD0: $C0

    rrca                                          ; $4AD1: $0F
    ret nz                                        ; $4AD2: $C0

    ld e, a                                       ; $4AD3: $5F
    ret nz                                        ; $4AD4: $C0

    rra                                           ; $4AD5: $1F
    nop                                           ; $4AD6: $00
    rra                                           ; $4AD7: $1F
    ret nz                                        ; $4AD8: $C0

    adc a                                         ; $4AD9: $8F
    ld h, b                                       ; $4ADA: $60
    rrca                                          ; $4ADB: $0F
    ld h, b                                       ; $4ADC: $60
    inc bc                                        ; $4ADD: $03
    stop                                          ; $4ADE: $10 $00
    dec b                                         ; $4AE0: $05
    ldh [rTAC], a                                 ; $4AE1: $E0 $07
    db $F4                                        ; $4AE3: $F4
    nop                                           ; $4AE4: $00
    ldh a, [rDIV]                                 ; $4AE5: $F0 $04
    di                                            ; $4AE7: $F3
    nop                                           ; $4AE8: $00
    ldh [rP1], a                                  ; $4AE9: $E0 $00
    ldh [rP1], a                                  ; $4AEB: $E0 $00
    add b                                         ; $4AED: $80
    nop                                           ; $4AEE: $00
    nop                                           ; $4AEF: $00
    add b                                         ; $4AF0: $80
    nop                                           ; $4AF1: $00
    and b                                         ; $4AF2: $A0
    nop                                           ; $4AF3: $00
    ld [hl], b                                    ; $4AF4: $70
    nop                                           ; $4AF5: $00
    jr jr_00D_4AF8                                ; $4AF6: $18 $00

jr_00D_4AF8:
    ld e, h                                       ; $4AF8: $5C
    jr nc, jr_00D_4B01                            ; $4AF9: $30 $06

    inc c                                         ; $4AFB: $0C
    nop                                           ; $4AFC: $00
    nop                                           ; $4AFD: $00
    nop                                           ; $4AFE: $00
    nop                                           ; $4AFF: $00
    ld a, e                                       ; $4B00: $7B

jr_00D_4B01:
    nop                                           ; $4B01: $00
    ldh a, [rP1]                                  ; $4B02: $F0 $00
    ret nz                                        ; $4B04: $C0

    nop                                           ; $4B05: $00
    ret nz                                        ; $4B06: $C0

    nop                                           ; $4B07: $00
    ldh [rP1], a                                  ; $4B08: $E0 $00
    ld a, b                                       ; $4B0A: $78
    nop                                           ; $4B0B: $00
    nop                                           ; $4B0C: $00
    nop                                           ; $4B0D: $00
    nop                                           ; $4B0E: $00
    nop                                           ; $4B0F: $00
    nop                                           ; $4B10: $00
    nop                                           ; $4B11: $00
    nop                                           ; $4B12: $00
    nop                                           ; $4B13: $00
    nop                                           ; $4B14: $00
    nop                                           ; $4B15: $00
    dec b                                         ; $4B16: $05
    nop                                           ; $4B17: $00
    stop                                          ; $4B18: $10 $00
    nop                                           ; $4B1A: $00
    rlca                                          ; $4B1B: $07
    ld b, b                                       ; $4B1C: $40
    rrca                                          ; $4B1D: $0F
    add b                                         ; $4B1E: $80
    rra                                           ; $4B1F: $1F
    nop                                           ; $4B20: $00
    nop                                           ; $4B21: $00
    nop                                           ; $4B22: $00
    nop                                           ; $4B23: $00
    nop                                           ; $4B24: $00
    nop                                           ; $4B25: $00
    nop                                           ; $4B26: $00
    nop                                           ; $4B27: $00
    nop                                           ; $4B28: $00
    nop                                           ; $4B29: $00
    nop                                           ; $4B2A: $00
    ret nz                                        ; $4B2B: $C0

    nop                                           ; $4B2C: $00
    ldh [rSC], a                                  ; $4B2D: $E0 $02
    ldh a, [rP1]                                  ; $4B2F: $F0 $00
    ccf                                           ; $4B31: $3F
    add b                                         ; $4B32: $80
    ccf                                           ; $4B33: $3F
    nop                                           ; $4B34: $00
    ccf                                           ; $4B35: $3F
    add b                                         ; $4B36: $80
    cp a                                          ; $4B37: $BF
    nop                                           ; $4B38: $00
    ccf                                           ; $4B39: $3F
    nop                                           ; $4B3A: $00
    rra                                           ; $4B3B: $1F
    nop                                           ; $4B3C: $00
    rrca                                          ; $4B3D: $0F
    nop                                           ; $4B3E: $00
    rlca                                          ; $4B3F: $07
    inc bc                                        ; $4B40: $03
    ld hl, sp+$00                                 ; $4B41: $F8 $00
    ld hl, sp+$03                                 ; $4B43: $F8 $03
    ei                                            ; $4B45: $FB
    nop                                           ; $4B46: $00
    ld a, [$F800]                                 ; $4B47: $FA $00 $F8
    nop                                           ; $4B4A: $00
    ldh a, [rP1]                                  ; $4B4B: $F0 $00
    ldh [rP1], a                                  ; $4B4D: $E0 $00
    ret nz                                        ; $4B4F: $C0

    jr nz, jr_00D_4B52                            ; $4B50: $20 $00

jr_00D_4B52:
    or b                                          ; $4B52: $B0
    nop                                           ; $4B53: $00
    add b                                         ; $4B54: $80
    nop                                           ; $4B55: $00
    nop                                           ; $4B56: $00
    nop                                           ; $4B57: $00
    add b                                         ; $4B58: $80
    nop                                           ; $4B59: $00
    nop                                           ; $4B5A: $00
    nop                                           ; $4B5B: $00
    nop                                           ; $4B5C: $00
    nop                                           ; $4B5D: $00
    nop                                           ; $4B5E: $00
    nop                                           ; $4B5F: $00
    nop                                           ; $4B60: $00
    jr c, jr_00D_4B63                             ; $4B61: $38 $00

jr_00D_4B63:
    ld a, h                                       ; $4B63: $7C
    nop                                           ; $4B64: $00
    cp $00                                        ; $4B65: $FE $00
    cp $00                                        ; $4B67: $FE $00
    cp $00                                        ; $4B69: $FE $00
    ld a, h                                       ; $4B6B: $7C
    nop                                           ; $4B6C: $00
    jr c, jr_00D_4B6F                             ; $4B6D: $38 $00

jr_00D_4B6F:
    nop                                           ; $4B6F: $00
    nop                                           ; $4B70: $00
    nop                                           ; $4B71: $00
    nop                                           ; $4B72: $00
    nop                                           ; $4B73: $00
    nop                                           ; $4B74: $00
    stop                                          ; $4B75: $10 $00
    nop                                           ; $4B77: $00
    nop                                           ; $4B78: $00
    stop                                          ; $4B79: $10 $00
    stop                                          ; $4B7B: $10 $00
    stop                                          ; $4B7D: $10 $00
    stop                                          ; $4B7F: $10 $00
    nop                                           ; $4B81: $00
    nop                                           ; $4B82: $00
    nop                                           ; $4B83: $00
    nop                                           ; $4B84: $00
    nop                                           ; $4B85: $00
    nop                                           ; $4B86: $00
    ld d, a                                       ; $4B87: $57
    nop                                           ; $4B88: $00
    nop                                           ; $4B89: $00
    nop                                           ; $4B8A: $00
    nop                                           ; $4B8B: $00
    nop                                           ; $4B8C: $00
    nop                                           ; $4B8D: $00
    nop                                           ; $4B8E: $00
    nop                                           ; $4B8F: $00
    nop                                           ; $4B90: $00
    stop                                          ; $4B91: $10 $00
    stop                                          ; $4B93: $10 $00
    jr c, jr_00D_4B97                             ; $4B95: $38 $00

jr_00D_4B97:
    rst $38                                       ; $4B97: $FF
    nop                                           ; $4B98: $00
    jr c, jr_00D_4B9B                             ; $4B99: $38 $00

jr_00D_4B9B:
    stop                                          ; $4B9B: $10 $00
    stop                                          ; $4B9D: $10 $00
    stop                                          ; $4B9F: $10 $00
    nop                                           ; $4BA1: $00
    nop                                           ; $4BA2: $00
    nop                                           ; $4BA3: $00
    ld bc, $0601                                  ; $4BA4: $01 $01 $06
    rlca                                          ; $4BA7: $07
    ld e, a                                       ; $4BA8: $5F
    ld e, a                                       ; $4BA9: $5F
    nop                                           ; $4BAA: $00
    nop                                           ; $4BAB: $00
    nop                                           ; $4BAC: $00
    nop                                           ; $4BAD: $00
    nop                                           ; $4BAE: $00
    nop                                           ; $4BAF: $00
    nop                                           ; $4BB0: $00
    nop                                           ; $4BB1: $00
    ld [hl], b                                    ; $4BB2: $70
    ld [hl], b                                    ; $4BB3: $70
    ld hl, sp-$08                                 ; $4BB4: $F8 $F8
    call z, $8CFC                                 ; $4BB6: $CC $FC $8C
    db $FC                                        ; $4BB9: $FC
    ld hl, sp-$08                                 ; $4BBA: $F8 $F8
    jr nc, jr_00D_4BEE                            ; $4BBC: $30 $30

    nop                                           ; $4BBE: $00
    nop                                           ; $4BBF: $00
    nop                                           ; $4BC0: $00
    nop                                           ; $4BC1: $00
    nop                                           ; $4BC2: $00
    nop                                           ; $4BC3: $00
    jr @+$1A                                      ; $4BC4: $18 $18

    inc a                                         ; $4BC6: $3C
    inc a                                         ; $4BC7: $3C
    ld h, [hl]                                    ; $4BC8: $66
    ld a, [hl]                                    ; $4BC9: $7E
    ld h, [hl]                                    ; $4BCA: $66
    ld a, [hl]                                    ; $4BCB: $7E
    ld [hl], h                                    ; $4BCC: $74
    ld a, h                                       ; $4BCD: $7C
    inc a                                         ; $4BCE: $3C
    inc a                                         ; $4BCF: $3C
    jr z, jr_00D_4C0A                             ; $4BD0: $28 $38

    jr jr_00D_4BEC                                ; $4BD2: $18 $18

    jr jr_00D_4BEE                                ; $4BD4: $18 $18

    ld [$0808], sp                                ; $4BD6: $08 $08 $08
    ld [rRAMG], sp                                ; $4BD9: $08 $00 $00
    ld [$0008], sp                                ; $4BDC: $08 $08 $00
    nop                                           ; $4BDF: $00
    inc a                                         ; $4BE0: $3C
    nop                                           ; $4BE1: $00
    ld a, [hl]                                    ; $4BE2: $7E
    inc a                                         ; $4BE3: $3C
    rst $38                                       ; $4BE4: $FF
    ld a, [hl]                                    ; $4BE5: $7E
    rst $38                                       ; $4BE6: $FF
    ld a, [hl]                                    ; $4BE7: $7E
    rst $38                                       ; $4BE8: $FF
    ld b, b                                       ; $4BE9: $40
    ret nz                                        ; $4BEA: $C0

    ccf                                           ; $4BEB: $3F

jr_00D_4BEC:
    cp a                                          ; $4BEC: $BF
    ld b, b                                       ; $4BED: $40

jr_00D_4BEE:
    rst $38                                       ; $4BEE: $FF
    inc a                                         ; $4BEF: $3C
    rst $38                                       ; $4BF0: $FF
    ld a, [hl]                                    ; $4BF1: $7E
    rst $38                                       ; $4BF2: $FF
    ld a, [hl]                                    ; $4BF3: $7E
    rst $38                                       ; $4BF4: $FF
    ld a, [hl]                                    ; $4BF5: $7E
    rst $38                                       ; $4BF6: $FF
    ld a, [hl]                                    ; $4BF7: $7E
    rst $38                                       ; $4BF8: $FF
    ld b, b                                       ; $4BF9: $40
    ret nz                                        ; $4BFA: $C0

    ccf                                           ; $4BFB: $3F
    cp a                                          ; $4BFC: $BF
    ld b, b                                       ; $4BFD: $40
    rst $38                                       ; $4BFE: $FF
    inc a                                         ; $4BFF: $3C
    inc a                                         ; $4C00: $3C
    nop                                           ; $4C01: $00
    ld a, [hl]                                    ; $4C02: $7E
    inc a                                         ; $4C03: $3C
    rst $38                                       ; $4C04: $FF
    ld a, [hl]                                    ; $4C05: $7E
    rst $38                                       ; $4C06: $FF
    ld a, [hl]                                    ; $4C07: $7E
    rst $38                                       ; $4C08: $FF
    nop                                           ; $4C09: $00

jr_00D_4C0A:
    nop                                           ; $4C0A: $00
    rst $38                                       ; $4C0B: $FF
    rst $38                                       ; $4C0C: $FF
    nop                                           ; $4C0D: $00
    rst $38                                       ; $4C0E: $FF
    inc a                                         ; $4C0F: $3C
    rst $38                                       ; $4C10: $FF
    ld a, [hl]                                    ; $4C11: $7E
    rst $38                                       ; $4C12: $FF
    ld a, [hl]                                    ; $4C13: $7E
    rst $38                                       ; $4C14: $FF
    ld a, [hl]                                    ; $4C15: $7E
    rst $38                                       ; $4C16: $FF
    ld a, [hl]                                    ; $4C17: $7E
    rst $38                                       ; $4C18: $FF
    nop                                           ; $4C19: $00
    nop                                           ; $4C1A: $00
    rst $38                                       ; $4C1B: $FF
    rst $38                                       ; $4C1C: $FF
    nop                                           ; $4C1D: $00
    rst $38                                       ; $4C1E: $FF
    inc a                                         ; $4C1F: $3C
    rst $38                                       ; $4C20: $FF
    ld a, [hl]                                    ; $4C21: $7E
    rst $38                                       ; $4C22: $FF
    ld a, [hl]                                    ; $4C23: $7E
    rst $38                                       ; $4C24: $FF
    ld a, [hl]                                    ; $4C25: $7E
    rst $38                                       ; $4C26: $FF
    ld b, d                                       ; $4C27: $42
    jp $813C                                      ; $4C28: $C3 $3C $81


    ld a, [hl]                                    ; $4C2B: $7E
    add c                                         ; $4C2C: $81
    ld a, [hl]                                    ; $4C2D: $7E
    ld a, [hl]                                    ; $4C2E: $7E
    nop                                           ; $4C2F: $00
    nop                                           ; $4C30: $00
    nop                                           ; $4C31: $00
    nop                                           ; $4C32: $00
    nop                                           ; $4C33: $00
    nop                                           ; $4C34: $00
    nop                                           ; $4C35: $00
    nop                                           ; $4C36: $00
    nop                                           ; $4C37: $00
    nop                                           ; $4C38: $00
    ld h, b                                       ; $4C39: $60
    nop                                           ; $4C3A: $00
    cp a                                          ; $4C3B: $BF
    nop                                           ; $4C3C: $00
    ld e, $00                                     ; $4C3D: $1E $00
    nop                                           ; $4C3F: $00
    nop                                           ; $4C40: $00
    nop                                           ; $4C41: $00
    nop                                           ; $4C42: $00
    ld h, b                                       ; $4C43: $60
    nop                                           ; $4C44: $00
    cp a                                          ; $4C45: $BF
    nop                                           ; $4C46: $00
    ld e, $00                                     ; $4C47: $1E $00
    nop                                           ; $4C49: $00
    nop                                           ; $4C4A: $00
    nop                                           ; $4C4B: $00
    nop                                           ; $4C4C: $00
    nop                                           ; $4C4D: $00
    nop                                           ; $4C4E: $00
    nop                                           ; $4C4F: $00
    nop                                           ; $4C50: $00
    nop                                           ; $4C51: $00
    nop                                           ; $4C52: $00
    nop                                           ; $4C53: $00
    nop                                           ; $4C54: $00
    nop                                           ; $4C55: $00
    nop                                           ; $4C56: $00
    nop                                           ; $4C57: $00
    nop                                           ; $4C58: $00
    jr jr_00D_4C5B                                ; $4C59: $18 $00

jr_00D_4C5B:
    cp a                                          ; $4C5B: $BF
    nop                                           ; $4C5C: $00
    ld e, $00                                     ; $4C5D: $1E $00
    nop                                           ; $4C5F: $00
    nop                                           ; $4C60: $00
    nop                                           ; $4C61: $00
    nop                                           ; $4C62: $00
    jr jr_00D_4C65                                ; $4C63: $18 $00

jr_00D_4C65:
    cp a                                          ; $4C65: $BF
    nop                                           ; $4C66: $00
    ld e, $00                                     ; $4C67: $1E $00
    nop                                           ; $4C69: $00
    nop                                           ; $4C6A: $00
    nop                                           ; $4C6B: $00
    nop                                           ; $4C6C: $00
    nop                                           ; $4C6D: $00
    nop                                           ; $4C6E: $00
    nop                                           ; $4C6F: $00
    nop                                           ; $4C70: $00
    nop                                           ; $4C71: $00
    nop                                           ; $4C72: $00
    nop                                           ; $4C73: $00
    nop                                           ; $4C74: $00
    nop                                           ; $4C75: $00
    nop                                           ; $4C76: $00
    nop                                           ; $4C77: $00
    nop                                           ; $4C78: $00
    ld b, $00                                     ; $4C79: $06 $00
    cp a                                          ; $4C7B: $BF
    nop                                           ; $4C7C: $00
    ld e, $00                                     ; $4C7D: $1E $00
    nop                                           ; $4C7F: $00
    nop                                           ; $4C80: $00
    nop                                           ; $4C81: $00
    nop                                           ; $4C82: $00
    ld b, $00                                     ; $4C83: $06 $00
    cp a                                          ; $4C85: $BF
    nop                                           ; $4C86: $00
    ld e, $00                                     ; $4C87: $1E $00
    nop                                           ; $4C89: $00
    nop                                           ; $4C8A: $00
    nop                                           ; $4C8B: $00
    nop                                           ; $4C8C: $00
    nop                                           ; $4C8D: $00
    nop                                           ; $4C8E: $00
    nop                                           ; $4C8F: $00
    nop                                           ; $4C90: $00
    nop                                           ; $4C91: $00
    rlca                                          ; $4C92: $07
    nop                                           ; $4C93: $00
    jr jr_00D_4C9D                                ; $4C94: $18 $07

    jr nz, jr_00D_4CB7                            ; $4C96: $20 $1F

    ld b, c                                       ; $4C98: $41
    ld a, $47                                     ; $4C99: $3E $47
    add hl, sp                                    ; $4C9B: $39
    ccf                                           ; $4C9C: $3F

jr_00D_4C9D:
    rlca                                          ; $4C9D: $07
    ccf                                           ; $4C9E: $3F
    rra                                           ; $4C9F: $1F
    rra                                           ; $4CA0: $1F
    rrca                                          ; $4CA1: $0F
    rra                                           ; $4CA2: $1F
    rrca                                          ; $4CA3: $0F
    rrca                                          ; $4CA4: $0F
    rlca                                          ; $4CA5: $07
    rrca                                          ; $4CA6: $0F
    rlca                                          ; $4CA7: $07
    rlca                                          ; $4CA8: $07
    inc bc                                        ; $4CA9: $03
    rlca                                          ; $4CAA: $07
    inc bc                                        ; $4CAB: $03
    inc bc                                        ; $4CAC: $03
    nop                                           ; $4CAD: $00
    nop                                           ; $4CAE: $00
    nop                                           ; $4CAF: $00
    nop                                           ; $4CB0: $00
    nop                                           ; $4CB1: $00
    nop                                           ; $4CB2: $00
    nop                                           ; $4CB3: $00
    add b                                         ; $4CB4: $80
    nop                                           ; $4CB5: $00
    add b                                         ; $4CB6: $80

jr_00D_4CB7:
    nop                                           ; $4CB7: $00
    ret nz                                        ; $4CB8: $C0

    add b                                         ; $4CB9: $80
    ldh a, [$80]                                  ; $4CBA: $F0 $80
    add sp, -$30                                  ; $4CBC: $E8 $D0
    add sp, -$30                                  ; $4CBE: $E8 $D0
    ret c                                         ; $4CC0: $D8

    and b                                         ; $4CC1: $A0
    ret c                                         ; $4CC2: $D8

    and b                                         ; $4CC3: $A0
    ret c                                         ; $4CC4: $D8

    and b                                         ; $4CC5: $A0
    cp b                                          ; $4CC6: $B8
    ld d, b                                       ; $4CC7: $50
    cp h                                          ; $4CC8: $BC
    ld e, b                                       ; $4CC9: $58
    cp b                                          ; $4CCA: $B8
    ld d, b                                       ; $4CCB: $50
    or b                                          ; $4CCC: $B0
    ld b, b                                       ; $4CCD: $40
    ld h, b                                       ; $4CCE: $60
    nop                                           ; $4CCF: $00
    nop                                           ; $4CD0: $00
    nop                                           ; $4CD1: $00
    nop                                           ; $4CD2: $00
    nop                                           ; $4CD3: $00
    nop                                           ; $4CD4: $00
    nop                                           ; $4CD5: $00
    nop                                           ; $4CD6: $00
    nop                                           ; $4CD7: $00
    nop                                           ; $4CD8: $00
    nop                                           ; $4CD9: $00
    ld bc, $0300                                  ; $4CDA: $01 $00 $03
    nop                                           ; $4CDD: $00
    inc b                                         ; $4CDE: $04
    inc bc                                        ; $4CDF: $03
    rrca                                          ; $4CE0: $0F
    nop                                           ; $4CE1: $00
    rra                                           ; $4CE2: $1F
    rrca                                          ; $4CE3: $0F
    ccf                                           ; $4CE4: $3F
    rra                                           ; $4CE5: $1F
    ld a, a                                       ; $4CE6: $7F
    ccf                                           ; $4CE7: $3F
    ld a, a                                       ; $4CE8: $7F
    ld a, $FF                                     ; $4CE9: $3E $FF
    ld a, h                                       ; $4CEB: $7C
    cp $70                                        ; $4CEC: $FE $70
    ld [hl], b                                    ; $4CEE: $70
    nop                                           ; $4CEF: $00
    nop                                           ; $4CF0: $00
    nop                                           ; $4CF1: $00
    nop                                           ; $4CF2: $00
    nop                                           ; $4CF3: $00
    jr c, jr_00D_4CF6                             ; $4CF4: $38 $00

jr_00D_4CF6:
    ld a, h                                       ; $4CF6: $7C

jr_00D_4CF7:
    jr c, jr_00D_4CF7                             ; $4CF7: $38 $FE

    ld a, h                                       ; $4CF9: $7C
    rst $38                                       ; $4CFA: $FF
    ldh a, [$F8]                                  ; $4CFB: $F0 $F8
    rlca                                          ; $4CFD: $07
    rlca                                          ; $4CFE: $07
    ld hl, sp-$01                                 ; $4CFF: $F8 $FF
    rlca                                          ; $4D01: $07
    rst $38                                       ; $4D02: $FF
    rst $08                                       ; $4D03: $CF
    rst $38                                       ; $4D04: $FF
    sbc a                                         ; $4D05: $9F
    rst $38                                       ; $4D06: $FF
    ccf                                           ; $4D07: $3F
    rst $38                                       ; $4D08: $FF
    ld a, a                                       ; $4D09: $7F
    rst $38                                       ; $4D0A: $FF
    ld a, a                                       ; $4D0B: $7F
    rst $38                                       ; $4D0C: $FF
    ld a, h                                       ; $4D0D: $7C
    ld a, h                                       ; $4D0E: $7C
    nop                                           ; $4D0F: $00
    nop                                           ; $4D10: $00
    nop                                           ; $4D11: $00
    nop                                           ; $4D12: $00
    nop                                           ; $4D13: $00
    jr jr_00D_4D16                                ; $4D14: $18 $00

jr_00D_4D16:
    ld a, h                                       ; $4D16: $7C

jr_00D_4D17:
    jr jr_00D_4D17                                ; $4D17: $18 $FE

    ld a, h                                       ; $4D19: $7C
    rst $38                                       ; $4D1A: $FF
    ld c, $0F                                     ; $4D1B: $0E $0F
    or $F7                                        ; $4D1D: $F6 $F7
    ld a, [bc]                                    ; $4D1F: $0A
    ld a, [$FCF4]                                 ; $4D20: $FA $F4 $FC
    ld hl, sp-$04                                 ; $4D23: $F8 $FC
    ldh a, [$F0]                                  ; $4D25: $F0 $F0
    ldh [$E0], a                                  ; $4D27: $E0 $E0
    ret nz                                        ; $4D29: $C0

    ret nz                                        ; $4D2A: $C0

    nop                                           ; $4D2B: $00
    nop                                           ; $4D2C: $00
    nop                                           ; $4D2D: $00
    nop                                           ; $4D2E: $00
    nop                                           ; $4D2F: $00
    nop                                           ; $4D30: $00
    nop                                           ; $4D31: $00
    nop                                           ; $4D32: $00
    nop                                           ; $4D33: $00
    nop                                           ; $4D34: $00
    nop                                           ; $4D35: $00
    nop                                           ; $4D36: $00
    ld b, b                                       ; $4D37: $40
    ld b, b                                       ; $4D38: $40
    ld h, b                                       ; $4D39: $60
    ld l, b                                       ; $4D3A: $68
    jr nc, jr_00D_4D71                            ; $4D3B: $30 $34

    jr jr_00D_4D59                                ; $4D3D: $18 $1A

    inc c                                         ; $4D3F: $0C
    dec c                                         ; $4D40: $0D
    ld b, $06                                     ; $4D41: $06 $06
    inc bc                                        ; $4D43: $03
    inc bc                                        ; $4D44: $03
    ld bc, $0001                                  ; $4D45: $01 $01 $00
    ld [bc], a                                    ; $4D48: $02
    ld bc, $0103                                  ; $4D49: $01 $03 $01
    ld bc, $0000                                  ; $4D4C: $01 $00 $00
    nop                                           ; $4D4F: $00
    jr nz, jr_00D_4D52                            ; $4D50: $20 $00

jr_00D_4D52:
    ret nc                                        ; $4D52: $D0

    jr nz, jr_00D_4D85                            ; $4D53: $20 $30

    ldh [$60], a                                  ; $4D55: $E0 $60
    add b                                         ; $4D57: $80
    ld h, b                                       ; $4D58: $60

jr_00D_4D59:
    add b                                         ; $4D59: $80
    db $10                                        ; $4D5A: $10
    ldh [$90], a                                  ; $4D5B: $E0 $90
    ldh [$E0], a                                  ; $4D5D: $E0 $E0
    nop                                           ; $4D5F: $00
    nop                                           ; $4D60: $00
    nop                                           ; $4D61: $00
    rlca                                          ; $4D62: $07
    nop                                           ; $4D63: $00
    inc c                                         ; $4D64: $0C
    inc bc                                        ; $4D65: $03
    rla                                           ; $4D66: $17
    dec bc                                        ; $4D67: $0B
    ccf                                           ; $4D68: $3F
    dec de                                        ; $4D69: $1B
    ld a, a                                       ; $4D6A: $7F
    inc h                                         ; $4D6B: $24
    ld h, [hl]                                    ; $4D6C: $66
    dec sp                                        ; $4D6D: $3B
    ld a, a                                       ; $4D6E: $7F
    dec sp                                        ; $4D6F: $3B
    nop                                           ; $4D70: $00

jr_00D_4D71:
    nop                                           ; $4D71: $00
    ldh [rP1], a                                  ; $4D72: $E0 $00
    jr nc, @-$1E                                  ; $4D74: $30 $E0

    adc b                                         ; $4D76: $88
    ldh a, [$CC]                                  ; $4D77: $F0 $CC
    ld hl, sp+$3E                                 ; $4D79: $F8 $3E
    db $F4                                        ; $4D7B: $F4
    ld [bc], a                                    ; $4D7C: $02
    db $FC                                        ; $4D7D: $FC
    sbc d                                         ; $4D7E: $9A
    db $FC                                        ; $4D7F: $FC
    ld a, a                                       ; $4D80: $7F
    ccf                                           ; $4D81: $3F
    ld a, a                                       ; $4D82: $7F
    dec sp                                        ; $4D83: $3B
    ld a, a                                       ; $4D84: $7F

jr_00D_4D85:
    inc b                                         ; $4D85: $04
    ccf                                           ; $4D86: $3F
    dec de                                        ; $4D87: $1B
    rra                                           ; $4D88: $1F
    dec bc                                        ; $4D89: $0B
    rrca                                          ; $4D8A: $0F
    inc bc                                        ; $4D8B: $03
    rlca                                          ; $4D8C: $07
    nop                                           ; $4D8D: $00
    nop                                           ; $4D8E: $00
    nop                                           ; $4D8F: $00
    cp $DC                                        ; $4D90: $FE $DC
    cp $DC                                        ; $4D92: $FE $DC
    ld a, [hl]                                    ; $4D94: $7E
    xor b                                         ; $4D95: $A8

jr_00D_4D96:
    db $F4                                        ; $4D96: $F4
    ret c                                         ; $4D97: $D8

    ld hl, sp-$30                                 ; $4D98: $F8 $D0
    ldh a, [$C0]                                  ; $4D9A: $F0 $C0
    ldh [rP1], a                                  ; $4D9C: $E0 $00
    nop                                           ; $4D9E: $00
    nop                                           ; $4D9F: $00
    nop                                           ; $4DA0: $00
    nop                                           ; $4DA1: $00
    rlca                                          ; $4DA2: $07
    nop                                           ; $4DA3: $00
    inc c                                         ; $4DA4: $0C
    inc bc                                        ; $4DA5: $03
    rla                                           ; $4DA6: $17
    dec bc                                        ; $4DA7: $0B
    scf                                           ; $4DA8: $37
    dec de                                        ; $4DA9: $1B
    ld a, a                                       ; $4DAA: $7F
    inc h                                         ; $4DAB: $24
    ld h, h                                       ; $4DAC: $64
    dec sp                                        ; $4DAD: $3B
    ld a, a                                       ; $4DAE: $7F
    dec sp                                        ; $4DAF: $3B
    nop                                           ; $4DB0: $00
    nop                                           ; $4DB1: $00
    ldh [rP1], a                                  ; $4DB2: $E0 $00
    jr nc, jr_00D_4D96                            ; $4DB4: $30 $E0

    ld [$8CF0], sp                                ; $4DB6: $08 $F0 $8C
    ld hl, sp+$2E                                 ; $4DB9: $F8 $2E
    db $F4                                        ; $4DBB: $F4
    ld [bc], a                                    ; $4DBC: $02
    db $FC                                        ; $4DBD: $FC
    ld [de], a                                    ; $4DBE: $12
    db $FC                                        ; $4DBF: $FC
    ld a, a                                       ; $4DC0: $7F
    ccf                                           ; $4DC1: $3F
    ld a, a                                       ; $4DC2: $7F
    dec sp                                        ; $4DC3: $3B
    ld a, a                                       ; $4DC4: $7F
    inc b                                         ; $4DC5: $04
    ccf                                           ; $4DC6: $3F
    dec de                                        ; $4DC7: $1B
    rra                                           ; $4DC8: $1F
    dec bc                                        ; $4DC9: $0B
    rrca                                          ; $4DCA: $0F
    inc bc                                        ; $4DCB: $03
    rlca                                          ; $4DCC: $07
    nop                                           ; $4DCD: $00
    nop                                           ; $4DCE: $00
    nop                                           ; $4DCF: $00
    cp d                                          ; $4DD0: $BA
    call c, $DCFE                                 ; $4DD1: $DC $FE $DC
    ld a, [hl]                                    ; $4DD4: $7E
    xor b                                         ; $4DD5: $A8
    db $F4                                        ; $4DD6: $F4
    ret c                                         ; $4DD7: $D8

    ld hl, sp-$30                                 ; $4DD8: $F8 $D0
    ldh a, [$C0]                                  ; $4DDA: $F0 $C0
    ldh [rP1], a                                  ; $4DDC: $E0 $00
    nop                                           ; $4DDE: $00
    nop                                           ; $4DDF: $00
    nop                                           ; $4DE0: $00
    nop                                           ; $4DE1: $00
    ld bc, $0100                                  ; $4DE2: $01 $00 $01
    nop                                           ; $4DE5: $00
    inc bc                                        ; $4DE6: $03
    ld bc, $0103                                  ; $4DE7: $01 $03 $01
    rlca                                          ; $4DEA: $07
    inc bc                                        ; $4DEB: $03
    ld b, $03                                     ; $4DEC: $06 $03
    ld c, $05                                     ; $4DEE: $0E $05
    add b                                         ; $4DF0: $80
    nop                                           ; $4DF1: $00
    ret nz                                        ; $4DF2: $C0

    add b                                         ; $4DF3: $80
    ret nz                                        ; $4DF4: $C0

    add b                                         ; $4DF5: $80
    and b                                         ; $4DF6: $A0
    ret nz                                        ; $4DF7: $C0

    jr nz, @-$3E                                  ; $4DF8: $20 $C0

    db $10                                        ; $4DFA: $10
    ldh [rNR10], a                                ; $4DFB: $E0 $10
    ldh [$28], a                                  ; $4DFD: $E0 $28
    ret nc                                        ; $4DFF: $D0

    rrca                                          ; $4E00: $0F
    ld b, $07                                     ; $4E01: $06 $07
    inc bc                                        ; $4E03: $03
    rlca                                          ; $4E04: $07
    inc bc                                        ; $4E05: $03
    inc bc                                        ; $4E06: $03
    ld bc, $0103                                  ; $4E07: $01 $03 $01
    ld bc, $0100                                  ; $4E0A: $01 $00 $01
    nop                                           ; $4E0D: $00
    nop                                           ; $4E0E: $00
    nop                                           ; $4E0F: $00
    ld c, b                                       ; $4E10: $48
    or b                                          ; $4E11: $B0
    or b                                          ; $4E12: $B0
    ld b, b                                       ; $4E13: $40
    or b                                          ; $4E14: $B0
    ld h, b                                       ; $4E15: $60
    ldh [rLCDC], a                                ; $4E16: $E0 $40
    ldh [rLCDC], a                                ; $4E18: $E0 $40
    ret nz                                        ; $4E1A: $C0

    add b                                         ; $4E1B: $80
    ret nz                                        ; $4E1C: $C0

    add b                                         ; $4E1D: $80
    add b                                         ; $4E1E: $80
    nop                                           ; $4E1F: $00
    nop                                           ; $4E20: $00
    nop                                           ; $4E21: $00
    ld bc, $0100                                  ; $4E22: $01 $00 $01
    nop                                           ; $4E25: $00
    ld [bc], a                                    ; $4E26: $02
    ld bc, $0102                                  ; $4E27: $01 $02 $01
    inc b                                         ; $4E2A: $04
    inc bc                                        ; $4E2B: $03
    dec b                                         ; $4E2C: $05
    inc bc                                        ; $4E2D: $03
    rrca                                          ; $4E2E: $0F
    dec b                                         ; $4E2F: $05
    add b                                         ; $4E30: $80
    nop                                           ; $4E31: $00
    ld b, b                                       ; $4E32: $40
    add b                                         ; $4E33: $80
    ld b, b                                       ; $4E34: $40
    add b                                         ; $4E35: $80
    ld h, b                                       ; $4E36: $60
    ret nz                                        ; $4E37: $C0

    ldh [$C0], a                                  ; $4E38: $E0 $C0
    ret nc                                        ; $4E3A: $D0

    ldh [$90], a                                  ; $4E3B: $E0 $90
    ldh [$A8], a                                  ; $4E3D: $E0 $A8
    ret nc                                        ; $4E3F: $D0

    add sp, -$50                                  ; $4E40: $E8 $B0
    ldh a, [rLCDC]                                ; $4E42: $F0 $40
    or b                                          ; $4E44: $B0
    ld h, b                                       ; $4E45: $60
    and b                                         ; $4E46: $A0
    ld b, b                                       ; $4E47: $40
    and b                                         ; $4E48: $A0
    ld b, b                                       ; $4E49: $40
    ret nz                                        ; $4E4A: $C0

    add b                                         ; $4E4B: $80
    ret nz                                        ; $4E4C: $C0

    add b                                         ; $4E4D: $80
    add b                                         ; $4E4E: $80
    nop                                           ; $4E4F: $00
    nop                                           ; $4E50: $00
    nop                                           ; $4E51: $00
    ld bc, $0100                                  ; $4E52: $01 $00 $01
    nop                                           ; $4E55: $00
    ld [bc], a                                    ; $4E56: $02
    ld bc, $0102                                  ; $4E57: $01 $02 $01
    inc b                                         ; $4E5A: $04
    inc bc                                        ; $4E5B: $03
    inc b                                         ; $4E5C: $04
    inc bc                                        ; $4E5D: $03
    ld c, $05                                     ; $4E5E: $0E $05
    add b                                         ; $4E60: $80
    nop                                           ; $4E61: $00
    ld b, b                                       ; $4E62: $40
    add b                                         ; $4E63: $80
    ld b, b                                       ; $4E64: $40
    add b                                         ; $4E65: $80
    jr nz, @-$3E                                  ; $4E66: $20 $C0

    ld h, b                                       ; $4E68: $60
    ret nz                                        ; $4E69: $C0

    ld [hl], b                                    ; $4E6A: $70
    ldh [rSVBK], a                                ; $4E6B: $E0 $70
    ldh [$F8], a                                  ; $4E6D: $E0 $F8
    ret nc                                        ; $4E6F: $D0

jr_00D_4E70:
    ld hl, sp-$50                                 ; $4E70: $F8 $B0
    ldh a, [rLCDC]                                ; $4E72: $F0 $40
    sub b                                         ; $4E74: $90
    ld h, b                                       ; $4E75: $60
    and b                                         ; $4E76: $A0
    ld b, b                                       ; $4E77: $40
    and b                                         ; $4E78: $A0
    ld b, b                                       ; $4E79: $40
    ret nz                                        ; $4E7A: $C0

    add b                                         ; $4E7B: $80
    ret nz                                        ; $4E7C: $C0

    add b                                         ; $4E7D: $80
    add b                                         ; $4E7E: $80
    nop                                           ; $4E7F: $00
    nop                                           ; $4E80: $00
    nop                                           ; $4E81: $00
    nop                                           ; $4E82: $00
    nop                                           ; $4E83: $00
    nop                                           ; $4E84: $00
    nop                                           ; $4E85: $00
    nop                                           ; $4E86: $00
    nop                                           ; $4E87: $00
    nop                                           ; $4E88: $00
    ld bc, $0400                                  ; $4E89: $01 $00 $04
    rrca                                          ; $4E8C: $0F
    rrca                                          ; $4E8D: $0F
    add hl, bc                                    ; $4E8E: $09
    dec bc                                        ; $4E8F: $0B
    rlca                                          ; $4E90: $07
    rlca                                          ; $4E91: $07
    rlca                                          ; $4E92: $07
    rlca                                          ; $4E93: $07
    rrca                                          ; $4E94: $0F
    rrca                                          ; $4E95: $0F
    ld a, [$BAFE]                                 ; $4E96: $FA $FE $BA
    cp a                                          ; $4E99: $BF
    ld a, [$ECFF]                                 ; $4E9A: $FA $FF $EC
    rst $28                                       ; $4E9D: $EF
    sbc b                                         ; $4E9E: $98
    cp $0D                                        ; $4E9F: $FE $0D
    rrca                                          ; $4EA1: $0F
    add hl, bc                                    ; $4EA2: $09
    dec bc                                        ; $4EA3: $0B
    rra                                           ; $4EA4: $1F
    rra                                           ; $4EA5: $1F
    rra                                           ; $4EA6: $1F
    rra                                           ; $4EA7: $1F
    dec e                                         ; $4EA8: $1D
    rra                                           ; $4EA9: $1F
    dec l                                         ; $4EAA: $2D
    cpl                                           ; $4EAB: $2F
    add hl, sp                                    ; $4EAC: $39
    ccf                                           ; $4EAD: $3F
    ld a, $3F                                     ; $4EAE: $3E $3F
    inc de                                        ; $4EB0: $13
    rla                                           ; $4EB1: $17
    ld a, [de]                                    ; $4EB2: $1A
    dec de                                        ; $4EB3: $1B
    rra                                           ; $4EB4: $1F
    rra                                           ; $4EB5: $1F
    ld a, [hl-]                                   ; $4EB6: $3A
    dec sp                                        ; $4EB7: $3B
    ld a, $3F                                     ; $4EB8: $3E $3F
    ld d, d                                       ; $4EBA: $52
    ld d, a                                       ; $4EBB: $57
    ld b, b                                       ; $4EBC: $40
    ld b, e                                       ; $4EBD: $43
    ld e, d                                       ; $4EBE: $5A
    ld e, d                                       ; $4EBF: $5A
    ld h, [hl]                                    ; $4EC0: $66
    ld h, [hl]                                    ; $4EC1: $66
    rla                                           ; $4EC2: $17
    rla                                           ; $4EC3: $17
    inc bc                                        ; $4EC4: $03
    inc bc                                        ; $4EC5: $03
    nop                                           ; $4EC6: $00
    nop                                           ; $4EC7: $00
    nop                                           ; $4EC8: $00
    nop                                           ; $4EC9: $00
    nop                                           ; $4ECA: $00
    nop                                           ; $4ECB: $00
    nop                                           ; $4ECC: $00
    nop                                           ; $4ECD: $00
    nop                                           ; $4ECE: $00
    nop                                           ; $4ECF: $00
    jr jr_00D_4E70                                ; $4ED0: $18 $9E

    ret nz                                        ; $4ED2: $C0

jr_00D_4ED3:
    di                                            ; $4ED3: $F3
    or [hl]                                       ; $4ED4: $B6
    cp a                                          ; $4ED5: $BF
    ld a, [c]                                     ; $4ED6: $F2
    or $30                                        ; $4ED7: $F6 $30
    scf                                           ; $4ED9: $37
    ld c, $0E                                     ; $4EDA: $0E $0E
    dec b                                         ; $4EDC: $05
    dec b                                         ; $4EDD: $05
    ld b, $06                                     ; $4EDE: $06 $06
    add sp, -$04                                  ; $4EE0: $E8 $FC
    and c                                         ; $4EE2: $A1
    xor h                                         ; $4EE3: $AC
    pop af                                        ; $4EE4: $F1
    ld hl, sp-$3D                                 ; $4EE5: $F8 $C3
    ld sp, hl                                     ; $4EE7: $F9
    inc hl                                        ; $4EE8: $23
    pop af                                        ; $4EE9: $F1
    rst $00                                       ; $4EEA: $C7
    di                                            ; $4EEB: $F3
    add $E3                                       ; $4EEC: $C6 $E3
    adc [hl]                                      ; $4EEE: $8E
    push hl                                       ; $4EEF: $E5
    adc e                                         ; $4EF0: $8B
    dec de                                        ; $4EF1: $1B
    rst $00                                       ; $4EF2: $C7
    sbc a                                         ; $4EF3: $9F
    jp $A28B                                      ; $4EF4: $C3 $8B $A2


    rst $08                                       ; $4EF7: $CF
    inc hl                                        ; $4EF8: $23
    rst $00                                       ; $4EF9: $C7
    ld de, $11E7                                  ; $4EFA: $11 $E7 $11
    db $E3                                        ; $4EFD: $E3
    jr z, jr_00D_4ED3                             ; $4EFE: $28 $D3

    ld c, a                                       ; $4F00: $4F
    ld h, [hl]                                    ; $4F01: $66
    rst $00                                       ; $4F02: $C7
    db $E3                                        ; $4F03: $E3
    add a                                         ; $4F04: $87
    or e                                          ; $4F05: $B3
    db $E3                                        ; $4F06: $E3
    pop af                                        ; $4F07: $F1
    jp $F1F9                                      ; $4F08: $C3 $F9 $F1


    ld hl, sp-$1F                                 ; $4F0B: $F8 $E1
    db $EC                                        ; $4F0D: $EC
    cp b                                          ; $4F0E: $B8
    cp h                                          ; $4F0F: $BC
    ld c, b                                       ; $4F10: $48
    or e                                          ; $4F11: $B3
    or c                                          ; $4F12: $B1
    ld b, e                                       ; $4F13: $43
    or b                                          ; $4F14: $B0
    ld h, a                                       ; $4F15: $67
    db $E3                                        ; $4F16: $E3
    ld b, a                                       ; $4F17: $47
    pop hl                                        ; $4F18: $E1
    ld c, l                                       ; $4F19: $4D
    rst $00                                       ; $4F1A: $C7
    adc a                                         ; $4F1B: $8F
    add $9E                                       ; $4F1C: $C6 $9E
    adc e                                         ; $4F1E: $8B
    rra                                           ; $4F1F: $1F
    ldh a, [$F4]                                  ; $4F20: $F0 $F4
    pop af                                        ; $4F22: $F1
    db $FC                                        ; $4F23: $FC
    pop de                                        ; $4F24: $D1
    ret c                                         ; $4F25: $D8

    jp nz, $82F9                                  ; $4F26: $C2 $F9 $82

    or c                                          ; $4F29: $B1
    call nz, $85F3                                ; $4F2A: $C4 $F3 $85
    db $E3                                        ; $4F2D: $E3
    adc a                                         ; $4F2E: $8F
    and l                                         ; $4F2F: $A5
    add a                                         ; $4F30: $87
    rla                                           ; $4F31: $17
    ld b, a                                       ; $4F32: $47
    sbc a                                         ; $4F33: $9F
    ld b, l                                       ; $4F34: $45
    adc a                                         ; $4F35: $8F
    ld h, e                                       ; $4F36: $63
    rst $08                                       ; $4F37: $CF
    pop hl                                        ; $4F38: $E1
    push bc                                       ; $4F39: $C5
    pop de                                        ; $4F3A: $D1
    rst $20                                       ; $4F3B: $E7
    sub c                                         ; $4F3C: $91
    db $E3                                        ; $4F3D: $E3
    xor c                                         ; $4F3E: $A9
    db $D3                                        ; $4F3F: $D3
    jp hl                                         ; $4F40: $E9


    or e                                          ; $4F41: $B3
    ldh a, [rSCY]                                 ; $4F42: $F0 $42
    or c                                          ; $4F44: $B1
    ld h, a                                       ; $4F45: $67
    and e                                         ; $4F46: $A3
    ld b, a                                       ; $4F47: $47
    and c                                         ; $4F48: $A1
    ld c, l                                       ; $4F49: $4D
    push bc                                       ; $4F4A: $C5
    adc a                                         ; $4F4B: $8F
    jp $8F9B                                      ; $4F4C: $C3 $9B $8F


    rra                                           ; $4F4F: $1F
    ld l, b                                       ; $4F50: $68
    ld a, h                                       ; $4F51: $7C
    pop af                                        ; $4F52: $F1
    db $FC                                        ; $4F53: $FC
    and c                                         ; $4F54: $A1
    xor b                                         ; $4F55: $A8
    ld [c], a                                     ; $4F56: $E2
    ld sp, hl                                     ; $4F57: $F9
    ld [bc], a                                    ; $4F58: $02
    or c                                          ; $4F59: $B1
    call nz, $44F3                                ; $4F5A: $C4 $F3 $44
    db $E3                                        ; $4F5D: $E3
    adc $E5                                       ; $4F5E: $CE $E5
    add a                                         ; $4F60: $87
    rra                                           ; $4F61: $1F
    ld b, l                                       ; $4F62: $45
    sbc l                                         ; $4F63: $9D
    ld b, e                                       ; $4F64: $43
    adc a                                         ; $4F65: $8F
    inc hl                                        ; $4F66: $23
    rst $08                                       ; $4F67: $CF
    ld h, c                                       ; $4F68: $61
    push bc                                       ; $4F69: $C5
    ld [hl], e                                    ; $4F6A: $73
    rst $20                                       ; $4F6B: $E7
    ld [hl], b                                    ; $4F6C: $70
    db $E3                                        ; $4F6D: $E3
    ld hl, sp-$2D                                 ; $4F6E: $F8 $D3
    ld hl, sp-$4D                                 ; $4F70: $F8 $B3
    ldh a, [rSCX]                                 ; $4F72: $F0 $43
    sub b                                         ; $4F74: $90
    ld h, a                                       ; $4F75: $67
    and e                                         ; $4F76: $A3
    ld b, a                                       ; $4F77: $47
    and c                                         ; $4F78: $A1
    ld c, l                                       ; $4F79: $4D
    jp $C78B                                      ; $4F7A: $C3 $8B $C7


    sbc a                                         ; $4F7D: $9F
    adc a                                         ; $4F7E: $8F
    rra                                           ; $4F7F: $1F
    ld bc, $0501                                  ; $4F80: $01 $01 $05
    dec b                                         ; $4F83: $05
    inc bc                                        ; $4F84: $03
    inc bc                                        ; $4F85: $03
    inc bc                                        ; $4F86: $03
    inc bc                                        ; $4F87: $03
    ld bc, $0301                                  ; $4F88: $01 $01 $03
    inc bc                                        ; $4F8B: $03
    ld bc, $0001                                  ; $4F8C: $01 $01 $00
    nop                                           ; $4F8F: $00
    nop                                           ; $4F90: $00
    nop                                           ; $4F91: $00
    ld bc, $0301                                  ; $4F92: $01 $01 $03
    inc bc                                        ; $4F95: $03
    inc bc                                        ; $4F96: $03
    inc bc                                        ; $4F97: $03
    ld bc, $0501                                  ; $4F98: $01 $01 $05
    dec b                                         ; $4F9B: $05
    nop                                           ; $4F9C: $00
    nop                                           ; $4F9D: $00
    ld [bc], a                                    ; $4F9E: $02
    ld [bc], a                                    ; $4F9F: $02
    nop                                           ; $4FA0: $00
    nop                                           ; $4FA1: $00
    ld bc, $0501                                  ; $4FA2: $01 $01 $05
    dec b                                         ; $4FA5: $05
    inc bc                                        ; $4FA6: $03
    inc bc                                        ; $4FA7: $03
    rlca                                          ; $4FA8: $07
    rlca                                          ; $4FA9: $07
    rlca                                          ; $4FAA: $07
    rlca                                          ; $4FAB: $07
    inc bc                                        ; $4FAC: $03
    inc bc                                        ; $4FAD: $03
    inc bc                                        ; $4FAE: $03
    inc bc                                        ; $4FAF: $03
    nop                                           ; $4FB0: $00
    nop                                           ; $4FB1: $00
    nop                                           ; $4FB2: $00
    nop                                           ; $4FB3: $00
    nop                                           ; $4FB4: $00
    nop                                           ; $4FB5: $00
    nop                                           ; $4FB6: $00
    nop                                           ; $4FB7: $00
    nop                                           ; $4FB8: $00
    nop                                           ; $4FB9: $00
    ret z                                         ; $4FBA: $C8

    ret z                                         ; $4FBB: $C8

    inc e                                         ; $4FBC: $1C
    db $FC                                        ; $4FBD: $FC
    ld a, [bc]                                    ; $4FBE: $0A
    ld a, $00                                     ; $4FBF: $3E $00
    nop                                           ; $4FC1: $00
    nop                                           ; $4FC2: $00
    nop                                           ; $4FC3: $00
    nop                                           ; $4FC4: $00
    nop                                           ; $4FC5: $00
    nop                                           ; $4FC6: $00
    nop                                           ; $4FC7: $00
    nop                                           ; $4FC8: $00
    nop                                           ; $4FC9: $00
    nop                                           ; $4FCA: $00
    nop                                           ; $4FCB: $00
    ld [$06E8], sp                                ; $4FCC: $08 $E8 $06
    ld [hl], $00                                  ; $4FCF: $36 $00
    nop                                           ; $4FD1: $00
    nop                                           ; $4FD2: $00
    nop                                           ; $4FD3: $00
    nop                                           ; $4FD4: $00
    nop                                           ; $4FD5: $00
    inc b                                         ; $4FD6: $04
    inc b                                         ; $4FD7: $04
    ld bc, $1301                                  ; $4FD8: $01 $01 $13
    inc de                                        ; $4FDB: $13
    ld c, [hl]                                    ; $4FDC: $4E
    ld c, a                                       ; $4FDD: $4F
    jr c, jr_00D_501E                             ; $4FDE: $38 $3E

    nop                                           ; $4FE0: $00
    nop                                           ; $4FE1: $00
    inc bc                                        ; $4FE2: $03
    nop                                           ; $4FE3: $00
    rlca                                          ; $4FE4: $07
    inc bc                                        ; $4FE5: $03
    rrca                                          ; $4FE6: $0F
    rlca                                          ; $4FE7: $07
    dec e                                         ; $4FE8: $1D
    ld c, $36                                     ; $4FE9: $0E $36
    jr jr_00D_5065                                ; $4FEB: $18 $78

    jr nz, jr_00D_500F                            ; $4FED: $20 $20

    nop                                           ; $4FEF: $00
    ldh [rP1], a                                  ; $4FF0: $E0 $00
    ld hl, sp-$20                                 ; $4FF2: $F8 $E0
    db $FC                                        ; $4FF4: $FC
    cp b                                          ; $4FF5: $B8
    rst $38                                       ; $4FF6: $FF
    db $FC                                        ; $4FF7: $FC
    cp a                                          ; $4FF8: $BF
    ld a, a                                       ; $4FF9: $7F
    ld h, a                                       ; $4FFA: $67
    dec e                                         ; $4FFB: $1D
    inc e                                         ; $4FFC: $1C
    inc bc                                        ; $4FFD: $03
    inc bc                                        ; $4FFE: $03
    nop                                           ; $4FFF: $00
    inc e                                         ; $5000: $1C
    nop                                           ; $5001: $00
    ld a, [hl]                                    ; $5002: $7E
    inc e                                         ; $5003: $1C
    rst $38                                       ; $5004: $FF
    ld a, [hl]                                    ; $5005: $7E
    rst $30                                       ; $5006: $F7
    xor $FF                                       ; $5007: $EE $FF
    ld a, [$F806]                                 ; $5009: $FA $06 $F8
    jr c, @-$3E                                   ; $500C: $38 $C0

    ret nz                                        ; $500E: $C0

jr_00D_500F:
    nop                                           ; $500F: $00
    nop                                           ; $5010: $00
    nop                                           ; $5011: $00
    ld a, b                                       ; $5012: $78
    nop                                           ; $5013: $00
    db $FC                                        ; $5014: $FC
    ld a, b                                       ; $5015: $78
    ld l, a                                       ; $5016: $6F
    inc e                                         ; $5017: $1C
    rla                                           ; $5018: $17
    rrca                                          ; $5019: $0F
    ld c, $03                                     ; $501A: $0E $03
    inc bc                                        ; $501C: $03
    nop                                           ; $501D: $00

jr_00D_501E:
    nop                                           ; $501E: $00
    nop                                           ; $501F: $00
    inc bc                                        ; $5020: $03
    nop                                           ; $5021: $00
    rra                                           ; $5022: $1F
    inc bc                                        ; $5023: $03
    rst $38                                       ; $5024: $FF
    rra                                           ; $5025: $1F
    ld hl, sp-$11                                 ; $5026: $F8 $EF
    sbc a                                         ; $5028: $9F
    ldh [$60], a                                  ; $5029: $E0 $60
    add b                                         ; $502B: $80
    add b                                         ; $502C: $80
    nop                                           ; $502D: $00
    nop                                           ; $502E: $00
    nop                                           ; $502F: $00
    ldh a, [rP1]                                  ; $5030: $F0 $00
    ld hl, sp-$10                                 ; $5032: $F8 $F0
    db $FC                                        ; $5034: $FC
    ret c                                         ; $5035: $D8

    cp $FC                                        ; $5036: $FE $FC
    ld l, $FC                                     ; $5038: $2E $FC
    call c, $3838                                 ; $503A: $DC $38 $38
    nop                                           ; $503D: $00
    nop                                           ; $503E: $00
    nop                                           ; $503F: $00
    ld b, b                                       ; $5040: $40
    nop                                           ; $5041: $00
    ldh a, [rLCDC]                                ; $5042: $F0 $40
    ld e, b                                       ; $5044: $58
    jr nc, jr_00D_5086                            ; $5045: $30 $3F

    jr jr_00D_5078                                ; $5047: $18 $2F

    rla                                           ; $5049: $17
    inc e                                         ; $504A: $1C
    rrca                                          ; $504B: $0F
    rrca                                          ; $504C: $0F
    nop                                           ; $504D: $00
    nop                                           ; $504E: $00
    nop                                           ; $504F: $00
    rra                                           ; $5050: $1F
    ld c, $1B                                     ; $5051: $0E $1B
    ld c, $1D                                     ; $5053: $0E $1D
    ld c, $ED                                     ; $5055: $0E $ED
    ld e, $FA                                     ; $5057: $1E $FA
    db $FC                                        ; $5059: $FC
    add h                                         ; $505A: $84
    ld a, b                                       ; $505B: $78
    ld hl, sp+$00                                 ; $505C: $F8 $00
    nop                                           ; $505E: $00
    nop                                           ; $505F: $00
    jr c, jr_00D_5062                             ; $5060: $38 $00

jr_00D_5062:
    ld a, h                                       ; $5062: $7C

jr_00D_5063:
    jr c, jr_00D_5063                             ; $5063: $38 $FE

jr_00D_5065:
    ld a, h                                       ; $5065: $7C
    cp $5C                                        ; $5066: $FE $5C
    cp $7C                                        ; $5068: $FE $7C
    ld a, [hl]                                    ; $506A: $7E
    inc [hl]                                      ; $506B: $34
    ld e, a                                       ; $506C: $5F
    ld a, $2F                                     ; $506D: $3E $2F
    ld e, $00                                     ; $506F: $1E $00
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    nop                                           ; $5073: $00
    nop                                           ; $5074: $00
    nop                                           ; $5075: $00
    nop                                           ; $5076: $00
    nop                                           ; $5077: $00

jr_00D_5078:
    ld bc, $0F00                                  ; $5078: $01 $00 $0F
    ld bc, $0F1F                                  ; $507B: $01 $1F $0F
    rrca                                          ; $507E: $0F
    rlca                                          ; $507F: $07
    nop                                           ; $5080: $00
    nop                                           ; $5081: $00
    nop                                           ; $5082: $00
    nop                                           ; $5083: $00
    nop                                           ; $5084: $00
    nop                                           ; $5085: $00

jr_00D_5086:
    nop                                           ; $5086: $00
    nop                                           ; $5087: $00
    ld hl, sp+$00                                 ; $5088: $F8 $00
    db $FC                                        ; $508A: $FC
    ld hl, sp-$02                                 ; $508B: $F8 $FE
    db $FC                                        ; $508D: $FC
    cp $FC                                        ; $508E: $FE $FC
    rrca                                          ; $5090: $0F
    rlca                                          ; $5091: $07
    ld c, $01                                     ; $5092: $0E $01
    dec e                                         ; $5094: $1D
    ld a, [bc]                                    ; $5095: $0A
    rra                                           ; $5096: $1F
    add hl, bc                                    ; $5097: $09
    rrca                                          ; $5098: $0F
    inc b                                         ; $5099: $04
    rra                                           ; $509A: $1F
    ld c, $1F                                     ; $509B: $0E $1F
    dec c                                         ; $509D: $0D
    rra                                           ; $509E: $1F
    inc bc                                        ; $509F: $03
    ld [hl], $F8                                  ; $50A0: $36 $F8
    call z, $CCF8                                 ; $50A2: $CC $F8 $CC
    jr nc, jr_00D_50AB                            ; $50A5: $30 $04

    ld hl, sp-$44                                 ; $50A7: $F8 $BC
    ld hl, sp-$02                                 ; $50A9: $F8 $FE

jr_00D_50AB:
    ld [hl], b                                    ; $50AB: $70
    cp $88                                        ; $50AC: $FE $88
    cp $C4                                        ; $50AE: $FE $C4
    nop                                           ; $50B0: $00
    nop                                           ; $50B1: $00
    nop                                           ; $50B2: $00
    nop                                           ; $50B3: $00
    nop                                           ; $50B4: $00
    nop                                           ; $50B5: $00
    inc c                                         ; $50B6: $0C
    inc bc                                        ; $50B7: $03
    ld e, $09                                     ; $50B8: $1E $09
    ld a, $19                                     ; $50BA: $3E $19
    ccf                                           ; $50BC: $3F
    inc e                                         ; $50BD: $1C
    dec e                                         ; $50BE: $1D
    nop                                           ; $50BF: $00
    inc de                                        ; $50C0: $13
    dec c                                         ; $50C1: $0D
    inc de                                        ; $50C2: $13
    inc c                                         ; $50C3: $0C
    rrca                                          ; $50C4: $0F
    nop                                           ; $50C5: $00
    nop                                           ; $50C6: $00
    nop                                           ; $50C7: $00
    nop                                           ; $50C8: $00
    nop                                           ; $50C9: $00
    nop                                           ; $50CA: $00
    nop                                           ; $50CB: $00
    nop                                           ; $50CC: $00
    nop                                           ; $50CD: $00
    nop                                           ; $50CE: $00
    nop                                           ; $50CF: $00
    cp $94                                        ; $50D0: $FE $94
    ld a, [$FCD4]                                 ; $50D2: $FA $D4 $FC
    nop                                           ; $50D5: $00
    ld hl, sp-$10                                 ; $50D6: $F8 $F0
    db $FC                                        ; $50D8: $FC
    ret c                                         ; $50D9: $D8

    db $FC                                        ; $50DA: $FC
    ret c                                         ; $50DB: $D8

    db $FC                                        ; $50DC: $FC
    ret nz                                        ; $50DD: $C0

    ldh [rP1], a                                  ; $50DE: $E0 $00
    nop                                           ; $50E0: $00
    nop                                           ; $50E1: $00
    nop                                           ; $50E2: $00
    nop                                           ; $50E3: $00
    nop                                           ; $50E4: $00
    nop                                           ; $50E5: $00
    nop                                           ; $50E6: $00
    nop                                           ; $50E7: $00
    ld bc, $0300                                  ; $50E8: $01 $00 $03
    ld bc, $0103                                  ; $50EB: $01 $03 $01
    ld bc, $0000                                  ; $50EE: $01 $00 $00
    nop                                           ; $50F1: $00
    inc c                                         ; $50F2: $0C
    nop                                           ; $50F3: $00
    ccf                                           ; $50F4: $3F
    ld [$01FE], sp                                ; $50F5: $08 $FE $01
    di                                            ; $50F8: $F3
    db $EC                                        ; $50F9: $EC
    ldh [$DF], a                                  ; $50FA: $E0 $DF
    pop hl                                        ; $50FC: $E1
    sbc $F1                                       ; $50FD: $DE $F1
    ld c, $00                                     ; $50FF: $0E $00
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    nop                                           ; $5103: $00
    add c                                         ; $5104: $81
    nop                                           ; $5105: $00
    di                                            ; $5106: $F3
    add c                                         ; $5107: $81
    rst $38                                       ; $5108: $FF
    ld b, e                                       ; $5109: $43
    rst $38                                       ; $510A: $FF
    ld d, $FF                                     ; $510B: $16 $FF
    halt                                          ; $510D: $76
    rst $38                                       ; $510E: $FF
    push af                                       ; $510F: $F5
    nop                                           ; $5110: $00
    nop                                           ; $5111: $00
    nop                                           ; $5112: $00
    nop                                           ; $5113: $00
    ret c                                         ; $5114: $D8

    nop                                           ; $5115: $00
    db $FC                                        ; $5116: $FC
    adc b                                         ; $5117: $88
    db $FC                                        ; $5118: $FC
    cp b                                          ; $5119: $B8
    cp $7C                                        ; $511A: $FE $7C
    cp $FC                                        ; $511C: $FE $FC
    rst $38                                       ; $511E: $FF
    cp $3F                                        ; $511F: $FE $3F
    ld [bc], a                                    ; $5121: $02
    rlca                                          ; $5122: $07
    nop                                           ; $5123: $00
    ld bc, $0100                                  ; $5124: $01 $00 $01
    nop                                           ; $5127: $00
    nop                                           ; $5128: $00
    nop                                           ; $5129: $00
    nop                                           ; $512A: $00
    nop                                           ; $512B: $00
    nop                                           ; $512C: $00
    nop                                           ; $512D: $00
    nop                                           ; $512E: $00
    nop                                           ; $512F: $00
    rst $38                                       ; $5130: $FF
    pop af                                        ; $5131: $F1
    rst $38                                       ; $5132: $FF
    add hl, sp                                    ; $5133: $39
    rst $38                                       ; $5134: $FF
    ld a, h                                       ; $5135: $7C
    cp $05                                        ; $5136: $FE $05
    sbc a                                         ; $5138: $9F
    ld h, b                                       ; $5139: $60
    sub b                                         ; $513A: $90
    ld h, b                                       ; $513B: $60
    ld h, b                                       ; $513C: $60
    nop                                           ; $513D: $00
    nop                                           ; $513E: $00
    nop                                           ; $513F: $00
    rst $38                                       ; $5140: $FF
    cp $FF                                        ; $5141: $FE $FF
    cp $FF                                        ; $5143: $FE $FF
    cp $FF                                        ; $5145: $FE $FF
    ld a, $FE                                     ; $5147: $3E $FE
    nop                                           ; $5149: $00
    nop                                           ; $514A: $00
    nop                                           ; $514B: $00
    nop                                           ; $514C: $00
    nop                                           ; $514D: $00
    nop                                           ; $514E: $00
    nop                                           ; $514F: $00
    rlca                                          ; $5150: $07
    nop                                           ; $5151: $00
    rrca                                          ; $5152: $0F
    rlca                                          ; $5153: $07
    rra                                           ; $5154: $1F
    rrca                                          ; $5155: $0F
    rrca                                          ; $5156: $0F
    rlca                                          ; $5157: $07
    ld b, $03                                     ; $5158: $06 $03
    dec b                                         ; $515A: $05
    inc bc                                        ; $515B: $03
    ld b, $03                                     ; $515C: $06 $03
    ld b, $01                                     ; $515E: $06 $01
    ld hl, sp+$00                                 ; $5160: $F8 $00
    db $FC                                        ; $5162: $FC
    ld hl, sp-$02                                 ; $5163: $F8 $FE
    db $FC                                        ; $5165: $FC

jr_00D_5166:
    cp $FC                                        ; $5166: $FE $FC
    ld h, [hl]                                    ; $5168: $66
    db $FC                                        ; $5169: $FC
    sbc d                                         ; $516A: $9A
    db $FC                                        ; $516B: $FC
    sub [hl]                                      ; $516C: $96
    ld l, h                                       ; $516D: $6C
    ld h, [hl]                                    ; $516E: $66
    ld hl, sp-$01                                 ; $516F: $F8 $FF
    ld a, [hl]                                    ; $5171: $7E
    ld a, [hl]                                    ; $5172: $7E
    jr c, jr_00D_51AD                             ; $5173: $38 $38

    nop                                           ; $5175: $00
    nop                                           ; $5176: $00

jr_00D_5177:
    nop                                           ; $5177: $00
    nop                                           ; $5178: $00
    nop                                           ; $5179: $00
    nop                                           ; $517A: $00
    nop                                           ; $517B: $00
    nop                                           ; $517C: $00
    nop                                           ; $517D: $00
    nop                                           ; $517E: $00
    nop                                           ; $517F: $00
    ret nz                                        ; $5180: $C0

    nop                                           ; $5181: $00
    ldh a, [rP1]                                  ; $5182: $F0 $00
    ret nc                                        ; $5184: $D0

    jr nz, jr_00D_5177                            ; $5185: $20 $F0

    nop                                           ; $5187: $00
    ld hl, sp+$60                                 ; $5188: $F8 $60
    rst $38                                       ; $518A: $FF
    ld [hl], b                                    ; $518B: $70
    ld a, [hl]                                    ; $518C: $7E
    inc [hl]                                      ; $518D: $34
    ld a, h                                       ; $518E: $7C
    nop                                           ; $518F: $00
    rlca                                          ; $5190: $07
    nop                                           ; $5191: $00
    inc bc                                        ; $5192: $03
    nop                                           ; $5193: $00
    ld [bc], a                                    ; $5194: $02
    ld bc, $0003                                  ; $5195: $01 $03 $00
    inc bc                                        ; $5198: $03
    ld bc, $0307                                  ; $5199: $01 $07 $03
    rlca                                          ; $519C: $07
    inc bc                                        ; $519D: $03
    inc bc                                        ; $519E: $03
    nop                                           ; $519F: $00
    ldh [rP1], a                                  ; $51A0: $E0 $00
    jr nz, @-$3E                                  ; $51A2: $20 $C0

    jr nz, jr_00D_5166                            ; $51A4: $20 $C0

    or b                                          ; $51A6: $B0
    ld b, b                                       ; $51A7: $40
    cp $80                                        ; $51A8: $FE $80
    rst $38                                       ; $51AA: $FF
    sbc $FF                                       ; $51AB: $DE $FF

jr_00D_51AD:
    adc [hl]                                      ; $51AD: $8E
    cp $00                                        ; $51AE: $FE $00
    nop                                           ; $51B0: $00
    nop                                           ; $51B1: $00
    db $FC                                        ; $51B2: $FC
    nop                                           ; $51B3: $00
    ld b, h                                       ; $51B4: $44
    jr c, jr_00D_520B                             ; $51B5: $38 $54

    jr z, @+$50                                   ; $51B7: $28 $4E

jr_00D_51B9:
    jr nc, jr_00D_51FA                            ; $51B9: $30 $3F

    inc b                                         ; $51BB: $04
    ccf                                           ; $51BC: $3F
    ld d, $1F                                     ; $51BD: $16 $1F
    nop                                           ; $51BF: $00
    nop                                           ; $51C0: $00
    nop                                           ; $51C1: $00
    ld e, $00                                     ; $51C2: $1E $00
    ld a, $1C                                     ; $51C4: $3E $1C
    ld a, a                                       ; $51C6: $7F
    ld a, $7F                                     ; $51C7: $3E $7F
    ccf                                           ; $51C9: $3F
    rst $38                                       ; $51CA: $FF
    ld a, a                                       ; $51CB: $7F
    cp a                                          ; $51CC: $BF
    ld a, e                                       ; $51CD: $7B
    cp a                                          ; $51CE: $BF
    ld a, c                                       ; $51CF: $79
    inc bc                                        ; $51D0: $03
    nop                                           ; $51D1: $00
    rlca                                          ; $51D2: $07
    nop                                           ; $51D3: $00
    ld b, $03                                     ; $51D4: $06 $03
    rra                                           ; $51D6: $1F
    ld b, $FF                                     ; $51D7: $06 $FF
    inc bc                                        ; $51D9: $03
    rst $38                                       ; $51DA: $FF
    add c                                         ; $51DB: $81
    rst $38                                       ; $51DC: $FF
    db $EC                                        ; $51DD: $EC
    rst $38                                       ; $51DE: $FF
    sbc $80                                       ; $51DF: $DE $80
    nop                                           ; $51E1: $00
    ld a, b                                       ; $51E2: $78
    add b                                         ; $51E3: $80
    ld e, h                                       ; $51E4: $5C
    ldh [$7E], a                                  ; $51E5: $E0 $7E
    xor h                                         ; $51E7: $AC
    ei                                            ; $51E8: $FB
    ld h, $FD                                     ; $51E9: $26 $FD
    ld a, [bc]                                    ; $51EB: $0A
    db $FD                                        ; $51EC: $FD
    sbc [hl]                                      ; $51ED: $9E
    rst $38                                       ; $51EE: $FF
    ld l, $D9                                     ; $51EF: $2E $D9
    halt                                          ; $51F1: $76
    reti                                          ; $51F2: $D9


    halt                                          ; $51F3: $76
    ld l, a                                       ; $51F4: $6F
    jr nc, jr_00D_522F                            ; $51F5: $30 $38

    nop                                           ; $51F7: $00
    nop                                           ; $51F8: $00
    nop                                           ; $51F9: $00

jr_00D_51FA:
    nop                                           ; $51FA: $00
    nop                                           ; $51FB: $00
    nop                                           ; $51FC: $00
    nop                                           ; $51FD: $00
    nop                                           ; $51FE: $00
    nop                                           ; $51FF: $00
    rst $38                                       ; $5200: $FF
    sbc $FF                                       ; $5201: $DE $FF
    ld e, a                                       ; $5203: $5F
    rst $38                                       ; $5204: $FF
    rra                                           ; $5205: $1F
    ld l, $1F                                     ; $5206: $2E $1F
    ld sp, $1F1F                                  ; $5208: $31 $1F $1F

jr_00D_520B:
    ld c, $0E                                     ; $520B: $0E $0E
    nop                                           ; $520D: $00
    nop                                           ; $520E: $00
    nop                                           ; $520F: $00
    rst $38                                       ; $5210: $FF
    ld a, [hl]                                    ; $5211: $7E
    db $FD                                        ; $5212: $FD
    ld a, [hl-]                                   ; $5213: $3A
    cp $74                                        ; $5214: $FE $74
    db $F4                                        ; $5216: $F4
    jr nz, jr_00D_51B9                            ; $5217: $20 $A0

    nop                                           ; $5219: $00
    nop                                           ; $521A: $00
    nop                                           ; $521B: $00
    nop                                           ; $521C: $00
    nop                                           ; $521D: $00
    nop                                           ; $521E: $00
    nop                                           ; $521F: $00
    nop                                           ; $5220: $00
    nop                                           ; $5221: $00
    ld bc, $0200                                  ; $5222: $01 $00 $02
    ld bc, $0304                                  ; $5225: $01 $04 $03
    add hl, bc                                    ; $5228: $09
    rlca                                          ; $5229: $07
    dec c                                         ; $522A: $0D
    rlca                                          ; $522B: $07
    rra                                           ; $522C: $1F
    dec bc                                        ; $522D: $0B
    cpl                                           ; $522E: $2F

jr_00D_522F:
    dec de                                        ; $522F: $1B
    ld e, $00                                     ; $5230: $1E $00
    pop af                                        ; $5232: $F1
    ld e, $7F                                     ; $5233: $1E $7F
    xor $FF                                       ; $5235: $EE $FF
    ldh a, [$FB]                                  ; $5237: $F0 $FB
    db $E4                                        ; $5239: $E4
    xor $D8                                       ; $523A: $EE $D8
    sbc [hl]                                      ; $523C: $9E
    ld hl, sp-$42                                 ; $523D: $F8 $BE
    ld [hl], b                                    ; $523F: $70
    cpl                                           ; $5240: $2F
    ld a, [de]                                    ; $5241: $1A
    ld c, [hl]                                    ; $5242: $4E
    dec a                                         ; $5243: $3D
    ld e, a                                       ; $5244: $5F
    dec a                                         ; $5245: $3D
    cp a                                          ; $5246: $BF
    ld [hl], e                                    ; $5247: $73
    rst $30                                       ; $5248: $F7
    ld l, d                                       ; $5249: $6A
    rst $28                                       ; $524A: $EF
    ld e, b                                       ; $524B: $58
    rst $38                                       ; $524C: $FF
    jr nz, jr_00D_52CE                            ; $524D: $20 $7F

    nop                                           ; $524F: $00
    ld a, h                                       ; $5250: $7C
    ldh [$FC], a                                  ; $5251: $E0 $FC
    ret nz                                        ; $5253: $C0

jr_00D_5254:
    db $FC                                        ; $5254: $FC
    add b                                         ; $5255: $80
    db $FC                                        ; $5256: $FC
    nop                                           ; $5257: $00
    ld hl, sp+$00                                 ; $5258: $F8 $00
    ldh [rP1], a                                  ; $525A: $E0 $00
    ret nz                                        ; $525C: $C0

    nop                                           ; $525D: $00
    add b                                         ; $525E: $80
    nop                                           ; $525F: $00
    ld a, a                                       ; $5260: $7F
    db $10                                        ; $5261: $10
    ld a, a                                       ; $5262: $7F
    nop                                           ; $5263: $00
    ld a, a                                       ; $5264: $7F
    inc c                                         ; $5265: $0C
    ld a, a                                       ; $5266: $7F
    ld b, $3F                                     ; $5267: $06 $3F
    ld b, $1F                                     ; $5269: $06 $1F
    ld bc, $000F                                  ; $526B: $01 $0F $00
    rlca                                          ; $526E: $07
    nop                                           ; $526F: $00
    ld a, [hl]                                    ; $5270: $7E
    ldh a, [$32]                                  ; $5271: $F0 $32
    db $EC                                        ; $5273: $EC
    xor $1C                                       ; $5274: $EE $1C
    sbc $38                                       ; $5276: $DE $38
    call c, $DC30                                 ; $5278: $DC $30 $DC
    jr nz, @-$06                                  ; $527B: $20 $F8

    nop                                           ; $527D: $00
    ldh a, [rP1]                                  ; $527E: $F0 $00
    rrca                                          ; $5280: $0F
    nop                                           ; $5281: $00
    db $10                                        ; $5282: $10
    rrca                                          ; $5283: $0F
    dec hl                                        ; $5284: $2B
    rla                                           ; $5285: $17
    ld c, e                                       ; $5286: $4B
    scf                                           ; $5287: $37
    ld d, e                                       ; $5288: $53
    ccf                                           ; $5289: $3F
    ld d, l                                       ; $528A: $55
    dec sp                                        ; $528B: $3B
    ld a, d                                       ; $528C: $7A
    dec a                                         ; $528D: $3D
    ld e, [hl]                                    ; $528E: $5E
    add hl, sp                                    ; $528F: $39
    ldh [rP1], a                                  ; $5290: $E0 $00
    jr nc, jr_00D_5254                            ; $5292: $30 $C0

    add sp, -$70                                  ; $5294: $E8 $90
    db $E4                                        ; $5296: $E4
    cp b                                          ; $5297: $B8
    jp nc, $DEBC                                  ; $5298: $D2 $BC $DE

    db $FC                                        ; $529B: $FC
    or $EC                                        ; $529C: $F6 $EC
    ld a, [c]                                     ; $529E: $F2
    db $EC                                        ; $529F: $EC
    inc a                                         ; $52A0: $3C
    nop                                           ; $52A1: $00
    ld h, [hl]                                    ; $52A2: $66
    inc e                                         ; $52A3: $1C
    ld e, d                                       ; $52A4: $5A
    inc h                                         ; $52A5: $24
    ld h, [hl]                                    ; $52A6: $66
    jr c, jr_00D_531F                             ; $52A7: $38 $76

    jr @+$80                                      ; $52A9: $18 $7E

    inc d                                         ; $52AB: $14
    ld a, [hl-]                                   ; $52AC: $3A
    inc d                                         ; $52AD: $14
    ld a, [hl-]                                   ; $52AE: $3A
    inc c                                         ; $52AF: $0C
    ld a, $0C                                     ; $52B0: $3E $0C
    ld a, [hl-]                                   ; $52B2: $3A
    inc c                                         ; $52B3: $0C
    ld a, $08                                     ; $52B4: $3E $08
    ld d, $08                                     ; $52B6: $16 $08
    ld e, $08                                     ; $52B8: $1E $08
    inc e                                         ; $52BA: $1C
    ld [$001C], sp                                ; $52BB: $08 $1C $00
    jr jr_00D_52C0                                ; $52BE: $18 $00

jr_00D_52C0:
    nop                                           ; $52C0: $00
    nop                                           ; $52C1: $00
    nop                                           ; $52C2: $00
    nop                                           ; $52C3: $00
    inc e                                         ; $52C4: $1C
    nop                                           ; $52C5: $00
    ld [hl-], a                                   ; $52C6: $32
    inc e                                         ; $52C7: $1C
    ld a, [hl-]                                   ; $52C8: $3A
    inc e                                         ; $52C9: $1C
    ld a, $18                                     ; $52CA: $3E $18
    inc a                                         ; $52CC: $3C
    nop                                           ; $52CD: $00

jr_00D_52CE:
    nop                                           ; $52CE: $00
    nop                                           ; $52CF: $00
    nop                                           ; $52D0: $00
    nop                                           ; $52D1: $00
    nop                                           ; $52D2: $00
    nop                                           ; $52D3: $00
    inc c                                         ; $52D4: $0C
    nop                                           ; $52D5: $00
    ld a, [de]                                    ; $52D6: $1A
    inc c                                         ; $52D7: $0C
    ld a, [de]                                    ; $52D8: $1A
    inc c                                         ; $52D9: $0C
    ld e, $0C                                     ; $52DA: $1E $0C
    ld e, $08                                     ; $52DC: $1E $08
    inc e                                         ; $52DE: $1C
    nop                                           ; $52DF: $00
    nop                                           ; $52E0: $00
    nop                                           ; $52E1: $00
    nop                                           ; $52E2: $00
    nop                                           ; $52E3: $00
    nop                                           ; $52E4: $00
    nop                                           ; $52E5: $00
    jr nz, jr_00D_52E8                            ; $52E6: $20 $00

jr_00D_52E8:
    ld [hl], b                                    ; $52E8: $70
    jr nz, @+$72                                  ; $52E9: $20 $70

    nop                                           ; $52EB: $00
    nop                                           ; $52EC: $00
    nop                                           ; $52ED: $00
    nop                                           ; $52EE: $00
    nop                                           ; $52EF: $00
    ld b, $00                                     ; $52F0: $06 $00
    add hl, bc                                    ; $52F2: $09
    ld b, $1D                                     ; $52F3: $06 $1D
    ld c, $1F                                     ; $52F5: $0E $1F
    inc b                                         ; $52F7: $04
    ld e, $08                                     ; $52F8: $1E $08
    ld e, $00                                     ; $52FA: $1E $00
    nop                                           ; $52FC: $00
    nop                                           ; $52FD: $00
    nop                                           ; $52FE: $00
    nop                                           ; $52FF: $00
    inc e                                         ; $5300: $1C
    nop                                           ; $5301: $00
    ld [hl+], a                                   ; $5302: $22
    inc e                                         ; $5303: $1C
    ld a, d                                       ; $5304: $7A
    inc a                                         ; $5305: $3C

jr_00D_5306:
    ld a, l                                       ; $5306: $7D
    ld e, $7D                                     ; $5307: $1E $7D
    ld l, $7F                                     ; $5309: $2E $7F
    inc d                                         ; $530B: $14
    ld a, $00                                     ; $530C: $3E $00
    nop                                           ; $530E: $00

jr_00D_530F:
    nop                                           ; $530F: $00
    ld b, $00                                     ; $5310: $06 $00
    add hl, bc                                    ; $5312: $09
    ld b, $37                                     ; $5313: $06 $37
    ld c, $4F                                     ; $5315: $0E $4F
    inc a                                         ; $5317: $3C
    ld a, a                                       ; $5318: $7F
    ld [hl-], a                                   ; $5319: $32

jr_00D_531A:
    ld a, a                                       ; $531A: $7F
    inc c                                         ; $531B: $0C
    inc a                                         ; $531C: $3C
    nop                                           ; $531D: $00
    nop                                           ; $531E: $00

jr_00D_531F:
    nop                                           ; $531F: $00
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    nop                                           ; $5322: $00
    nop                                           ; $5323: $00
    ld bc, $0600                                  ; $5324: $01 $00 $06
    ld bc, $070C                                  ; $5327: $01 $0C $07
    rlca                                          ; $532A: $07
    inc bc                                        ; $532B: $03
    inc bc                                        ; $532C: $03
    nop                                           ; $532D: $00
    nop                                           ; $532E: $00
    nop                                           ; $532F: $00
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    ret nc                                        ; $5332: $D0

    nop                                           ; $5333: $00
    jr c, jr_00D_5306                             ; $5334: $38 $D0

    ld d, b                                       ; $5336: $50
    and b                                         ; $5337: $A0
    jr nc, jr_00D_531A                            ; $5338: $30 $E0

    ldh [$C0], a                                  ; $533A: $E0 $C0
    ret nz                                        ; $533C: $C0

    nop                                           ; $533D: $00
    nop                                           ; $533E: $00
    nop                                           ; $533F: $00
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    nop                                           ; $5342: $00
    nop                                           ; $5343: $00
    nop                                           ; $5344: $00
    ld [hl], b                                    ; $5345: $70
    ret z                                         ; $5346: $C8

    ret z                                         ; $5347: $C8

    ld [$8888], sp                                ; $5348: $08 $88 $88
    adc [hl]                                      ; $534B: $8E
    add hl, bc                                    ; $534C: $09
    rrca                                          ; $534D: $0F
    ld [$000B], sp                                ; $534E: $08 $0B $00
    nop                                           ; $5351: $00
    nop                                           ; $5352: $00
    rrca                                          ; $5353: $0F
    db $10                                        ; $5354: $10
    db $10                                        ; $5355: $10
    db $10                                        ; $5356: $10
    db $10                                        ; $5357: $10
    db $10                                        ; $5358: $10
    db $10                                        ; $5359: $10
    jr nz, jr_00D_5395                            ; $535A: $20 $39

    add hl, sp                                    ; $535C: $39
    ccf                                           ; $535D: $3F
    jr nz, jr_00D_530F                            ; $535E: $20 $AF

    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    nop                                           ; $5363: $00
    nop                                           ; $5364: $00
    ret nz                                        ; $5365: $C0

    ld b, b                                       ; $5366: $40
    ld b, b                                       ; $5367: $40
    ld b, d                                       ; $5368: $42
    ld b, e                                       ; $5369: $43
    ld h, $E6                                     ; $536A: $26 $E6
    ld [c], a                                     ; $536C: $E2
    cp $80                                        ; $536D: $FE $80
    db $FC                                        ; $536F: $FC
    ld bc, $0101                                  ; $5370: $01 $01 $01
    ld bc, $0703                                  ; $5373: $01 $03 $07
    rlca                                          ; $5376: $07
    rrca                                          ; $5377: $0F
    adc d                                         ; $5378: $8A
    sbc d                                         ; $5379: $9A
    ld d, b                                       ; $537A: $50
    ld a, [c]                                     ; $537B: $F2
    sub [hl]                                      ; $537C: $96
    or $40                                        ; $537D: $F6 $40

jr_00D_537F:
    ld a, h                                       ; $537F: $7C
    nop                                           ; $5380: $00
    nop                                           ; $5381: $00
    nop                                           ; $5382: $00
    nop                                           ; $5383: $00
    ret nz                                        ; $5384: $C0

    ret nz                                        ; $5385: $C0

    pop bc                                        ; $5386: $C1
    pop bc                                        ; $5387: $C1
    ret nz                                        ; $5388: $C0

    pop bc                                        ; $5389: $C1
    jp $00C3                                      ; $538A: $C3 $C3 $00


    ld h, d                                       ; $538D: $62
    ld b, $F6                                     ; $538E: $06 $F6
    jr z, @+$3A                                   ; $5390: $28 $38

    ld a, [de]                                    ; $5392: $1A
    ld a, $18                                     ; $5393: $3E $18

jr_00D_5395:
    ld e, d                                       ; $5395: $5A
    inc b                                         ; $5396: $04
    adc [hl]                                      ; $5397: $8E
    rrca                                          ; $5398: $0F
    rrca                                          ; $5399: $0F
    inc b                                         ; $539A: $04
    dec b                                         ; $539B: $05
    dec bc                                        ; $539C: $0B
    rrca                                          ; $539D: $0F
    ld b, $06                                     ; $539E: $06 $06
    nop                                           ; $53A0: $00
    nop                                           ; $53A1: $00
    nop                                           ; $53A2: $00
    nop                                           ; $53A3: $00
    ld [bc], a                                    ; $53A4: $02
    inc bc                                        ; $53A5: $03
    ld [bc], a                                    ; $53A6: $02
    ld [bc], a                                    ; $53A7: $02
    nop                                           ; $53A8: $00
    inc b                                         ; $53A9: $04
    inc c                                         ; $53AA: $0C
    inc c                                         ; $53AB: $0C
    add c                                         ; $53AC: $81
    adc c                                         ; $53AD: $89
    dec de                                        ; $53AE: $1B
    sbc e                                         ; $53AF: $9B
    nop                                           ; $53B0: $00
    nop                                           ; $53B1: $00
    nop                                           ; $53B2: $00
    nop                                           ; $53B3: $00
    nop                                           ; $53B4: $00
    add b                                         ; $53B5: $80
    add b                                         ; $53B6: $80
    add b                                         ; $53B7: $80
    ld b, d                                       ; $53B8: $42
    ld b, d                                       ; $53B9: $42
    ld b, h                                       ; $53BA: $44
    ld b, [hl]                                    ; $53BB: $46
    ld c, b                                       ; $53BC: $48
    adc $4F                                       ; $53BD: $CE $4F
    rst $08                                       ; $53BF: $CF
    nop                                           ; $53C0: $00
    add b                                         ; $53C1: $80
    ret nz                                        ; $53C2: $C0

    ret nz                                        ; $53C3: $C0

    ld b, b                                       ; $53C4: $40
    ld b, b                                       ; $53C5: $40
    nop                                           ; $53C6: $00
    ld b, b                                       ; $53C7: $40
    ld de, $1D35                                  ; $53C8: $11 $35 $1D
    rra                                           ; $53CB: $1F
    inc e                                         ; $53CC: $1C
    rra                                           ; $53CD: $1F
    add hl, de                                    ; $53CE: $19
    ccf                                           ; $53CF: $3F
    nop                                           ; $53D0: $00
    nop                                           ; $53D1: $00
    nop                                           ; $53D2: $00
    nop                                           ; $53D3: $00
    and b                                         ; $53D4: $A0
    ldh [$28], a                                  ; $53D5: $E0 $28
    cp b                                          ; $53D7: $B8
    adc b                                         ; $53D8: $88
    adc b                                         ; $53D9: $88
    ld [$2808], sp                                ; $53DA: $08 $08 $28
    jr c, jr_00D_537F                             ; $53DD: $38 $A0

    cp h                                          ; $53DF: $BC
    nop                                           ; $53E0: $00
    nop                                           ; $53E1: $00
    nop                                           ; $53E2: $00
    nop                                           ; $53E3: $00
    nop                                           ; $53E4: $00
    nop                                           ; $53E5: $00
    nop                                           ; $53E6: $00
    nop                                           ; $53E7: $00
    nop                                           ; $53E8: $00
    nop                                           ; $53E9: $00
    nop                                           ; $53EA: $00
    nop                                           ; $53EB: $00
    nop                                           ; $53EC: $00
    nop                                           ; $53ED: $00
    nop                                           ; $53EE: $00
    inc bc                                        ; $53EF: $03
    nop                                           ; $53F0: $00
    nop                                           ; $53F1: $00
    nop                                           ; $53F2: $00
    nop                                           ; $53F3: $00
    ld bc, $0201                                  ; $53F4: $01 $01 $02
    ld [bc], a                                    ; $53F7: $02
    ld [bc], a                                    ; $53F8: $02
    ld [bc], a                                    ; $53F9: $02
    ld [bc], a                                    ; $53FA: $02
    ld [bc], a                                    ; $53FB: $02
    inc b                                         ; $53FC: $04
    inc b                                         ; $53FD: $04
    ld [$A00C], sp                                ; $53FE: $08 $0C $A0
    ldh [rNR41], a                                ; $5401: $E0 $20
    and b                                         ; $5403: $A0
    add b                                         ; $5404: $80
    and b                                         ; $5405: $A0
    dec hl                                        ; $5406: $2B
    cpl                                           ; $5407: $2F
    jr nc, jr_00D_5445                            ; $5408: $30 $3B

    ld [bc], a                                    ; $540A: $02
    cp $08                                        ; $540B: $FE $08
    ld a, b                                       ; $540D: $78
    jr nc, @+$32                                  ; $540E: $30 $30

    nop                                           ; $5410: $00
    ld b, b                                       ; $5411: $40
    and b                                         ; $5412: $A0
    ldh [$90], a                                  ; $5413: $E0 $90
    ldh a, [rLCDC]                                ; $5415: $F0 $40
    ldh a, [$28]                                  ; $5417: $F0 $28
    jr c, @-$3E                                   ; $5419: $38 $C0

    ld hl, sp+$08                                 ; $541B: $F8 $08
    ld a, b                                       ; $541D: $78
    db $10                                        ; $541E: $10
    jr jr_00D_5421                                ; $541F: $18 $00

jr_00D_5421:
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    nop                                           ; $5424: $00
    nop                                           ; $5425: $00
    nop                                           ; $5426: $00
    nop                                           ; $5427: $00
    nop                                           ; $5428: $00
    nop                                           ; $5429: $00
    nop                                           ; $542A: $00
    nop                                           ; $542B: $00
    nop                                           ; $542C: $00
    nop                                           ; $542D: $00
    db $10                                        ; $542E: $10
    jr nc, jr_00D_5431                            ; $542F: $30 $00

jr_00D_5431:
    inc bc                                        ; $5431: $03
    ld b, $06                                     ; $5432: $06 $06
    inc b                                         ; $5434: $04
    inc b                                         ; $5435: $04
    inc c                                         ; $5436: $0C
    inc c                                         ; $5437: $0C
    inc c                                         ; $5438: $0C
    inc c                                         ; $5439: $0C
    ld [$020C], sp                                ; $543A: $08 $0C $02
    ld c, $06                                     ; $543D: $0E $06
    ld e, $10                                     ; $543F: $1E $10
    sub b                                         ; $5441: $90
    ld d, b                                       ; $5442: $50
    ret nc                                        ; $5443: $D0

    nop                                           ; $5444: $00

jr_00D_5445:
    ld h, b                                       ; $5445: $60
    ld b, b                                       ; $5446: $40
    ld b, b                                       ; $5447: $40
    add b                                         ; $5448: $80
    ret nz                                        ; $5449: $C0

    nop                                           ; $544A: $00
    add b                                         ; $544B: $80
    nop                                           ; $544C: $00
    nop                                           ; $544D: $00
    nop                                           ; $544E: $00
    nop                                           ; $544F: $00
    and b                                         ; $5450: $A0
    rst $38                                       ; $5451: $FF
    ld b, b                                       ; $5452: $40
    ld [hl], b                                    ; $5453: $70
    nop                                           ; $5454: $00
    nop                                           ; $5455: $00
    nop                                           ; $5456: $00
    nop                                           ; $5457: $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    nop                                           ; $545A: $00
    nop                                           ; $545B: $00
    nop                                           ; $545C: $00
    nop                                           ; $545D: $00
    nop                                           ; $545E: $00
    nop                                           ; $545F: $00
    db $E4                                        ; $5460: $E4
    db $E4                                        ; $5461: $E4
    xor h                                         ; $5462: $AC
    xor h                                         ; $5463: $AC
    jr nz, jr_00D_548E                            ; $5464: $20 $28

    ld a, b                                       ; $5466: $78
    ld a, b                                       ; $5467: $78
    ld [$1038], sp                                ; $5468: $08 $38 $10
    jr nc, jr_00D_546D                            ; $546B: $30 $00

jr_00D_546D:
    nop                                           ; $546D: $00
    nop                                           ; $546E: $00
    nop                                           ; $546F: $00
    ld [$0A0B], sp                                ; $5470: $08 $0B $0A
    ld c, $00                                     ; $5473: $0E $00
    inc b                                         ; $5475: $04
    inc b                                         ; $5476: $04
    inc b                                         ; $5477: $04
    nop                                           ; $5478: $00
    ld [bc], a                                    ; $5479: $02
    ld [bc], a                                    ; $547A: $02
    ld [bc], a                                    ; $547B: $02
    ld bc, $0001                                  ; $547C: $01 $01 $00
    nop                                           ; $547F: $00
    inc b                                         ; $5480: $04
    inc e                                         ; $5481: $1C
    nop                                           ; $5482: $00
    ld a, h                                       ; $5483: $7C
    add b                                         ; $5484: $80
    ldh [rP1], a                                  ; $5485: $E0 $00
    add b                                         ; $5487: $80
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    nop                                           ; $548A: $00
    nop                                           ; $548B: $00
    nop                                           ; $548C: $00
    nop                                           ; $548D: $00

jr_00D_548E:
    nop                                           ; $548E: $00
    nop                                           ; $548F: $00
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00
    nop                                           ; $5493: $00
    nop                                           ; $5494: $00
    nop                                           ; $5495: $00
    nop                                           ; $5496: $00
    nop                                           ; $5497: $00
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    nop                                           ; $549A: $00
    nop                                           ; $549B: $00
    nop                                           ; $549C: $00
    nop                                           ; $549D: $00
    nop                                           ; $549E: $00
    nop                                           ; $549F: $00
    jp nc, $D2F2                                  ; $54A0: $D2 $F2 $D2

    sbc $8C                                       ; $54A3: $DE $8C
    db $FC                                        ; $54A5: $FC
    ld b, b                                       ; $54A6: $40
    ld b, b                                       ; $54A7: $40
    nop                                           ; $54A8: $00
    nop                                           ; $54A9: $00
    nop                                           ; $54AA: $00
    nop                                           ; $54AB: $00
    nop                                           ; $54AC: $00
    nop                                           ; $54AD: $00
    nop                                           ; $54AE: $00
    nop                                           ; $54AF: $00
    sbc b                                         ; $54B0: $98
    ret c                                         ; $54B1: $D8

    add hl, hl                                    ; $54B2: $29
    ld a, c                                       ; $54B3: $79
    ld [$4068], sp                                ; $54B4: $08 $68 $40
    ld a, b                                       ; $54B7: $78
    jr nz, jr_00D_54EA                            ; $54B8: $20 $30

    ld [$0118], sp                                ; $54BA: $08 $18 $01
    rrca                                          ; $54BD: $0F
    ld [$2208], sp                                ; $54BE: $08 $08 $22
    ld a, d                                       ; $54C1: $7A
    ld d, d                                       ; $54C2: $52
    jp nc, $1212                                  ; $54C3: $D2 $12 $12

    ld [hl-], a                                   ; $54C6: $32
    inc sp                                        ; $54C7: $33
    nop                                           ; $54C8: $00
    ld h, b                                       ; $54C9: $60
    ret nz                                        ; $54CA: $C0

    ret nz                                        ; $54CB: $C0

    nop                                           ; $54CC: $00
    add b                                         ; $54CD: $80
    add b                                         ; $54CE: $80
    add b                                         ; $54CF: $80
    sub b                                         ; $54D0: $90
    cp [hl]                                       ; $54D1: $BE
    add b                                         ; $54D2: $80
    rst $28                                       ; $54D3: $EF
    add d                                         ; $54D4: $82
    rst $00                                       ; $54D5: $C7
    ld [bc], a                                    ; $54D6: $02
    add e                                         ; $54D7: $83
    inc bc                                        ; $54D8: $03
    inc bc                                        ; $54D9: $03
    ld [bc], a                                    ; $54DA: $02
    ld [bc], a                                    ; $54DB: $02
    nop                                           ; $54DC: $00
    nop                                           ; $54DD: $00
    nop                                           ; $54DE: $00
    nop                                           ; $54DF: $00
    inc bc                                        ; $54E0: $03
    rst $38                                       ; $54E1: $FF
    inc c                                         ; $54E2: $0C
    db $FC                                        ; $54E3: $FC
    add l                                         ; $54E4: $85
    add l                                         ; $54E5: $85
    inc b                                         ; $54E6: $04
    rlca                                          ; $54E7: $07
    nop                                           ; $54E8: $00
    nop                                           ; $54E9: $00

jr_00D_54EA:
    nop                                           ; $54EA: $00
    nop                                           ; $54EB: $00
    nop                                           ; $54EC: $00
    nop                                           ; $54ED: $00
    nop                                           ; $54EE: $00
    nop                                           ; $54EF: $00
    db $10                                        ; $54F0: $10
    ld e, $04                                     ; $54F1: $1E $04
    db $FC                                        ; $54F3: $FC
    inc e                                         ; $54F4: $1C
    db $FC                                        ; $54F5: $FC
    inc b                                         ; $54F6: $04
    inc b                                         ; $54F7: $04
    inc b                                         ; $54F8: $04
    inc b                                         ; $54F9: $04
    ld b, $06                                     ; $54FA: $06 $06
    nop                                           ; $54FC: $00
    ld [bc], a                                    ; $54FD: $02
    nop                                           ; $54FE: $00
    nop                                           ; $54FF: $00
    jr nz, jr_00D_5522                            ; $5500: $20 $20

    jr nz, @+$22                                  ; $5502: $20 $20

    nop                                           ; $5504: $00
    jr nz, @+$22                                  ; $5505: $20 $20

    jr nz, jr_00D_5569                            ; $5507: $20 $60

    ld h, b                                       ; $5509: $60
    ld b, b                                       ; $550A: $40
    ld b, b                                       ; $550B: $40
    nop                                           ; $550C: $00
    add b                                         ; $550D: $80
    nop                                           ; $550E: $00
    nop                                           ; $550F: $00
    jr jr_00D_5530                                ; $5510: $18 $1E

    dec bc                                        ; $5512: $0B
    dec bc                                        ; $5513: $0B
    ld a, [bc]                                    ; $5514: $0A
    dec bc                                        ; $5515: $0B
    ld bc, $0007                                  ; $5516: $01 $07 $00
    nop                                           ; $5519: $00
    nop                                           ; $551A: $00
    nop                                           ; $551B: $00
    nop                                           ; $551C: $00
    nop                                           ; $551D: $00
    nop                                           ; $551E: $00
    nop                                           ; $551F: $00
    ld b, c                                       ; $5520: $41
    ld a, a                                       ; $5521: $7F

jr_00D_5522:
    ld [$4049], sp                                ; $5522: $08 $49 $40
    call nz, $8606                                ; $5525: $C4 $06 $86
    inc bc                                        ; $5528: $03
    inc bc                                        ; $5529: $03
    nop                                           ; $552A: $00
    ld [bc], a                                    ; $552B: $02
    nop                                           ; $552C: $00
    nop                                           ; $552D: $00
    nop                                           ; $552E: $00
    nop                                           ; $552F: $00

jr_00D_5530:
    ld [hl+], a                                   ; $5530: $22
    ld a, [hl-]                                   ; $5531: $3A
    inc de                                        ; $5532: $13
    inc sp                                        ; $5533: $33
    pop hl                                        ; $5534: $E1
    pop hl                                        ; $5535: $E1
    ld bc, $40C1                                  ; $5536: $01 $C1 $40
    ret nz                                        ; $5539: $C0

    nop                                           ; $553A: $00
    nop                                           ; $553B: $00
    nop                                           ; $553C: $00
    nop                                           ; $553D: $00
    nop                                           ; $553E: $00
    nop                                           ; $553F: $00
    nop                                           ; $5540: $00
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    nop                                           ; $5543: $00
    nop                                           ; $5544: $00
    nop                                           ; $5545: $00
    nop                                           ; $5546: $00
    nop                                           ; $5547: $00
    nop                                           ; $5548: $00
    nop                                           ; $5549: $00
    nop                                           ; $554A: $00
    nop                                           ; $554B: $00
    inc bc                                        ; $554C: $03
    nop                                           ; $554D: $00
    rlca                                          ; $554E: $07
    nop                                           ; $554F: $00
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    rrca                                          ; $5552: $0F
    nop                                           ; $5553: $00
    db $10                                        ; $5554: $10
    rrca                                          ; $5555: $0F
    jr nz, jr_00D_5577                            ; $5556: $20 $1F

    ld b, b                                       ; $5558: $40
    ccf                                           ; $5559: $3F
    add b                                         ; $555A: $80
    ld a, a                                       ; $555B: $7F
    nop                                           ; $555C: $00
    rst $38                                       ; $555D: $FF
    nop                                           ; $555E: $00
    rst $38                                       ; $555F: $FF
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    ret nz                                        ; $5562: $C0

    nop                                           ; $5563: $00
    jr nc, @-$3E                                  ; $5564: $30 $C0

    ld [$04F0], sp                                ; $5566: $08 $F0 $04

jr_00D_5569:
    ld hl, sp+$02                                 ; $5569: $F8 $02
    db $FC                                        ; $556B: $FC
    ld bc, $01FE                                  ; $556C: $01 $FE $01
    cp $1E                                        ; $556F: $FE $1E
    nop                                           ; $5571: $00
    inc hl                                        ; $5572: $23
    ld e, $13                                     ; $5573: $1E $13
    rrca                                          ; $5575: $0F
    rla                                           ; $5576: $17

jr_00D_5577:
    rrca                                          ; $5577: $0F
    rra                                           ; $5578: $1F
    ld b, $0F                                     ; $5579: $06 $0F
    nop                                           ; $557B: $00
    rlca                                          ; $557C: $07
    nop                                           ; $557D: $00
    ld b, $01                                     ; $557E: $06 $01
    ld e, $01                                     ; $5580: $1E $01
    ld a, $05                                     ; $5582: $3E $05
    call c, $9D2B                                 ; $5584: $DC $2B $9D
    ld l, d                                       ; $5587: $6A
    cp a                                          ; $5588: $BF
    ld c, c                                       ; $5589: $49
    add hl, sp                                    ; $558A: $39
    sub $70                                       ; $558B: $D6 $70
    xor a                                         ; $558D: $AF
    ld [hl], b                                    ; $558E: $70
    xor a                                         ; $558F: $AF
    nop                                           ; $5590: $00
    rst $38                                       ; $5591: $FF
    inc b                                         ; $5592: $04
    ei                                            ; $5593: $FB
    ld c, $F5                                     ; $5594: $0E $F5
    rlca                                          ; $5596: $07
    ld a, [$23DF]                                 ; $5597: $FA $DF $23
    rst $38                                       ; $559A: $FF
    rst $18                                       ; $559B: $DF
    rst $38                                       ; $559C: $FF
    ld a, c                                       ; $559D: $79
    ld a, a                                       ; $559E: $7F
    add b                                         ; $559F: $80
    nop                                           ; $55A0: $00
    rst $38                                       ; $55A1: $FF
    nop                                           ; $55A2: $00
    rst $38                                       ; $55A3: $FF
    nop                                           ; $55A4: $00
    rst $38                                       ; $55A5: $FF
    inc a                                         ; $55A6: $3C
    jp $01FE                                      ; $55A7: $C3 $FE $01


    pop hl                                        ; $55AA: $E1
    sbc $F4                                       ; $55AB: $DE $F4
    db $EB                                        ; $55AD: $EB
    ld [c], a                                     ; $55AE: $E2
    dec e                                         ; $55AF: $1D
    add b                                         ; $55B0: $80
    nop                                           ; $55B1: $00
    add b                                         ; $55B2: $80
    nop                                           ; $55B3: $00
    ld a, [c]                                     ; $55B4: $F2
    nop                                           ; $55B5: $00
    ld a, a                                       ; $55B6: $7F
    sub d                                         ; $55B7: $92
    ld a, a                                       ; $55B8: $7F
    cp [hl]                                       ; $55B9: $BE
    cp $74                                        ; $55BA: $FE $74
    db $FC                                        ; $55BC: $FC
    jr nz, jr_00D_562F                            ; $55BD: $20 $70

    add b                                         ; $55BF: $80
    ld b, $01                                     ; $55C0: $06 $01
    inc b                                         ; $55C2: $04
    inc bc                                        ; $55C3: $03
    inc c                                         ; $55C4: $0C
    inc bc                                        ; $55C5: $03
    inc c                                         ; $55C6: $0C
    inc bc                                        ; $55C7: $03
    ld e, $01                                     ; $55C8: $1E $01
    ccf                                           ; $55CA: $3F
    nop                                           ; $55CB: $00
    ccf                                           ; $55CC: $3F
    nop                                           ; $55CD: $00
    ld a, a                                       ; $55CE: $7F
    inc e                                         ; $55CF: $1C
    ldh [$1F], a                                  ; $55D0: $E0 $1F
    ldh [$1F], a                                  ; $55D2: $E0 $1F
    pop bc                                        ; $55D4: $C1
    ld a, $C0                                     ; $55D5: $3E $C0
    ccf                                           ; $55D7: $3F
    ld b, b                                       ; $55D8: $40
    cp a                                          ; $55D9: $BF
    ret nz                                        ; $55DA: $C0

    ccf                                           ; $55DB: $3F
    ret nz                                        ; $55DC: $C0

    ccf                                           ; $55DD: $3F
    ldh [$1F], a                                  ; $55DE: $E0 $1F
    ld c, $F1                                     ; $55E0: $0E $F1
    inc c                                         ; $55E2: $0C
    di                                            ; $55E3: $F3
    rra                                           ; $55E4: $1F

jr_00D_55E5:
    ldh [$BF], a                                  ; $55E5: $E0 $BF
    ld b, b                                       ; $55E7: $40
    ld a, a                                       ; $55E8: $7F
    add b                                         ; $55E9: $80
    ccf                                           ; $55EA: $3F
    ret nz                                        ; $55EB: $C0

    rra                                           ; $55EC: $1F
    ldh [rIE], a                                  ; $55ED: $E0 $FF
    nop                                           ; $55EF: $00
    cp a                                          ; $55F0: $BF
    ld b, b                                       ; $55F1: $40
    sbc a                                         ; $55F2: $9F
    ld h, h                                       ; $55F3: $64
    rst $18                                       ; $55F4: $DF
    ld l, $FF                                     ; $55F5: $2E $FF
    rra                                           ; $55F7: $1F
    rst $38                                       ; $55F8: $FF
    rra                                           ; $55F9: $1F
    rst $38                                       ; $55FA: $FF
    ld c, $FF                                     ; $55FB: $0E $FF
    dec b                                         ; $55FD: $05
    rst $38                                       ; $55FE: $FF
    nop                                           ; $55FF: $00
    ldh a, [rP1]                                  ; $5600: $F0 $00
    ret nc                                        ; $5602: $D0

    jr nz, jr_00D_55E5                            ; $5603: $20 $E0

    ld b, b                                       ; $5605: $40
    ldh a, [$C0]                                  ; $5606: $F0 $C0
    db $FC                                        ; $5608: $FC
    ret nz                                        ; $5609: $C0

    cp $9C                                        ; $560A: $FE $9C
    rst $38                                       ; $560C: $FF
    ld a, $FF                                     ; $560D: $3E $FF
    ld l, h                                       ; $560F: $6C
    ld a, a                                       ; $5610: $7F
    ld a, [hl+]                                   ; $5611: $2A
    ld l, e                                       ; $5612: $6B
    inc d                                         ; $5613: $14
    ld e, e                                       ; $5614: $5B
    inc h                                         ; $5615: $24
    ld e, d                                       ; $5616: $5A
    inc h                                         ; $5617: $24
    inc h                                         ; $5618: $24
    nop                                           ; $5619: $00
    nop                                           ; $561A: $00
    nop                                           ; $561B: $00
    nop                                           ; $561C: $00
    nop                                           ; $561D: $00
    nop                                           ; $561E: $00
    nop                                           ; $561F: $00
    db $E3                                        ; $5620: $E3
    inc e                                         ; $5621: $1C
    rst $20                                       ; $5622: $E7
    dec de                                        ; $5623: $1B
    ld l, a                                       ; $5624: $6F
    rla                                           ; $5625: $17
    ccf                                           ; $5626: $3F
    dec b                                         ; $5627: $05
    dec e                                         ; $5628: $1D
    ld [bc], a                                    ; $5629: $02
    dec c                                         ; $562A: $0D
    ld [bc], a                                    ; $562B: $02
    dec b                                         ; $562C: $05
    ld [bc], a                                    ; $562D: $02
    ld [bc], a                                    ; $562E: $02

jr_00D_562F:
    nop                                           ; $562F: $00
    rst $38                                       ; $5630: $FF
    nop                                           ; $5631: $00
    rst $38                                       ; $5632: $FF
    ldh a, [rIE]                                  ; $5633: $F0 $FF
    ld hl, sp-$06                                 ; $5635: $F8 $FA
    call nc, $A6D9                                ; $5637: $D4 $D9 $A6
    db $DD                                        ; $563A: $DD
    and d                                         ; $563B: $A2
    jp c, $2020                                   ; $563C: $DA $20 $20

    nop                                           ; $563F: $00
    adc a                                         ; $5640: $8F
    nop                                           ; $5641: $00
    jp $C000                                      ; $5642: $C3 $00 $C0


    nop                                           ; $5645: $00
    nop                                           ; $5646: $00
    nop                                           ; $5647: $00
    nop                                           ; $5648: $00
    nop                                           ; $5649: $00
    nop                                           ; $564A: $00
    nop                                           ; $564B: $00
    nop                                           ; $564C: $00
    nop                                           ; $564D: $00
    nop                                           ; $564E: $00
    nop                                           ; $564F: $00
    db $ED                                        ; $5650: $ED
    ld d, d                                       ; $5651: $52
    push de                                       ; $5652: $D5
    ld a, [hl+]                                   ; $5653: $2A
    ld [hl], l                                    ; $5654: $75
    ld a, [bc]                                    ; $5655: $0A
    ld a, [bc]                                    ; $5656: $0A
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

jr_00D_5661:
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00
    ld [$1100], sp                                ; $5664: $08 $00 $11
    ld [$1B0D], sp                                ; $5667: $08 $0D $1B
    rra                                           ; $566A: $1F
    add hl, bc                                    ; $566B: $09
    ld a, [bc]                                    ; $566C: $0A
    rlca                                          ; $566D: $07
    ld c, $01                                     ; $566E: $0E $01
    ld [bc], a                                    ; $5670: $02
    inc e                                         ; $5671: $1C
    nop                                           ; $5672: $00
    ccf                                           ; $5673: $3F
    add b                                         ; $5674: $80
    ld a, a                                       ; $5675: $7F
    add b                                         ; $5676: $80
    ld a, a                                       ; $5677: $7F
    jr jr_00D_5661                                ; $5678: $18 $E7

    rst $18                                       ; $567A: $DF
    jr z, jr_00D_56FB                             ; $567B: $28 $7E

    or a                                          ; $567D: $B7
    rra                                           ; $567E: $1F
    ldh [rP1], a                                  ; $567F: $E0 $00
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    nop                                           ; $5683: $00
    nop                                           ; $5684: $00
    add b                                         ; $5685: $80
    ld b, b                                       ; $5686: $40
    add b                                         ; $5687: $80
    ld l, b                                       ; $5688: $68
    add b                                         ; $5689: $80
    cp b                                          ; $568A: $B8
    ld a, b                                       ; $568B: $78
    ld [hl], b                                    ; $568C: $70
    and b                                         ; $568D: $A0
    ldh [rP1], a                                  ; $568E: $E0 $00
    inc d                                         ; $5690: $14
    dec bc                                        ; $5691: $0B
    jr jr_00D_569B                                ; $5692: $18 $07

    inc a                                         ; $5694: $3C
    inc bc                                        ; $5695: $03
    ld a, $39                                     ; $5696: $3E $39
    dec de                                        ; $5698: $1B
    jr nz, jr_00D_56BC                            ; $5699: $20 $21

jr_00D_569B:
    nop                                           ; $569B: $00
    nop                                           ; $569C: $00
    nop                                           ; $569D: $00
    nop                                           ; $569E: $00
    nop                                           ; $569F: $00
    dec e                                         ; $56A0: $1D
    db $E3                                        ; $56A1: $E3
    ccf                                           ; $56A2: $3F
    pop bc                                        ; $56A3: $C1
    rra                                           ; $56A4: $1F
    ldh [$FD], a                                  ; $56A5: $E0 $FD
    nop                                           ; $56A7: $00
    db $FC                                        ; $56A8: $FC
    ldh a, [$50]                                  ; $56A9: $F0 $50
    add sp, $58                                   ; $56AB: $E8 $58
    and b                                         ; $56AD: $A0
    nop                                           ; $56AE: $00
    nop                                           ; $56AF: $00
    ldh [$80], a                                  ; $56B0: $E0 $80
    ldh a, [$C0]                                  ; $56B2: $F0 $C0
    ld hl, sp+$38                                 ; $56B4: $F8 $38
    ldh a, [$08]                                  ; $56B6: $F0 $08
    jr nz, jr_00D_56D2                            ; $56B8: $20 $18

    nop                                           ; $56BA: $00
    nop                                           ; $56BB: $00

jr_00D_56BC:
    nop                                           ; $56BC: $00
    nop                                           ; $56BD: $00
    nop                                           ; $56BE: $00
    nop                                           ; $56BF: $00
    nop                                           ; $56C0: $00
    nop                                           ; $56C1: $00
    ld bc, $0100                                  ; $56C2: $01 $00 $01
    nop                                           ; $56C5: $00
    nop                                           ; $56C6: $00
    nop                                           ; $56C7: $00
    ld bc, $0100                                  ; $56C8: $01 $00 $01
    ld bc, $0000                                  ; $56CB: $01 $00 $00
    nop                                           ; $56CE: $00
    nop                                           ; $56CF: $00
    nop                                           ; $56D0: $00
    inc e                                         ; $56D1: $1C

jr_00D_56D2:
    ld b, d                                       ; $56D2: $42
    inc a                                         ; $56D3: $3C
    db $FD                                        ; $56D4: $FD
    ld b, e                                       ; $56D5: $43
    sbc [hl]                                      ; $56D6: $9E
    ld h, b                                       ; $56D7: $60
    rra                                           ; $56D8: $1F
    and $BF                                       ; $56D9: $E6 $BF
    ld b, b                                       ; $56DB: $40
    ld [hl], b                                    ; $56DC: $70
    jr nz, jr_00D_56DF                            ; $56DD: $20 $00

jr_00D_56DF:
    nop                                           ; $56DF: $00
    nop                                           ; $56E0: $00
    nop                                           ; $56E1: $00
    nop                                           ; $56E2: $00
    nop                                           ; $56E3: $00
    nop                                           ; $56E4: $00
    nop                                           ; $56E5: $00
    nop                                           ; $56E6: $00
    nop                                           ; $56E7: $00
    inc b                                         ; $56E8: $04
    jr jr_00D_5717                                ; $56E9: $18 $2C

    db $10                                        ; $56EB: $10
    inc a                                         ; $56EC: $3C
    nop                                           ; $56ED: $00
    nop                                           ; $56EE: $00
    nop                                           ; $56EF: $00
    nop                                           ; $56F0: $00
    jr c, jr_00D_56F3                             ; $56F1: $38 $00

jr_00D_56F3:
    ld a, h                                       ; $56F3: $7C
    nop                                           ; $56F4: $00
    cp $00                                        ; $56F5: $FE $00
    cp $00                                        ; $56F7: $FE $00
    cp $00                                        ; $56F9: $FE $00

jr_00D_56FB:
    ld a, h                                       ; $56FB: $7C
    nop                                           ; $56FC: $00
    jr c, jr_00D_56FF                             ; $56FD: $38 $00

jr_00D_56FF:
    nop                                           ; $56FF: $00
    nop                                           ; $5700: $00
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    nop                                           ; $5704: $00
    stop                                          ; $5705: $10 $00
    nop                                           ; $5707: $00
    nop                                           ; $5708: $00
    stop                                          ; $5709: $10 $00
    stop                                          ; $570B: $10 $00
    stop                                          ; $570D: $10 $00
    stop                                          ; $570F: $10 $00
    nop                                           ; $5711: $00
    nop                                           ; $5712: $00
    nop                                           ; $5713: $00
    nop                                           ; $5714: $00
    nop                                           ; $5715: $00
    nop                                           ; $5716: $00

jr_00D_5717:
    ld d, a                                       ; $5717: $57
    nop                                           ; $5718: $00
    nop                                           ; $5719: $00
    nop                                           ; $571A: $00
    nop                                           ; $571B: $00
    nop                                           ; $571C: $00
    nop                                           ; $571D: $00
    nop                                           ; $571E: $00
    nop                                           ; $571F: $00
    nop                                           ; $5720: $00
    stop                                          ; $5721: $10 $00
    stop                                          ; $5723: $10 $00
    jr c, jr_00D_5727                             ; $5725: $38 $00

jr_00D_5727:
    rst $38                                       ; $5727: $FF
    nop                                           ; $5728: $00
    jr c, jr_00D_572B                             ; $5729: $38 $00

jr_00D_572B:
    stop                                          ; $572B: $10 $00
    stop                                          ; $572D: $10 $00
    db $10                                        ; $572F: $10
    add a                                         ; $5730: $87
    nop                                           ; $5731: $00
    sbc [hl]                                      ; $5732: $9E
    ld bc, $05BE                                  ; $5733: $01 $BE $05
    call c, $9D2B                                 ; $5736: $DC $2B $9D
    ld l, d                                       ; $5739: $6A
    cp a                                          ; $573A: $BF
    ld c, c                                       ; $573B: $49
    add hl, sp                                    ; $573C: $39
    sub $70                                       ; $573D: $D6 $70
    xor a                                         ; $573F: $AF
    ld c, $00                                     ; $5740: $0E $00
    rra                                           ; $5742: $1F
    ld c, $3F                                     ; $5743: $0E $3F
    inc b                                         ; $5745: $04
    ld [hl], c                                    ; $5746: $71
    ld l, $3A                                     ; $5747: $2E $3A
    inc d                                         ; $5749: $14
    ld a, a                                       ; $574A: $7F
    ld a, [hl-]                                   ; $574B: $3A
    ld a, a                                       ; $574C: $7F
    ld e, $3F                                     ; $574D: $1E $3F
    inc c                                         ; $574F: $0C
    sbc [hl]                                      ; $5750: $9E
    nop                                           ; $5751: $00
    sub h                                         ; $5752: $94
    nop                                           ; $5753: $00
    or $00                                        ; $5754: $F6 $00
    ld a, a                                       ; $5756: $7F
    sub d                                         ; $5757: $92
    ld a, a                                       ; $5758: $7F
    cp [hl]                                       ; $5759: $BE
    cp $74                                        ; $575A: $FE $74
    db $FC                                        ; $575C: $FC
    jr nz, jr_00D_57CF                            ; $575D: $20 $70

    add b                                         ; $575F: $80
    ld [hl], b                                    ; $5760: $70
    xor a                                         ; $5761: $AF
    ldh [$1F], a                                  ; $5762: $E0 $1F
    ldh [$1F], a                                  ; $5764: $E0 $1F
    pop bc                                        ; $5766: $C1
    ld a, $40                                     ; $5767: $3E $40
    cp a                                          ; $5769: $BF
    ret nz                                        ; $576A: $C0

    ccf                                           ; $576B: $3F
    ret nz                                        ; $576C: $C0

    ccf                                           ; $576D: $3F
    ret nz                                        ; $576E: $C0

    ccf                                           ; $576F: $3F
    ld [hl], b                                    ; $5770: $70
    xor a                                         ; $5771: $AF
    ldh [$1F], a                                  ; $5772: $E0 $1F
    ldh [$1F], a                                  ; $5774: $E0 $1F
    pop bc                                        ; $5776: $C1
    ld a, $40                                     ; $5777: $3E $40
    cp a                                          ; $5779: $BF
    ret nz                                        ; $577A: $C0

    ccf                                           ; $577B: $3F
    ret nz                                        ; $577C: $C0

    ccf                                           ; $577D: $3F
    ret nz                                        ; $577E: $C0

    ccf                                           ; $577F: $3F
    ld a, a                                       ; $5780: $7F
    add b                                         ; $5781: $80
    ld c, $F1                                     ; $5782: $0E $F1
    inc c                                         ; $5784: $0C
    di                                            ; $5785: $F3
    rra                                           ; $5786: $1F
    ldh [rIE], a                                  ; $5787: $E0 $FF
    nop                                           ; $5789: $00
    ccf                                           ; $578A: $3F
    ret nz                                        ; $578B: $C0

    rra                                           ; $578C: $1F
    ldh [$1F], a                                  ; $578D: $E0 $1F
    ldh [$E2], a                                  ; $578F: $E0 $E2
    dec e                                         ; $5791: $1D
    cp a                                          ; $5792: $BF
    ld b, b                                       ; $5793: $40
    sbc a                                         ; $5794: $9F
    ld h, h                                       ; $5795: $64
    rst $18                                       ; $5796: $DF

jr_00D_5797:
    ld l, $FF                                     ; $5797: $2E $FF
    rra                                           ; $5799: $1F
    rst $38                                       ; $579A: $FF
    rra                                           ; $579B: $1F
    rst $38                                       ; $579C: $FF
    ld c, $FF                                     ; $579D: $0E $FF
    dec b                                         ; $579F: $05
    ld [hl], b                                    ; $57A0: $70
    add b                                         ; $57A1: $80
    ldh a, [rP1]                                  ; $57A2: $F0 $00
    ret nc                                        ; $57A4: $D0

    jr nz, @-$02                                  ; $57A5: $20 $FC

    ld b, b                                       ; $57A7: $40
    cp $DC                                        ; $57A8: $FE $DC
    rst $38                                       ; $57AA: $FF
    sbc $FF                                       ; $57AB: $DE $FF
    adc h                                         ; $57AD: $8C
    rst $38                                       ; $57AE: $FF
    ld [$8070], sp                                ; $57AF: $08 $70 $80
    ldh a, [rP1]                                  ; $57B2: $F0 $00
    ret nc                                        ; $57B4: $D0

    jr nz, jr_00D_5797                            ; $57B5: $20 $E0

    ld b, b                                       ; $57B7: $40
    db $FC                                        ; $57B8: $FC
    ret nz                                        ; $57B9: $C0

    cp $9C                                        ; $57BA: $FE $9C
    rst $38                                       ; $57BC: $FF
    ld a, $FF                                     ; $57BD: $3E $FF
    ld l, h                                       ; $57BF: $6C
    nop                                           ; $57C0: $00
    nop                                           ; $57C1: $00
    nop                                           ; $57C2: $00
    nop                                           ; $57C3: $00
    inc a                                         ; $57C4: $3C
    nop                                           ; $57C5: $00
    ld a, [hl]                                    ; $57C6: $7E
    nop                                           ; $57C7: $00
    ld a, [hl]                                    ; $57C8: $7E
    nop                                           ; $57C9: $00
    rst $38                                       ; $57CA: $FF
    nop                                           ; $57CB: $00
    rst $38                                       ; $57CC: $FF
    nop                                           ; $57CD: $00
    rst $38                                       ; $57CE: $FF

jr_00D_57CF:
    inc h                                         ; $57CF: $24
    and l                                         ; $57D0: $A5
    ld a, [hl]                                    ; $57D1: $7E
    db $DB                                        ; $57D2: $DB
    ld a, [hl]                                    ; $57D3: $7E
    rst $20                                       ; $57D4: $E7
    ld a, [hl]                                    ; $57D5: $7E
    db $DB                                        ; $57D6: $DB
    ld h, [hl]                                    ; $57D7: $66
    cp l                                          ; $57D8: $BD
    ld e, d                                       ; $57D9: $5A
    cp l                                          ; $57DA: $BD
    ld e, d                                       ; $57DB: $5A
    cp l                                          ; $57DC: $BD
    ld e, d                                       ; $57DD: $5A
    ld a, [hl]                                    ; $57DE: $7E
    nop                                           ; $57DF: $00
    nop                                           ; $57E0: $00

jr_00D_57E1:
    nop                                           ; $57E1: $00

jr_00D_57E2:
    nop                                           ; $57E2: $00
    nop                                           ; $57E3: $00
    nop                                           ; $57E4: $00
    nop                                           ; $57E5: $00
    ldh [rP1], a                                  ; $57E6: $E0 $00
    ldh a, [rP1]                                  ; $57E8: $F0 $00
    ld hl, sp+$00                                 ; $57EA: $F8 $00
    ld hl, sp+$00                                 ; $57EC: $F8 $00
    ld hl, sp+$20                                 ; $57EE: $F8 $20
    jr z, jr_00D_57E2                             ; $57F0: $28 $F0

    ret c                                         ; $57F2: $D8

    ldh a, [$38]                                  ; $57F3: $F0 $38
    ldh a, [$D8]                                  ; $57F5: $F0 $D8
    jr nc, jr_00D_57E1                            ; $57F7: $30 $E8

    ret nc                                        ; $57F9: $D0

    add sp, -$30                                  ; $57FA: $E8 $D0
    add sp, -$30                                  ; $57FC: $E8 $D0
    ldh a, [rP1]                                  ; $57FE: $F0 $00
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    nop                                           ; $5805: $00
    rlca                                          ; $5806: $07
    nop                                           ; $5807: $00
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    jr jr_00D_580C                                ; $580A: $18 $00

jr_00D_580C:
    rrca                                          ; $580C: $0F
    nop                                           ; $580D: $00
    ld b, a                                       ; $580E: $47
    nop                                           ; $580F: $00
    nop                                           ; $5810: $00
    nop                                           ; $5811: $00
    nop                                           ; $5812: $00
    nop                                           ; $5813: $00
    nop                                           ; $5814: $00
    nop                                           ; $5815: $00
    ld b, b                                       ; $5816: $40
    nop                                           ; $5817: $00
    ld [$6000], sp                                ; $5818: $08 $00 $60
    nop                                           ; $581B: $00
    ld b, $00                                     ; $581C: $06 $00
    db $FC                                        ; $581E: $FC
    nop                                           ; $581F: $00
    rrca                                          ; $5820: $0F
    nop                                           ; $5821: $00
    ld a, a                                       ; $5822: $7F
    nop                                           ; $5823: $00
    rra                                           ; $5824: $1F
    nop                                           ; $5825: $00
    ld bc, $7300                                  ; $5826: $01 $00 $73
    nop                                           ; $5829: $00
    ei                                            ; $582A: $FB
    nop                                           ; $582B: $00
    ld [hl], b                                    ; $582C: $70
    nop                                           ; $582D: $00
    nop                                           ; $582E: $00
    nop                                           ; $582F: $00
    ld hl, sp+$00                                 ; $5830: $F8 $00
    db $FC                                        ; $5832: $FC
    nop                                           ; $5833: $00
    ld hl, sp+$00                                 ; $5834: $F8 $00
    cp $00                                        ; $5836: $FE $00
    adc a                                         ; $5838: $8F
    nop                                           ; $5839: $00
    jr nc, jr_00D_583C                            ; $583A: $30 $00

jr_00D_583C:
    nop                                           ; $583C: $00
    nop                                           ; $583D: $00
    nop                                           ; $583E: $00
    nop                                           ; $583F: $00
    and l                                         ; $5840: $A5
    ld a, [hl]                                    ; $5841: $7E
    db $DB                                        ; $5842: $DB
    ld a, [hl]                                    ; $5843: $7E
    rst $20                                       ; $5844: $E7
    ld a, [hl]                                    ; $5845: $7E
    db $DB                                        ; $5846: $DB
    ld h, [hl]                                    ; $5847: $66
    cp l                                          ; $5848: $BD
    ld e, d                                       ; $5849: $5A
    cp l                                          ; $584A: $BD
    ld e, d                                       ; $584B: $5A
    cp l                                          ; $584C: $BD
    ld e, d                                       ; $584D: $5A
    ld a, [hl]                                    ; $584E: $7E
    nop                                           ; $584F: $00
    rst $38                                       ; $5850: $FF
    nop                                           ; $5851: $00
    rst $38                                       ; $5852: $FF
    nop                                           ; $5853: $00
    rst $38                                       ; $5854: $FF
    nop                                           ; $5855: $00
    rst $38                                       ; $5856: $FF
    nop                                           ; $5857: $00
    rst $38                                       ; $5858: $FF
    nop                                           ; $5859: $00
    rst $38                                       ; $585A: $FF
    nop                                           ; $585B: $00
    rst $38                                       ; $585C: $FF
    nop                                           ; $585D: $00
    rst $38                                       ; $585E: $FF
    inc h                                         ; $585F: $24
    rst $38                                       ; $5860: $FF
    nop                                           ; $5861: $00
    rst $38                                       ; $5862: $FF
    nop                                           ; $5863: $00
    rst $38                                       ; $5864: $FF
    nop                                           ; $5865: $00
    rst $38                                       ; $5866: $FF
    nop                                           ; $5867: $00
    rst $38                                       ; $5868: $FF
    nop                                           ; $5869: $00
    rst $38                                       ; $586A: $FF
    nop                                           ; $586B: $00
    rst $38                                       ; $586C: $FF
    nop                                           ; $586D: $00
    rst $38                                       ; $586E: $FF
    nop                                           ; $586F: $00
    db $10                                        ; $5870: $10
    db $10                                        ; $5871: $10
    ld c, b                                       ; $5872: $48
    ld c, b                                       ; $5873: $48
    inc d                                         ; $5874: $14
    inc d                                         ; $5875: $14
    ld c, c                                       ; $5876: $49
    ld c, c                                       ; $5877: $49
    ld [hl], $34                                  ; $5878: $36 $34
    ld l, c                                       ; $587A: $69
    ld l, b                                       ; $587B: $68
    db $FD                                        ; $587C: $FD
    push de                                       ; $587D: $D5
    ld a, a                                       ; $587E: $7F
    ld d, [hl]                                    ; $587F: $56
    rst $38                                       ; $5880: $FF
    xor e                                         ; $5881: $AB
    rst $38                                       ; $5882: $FF
    ld h, h                                       ; $5883: $64
    rst $38                                       ; $5884: $FF
    ld a, [hl+]                                   ; $5885: $2A
    rst $38                                       ; $5886: $FF
    db $10                                        ; $5887: $10
    rst $38                                       ; $5888: $FF
    ld b, b                                       ; $5889: $40
    rst $38                                       ; $588A: $FF
    inc b                                         ; $588B: $04
    rst $38                                       ; $588C: $FF
    nop                                           ; $588D: $00
    rst $38                                       ; $588E: $FF
    nop                                           ; $588F: $00
    nop                                           ; $5890: $00
    nop                                           ; $5891: $00
    nop                                           ; $5892: $00
    nop                                           ; $5893: $00
    nop                                           ; $5894: $00
    nop                                           ; $5895: $00
    ld [bc], a                                    ; $5896: $02
    ld [bc], a                                    ; $5897: $02
    ld b, b                                       ; $5898: $40
    ld b, b                                       ; $5899: $40
    ld [$5108], sp                                ; $589A: $08 $08 $51
    ld d, c                                       ; $589D: $51
    ld [$F5A0], a                                 ; $589E: $EA $A0 $F5
    ret nc                                        ; $58A1: $D0

    rst $28                                       ; $58A2: $EF
    ld c, l                                       ; $58A3: $4D
    rst $38                                       ; $58A4: $FF
    xor [hl]                                      ; $58A5: $AE
    rst $38                                       ; $58A6: $FF
    ld h, l                                       ; $58A7: $65
    rst $38                                       ; $58A8: $FF
    ld [de], a                                    ; $58A9: $12
    rst $38                                       ; $58AA: $FF
    inc h                                         ; $58AB: $24
    rst $38                                       ; $58AC: $FF
    db $10                                        ; $58AD: $10
    rst $38                                       ; $58AE: $FF
    nop                                           ; $58AF: $00
    ccf                                           ; $58B0: $3F
    nop                                           ; $58B1: $00
    ld b, b                                       ; $58B2: $40
    ccf                                           ; $58B3: $3F
    adc e                                         ; $58B4: $8B
    ld a, a                                       ; $58B5: $7F
    xor a                                         ; $58B6: $AF
    ld [hl], h                                    ; $58B7: $74
    cp a                                          ; $58B8: $BF
    ld [hl], b                                    ; $58B9: $70
    cp a                                          ; $58BA: $BF
    ld h, b                                       ; $58BB: $60
    cp a                                          ; $58BC: $BF
    ld b, b                                       ; $58BD: $40
    cp a                                          ; $58BE: $BF
    ld h, b                                       ; $58BF: $60
    ccf                                           ; $58C0: $3F
    nop                                           ; $58C1: $00
    ld b, b                                       ; $58C2: $40
    ccf                                           ; $58C3: $3F
    adc e                                         ; $58C4: $8B
    ld a, a                                       ; $58C5: $7F
    xor a                                         ; $58C6: $AF
    ld [hl], h                                    ; $58C7: $74
    cp l                                          ; $58C8: $BD
    ld [hl], d                                    ; $58C9: $72
    cp e                                          ; $58CA: $BB
    ld h, [hl]                                    ; $58CB: $66
    or a                                          ; $58CC: $B7
    ld c, h                                       ; $58CD: $4C
    or c                                          ; $58CE: $B1
    ld l, [hl]                                    ; $58CF: $6E
    sbc a                                         ; $58D0: $9F
    ld [hl], b                                    ; $58D1: $70
    rst $08                                       ; $58D2: $CF
    ccf                                           ; $58D3: $3F
    ldh [$1F], a                                  ; $58D4: $E0 $1F
    ld a, a                                       ; $58D6: $7F
    nop                                           ; $58D7: $00
    ld a, a                                       ; $58D8: $7F
    nop                                           ; $58D9: $00
    ld a, a                                       ; $58DA: $7F
    rra                                           ; $58DB: $1F
    ld h, b                                       ; $58DC: $60
    ccf                                           ; $58DD: $3F
    ld a, a                                       ; $58DE: $7F
    nop                                           ; $58DF: $00
    ld b, $00                                     ; $58E0: $06 $00
    dec c                                         ; $58E2: $0D
    ld [bc], a                                    ; $58E3: $02
    dec de                                        ; $58E4: $1B
    ld b, $17                                     ; $58E5: $06 $17
    inc c                                         ; $58E7: $0C
    ld de, $180E                                  ; $58E8: $11 $0E $18
    rrca                                          ; $58EB: $0F
    rrca                                          ; $58EC: $0F
    rlca                                          ; $58ED: $07
    rlca                                          ; $58EE: $07
    nop                                           ; $58EF: $00
    ld b, $00                                     ; $58F0: $06 $00
    rrca                                          ; $58F2: $0F
    ld [bc], a                                    ; $58F3: $02
    rra                                           ; $58F4: $1F
    ld b, $1F                                     ; $58F5: $06 $1F
    inc c                                         ; $58F7: $0C
    dec e                                         ; $58F8: $1D
    ld c, $18                                     ; $58F9: $0E $18
    rrca                                          ; $58FB: $0F
    rrca                                          ; $58FC: $0F
    rlca                                          ; $58FD: $07
    rlca                                          ; $58FE: $07
    nop                                           ; $58FF: $00
    ld b, $00                                     ; $5900: $06 $00
    dec c                                         ; $5902: $0D
    ld [bc], a                                    ; $5903: $02
    dec de                                        ; $5904: $1B
    ld b, $17                                     ; $5905: $06 $17
    inc c                                         ; $5907: $0C
    inc de                                        ; $5908: $13
    ld c, $1F                                     ; $5909: $0E $1F
    rrca                                          ; $590B: $0F
    rrca                                          ; $590C: $0F
    rlca                                          ; $590D: $07
    rlca                                          ; $590E: $07
    nop                                           ; $590F: $00
    ld h, b                                       ; $5910: $60
    nop                                           ; $5911: $00
    or b                                          ; $5912: $B0
    ld b, b                                       ; $5913: $40
    ld hl, sp+$60                                 ; $5914: $F8 $60
    add sp, $30                                   ; $5916: $E8 $30

jr_00D_5918:
    add sp, $70                                   ; $5918: $E8 $70
    ret c                                         ; $591A: $D8

    ldh a, [$F0]                                  ; $591B: $F0 $F0
    ldh [$E0], a                                  ; $591D: $E0 $E0
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
    jr c, jr_00D_592C                             ; $592A: $38 $00

jr_00D_592C:
    ld a, h                                       ; $592C: $7C
    jr c, @+$01                                   ; $592D: $38 $FF

    ld h, b                                       ; $592F: $60
    inc bc                                        ; $5930: $03
    nop                                           ; $5931: $00
    rlca                                          ; $5932: $07
    nop                                           ; $5933: $00
    rlca                                          ; $5934: $07
    inc bc                                        ; $5935: $03
    rlca                                          ; $5936: $07
    inc bc                                        ; $5937: $03
    rlca                                          ; $5938: $07
    inc bc                                        ; $5939: $03
    inc bc                                        ; $593A: $03
    ld bc, $0107                                  ; $593B: $01 $07 $01
    rrca                                          ; $593E: $0F
    nop                                           ; $593F: $00
    add e                                         ; $5940: $83
    ld a, h                                       ; $5941: $7C
    add b                                         ; $5942: $80
    rst $38                                       ; $5943: $FF
    ret nz                                        ; $5944: $C0

    ld a, a                                       ; $5945: $7F
    ldh [$BF], a                                  ; $5946: $E0 $BF
    ldh a, [$DF]                                  ; $5948: $F0 $DF
    ld hl, sp-$11                                 ; $594A: $F8 $EF
    cp $F3                                        ; $594C: $FE $F3
    rst $38                                       ; $594E: $FF
    cp h                                          ; $594F: $BC
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    add b                                         ; $5952: $80
    nop                                           ; $5953: $00
    ld b, b                                       ; $5954: $40
    add b                                         ; $5955: $80
    jr nz, jr_00D_5918                            ; $5956: $20 $C0

    db $10                                        ; $5958: $10
    ldh [$30], a                                  ; $5959: $E0 $30
    ldh [$78], a                                  ; $595B: $E0 $78
    ret nc                                        ; $595D: $D0

    db $FC                                        ; $595E: $FC
    jr nc, jr_00D_5974                            ; $595F: $30 $13

    ld c, $19                                     ; $5961: $0E $19
    rrca                                          ; $5963: $0F
    inc e                                         ; $5964: $1C
    rrca                                          ; $5965: $0F
    ld e, $0F                                     ; $5966: $1E $0F
    rra                                           ; $5968: $1F
    ld c, $0F                                     ; $5969: $0E $0F
    inc b                                         ; $596B: $04
    rrca                                          ; $596C: $0F
    inc b                                         ; $596D: $04
    rlca                                          ; $596E: $07
    nop                                           ; $596F: $00
    rst $38                                       ; $5970: $FF
    ld b, a                                       ; $5971: $47
    rst $30                                       ; $5972: $F7
    dec bc                                        ; $5973: $0B

jr_00D_5974:
    ei                                            ; $5974: $FB
    add l                                         ; $5975: $85
    ld a, c                                       ; $5976: $79
    sub $FF                                       ; $5977: $D6 $FF
    ld [$07FF], sp                                ; $5979: $08 $FF $07
    rst $38                                       ; $597C: $FF
    nop                                           ; $597D: $00
    ret nz                                        ; $597E: $C0

    nop                                           ; $597F: $00
    ld a, [$FEF4]                                 ; $5980: $FA $F4 $FE
    db $E4                                        ; $5983: $E4
    db $ED                                        ; $5984: $ED
    sub $DF                                       ; $5985: $D6 $DF
    and d                                         ; $5987: $A2
    rst $38                                       ; $5988: $FF
    nop                                           ; $5989: $00
    cp $80                                        ; $598A: $FE $80
    ldh [rP1], a                                  ; $598C: $E0 $00
    nop                                           ; $598E: $00
    nop                                           ; $598F: $00
    ld bc, $0601                                  ; $5990: $01 $01 $06
    ld b, $0C                                     ; $5993: $06 $0C
    inc c                                         ; $5995: $0C
    inc e                                         ; $5996: $1C
    inc e                                         ; $5997: $1C
    jr c, jr_00D_59D2                             ; $5998: $38 $38

    jr z, jr_00D_59D4                             ; $599A: $28 $38

    ld l, b                                       ; $599C: $68
    ld a, b                                       ; $599D: $78
    add hl, bc                                    ; $599E: $09
    rrca                                          ; $599F: $0F
    inc c                                         ; $59A0: $0C
    rrca                                          ; $59A1: $0F
    ld a, [de]                                    ; $59A2: $1A
    rra                                           ; $59A3: $1F
    inc d                                         ; $59A4: $14
    rra                                           ; $59A5: $1F
    add hl, de                                    ; $59A6: $19
    rra                                           ; $59A7: $1F
    db $10                                        ; $59A8: $10
    rra                                           ; $59A9: $1F
    inc d                                         ; $59AA: $14
    ld e, $10                                     ; $59AB: $1E $10
    inc e                                         ; $59AD: $1C
    db $10                                        ; $59AE: $10
    inc e                                         ; $59AF: $1C
    jr nc, jr_00D_59EA                            ; $59B0: $30 $38

    jr nc, jr_00D_59EC                            ; $59B2: $30 $38

    jr c, jr_00D_59EE                             ; $59B4: $38 $38

    jr c, jr_00D_59F0                             ; $59B6: $38 $38

    ld a, h                                       ; $59B8: $7C
    ld a, h                                       ; $59B9: $7C
    ld a, b                                       ; $59BA: $78
    ld a, b                                       ; $59BB: $78
    ld [hl], b                                    ; $59BC: $70
    ld [hl], b                                    ; $59BD: $70
    jr nz, @+$22                                  ; $59BE: $20 $20

    add b                                         ; $59C0: $80
    add b                                         ; $59C1: $80
    ret nz                                        ; $59C2: $C0

    ret nz                                        ; $59C3: $C0

    ld [hl], c                                    ; $59C4: $71
    pop af                                        ; $59C5: $F1
    cp e                                          ; $59C6: $BB
    ei                                            ; $59C7: $FB
    ld c, $FF                                     ; $59C8: $0E $FF
    dec b                                         ; $59CA: $05
    rra                                           ; $59CB: $1F
    nop                                           ; $59CC: $00
    rrca                                          ; $59CD: $0F
    nop                                           ; $59CE: $00
    inc bc                                        ; $59CF: $03
    add b                                         ; $59D0: $80
    add b                                         ; $59D1: $80

jr_00D_59D2:
    add b                                         ; $59D2: $80
    add b                                         ; $59D3: $80

jr_00D_59D4:
    ret nz                                        ; $59D4: $C0

    ret nz                                        ; $59D5: $C0

    ret z                                         ; $59D6: $C8

    ret z                                         ; $59D7: $C8

    ld l, b                                       ; $59D8: $68
    add sp, $38                                   ; $59D9: $E8 $38
    ld hl, sp+$30                                 ; $59DB: $F8 $30
    ldh a, [rNR10]                                ; $59DD: $F0 $10
    ldh a, [$A0]                                  ; $59DF: $F0 $A0
    ldh [rLCDC], a                                ; $59E1: $E0 $40
    ret nz                                        ; $59E3: $C0

    ld b, b                                       ; $59E4: $40
    ld b, b                                       ; $59E5: $40
    nop                                           ; $59E6: $00
    nop                                           ; $59E7: $00
    nop                                           ; $59E8: $00
    nop                                           ; $59E9: $00

jr_00D_59EA:
    nop                                           ; $59EA: $00
    nop                                           ; $59EB: $00

jr_00D_59EC:
    nop                                           ; $59EC: $00
    nop                                           ; $59ED: $00

jr_00D_59EE:
    nop                                           ; $59EE: $00
    nop                                           ; $59EF: $00

jr_00D_59F0:
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
    jr nz, jr_00D_5A20                            ; $59FE: $20 $20

    jr nz, jr_00D_5A22                            ; $5A00: $20 $20

    ld sp, $2B31                                  ; $5A02: $31 $31 $2B
    dec sp                                        ; $5A05: $3B
    ld h, $3F                                     ; $5A06: $26 $3F
    add hl, hl                                    ; $5A08: $29
    ccf                                           ; $5A09: $3F
    inc d                                         ; $5A0A: $14
    rra                                           ; $5A0B: $1F
    db $10                                        ; $5A0C: $10
    rra                                           ; $5A0D: $1F
    db $10                                        ; $5A0E: $10
    inc e                                         ; $5A0F: $1C
    db $10                                        ; $5A10: $10
    inc e                                         ; $5A11: $1C
    jr nc, jr_00D_5A4C                            ; $5A12: $30 $38

    jr nc, @+$3A                                  ; $5A14: $30 $38

    jr c, @+$3A                                   ; $5A16: $38 $38

    jr c, @+$3A                                   ; $5A18: $38 $38

    ld a, h                                       ; $5A1A: $7C
    ld a, h                                       ; $5A1B: $7C
    ld a, b                                       ; $5A1C: $78
    ld a, b                                       ; $5A1D: $78
    ld [hl], b                                    ; $5A1E: $70
    ld [hl], b                                    ; $5A1F: $70

jr_00D_5A20:
    nop                                           ; $5A20: $00
    nop                                           ; $5A21: $00

jr_00D_5A22:
    nop                                           ; $5A22: $00
    nop                                           ; $5A23: $00
    ld b, b                                       ; $5A24: $40
    ld b, b                                       ; $5A25: $40
    ld b, b                                       ; $5A26: $40
    ld b, b                                       ; $5A27: $40
    ld h, b                                       ; $5A28: $60
    ld h, b                                       ; $5A29: $60
    ld h, b                                       ; $5A2A: $60
    ld h, b                                       ; $5A2B: $60
    ld [hl], b                                    ; $5A2C: $70
    ld [hl], b                                    ; $5A2D: $70
    ret c                                         ; $5A2E: $D8

    ld hl, sp-$64                                 ; $5A2F: $F8 $9C
    db $FC                                        ; $5A31: $FC
    and a                                         ; $5A32: $A7
    rst $38                                       ; $5A33: $FF
    ld c, e                                       ; $5A34: $4B
    rst $38                                       ; $5A35: $FF
    inc d                                         ; $5A36: $14
    rst $38                                       ; $5A37: $FF
    ld bc, $04FF                                  ; $5A38: $01 $FF $04
    sbc a                                         ; $5A3B: $9F
    nop                                           ; $5A3C: $00
    rrca                                          ; $5A3D: $0F
    nop                                           ; $5A3E: $00
    inc bc                                        ; $5A3F: $03
    ld [$1808], sp                                ; $5A40: $08 $08 $18
    jr jr_00D_5A5D                                ; $5A43: $18 $18

    jr @+$3A                                      ; $5A45: $18 $38

    jr c, jr_00D_5A81                             ; $5A47: $38 $38

    jr c, jr_00D_5AB3                             ; $5A49: $38 $68

    ld a, b                                       ; $5A4B: $78

jr_00D_5A4C:
    ret nc                                        ; $5A4C: $D0

    ldh a, [$90]                                  ; $5A4D: $F0 $90
    ldh a, [$30]                                  ; $5A4F: $F0 $30
    ldh a, [$60]                                  ; $5A51: $F0 $60
    ldh [$60], a                                  ; $5A53: $E0 $60
    ldh [rLCDC], a                                ; $5A55: $E0 $40
    ret nz                                        ; $5A57: $C0

    ld b, b                                       ; $5A58: $40
    ret nz                                        ; $5A59: $C0

    ld b, b                                       ; $5A5A: $40
    ret nz                                        ; $5A5B: $C0

    ld b, b                                       ; $5A5C: $40

jr_00D_5A5D:
    ret nz                                        ; $5A5D: $C0

    ld b, b                                       ; $5A5E: $40
    ld b, b                                       ; $5A5F: $40
    nop                                           ; $5A60: $00
    nop                                           ; $5A61: $00
    nop                                           ; $5A62: $00
    nop                                           ; $5A63: $00
    nop                                           ; $5A64: $00
    nop                                           ; $5A65: $00
    nop                                           ; $5A66: $00
    nop                                           ; $5A67: $00
    ld h, b                                       ; $5A68: $60
    ld h, b                                       ; $5A69: $60
    jr c, jr_00D_5AA4                             ; $5A6A: $38 $38

    inc e                                         ; $5A6C: $1C
    inc e                                         ; $5A6D: $1C
    ld c, $0E                                     ; $5A6E: $0E $0E
    dec bc                                        ; $5A70: $0B
    rrca                                          ; $5A71: $0F
    add hl, de                                    ; $5A72: $19
    rra                                           ; $5A73: $1F
    add hl, sp                                    ; $5A74: $39
    ccf                                           ; $5A75: $3F
    ld [hl], d                                    ; $5A76: $72
    ld a, a                                       ; $5A77: $7F
    ld l, b                                       ; $5A78: $68
    ld a, a                                       ; $5A79: $7F
    inc [hl]                                      ; $5A7A: $34
    ccf                                           ; $5A7B: $3F
    jr c, jr_00D_5ABC                             ; $5A7C: $38 $3E

    jr jr_00D_5A9C                                ; $5A7E: $18 $1C

    db $10                                        ; $5A80: $10

jr_00D_5A81:
    inc e                                         ; $5A81: $1C
    jr nc, jr_00D_5ABC                            ; $5A82: $30 $38

    jr nc, jr_00D_5ABE                            ; $5A84: $30 $38

    jr c, jr_00D_5AC0                             ; $5A86: $38 $38

    jr c, jr_00D_5AC2                             ; $5A88: $38 $38

    ld a, h                                       ; $5A8A: $7C
    ld a, h                                       ; $5A8B: $7C
    ld a, b                                       ; $5A8C: $78
    ld a, b                                       ; $5A8D: $78
    ld [hl], b                                    ; $5A8E: $70
    ld [hl], b                                    ; $5A8F: $70
    nop                                           ; $5A90: $00
    nop                                           ; $5A91: $00
    nop                                           ; $5A92: $00
    nop                                           ; $5A93: $00
    ld bc, $0101                                  ; $5A94: $01 $01 $01
    ld bc, $0101                                  ; $5A97: $01 $01 $01
    jr nz, jr_00D_5ABC                            ; $5A9A: $20 $20

jr_00D_5A9C:
    jr nc, @+$32                                  ; $5A9C: $30 $30

    jr nc, @+$32                                  ; $5A9E: $30 $30

    ld a, b                                       ; $5AA0: $78
    ld a, b                                       ; $5AA1: $78
    add sp, -$08                                  ; $5AA2: $E8 $F8

jr_00D_5AA4:
    call $97FD                                    ; $5AA4: $CD $FD $97
    rst $38                                       ; $5AA7: $FF
    rlca                                          ; $5AA8: $07
    rst $38                                       ; $5AA9: $FF
    inc b                                         ; $5AAA: $04
    rra                                           ; $5AAB: $1F
    ld [bc], a                                    ; $5AAC: $02
    rrca                                          ; $5AAD: $0F
    nop                                           ; $5AAE: $00
    inc bc                                        ; $5AAF: $03
    nop                                           ; $5AB0: $00
    nop                                           ; $5AB1: $00
    nop                                           ; $5AB2: $00

jr_00D_5AB3:
    nop                                           ; $5AB3: $00
    nop                                           ; $5AB4: $00
    nop                                           ; $5AB5: $00
    add b                                         ; $5AB6: $80
    add b                                         ; $5AB7: $80
    ret nz                                        ; $5AB8: $C0

    ret nz                                        ; $5AB9: $C0

    ldh [$E0], a                                  ; $5ABA: $E0 $E0

jr_00D_5ABC:
    ldh a, [$F0]                                  ; $5ABC: $F0 $F0

jr_00D_5ABE:
    ld [hl], b                                    ; $5ABE: $70
    ld [hl], b                                    ; $5ABF: $70

jr_00D_5AC0:
    ld e, b                                       ; $5AC0: $58
    ld a, b                                       ; $5AC1: $78

jr_00D_5AC2:
    ret z                                         ; $5AC2: $C8

    ld hl, sp-$28                                 ; $5AC3: $F8 $D8
    ld hl, sp-$34                                 ; $5AC5: $F8 $CC
    db $FC                                        ; $5AC7: $FC
    inc l                                         ; $5AC8: $2C
    db $FC                                        ; $5AC9: $FC
    sbc b                                         ; $5ACA: $98
    ld hl, sp+$30                                 ; $5ACB: $F8 $30
    ldh a, [rNR41]                                ; $5ACD: $F0 $20
    ldh [$38], a                                  ; $5ACF: $E0 $38
    jr c, jr_00D_5AF2                             ; $5AD1: $38 $1F

    rra                                           ; $5AD3: $1F
    rlca                                          ; $5AD4: $07
    rlca                                          ; $5AD5: $07
    ld bc, $0001                                  ; $5AD6: $01 $01 $00
    nop                                           ; $5AD9: $00
    nop                                           ; $5ADA: $00
    nop                                           ; $5ADB: $00
    jp Jump_00D_7FC3                              ; $5ADC: $C3 $C3 $7F


    ld a, a                                       ; $5ADF: $7F
    nop                                           ; $5AE0: $00
    nop                                           ; $5AE1: $00
    nop                                           ; $5AE2: $00
    nop                                           ; $5AE3: $00
    ldh a, [$F0]                                  ; $5AE4: $F0 $F0
    ld a, [hl]                                    ; $5AE6: $7E
    cp $8B                                        ; $5AE7: $FE $8B
    rst $38                                       ; $5AE9: $FF
    rst $00                                       ; $5AEA: $C7
    rst $38                                       ; $5AEB: $FF
    ld [c], a                                     ; $5AEC: $E2
    cp $08                                        ; $5AED: $FE $08
    db $FC                                        ; $5AEF: $FC
    inc a                                         ; $5AF0: $3C
    ccf                                           ; $5AF1: $3F

jr_00D_5AF2:
    rra                                           ; $5AF2: $1F
    rra                                           ; $5AF3: $1F
    rrca                                          ; $5AF4: $0F
    rrca                                          ; $5AF5: $0F
    rlca                                          ; $5AF6: $07
    rlca                                          ; $5AF7: $07
    inc bc                                        ; $5AF8: $03
    inc bc                                        ; $5AF9: $03
    ld bc, $0001                                  ; $5AFA: $01 $01 $00
    nop                                           ; $5AFD: $00
    nop                                           ; $5AFE: $00
    nop                                           ; $5AFF: $00
    ldh a, [$FC]                                  ; $5B00: $F0 $FC
    nop                                           ; $5B02: $00
    ld hl, sp-$40                                 ; $5B03: $F8 $C0
    ld hl, sp-$10                                 ; $5B05: $F8 $F0
    ld hl, sp-$08                                 ; $5B07: $F8 $F8
    ld hl, sp-$04                                 ; $5B09: $F8 $FC
    db $FC                                        ; $5B0B: $FC
    ld hl, sp-$08                                 ; $5B0C: $F8 $F8
    ld [hl], b                                    ; $5B0E: $70
    ld [hl], b                                    ; $5B0F: $70
    ld a, h                                       ; $5B10: $7C
    ld a, h                                       ; $5B11: $7C
    rrca                                          ; $5B12: $0F
    rrca                                          ; $5B13: $0F
    inc bc                                        ; $5B14: $03
    inc bc                                        ; $5B15: $03
    ld bc, $0001                                  ; $5B16: $01 $01 $00
    nop                                           ; $5B19: $00
    nop                                           ; $5B1A: $00
    nop                                           ; $5B1B: $00
    db $10                                        ; $5B1C: $10
    db $10                                        ; $5B1D: $10
    ld [$0008], sp                                ; $5B1E: $08 $08 $00
    nop                                           ; $5B21: $00
    add b                                         ; $5B22: $80
    add b                                         ; $5B23: $80
    ldh a, [$F0]                                  ; $5B24: $F0 $F0
    cp [hl]                                       ; $5B26: $BE
    cp $DF                                        ; $5B27: $FE $DF
    rst $38                                       ; $5B29: $FF
    ld h, a                                       ; $5B2A: $67
    ld a, a                                       ; $5B2B: $7F
    ld l, b                                       ; $5B2C: $68
    ld a, [hl]                                    ; $5B2D: $7E
    ld h, h                                       ; $5B2E: $64
    ld a, h                                       ; $5B2F: $7C
    inc c                                         ; $5B30: $0C
    inc c                                         ; $5B31: $0C
    rlca                                          ; $5B32: $07
    rlca                                          ; $5B33: $07
    add [hl]                                      ; $5B34: $86
    add a                                         ; $5B35: $87
    ld h, e                                       ; $5B36: $63
    ld h, e                                       ; $5B37: $63
    ccf                                           ; $5B38: $3F
    ccf                                           ; $5B39: $3F
    ld a, [hl-]                                   ; $5B3A: $3A
    ccf                                           ; $5B3B: $3F
    rrca                                          ; $5B3C: $0F
    rrca                                          ; $5B3D: $0F
    ld bc, $0F01                                  ; $5B3E: $01 $01 $0F
    rrca                                          ; $5B41: $0F
    ld a, a                                       ; $5B42: $7F
    ld a, a                                       ; $5B43: $7F
    ei                                            ; $5B44: $FB
    rst $38                                       ; $5B45: $FF
    inc a                                         ; $5B46: $3C
    ccf                                           ; $5B47: $3F
    ld c, $0F                                     ; $5B48: $0E $0F
    rlca                                          ; $5B4A: $07
    rlca                                          ; $5B4B: $07
    inc bc                                        ; $5B4C: $03
    inc bc                                        ; $5B4D: $03
    ld b, c                                       ; $5B4E: $41
    ld b, c                                       ; $5B4F: $41
    add b                                         ; $5B50: $80
    add b                                         ; $5B51: $80
    ldh a, [$F0]                                  ; $5B52: $F0 $F0
    db $FC                                        ; $5B54: $FC
    db $FC                                        ; $5B55: $FC
    ld a, [hl]                                    ; $5B56: $7E
    cp $2F                                        ; $5B57: $FE $2F
    rst $38                                       ; $5B59: $FF
    add e                                         ; $5B5A: $83
    rst $38                                       ; $5B5B: $FF
    ld d, b                                       ; $5B5C: $50
    cp $E8                                        ; $5B5D: $FE $E8
    db $FC                                        ; $5B5F: $FC
    ccf                                           ; $5B60: $3F
    ccf                                           ; $5B61: $3F
    add hl, de                                    ; $5B62: $19
    rra                                           ; $5B63: $1F
    ld e, $1F                                     ; $5B64: $1E $1F
    rrca                                          ; $5B66: $0F
    rrca                                          ; $5B67: $0F
    rlca                                          ; $5B68: $07
    rlca                                          ; $5B69: $07
    inc bc                                        ; $5B6A: $03
    inc bc                                        ; $5B6B: $03
    ld bc, $0001                                  ; $5B6C: $01 $01 $00
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
    rlca                                          ; $5B79: $07
    inc b                                         ; $5B7A: $04
    inc c                                         ; $5B7B: $0C
    nop                                           ; $5B7C: $00
    db $10                                        ; $5B7D: $10
    ld [$0018], sp                                ; $5B7E: $08 $18 $00
    nop                                           ; $5B81: $00
    nop                                           ; $5B82: $00
    nop                                           ; $5B83: $00
    nop                                           ; $5B84: $00
    nop                                           ; $5B85: $00
    nop                                           ; $5B86: $00
    nop                                           ; $5B87: $00
    nop                                           ; $5B88: $00
    ret nz                                        ; $5B89: $C0

    ld b, b                                       ; $5B8A: $40
    ld h, b                                       ; $5B8B: $60
    jr nz, jr_00D_5BBE                            ; $5B8C: $20 $30

    ld [hl], b                                    ; $5B8E: $70
    ld a, b                                       ; $5B8F: $78
    dec c                                         ; $5B90: $0D
    dec e                                         ; $5B91: $1D
    rrca                                          ; $5B92: $0F
    rra                                           ; $5B93: $1F
    ld b, $2F                                     ; $5B94: $06 $2F
    jr z, @+$71                                   ; $5B96: $28 $6F

    db $10                                        ; $5B98: $10
    ld sp, $5C00                                  ; $5B99: $31 $00 $5C
    nop                                           ; $5B9C: $00
    ld a, [hl+]                                   ; $5B9D: $2A
    nop                                           ; $5B9E: $00
    nop                                           ; $5B9F: $00
    ret nc                                        ; $5BA0: $D0

    ld hl, sp+$10                                 ; $5BA1: $F8 $10
    ld hl, sp-$20                                 ; $5BA3: $F8 $E0
    db $FC                                        ; $5BA5: $FC
    nop                                           ; $5BA6: $00
    ld a, [$FCD0]                                 ; $5BA7: $FA $D0 $FC
    nop                                           ; $5BAA: $00
    ld a, [c]                                     ; $5BAB: $F2
    nop                                           ; $5BAC: $00
    inc c                                         ; $5BAD: $0C

jr_00D_5BAE:
    nop                                           ; $5BAE: $00
    nop                                           ; $5BAF: $00
    jr jr_00D_5BEA                                ; $5BB0: $18 $38

    inc c                                         ; $5BB2: $0C
    ld c, h                                       ; $5BB3: $4C
    ld b, h                                       ; $5BB4: $44
    add $78                                       ; $5BB5: $C6 $78
    cp $30                                        ; $5BB7: $FE $30
    ld a, h                                       ; $5BB9: $7C
    add h                                         ; $5BBA: $84
    or [hl]                                       ; $5BBB: $B6
    jr c, @+$3E                                   ; $5BBC: $38 $3C

jr_00D_5BBE:
    nop                                           ; $5BBE: $00
    nop                                           ; $5BBF: $00
    nop                                           ; $5BC0: $00
    jr nz, jr_00D_5BC7                            ; $5BC1: $20 $04

    inc b                                         ; $5BC3: $04

jr_00D_5BC4:
    nop                                           ; $5BC4: $00
    nop                                           ; $5BC5: $00
    nop                                           ; $5BC6: $00

jr_00D_5BC7:
    nop                                           ; $5BC7: $00
    inc d                                         ; $5BC8: $14
    inc d                                         ; $5BC9: $14
    ld [hl+], a                                   ; $5BCA: $22
    ld [hl+], a                                   ; $5BCB: $22
    dec e                                         ; $5BCC: $1D
    ld a, l                                       ; $5BCD: $7D
    ld b, d                                       ; $5BCE: $42
    ld e, [hl]                                    ; $5BCF: $5E
    nop                                           ; $5BD0: $00
    nop                                           ; $5BD1: $00
    ld l, a                                       ; $5BD2: $6F
    nop                                           ; $5BD3: $00
    rst $38                                       ; $5BD4: $FF
    ld l, a                                       ; $5BD5: $6F
    rst $38                                       ; $5BD6: $FF
    ld e, a                                       ; $5BD7: $5F
    ld a, a                                       ; $5BD8: $7F
    ccf                                           ; $5BD9: $3F
    ld a, a                                       ; $5BDA: $7F
    inc e                                         ; $5BDB: $1C
    inc a                                         ; $5BDC: $3C
    dec bc                                        ; $5BDD: $0B
    ld a, [hl+]                                   ; $5BDE: $2A
    dec d                                         ; $5BDF: $15
    nop                                           ; $5BE0: $00
    nop                                           ; $5BE1: $00
    ret nz                                        ; $5BE2: $C0

    nop                                           ; $5BE3: $00
    ldh [$C0], a                                  ; $5BE4: $E0 $C0
    ldh a, [$E0]                                  ; $5BE6: $F0 $E0
    ldh a, [$E0]                                  ; $5BE8: $F0 $E0

jr_00D_5BEA:
    ldh a, [rNR41]                                ; $5BEA: $F0 $20
    jr nc, jr_00D_5BAE                            ; $5BEC: $30 $C0

    ld d, b                                       ; $5BEE: $50
    and b                                         ; $5BEF: $A0
    ld a, [de]                                    ; $5BF0: $1A
    dec b                                         ; $5BF1: $05
    inc b                                         ; $5BF2: $04
    inc bc                                        ; $5BF3: $03
    rrca                                          ; $5BF4: $0F
    inc b                                         ; $5BF5: $04
    rrca                                          ; $5BF6: $0F
    dec b                                         ; $5BF7: $05
    rrca                                          ; $5BF8: $0F
    ld bc, $0D13                                  ; $5BF9: $01 $13 $0D
    inc de                                        ; $5BFC: $13
    dec c                                         ; $5BFD: $0D
    rrca                                          ; $5BFE: $0F
    inc bc                                        ; $5BFF: $03
    ld d, b                                       ; $5C00: $50
    and b                                         ; $5C01: $A0
    jr nz, jr_00D_5BC4                            ; $5C02: $20 $C0

jr_00D_5C04:
    ret nz                                        ; $5C04: $C0

    nop                                           ; $5C05: $00
    ldh [$80], a                                  ; $5C06: $E0 $80
    ldh [$80], a                                  ; $5C08: $E0 $80
    ret nc                                        ; $5C0A: $D0

    and b                                         ; $5C0B: $A0
    ldh [$80], a                                  ; $5C0C: $E0 $80

jr_00D_5C0E:
    ret nz                                        ; $5C0E: $C0

    add b                                         ; $5C0F: $80
    rrca                                          ; $5C10: $0F
    rlca                                          ; $5C11: $07
    rlca                                          ; $5C12: $07
    inc bc                                        ; $5C13: $03
    rlca                                          ; $5C14: $07
    inc bc                                        ; $5C15: $03
    rlca                                          ; $5C16: $07
    inc bc                                        ; $5C17: $03
    rrca                                          ; $5C18: $0F
    inc b                                         ; $5C19: $04
    rrca                                          ; $5C1A: $0F
    ld bc, $0F1F                                  ; $5C1B: $01 $1F $0F
    rrca                                          ; $5C1E: $0F
    nop                                           ; $5C1F: $00
    ret nz                                        ; $5C20: $C0

    add b                                         ; $5C21: $80
    ret nz                                        ; $5C22: $C0

    add b                                         ; $5C23: $80
    ret nz                                        ; $5C24: $C0

    add b                                         ; $5C25: $80
    ldh a, [$80]                                  ; $5C26: $F0 $80
    ld hl, sp+$30                                 ; $5C28: $F8 $30
    ld hl, sp-$50                                 ; $5C2A: $F8 $B0
    ldh a, [$80]                                  ; $5C2C: $F0 $80
    ret nz                                        ; $5C2E: $C0

    nop                                           ; $5C2F: $00
    ret nz                                        ; $5C30: $C0

    nop                                           ; $5C31: $00
    ldh [rP1], a                                  ; $5C32: $E0 $00
    ldh a, [$E0]                                  ; $5C34: $F0 $E0
    ld hl, sp-$10                                 ; $5C36: $F8 $F0
    ld hl, sp-$10                                 ; $5C38: $F8 $F0
    ld hl, sp+$30                                 ; $5C3A: $F8 $30
    jr c, jr_00D_5C0E                             ; $5C3C: $38 $D0

    ld d, h                                       ; $5C3E: $54
    xor b                                         ; $5C3F: $A8
    ld e, b                                       ; $5C40: $58
    and b                                         ; $5C41: $A0
    jr nc, jr_00D_5C04                            ; $5C42: $30 $C0

    ldh [rP1], a                                  ; $5C44: $E0 $00
    ldh a, [$A0]                                  ; $5C46: $F0 $A0
    ldh a, [$A0]                                  ; $5C48: $F0 $A0
    ldh a, [$80]                                  ; $5C4A: $F0 $80
    ret z                                         ; $5C4C: $C8

    or b                                          ; $5C4D: $B0
    ret z                                         ; $5C4E: $C8

    or b                                          ; $5C4F: $B0
    ldh a, [$C0]                                  ; $5C50: $F0 $C0
    ldh [$C0], a                                  ; $5C52: $E0 $C0
    ldh [$C0], a                                  ; $5C54: $E0 $C0
    ldh a, [$C0]                                  ; $5C56: $F0 $C0
    ld hl, sp+$30                                 ; $5C58: $F8 $30
    db $FC                                        ; $5C5A: $FC
    ld a, b                                       ; $5C5B: $78
    db $FC                                        ; $5C5C: $FC
    jr c, @-$06                                   ; $5C5D: $38 $F8

    nop                                           ; $5C5F: $00
    ld bc, $0700                                  ; $5C60: $01 $00 $07
    ld bc, $050F                                  ; $5C63: $01 $0F $05
    rra                                           ; $5C66: $1F
    dec c                                         ; $5C67: $0D
    rra                                           ; $5C68: $1F
    ld c, $1F                                     ; $5C69: $0E $1F
    rrca                                          ; $5C6B: $0F
    rra                                           ; $5C6C: $1F
    rrca                                          ; $5C6D: $0F
    cpl                                           ; $5C6E: $2F
    rla                                           ; $5C6F: $17
    ret nz                                        ; $5C70: $C0

    nop                                           ; $5C71: $00
    ldh [$C0], a                                  ; $5C72: $E0 $C0
    ldh a, [$C0]                                  ; $5C74: $F0 $C0
    ld hl, sp-$30                                 ; $5C76: $F8 $D0
    ld hl, sp+$30                                 ; $5C78: $F8 $30
    ld hl, sp-$10                                 ; $5C7A: $F8 $F0
    ld hl, sp-$10                                 ; $5C7C: $F8 $F0
    db $F4                                        ; $5C7E: $F4
    add sp, -$08                                  ; $5C7F: $E8 $F8
    ldh [$F0], a                                  ; $5C81: $E0 $F0
    ret nz                                        ; $5C83: $C0

    ldh [rP1], a                                  ; $5C84: $E0 $00
    ldh a, [$A0]                                  ; $5C86: $F0 $A0
    ldh a, [$A0]                                  ; $5C88: $F0 $A0
    ldh a, [$80]                                  ; $5C8A: $F0 $80
    ret z                                         ; $5C8C: $C8

    or b                                          ; $5C8D: $B0
    ret z                                         ; $5C8E: $C8

    or b                                          ; $5C8F: $B0
    ldh a, [$C0]                                  ; $5C90: $F0 $C0
    ldh [$C0], a                                  ; $5C92: $E0 $C0
    ldh [$C0], a                                  ; $5C94: $E0 $C0
    ldh [$C0], a                                  ; $5C96: $E0 $C0
    ld hl, sp-$40                                 ; $5C98: $F8 $C0
    db $FC                                        ; $5C9A: $FC
    jr @-$02                                      ; $5C9B: $18 $FC

    ld [hl], b                                    ; $5C9D: $70
    ld hl, sp+$00                                 ; $5C9E: $F8 $00
    ld bc, $0F00                                  ; $5CA0: $01 $00 $0F
    ld bc, $0E1F                                  ; $5CA3: $01 $1F $0E
    rra                                           ; $5CA6: $1F
    ld c, $1F                                     ; $5CA7: $0E $1F
    dec c                                         ; $5CA9: $0D
    rrca                                          ; $5CAA: $0F
    ld bc, $0307                                  ; $5CAB: $01 $07 $03
    rlca                                          ; $5CAE: $07
    inc bc                                        ; $5CAF: $03
    ld hl, sp+$00                                 ; $5CB0: $F8 $00
    db $FC                                        ; $5CB2: $FC
    ld hl, sp-$02                                 ; $5CB3: $F8 $FE
    db $FC                                        ; $5CB5: $FC

jr_00D_5CB6:
    cp $F8                                        ; $5CB6: $FE $F8
    ld hl, sp-$10                                 ; $5CB8: $F8 $F0
    ld hl, sp-$20                                 ; $5CBA: $F8 $E0
    add sp, -$30                                  ; $5CBC: $E8 $D0
    ret z                                         ; $5CBE: $C8

    or b                                          ; $5CBF: $B0
    ld [hl], d                                    ; $5CC0: $72
    inc l                                         ; $5CC1: $2C
    ld a, b                                       ; $5CC2: $78
    nop                                           ; $5CC3: $00
    ld a, h                                       ; $5CC4: $7C
    jr z, jr_00D_5D45                             ; $5CC5: $28 $7E

    jr z, jr_00D_5D47                             ; $5CC7: $28 $7E

jr_00D_5CC9:
    jr nz, jr_00D_5D3D                            ; $5CC9: $20 $72

    inc l                                         ; $5CCB: $2C
    ld [hl], d                                    ; $5CCC: $72
    inc l                                         ; $5CCD: $2C
    ld a, h                                       ; $5CCE: $7C
    jr nc, jr_00D_5CC9                            ; $5CCF: $30 $F8

    ld [hl], b                                    ; $5CD1: $70
    ld hl, sp+$70                                 ; $5CD2: $F8 $70
    ld hl, sp+$70                                 ; $5CD4: $F8 $70
    ld hl, sp+$70                                 ; $5CD6: $F8 $70
    cp $30                                        ; $5CD8: $FE $30
    rst $38                                       ; $5CDA: $FF
    ld b, [hl]                                    ; $5CDB: $46
    rst $38                                       ; $5CDC: $FF
    inc e                                         ; $5CDD: $1C
    ld a, $00                                     ; $5CDE: $3E $00
    ld a, [hl+]                                   ; $5CE0: $2A
    dec d                                         ; $5CE1: $15
    ld a, [de]                                    ; $5CE2: $1A
    dec b                                         ; $5CE3: $05
    inc c                                         ; $5CE4: $0C
    inc bc                                        ; $5CE5: $03
    rlca                                          ; $5CE6: $07
    nop                                           ; $5CE7: $00
    rrca                                          ; $5CE8: $0F
    dec b                                         ; $5CE9: $05
    rrca                                          ; $5CEA: $0F
    dec b                                         ; $5CEB: $05
    rrca                                          ; $5CEC: $0F
    ld bc, $050B                                  ; $5CED: $01 $0B $05
    ld d, h                                       ; $5CF0: $54
    xor b                                         ; $5CF1: $A8
    ld e, b                                       ; $5CF2: $58
    and b                                         ; $5CF3: $A0
    jr nc, jr_00D_5CB6                            ; $5CF4: $30 $C0

    ldh [rP1], a                                  ; $5CF6: $E0 $00
    ldh a, [$A0]                                  ; $5CF8: $F0 $A0
    ldh a, [$A0]                                  ; $5CFA: $F0 $A0
    ldh a, [$80]                                  ; $5CFC: $F0 $80
    sub b                                         ; $5CFE: $90
    ld h, b                                       ; $5CFF: $60
    ld a, c                                       ; $5D00: $79
    ld d, $7E                                     ; $5D01: $16 $7E
    jr c, @+$80                                   ; $5D03: $38 $7E

    inc a                                         ; $5D05: $3C
    ld a, [hl]                                    ; $5D06: $7E
    inc e                                         ; $5D07: $1C
    cp $6C                                        ; $5D08: $FE $6C
    cp $70                                        ; $5D0A: $FE $70
    ld a, [hl]                                    ; $5D0C: $7E
    inc [hl]                                      ; $5D0D: $34
    ld a, h                                       ; $5D0E: $7C
    nop                                           ; $5D0F: $00
    cpl                                           ; $5D10: $2F
    rla                                           ; $5D11: $17
    rra                                           ; $5D12: $1F
    rlca                                          ; $5D13: $07
    rrca                                          ; $5D14: $0F
    inc bc                                        ; $5D15: $03
    rlca                                          ; $5D16: $07
    nop                                           ; $5D17: $00
    rrca                                          ; $5D18: $0F
    dec b                                         ; $5D19: $05
    rrca                                          ; $5D1A: $0F
    dec b                                         ; $5D1B: $05
    rrca                                          ; $5D1C: $0F
    dec b                                         ; $5D1D: $05
    rrca                                          ; $5D1E: $0F
    inc bc                                        ; $5D1F: $03
    db $F4                                        ; $5D20: $F4
    add sp, -$08                                  ; $5D21: $E8 $F8
    ldh [$F0], a                                  ; $5D23: $E0 $F0
    ret nz                                        ; $5D25: $C0

    ldh [rP1], a                                  ; $5D26: $E0 $00
    ldh a, [$A0]                                  ; $5D28: $F0 $A0
    ldh a, [$80]                                  ; $5D2A: $F0 $80
    sub b                                         ; $5D2C: $90
    ld h, b                                       ; $5D2D: $60
    sub b                                         ; $5D2E: $90
    ld h, b                                       ; $5D2F: $60
    ld a, a                                       ; $5D30: $7F
    jr c, jr_00D_5DB1                             ; $5D31: $38 $7E

    inc e                                         ; $5D33: $1C
    ld a, $1C                                     ; $5D34: $3E $1C
    ld a, $04                                     ; $5D36: $3E $04
    inc a                                         ; $5D38: $3C
    jr jr_00D_5DB7                                ; $5D39: $18 $7C

    jr c, jr_00D_5DBB                             ; $5D3B: $38 $7E

jr_00D_5D3D:
    inc [hl]                                      ; $5D3D: $34
    ld a, h                                       ; $5D3E: $7C
    nop                                           ; $5D3F: $00
    ld b, l                                       ; $5D40: $45
    ld a, [hl-]                                   ; $5D41: $3A
    ld hl, $3E1E                                  ; $5D42: $21 $1E $3E

jr_00D_5D45:
    nop                                           ; $5D45: $00
    ld a, b                                       ; $5D46: $78

jr_00D_5D47:
    db $10                                        ; $5D47: $10
    ld a, [hl]                                    ; $5D48: $7E
    ld [$56B9], sp                                ; $5D49: $08 $B9 $56
    cp c                                          ; $5D4C: $B9
    ld d, [hl]                                    ; $5D4D: $56
    ld a, [hl]                                    ; $5D4E: $7E
    jr nc, jr_00D_5D58                            ; $5D4F: $30 $07

    inc bc                                        ; $5D51: $03
    inc bc                                        ; $5D52: $03
    ld bc, $030F                                  ; $5D53: $01 $0F $03
    ccf                                           ; $5D56: $3F

jr_00D_5D57:
    rlca                                          ; $5D57: $07

jr_00D_5D58:
    ld a, a                                       ; $5D58: $7F
    jr nz, @+$81                                  ; $5D59: $20 $7F

    ld [hl], $7F                                  ; $5D5B: $36 $7F
    ld e, $7F                                     ; $5D5D: $1E $7F
    nop                                           ; $5D5F: $00
    add b                                         ; $5D60: $80
    nop                                           ; $5D61: $00
    add b                                         ; $5D62: $80
    nop                                           ; $5D63: $00
    ldh a, [$80]                                  ; $5D64: $F0 $80
    ld hl, sp-$50                                 ; $5D66: $F8 $B0
    ld hl, sp+$70                                 ; $5D68: $F8 $70
    ldh a, [$E0]                                  ; $5D6A: $F0 $E0
    ldh a, [$C0]                                  ; $5D6C: $F0 $C0
    ldh [rP1], a                                  ; $5D6E: $E0 $00
    dec de                                        ; $5D70: $1B
    nop                                           ; $5D71: $00
    ccf                                           ; $5D72: $3F
    add hl, de                                    ; $5D73: $19
    ld a, a                                       ; $5D74: $7F
    scf                                           ; $5D75: $37
    ld a, a                                       ; $5D76: $7F
    daa                                           ; $5D77: $27
    ccf                                           ; $5D78: $3F
    rrca                                          ; $5D79: $0F
    rra                                           ; $5D7A: $1F
    add hl, bc                                    ; $5D7B: $09
    add hl, bc                                    ; $5D7C: $09
    ld b, $04                                     ; $5D7D: $06 $04
    inc bc                                        ; $5D7F: $03
    ldh [rP1], a                                  ; $5D80: $E0 $00
    ldh a, [$E0]                                  ; $5D82: $F0 $E0
    ld hl, sp-$10                                 ; $5D84: $F8 $F0
    ld hl, sp-$10                                 ; $5D86: $F8 $F0
    ldh a, [$A0]                                  ; $5D88: $F0 $A0
    or b                                          ; $5D8A: $B0
    ld b, b                                       ; $5D8B: $40
    ld d, b                                       ; $5D8C: $50
    and b                                         ; $5D8D: $A0
    ld d, b                                       ; $5D8E: $50
    and b                                         ; $5D8F: $A0
    ld hl, $3E1E                                  ; $5D90: $21 $1E $3E
    nop                                           ; $5D93: $00
    jr c, @+$12                                   ; $5D94: $38 $10

    inc a                                         ; $5D96: $3C
    db $10                                        ; $5D97: $10
    inc a                                         ; $5D98: $3C
    nop                                           ; $5D99: $00
    ld c, b                                       ; $5D9A: $48
    jr nc, @+$4A                                  ; $5D9B: $30 $48

    jr nc, @+$7A                                  ; $5D9D: $30 $78

    nop                                           ; $5D9F: $00
    ld a, b                                       ; $5DA0: $78
    jr nc, jr_00D_5DDB                            ; $5DA1: $30 $38

    db $10                                        ; $5DA3: $10
    ld a, b                                       ; $5DA4: $78
    db $30, $7C, $30, $7E

    nop                                           ; $5DA9: $00
    ld a, a                                       ; $5DAA: $7F
    inc a                                         ; $5DAB: $3C
    rst $38                                       ; $5DAC: $FF
    ld a, $7F                                     ; $5DAD: $3E $7F
    nop                                           ; $5DAF: $00
    ld b, l                                       ; $5DB0: $45

jr_00D_5DB1:
    ld a, [hl-]                                   ; $5DB1: $3A
    ld hl, $3E1E                                  ; $5DB2: $21 $1E $3E
    nop                                           ; $5DB5: $00
    ld a, b                                       ; $5DB6: $78

jr_00D_5DB7:
    db $10                                        ; $5DB7: $10
    ld a, h                                       ; $5DB8: $7C
    jr nz, jr_00D_5D57                            ; $5DB9: $20 $9C

jr_00D_5DBB:
    ld l, b                                       ; $5DBB: $68
    sbc d                                         ; $5DBC: $9A
    ld h, h                                       ; $5DBD: $64
    ld a, h                                       ; $5DBE: $7C
    db $10                                        ; $5DBF: $10
    rlca                                          ; $5DC0: $07
    inc bc                                        ; $5DC1: $03
    rlca                                          ; $5DC2: $07
    ld bc, $0307                                  ; $5DC3: $01 $07 $03
    rrca                                          ; $5DC6: $0F
    rlca                                          ; $5DC7: $07
    rra                                           ; $5DC8: $1F
    nop                                           ; $5DC9: $00
    ccf                                           ; $5DCA: $3F
    rla                                           ; $5DCB: $17
    ccf                                           ; $5DCC: $3F
    rrca                                          ; $5DCD: $0F
    rra                                           ; $5DCE: $1F
    nop                                           ; $5DCF: $00
    add b                                         ; $5DD0: $80
    nop                                           ; $5DD1: $00
    ret nz                                        ; $5DD2: $C0

jr_00D_5DD3:
    add b                                         ; $5DD3: $80
    ld hl, sp-$40                                 ; $5DD4: $F8 $C0
    db $FC                                        ; $5DD6: $FC
    ret c                                         ; $5DD7: $D8

    db $FC                                        ; $5DD8: $FC
    jr c, jr_00D_5DD3                             ; $5DD9: $38 $F8

jr_00D_5DDB:
    ld [hl], b                                    ; $5DDB: $70
    ld hl, sp+$60                                 ; $5DDC: $F8 $60
    ldh [rP1], a                                  ; $5DDE: $E0 $00

    ; $5DE0
BITMAP_Battle_Morag::
    INCBIN "autogenerated/assets/sprites/morag/MoragBattle.tileset", 0, $0250

    ; $6030
BITMAP_Battle_Ogar::
    ; Bug - the first tile of this file is referred to by the .spr file for BITMAP_Battle_Morag
    INCBIN "autogenerated/assets/sprites/ogar/OgarBattle.tileset"

    ; $6230
    rra                                           ; $6230: $1F
    nop                                           ; $6231: $00
    ccf                                           ; $6232: $3F
    rra                                           ; $6233: $1F
    ccf                                           ; $6234: $3F
    rrca                                          ; $6235: $0F
    ld a, a                                       ; $6236: $7F
    ccf                                           ; $6237: $3F
    ccf                                           ; $6238: $3F
    ld e, $7E                                     ; $6239: $1E $7E
    dec [hl]                                      ; $623B: $35
    ld [hl], l                                    ; $623C: $75
    ld a, [hl+]                                   ; $623D: $2A
    add hl, sp                                    ; $623E: $39
    ld d, $F0                                     ; $623F: $16 $F0
    nop                                           ; $6241: $00
    ld hl, sp-$10                                 ; $6242: $F8 $F0
    db $FC                                        ; $6244: $FC
    cp b                                          ; $6245: $B8
    db $FC                                        ; $6246: $FC
    ret c                                         ; $6247: $D8

    ld hl, sp+$40                                 ; $6248: $F8 $40
    ld e, b                                       ; $624A: $58
    and b                                         ; $624B: $A0
    db $30, $C0, $30, $C0
    ld b, $00                                     ; $6250: $06 $00
    rrca                                          ; $6252: $0F
    ld b, $1F                                     ; $6253: $06 $1F
    rrca                                          ; $6255: $0F
    ccf                                           ; $6256: $3F
    rra                                           ; $6257: $1F
    ccf                                           ; $6258: $3F
    ld e, $3F                                     ; $6259: $1E $3F
    jr jr_00D_6279                                ; $625B: $18 $1C

    inc bc                                        ; $625D: $03
    ld a, [hl+]                                   ; $625E: $2A
    dec d                                         ; $625F: $15
    ret nz                                        ; $6260: $C0

    nop                                           ; $6261: $00
    ldh a, [$C0]                                  ; $6262: $F0 $C0
    ld hl, sp-$10                                 ; $6264: $F8 $F0
    db $FC                                        ; $6266: $FC
    ld a, b                                       ; $6267: $78
    db $FC                                        ; $6268: $FC
    ld hl, sp-$04                                 ; $6269: $F8 $FC
    sbc b                                         ; $626B: $98
    cp b                                          ; $626C: $B8
    ld b, b                                       ; $626D: $40
    ld d, h                                       ; $626E: $54
    xor b                                         ; $626F: $A8
    ld b, $00                                     ; $6270: $06 $00
    rrca                                          ; $6272: $0F
    ld b, $0F                                     ; $6273: $06 $0F
    rlca                                          ; $6275: $07
    rra                                           ; $6276: $1F
    dec c                                         ; $6277: $0D
    rra                                           ; $6278: $1F

jr_00D_6279:
    rrca                                          ; $6279: $0F
    rra                                           ; $627A: $1F
    rrca                                          ; $627B: $0F
    rrca                                          ; $627C: $0F
    rla                                           ; $627D: $17
    rra                                           ; $627E: $1F
    rlca                                          ; $627F: $07
    ldh [rP1], a                                  ; $6280: $E0 $00
    ldh a, [$E0]                                  ; $6282: $F0 $E0
    ld hl, sp-$10                                 ; $6284: $F8 $F0
    db $FC                                        ; $6286: $FC
    ld hl, sp-$04                                 ; $6287: $F8 $FC
    ld hl, sp-$08                                 ; $6289: $F8 $F8
    ldh a, [$F4]                                  ; $628B: $F0 $F4

jr_00D_628D:
    add sp, -$08                                  ; $628D: $E8 $F8
    ldh [$03], a                                  ; $628F: $E0 $03
    nop                                           ; $6291: $00
    rlca                                          ; $6292: $07
    inc bc                                        ; $6293: $03
    rrca                                          ; $6294: $0F
    rlca                                          ; $6295: $07
    rra                                           ; $6296: $1F
    dec c                                         ; $6297: $0D
    rra                                           ; $6298: $1F
    rrca                                          ; $6299: $0F
    rra                                           ; $629A: $1F
    rrca                                          ; $629B: $0F
    rra                                           ; $629C: $1F
    rrca                                          ; $629D: $0F

jr_00D_629E:
    rra                                           ; $629E: $1F
    rlca                                          ; $629F: $07
    ld hl, sp+$00                                 ; $62A0: $F8 $00

jr_00D_62A2:
    db $FC                                        ; $62A2: $FC
    ld a, b                                       ; $62A3: $78
    cp $FC                                        ; $62A4: $FE $FC
    cp $FC                                        ; $62A6: $FE $FC
    cp $FC                                        ; $62A8: $FE $FC
    cp $E4                                        ; $62AA: $FE $E4
    db $EC                                        ; $62AC: $EC
    ret nc                                        ; $62AD: $D0

    ret z                                         ; $62AE: $C8

    or b                                          ; $62AF: $B0
    inc a                                         ; $62B0: $3C
    inc bc                                        ; $62B1: $03
    ld a, a                                       ; $62B2: $7F

jr_00D_62B3:
    jr c, @+$40                                   ; $62B3: $38 $3E

    dec e                                         ; $62B5: $1D
    ld e, [hl]                                    ; $62B6: $5E
    ld hl, $3649                                  ; $62B7: $21 $49 $36
    inc l                                         ; $62BA: $2C
    dec de                                        ; $62BB: $1B
    ld [hl-], a                                   ; $62BC: $32
    dec e                                         ; $62BD: $1D
    inc de                                        ; $62BE: $13
    inc c                                         ; $62BF: $0C
    jr jr_00D_62A2                                ; $62C0: $18 $E0

    db $FC                                        ; $62C2: $FC
    jr jr_00D_62DD                                ; $62C3: $18 $18

    ldh [$50], a                                  ; $62C5: $E0 $50
    and b                                         ; $62C7: $A0
    ldh a, [rP1]                                  ; $62C8: $F0 $00
    jr c, @-$3E                                   ; $62CA: $38 $C0

    jr z, jr_00D_629E                             ; $62CC: $28 $D0

    ldh a, [rP1]                                  ; $62CE: $F0 $00
    ld e, b                                       ; $62D0: $58
    and b                                         ; $62D1: $A0
    inc a                                         ; $62D2: $3C
    ret nz                                        ; $62D3: $C0

    cp $1C                                        ; $62D4: $FE $1C
    inc a                                         ; $62D6: $3C
    ret c                                         ; $62D7: $D8

    inc e                                         ; $62D8: $1C
    ldh [rNR14], a                                ; $62D9: $E0 $14
    add sp, $2C                                   ; $62DB: $E8 $2C

jr_00D_62DD:
    ret c                                         ; $62DD: $D8

    db $E4                                        ; $62DE: $E4
    jr @+$41                                      ; $62DF: $18 $3F

    rlca                                          ; $62E1: $07
    ld a, a                                       ; $62E2: $7F
    dec sp                                        ; $62E3: $3B
    ccf                                           ; $62E4: $3F
    jr jr_00D_631F                                ; $62E5: $18 $38

    rlca                                          ; $62E7: $07
    jr z, jr_00D_6301                             ; $62E8: $28 $17

    jr c, jr_00D_6303                             ; $62EA: $38 $17

    inc l                                         ; $62EC: $2C
    inc de                                        ; $62ED: $13
    rra                                           ; $62EE: $1F
    nop                                           ; $62EF: $00
    db $FC                                        ; $62F0: $FC
    ret nz                                        ; $62F1: $C0

    cp $9C                                        ; $62F2: $FE $9C
    cp h                                          ; $62F4: $BC
    ld e, b                                       ; $62F5: $58

jr_00D_62F6:
    inc e                                         ; $62F6: $1C
    ldh [rNR14], a                                ; $62F7: $E0 $14
    add sp, $1C                                   ; $62F9: $E8 $1C
    add sp, $34                                   ; $62FB: $E8 $34
    ret z                                         ; $62FD: $C8

    ld hl, sp+$00                                 ; $62FE: $F8 $00
    rrca                                          ; $6300: $0F

jr_00D_6301:
    rlca                                          ; $6301: $07
    rra                                           ; $6302: $1F

jr_00D_6303:
    rlca                                          ; $6303: $07
    ccf                                           ; $6304: $3F
    jr @+$1B                                      ; $6305: $18 $19

    ld b, $10                                     ; $6307: $06 $10
    rrca                                          ; $6309: $0F
    jr @+$09                                      ; $630A: $18 $07

    ld [$0F07], sp                                ; $630C: $08 $07 $0F

jr_00D_630F:
    nop                                           ; $630F: $00
    sub b                                         ; $6310: $90
    ld h, b                                       ; $6311: $60
    ldh [rP1], a                                  ; $6312: $E0 $00
    ldh a, [$E0]                                  ; $6314: $F0 $E0
    ldh a, [$C0]                                  ; $6316: $F0 $C0
    ret nc                                        ; $6318: $D0

    jr nz, jr_00D_62B3                            ; $6319: $20 $98

    ld [hl], b                                    ; $631B: $70

jr_00D_631C:
    ld [hl], h                                    ; $631C: $74
    cp b                                          ; $631D: $B8
    db $E4                                        ; $631E: $E4

jr_00D_631F:
    jr jr_00D_634B                                ; $631F: $18 $2A

    dec d                                         ; $6321: $15
    ld a, [de]                                    ; $6322: $1A
    dec b                                         ; $6323: $05
    inc a                                         ; $6324: $3C
    inc bc                                        ; $6325: $03
    ld a, a                                       ; $6326: $7F
    inc a                                         ; $6327: $3C
    inc a                                         ; $6328: $3C
    dec de                                        ; $6329: $1B
    ld e, $01                                     ; $632A: $1E $01
    add hl, de                                    ; $632C: $19
    ld c, $09                                     ; $632D: $0E $09
    ld b, $54                                     ; $632F: $06 $54
    xor b                                         ; $6331: $A8
    ld e, b                                       ; $6332: $58
    and b                                         ; $6333: $A0
    jr c, jr_00D_62F6                             ; $6334: $38 $C0

    db $FC                                        ; $6336: $FC
    jr c, @+$3A                                   ; $6337: $38 $38

    ret nc                                        ; $6339: $D0

    jr jr_00D_631C                                ; $633A: $18 $E0

    jr c, @-$2E                                   ; $633C: $38 $D0

    add sp, $10                                   ; $633E: $E8 $10
    rra                                           ; $6340: $1F
    rlca                                          ; $6341: $07
    rra                                           ; $6342: $1F
    inc bc                                        ; $6343: $03
    ccf                                           ; $6344: $3F
    dec e                                         ; $6345: $1D
    rra                                           ; $6346: $1F
    inc c                                         ; $6347: $0C
    inc e                                         ; $6348: $1C
    inc bc                                        ; $6349: $03
    inc d                                         ; $634A: $14

jr_00D_634B:
    dec bc                                        ; $634B: $0B
    inc e                                         ; $634C: $1C
    dec bc                                        ; $634D: $0B
    rla                                           ; $634E: $17
    ld [$E0F8], sp                                ; $634F: $08 $F8 $E0
    db $FC                                        ; $6352: $FC
    ret nz                                        ; $6353: $C0

    cp $9C                                        ; $6354: $FE $9C
    sbc h                                         ; $6356: $9C
    ld l, b                                       ; $6357: $68
    inc c                                         ; $6358: $0C
    ldh a, [rNR14]                                ; $6359: $F0 $14
    add sp, $18                                   ; $635B: $E8 $18
    ldh [$F0], a                                  ; $635D: $E0 $F0
    nop                                           ; $635F: $00
    rrca                                          ; $6360: $0F
    nop                                           ; $6361: $00
    rrca                                          ; $6362: $0F
    rlca                                          ; $6363: $07
    rra                                           ; $6364: $1F
    rrca                                          ; $6365: $0F
    rra                                           ; $6366: $1F
    ld c, $3F                                     ; $6367: $0E $3F
    db $10                                        ; $6369: $10
    add hl, sp                                    ; $636A: $39
    ld b, $21                                     ; $636B: $06 $21
    ld e, $1F                                     ; $636D: $1E $1F
    nop                                           ; $636F: $00
    ldh [rP1], a                                  ; $6370: $E0 $00
    ldh [$C0], a                                  ; $6372: $E0 $C0
    ldh a, [$60]                                  ; $6374: $F0 $60
    ldh a, [$C0]                                  ; $6376: $F0 $C0
    ret z                                         ; $6378: $C8

    jr nc, @+$0A                                  ; $6379: $30 $08

    ldh a, [$F0]                                  ; $637B: $F0 $F0
    nop                                           ; $637D: $00
    nop                                           ; $637E: $00
    nop                                           ; $637F: $00
    ld hl, sp+$00                                 ; $6380: $F8 $00
    ldh a, [$E0]                                  ; $6382: $F0 $E0
    ld hl, sp+$70                                 ; $6384: $F8 $70
    ld hl, sp+$40                                 ; $6386: $F8 $40
    ret z                                         ; $6388: $C8

    jr nc, jr_00D_630F                            ; $6389: $30 $84

    ld a, b                                       ; $638B: $78
    call nz, $F838                                ; $638C: $C4 $38 $F8
    nop                                           ; $638F: $00
    ldh a, [rP1]                                  ; $6390: $F0 $00
    ldh a, [$E0]                                  ; $6392: $F0 $E0
    ld hl, sp-$10                                 ; $6394: $F8 $F0
    ld hl, sp+$70                                 ; $6396: $F8 $70
    ld hl, sp+$60                                 ; $6398: $F8 $60
    db $F4                                        ; $639A: $F4
    ld [$708C], sp                                ; $639B: $08 $8C $70
    ld hl, sp+$00                                 ; $639E: $F8 $00
    rlca                                          ; $63A0: $07
    nop                                           ; $63A1: $00
    rlca                                          ; $63A2: $07
    inc bc                                        ; $63A3: $03
    rrca                                          ; $63A4: $0F
    ld b, $0F                                     ; $63A5: $06 $0F
    rlca                                          ; $63A7: $07
    rrca                                          ; $63A8: $0F
    ld bc, $0609                                  ; $63A9: $01 $09 $06
    rrca                                          ; $63AC: $0F
    nop                                           ; $63AD: $00
    nop                                           ; $63AE: $00
    nop                                           ; $63AF: $00
    db $FC                                        ; $63B0: $FC
    ld h, b                                       ; $63B1: $60
    ldh a, [$E0]                                  ; $63B2: $F0 $E0
    ld hl, sp-$10                                 ; $63B4: $F8 $F0
    ld hl, sp+$70                                 ; $63B6: $F8 $70
    ld hl, sp+$60                                 ; $63B8: $F8 $60
    db $F4                                        ; $63BA: $F4
    ld [$708C], sp                                ; $63BB: $08 $8C $70
    ld hl, sp+$00                                 ; $63BE: $F8 $00
    rst $38                                       ; $63C0: $FF
    nop                                           ; $63C1: $00
    rst $38                                       ; $63C2: $FF
    ld a, [hl]                                    ; $63C3: $7E
    cp $7C                                        ; $63C4: $FE $7C
    rst $38                                       ; $63C6: $FF
    ld e, b                                       ; $63C7: $58
    ld sp, hl                                     ; $63C8: $F9
    ld h, [hl]                                    ; $63C9: $66
    ld [hl], c                                    ; $63CA: $71
    ld c, $52                                     ; $63CB: $0E $52
    inc l                                         ; $63CD: $2C
    ld a, $00                                     ; $63CE: $3E $00
    rrca                                          ; $63D0: $0F
    nop                                           ; $63D1: $00
    rlca                                          ; $63D2: $07
    inc bc                                        ; $63D3: $03
    rrca                                          ; $63D4: $0F
    ld b, $0F                                     ; $63D5: $06 $0F
    rlca                                          ; $63D7: $07
    rrca                                          ; $63D8: $0F
    rlca                                          ; $63D9: $07
    rlca                                          ; $63DA: $07
    nop                                           ; $63DB: $00
    inc b                                         ; $63DC: $04
    inc bc                                        ; $63DD: $03
    rlca                                          ; $63DE: $07
    nop                                           ; $63DF: $00
    ldh a, [rP1]                                  ; $63E0: $F0 $00
    ld hl, sp-$10                                 ; $63E2: $F8 $F0
    ld hl, sp-$10                                 ; $63E4: $F8 $F0
    ld hl, sp+$30                                 ; $63E6: $F8 $30
    ldh a, [rP1]                                  ; $63E8: $F0 $00
    sub b                                         ; $63EA: $90
    ld h, b                                       ; $63EB: $60
    sub b                                         ; $63EC: $90
    ld h, b                                       ; $63ED: $60
    ldh a, [rP1]                                  ; $63EE: $F0 $00
    inc bc                                        ; $63F0: $03
    nop                                           ; $63F1: $00
    rrca                                          ; $63F2: $0F
    inc bc                                        ; $63F3: $03
    rra                                           ; $63F4: $1F
    rrca                                          ; $63F5: $0F
    ccf                                           ; $63F6: $3F
    rra                                           ; $63F7: $1F
    ccf                                           ; $63F8: $3F
    rra                                           ; $63F9: $1F
    ccf                                           ; $63FA: $3F
    rra                                           ; $63FB: $1F
    ccf                                           ; $63FC: $3F
    dec e                                         ; $63FD: $1D
    dec e                                         ; $63FE: $1D
    ld a, [bc]                                    ; $63FF: $0A
    ld hl, sp+$00                                 ; $6400: $F8 $00
    db $FC                                        ; $6402: $FC
    ld hl, sp-$08                                 ; $6403: $F8 $F8
    ldh a, [$FC]                                  ; $6405: $F0 $FC
    ld hl, sp-$04                                 ; $6407: $F8 $FC
    sbc b                                         ; $6409: $98
    sbc h                                         ; $640A: $9C
    ld l, b                                       ; $640B: $68
    ld e, b                                       ; $640C: $58
    and b                                         ; $640D: $A0
    ld d, b                                       ; $640E: $50
    and b                                         ; $640F: $A0
    dec e                                         ; $6410: $1D
    ld a, [bc]                                    ; $6411: $0A
    ld a, $1D                                     ; $6412: $3E $1D
    ccf                                           ; $6414: $3F
    jr jr_00D_6436                                ; $6415: $18 $1F

    inc bc                                        ; $6417: $03
    rrca                                          ; $6418: $0F
    ld [bc], a                                    ; $6419: $02
    ld a, [de]                                    ; $641A: $1A
    dec b                                         ; $641B: $05
    add hl, hl                                    ; $641C: $29
    ld d, $2F                                     ; $641D: $16 $2F
    db $10                                        ; $641F: $10
    ld d, b                                       ; $6420: $50
    and b                                         ; $6421: $A0
    db $10                                        ; $6422: $10
    ldh [$E0], a                                  ; $6423: $E0 $E0
    nop                                           ; $6425: $00
    ret nz                                        ; $6426: $C0

    nop                                           ; $6427: $00
    ld b, b                                       ; $6428: $40
    add b                                         ; $6429: $80
    ld h, b                                       ; $642A: $60
    ret nz                                        ; $642B: $C0

    sub b                                         ; $642C: $90
    ldh [$90], a                                  ; $642D: $E0 $90
    ld h, b                                       ; $642F: $60
    ld a, $1D                                     ; $6430: $3E $1D
    ccf                                           ; $6432: $3F
    jr jr_00D_6454                                ; $6433: $18 $1F

    rlca                                          ; $6435: $07

jr_00D_6436:
    rrca                                          ; $6436: $0F
    inc b                                         ; $6437: $04
    inc c                                         ; $6438: $0C
    inc bc                                        ; $6439: $03
    add hl, bc                                    ; $643A: $09
    rlca                                          ; $643B: $07
    ld b, $03                                     ; $643C: $06 $03
    ld b, $01                                     ; $643E: $06 $01
    db $10                                        ; $6440: $10
    ldh [$E0], a                                  ; $6441: $E0 $E0
    nop                                           ; $6443: $00
    ret nz                                        ; $6444: $C0

    nop                                           ; $6445: $00
    jr nz, @-$3E                                  ; $6446: $20 $C0

    and b                                         ; $6448: $A0
    ld b, b                                       ; $6449: $40
    and b                                         ; $644A: $A0
    ld b, b                                       ; $644B: $40
    ld h, b                                       ; $644C: $60

jr_00D_644D:
    add b                                         ; $644D: $80
    ld h, b                                       ; $644E: $60
    add b                                         ; $644F: $80
    dec e                                         ; $6450: $1D
    ld a, [bc]                                    ; $6451: $0A
    ld a, $1D                                     ; $6452: $3E $1D

jr_00D_6454:
    ccf                                           ; $6454: $3F
    jr jr_00D_6476                                ; $6455: $18 $1F

    ld b, $17                                     ; $6457: $06 $17
    ld a, [bc]                                    ; $6459: $0A
    ld a, [de]                                    ; $645A: $1A
    dec c                                         ; $645B: $0D
    ld h, $1D                                     ; $645C: $26 $1D
    daa                                           ; $645E: $27
    jr jr_00D_64B1                                ; $645F: $18 $50

    and b                                         ; $6461: $A0
    db $10                                        ; $6462: $10
    ldh [$E0], a                                  ; $6463: $E0 $E0
    nop                                           ; $6465: $00
    ld b, b                                       ; $6466: $40
    add b                                         ; $6467: $80
    ld b, b                                       ; $6468: $40
    add b                                         ; $6469: $80
    ld h, b                                       ; $646A: $60
    add b                                         ; $646B: $80
    ld d, b                                       ; $646C: $50
    and b                                         ; $646D: $A0
    ret nc                                        ; $646E: $D0

    jr nz, jr_00D_6490                            ; $646F: $20 $1F

    nop                                           ; $6471: $00
    rrca                                          ; $6472: $0F
    rlca                                          ; $6473: $07
    rra                                           ; $6474: $1F
    rrca                                          ; $6475: $0F

jr_00D_6476:
    ccf                                           ; $6476: $3F
    rra                                           ; $6477: $1F
    ld e, a                                       ; $6478: $5F
    inc l                                         ; $6479: $2C
    ld c, l                                       ; $647A: $4D
    ld [hl-], a                                   ; $647B: $32
    ld h, c                                       ; $647C: $61
    ld e, $7F                                     ; $647D: $1E $7F
    nop                                           ; $647F: $00
    ldh [rP1], a                                  ; $6480: $E0 $00
    ldh [$80], a                                  ; $6482: $E0 $80
    ld hl, sp-$80                                 ; $6484: $F8 $80
    db $E4                                        ; $6486: $E4
    jr jr_00D_644D                                ; $6487: $18 $C4

    cp b                                          ; $6489: $B8
    ret z                                         ; $648A: $C8

    or b                                          ; $648B: $B0
    cp b                                          ; $648C: $B8
    ld b, b                                       ; $648D: $40
    ldh [rP1], a                                  ; $648E: $E0 $00

jr_00D_6490:
    rlca                                          ; $6490: $07
    nop                                           ; $6491: $00
    rrca                                          ; $6492: $0F
    rlca                                          ; $6493: $07
    rra                                           ; $6494: $1F
    rrca                                          ; $6495: $0F
    rra                                           ; $6496: $1F
    rrca                                          ; $6497: $0F
    ccf                                           ; $6498: $3F
    db $10                                        ; $6499: $10
    jr c, @+$09                                   ; $649A: $38 $07

    jr nc, jr_00D_64AD                            ; $649C: $30 $0F

    rra                                           ; $649E: $1F
    nop                                           ; $649F: $00
    ldh [rP1], a                                  ; $64A0: $E0 $00
    ldh [$C0], a                                  ; $64A2: $E0 $C0
    ldh [$C0], a                                  ; $64A4: $E0 $C0
    ldh [$80], a                                  ; $64A6: $E0 $80
    ret nc                                        ; $64A8: $D0

    jr nz, jr_00D_64FB                            ; $64A9: $20 $50

    and b                                         ; $64AB: $A0
    ld [hl], b                                    ; $64AC: $70

jr_00D_64AD:
    add b                                         ; $64AD: $80
    ret nz                                        ; $64AE: $C0

    nop                                           ; $64AF: $00
    rra                                           ; $64B0: $1F

jr_00D_64B1:
    nop                                           ; $64B1: $00
    rrca                                          ; $64B2: $0F
    rlca                                          ; $64B3: $07
    rra                                           ; $64B4: $1F
    rrca                                          ; $64B5: $0F
    ccf                                           ; $64B6: $3F
    dec bc                                        ; $64B7: $0B
    ld e, a                                       ; $64B8: $5F
    ld hl, $3C43                                  ; $64B9: $21 $43 $3C
    ld h, c                                       ; $64BC: $61
    ld e, $7F                                     ; $64BD: $1E $7F
    nop                                           ; $64BF: $00
    ldh [rP1], a                                  ; $64C0: $E0 $00
    ret nz                                        ; $64C2: $C0

    add b                                         ; $64C3: $80
    ld hl, sp-$40                                 ; $64C4: $F8 $C0
    db $E4                                        ; $64C6: $E4
    ret c                                         ; $64C7: $D8

    call nz, $C8B8                                ; $64C8: $C4 $B8 $C8
    or b                                          ; $64CB: $B0
    cp b                                          ; $64CC: $B8
    ld b, b                                       ; $64CD: $40
    ldh [rP1], a                                  ; $64CE: $E0 $00
    nop                                           ; $64D0: $00
    nop                                           ; $64D1: $00
    nop                                           ; $64D2: $00
    nop                                           ; $64D3: $00
    ld a, $00                                     ; $64D4: $3E $00
    ld a, a                                       ; $64D6: $7F
    ld a, $7F                                     ; $64D7: $3E $7F
    ld a, $7F                                     ; $64D9: $3E $7F
    nop                                           ; $64DB: $00
    ld d, a                                       ; $64DC: $57
    ld l, $63                                     ; $64DD: $2E $63
    inc e                                         ; $64DF: $1C
    nop                                           ; $64E0: $00
    nop                                           ; $64E1: $00
    ld a, $00                                     ; $64E2: $3E $00
    ld b, c                                       ; $64E4: $41
    ld a, $45                                     ; $64E5: $3E $45
    ld a, [hl-]                                   ; $64E7: $3A
    ld l, e                                       ; $64E8: $6B
    inc d                                         ; $64E9: $14
    ld h, [hl]                                    ; $64EA: $66
    jr jr_00D_652B                                ; $64EB: $18 $3E

    nop                                           ; $64ED: $00
    ld a, $00                                     ; $64EE: $3E $00
    ld a, a                                       ; $64F0: $7F
    nop                                           ; $64F1: $00
    ld a, a                                       ; $64F2: $7F
    ld a, [hl-]                                   ; $64F3: $3A
    ld a, $00                                     ; $64F4: $3E $00
    nop                                           ; $64F6: $00
    nop                                           ; $64F7: $00
    nop                                           ; $64F8: $00
    nop                                           ; $64F9: $00
    nop                                           ; $64FA: $00

jr_00D_64FB:
    nop                                           ; $64FB: $00
    nop                                           ; $64FC: $00
    nop                                           ; $64FD: $00
    nop                                           ; $64FE: $00
    nop                                           ; $64FF: $00
    ld a, $00                                     ; $6500: $3E $00
    ld b, c                                       ; $6502: $41
    ld a, $41                                     ; $6503: $3E $41
    ld a, $63                                     ; $6505: $3E $63
    inc e                                         ; $6507: $1C
    ld d, l                                       ; $6508: $55
    ld a, [hl+]                                   ; $6509: $2A
    ld h, e                                       ; $650A: $63
    inc e                                         ; $650B: $1C
    ld a, $00                                     ; $650C: $3E $00
    ld a, $00                                     ; $650E: $3E $00
    ld a, a                                       ; $6510: $7F
    nop                                           ; $6511: $00
    ld a, a                                       ; $6512: $7F
    ld [hl], $77                                  ; $6513: $36 $77
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
    ld a, $00                                     ; $6524: $3E $00
    ld a, a                                       ; $6526: $7F
    ld a, $7F                                     ; $6527: $3E $7F
    ld a, $7F                                     ; $6529: $3E $7F

jr_00D_652B:
    ld a, $7F                                     ; $652B: $3E $7F
    ld a, $7F                                     ; $652D: $3E $7F
    inc e                                         ; $652F: $1C
    ld a, $00                                     ; $6530: $3E $00
    ld a, a                                       ; $6532: $7F
    ld [$3649], sp                                ; $6533: $08 $49 $36
    ld b, c                                       ; $6536: $41
    ld a, $41                                     ; $6537: $3E $41
    ld a, $63                                     ; $6539: $3E $63
    inc e                                         ; $653B: $1C
    ld a, $00                                     ; $653C: $3E $00
    ld a, $00                                     ; $653E: $3E $00
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    ld a, $00                                     ; $6542: $3E $00
    ld a, a                                       ; $6544: $7F
    ld [$3649], sp                                ; $6545: $08 $49 $36
    ld h, c                                       ; $6548: $61
    ld e, $73                                     ; $6549: $1E $73
    inc c                                         ; $654B: $0C
    ld a, $00                                     ; $654C: $3E $00
    ld a, $00                                     ; $654E: $3E $00
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    ld e, $00                                     ; $6554: $1E $00
    ccf                                           ; $6556: $3F
    ld e, $7F                                     ; $6557: $1E $7F
    ld a, $7F                                     ; $6559: $3E $7F
    jr c, @+$7D                                   ; $655B: $38 $7B

    inc h                                         ; $655D: $24
    pop af                                        ; $655E: $F1
    ld c, [hl]                                    ; $655F: $4E
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    ld l, [hl]                                    ; $6562: $6E
    db $10                                        ; $6563: $10
    call nz, $D338                                ; $6564: $C4 $38 $D3
    inc l                                         ; $6567: $2C
    and d                                         ; $6568: $A2

jr_00D_6569:
    ld e, l                                       ; $6569: $5D
    ld h, a                                       ; $656A: $67
    jr jr_00D_65A9                                ; $656B: $18 $3C

    nop                                           ; $656D: $00
    ld a, [hl]                                    ; $656E: $7E
    nop                                           ; $656F: $00
    rst $38                                       ; $6570: $FF
    ld b, d                                       ; $6571: $42
    cp $2C                                        ; $6572: $FE $2C
    ld a, h                                       ; $6574: $7C
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
    ld a, [hl]                                    ; $6580: $7E
    nop                                           ; $6581: $00
    ld h, h                                       ; $6582: $64
    jr jr_00D_65CF                                ; $6583: $18 $4A

    inc [hl]                                      ; $6585: $34
    ld l, d                                       ; $6586: $6A
    inc d                                         ; $6587: $14
    ld d, [hl]                                    ; $6588: $56
    jr z, jr_00D_65B9                             ; $6589: $28 $2E

    db $10                                        ; $658B: $10
    inc a                                         ; $658C: $3C
    nop                                           ; $658D: $00
    ld a, h                                       ; $658E: $7C
    nop                                           ; $658F: $00
    ld a, h                                       ; $6590: $7C
    nop                                           ; $6591: $00
    ld a, [hl]                                    ; $6592: $7E
    inc a                                         ; $6593: $3C
    ld a, $00                                     ; $6594: $3E $00
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
    ld a, [hl]                                    ; $65A2: $7E
    nop                                           ; $65A3: $00
    ld b, h                                       ; $65A4: $44
    jr c, jr_00D_6569                             ; $65A5: $38 $C2

    inc a                                         ; $65A7: $3C
    ld c, l                                       ; $65A8: $4D

jr_00D_65A9:
    or d                                          ; $65A9: $B2
    and $18                                       ; $65AA: $E6 $18
    inc a                                         ; $65AC: $3C
    nop                                           ; $65AD: $00
    ld a, [hl]                                    ; $65AE: $7E
    nop                                           ; $65AF: $00
    rst $38                                       ; $65B0: $FF
    ld b, d                                       ; $65B1: $42
    rst $38                                       ; $65B2: $FF
    inc [hl]                                      ; $65B3: $34
    halt                                          ; $65B4: $76
    nop                                           ; $65B5: $00
    nop                                           ; $65B6: $00
    nop                                           ; $65B7: $00
    nop                                           ; $65B8: $00

jr_00D_65B9:
    nop                                           ; $65B9: $00

jr_00D_65BA:
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
    ld a, b                                       ; $65C4: $78
    nop                                           ; $65C5: $00
    db $FC                                        ; $65C6: $FC
    ld a, b                                       ; $65C7: $78
    cp $7C                                        ; $65C8: $FE $7C
    cp $1C                                        ; $65CA: $FE $1C
    cp $64                                        ; $65CC: $FE $64
    adc a                                         ; $65CE: $8F

jr_00D_65CF:
    ld [hl], d                                    ; $65CF: $72
    ld a, h                                       ; $65D0: $7C
    nop                                           ; $65D1: $00
    adc d                                         ; $65D2: $8A
    ld [hl], h                                    ; $65D3: $74
    ld a, l                                       ; $65D4: $7D
    ld b, $EE                                     ; $65D5: $06 $EE
    ld sp, $5AF7                                  ; $65D7: $31 $F7 $5A
    rst $38                                       ; $65DA: $FF
    ld [hl+], a                                   ; $65DB: $22
    rst $38                                       ; $65DC: $FF
    ld a, [hl]                                    ; $65DD: $7E
    rst $38                                       ; $65DE: $FF
    ld h, b                                       ; $65DF: $60
    nop                                           ; $65E0: $00
    nop                                           ; $65E1: $00
    nop                                           ; $65E2: $00
    nop                                           ; $65E3: $00
    add b                                         ; $65E4: $80
    nop                                           ; $65E5: $00
    rst $38                                       ; $65E6: $FF
    nop                                           ; $65E7: $00
    cp h                                          ; $65E8: $BC
    ld b, e                                       ; $65E9: $43
    rst $20                                       ; $65EA: $E7
    jr @+$01                                      ; $65EB: $18 $FF

    inc bc                                        ; $65ED: $03
    rst $38                                       ; $65EE: $FF
    dec de                                        ; $65EF: $1B
    nop                                           ; $65F0: $00
    nop                                           ; $65F1: $00
    nop                                           ; $65F2: $00
    nop                                           ; $65F3: $00
    nop                                           ; $65F4: $00
    nop                                           ; $65F5: $00
    ret nz                                        ; $65F6: $C0

    nop                                           ; $65F7: $00
    jr nc, jr_00D_65BA                            ; $65F8: $30 $C0

    call z, $F630                                 ; $65FA: $CC $30 $F6
    adc h                                         ; $65FD: $8C
    ld a, [$E1E4]                                 ; $65FE: $FA $E4 $E1
    ld e, [hl]                                    ; $6601: $5E
    sbc $3F                                       ; $6602: $DE $3F
    cp a                                          ; $6604: $BF
    ld [hl], c                                    ; $6605: $71
    rst $38                                       ; $6606: $FF
    ld h, h                                       ; $6607: $64
    rst $38                                       ; $6608: $FF
    ld c, d                                       ; $6609: $4A
    rst $38                                       ; $660A: $FF
    ld b, a                                       ; $660B: $47
    ld a, a                                       ; $660C: $7F
    ld [hl+], a                                   ; $660D: $22
    ccf                                           ; $660E: $3F
    nop                                           ; $660F: $00
    rst $38                                       ; $6610: $FF
    dec de                                        ; $6611: $1B
    rst $38                                       ; $6612: $FF
    inc bc                                        ; $6613: $03
    rst $38                                       ; $6614: $FF
    rra                                           ; $6615: $1F
    ld a, a                                       ; $6616: $7F
    cp a                                          ; $6617: $BF
    cp a                                          ; $6618: $BF
    ld b, b                                       ; $6619: $40
    ret nz                                        ; $661A: $C0

    ccf                                           ; $661B: $3F
    rst $38                                       ; $661C: $FF
    rrca                                          ; $661D: $0F
    rst $38                                       ; $661E: $FF
    nop                                           ; $661F: $00
    db $FD                                        ; $6620: $FD
    ld a, [c]                                     ; $6621: $F2
    db $FD                                        ; $6622: $FD
    ld a, [$F6FB]                                 ; $6623: $FA $FB $F6
    or $CC                                        ; $6626: $F6 $CC
    call z, $3838                                 ; $6628: $CC $38 $38
    ldh a, [$F0]                                  ; $662B: $F0 $F0
    ret nz                                        ; $662D: $C0

    ret nz                                        ; $662E: $C0

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
    ld bc, $0200                                  ; $663A: $01 $00 $02
    ld bc, $0102                                  ; $663D: $01 $02 $01
    inc bc                                        ; $6640: $03
    nop                                           ; $6641: $00
    inc bc                                        ; $6642: $03
    ld bc, $017F                                  ; $6643: $01 $7F $01
    rst $38                                       ; $6646: $FF
    dec [hl]                                      ; $6647: $35
    bit 6, l                                      ; $6648: $CB $75
    adc e                                         ; $664A: $8B
    ld [hl], l                                    ; $664B: $75
    db $FD                                        ; $664C: $FD
    halt                                          ; $664D: $76
    rst $38                                       ; $664E: $FF
    inc sp                                        ; $664F: $33
    rst $38                                       ; $6650: $FF
    nop                                           ; $6651: $00
    cp $01                                        ; $6652: $FE $01
    cp a                                          ; $6654: $BF
    ld d, b                                       ; $6655: $50
    cp a                                          ; $6656: $BF
    ld e, l                                       ; $6657: $5D
    cp a                                          ; $6658: $BF
    ld e, l                                       ; $6659: $5D
    cp a                                          ; $665A: $BF
    ld e, h                                       ; $665B: $5C
    cp a                                          ; $665C: $BF
    ld e, a                                       ; $665D: $5F
    cp a                                          ; $665E: $BF
    ld e, a                                       ; $665F: $5F
    cp a                                          ; $6660: $BF
    ld e, a                                       ; $6661: $5F
    cp a                                          ; $6662: $BF
    ld e, a                                       ; $6663: $5F
    rst $18                                       ; $6664: $DF
    ld l, a                                       ; $6665: $6F
    ld l, a                                       ; $6666: $6F
    inc sp                                        ; $6667: $33
    ld [hl], e                                    ; $6668: $73
    inc a                                         ; $6669: $3C
    inc a                                         ; $666A: $3C
    rra                                           ; $666B: $1F
    rra                                           ; $666C: $1F
    rlca                                          ; $666D: $07
    rlca                                          ; $666E: $07
    nop                                           ; $666F: $00
    rlca                                          ; $6670: $07
    nop                                           ; $6671: $00
    rra                                           ; $6672: $1F
    rlca                                          ; $6673: $07
    jr nc, @+$21                                  ; $6674: $30 $1F

    ld l, a                                       ; $6676: $6F
    jr nc, jr_00D_66D8                            ; $6677: $30 $5F

    inc hl                                        ; $6679: $23
    cp a                                          ; $667A: $BF
    ld c, a                                       ; $667B: $4F
    cp a                                          ; $667C: $BF
    ld c, a                                       ; $667D: $4F
    cp a                                          ; $667E: $BF
    ld e, a                                       ; $667F: $5F
    cp a                                          ; $6680: $BF
    ld e, h                                       ; $6681: $5C
    cp [hl]                                       ; $6682: $BE
    ld e, l                                       ; $6683: $5D
    cp a                                          ; $6684: $BF
    ld c, h                                       ; $6685: $4C
    cp a                                          ; $6686: $BF
    ld c, c                                       ; $6687: $49
    cp a                                          ; $6688: $BF
    ld b, c                                       ; $6689: $41
    rst $38                                       ; $668A: $FF
    nop                                           ; $668B: $00
    cp $75                                        ; $668C: $FE $75
    cp $75                                        ; $668E: $FE $75
    bit 6, h                                      ; $6690: $CB $74
    adc d                                         ; $6692: $8A
    ld [hl], l                                    ; $6693: $75
    cp $75                                        ; $6694: $FE $75
    rst $38                                       ; $6696: $FF
    ld [hl], h                                    ; $6697: $74
    rst $38                                       ; $6698: $FF
    ld [hl], a                                    ; $6699: $77
    rst $38                                       ; $669A: $FF
    scf                                           ; $669B: $37
    ccf                                           ; $669C: $3F
    nop                                           ; $669D: $00
    nop                                           ; $669E: $00
    nop                                           ; $669F: $00
    nop                                           ; $66A0: $00
    nop                                           ; $66A1: $00
    nop                                           ; $66A2: $00
    nop                                           ; $66A3: $00
    nop                                           ; $66A4: $00
    ld b, b                                       ; $66A5: $40
    nop                                           ; $66A6: $00
    jr nc, jr_00D_66A9                            ; $66A7: $30 $00

jr_00D_66A9:
    rrca                                          ; $66A9: $0F
    nop                                           ; $66AA: $00
    nop                                           ; $66AB: $00
    nop                                           ; $66AC: $00
    nop                                           ; $66AD: $00
    nop                                           ; $66AE: $00
    nop                                           ; $66AF: $00
    nop                                           ; $66B0: $00
    nop                                           ; $66B1: $00
    nop                                           ; $66B2: $00
    inc b                                         ; $66B3: $04
    nop                                           ; $66B4: $00
    ld [$0800], sp                                ; $66B5: $08 $00 $08
    nop                                           ; $66B8: $00
    stop                                          ; $66B9: $10 $00
    stop                                          ; $66BB: $10 $00
    stop                                          ; $66BD: $10 $00
    db $10                                        ; $66BF: $10

jr_00D_66C0:
    ld b, $00                                     ; $66C0: $06 $00
    rrca                                          ; $66C2: $0F
    ld b, $17                                     ; $66C3: $06 $17
    rrca                                          ; $66C5: $0F
    dec sp                                        ; $66C6: $3B
    rra                                           ; $66C7: $1F
    add hl, sp                                    ; $66C8: $39
    rra                                           ; $66C9: $1F
    dec sp                                        ; $66CA: $3B
    dec e                                         ; $66CB: $1D
    dec e                                         ; $66CC: $1D
    ld a, [bc]                                    ; $66CD: $0A
    ld a, [hl+]                                   ; $66CE: $2A
    dec d                                         ; $66CF: $15
    ldh a, [rP1]                                  ; $66D0: $F0 $00
    sbc b                                         ; $66D2: $98
    ldh a, [$8C]                                  ; $66D3: $F0 $8C
    ld hl, sp-$32                                 ; $66D5: $F8 $CE
    db $FC                                        ; $66D7: $FC

jr_00D_66D8:
    sbc $FC                                       ; $66D8: $DE $FC
    db $FC                                        ; $66DA: $FC
    jr c, @+$3A                                   ; $66DB: $38 $38

    ret nc                                        ; $66DD: $D0

    ld d, h                                       ; $66DE: $54
    xor b                                         ; $66DF: $A8
    rra                                           ; $66E0: $1F
    nop                                           ; $66E1: $00
    ccf                                           ; $66E2: $3F
    rra                                           ; $66E3: $1F
    ld b, c                                       ; $66E4: $41
    ccf                                           ; $66E5: $3F
    ld a, b                                       ; $66E6: $78
    ccf                                           ; $66E7: $3F
    ld a, l                                       ; $66E8: $7D
    ld a, $3E                                     ; $66E9: $3E $3E
    dec b                                         ; $66EB: $05
    dec d                                         ; $66EC: $15
    ld a, [bc]                                    ; $66ED: $0A
    add hl, bc                                    ; $66EE: $09
    ld b, $E0                                     ; $66EF: $06 $E0
    nop                                           ; $66F1: $00
    ldh a, [$A0]                                  ; $66F2: $F0 $A0

jr_00D_66F4:
    add sp, -$30                                  ; $66F4: $E8 $D0
    db $FC                                        ; $66F6: $FC
    ret c                                         ; $66F7: $D8

    db $FC                                        ; $66F8: $FC
    sbc b                                         ; $66F9: $98
    sbc h                                         ; $66FA: $9C
    ld l, b                                       ; $66FB: $68
    jr c, @-$3E                                   ; $66FC: $38 $C0

    jr nc, jr_00D_66C0                            ; $66FE: $30 $C0

    ld a, [de]                                    ; $6700: $1A
    dec b                                         ; $6701: $05
    inc b                                         ; $6702: $04
    inc bc                                        ; $6703: $03
    rrca                                          ; $6704: $0F
    inc b                                         ; $6705: $04
    rrca                                          ; $6706: $0F
    inc bc                                        ; $6707: $03
    rra                                           ; $6708: $1F
    ld [$071F], sp                                ; $6709: $08 $1F $07
    rra                                           ; $670C: $1F
    ld [$071F], sp                                ; $670D: $08 $1F $07
    ld e, b                                       ; $6710: $58
    and b                                         ; $6711: $A0
    jr nc, @-$3E                                  ; $6712: $30 $C0

    ld hl, sp+$10                                 ; $6714: $F8 $10
    ld hl, sp-$20                                 ; $6716: $F8 $E0
    db $FC                                        ; $6718: $FC
    ld [$F0FC], sp                                ; $6719: $08 $FC $F0
    db $FC                                        ; $671C: $FC
    ld [$F0FC], sp                                ; $671D: $08 $FC $F0
    ld a, [de]                                    ; $6720: $1A
    dec b                                         ; $6721: $05
    inc b                                         ; $6722: $04
    inc bc                                        ; $6723: $03
    rrca                                          ; $6724: $0F
    inc b                                         ; $6725: $04
    rra                                           ; $6726: $1F
    rlca                                          ; $6727: $07
    ccf                                           ; $6728: $3F
    db $10                                        ; $6729: $10
    ccf                                           ; $672A: $3F
    rrca                                          ; $672B: $0F
    ccf                                           ; $672C: $3F
    db $10                                        ; $672D: $10
    ccf                                           ; $672E: $3F
    rrca                                          ; $672F: $0F
    ld e, b                                       ; $6730: $58
    and b                                         ; $6731: $A0
    jr nc, jr_00D_66F4                            ; $6732: $30 $C0

    ld hl, sp+$10                                 ; $6734: $F8 $10
    ldh a, [$C0]                                  ; $6736: $F0 $C0
    ld hl, sp+$10                                 ; $6738: $F8 $10
    ld hl, sp-$20                                 ; $673A: $F8 $E0
    ld hl, sp+$10                                 ; $673C: $F8 $10
    ld hl, sp-$20                                 ; $673E: $F8 $E0
    inc e                                         ; $6740: $1C
    inc bc                                        ; $6741: $03
    ccf                                           ; $6742: $3F
    ld [$0F7F], sp                                ; $6743: $08 $7F $0F
    ld a, a                                       ; $6746: $7F
    jr nz, jr_00D_67C8                            ; $6747: $20 $7F

    rra                                           ; $6749: $1F
    ccf                                           ; $674A: $3F
    nop                                           ; $674B: $00
    ccf                                           ; $674C: $3F
    rra                                           ; $674D: $1F
    ccf                                           ; $674E: $3F
    nop                                           ; $674F: $00
    db $10                                        ; $6750: $10
    ldh [$E0], a                                  ; $6751: $E0 $E0
    nop                                           ; $6753: $00
    ldh [$C0], a                                  ; $6754: $E0 $C0
    ldh [rP1], a                                  ; $6756: $E0 $00
    ldh [$C0], a                                  ; $6758: $E0 $C0
    ldh [rP1], a                                  ; $675A: $E0 $00
    ldh [$C0], a                                  ; $675C: $E0 $C0
    ldh [rP1], a                                  ; $675E: $E0 $00
    inc e                                         ; $6760: $1C
    inc bc                                        ; $6761: $03
    ccf                                           ; $6762: $3F
    ld [$073F], sp                                ; $6763: $08 $3F $07
    ccf                                           ; $6766: $3F
    db $10                                        ; $6767: $10
    ccf                                           ; $6768: $3F
    rrca                                          ; $6769: $0F
    rra                                           ; $676A: $1F
    nop                                           ; $676B: $00
    rra                                           ; $676C: $1F
    rrca                                          ; $676D: $0F
    rra                                           ; $676E: $1F
    nop                                           ; $676F: $00
    db $10                                        ; $6770: $10
    ldh [$E0], a                                  ; $6771: $E0 $E0
    nop                                           ; $6773: $00
    ldh a, [$E0]                                  ; $6774: $F0 $E0
    ldh a, [rP1]                                  ; $6776: $F0 $00
    ldh a, [$E0]                                  ; $6778: $F0 $E0
    ldh a, [rP1]                                  ; $677A: $F0 $00
    ldh a, [$E0]                                  ; $677C: $F0 $E0
    ldh a, [rP1]                                  ; $677E: $F0 $00
    inc e                                         ; $6780: $1C
    inc bc                                        ; $6781: $03
    ccf                                           ; $6782: $3F
    ld [$073F], sp                                ; $6783: $08 $3F $07
    rra                                           ; $6786: $1F
    ld [$071F], sp                                ; $6787: $08 $1F $07
    rrca                                          ; $678A: $0F
    nop                                           ; $678B: $00
    rrca                                          ; $678C: $0F
    rlca                                          ; $678D: $07
    rrca                                          ; $678E: $0F
    nop                                           ; $678F: $00
    db $10                                        ; $6790: $10
    ldh [$E0], a                                  ; $6791: $E0 $E0
    nop                                           ; $6793: $00

jr_00D_6794:
    ldh a, [$E0]                                  ; $6794: $F0 $E0
    ld hl, sp+$00                                 ; $6796: $F8 $00
    ld hl, sp-$10                                 ; $6798: $F8 $F0
    ld hl, sp+$00                                 ; $679A: $F8 $00
    ld hl, sp-$10                                 ; $679C: $F8 $F0
    ld hl, sp+$00                                 ; $679E: $F8 $00
    rrca                                          ; $67A0: $0F
    nop                                           ; $67A1: $00
    inc c                                         ; $67A2: $0C
    inc bc                                        ; $67A3: $03
    rla                                           ; $67A4: $17
    ld [$0718], sp                                ; $67A5: $08 $18 $07
    rrca                                          ; $67A8: $0F
    nop                                           ; $67A9: $00
    rra                                           ; $67AA: $1F
    rrca                                          ; $67AB: $0F
    rra                                           ; $67AC: $1F
    ld c, $0F                                     ; $67AD: $0E $0F
    nop                                           ; $67AF: $00
    ld hl, sp+$00                                 ; $67B0: $F8 $00
    jr jr_00D_6794                                ; $67B2: $18 $E0

    db $F4                                        ; $67B4: $F4
    ld [$F00C], sp                                ; $67B5: $08 $0C $F0
    ld hl, sp+$00                                 ; $67B8: $F8 $00
    db $FC                                        ; $67BA: $FC
    ld a, b                                       ; $67BB: $78
    db $FC                                        ; $67BC: $FC
    jr c, @-$06                                   ; $67BD: $38 $F8

    nop                                           ; $67BF: $00
    rra                                           ; $67C0: $1F
    nop                                           ; $67C1: $00
    jr jr_00D_67CB                                ; $67C2: $18 $07

    rla                                           ; $67C4: $17
    ld [$0718], sp                                ; $67C5: $08 $18 $07

jr_00D_67C8:
    rrca                                          ; $67C8: $0F
    nop                                           ; $67C9: $00
    rra                                           ; $67CA: $1F

jr_00D_67CB:
    rrca                                          ; $67CB: $0F
    rra                                           ; $67CC: $1F
    ld c, $0F                                     ; $67CD: $0E $0F
    nop                                           ; $67CF: $00
    ldh a, [rP1]                                  ; $67D0: $F0 $00

jr_00D_67D2:
    jr c, jr_00D_6794                             ; $67D2: $38 $C0

    db $F4                                        ; $67D4: $F4
    ld [$F00C], sp                                ; $67D5: $08 $0C $F0
    ld hl, sp+$00                                 ; $67D8: $F8 $00
    db $FC                                        ; $67DA: $FC
    ld a, b                                       ; $67DB: $78
    db $FC                                        ; $67DC: $FC
    jr c, @-$06                                   ; $67DD: $38 $F8

    nop                                           ; $67DF: $00
    jr nz, jr_00D_6801                            ; $67E0: $20 $1F

    rra                                           ; $67E2: $1F
    nop                                           ; $67E3: $00
    jr jr_00D_67ED                                ; $67E4: $18 $07

    rla                                           ; $67E6: $17
    ld [$003F], sp                                ; $67E7: $08 $3F $00
    ccf                                           ; $67EA: $3F
    ld b, $3F                                     ; $67EB: $06 $3F

jr_00D_67ED:
    ld e, $1F                                     ; $67ED: $1E $1F
    nop                                           ; $67EF: $00
    ld b, b                                       ; $67F0: $40
    add b                                         ; $67F1: $80
    ret nz                                        ; $67F2: $C0

    nop                                           ; $67F3: $00
    jr nc, @-$3E                                  ; $67F4: $30 $C0

jr_00D_67F6:
    ldh a, [rP1]                                  ; $67F6: $F0 $00
    ld hl, sp+$30                                 ; $67F8: $F8 $30
    ld hl, sp-$10                                 ; $67FA: $F8 $F0
    ldh a, [rP1]                                  ; $67FC: $F0 $00
    nop                                           ; $67FE: $00
    nop                                           ; $67FF: $00
    db $10                                        ; $6800: $10

jr_00D_6801:
    rrca                                          ; $6801: $0F
    rrca                                          ; $6802: $0F
    nop                                           ; $6803: $00
    jr jr_00D_680D                                ; $6804: $18 $07

    rla                                           ; $6806: $17
    ld [$003F], sp                                ; $6807: $08 $3F $00
    ccf                                           ; $680A: $3F
    ld b, $3F                                     ; $680B: $06 $3F

jr_00D_680D:
    ld e, $1F                                     ; $680D: $1E $1F
    nop                                           ; $680F: $00
    jr nz, jr_00D_67D2                            ; $6810: $20 $C0

    ldh [rP1], a                                  ; $6812: $E0 $00
    jr nc, @-$3E                                  ; $6814: $30 $C0

    ldh a, [rP1]                                  ; $6816: $F0 $00
    ld hl, sp+$30                                 ; $6818: $F8 $30
    ld hl, sp-$10                                 ; $681A: $F8 $F0
    ldh a, [rP1]                                  ; $681C: $F0 $00
    nop                                           ; $681E: $00
    nop                                           ; $681F: $00
    ld [$0707], sp                                ; $6820: $08 $07 $07
    nop                                           ; $6823: $00
    jr jr_00D_682D                                ; $6824: $18 $07

    rla                                           ; $6826: $17
    ld [$003F], sp                                ; $6827: $08 $3F $00
    ccf                                           ; $682A: $3F
    ld b, $3F                                     ; $682B: $06 $3F

jr_00D_682D:
    ld e, $1F                                     ; $682D: $1E $1F
    nop                                           ; $682F: $00
    db $10                                        ; $6830: $10
    ldh [$F0], a                                  ; $6831: $E0 $F0
    nop                                           ; $6833: $00
    jr nc, jr_00D_67F6                            ; $6834: $30 $C0

    ldh a, [rP1]                                  ; $6836: $F0 $00
    ld hl, sp+$30                                 ; $6838: $F8 $30
    ld hl, sp-$10                                 ; $683A: $F8 $F0
    ldh a, [rP1]                                  ; $683C: $F0 $00
    nop                                           ; $683E: $00
    nop                                           ; $683F: $00
    inc hl                                        ; $6840: $23
    inc e                                         ; $6841: $1C
    ld e, a                                       ; $6842: $5F
    jr nz, @-$57                                  ; $6843: $20 $A7

    ld e, e                                       ; $6845: $5B
    rst $18                                       ; $6846: $DF
    daa                                           ; $6847: $27
    ld d, a                                       ; $6848: $57
    cpl                                           ; $6849: $2F
    ld l, a                                       ; $684A: $6F
    rla                                           ; $684B: $17
    ccf                                           ; $684C: $3F
    inc bc                                        ; $684D: $03
    rrca                                          ; $684E: $0F
    nop                                           ; $684F: $00
    ldh a, [rP1]                                  ; $6850: $F0 $00
    ld c, h                                       ; $6852: $4C
    or b                                          ; $6853: $B0
    cp [hl]                                       ; $6854: $BE
    ld c, h                                       ; $6855: $4C
    rst $18                                       ; $6856: $DF
    xor [hl]                                      ; $6857: $AE
    rst $18                                       ; $6858: $DF
    xor [hl]                                      ; $6859: $AE
    rst $18                                       ; $685A: $DF
    ld l, $9E                                     ; $685B: $2E $9E
    ld h, h                                       ; $685D: $64
    rst $38                                       ; $685E: $FF
    nop                                           ; $685F: $00
    inc e                                         ; $6860: $1C
    inc bc                                        ; $6861: $03
    ccf                                           ; $6862: $3F
    ld [$063F], sp                                ; $6863: $08 $3F $06
    ccf                                           ; $6866: $3F
    ld de, $0E3F                                  ; $6867: $11 $3F $0E
    rra                                           ; $686A: $1F
    ld bc, $0E1F                                  ; $686B: $01 $1F $0E
    rra                                           ; $686E: $1F
    nop                                           ; $686F: $00
    ld d, $E0                                     ; $6870: $16 $E0
    jp hl                                         ; $6872: $E9


jr_00D_6873:
    ld b, $F9                                     ; $6873: $06 $F9
    ld b, [hl]                                    ; $6875: $46
    cp $38                                        ; $6876: $FE $38
    db $FC                                        ; $6878: $FC
    jr nc, jr_00D_6873                            ; $6879: $30 $F8

    nop                                           ; $687B: $00
    ldh a, [rP1]                                  ; $687C: $F0 $00
    ld hl, sp+$00                                 ; $687E: $F8 $00
    inc e                                         ; $6880: $1C
    inc bc                                        ; $6881: $03
    daa                                           ; $6882: $27
    jr @+$29                                      ; $6883: $18 $27

    dec de                                        ; $6885: $1B
    ccf                                           ; $6886: $3F
    rlca                                          ; $6887: $07
    ccf                                           ; $6888: $3F
    rra                                           ; $6889: $1F
    rra                                           ; $688A: $1F
    rlca                                          ; $688B: $07
    ld a, a                                       ; $688C: $7F
    inc bc                                        ; $688D: $03
    ccf                                           ; $688E: $3F
    nop                                           ; $688F: $00
    db $10                                        ; $6890: $10
    ldh [$E0], a                                  ; $6891: $E0 $E0
    nop                                           ; $6893: $00
    or $E0                                        ; $6894: $F6 $E0
    ld sp, hl                                     ; $6896: $F9
    or $F9                                        ; $6897: $F6 $F9
    or $FE                                        ; $6899: $F6 $FE
    ret c                                         ; $689B: $D8

    ld hl, sp-$80                                 ; $689C: $F8 $80
    ldh [rP1], a                                  ; $689E: $E0 $00
    db $10                                        ; $68A0: $10
    rrca                                          ; $68A1: $0F
    rrca                                          ; $68A2: $0F
    nop                                           ; $68A3: $00
    jr jr_00D_68AD                                ; $68A4: $18 $07

    rla                                           ; $68A6: $17
    ld [$003F], sp                                ; $68A7: $08 $3F $00
    ccf                                           ; $68AA: $3F
    ld b, $3F                                     ; $68AB: $06 $3F

jr_00D_68AD:
    ld e, $1F                                     ; $68AD: $1E $1F
    nop                                           ; $68AF: $00
    inc h                                         ; $68B0: $24
    ret c                                         ; $68B1: $D8

    ld a, [$3404]                                 ; $68B2: $FA $04 $34
    ret nz                                        ; $68B5: $C0

    ldh a, [rP1]                                  ; $68B6: $F0 $00
    ld hl, sp+$30                                 ; $68B8: $F8 $30
    ld hl, sp-$10                                 ; $68BA: $F8 $F0
    ldh a, [rP1]                                  ; $68BC: $F0 $00
    nop                                           ; $68BE: $00
    nop                                           ; $68BF: $00
    ld h, b                                       ; $68C0: $60
    rra                                           ; $68C1: $1F
    ld c, a                                       ; $68C2: $4F
    jr nc, @-$46                                  ; $68C3: $30 $B8

    ld b, a                                       ; $68C5: $47
    ld d, a                                       ; $68C6: $57
    ld [$003F], sp                                ; $68C7: $08 $3F $00
    ccf                                           ; $68CA: $3F
    ld b, $3F                                     ; $68CB: $06 $3F
    ld e, $1F                                     ; $68CD: $1E $1F
    nop                                           ; $68CF: $00
    ld [hl-], a                                   ; $68D0: $32
    call z, $10EC                                 ; $68D1: $CC $EC $10
    inc [hl]                                      ; $68D4: $34
    ret z                                         ; $68D5: $C8

    ld hl, sp+$00                                 ; $68D6: $F8 $00
    ld hl, sp+$30                                 ; $68D8: $F8 $30
    ld hl, sp-$10                                 ; $68DA: $F8 $F0
    ldh a, [rP1]                                  ; $68DC: $F0 $00
    nop                                           ; $68DE: $00
    nop                                           ; $68DF: $00
    inc bc                                        ; $68E0: $03
    nop                                           ; $68E1: $00
    inc c                                         ; $68E2: $0C
    inc bc                                        ; $68E3: $03
    inc sp                                        ; $68E4: $33
    inc c                                         ; $68E5: $0C
    ld e, a                                       ; $68E6: $5F
    jr nz, jr_00D_6950                            ; $68E7: $20 $67

    jr jr_00D_6963                                ; $68E9: $18 $78

    rlca                                          ; $68EB: $07
    adc a                                         ; $68EC: $8F
    ld [hl], b                                    ; $68ED: $70
    ld a, b                                       ; $68EE: $78
    nop                                           ; $68EF: $00
    add h                                         ; $68F0: $84
    nop                                           ; $68F1: $00
    ld a, d                                       ; $68F2: $7A
    add h                                         ; $68F3: $84

jr_00D_68F4:
    add $38                                       ; $68F4: $C6 $38
    cp l                                          ; $68F6: $BD
    ld b, d                                       ; $68F7: $42
    db $E3                                        ; $68F8: $E3
    inc e                                         ; $68F9: $1C
    ld e, $E0                                     ; $68FA: $1E $E0
    ldh a, [rP1]                                  ; $68FC: $F0 $00
    nop                                           ; $68FE: $00
    nop                                           ; $68FF: $00
    rlca                                          ; $6900: $07
    nop                                           ; $6901: $00
    ld b, $01                                     ; $6902: $06 $01
    dec bc                                        ; $6904: $0B
    inc b                                         ; $6905: $04
    jr jr_00D_690F                                ; $6906: $18 $07

    rrca                                          ; $6908: $0F
    nop                                           ; $6909: $00
    rra                                           ; $690A: $1F
    rrca                                          ; $690B: $0F
    rra                                           ; $690C: $1F
    ld c, $0F                                     ; $690D: $0E $0F

jr_00D_690F:
    nop                                           ; $690F: $00
    db $FC                                        ; $6910: $FC
    nop                                           ; $6911: $00
    inc c                                         ; $6912: $0C
    ldh a, [$FA]                                  ; $6913: $F0 $FA
    inc b                                         ; $6915: $04
    inc c                                         ; $6916: $0C

jr_00D_6917:
    ldh a, [$F8]                                  ; $6917: $F0 $F8
    nop                                           ; $6919: $00
    db $FC                                        ; $691A: $FC
    ld a, b                                       ; $691B: $78
    db $FC                                        ; $691C: $FC
    jr c, jr_00D_6917                             ; $691D: $38 $F8

    nop                                           ; $691F: $00
    ld a, [de]                                    ; $6920: $1A
    dec b                                         ; $6921: $05
    inc b                                         ; $6922: $04
    inc bc                                        ; $6923: $03
    rrca                                          ; $6924: $0F
    inc b                                         ; $6925: $04
    rlca                                          ; $6926: $07
    ld bc, $040F                                  ; $6927: $01 $0F $04
    rrca                                          ; $692A: $0F
    inc bc                                        ; $692B: $03
    rrca                                          ; $692C: $0F
    inc b                                         ; $692D: $04
    rrca                                          ; $692E: $0F
    inc bc                                        ; $692F: $03
    ld e, b                                       ; $6930: $58
    and b                                         ; $6931: $A0
    jr nc, jr_00D_68F4                            ; $6932: $30 $C0

jr_00D_6934:
    ld hl, sp+$10                                 ; $6934: $F8 $10
    db $FC                                        ; $6936: $FC
    ldh a, [$FE]                                  ; $6937: $F0 $FE
    inc b                                         ; $6939: $04
    cp $F8                                        ; $693A: $FE $F8
    cp $04                                        ; $693C: $FE $04
    cp $F8                                        ; $693E: $FE $F8
    nop                                           ; $6940: $00
    nop                                           ; $6941: $00
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    nop                                           ; $6944: $00
    nop                                           ; $6945: $00
    nop                                           ; $6946: $00
    nop                                           ; $6947: $00
    add b                                         ; $6948: $80
    add b                                         ; $6949: $80
    ld b, b                                       ; $694A: $40
    ret nz                                        ; $694B: $C0

    ld b, b                                       ; $694C: $40
    ret nz                                        ; $694D: $C0

    add b                                         ; $694E: $80
    add b                                         ; $694F: $80

jr_00D_6950:
    ret nz                                        ; $6950: $C0

    ret nz                                        ; $6951: $C0

    jr nz, jr_00D_6934                            ; $6952: $20 $E0

    ld d, b                                       ; $6954: $50
    ldh a, [$28]                                  ; $6955: $F0 $28
    ld hl, sp-$78                                 ; $6957: $F8 $88
    ld hl, sp+$08                                 ; $6959: $F8 $08
    ld hl, sp-$70                                 ; $695B: $F8 $90
    ldh a, [$E0]                                  ; $695D: $F0 $E0
    ldh [$80], a                                  ; $695F: $E0 $80
    add b                                         ; $6961: $80
    ret nz                                        ; $6962: $C0

jr_00D_6963:
    ret nz                                        ; $6963: $C0

jr_00D_6964:
    and b                                         ; $6964: $A0
    ldh [rNR41], a                                ; $6965: $E0 $20
    ldh [rNR41], a                                ; $6967: $E0 $20
    ldh [rNR10], a                                ; $6969: $E0 $10
    ldh a, [$08]                                  ; $696B: $F0 $08
    ld hl, sp+$68                                 ; $696D: $F8 $68
    ld hl, sp+$24                                 ; $696F: $F8 $24
    db $FC                                        ; $6971: $FC
    inc b                                         ; $6972: $04
    db $FC                                        ; $6973: $FC
    inc b                                         ; $6974: $04
    db $FC                                        ; $6975: $FC
    sub h                                         ; $6976: $94
    db $FC                                        ; $6977: $FC
    adc b                                         ; $6978: $88
    ld hl, sp+$08                                 ; $6979: $F8 $08
    ld hl, sp+$18                                 ; $697B: $F8 $18
    ld hl, sp-$20                                 ; $697D: $F8 $E0
    ldh [$C0], a                                  ; $697F: $E0 $C0
    ret nz                                        ; $6981: $C0

    jr nz, jr_00D_6964                            ; $6982: $20 $E0

    db $10                                        ; $6984: $10
    ldh a, [rNR10]                                ; $6985: $F0 $10
    ldh a, [$08]                                  ; $6987: $F0 $08
    ld hl, sp+$08                                 ; $6989: $F8 $08
    ld hl, sp-$38                                 ; $698B: $F8 $C8
    ld hl, sp-$1C                                 ; $698D: $F8 $E4
    db $FC                                        ; $698F: $FC
    ld h, h                                       ; $6990: $64
    db $FC                                        ; $6991: $FC
    inc b                                         ; $6992: $04
    db $FC                                        ; $6993: $FC

jr_00D_6994:
    ld [bc], a                                    ; $6994: $02
    cp $02                                        ; $6995: $FE $02
    cp $3A                                        ; $6997: $FE $3A
    cp $32                                        ; $6999: $FE $32
    cp $22                                        ; $699B: $FE $22
    cp $01                                        ; $699D: $FE $01
    rst $38                                       ; $699F: $FF
    ld b, c                                       ; $69A0: $41
    rst $38                                       ; $69A1: $FF
    ld h, c                                       ; $69A2: $61
    rst $38                                       ; $69A3: $FF
    add hl, sp                                    ; $69A4: $39
    rst $38                                       ; $69A5: $FF
    add hl, sp                                    ; $69A6: $39
    rst $38                                       ; $69A7: $FF
    ld [hl], c                                    ; $69A8: $71
    rst $38                                       ; $69A9: $FF
    ld [bc], a                                    ; $69AA: $02
    cp $0C                                        ; $69AB: $FE $0C
    db $FC                                        ; $69AD: $FC
    ldh a, [$F0]                                  ; $69AE: $F0 $F0
    ret nz                                        ; $69B0: $C0

    ret nz                                        ; $69B1: $C0

    jr nz, jr_00D_6994                            ; $69B2: $20 $E0

    db $10                                        ; $69B4: $10
    ldh a, [$30]                                  ; $69B5: $F0 $30
    ldh a, [$C8]                                  ; $69B7: $F0 $C8
    ret z                                         ; $69B9: $C8

    jr c, jr_00D_69F4                             ; $69BA: $38 $38

    ld c, b                                       ; $69BC: $48
    ld a, b                                       ; $69BD: $78
    ld d, b                                       ; $69BE: $50
    ld [hl], b                                    ; $69BF: $70
    and h                                         ; $69C0: $A4
    db $E4                                        ; $69C1: $E4
    xor h                                         ; $69C2: $AC
    db $EC                                        ; $69C3: $EC
    ld l, d                                       ; $69C4: $6A
    ld l, [hl]                                    ; $69C5: $6E
    ld l, [hl]                                    ; $69C6: $6E
    ld l, [hl]                                    ; $69C7: $6E
    and b                                         ; $69C8: $A0
    and b                                         ; $69C9: $A0
    adc h                                         ; $69CA: $8C
    adc h                                         ; $69CB: $8C
    ld a, [bc]                                    ; $69CC: $0A
    ld c, $29                                     ; $69CD: $0E $29
    cpl                                           ; $69CF: $2F
    jp hl                                         ; $69D0: $E9


    rst $28                                       ; $69D1: $EF
    add hl, hl                                    ; $69D2: $29
    rst $28                                       ; $69D3: $EF
    jp hl                                         ; $69D4: $E9


    rst $28                                       ; $69D5: $EF
    add hl, hl                                    ; $69D6: $29
    cpl                                           ; $69D7: $2F
    add l                                         ; $69D8: $85
    add a                                         ; $69D9: $87
    ld a, d                                       ; $69DA: $7A
    ld a, [$FC0C]                                 ; $69DB: $FA $0C $FC
    ldh a, [$F0]                                  ; $69DE: $F0 $F0
    nop                                           ; $69E0: $00
    nop                                           ; $69E1: $00
    ret nz                                        ; $69E2: $C0

    ret nz                                        ; $69E3: $C0

    and b                                         ; $69E4: $A0
    ldh [$C0], a                                  ; $69E5: $E0 $C0
    ret nz                                        ; $69E7: $C0

    nop                                           ; $69E8: $00
    nop                                           ; $69E9: $00
    nop                                           ; $69EA: $00
    nop                                           ; $69EB: $00
    db $10                                        ; $69EC: $10
    db $30, $20
    db $20, $40

    ld b, b                                       ; $69F1: $40
    nop                                           ; $69F2: $00
    ld b, b                                       ; $69F3: $40

jr_00D_69F4:
    inc b                                         ; $69F4: $04
    inc b                                         ; $69F5: $04
    nop                                           ; $69F6: $00
    nop                                           ; $69F7: $00
    nop                                           ; $69F8: $00
    nop                                           ; $69F9: $00
    nop                                           ; $69FA: $00
    nop                                           ; $69FB: $00
    inc b                                         ; $69FC: $04
    inc b                                         ; $69FD: $04
    ld [bc], a                                    ; $69FE: $02
    ld b, $02                                     ; $69FF: $06 $02
    ld b, $46                                     ; $6A01: $06 $46
    add $06                                       ; $6A03: $C6 $06
    ld b, $06                                     ; $6A05: $06 $06
    ld b, $02                                     ; $6A07: $06 $02
    ld [bc], a                                    ; $6A09: $02
    add b                                         ; $6A0A: $80
    add b                                         ; $6A0B: $80
    ld [hl], b                                    ; $6A0C: $70
    ldh a, [rP1]                                  ; $6A0D: $F0 $00

jr_00D_6A0F:
    nop                                           ; $6A0F: $00
    nop                                           ; $6A10: $00
    nop                                           ; $6A11: $00
    db $20, $20
    nop                                           ; $6A14: $00
    nop                                           ; $6A15: $00
    nop                                           ; $6A16: $00
    nop                                           ; $6A17: $00
    nop                                           ; $6A18: $00
    ld b, b                                       ; $6A19: $40
    nop                                           ; $6A1A: $00
    nop                                           ; $6A1B: $00
    nop                                           ; $6A1C: $00
    nop                                           ; $6A1D: $00
    nop                                           ; $6A1E: $00
    nop                                           ; $6A1F: $00
    nop                                           ; $6A20: $00
    nop                                           ; $6A21: $00
    add b                                         ; $6A22: $80
    add b                                         ; $6A23: $80
    nop                                           ; $6A24: $00
    nop                                           ; $6A25: $00
    inc b                                         ; $6A26: $04
    inc b                                         ; $6A27: $04
    nop                                           ; $6A28: $00
    inc b                                         ; $6A29: $04
    nop                                           ; $6A2A: $00
    nop                                           ; $6A2B: $00
    nop                                           ; $6A2C: $00
    add b                                         ; $6A2D: $80
    nop                                           ; $6A2E: $00
    nop                                           ; $6A2F: $00

    ; $6A30
BITMAP_Battle_Summon::
    INCBIN "autogenerated/assets/sprites/objects/SummonBattle.tileset"

    ; $6D70
    nop                                           ; $6D70: $00
    nop                                           ; $6D71: $00
    nop                                           ; $6D72: $00
    nop                                           ; $6D73: $00
    nop                                           ; $6D74: $00

jr_00D_6D75:
    nop                                           ; $6D75: $00
    nop                                           ; $6D76: $00
    nop                                           ; $6D77: $00
    nop                                           ; $6D78: $00
    nop                                           ; $6D79: $00
    inc bc                                        ; $6D7A: $03
    nop                                           ; $6D7B: $00
    rlca                                          ; $6D7C: $07
    inc bc                                        ; $6D7D: $03
    inc bc                                        ; $6D7E: $03
    ld bc, $0000                                  ; $6D7F: $01 $00 $00
    nop                                           ; $6D82: $00
    nop                                           ; $6D83: $00
    nop                                           ; $6D84: $00
    nop                                           ; $6D85: $00

jr_00D_6D86:
    nop                                           ; $6D86: $00
    nop                                           ; $6D87: $00
    ld d, b                                       ; $6D88: $50
    nop                                           ; $6D89: $00
    ld hl, sp+$50                                 ; $6D8A: $F8 $50
    db $FC                                        ; $6D8C: $FC
    ld hl, sp-$02                                 ; $6D8D: $F8 $FE
    db $FC                                        ; $6D8F: $FC

jr_00D_6D90:
    rra                                           ; $6D90: $1F
    rrca                                          ; $6D91: $0F
    rrca                                          ; $6D92: $0F
    rlca                                          ; $6D93: $07
    rrca                                          ; $6D94: $0F
    rlca                                          ; $6D95: $07
    rlca                                          ; $6D96: $07
    nop                                           ; $6D97: $00
    ld b, $01                                     ; $6D98: $06 $01
    rrca                                          ; $6D9A: $0F
    nop                                           ; $6D9B: $00
    rra                                           ; $6D9C: $1F
    nop                                           ; $6D9D: $00
    inc de                                        ; $6D9E: $13
    inc c                                         ; $6D9F: $0C
    db $FC                                        ; $6DA0: $FC
    ret nz                                        ; $6DA1: $C0

    db $FC                                        ; $6DA2: $FC
    add b                                         ; $6DA3: $80
    db $FC                                        ; $6DA4: $FC
    nop                                           ; $6DA5: $00
    db $E4                                        ; $6DA6: $E4
    jr jr_00D_6DFD                                ; $6DA7: $18 $54

    xor b                                         ; $6DA9: $A8
    inc d                                         ; $6DAA: $14
    add sp, -$7C                                  ; $6DAB: $E8 $84
    ld a, b                                       ; $6DAD: $78
    ld hl, sp+$00                                 ; $6DAE: $F8 $00
    rra                                           ; $6DB0: $1F
    nop                                           ; $6DB1: $00
    ccf                                           ; $6DB2: $3F
    nop                                           ; $6DB3: $00
    ld a, $01                                     ; $6DB4: $3E $01
    inc a                                         ; $6DB6: $3C
    inc bc                                        ; $6DB7: $03
    rra                                           ; $6DB8: $1F
    nop                                           ; $6DB9: $00
    rra                                           ; $6DBA: $1F
    rlca                                          ; $6DBB: $07
    rra                                           ; $6DBC: $1F
    rrca                                          ; $6DBD: $0F
    rra                                           ; $6DBE: $1F
    nop                                           ; $6DBF: $00
    ldh [rP1], a                                  ; $6DC0: $E0 $00
    ldh [rP1], a                                  ; $6DC2: $E0 $00
    jr nz, jr_00D_6D86                            ; $6DC4: $20 $C0

    ld h, b                                       ; $6DC6: $60
    add b                                         ; $6DC7: $80
    ldh a, [rNR41]                                ; $6DC8: $F0 $20
    ldh a, [$A0]                                  ; $6DCA: $F0 $A0
    ldh a, [$80]                                  ; $6DCC: $F0 $80
    ret nz                                        ; $6DCE: $C0

    nop                                           ; $6DCF: $00
    rlca                                          ; $6DD0: $07
    inc bc                                        ; $6DD1: $03
    inc bc                                        ; $6DD2: $03
    ld bc, $0103                                  ; $6DD3: $01 $03 $01
    ld bc, $0100                                  ; $6DD6: $01 $00 $01
    nop                                           ; $6DD9: $00
    inc bc                                        ; $6DDA: $03
    nop                                           ; $6DDB: $00
    rlca                                          ; $6DDC: $07
    nop                                           ; $6DDD: $00
    rra                                           ; $6DDE: $1F
    nop                                           ; $6DDF: $00
    rst $38                                       ; $6DE0: $FF
    ldh a, [rIE]                                  ; $6DE1: $F0 $FF
    ldh [rIE], a                                  ; $6DE3: $E0 $FF
    ret nz                                        ; $6DE5: $C0

    ld sp, hl                                     ; $6DE6: $F9
    ld b, $95                                     ; $6DE7: $06 $95
    ld l, d                                       ; $6DE9: $6A
    push bc                                       ; $6DEA: $C5
    ld a, [hl-]                                   ; $6DEB: $3A
    pop hl                                        ; $6DEC: $E1
    ld e, $FE                                     ; $6DED: $1E $FE
    nop                                           ; $6DEF: $00
    rra                                           ; $6DF0: $1F
    nop                                           ; $6DF1: $00
    ccf                                           ; $6DF2: $3F
    nop                                           ; $6DF3: $00
    ld a, $01                                     ; $6DF4: $3E $01
    ld a, h                                       ; $6DF6: $7C
    inc bc                                        ; $6DF7: $03
    ld a, a                                       ; $6DF8: $7F
    nop                                           ; $6DF9: $00
    ld a, a                                       ; $6DFA: $7F
    ld e, $7F                                     ; $6DFB: $1E $7F

jr_00D_6DFD:
    ld a, $7F                                     ; $6DFD: $3E $7F
    nop                                           ; $6DFF: $00
    rst $38                                       ; $6E00: $FF
    nop                                           ; $6E01: $00
    rst $38                                       ; $6E02: $FF
    nop                                           ; $6E03: $00
    ld a, $C0                                     ; $6E04: $3E $C0
    ld h, b                                       ; $6E06: $60
    add b                                         ; $6E07: $80
    ldh a, [$60]                                  ; $6E08: $F0 $60
    ldh a, [$E0]                                  ; $6E0A: $F0 $E0
    ldh a, [rP1]                                  ; $6E0C: $F0 $00
    nop                                           ; $6E0E: $00
    nop                                           ; $6E0F: $00
    inc de                                        ; $6E10: $13
    inc c                                         ; $6E11: $0C
    rra                                           ; $6E12: $1F
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
    add hl, bc                                    ; $6E20: $09
    ld b, $09                                     ; $6E21: $06 $09
    ld b, $0E                                     ; $6E23: $06 $0E
    nop                                           ; $6E25: $00
    nop                                           ; $6E26: $00
    nop                                           ; $6E27: $00
    nop                                           ; $6E28: $00

jr_00D_6E29:
    nop                                           ; $6E29: $00
    nop                                           ; $6E2A: $00
    nop                                           ; $6E2B: $00
    nop                                           ; $6E2C: $00
    nop                                           ; $6E2D: $00
    nop                                           ; $6E2E: $00
    nop                                           ; $6E2F: $00
    rlca                                          ; $6E30: $07
    nop                                           ; $6E31: $00
    add hl, bc                                    ; $6E32: $09
    rlca                                          ; $6E33: $07
    db $10                                        ; $6E34: $10
    rrca                                          ; $6E35: $0F
    jr nz, jr_00D_6E57                            ; $6E36: $20 $1F

    ld h, d                                       ; $6E38: $62
    dec e                                         ; $6E39: $1D
    push af                                       ; $6E3A: $F5
    ld c, d                                       ; $6E3B: $4A
    xor d                                         ; $6E3C: $AA
    ld d, l                                       ; $6E3D: $55
    cp d                                          ; $6E3E: $BA
    ld b, l                                       ; $6E3F: $45
    ldh [rP1], a                                  ; $6E40: $E0 $00
    ld [hl], b                                    ; $6E42: $70
    ldh [$58], a                                  ; $6E43: $E0 $58
    or b                                          ; $6E45: $B0
    adc h                                         ; $6E46: $8C
    ld a, b                                       ; $6E47: $78
    adc $38                                       ; $6E48: $CE $38
    ld h, a                                       ; $6E4A: $67
    jp c, $AA75                                   ; $6E4B: $DA $75 $AA

    ld e, l                                       ; $6E4E: $5D
    and d                                         ; $6E4F: $A2
    dec [hl]                                      ; $6E50: $35
    jp z, $0AF5                                   ; $6E51: $CA $F5 $0A

    db $DD                                        ; $6E54: $DD
    and [hl]                                      ; $6E55: $A6
    ld a, c                                       ; $6E56: $79

jr_00D_6E57:
    adc $D1                                       ; $6E57: $CE $D1
    ld l, $71                                     ; $6E59: $2E $71
    adc [hl]                                      ; $6E5B: $8E
    reti                                          ; $6E5C: $D9


    ld [hl], $49                                  ; $6E5D: $36 $49
    or [hl]                                       ; $6E5F: $B6
    add hl, sp                                    ; $6E60: $39
    add $E5                                       ; $6E61: $C6 $E5
    ld [bc], a                                    ; $6E63: $02
    and d                                         ; $6E64: $A2
    ld b, b                                       ; $6E65: $40
    or b                                          ; $6E66: $B0
    ld b, b                                       ; $6E67: $40
    ld hl, sp+$30                                 ; $6E68: $F8 $30
    adc h                                         ; $6E6A: $8C
    ld a, b                                       ; $6E6B: $78
    call nz, $F838                                ; $6E6C: $C4 $38 $F8
    nop                                           ; $6E6F: $00

    ; $6E70
BITMAP_Battle_Zet::
    INCBIN "autogenerated/assets/sprites/zet/ZetBattle.tileset"

    ; $7010
    db $06

    nop                                           ; $7011: $00
    ld [$1008], sp                                ; $7012: $08 $08 $10
    jr nz, jr_00D_7037                            ; $7015: $20 $20

jr_00D_7017:
    jr nz, jr_00D_7059                            ; $7017: $20 $40

    ld b, b                                       ; $7019: $40
    nop                                           ; $701A: $00
    ret nz                                        ; $701B: $C0

    add b                                         ; $701C: $80
    add b                                         ; $701D: $80
    add b                                         ; $701E: $80
    add b                                         ; $701F: $80
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
    ld bc, $0000                                  ; $702E: $01 $00 $00
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    nop                                           ; $7033: $00
    nop                                           ; $7034: $00
    nop                                           ; $7035: $00
    nop                                           ; $7036: $00

jr_00D_7037:
    nop                                           ; $7037: $00
    nop                                           ; $7038: $00
    nop                                           ; $7039: $00
    rrca                                          ; $703A: $0F
    nop                                           ; $703B: $00
    ld [hl], b                                    ; $703C: $70
    nop                                           ; $703D: $00
    add b                                         ; $703E: $80
    nop                                           ; $703F: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    nop                                           ; $7043: $00
    nop                                           ; $7044: $00
    nop                                           ; $7045: $00
    nop                                           ; $7046: $00
    nop                                           ; $7047: $00
    rst $38                                       ; $7048: $FF
    nop                                           ; $7049: $00
    nop                                           ; $704A: $00
    nop                                           ; $704B: $00
    nop                                           ; $704C: $00
    nop                                           ; $704D: $00
    nop                                           ; $704E: $00
    nop                                           ; $704F: $00
    nop                                           ; $7050: $00
    nop                                           ; $7051: $00
    inc bc                                        ; $7052: $03
    nop                                           ; $7053: $00
    inc c                                         ; $7054: $0C
    nop                                           ; $7055: $00
    db $10                                        ; $7056: $10
    jr nz, jr_00D_7059                            ; $7057: $20 $00

jr_00D_7059:
    ld h, b                                       ; $7059: $60
    ld b, b                                       ; $705A: $40
    ld b, b                                       ; $705B: $40
    add b                                         ; $705C: $80
    add b                                         ; $705D: $80
    add b                                         ; $705E: $80
    add b                                         ; $705F: $80
    ld a, a                                       ; $7060: $7F
    nop                                           ; $7061: $00
    add b                                         ; $7062: $80
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
    rra                                           ; $7078: $1F
    nop                                           ; $7079: $00
    jr nz, jr_00D_70BC                            ; $707A: $20 $40

    nop                                           ; $707C: $00
    ret nz                                        ; $707D: $C0

    add b                                         ; $707E: $80
    add b                                         ; $707F: $80
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    inc a                                         ; $7084: $3C
    ld b, d                                       ; $7085: $42
    add c                                         ; $7086: $81
    add c                                         ; $7087: $81
    add c                                         ; $7088: $81
    add c                                         ; $7089: $81
    inc a                                         ; $708A: $3C
    ld b, d                                       ; $708B: $42
    nop                                           ; $708C: $00
    nop                                           ; $708D: $00
    nop                                           ; $708E: $00
    nop                                           ; $708F: $00
    rlca                                          ; $7090: $07
    nop                                           ; $7091: $00
    rrca                                          ; $7092: $0F
    rlca                                          ; $7093: $07
    rra                                           ; $7094: $1F
    inc c                                         ; $7095: $0C
    scf                                           ; $7096: $37
    dec de                                        ; $7097: $1B
    ld l, h                                       ; $7098: $6C
    scf                                           ; $7099: $37
    ld e, b                                       ; $709A: $58
    cpl                                           ; $709B: $2F
    ldh a, [$7F]                                  ; $709C: $F0 $7F
    ldh [$7F], a                                  ; $709E: $E0 $7F
    ret nc                                        ; $70A0: $D0

    ccf                                           ; $70A1: $3F
    ret nc                                        ; $70A2: $D0

    ccf                                           ; $70A3: $3F
    ldh a, [$3F]                                  ; $70A4: $F0 $3F
    ld l, b                                       ; $70A6: $68
    rra                                           ; $70A7: $1F
    ld l, b                                       ; $70A8: $68
    rra                                           ; $70A9: $1F
    ld a, b                                       ; $70AA: $78
    rra                                           ; $70AB: $1F

jr_00D_70AC:
    inc [hl]                                      ; $70AC: $34
    rrca                                          ; $70AD: $0F
    inc [hl]                                      ; $70AE: $34
    rrca                                          ; $70AF: $0F
    inc a                                         ; $70B0: $3C
    rrca                                          ; $70B1: $0F
    ld a, [de]                                    ; $70B2: $1A
    rlca                                          ; $70B3: $07
    dec de                                        ; $70B4: $1B
    rlca                                          ; $70B5: $07
    inc e                                         ; $70B6: $1C
    rlca                                          ; $70B7: $07
    rrca                                          ; $70B8: $0F
    nop                                           ; $70B9: $00
    rrca                                          ; $70BA: $0F
    inc bc                                        ; $70BB: $03

jr_00D_70BC:
    rrca                                          ; $70BC: $0F
    inc bc                                        ; $70BD: $03
    rlca                                          ; $70BE: $07
    nop                                           ; $70BF: $00
    ccf                                           ; $70C0: $3F
    nop                                           ; $70C1: $00
    ld a, a                                       ; $70C2: $7F
    ccf                                           ; $70C3: $3F
    add e                                         ; $70C4: $83
    ld a, a                                       ; $70C5: $7F
    pop af                                        ; $70C6: $F1
    ld a, a                                       ; $70C7: $7F
    ei                                            ; $70C8: $FB
    ld a, l                                       ; $70C9: $7D
    ld a, l                                       ; $70CA: $7D
    ld a, [bc]                                    ; $70CB: $0A
    ld a, [hl+]                                   ; $70CC: $2A
    dec d                                         ; $70CD: $15
    ld [de], a                                    ; $70CE: $12
    dec c                                         ; $70CF: $0D
    ret nz                                        ; $70D0: $C0

    nop                                           ; $70D1: $00
    ldh [rLCDC], a                                ; $70D2: $E0 $40
    ret nc                                        ; $70D4: $D0

    and b                                         ; $70D5: $A0
    ld hl, sp-$50                                 ; $70D6: $F8 $B0
    ld hl, sp+$30                                 ; $70D8: $F8 $30
    jr c, jr_00D_70AC                             ; $70DA: $38 $D0

    ld [hl], b                                    ; $70DC: $70
    add b                                         ; $70DD: $80
    ld h, e                                       ; $70DE: $63
    add b                                         ; $70DF: $80
    ld a, b                                       ; $70E0: $78
    rlca                                          ; $70E1: $07
    rst $38                                       ; $70E2: $FF
    jr @+$01                                      ; $70E3: $18 $FF

    ld a, $FF                                     ; $70E5: $3E $FF
    ccf                                           ; $70E7: $3F
    ld a, a                                       ; $70E8: $7F
    rra                                           ; $70E9: $1F
    rra                                           ; $70EA: $1F
    rlca                                          ; $70EB: $07
    rra                                           ; $70EC: $1F
    nop                                           ; $70ED: $00
    rra                                           ; $70EE: $1F
    rrca                                          ; $70EF: $0F
    inc h                                         ; $70F0: $24
    ret nz                                        ; $70F1: $C0

    call z, Call_00D_7300                         ; $70F2: $CC $00 $73
    nop                                           ; $70F5: $00
    sub c                                         ; $70F6: $91
    ld h, b                                       ; $70F7: $60

jr_00D_70F8:
    sub b                                         ; $70F8: $90
    ld h, b                                       ; $70F9: $60
    rst $38                                       ; $70FA: $FF
    nop                                           ; $70FB: $00
    ld hl, sp-$40                                 ; $70FC: $F8 $C0
    ldh [$80], a                                  ; $70FE: $E0 $80
    nop                                           ; $7100: $00
    inc bc                                        ; $7101: $03
    inc bc                                        ; $7102: $03
    inc bc                                        ; $7103: $03
    add b                                         ; $7104: $80
    adc h                                         ; $7105: $8C
    ld c, $0E                                     ; $7106: $0E $0E
    rrca                                          ; $7108: $0F
    rrca                                          ; $7109: $0F
    nop                                           ; $710A: $00
    nop                                           ; $710B: $00
    nop                                           ; $710C: $00
    nop                                           ; $710D: $00
    nop                                           ; $710E: $00
    nop                                           ; $710F: $00
    add b                                         ; $7110: $80
    nop                                           ; $7111: $00
    ld b, b                                       ; $7112: $40
    add b                                         ; $7113: $80
    and b                                         ; $7114: $A0
    ret nz                                        ; $7115: $C0

    ldh [$C0], a                                  ; $7116: $E0 $C0
    ret nz                                        ; $7118: $C0

    nop                                           ; $7119: $00
    nop                                           ; $711A: $00
    nop                                           ; $711B: $00
    nop                                           ; $711C: $00
    nop                                           ; $711D: $00
    nop                                           ; $711E: $00
    nop                                           ; $711F: $00
    rra                                           ; $7120: $1F
    db $10                                        ; $7121: $10
    inc e                                         ; $7122: $1C
    rrca                                          ; $7123: $0F
    db $10                                        ; $7124: $10
    rrca                                          ; $7125: $0F
    ld de, $2F0E                                  ; $7126: $11 $0E $2F
    db $10                                        ; $7129: $10
    ccf                                           ; $712A: $3F
    ld b, $3F                                     ; $712B: $06 $3F
    ld e, $1F                                     ; $712D: $1E $1F
    nop                                           ; $712F: $00
    ldh [rP1], a                                  ; $7130: $E0 $00
    jr nz, @-$3E                                  ; $7132: $20 $C0

    sub b                                         ; $7134: $90
    ld h, b                                       ; $7135: $60
    jr nc, jr_00D_70F8                            ; $7136: $30 $C0

    ld hl, sp+$30                                 ; $7138: $F8 $30
    ld hl, sp-$10                                 ; $713A: $F8 $F0
    ldh a, [rP1]                                  ; $713C: $F0 $00
    nop                                           ; $713E: $00
    nop                                           ; $713F: $00
    ldh [rP1], a                                  ; $7140: $E0 $00
    ldh a, [$A0]                                  ; $7142: $F0 $A0
    add sp, -$30                                  ; $7144: $E8 $D0
    db $FC                                        ; $7146: $FC
    ret c                                         ; $7147: $D8

    db $FC                                        ; $7148: $FC
    sbc b                                         ; $7149: $98
    sbc h                                         ; $714A: $9C
    ld l, b                                       ; $714B: $68
    add hl, sp                                    ; $714C: $39
    ret nz                                        ; $714D: $C0

    ld [hl-], a                                   ; $714E: $32
    pop bc                                        ; $714F: $C1
    inc a                                         ; $7150: $3C
    inc bc                                        ; $7151: $03
    rst $38                                       ; $7152: $FF
    jr @+$01                                      ; $7153: $18 $FF

    ccf                                           ; $7155: $3F
    rst $38                                       ; $7156: $FF
    ccf                                           ; $7157: $3F
    ld a, a                                       ; $7158: $7F
    rra                                           ; $7159: $1F
    rra                                           ; $715A: $1F
    ld b, $1F                                     ; $715B: $06 $1F
    ld bc, $0F1F                                  ; $715D: $01 $1F $0F
    halt                                          ; $7160: $76
    add b                                         ; $7161: $80
    cp c                                          ; $7162: $B9
    nop                                           ; $7163: $00
    ret z                                         ; $7164: $C8

    or b                                          ; $7165: $B0
    ret z                                         ; $7166: $C8

    or b                                          ; $7167: $B0
    rst $38                                       ; $7168: $FF
    add b                                         ; $7169: $80
    cp $20                                        ; $716A: $FE $20
    ld hl, sp-$40                                 ; $716C: $F8 $C0
    ldh [$80], a                                  ; $716E: $E0 $80
    add b                                         ; $7170: $80
    nop                                           ; $7171: $00
    ld b, b                                       ; $7172: $40
    add b                                         ; $7173: $80
    and b                                         ; $7174: $A0
    ret nz                                        ; $7175: $C0

    ret nc                                        ; $7176: $D0

    ld h, b                                       ; $7177: $60
    ldh a, [$60]                                  ; $7178: $F0 $60
    ldh [$80], a                                  ; $717A: $E0 $80
    add b                                         ; $717C: $80
    nop                                           ; $717D: $00
    nop                                           ; $717E: $00
    nop                                           ; $717F: $00
    ld bc, $4001                                  ; $7180: $01 $01 $40
    ld b, [hl]                                    ; $7183: $46
    rlca                                          ; $7184: $07
    rlca                                          ; $7185: $07
    rlca                                          ; $7186: $07
    rlca                                          ; $7187: $07
    nop                                           ; $7188: $00
    nop                                           ; $7189: $00
    nop                                           ; $718A: $00
    nop                                           ; $718B: $00
    nop                                           ; $718C: $00
    nop                                           ; $718D: $00
    nop                                           ; $718E: $00
    nop                                           ; $718F: $00
    ld b, $00                                     ; $7190: $06 $00
    rrca                                          ; $7192: $0F
    ld b, $17                                     ; $7193: $06 $17
    rrca                                          ; $7195: $0F
    dec sp                                        ; $7196: $3B
    rra                                           ; $7197: $1F
    add hl, sp                                    ; $7198: $39
    rra                                           ; $7199: $1F
    dec sp                                        ; $719A: $3B
    dec e                                         ; $719B: $1D
    dec e                                         ; $719C: $1D
    ld a, [bc]                                    ; $719D: $0A
    ld a, [hl+]                                   ; $719E: $2A
    dec d                                         ; $719F: $15
    ldh a, [rP1]                                  ; $71A0: $F0 $00
    sbc b                                         ; $71A2: $98
    ldh a, [$8C]                                  ; $71A3: $F0 $8C
    ld hl, sp-$32                                 ; $71A5: $F8 $CE
    db $FC                                        ; $71A7: $FC
    sbc $FC                                       ; $71A8: $DE $FC
    db $FC                                        ; $71AA: $FC
    jr c, jr_00D_71E5                             ; $71AB: $38 $38

    ret nc                                        ; $71AD: $D0

    ld d, h                                       ; $71AE: $54
    xor b                                         ; $71AF: $A8
    ld a, [de]                                    ; $71B0: $1A
    dec b                                         ; $71B1: $05
    inc c                                         ; $71B2: $0C
    inc bc                                        ; $71B3: $03
    rra                                           ; $71B4: $1F
    inc c                                         ; $71B5: $0C
    ccf                                           ; $71B6: $3F
    rra                                           ; $71B7: $1F
    ccf                                           ; $71B8: $3F
    rrca                                          ; $71B9: $0F
    ld e, a                                       ; $71BA: $5F
    jr z, jr_00D_7215                             ; $71BB: $28 $58

    daa                                           ; $71BD: $27
    jr nc, @+$11                                  ; $71BE: $30 $0F

    ld b, $00                                     ; $71C0: $06 $00
    rrca                                          ; $71C2: $0F
    ld b, $17                                     ; $71C3: $06 $17
    rrca                                          ; $71C5: $0F
    dec sp                                        ; $71C6: $3B
    rra                                           ; $71C7: $1F
    add hl, sp                                    ; $71C8: $39
    rra                                           ; $71C9: $1F
    dec sp                                        ; $71CA: $3B
    dec e                                         ; $71CB: $1D
    dec e                                         ; $71CC: $1D
    ld a, [bc]                                    ; $71CD: $0A
    jr z, jr_00D_71E7                             ; $71CE: $28 $17

    ldh a, [rP1]                                  ; $71D0: $F0 $00
    sbc b                                         ; $71D2: $98
    ldh a, [$8C]                                  ; $71D3: $F0 $8C
    ld hl, sp-$32                                 ; $71D5: $F8 $CE
    db $FC                                        ; $71D7: $FC
    sbc $FC                                       ; $71D8: $DE $FC
    db $FC                                        ; $71DA: $FC
    jr c, jr_00D_7215                             ; $71DB: $38 $38

    ret nc                                        ; $71DD: $D0

    inc d                                         ; $71DE: $14
    add sp, $1E                                   ; $71DF: $E8 $1E
    ld bc, $030C                                  ; $71E1: $01 $0C $03
    rra                                           ; $71E4: $1F

jr_00D_71E5:
    inc c                                         ; $71E5: $0C
    ccf                                           ; $71E6: $3F

jr_00D_71E7:
    rra                                           ; $71E7: $1F
    ccf                                           ; $71E8: $3F
    rrca                                          ; $71E9: $0F
    ld e, a                                       ; $71EA: $5F
    jr z, jr_00D_7245                             ; $71EB: $28 $58

    daa                                           ; $71ED: $27
    jr nc, jr_00D_71FF                            ; $71EE: $30 $0F

    jr z, jr_00D_7202                             ; $71F0: $28 $10

    jr nz, jr_00D_720C                            ; $71F2: $20 $18

    inc sp                                        ; $71F4: $33
    inc c                                         ; $71F5: $0C
    ld a, b                                       ; $71F6: $78
    scf                                           ; $71F7: $37
    ld a, l                                       ; $71F8: $7D
    ld a, [hl-]                                   ; $71F9: $3A
    ld a, [hl]                                    ; $71FA: $7E
    jr c, jr_00D_7239                             ; $71FB: $38 $3C

    jr jr_00D_7217                                ; $71FD: $18 $18

jr_00D_71FF:
    nop                                           ; $71FF: $00
    inc c                                         ; $7200: $0C
    nop                                           ; $7201: $00

jr_00D_7202:
    inc b                                         ; $7202: $04
    ld [$30CC], sp                                ; $7203: $08 $CC $30
    ld e, $EC                                     ; $7206: $1E $EC
    cp [hl]                                       ; $7208: $BE
    ld e, h                                       ; $7209: $5C
    ld a, [hl]                                    ; $720A: $7E
    inc e                                         ; $720B: $1C

jr_00D_720C:
    inc a                                         ; $720C: $3C
    jr jr_00D_7227                                ; $720D: $18 $18

    nop                                           ; $720F: $00
    ld [$4377], sp                                ; $7210: $08 $77 $43
    inc a                                         ; $7213: $3C
    nop                                           ; $7214: $00

jr_00D_7215:
    nop                                           ; $7215: $00
    nop                                           ; $7216: $00

jr_00D_7217:
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

jr_00D_7227:
    nop                                           ; $7227: $00
    nop                                           ; $7228: $00
    nop                                           ; $7229: $00
    ld d, l                                       ; $722A: $55
    ld e, l                                       ; $722B: $5D
    jr jr_00D_7246                                ; $722C: $18 $18

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

jr_00D_7239:
    nop                                           ; $7239: $00
    nop                                           ; $723A: $00
    nop                                           ; $723B: $00
    rla                                           ; $723C: $17
    rla                                           ; $723D: $17
    ld bc, $0001                                  ; $723E: $01 $01 $00
    nop                                           ; $7241: $00
    nop                                           ; $7242: $00
    nop                                           ; $7243: $00
    nop                                           ; $7244: $00

jr_00D_7245:
    nop                                           ; $7245: $00

jr_00D_7246:
    nop                                           ; $7246: $00
    nop                                           ; $7247: $00
    inc b                                         ; $7248: $04
    inc c                                         ; $7249: $0C
    ld c, [hl]                                    ; $724A: $4E
    ld e, [hl]                                    ; $724B: $5E
    rst $38                                       ; $724C: $FF
    rst $38                                       ; $724D: $FF
    add b                                         ; $724E: $80
    add b                                         ; $724F: $80
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
    ld bc, $3F01                                  ; $725A: $01 $01 $3F
    ccf                                           ; $725D: $3F
    inc bc                                        ; $725E: $03
    inc bc                                        ; $725F: $03
    nop                                           ; $7260: $00
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    nop                                           ; $7264: $00
    nop                                           ; $7265: $00
    nop                                           ; $7266: $00
    ld [$3C1C], sp                                ; $7267: $08 $1C $3C
    ld a, $7E                                     ; $726A: $3E $7E
    rst $38                                       ; $726C: $FF
    rst $38                                       ; $726D: $FF
    ret nz                                        ; $726E: $C0

    ret nz                                        ; $726F: $C0

    nop                                           ; $7270: $00
    nop                                           ; $7271: $00
    nop                                           ; $7272: $00
    nop                                           ; $7273: $00
    nop                                           ; $7274: $00
    nop                                           ; $7275: $00
    nop                                           ; $7276: $00
    nop                                           ; $7277: $00
    nop                                           ; $7278: $00
    ld bc, $0707                                  ; $7279: $01 $07 $07
    cp [hl]                                       ; $727C: $BE
    cp [hl]                                       ; $727D: $BE
    add hl, de                                    ; $727E: $19
    add hl, de                                    ; $727F: $19
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00
    jr nz, jr_00D_72A5                            ; $7283: $20 $20

    ld h, b                                       ; $7285: $60
    ldh a, [$F0]                                  ; $7286: $F0 $F0
    ret nc                                        ; $7288: $D0

    ret c                                         ; $7289: $D8

    sbc h                                         ; $728A: $9C
    sbc h                                         ; $728B: $9C
    ld c, a                                       ; $728C: $4F
    ld c, a                                       ; $728D: $4F
    ld b, $06                                     ; $728E: $06 $06
    nop                                           ; $7290: $00
    nop                                           ; $7291: $00
    ld bc, $0303                                  ; $7292: $01 $03 $03
    rlca                                          ; $7295: $07
    rlca                                          ; $7296: $07
    rlca                                          ; $7297: $07
    ld b, $0E                                     ; $7298: $06 $0E
    dec e                                         ; $729A: $1D
    dec e                                         ; $729B: $1D
    or h                                          ; $729C: $B4
    or h                                          ; $729D: $B4
    nop                                           ; $729E: $00
    nop                                           ; $729F: $00
    nop                                           ; $72A0: $00
    nop                                           ; $72A1: $00
    nop                                           ; $72A2: $00
    nop                                           ; $72A3: $00
    add b                                         ; $72A4: $80

jr_00D_72A5:
    add b                                         ; $72A5: $80
    add b                                         ; $72A6: $80
    ret nz                                        ; $72A7: $C0

    ldh [$E0], a                                  ; $72A8: $E0 $E0
    ld a, b                                       ; $72AA: $78
    ld a, b                                       ; $72AB: $78
    ccf                                           ; $72AC: $3F
    ccf                                           ; $72AD: $3F
    ld a, [bc]                                    ; $72AE: $0A
    ld a, [bc]                                    ; $72AF: $0A
    nop                                           ; $72B0: $00
    nop                                           ; $72B1: $00
    nop                                           ; $72B2: $00
    inc b                                         ; $72B3: $04
    inc b                                         ; $72B4: $04
    inc c                                         ; $72B5: $0C
    ld c, $1E                                     ; $72B6: $0E $1E
    ld a, [de]                                    ; $72B8: $1A
    dec de                                        ; $72B9: $1B
    add hl, de                                    ; $72BA: $19
    add hl, sp                                    ; $72BB: $39
    ld a, [c]                                     ; $72BC: $F2
    ld a, [c]                                     ; $72BD: $F2
    ld h, b                                       ; $72BE: $60
    ld h, b                                       ; $72BF: $60
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
    ret nz                                        ; $72CA: $C0

    ldh [$7D], a                                  ; $72CB: $E0 $7D
    ld a, l                                       ; $72CD: $7D
    sbc b                                         ; $72CE: $98
    sbc b                                         ; $72CF: $98
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
    inc b                                         ; $72DB: $04
    inc c                                         ; $72DC: $0C
    inc c                                         ; $72DD: $0C
    inc c                                         ; $72DE: $0C
    ld e, $01                                     ; $72DF: $1E $01
    ld bc, $0301                                  ; $72E1: $01 $01 $03
    ld [bc], a                                    ; $72E4: $02
    inc bc                                        ; $72E5: $03
    rlca                                          ; $72E6: $07
    rlca                                          ; $72E7: $07
    inc b                                         ; $72E8: $04
    ld c, $0D                                     ; $72E9: $0E $0D
    dec e                                         ; $72EB: $1D
    ld a, [hl]                                    ; $72EC: $7E
    ld a, [hl]                                    ; $72ED: $7E
    add sp, -$18                                  ; $72EE: $E8 $E8
    and b                                         ; $72F0: $A0
    ldh a, [$B0]                                  ; $72F1: $F0 $B0
    or b                                          ; $72F3: $B0
    ld e, b                                       ; $72F4: $58
    ld e, h                                       ; $72F5: $5C
    inc l                                         ; $72F6: $2C
    ld l, $93                                     ; $72F7: $2E $93
    sbc e                                         ; $72F9: $9B
    dec b                                         ; $72FA: $05
    rlca                                          ; $72FB: $07
    ld [hl+], a                                   ; $72FC: $22
    ld [hl+], a                                   ; $72FD: $22
    nop                                           ; $72FE: $00
    nop                                           ; $72FF: $00

Call_00D_7300:
    nop                                           ; $7300: $00
    nop                                           ; $7301: $00
    nop                                           ; $7302: $00
    nop                                           ; $7303: $00
    nop                                           ; $7304: $00
    nop                                           ; $7305: $00
    nop                                           ; $7306: $00
    nop                                           ; $7307: $00
    nop                                           ; $7308: $00
    ret nz                                        ; $7309: $C0

    ldh [$F0], a                                  ; $730A: $E0 $F0
    cp b                                          ; $730C: $B8
    cp h                                          ; $730D: $BC
    ld l, a                                       ; $730E: $6F
    ld l, a                                       ; $730F: $6F
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    nop                                           ; $7312: $00
    nop                                           ; $7313: $00
    nop                                           ; $7314: $00
    ld [$1808], sp                                ; $7315: $08 $08 $18
    jr @+$1A                                      ; $7318: $18 $18

    jr jr_00D_7354                                ; $731A: $18 $38

    jr c, @+$3E                                   ; $731C: $38 $3C

    ld l, h                                       ; $731E: $6C
    ld l, h                                       ; $731F: $6C
    nop                                           ; $7320: $00
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    ld bc, $0301                                  ; $7323: $01 $01 $03
    rlca                                          ; $7326: $07
    rlca                                          ; $7327: $07
    ld b, $0E                                     ; $7328: $06 $0E
    dec e                                         ; $732A: $1D
    dec e                                         ; $732B: $1D
    ld [hl], b                                    ; $732C: $70
    ld a, b                                       ; $732D: $78
    ret nz                                        ; $732E: $C0

    ldh [$5C], a                                  ; $732F: $E0 $5C
    sbc $C6                                       ; $7331: $DE $C6
    rst $10                                       ; $7333: $D7
    xor c                                         ; $7334: $A9
    xor e                                         ; $7335: $AB
    ld b, c                                       ; $7336: $41
    pop bc                                        ; $7337: $C1
    sub d                                         ; $7338: $92
    sub d                                         ; $7339: $92
    ld bc, $0201                                  ; $733A: $01 $01 $02
    ld [bc], a                                    ; $733D: $02
    nop                                           ; $733E: $00
    nop                                           ; $733F: $00
    nop                                           ; $7340: $00
    nop                                           ; $7341: $00
    nop                                           ; $7342: $00
    nop                                           ; $7343: $00
    nop                                           ; $7344: $00
    add b                                         ; $7345: $80
    ret nz                                        ; $7346: $C0

    ret nz                                        ; $7347: $C0

    ldh [$E0], a                                  ; $7348: $E0 $E0
    add sp, -$08                                  ; $734A: $E8 $F8
    ld e, h                                       ; $734C: $5C
    ld a, [hl]                                    ; $734D: $7E
    rrca                                          ; $734E: $0F
    rrca                                          ; $734F: $0F
    nop                                           ; $7350: $00
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    nop                                           ; $7353: $00

jr_00D_7354:
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    ld [$0008], sp                                ; $7358: $08 $08 $00
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
    ld [$1408], sp                                ; $7366: $08 $08 $14
    inc d                                         ; $7369: $14
    ld [$0008], sp                                ; $736A: $08 $08 $00
    nop                                           ; $736D: $00
    nop                                           ; $736E: $00
    nop                                           ; $736F: $00
    nop                                           ; $7370: $00
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    nop                                           ; $7373: $00
    nop                                           ; $7374: $00
    nop                                           ; $7375: $00
    inc c                                         ; $7376: $0C
    inc c                                         ; $7377: $0C
    ld [de], a                                    ; $7378: $12
    ld [de], a                                    ; $7379: $12
    ld [de], a                                    ; $737A: $12
    ld [de], a                                    ; $737B: $12
    inc c                                         ; $737C: $0C
    inc c                                         ; $737D: $0C
    nop                                           ; $737E: $00
    nop                                           ; $737F: $00
    rlca                                          ; $7380: $07
    nop                                           ; $7381: $00
    ld a, [bc]                                    ; $7382: $0A
    rlca                                          ; $7383: $07
    db $10                                        ; $7384: $10
    rrca                                          ; $7385: $0F
    jr nz, jr_00D_73A7                            ; $7386: $20 $1F

    ld h, d                                       ; $7388: $62
    dec e                                         ; $7389: $1D
    push af                                       ; $738A: $F5
    ld c, d                                       ; $738B: $4A
    xor d                                         ; $738C: $AA
    ld d, l                                       ; $738D: $55
    cp d                                          ; $738E: $BA
    ld b, l                                       ; $738F: $45
    ldh [rP1], a                                  ; $7390: $E0 $00
    ldh a, [$E0]                                  ; $7392: $F0 $E0
    ld e, b                                       ; $7394: $58
    or b                                          ; $7395: $B0
    adc h                                         ; $7396: $8C
    ld a, b                                       ; $7397: $78
    adc $38                                       ; $7398: $CE $38
    rst $20                                       ; $739A: $E7
    jp c, $AA77                                   ; $739B: $DA $77 $AA

    ld e, l                                       ; $739E: $5D
    and d                                         ; $739F: $A2
    scf                                           ; $73A0: $37
    jp z, $0AF5                                   ; $73A1: $CA $F5 $0A

    ld sp, hl                                     ; $73A4: $F9
    and [hl]                                      ; $73A5: $A6
    ld [hl], c                                    ; $73A6: $71

jr_00D_73A7:
    adc $D1                                       ; $73A7: $CE $D1
    ld l, $71                                     ; $73A9: $2E $71
    adc [hl]                                      ; $73AB: $8E
    reti                                          ; $73AC: $D9


    ld [hl], $49                                  ; $73AD: $36 $49
    or [hl]                                       ; $73AF: $B6
    ld a, c                                       ; $73B0: $79
    add $E5                                       ; $73B1: $C6 $E5
    ld [bc], a                                    ; $73B3: $02
    ld [c], a                                     ; $73B4: $E2
    ld b, b                                       ; $73B5: $40

jr_00D_73B6:
    or b                                          ; $73B6: $B0
    ld b, b                                       ; $73B7: $40
    ld hl, sp+$30                                 ; $73B8: $F8 $30
    adc h                                         ; $73BA: $8C
    ld a, b                                       ; $73BB: $78
    call nz, $F838                                ; $73BC: $C4 $38 $F8
    nop                                           ; $73BF: $00
    ld bc, $0300                                  ; $73C0: $01 $00 $03
    ld bc, $0304                                  ; $73C3: $01 $04 $03
    inc b                                         ; $73C6: $04
    inc bc                                        ; $73C7: $03

jr_00D_73C8:
    ld [$0907], sp                                ; $73C8: $08 $07 $09
    ld b, $0A                                     ; $73CB: $06 $0A
    dec b                                         ; $73CD: $05
    dec c                                         ; $73CE: $0D
    ld [bc], a                                    ; $73CF: $02
    ld b, b                                       ; $73D0: $40
    nop                                           ; $73D1: $00
    ldh [rLCDC], a                                ; $73D2: $E0 $40
    jr nc, jr_00D_73B6                            ; $73D4: $30 $E0

    jr jr_00D_73C8                                ; $73D6: $18 $F0

jr_00D_73D8:
    inc c                                         ; $73D8: $0C
    ld hl, sp-$14                                 ; $73D9: $F8 $EC
    jr jr_00D_7451                                ; $73DB: $18 $74

    add sp, -$04                                  ; $73DD: $E8 $FC
    db $10                                        ; $73DF: $10
    ld c, $01                                     ; $73E0: $0E $01
    dec d                                         ; $73E2: $15
    ld a, [bc]                                    ; $73E3: $0A
    dec c                                         ; $73E4: $0D
    ld [bc], a                                    ; $73E5: $02
    ld b, $01                                     ; $73E6: $06 $01
    dec c                                         ; $73E8: $0D
    ld b, $16                                     ; $73E9: $06 $16
    add hl, bc                                    ; $73EB: $09
    dec de                                        ; $73EC: $1B
    ld b, $19                                     ; $73ED: $06 $19
    ld b, $7C                                     ; $73EF: $06 $7C
    ldh [$3E], a                                  ; $73F1: $E0 $3E
    call nc, $D02C                                ; $73F3: $D4 $2C $D0

jr_00D_73F6:
    jr jr_00D_73D8                                ; $73F6: $18 $E0

    ld hl, sp+$10                                 ; $73F8: $F8 $10
    inc a                                         ; $73FA: $3C
    ret z                                         ; $73FB: $C8

    ld e, h                                       ; $73FC: $5C
    or b                                          ; $73FD: $B0
    ld c, h                                       ; $73FE: $4C
    or b                                          ; $73FF: $B0
    ld hl, sp+$00                                 ; $7400: $F8 $00
    ldh a, [rP1]                                  ; $7402: $F0 $00

jr_00D_7404:
    jr jr_00D_73F6                                ; $7404: $18 $F0

    cp b                                          ; $7406: $B8
    ld b, b                                       ; $7407: $40
    ld hl, sp+$30                                 ; $7408: $F8 $30
    adc h                                         ; $740A: $8C
    ld a, b                                       ; $740B: $78
    call nz, $F838                                ; $740C: $C4 $38 $F8
    nop                                           ; $740F: $00
    ld b, $00                                     ; $7410: $06 $00
    dec bc                                        ; $7412: $0B
    ld b, $10                                     ; $7413: $06 $10
    rrca                                          ; $7415: $0F

jr_00D_7416:
    jr nz, jr_00D_7437                            ; $7416: $20 $1F

    ld hl, $271E                                  ; $7418: $21 $1E $27
    jr jr_00D_743C                                ; $741B: $18 $1F

    nop                                           ; $741D: $00
    ld a, [hl+]                                   ; $741E: $2A
    dec d                                         ; $741F: $15
    ret nz                                        ; $7420: $C0

    nop                                           ; $7421: $00
    ldh a, [$C0]                                  ; $7422: $F0 $C0

jr_00D_7424:
    jr c, jr_00D_7416                             ; $7424: $38 $F0

    adc h                                         ; $7426: $8C
    ld a, b                                       ; $7427: $78
    inc b                                         ; $7428: $04
    ld hl, sp+$64                                 ; $7429: $F8 $64
    sbc b                                         ; $742B: $98
    ld hl, sp+$00                                 ; $742C: $F8 $00
    ld e, h                                       ; $742E: $5C
    xor b                                         ; $742F: $A8
    ld e, b                                       ; $7430: $58
    and b                                         ; $7431: $A0
    jr z, jr_00D_7404                             ; $7432: $28 $D0

    ld hl, sp+$00                                 ; $7434: $F8 $00
    inc c                                         ; $7436: $0C

jr_00D_7437:
    ld hl, sp+$34                                 ; $7437: $F8 $34
    add sp, $74                                   ; $7439: $E8 $74
    ret z                                         ; $743B: $C8

jr_00D_743C:
    db $EC                                        ; $743C: $EC
    jr jr_00D_74BB                                ; $743D: $18 $7C

    ret c                                         ; $743F: $D8

    ld hl, sp+$00                                 ; $7440: $F8 $00
    jr nc, jr_00D_7424                            ; $7442: $30 $E0

    sbc b                                         ; $7444: $98
    ld [hl], b                                    ; $7445: $70
    cp b                                          ; $7446: $B8
    ld b, b                                       ; $7447: $40
    ld hl, sp+$30                                 ; $7448: $F8 $30

jr_00D_744A:
    adc h                                         ; $744A: $8C
    ld a, b                                       ; $744B: $78
    call nz, $F838                                ; $744C: $C4 $38 $F8
    nop                                           ; $744F: $00
    nop                                           ; $7450: $00

jr_00D_7451:
    nop                                           ; $7451: $00
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    rlca                                          ; $7454: $07
    nop                                           ; $7455: $00
    dec c                                         ; $7456: $0D
    inc bc                                        ; $7457: $03
    jr jr_00D_7461                                ; $7458: $18 $07

    jr nc, jr_00D_746B                            ; $745A: $30 $0F

    ld [hl-], a                                   ; $745C: $32
    dec c                                         ; $745D: $0D
    scf                                           ; $745E: $37
    ld a, [bc]                                    ; $745F: $0A
    nop                                           ; $7460: $00

jr_00D_7461:
    nop                                           ; $7461: $00
    nop                                           ; $7462: $00
    nop                                           ; $7463: $00
    ldh [rP1], a                                  ; $7464: $E0 $00
    ldh a, [$C0]                                  ; $7466: $F0 $C0
    jr c, jr_00D_744A                             ; $7468: $38 $E0

    cp h                                          ; $746A: $BC

jr_00D_746B:
    ld [hl], b                                    ; $746B: $70
    db $CC, $30, $6C
    ret nc                                        ; $746F: $D0

    ld a, h                                       ; $7470: $7C
    xor b                                         ; $7471: $A8
    ld e, h                                       ; $7472: $5C
    and b                                         ; $7473: $A0
    inc [hl]                                      ; $7474: $34
    ret z                                         ; $7475: $C8

    ld hl, sp+$00                                 ; $7476: $F8 $00
    ldh a, [$A0]                                  ; $7478: $F0 $A0
    ld d, b                                       ; $747A: $50
    and b                                         ; $747B: $A0
    ld e, b                                       ; $747C: $58
    or b                                          ; $747D: $B0
    ret z                                         ; $747E: $C8

    jr nc, jr_00D_74F1                            ; $747F: $30 $70

    ret nz                                        ; $7481: $C0

    ld h, b                                       ; $7482: $60
    ret nz                                        ; $7483: $C0

    ld h, b                                       ; $7484: $60
    ret nz                                        ; $7485: $C0

    ld [hl], b                                    ; $7486: $70
    ret nz                                        ; $7487: $C0

    ld hl, sp+$30                                 ; $7488: $F8 $30
    adc h                                         ; $748A: $8C
    ld a, b                                       ; $748B: $78
    call nz, $F838                                ; $748C: $C4 $38 $F8
    nop                                           ; $748F: $00
    nop                                           ; $7490: $00
    ld a, h                                       ; $7491: $7C
    nop                                           ; $7492: $00
    nop                                           ; $7493: $00
    rst $38                                       ; $7494: $FF
    ld e, a                                       ; $7495: $5F
    ld a, e                                       ; $7496: $7B
    rrca                                          ; $7497: $0F
    nop                                           ; $7498: $00
    ld a, h                                       ; $7499: $7C
    nop                                           ; $749A: $00
    nop                                           ; $749B: $00
    rst $38                                       ; $749C: $FF
    ld e, a                                       ; $749D: $5F
    sub e                                         ; $749E: $93
    inc h                                         ; $749F: $24
    nop                                           ; $74A0: $00
    ld a, h                                       ; $74A1: $7C
    nop                                           ; $74A2: $00
    nop                                           ; $74A3: $00
    or l                                          ; $74A4: $B5
    ld hl, $6318                                  ; $74A5: $21 $18 $63
    nop                                           ; $74A8: $00
    ld a, h                                       ; $74A9: $7C
    nop                                           ; $74AA: $00
    nop                                           ; $74AB: $00
    inc [hl]                                      ; $74AC: $34
    ld d, d                                       ; $74AD: $52
    ld a, [de]                                    ; $74AE: $1A
    ld l, e                                       ; $74AF: $6B
    nop                                           ; $74B0: $00
    ld a, h                                       ; $74B1: $7C
    nop                                           ; $74B2: $00
    nop                                           ; $74B3: $00
    inc [hl]                                      ; $74B4: $34
    ld d, d                                       ; $74B5: $52
    ld a, [de]                                    ; $74B6: $1A
    ld l, e                                       ; $74B7: $6B
    nop                                           ; $74B8: $00
    ld a, h                                       ; $74B9: $7C
    nop                                           ; $74BA: $00

jr_00D_74BB:
    nop                                           ; $74BB: $00
    inc [hl]                                      ; $74BC: $34
    ld d, d                                       ; $74BD: $52
    ld a, [de]                                    ; $74BE: $1A
    ld l, e                                       ; $74BF: $6B
    nop                                           ; $74C0: $00
    ld a, h                                       ; $74C1: $7C
    nop                                           ; $74C2: $00
    nop                                           ; $74C3: $00
    inc [hl]                                      ; $74C4: $34
    ld d, d                                       ; $74C5: $52
    ld a, [de]                                    ; $74C6: $1A
    ld l, e                                       ; $74C7: $6B
    nop                                           ; $74C8: $00
    nop                                           ; $74C9: $00
    nop                                           ; $74CA: $00
    nop                                           ; $74CB: $00
    nop                                           ; $74CC: $00
    nop                                           ; $74CD: $00
    nop                                           ; $74CE: $00
    nop                                           ; $74CF: $00
    nop                                           ; $74D0: $00
    ld a, h                                       ; $74D1: $7C
    nop                                           ; $74D2: $00
    nop                                           ; $74D3: $00
    inc [hl]                                      ; $74D4: $34
    ld d, d                                       ; $74D5: $52
    ld a, [de]                                    ; $74D6: $1A
    ld l, e                                       ; $74D7: $6B
    nop                                           ; $74D8: $00
    ld a, h                                       ; $74D9: $7C
    nop                                           ; $74DA: $00
    nop                                           ; $74DB: $00
    inc [hl]                                      ; $74DC: $34
    ld d, d                                       ; $74DD: $52
    ld a, [de]                                    ; $74DE: $1A
    ld l, e                                       ; $74DF: $6B
    nop                                           ; $74E0: $00
    ld a, h                                       ; $74E1: $7C
    nop                                           ; $74E2: $00
    nop                                           ; $74E3: $00
    inc [hl]                                      ; $74E4: $34
    ld d, d                                       ; $74E5: $52
    ld a, [de]                                    ; $74E6: $1A
    ld l, e                                       ; $74E7: $6B
    nop                                           ; $74E8: $00
    ld a, h                                       ; $74E9: $7C
    nop                                           ; $74EA: $00
    nop                                           ; $74EB: $00
    inc [hl]                                      ; $74EC: $34
    ld d, d                                       ; $74ED: $52
    ld a, [de]                                    ; $74EE: $1A
    ld l, e                                       ; $74EF: $6B
    nop                                           ; $74F0: $00

jr_00D_74F1:
    ld a, h                                       ; $74F1: $7C
    nop                                           ; $74F2: $00
    nop                                           ; $74F3: $00
    inc [hl]                                      ; $74F4: $34
    ld d, d                                       ; $74F5: $52
    ld a, [de]                                    ; $74F6: $1A
    ld l, e                                       ; $74F7: $6B
    nop                                           ; $74F8: $00
    ld a, h                                       ; $74F9: $7C
    nop                                           ; $74FA: $00
    nop                                           ; $74FB: $00
    inc [hl]                                      ; $74FC: $34
    ld d, d                                       ; $74FD: $52
    ld a, [de]                                    ; $74FE: $1A
    ld l, e                                       ; $74FF: $6B
    nop                                           ; $7500: $00
    ld a, h                                       ; $7501: $7C
    nop                                           ; $7502: $00
    nop                                           ; $7503: $00
    inc [hl]                                      ; $7504: $34
    ld d, d                                       ; $7505: $52
    ld a, [de]                                    ; $7506: $1A
    ld l, e                                       ; $7507: $6B
    nop                                           ; $7508: $00
    ld a, h                                       ; $7509: $7C
    nop                                           ; $750A: $00
    nop                                           ; $750B: $00
    inc [hl]                                      ; $750C: $34
    ld d, d                                       ; $750D: $52
    ld a, [de]                                    ; $750E: $1A
    ld l, e                                       ; $750F: $6B
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

Jump_00D_78FE:
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

Jump_00D_7FC3:
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
