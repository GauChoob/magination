SECTION "ROM Bank $024", ROMX[$4000], BANK[$24]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    nop                                           ; $4002: $00
    nop                                           ; $4003: $00
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    nop                                           ; $4006: $00
    nop                                           ; $4007: $00
    ld [$0008], sp                                ; $4008: $08 $08 $00
    nop                                           ; $400B: $00
    nop                                           ; $400C: $00
    nop                                           ; $400D: $00
    nop                                           ; $400E: $00
    nop                                           ; $400F: $00
    nop                                           ; $4010: $00
    nop                                           ; $4011: $00
    nop                                           ; $4012: $00
    nop                                           ; $4013: $00
    nop                                           ; $4014: $00
    nop                                           ; $4015: $00
    ld [$1408], sp                                ; $4016: $08 $08 $14
    inc d                                         ; $4019: $14
    ld [$0008], sp                                ; $401A: $08 $08 $00
    nop                                           ; $401D: $00
    nop                                           ; $401E: $00
    nop                                           ; $401F: $00
    nop                                           ; $4020: $00
    nop                                           ; $4021: $00
    nop                                           ; $4022: $00
    nop                                           ; $4023: $00
    nop                                           ; $4024: $00
    nop                                           ; $4025: $00
    inc c                                         ; $4026: $0C
    inc c                                         ; $4027: $0C
    ld [de], a                                    ; $4028: $12
    ld [de], a                                    ; $4029: $12
    ld [de], a                                    ; $402A: $12
    ld [de], a                                    ; $402B: $12
    inc c                                         ; $402C: $0C
    inc c                                         ; $402D: $0C
    nop                                           ; $402E: $00
    nop                                           ; $402F: $00
    nop                                           ; $4030: $00
    nop                                           ; $4031: $00
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    nop                                           ; $4034: $00
    nop                                           ; $4035: $00
    nop                                           ; $4036: $00
    nop                                           ; $4037: $00
    nop                                           ; $4038: $00
    nop                                           ; $4039: $00
    stop                                          ; $403A: $10 $00
    jr c, jr_024_404E                             ; $403C: $38 $10

    ld a, c                                       ; $403E: $79
    jr nc, jr_024_4041                            ; $403F: $30 $00

jr_024_4041:
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00
    nop                                           ; $4043: $00
    inc a                                         ; $4044: $3C
    nop                                           ; $4045: $00
    ld b, d                                       ; $4046: $42
    inc a                                         ; $4047: $3C
    add c                                         ; $4048: $81
    ld a, [hl]                                    ; $4049: $7E
    jp $FF3C                                      ; $404A: $C3 $3C $FF


    ld b, d                                       ; $404D: $42

jr_024_404E:
    rst $38                                       ; $404E: $FF
    ld a, [hl]                                    ; $404F: $7E
    nop                                           ; $4050: $00
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    nop                                           ; $4053: $00
    nop                                           ; $4054: $00
    nop                                           ; $4055: $00
    nop                                           ; $4056: $00
    nop                                           ; $4057: $00
    nop                                           ; $4058: $00
    nop                                           ; $4059: $00
    nop                                           ; $405A: $00
    nop                                           ; $405B: $00
    nop                                           ; $405C: $00
    nop                                           ; $405D: $00
    ld bc, $7F00                                  ; $405E: $01 $00 $7F
    jr c, @+$01                                   ; $4061: $38 $FF

    ld a, [hl]                                    ; $4063: $7E
    rst $38                                       ; $4064: $FF
    ld a, [hl]                                    ; $4065: $7E
    rst $38                                       ; $4066: $FF
    ld a, [hl]                                    ; $4067: $7E
    ld a, a                                       ; $4068: $7F
    ld a, $7F                                     ; $4069: $3E $7F
    ld a, $FF                                     ; $406B: $3E $FF
    ld e, $FF                                     ; $406D: $1E $FF
    ret nz                                        ; $406F: $C0

    rst $38                                       ; $4070: $FF
    inc a                                         ; $4071: $3C
    cp l                                          ; $4072: $BD
    ld b, d                                       ; $4073: $42
    jp $FF3C                                      ; $4074: $C3 $3C $FF


    nop                                           ; $4077: $00
    rst $20                                       ; $4078: $E7
    ld a, [hl]                                    ; $4079: $7E
    db $DB                                        ; $407A: $DB
    rst $20                                       ; $407B: $E7
    db $DB                                        ; $407C: $DB
    ld h, [hl]                                    ; $407D: $66
    rst $20                                       ; $407E: $E7
    inc a                                         ; $407F: $3C
    rst $38                                       ; $4080: $FF
    ldh a, [rIE]                                  ; $4081: $F0 $FF
    ldh a, [rIE]                                  ; $4083: $F0 $FF
    ldh a, [$FE]                                  ; $4085: $F0 $FE
    pop hl                                        ; $4087: $E1
    ld hl, sp+$07                                 ; $4088: $F8 $07
    db $10                                        ; $408A: $10
    rrca                                          ; $408B: $0F
    ld de, $110E                                  ; $408C: $11 $0E $11
    ld c, $FF                                     ; $408F: $0E $FF
    nop                                           ; $4091: $00
    rst $38                                       ; $4092: $FF
    nop                                           ; $4093: $00
    rst $38                                       ; $4094: $FF
    nop                                           ; $4095: $00
    rst $38                                       ; $4096: $FF
    ld a, [hl]                                    ; $4097: $7E
    rst $38                                       ; $4098: $FF
    nop                                           ; $4099: $00
    rst $38                                       ; $409A: $FF
    ld a, [hl]                                    ; $409B: $7E
    rst $38                                       ; $409C: $FF
    ld a, [hl]                                    ; $409D: $7E
    rst $38                                       ; $409E: $FF
    inc a                                         ; $409F: $3C
    ld de, $130E                                  ; $40A0: $11 $0E $13
    inc c                                         ; $40A3: $0C
    inc hl                                        ; $40A4: $23
    dec e                                         ; $40A5: $1D
    inc hl                                        ; $40A6: $23
    inc e                                         ; $40A7: $1C
    daa                                           ; $40A8: $27
    add hl, de                                    ; $40A9: $19
    daa                                           ; $40AA: $27
    dec de                                        ; $40AB: $1B
    daa                                           ; $40AC: $27
    dec de                                        ; $40AD: $1B
    inc hl                                        ; $40AE: $23
    inc e                                         ; $40AF: $1C
    rst $38                                       ; $40B0: $FF
    cp l                                          ; $40B1: $BD
    rst $38                                       ; $40B2: $FF
    cp l                                          ; $40B3: $BD
    rst $38                                       ; $40B4: $FF
    db $DB                                        ; $40B5: $DB
    rst $38                                       ; $40B6: $FF
    jr @+$01                                      ; $40B7: $18 $FF

    db $DB                                        ; $40B9: $DB
    rst $38                                       ; $40BA: $FF
    rst $20                                       ; $40BB: $E7
    rst $38                                       ; $40BC: $FF
    jp $18E7                                      ; $40BD: $C3 $E7 $18


    daa                                           ; $40C0: $27
    jr @+$31                                      ; $40C1: $18 $2F

    db $10                                        ; $40C3: $10
    inc de                                        ; $40C4: $13
    nop                                           ; $40C5: $00
    inc bc                                        ; $40C6: $03
    ld bc, $0307                                  ; $40C7: $01 $07 $03
    rlca                                          ; $40CA: $07
    inc bc                                        ; $40CB: $03
    rlca                                          ; $40CC: $07
    inc bc                                        ; $40CD: $03
    rlca                                          ; $40CE: $07
    inc bc                                        ; $40CF: $03
    rst $20                                       ; $40D0: $E7
    jr @+$01                                      ; $40D1: $18 $FF

    nop                                           ; $40D3: $00
    rst $38                                       ; $40D4: $FF
    nop                                           ; $40D5: $00
    rst $38                                       ; $40D6: $FF
    jp $E7FF                                      ; $40D7: $C3 $FF $E7


    rst $38                                       ; $40DA: $FF
    rst $20                                       ; $40DB: $E7
    rst $20                                       ; $40DC: $E7
    jp $C3E7                                      ; $40DD: $C3 $E7 $C3


    ld a, h                                       ; $40E0: $7C
    jr jr_024_411B                                ; $40E1: $18 $38

    nop                                           ; $40E3: $00
    nop                                           ; $40E4: $00
    nop                                           ; $40E5: $00
    nop                                           ; $40E6: $00
    nop                                           ; $40E7: $00
    nop                                           ; $40E8: $00
    nop                                           ; $40E9: $00
    nop                                           ; $40EA: $00
    nop                                           ; $40EB: $00
    nop                                           ; $40EC: $00
    nop                                           ; $40ED: $00
    nop                                           ; $40EE: $00
    nop                                           ; $40EF: $00
    daa                                           ; $40F0: $27
    jr jr_024_4152                                ; $40F1: $18 $5F

    jr nz, jr_024_4128                            ; $40F3: $20 $33

    nop                                           ; $40F5: $00
    inc bc                                        ; $40F6: $03
    ld bc, $0307                                  ; $40F7: $01 $07 $03
    rlca                                          ; $40FA: $07
    inc bc                                        ; $40FB: $03
    rlca                                          ; $40FC: $07
    inc bc                                        ; $40FD: $03
    rlca                                          ; $40FE: $07
    inc bc                                        ; $40FF: $03
    ld b, a                                       ; $4100: $47
    jr c, jr_024_4142                             ; $4101: $38 $3F

    nop                                           ; $4103: $00
    inc bc                                        ; $4104: $03
    nop                                           ; $4105: $00
    inc bc                                        ; $4106: $03
    ld bc, $0307                                  ; $4107: $01 $07 $03
    rlca                                          ; $410A: $07
    inc bc                                        ; $410B: $03
    rlca                                          ; $410C: $07
    inc bc                                        ; $410D: $03
    rlca                                          ; $410E: $07
    inc bc                                        ; $410F: $03
    ld a, a                                       ; $4110: $7F
    jr c, @+$01                                   ; $4111: $38 $FF

    ld a, [hl]                                    ; $4113: $7E
    rst $38                                       ; $4114: $FF
    ld a, [hl]                                    ; $4115: $7E
    rst $38                                       ; $4116: $FF
    ld a, [hl]                                    ; $4117: $7E
    ld a, a                                       ; $4118: $7F
    ld a, $7F                                     ; $4119: $3E $7F

jr_024_411B:
    ld a, $7F                                     ; $411B: $3E $7F
    ld e, $3F                                     ; $411D: $1E $3F
    inc c                                         ; $411F: $0C
    ld a, a                                       ; $4120: $7F
    jr nz, jr_024_41A0                            ; $4121: $20 $7D

    ld a, [hl-]                                   ; $4123: $3A
    ld a, l                                       ; $4124: $7D
    ld a, [hl-]                                   ; $4125: $3A
    inc a                                         ; $4126: $3C
    dec de                                        ; $4127: $1B

jr_024_4128:
    ld a, $19                                     ; $4128: $3E $19
    ld a, a                                       ; $412A: $7F
    ld a, $7F                                     ; $412B: $3E $7F
    inc a                                         ; $412D: $3C
    ld a, a                                       ; $412E: $7F
    ld a, $FF                                     ; $412F: $3E $FF
    rrca                                          ; $4131: $0F
    rst $38                                       ; $4132: $FF
    rrca                                          ; $4133: $0F
    rst $38                                       ; $4134: $FF
    rrca                                          ; $4135: $0F
    ld a, a                                       ; $4136: $7F
    add a                                         ; $4137: $87
    rra                                           ; $4138: $1F
    ldh [$08], a                                  ; $4139: $E0 $08
    ldh a, [$88]                                  ; $413B: $F0 $88
    ld [hl], b                                    ; $413D: $70
    adc b                                         ; $413E: $88
    ld [hl], b                                    ; $413F: $70
    ret nz                                        ; $4140: $C0

    add b                                         ; $4141: $80

jr_024_4142:
    ret nz                                        ; $4142: $C0

    add b                                         ; $4143: $80
    ret nz                                        ; $4144: $C0

    add b                                         ; $4145: $80
    ret nz                                        ; $4146: $C0

    add b                                         ; $4147: $80
    add b                                         ; $4148: $80
    nop                                           ; $4149: $00
    nop                                           ; $414A: $00
    nop                                           ; $414B: $00
    nop                                           ; $414C: $00
    nop                                           ; $414D: $00
    nop                                           ; $414E: $00
    nop                                           ; $414F: $00
    ld a, a                                       ; $4150: $7F
    inc a                                         ; $4151: $3C

jr_024_4152:
    ccf                                           ; $4152: $3F
    nop                                           ; $4153: $00
    ccf                                           ; $4154: $3F
    ld bc, $003F                                  ; $4155: $01 $3F $00
    daa                                           ; $4158: $27
    add hl, de                                    ; $4159: $19
    daa                                           ; $415A: $27
    dec de                                        ; $415B: $1B
    daa                                           ; $415C: $27
    dec de                                        ; $415D: $1B
    ld b, e                                       ; $415E: $43
    inc a                                         ; $415F: $3C
    ld de, $130E                                  ; $4160: $11 $0E $13
    inc c                                         ; $4163: $0C
    inc hl                                        ; $4164: $23
    dec e                                         ; $4165: $1D
    inc hl                                        ; $4166: $23
    inc e                                         ; $4167: $1C
    daa                                           ; $4168: $27
    add hl, de                                    ; $4169: $19

jr_024_416A:
    daa                                           ; $416A: $27
    dec de                                        ; $416B: $1B
    daa                                           ; $416C: $27
    dec de                                        ; $416D: $1B
    ld b, e                                       ; $416E: $43
    inc a                                         ; $416F: $3C
    ld b, a                                       ; $4170: $47
    jr c, jr_024_41B2                             ; $4171: $38 $3F

    nop                                           ; $4173: $00
    rlca                                          ; $4174: $07
    nop                                           ; $4175: $00
    rrca                                          ; $4176: $0F
    inc bc                                        ; $4177: $03
    rra                                           ; $4178: $1F
    rrca                                          ; $4179: $0F
    ccf                                           ; $417A: $3F
    rra                                           ; $417B: $1F
    ccf                                           ; $417C: $3F
    rra                                           ; $417D: $1F
    rra                                           ; $417E: $1F
    nop                                           ; $417F: $00
    rst $20                                       ; $4180: $E7
    jr jr_024_416A                                ; $4181: $18 $E7

    jr @+$01                                      ; $4183: $18 $FF

    nop                                           ; $4185: $00
    rst $20                                       ; $4186: $E7
    add c                                         ; $4187: $81
    rst $20                                       ; $4188: $E7
    jp $81C3                                      ; $4189: $C3 $C3 $81


    add c                                         ; $418C: $81
    nop                                           ; $418D: $00
    nop                                           ; $418E: $00
    nop                                           ; $418F: $00
    nop                                           ; $4190: $00
    nop                                           ; $4191: $00
    nop                                           ; $4192: $00
    nop                                           ; $4193: $00
    inc a                                         ; $4194: $3C
    nop                                           ; $4195: $00
    ld b, d                                       ; $4196: $42
    inc a                                         ; $4197: $3C
    cp l                                          ; $4198: $BD
    ld b, d                                       ; $4199: $42
    rst $38                                       ; $419A: $FF
    inc a                                         ; $419B: $3C
    rst $38                                       ; $419C: $FF
    ld a, [hl]                                    ; $419D: $7E
    rst $38                                       ; $419E: $FF
    ld b, d                                       ; $419F: $42

jr_024_41A0:
    nop                                           ; $41A0: $00
    nop                                           ; $41A1: $00
    nop                                           ; $41A2: $00
    nop                                           ; $41A3: $00
    nop                                           ; $41A4: $00
    nop                                           ; $41A5: $00
    nop                                           ; $41A6: $00
    nop                                           ; $41A7: $00
    nop                                           ; $41A8: $00
    nop                                           ; $41A9: $00
    nop                                           ; $41AA: $00
    nop                                           ; $41AB: $00
    ld bc, $0300                                  ; $41AC: $01 $00 $03
    ld bc, $387F                                  ; $41AF: $01 $7F $38

jr_024_41B2:
    rst $38                                       ; $41B2: $FF
    ld a, [hl]                                    ; $41B3: $7E
    rst $38                                       ; $41B4: $FF
    ld a, [hl]                                    ; $41B5: $7E
    rst $38                                       ; $41B6: $FF
    ld a, [hl]                                    ; $41B7: $7E
    ld a, a                                       ; $41B8: $7F
    ld a, $FF                                     ; $41B9: $3E $FF
    ld e, $FF                                     ; $41BB: $1E $FF
    add $FF                                       ; $41BD: $C6 $FF
    ldh a, [$C3]                                  ; $41BF: $F0 $C3
    inc a                                         ; $41C1: $3C
    add c                                         ; $41C2: $81
    ld a, [hl]                                    ; $41C3: $7E
    jp $FF3C                                      ; $41C4: $C3 $3C $FF


    nop                                           ; $41C7: $00
    rst $20                                       ; $41C8: $E7
    ld a, [hl]                                    ; $41C9: $7E
    db $DB                                        ; $41CA: $DB
    rst $20                                       ; $41CB: $E7
    db $DB                                        ; $41CC: $DB
    ld h, [hl]                                    ; $41CD: $66
    rst $20                                       ; $41CE: $E7
    inc a                                         ; $41CF: $3C
    inc bc                                        ; $41D0: $03
    ld bc, $0103                                  ; $41D1: $01 $03 $01
    inc bc                                        ; $41D4: $03
    ld bc, $0001                                  ; $41D5: $01 $01 $00
    nop                                           ; $41D8: $00
    nop                                           ; $41D9: $00
    nop                                           ; $41DA: $00
    nop                                           ; $41DB: $00
    nop                                           ; $41DC: $00
    nop                                           ; $41DD: $00
    nop                                           ; $41DE: $00
    nop                                           ; $41DF: $00
    rst $38                                       ; $41E0: $FF
    ldh a, [rIE]                                  ; $41E1: $F0 $FF
    ldh a, [rIE]                                  ; $41E3: $F0 $FF
    ldh [$FE], a                                  ; $41E5: $E0 $FE
    ld bc, $0718                                  ; $41E7: $01 $18 $07
    db $10                                        ; $41EA: $10
    rrca                                          ; $41EB: $0F
    ld de, $110E                                  ; $41EC: $11 $0E $11
    ld c, $03                                     ; $41EF: $0E $03
    ld bc, $0103                                  ; $41F1: $01 $03 $01
    inc bc                                        ; $41F4: $03
    ld bc, $0103                                  ; $41F5: $01 $03 $01
    ld bc, $0000                                  ; $41F8: $01 $00 $00
    nop                                           ; $41FB: $00
    nop                                           ; $41FC: $00
    nop                                           ; $41FD: $00
    nop                                           ; $41FE: $00
    nop                                           ; $41FF: $00
    rst $38                                       ; $4200: $FF
    ldh a, [rIE]                                  ; $4201: $F0 $FF
    ldh a, [rIE]                                  ; $4203: $F0 $FF
    ldh a, [rIE]                                  ; $4205: $F0 $FF
    ldh [$FE], a                                  ; $4207: $E0 $FE
    ld bc, $0718                                  ; $4209: $01 $18 $07
    ld de, $110E                                  ; $420C: $11 $0E $11
    ld c, $E7                                     ; $420F: $0E $E7
    inc a                                         ; $4211: $3C
    rst $38                                       ; $4212: $FF
    nop                                           ; $4213: $00
    rst $38                                       ; $4214: $FF
    nop                                           ; $4215: $00
    rst $38                                       ; $4216: $FF
    nop                                           ; $4217: $00
    rst $38                                       ; $4218: $FF
    ld a, [hl]                                    ; $4219: $7E
    rst $38                                       ; $421A: $FF
    nop                                           ; $421B: $00
    rst $38                                       ; $421C: $FF
    ld a, [hl]                                    ; $421D: $7E
    rst $38                                       ; $421E: $FF
    inc a                                         ; $421F: $3C
    ld bc, $0300                                  ; $4220: $01 $00 $03
    ld bc, $030F                                  ; $4223: $01 $0F $03
    rra                                           ; $4226: $1F
    rlca                                          ; $4227: $07
    ccf                                           ; $4228: $3F
    rlca                                          ; $4229: $07
    ld e, a                                       ; $422A: $5F
    cpl                                           ; $422B: $2F
    sbc a                                         ; $422C: $9F
    ld l, a                                       ; $422D: $6F
    sbc a                                         ; $422E: $9F
    ld l, a                                       ; $422F: $6F
    rlca                                          ; $4230: $07
    nop                                           ; $4231: $00
    rst $38                                       ; $4232: $FF
    inc bc                                        ; $4233: $03
    rst $38                                       ; $4234: $FF
    rlca                                          ; $4235: $07
    rst $38                                       ; $4236: $FF
    rst $00                                       ; $4237: $C7
    rst $38                                       ; $4238: $FF
    db $E3                                        ; $4239: $E3
    rst $38                                       ; $423A: $FF
    pop hl                                        ; $423B: $E1
    ei                                            ; $423C: $FB
    db $E4                                        ; $423D: $E4
    db $FC                                        ; $423E: $FC
    di                                            ; $423F: $F3
    ldh [rP1], a                                  ; $4240: $E0 $00
    pop af                                        ; $4242: $F1
    ret nz                                        ; $4243: $C0

    ei                                            ; $4244: $FB
    pop hl                                        ; $4245: $E1
    rst $38                                       ; $4246: $FF
    pop hl                                        ; $4247: $E1
    rst $38                                       ; $4248: $FF
    db $E3                                        ; $4249: $E3
    rst $38                                       ; $424A: $FF
    rst $00                                       ; $424B: $C7
    rst $18                                       ; $424C: $DF
    daa                                           ; $424D: $27
    ccf                                           ; $424E: $3F
    rst $08                                       ; $424F: $CF
    nop                                           ; $4250: $00
    nop                                           ; $4251: $00
    nop                                           ; $4252: $00
    nop                                           ; $4253: $00
    add b                                         ; $4254: $80
    nop                                           ; $4255: $00
    ret nz                                        ; $4256: $C0

    add b                                         ; $4257: $80
    ret nz                                        ; $4258: $C0

    add b                                         ; $4259: $80
    ret nz                                        ; $425A: $C0

    add b                                         ; $425B: $80
    ret nz                                        ; $425C: $C0

    add b                                         ; $425D: $80
    ret nz                                        ; $425E: $C0

    add b                                         ; $425F: $80
    inc b                                         ; $4260: $04
    inc bc                                        ; $4261: $03
    inc b                                         ; $4262: $04
    inc bc                                        ; $4263: $03
    ld [$0807], sp                                ; $4264: $08 $07 $08
    rlca                                          ; $4267: $07
    ld [$1807], sp                                ; $4268: $08 $07 $18
    rlca                                          ; $426B: $07
    jr c, jr_024_4275                             ; $426C: $38 $07

    ld hl, sp+$07                                 ; $426E: $F8 $07
    ld a, a                                       ; $4270: $7F
    and a                                         ; $4271: $A7
    ld a, a                                       ; $4272: $7F
    and e                                         ; $4273: $A3
    rst $38                                       ; $4274: $FF

jr_024_4275:
    ld bc, $00FF                                  ; $4275: $01 $FF $00
    rst $38                                       ; $4278: $FF
    nop                                           ; $4279: $00
    ld a, a                                       ; $427A: $7F
    add b                                         ; $427B: $80
    ld a, a                                       ; $427C: $7F
    adc a                                         ; $427D: $8F
    ccf                                           ; $427E: $3F
    rst $08                                       ; $427F: $CF
    rst $38                                       ; $4280: $FF
    ret nz                                        ; $4281: $C0

    rst $38                                       ; $4282: $FF
    ret nz                                        ; $4283: $C0

    ld sp, hl                                     ; $4284: $F9
    add a                                         ; $4285: $87
    di                                            ; $4286: $F3
    ld e, $FF                                     ; $4287: $1E $FF
    inc c                                         ; $4289: $0C
    rst $38                                       ; $428A: $FF
    nop                                           ; $428B: $00
    rst $38                                       ; $428C: $FF
    nop                                           ; $428D: $00
    ld a, [c]                                     ; $428E: $F2
    inc c                                         ; $428F: $0C
    rst $38                                       ; $4290: $FF
    ld a, $FF                                     ; $4291: $3E $FF
    ld e, $FF                                     ; $4293: $1E $FF
    inc b                                         ; $4295: $04
    cp $00                                        ; $4296: $FE $00
    db $FC                                        ; $4298: $FC
    nop                                           ; $4299: $00
    cp $00                                        ; $429A: $FE $00
    rst $38                                       ; $429C: $FF
    ld e, $FF                                     ; $429D: $1E $FF
    ld e, $7E                                     ; $429F: $1E $7E
    add hl, sp                                    ; $42A1: $39
    rst $38                                       ; $42A2: $FF
    ld a, b                                       ; $42A3: $78
    rst $38                                       ; $42A4: $FF
    ld a, [hl]                                    ; $42A5: $7E
    rst $38                                       ; $42A6: $FF
    ld e, $3F                                     ; $42A7: $1E $3F
    nop                                           ; $42A9: $00
    nop                                           ; $42AA: $00
    nop                                           ; $42AB: $00
    nop                                           ; $42AC: $00
    nop                                           ; $42AD: $00
    nop                                           ; $42AE: $00
    nop                                           ; $42AF: $00
    rrca                                          ; $42B0: $0F
    pop af                                        ; $42B1: $F1
    rrca                                          ; $42B2: $0F
    pop af                                        ; $42B3: $F1
    adc a                                         ; $42B4: $8F
    ld [hl], c                                    ; $42B5: $71
    rst $28                                       ; $42B6: $EF
    inc de                                        ; $42B7: $13
    rst $38                                       ; $42B8: $FF
    rlca                                          ; $42B9: $07
    rra                                           ; $42BA: $1F
    rrca                                          ; $42BB: $0F
    ccf                                           ; $42BC: $3F
    rra                                           ; $42BD: $1F
    ccf                                           ; $42BE: $3F
    nop                                           ; $42BF: $00
    cp $C5                                        ; $42C0: $FE $C5
    cp $CD                                        ; $42C2: $FE $CD
    cp $CD                                        ; $42C4: $FE $CD
    db $FC                                        ; $42C6: $FC
    jp $E0FF                                      ; $42C7: $C3 $FF $E0


    ld hl, sp-$10                                 ; $42CA: $F8 $F0
    ldh a, [rP1]                                  ; $42CC: $F0 $00
    add b                                         ; $42CE: $80
    nop                                           ; $42CF: $00
    sbc a                                         ; $42D0: $9F
    rlca                                          ; $42D1: $07
    ld e, a                                       ; $42D2: $5F
    add a                                         ; $42D3: $87
    ccf                                           ; $42D4: $3F
    rst $00                                       ; $42D5: $C7
    rst $38                                       ; $42D6: $FF
    rrca                                          ; $42D7: $0F
    cp a                                          ; $42D8: $BF
    rra                                           ; $42D9: $1F
    ccf                                           ; $42DA: $3F
    ld bc, $0003                                  ; $42DB: $01 $03 $00
    nop                                           ; $42DE: $00
    nop                                           ; $42DF: $00
    add b                                         ; $42E0: $80
    nop                                           ; $42E1: $00
    add b                                         ; $42E2: $80
    nop                                           ; $42E3: $00
    ret nz                                        ; $42E4: $C0

    add b                                         ; $42E5: $80
    ldh [$C0], a                                  ; $42E6: $E0 $C0
    ldh a, [$E0]                                  ; $42E8: $F0 $E0
    ld hl, sp-$10                                 ; $42EA: $F8 $F0
    ld hl, sp+$00                                 ; $42EC: $F8 $00
    nop                                           ; $42EE: $00
    nop                                           ; $42EF: $00
    nop                                           ; $42F0: $00
    ret nz                                        ; $42F1: $C0

    nop                                           ; $42F2: $00
    ld h, b                                       ; $42F3: $60
    nop                                           ; $42F4: $00
    jr nc, jr_024_42F7                            ; $42F5: $30 $00

jr_024_42F7:
    stop                                          ; $42F7: $10 $00
    stop                                          ; $42F9: $10 $00
    nop                                           ; $42FB: $00
    nop                                           ; $42FC: $00
    nop                                           ; $42FD: $00
    nop                                           ; $42FE: $00
    nop                                           ; $42FF: $00
    nop                                           ; $4300: $00
    ld h, b                                       ; $4301: $60
    nop                                           ; $4302: $00
    ldh a, [rP1]                                  ; $4303: $F0 $00
    ld a, b                                       ; $4305: $78
    nop                                           ; $4306: $00
    jr c, jr_024_4309                             ; $4307: $38 $00

jr_024_4309:
    jr jr_024_430B                                ; $4309: $18 $00

jr_024_430B:
    stop                                          ; $430B: $10 $00
    nop                                           ; $430D: $00
    nop                                           ; $430E: $00
    nop                                           ; $430F: $00
    nop                                           ; $4310: $00
    nop                                           ; $4311: $00
    nop                                           ; $4312: $00
    nop                                           ; $4313: $00
    rlca                                          ; $4314: $07
    nop                                           ; $4315: $00
    rra                                           ; $4316: $1F
    nop                                           ; $4317: $00
    ccf                                           ; $4318: $3F
    nop                                           ; $4319: $00
    rra                                           ; $431A: $1F
    nop                                           ; $431B: $00
    rlca                                          ; $431C: $07
    nop                                           ; $431D: $00
    nop                                           ; $431E: $00
    nop                                           ; $431F: $00
    nop                                           ; $4320: $00
    nop                                           ; $4321: $00
    nop                                           ; $4322: $00
    nop                                           ; $4323: $00
    rrca                                          ; $4324: $0F
    nop                                           ; $4325: $00
    ccf                                           ; $4326: $3F
    nop                                           ; $4327: $00
    ld a, a                                       ; $4328: $7F
    nop                                           ; $4329: $00
    ccf                                           ; $432A: $3F
    nop                                           ; $432B: $00
    rrca                                          ; $432C: $0F
    nop                                           ; $432D: $00
    nop                                           ; $432E: $00
    nop                                           ; $432F: $00
    nop                                           ; $4330: $00
    nop                                           ; $4331: $00
    nop                                           ; $4332: $00
    nop                                           ; $4333: $00
    rra                                           ; $4334: $1F
    nop                                           ; $4335: $00
    ld a, a                                       ; $4336: $7F
    nop                                           ; $4337: $00
    rst $38                                       ; $4338: $FF
    nop                                           ; $4339: $00
    ld a, a                                       ; $433A: $7F
    nop                                           ; $433B: $00
    rra                                           ; $433C: $1F
    nop                                           ; $433D: $00
    nop                                           ; $433E: $00
    nop                                           ; $433F: $00
    rra                                           ; $4340: $1F
    nop                                           ; $4341: $00
    ccf                                           ; $4342: $3F
    rra                                           ; $4343: $1F
    ccf                                           ; $4344: $3F
    rrca                                          ; $4345: $0F
    rra                                           ; $4346: $1F
    rrca                                          ; $4347: $0F
    rra                                           ; $4348: $1F
    rrca                                          ; $4349: $0F
    rra                                           ; $434A: $1F
    inc c                                         ; $434B: $0C
    rra                                           ; $434C: $1F
    ld b, $0F                                     ; $434D: $06 $0F
    inc bc                                        ; $434F: $03
    ldh [rP1], a                                  ; $4350: $E0 $00
    ldh a, [$E0]                                  ; $4352: $F0 $E0
    ld hl, sp-$10                                 ; $4354: $F8 $F0
    ld hl, sp-$10                                 ; $4356: $F8 $F0
    db $FC                                        ; $4358: $FC
    ld hl, sp-$04                                 ; $4359: $F8 $FC
    ld a, b                                       ; $435B: $78
    db $FC                                        ; $435C: $FC
    nop                                           ; $435D: $00
    ld hl, sp+$00                                 ; $435E: $F8 $00
    rra                                           ; $4360: $1F
    dec b                                         ; $4361: $05
    rra                                           ; $4362: $1F
    inc c                                         ; $4363: $0C
    rra                                           ; $4364: $1F
    ld c, $1F                                     ; $4365: $0E $1F
    rrca                                          ; $4367: $0F
    rra                                           ; $4368: $1F
    rrca                                          ; $4369: $0F
    rrca                                          ; $436A: $0F
    rlca                                          ; $436B: $07
    rlca                                          ; $436C: $07
    inc bc                                        ; $436D: $03
    rlca                                          ; $436E: $07
    inc bc                                        ; $436F: $03
    ld hl, sp-$70                                 ; $4370: $F8 $90
    db $FC                                        ; $4372: $FC
    ret z                                         ; $4373: $C8

    db $FC                                        ; $4374: $FC
    ld [$98FC], sp                                ; $4375: $08 $FC $98
    db $FC                                        ; $4378: $FC
    sbc b                                         ; $4379: $98
    db $FC                                        ; $437A: $FC
    sbc b                                         ; $437B: $98
    db $FC                                        ; $437C: $FC
    sbc b                                         ; $437D: $98
    ld hl, sp-$70                                 ; $437E: $F8 $90
    rlca                                          ; $4380: $07
    inc bc                                        ; $4381: $03
    rlca                                          ; $4382: $07
    inc bc                                        ; $4383: $03
    rrca                                          ; $4384: $0F
    rlca                                          ; $4385: $07
    rrca                                          ; $4386: $0F
    rlca                                          ; $4387: $07
    rra                                           ; $4388: $1F
    ld [$031F], sp                                ; $4389: $08 $1F $03
    rra                                           ; $438C: $1F
    rrca                                          ; $438D: $0F
    rrca                                          ; $438E: $0F
    nop                                           ; $438F: $00
    ld hl, sp-$70                                 ; $4390: $F8 $90
    ld hl, sp-$70                                 ; $4392: $F8 $90
    ld hl, sp-$70                                 ; $4394: $F8 $90
    ld hl, sp+$00                                 ; $4396: $F8 $00
    db $FC                                        ; $4398: $FC
    jr @-$02                                      ; $4399: $18 $FC

    ld a, b                                       ; $439B: $78
    ld hl, sp+$00                                 ; $439C: $F8 $00
    add b                                         ; $439E: $80
    nop                                           ; $439F: $00
    ldh [rP1], a                                  ; $43A0: $E0 $00
    ldh a, [$E0]                                  ; $43A2: $F0 $E0
    ld hl, sp-$10                                 ; $43A4: $F8 $F0
    ld hl, sp-$10                                 ; $43A6: $F8 $F0
    ld hl, sp-$10                                 ; $43A8: $F8 $F0
    db $FC                                        ; $43AA: $FC
    ret z                                         ; $43AB: $C8

    db $FC                                        ; $43AC: $FC
    adc b                                         ; $43AD: $88
    ld hl, sp+$10                                 ; $43AE: $F8 $10
    ldh a, [rNR41]                                ; $43B0: $F0 $20
    ld hl, sp+$40                                 ; $43B2: $F8 $40
    db $FC                                        ; $43B4: $FC
    jr nc, @-$02                                  ; $43B5: $30 $FC

    ld a, b                                       ; $43B7: $78
    db $FC                                        ; $43B8: $FC
    ld a, b                                       ; $43B9: $78
    db $FC                                        ; $43BA: $FC
    ld a, b                                       ; $43BB: $78
    db $FC                                        ; $43BC: $FC
    ld a, b                                       ; $43BD: $78
    db $FC                                        ; $43BE: $FC
    ld [hl], b                                    ; $43BF: $70
    rra                                           ; $43C0: $1F
    ld c, $1F                                     ; $43C1: $0E $1F
    ld c, $1F                                     ; $43C3: $0E $1F
    ld c, $1F                                     ; $43C5: $0E $1F
    nop                                           ; $43C7: $00
    rrca                                          ; $43C8: $0F
    ld b, $0F                                     ; $43C9: $06 $0F
    rlca                                          ; $43CB: $07
    rlca                                          ; $43CC: $07
    inc bc                                        ; $43CD: $03
    rlca                                          ; $43CE: $07
    nop                                           ; $43CF: $00
    ld hl, sp+$70                                 ; $43D0: $F8 $70
    ldh a, [$60]                                  ; $43D2: $F0 $60
    ldh a, [$60]                                  ; $43D4: $F0 $60
    ldh a, [$60]                                  ; $43D6: $F0 $60
    ldh a, [$60]                                  ; $43D8: $F0 $60
    ldh [rP1], a                                  ; $43DA: $E0 $00
    ldh [rLCDC], a                                ; $43DC: $E0 $40
    ret nz                                        ; $43DE: $C0

    nop                                           ; $43DF: $00
    db $FC                                        ; $43E0: $FC
    ld [hl], b                                    ; $43E1: $70
    db $FC                                        ; $43E2: $FC
    ld a, b                                       ; $43E3: $78
    db $FC                                        ; $43E4: $FC
    ld a, b                                       ; $43E5: $78
    db $FC                                        ; $43E6: $FC

jr_024_43E7:
    ld c, b                                       ; $43E7: $48
    ld hl, sp+$30                                 ; $43E8: $F8 $30
    db $FC                                        ; $43EA: $FC
    ld a, b                                       ; $43EB: $78
    db $FC                                        ; $43EC: $FC
    jr c, jr_024_43E7                             ; $43ED: $38 $F8

    nop                                           ; $43EF: $00
    rlca                                          ; $43F0: $07
    nop                                           ; $43F1: $00
    rrca                                          ; $43F2: $0F
    rlca                                          ; $43F3: $07
    rra                                           ; $43F4: $1F
    ld c, $1F                                     ; $43F5: $0E $1F
    rrca                                          ; $43F7: $0F
    ccf                                           ; $43F8: $3F
    rra                                           ; $43F9: $1F
    ccf                                           ; $43FA: $3F
    rra                                           ; $43FB: $1F
    rra                                           ; $43FC: $1F
    rlca                                          ; $43FD: $07
    rrca                                          ; $43FE: $0F
    nop                                           ; $43FF: $00
    ldh [rP1], a                                  ; $4400: $E0 $00
    ldh a, [$A0]                                  ; $4402: $F0 $A0
    ld hl, sp+$70                                 ; $4404: $F8 $70
    ld hl, sp-$10                                 ; $4406: $F8 $F0
    db $FC                                        ; $4408: $FC
    ld hl, sp-$04                                 ; $4409: $F8 $FC
    ld hl, sp-$08                                 ; $440B: $F8 $F8
    ldh [$F0], a                                  ; $440D: $E0 $F0
    nop                                           ; $440F: $00
    ld hl, sp-$40                                 ; $4410: $F8 $C0
    db $FC                                        ; $4412: $FC
    ldh a, [$FC]                                  ; $4413: $F0 $FC
    ld hl, sp-$04                                 ; $4415: $F8 $FC
    ld hl, sp-$04                                 ; $4417: $F8 $FC
    ld hl, sp-$04                                 ; $4419: $F8 $FC
    ldh a, [$F8]                                  ; $441B: $F0 $F8
    ldh a, [$F8]                                  ; $441D: $F0 $F8
    ldh a, [$1F]                                  ; $441F: $F0 $1F
    rrca                                          ; $4421: $0F
    rra                                           ; $4422: $1F
    rrca                                          ; $4423: $0F
    rra                                           ; $4424: $1F
    rrca                                          ; $4425: $0F
    rrca                                          ; $4426: $0F
    rlca                                          ; $4427: $07
    rrca                                          ; $4428: $0F
    nop                                           ; $4429: $00
    rrca                                          ; $442A: $0F
    inc bc                                        ; $442B: $03
    rlca                                          ; $442C: $07
    inc bc                                        ; $442D: $03
    rlca                                          ; $442E: $07
    nop                                           ; $442F: $00
    ldh a, [$E0]                                  ; $4430: $F0 $E0
    ldh a, [$E0]                                  ; $4432: $F0 $E0
    ldh a, [$E0]                                  ; $4434: $F0 $E0
    ldh a, [$E0]                                  ; $4436: $F0 $E0
    ldh a, [$60]                                  ; $4438: $F0 $60
    ldh a, [rP1]                                  ; $443A: $F0 $00
    ldh a, [$60]                                  ; $443C: $F0 $60
    ldh a, [rP1]                                  ; $443E: $F0 $00
    ld hl, sp-$10                                 ; $4440: $F8 $F0
    ld hl, sp-$10                                 ; $4442: $F8 $F0
    ld hl, sp-$10                                 ; $4444: $F8 $F0
    ldh a, [$E0]                                  ; $4446: $F0 $E0
    ld hl, sp-$20                                 ; $4448: $F8 $E0
    db $FC                                        ; $444A: $FC
    ld [$70FC], sp                                ; $444B: $08 $FC $70
    ld hl, sp+$00                                 ; $444E: $F8 $00
    ld bc, $0700                                  ; $4450: $01 $00 $07
    ld bc, $070F                                  ; $4453: $01 $0F $07
    rrca                                          ; $4456: $0F
    inc bc                                        ; $4457: $03
    rlca                                          ; $4458: $07
    ld bc, $0103                                  ; $4459: $01 $03 $01
    inc bc                                        ; $445C: $03
    nop                                           ; $445D: $00
    inc bc                                        ; $445E: $03
    nop                                           ; $445F: $00
    ld hl, sp+$00                                 ; $4460: $F8 $00
    db $FC                                        ; $4462: $FC
    ld hl, sp-$02                                 ; $4463: $F8 $FE
    db $FC                                        ; $4465: $FC
    rst $38                                       ; $4466: $FF
    cp $FF                                        ; $4467: $FE $FF
    cp $FF                                        ; $4469: $FE $FF
    ld [c], a                                     ; $446B: $E2
    rst $38                                       ; $446C: $FF
    ldh a, [rIE]                                  ; $446D: $F0 $FF
    ld a, b                                       ; $446F: $78
    rlca                                          ; $4470: $07
    inc bc                                        ; $4471: $03
    rrca                                          ; $4472: $0F
    rlca                                          ; $4473: $07
    rrca                                          ; $4474: $0F
    rlca                                          ; $4475: $07
    rrca                                          ; $4476: $0F
    rlca                                          ; $4477: $07
    rrca                                          ; $4478: $0F
    rlca                                          ; $4479: $07

Call_024_447A:
    rrca                                          ; $447A: $0F
    inc bc                                        ; $447B: $03
    rlca                                          ; $447C: $07
    inc bc                                        ; $447D: $03
    rlca                                          ; $447E: $07
    inc bc                                        ; $447F: $03
    rst $38                                       ; $4480: $FF
    jr c, @+$01                                   ; $4481: $38 $FF

    sbc h                                         ; $4483: $9C
    cp $C0                                        ; $4484: $FE $C0
    db $FC                                        ; $4486: $FC
    ldh [$F8], a                                  ; $4487: $E0 $F8
    ldh [$F8], a                                  ; $4489: $E0 $F8
    ldh [$F8], a                                  ; $448B: $E0 $F8
    ldh [$F8], a                                  ; $448D: $E0 $F8
    ldh [rTAC], a                                 ; $448F: $E0 $07
    inc bc                                        ; $4491: $03
    rlca                                          ; $4492: $07
    inc bc                                        ; $4493: $03
    rrca                                          ; $4494: $0F
    inc bc                                        ; $4495: $03
    rra                                           ; $4496: $1F
    rlca                                          ; $4497: $07
    rra                                           ; $4498: $1F
    ld c, $1F                                     ; $4499: $0E $1F
    ld [$071F], sp                                ; $449B: $08 $1F $07
    rrca                                          ; $449E: $0F
    nop                                           ; $449F: $00
    ld hl, sp-$20                                 ; $44A0: $F8 $E0
    ld hl, sp-$20                                 ; $44A2: $F8 $E0
    cp $E0                                        ; $44A4: $FE $E0
    rst $38                                       ; $44A6: $FF
    and $FF                                       ; $44A7: $E6 $FF
    ld c, [hl]                                    ; $44A9: $4E
    cp $8C                                        ; $44AA: $FE $8C
    cp $80                                        ; $44AC: $FE $80
    ld hl, sp+$00                                 ; $44AE: $F8 $00
    rlca                                          ; $44B0: $07
    inc bc                                        ; $44B1: $03
    rrca                                          ; $44B2: $0F
    inc bc                                        ; $44B3: $03
    rra                                           ; $44B4: $1F
    rlca                                          ; $44B5: $07
    rra                                           ; $44B6: $1F
    rrca                                          ; $44B7: $0F
    rrca                                          ; $44B8: $0F
    inc b                                         ; $44B9: $04
    rrca                                          ; $44BA: $0F
    ld bc, $030F                                  ; $44BB: $01 $0F $03
    rlca                                          ; $44BE: $07
    nop                                           ; $44BF: $00
    ld hl, sp-$10                                 ; $44C0: $F8 $F0
    ld hl, sp-$10                                 ; $44C2: $F8 $F0
    ld hl, sp-$10                                 ; $44C4: $F8 $F0
    ld hl, sp-$20                                 ; $44C6: $F8 $E0
    db $FC                                        ; $44C8: $FC
    ld [$E8FC], sp                                ; $44C9: $08 $FC $E8
    db $FC                                        ; $44CC: $FC
    ldh [$F0], a                                  ; $44CD: $E0 $F0
    nop                                           ; $44CF: $00
    rlca                                          ; $44D0: $07
    inc bc                                        ; $44D1: $03
    rlca                                          ; $44D2: $07
    inc bc                                        ; $44D3: $03
    rrca                                          ; $44D4: $0F
    inc bc                                        ; $44D5: $03
    rra                                           ; $44D6: $1F
    rlca                                          ; $44D7: $07
    rra                                           ; $44D8: $1F
    ld [$0F1F], sp                                ; $44D9: $08 $1F $0F
    rra                                           ; $44DC: $1F
    rlca                                          ; $44DD: $07
    rrca                                          ; $44DE: $0F
    nop                                           ; $44DF: $00
    ld hl, sp-$10                                 ; $44E0: $F8 $F0
    ld hl, sp-$10                                 ; $44E2: $F8 $F0
    cp $F0                                        ; $44E4: $FE $F0
    rst $38                                       ; $44E6: $FF
    or $FF                                        ; $44E7: $F6 $FF
    ld l, [hl]                                    ; $44E9: $6E
    cp $0C                                        ; $44EA: $FE $0C
    cp $90                                        ; $44EC: $FE $90
    ld hl, sp+$00                                 ; $44EE: $F8 $00
    ld [bc], a                                    ; $44F0: $02
    rlca                                          ; $44F1: $07
    dec b                                         ; $44F2: $05
    rrca                                          ; $44F3: $0F
    ld c, $4F                                     ; $44F4: $0E $4F
    adc a                                         ; $44F6: $8F
    sbc a                                         ; $44F7: $9F
    dec e                                         ; $44F8: $1D
    rra                                           ; $44F9: $1F
    ccf                                           ; $44FA: $3F
    ccf                                           ; $44FB: $3F
    sbc a                                         ; $44FC: $9F
    sbc a                                         ; $44FD: $9F
    nop                                           ; $44FE: $00
    nop                                           ; $44FF: $00
    add b                                         ; $4500: $80
    ldh [rP1], a                                  ; $4501: $E0 $00
    ldh a, [$A0]                                  ; $4503: $F0 $A0
    ldh a, [$50]                                  ; $4505: $F0 $50
    ld a, [$F8C8]                                 ; $4507: $FA $C8 $F8
    ld d, c                                       ; $450A: $51
    db $FD                                        ; $450B: $FD
    ldh [$E0], a                                  ; $450C: $E0 $E0
    ld a, [bc]                                    ; $450E: $0A
    ld a, [de]                                    ; $450F: $1A
    nop                                           ; $4510: $00
    nop                                           ; $4511: $00
    nop                                           ; $4512: $00
    nop                                           ; $4513: $00
    nop                                           ; $4514: $00
    nop                                           ; $4515: $00
    nop                                           ; $4516: $00
    nop                                           ; $4517: $00
    nop                                           ; $4518: $00
    nop                                           ; $4519: $00
    nop                                           ; $451A: $00
    ld [$1800], sp                                ; $451B: $08 $00 $18
    nop                                           ; $451E: $00
    inc a                                         ; $451F: $3C
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00
    ld a, $00                                     ; $4524: $3E $00
    ld a, a                                       ; $4526: $7F
    ld a, $7F                                     ; $4527: $3E $7F
    ld a, $7F                                     ; $4529: $3E $7F
    nop                                           ; $452B: $00
    ld d, a                                       ; $452C: $57
    ld l, $63                                     ; $452D: $2E $63
    inc e                                         ; $452F: $1C
    ld a, $00                                     ; $4530: $3E $00
    ld b, c                                       ; $4532: $41
    ld a, $41                                     ; $4533: $3E $41
    ld a, $63                                     ; $4535: $3E $63
    inc e                                         ; $4537: $1C
    ld d, l                                       ; $4538: $55

jr_024_4539:
    ld a, [hl+]                                   ; $4539: $2A
    ld h, e                                       ; $453A: $63
    inc e                                         ; $453B: $1C
    ld a, $00                                     ; $453C: $3E $00
    ld a, $00                                     ; $453E: $3E $00
    ld a, $00                                     ; $4540: $3E $00
    inc e                                         ; $4542: $1C
    nop                                           ; $4543: $00
    ld a, $00                                     ; $4544: $3E $00
    ld h, e                                       ; $4546: $63
    nop                                           ; $4547: $00
    nop                                           ; $4548: $00
    nop                                           ; $4549: $00
    nop                                           ; $454A: $00
    nop                                           ; $454B: $00
    nop                                           ; $454C: $00
    nop                                           ; $454D: $00
    nop                                           ; $454E: $00
    nop                                           ; $454F: $00
    ld a, $00                                     ; $4550: $3E $00
    inc e                                         ; $4552: $1C
    nop                                           ; $4553: $00
    inc e                                         ; $4554: $1C
    nop                                           ; $4555: $00
    ld a, $00                                     ; $4556: $3E $00
    ld [hl], a                                    ; $4558: $77
    nop                                           ; $4559: $00
    ld b, c                                       ; $455A: $41
    nop                                           ; $455B: $00
    nop                                           ; $455C: $00
    nop                                           ; $455D: $00
    nop                                           ; $455E: $00
    nop                                           ; $455F: $00
    nop                                           ; $4560: $00
    nop                                           ; $4561: $00
    nop                                           ; $4562: $00
    nop                                           ; $4563: $00
    ld a, $00                                     ; $4564: $3E $00
    ld a, a                                       ; $4566: $7F
    ld a, $7F                                     ; $4567: $3E $7F
    ld a, $7F                                     ; $4569: $3E $7F
    ld a, $7F                                     ; $456B: $3E $7F
    ld a, $7F                                     ; $456D: $3E $7F
    inc e                                         ; $456F: $1C
    ld a, $00                                     ; $4570: $3E $00
    ld a, a                                       ; $4572: $7F
    ld [$3649], sp                                ; $4573: $08 $49 $36
    ld b, c                                       ; $4576: $41
    ld a, $41                                     ; $4577: $3E $41
    ld a, $63                                     ; $4579: $3E $63
    inc e                                         ; $457B: $1C
    ld a, $00                                     ; $457C: $3E $00
    ld a, $00                                     ; $457E: $3E $00
    nop                                           ; $4580: $00
    nop                                           ; $4581: $00
    nop                                           ; $4582: $00
    nop                                           ; $4583: $00
    ld e, $00                                     ; $4584: $1E $00
    ccf                                           ; $4586: $3F
    ld e, $7F                                     ; $4587: $1E $7F
    ld a, $7F                                     ; $4589: $3E $7F
    jr c, @+$7D                                   ; $458B: $38 $7B

    inc h                                         ; $458D: $24
    pop af                                        ; $458E: $F1
    ld c, [hl]                                    ; $458F: $4E
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    nop                                           ; $4593: $00
    nop                                           ; $4594: $00
    nop                                           ; $4595: $00
    nop                                           ; $4596: $00
    nop                                           ; $4597: $00
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    nop                                           ; $459A: $00
    nop                                           ; $459B: $00
    dec de                                        ; $459C: $1B
    nop                                           ; $459D: $00
    rst $08                                       ; $459E: $CF
    nop                                           ; $459F: $00
    ld a, [hl]                                    ; $45A0: $7E
    nop                                           ; $45A1: $00
    ret z                                         ; $45A2: $C8

    jr nc, jr_024_4539                            ; $45A3: $30 $94

    ld l, b                                       ; $45A5: $68
    call nc, $AC28                                ; $45A6: $D4 $28 $AC
    ld d, b                                       ; $45A9: $50
    call c, $F820                                 ; $45AA: $DC $20 $F8
    nop                                           ; $45AD: $00
    ldh a, [rP1]                                  ; $45AE: $F0 $00
    ld a, a                                       ; $45B0: $7F
    nop                                           ; $45B1: $00
    rra                                           ; $45B2: $1F
    nop                                           ; $45B3: $00
    nop                                           ; $45B4: $00
    nop                                           ; $45B5: $00
    nop                                           ; $45B6: $00
    nop                                           ; $45B7: $00
    nop                                           ; $45B8: $00
    nop                                           ; $45B9: $00
    nop                                           ; $45BA: $00
    nop                                           ; $45BB: $00
    nop                                           ; $45BC: $00
    nop                                           ; $45BD: $00
    nop                                           ; $45BE: $00
    nop                                           ; $45BF: $00
    ldh [rP1], a                                  ; $45C0: $E0 $00
    nop                                           ; $45C2: $00
    nop                                           ; $45C3: $00
    nop                                           ; $45C4: $00
    nop                                           ; $45C5: $00
    nop                                           ; $45C6: $00
    nop                                           ; $45C7: $00
    nop                                           ; $45C8: $00
    nop                                           ; $45C9: $00
    nop                                           ; $45CA: $00
    nop                                           ; $45CB: $00
    nop                                           ; $45CC: $00
    nop                                           ; $45CD: $00
    nop                                           ; $45CE: $00
    nop                                           ; $45CF: $00
    nop                                           ; $45D0: $00
    nop                                           ; $45D1: $00
    nop                                           ; $45D2: $00
    nop                                           ; $45D3: $00
    nop                                           ; $45D4: $00
    nop                                           ; $45D5: $00
    nop                                           ; $45D6: $00
    nop                                           ; $45D7: $00
    nop                                           ; $45D8: $00
    nop                                           ; $45D9: $00
    nop                                           ; $45DA: $00
    nop                                           ; $45DB: $00
    ld bc, $0F00                                  ; $45DC: $01 $00 $0F
    nop                                           ; $45DF: $00
    ccf                                           ; $45E0: $3F
    nop                                           ; $45E1: $00
    ld h, a                                       ; $45E2: $67
    nop                                           ; $45E3: $00
    inc c                                         ; $45E4: $0C
    nop                                           ; $45E5: $00
    nop                                           ; $45E6: $00
    nop                                           ; $45E7: $00
    nop                                           ; $45E8: $00
    nop                                           ; $45E9: $00
    nop                                           ; $45EA: $00
    nop                                           ; $45EB: $00
    nop                                           ; $45EC: $00
    nop                                           ; $45ED: $00
    nop                                           ; $45EE: $00
    nop                                           ; $45EF: $00
    nop                                           ; $45F0: $00
    nop                                           ; $45F1: $00
    nop                                           ; $45F2: $00
    nop                                           ; $45F3: $00
    ld a, b                                       ; $45F4: $78
    nop                                           ; $45F5: $00
    db $FC                                        ; $45F6: $FC
    ld a, b                                       ; $45F7: $78
    cp $7C                                        ; $45F8: $FE $7C
    cp $1C                                        ; $45FA: $FE $1C
    cp $64                                        ; $45FC: $FE $64
    adc a                                         ; $45FE: $8F
    ld [hl], d                                    ; $45FF: $72
    nop                                           ; $4600: $00
    nop                                           ; $4601: $00
    nop                                           ; $4602: $00
    nop                                           ; $4603: $00
    ld bc, $0300                                  ; $4604: $01 $00 $03
    ld bc, $0103                                  ; $4607: $01 $03 $01
    inc bc                                        ; $460A: $03
    nop                                           ; $460B: $00
    ld b, $01                                     ; $460C: $06 $01
    rrca                                          ; $460E: $0F
    nop                                           ; $460F: $00
    nop                                           ; $4610: $00
    nop                                           ; $4611: $00
    ld hl, sp+$00                                 ; $4612: $F8 $00
    db $FC                                        ; $4614: $FC
    ld hl, sp-$02                                 ; $4615: $F8 $FE
    db $FC                                        ; $4617: $FC
    cp $FC                                        ; $4618: $FE $FC
    cp $00                                        ; $461A: $FE $00
    xor [hl]                                      ; $461C: $AE
    ld e, h                                       ; $461D: $5C
    ld l, $DC                                     ; $461E: $2E $DC
    dec bc                                        ; $4620: $0B
    nop                                           ; $4621: $00
    ld [bc], a                                    ; $4622: $02
    ld bc, $0304                                  ; $4623: $01 $04 $03
    add hl, bc                                    ; $4626: $09
    ld b, $0F                                     ; $4627: $06 $0F
    ld b, $07                                     ; $4629: $06 $07
    inc bc                                        ; $462B: $03
    rlca                                          ; $462C: $07
    inc bc                                        ; $462D: $03
    ld [bc], a                                    ; $462E: $02
    ld bc, $3CC2                                  ; $462F: $01 $C2 $3C
    ld a, h                                       ; $4632: $7C
    add b                                         ; $4633: $80
    ld a, [de]                                    ; $4634: $1A
    db $E4                                        ; $4635: $E4
    ld b, d                                       ; $4636: $42
    cp h                                          ; $4637: $BC
    ld a, $C0                                     ; $4638: $3E $C0
    add a                                         ; $463A: $87
    ld a, b                                       ; $463B: $78
    ld b, l                                       ; $463C: $45
    cp d                                          ; $463D: $BA
    ld a, [hl]                                    ; $463E: $7E
    add b                                         ; $463F: $80
    ld a, a                                       ; $4640: $7F
    ld a, $3F                                     ; $4641: $3E $3F
    ld e, $3F                                     ; $4643: $1E $3F
    ld e, $1F                                     ; $4645: $1E $1F
    ld c, $1F                                     ; $4647: $0E $1F
    ld c, $1F                                     ; $4649: $0E $1F
    ld c, $1E                                     ; $464B: $0E $1E
    inc c                                         ; $464D: $0C
    ld a, $1C                                     ; $464E: $3E $1C
    ld b, a                                       ; $4650: $47
    nop                                           ; $4651: $00
    jr c, jr_024_465B                             ; $4652: $38 $07

    nop                                           ; $4654: $00
    inc c                                         ; $4655: $0C

jr_024_4656:
    nop                                           ; $4656: $00
    ld bc, $0000                                  ; $4657: $01 $00 $00
    nop                                           ; $465A: $00

jr_024_465B:
    nop                                           ; $465B: $00
    nop                                           ; $465C: $00
    nop                                           ; $465D: $00
    nop                                           ; $465E: $00
    nop                                           ; $465F: $00
    ldh a, [$E0]                                  ; $4660: $F0 $E0
    ldh [rP1], a                                  ; $4662: $E0 $00
    db $10                                        ; $4664: $10
    ldh [rNR41], a                                ; $4665: $E0 $20
    ret nz                                        ; $4667: $C0

    nop                                           ; $4668: $00
    nop                                           ; $4669: $00
    nop                                           ; $466A: $00
    nop                                           ; $466B: $00
    nop                                           ; $466C: $00
    nop                                           ; $466D: $00
    nop                                           ; $466E: $00
    nop                                           ; $466F: $00
    cp $7C                                        ; $4670: $FE $7C
    ld a, [hl]                                    ; $4672: $7E
    inc a                                         ; $4673: $3C
    ld a, [hl]                                    ; $4674: $7E
    inc a                                         ; $4675: $3C

jr_024_4676:
    ld a, $1C                                     ; $4676: $3E $1C
    ld a, $1C                                     ; $4678: $3E $1C
    ld a, $1C                                     ; $467A: $3E $1C
    inc a                                         ; $467C: $3C
    jr jr_024_46BB                                ; $467D: $18 $3C

    jr jr_024_4681                                ; $467F: $18 $00

jr_024_4681:
    nop                                           ; $4681: $00
    rlca                                          ; $4682: $07
    nop                                           ; $4683: $00
    inc e                                         ; $4684: $1C
    inc bc                                        ; $4685: $03
    ld [hl], b                                    ; $4686: $70
    ld c, $01                                     ; $4687: $0E $01
    nop                                           ; $4689: $00
    nop                                           ; $468A: $00
    nop                                           ; $468B: $00
    nop                                           ; $468C: $00
    nop                                           ; $468D: $00
    nop                                           ; $468E: $00
    nop                                           ; $468F: $00
    ldh a, [rNR41]                                ; $4690: $F0 $20
    and b                                         ; $4692: $A0
    ld b, b                                       ; $4693: $40
    jr nc, jr_024_4656                            ; $4694: $30 $C0

    sub b                                         ; $4696: $90
    jr nz, @-$5E                                  ; $4697: $20 $A0

    ld b, b                                       ; $4699: $40
    nop                                           ; $469A: $00
    nop                                           ; $469B: $00
    nop                                           ; $469C: $00
    nop                                           ; $469D: $00
    nop                                           ; $469E: $00
    nop                                           ; $469F: $00
    nop                                           ; $46A0: $00
    nop                                           ; $46A1: $00
    rlca                                          ; $46A2: $07
    nop                                           ; $46A3: $00
    inc c                                         ; $46A4: $0C
    inc bc                                        ; $46A5: $03
    jr jr_024_46AE                                ; $46A6: $18 $06

    db $10                                        ; $46A8: $10
    ld [$0010], sp                                ; $46A9: $08 $10 $00
    nop                                           ; $46AC: $00
    nop                                           ; $46AD: $00

jr_024_46AE:
    nop                                           ; $46AE: $00
    nop                                           ; $46AF: $00
    ldh a, [rNR41]                                ; $46B0: $F0 $20
    ldh [rLCDC], a                                ; $46B2: $E0 $40
    jr nc, jr_024_4676                            ; $46B4: $30 $C0

    db $10                                        ; $46B6: $10
    and b                                         ; $46B7: $A0
    db $10                                        ; $46B8: $10
    jr nz, jr_024_46CB                            ; $46B9: $20 $10

jr_024_46BB:
    nop                                           ; $46BB: $00
    stop                                          ; $46BC: $10 $00
    nop                                           ; $46BE: $00
    nop                                           ; $46BF: $00
    nop                                           ; $46C0: $00
    nop                                           ; $46C1: $00
    rra                                           ; $46C2: $1F
    nop                                           ; $46C3: $00
    ccf                                           ; $46C4: $3F
    rra                                           ; $46C5: $1F
    ld a, a                                       ; $46C6: $7F
    ccf                                           ; $46C7: $3F
    ld a, a                                       ; $46C8: $7F
    ccf                                           ; $46C9: $3F
    ld a, a                                       ; $46CA: $7F

jr_024_46CB:
    nop                                           ; $46CB: $00
    ld h, a                                       ; $46CC: $67
    ld e, $66                                     ; $46CD: $1E $66
    rra                                           ; $46CF: $1F
    nop                                           ; $46D0: $00
    nop                                           ; $46D1: $00
    ldh [rP1], a                                  ; $46D2: $E0 $00
    ldh a, [$E0]                                  ; $46D4: $F0 $E0
    ld hl, sp-$10                                 ; $46D6: $F8 $F0
    ld hl, sp-$10                                 ; $46D8: $F8 $F0
    ld hl, sp-$10                                 ; $46DA: $F8 $F0
    ld hl, sp-$10                                 ; $46DC: $F8 $F0
    db $F4                                        ; $46DE: $F4
    add sp, $1F                                   ; $46DF: $E8 $1F
    inc bc                                        ; $46E1: $03
    dec bc                                        ; $46E2: $0B
    dec b                                         ; $46E3: $05
    ld de, $210E                                  ; $46E4: $11 $0E $21
    ld e, $39                                     ; $46E7: $1E $39
    ld d, $38                                     ; $46E9: $16 $38
    rla                                           ; $46EB: $17
    jr z, @+$19                                   ; $46EC: $28 $17

    rra                                           ; $46EE: $1F
    nop                                           ; $46EF: $00
    ld hl, sp-$40                                 ; $46F0: $F8 $C0

jr_024_46F2:
    ret nc                                        ; $46F2: $D0

    and b                                         ; $46F3: $A0

jr_024_46F4:
    adc b                                         ; $46F4: $88
    ld [hl], b                                    ; $46F5: $70
    add h                                         ; $46F6: $84
    ld a, b                                       ; $46F7: $78
    inc e                                         ; $46F8: $1C
    add sp, $1C                                   ; $46F9: $E8 $1C
    add sp, $14                                   ; $46FB: $E8 $14
    add sp, -$08                                  ; $46FD: $E8 $F8
    nop                                           ; $46FF: $00
    ldh [$C0], a                                  ; $4700: $E0 $C0
    ldh [$C0], a                                  ; $4702: $E0 $C0
    ldh [$C0], a                                  ; $4704: $E0 $C0
    ldh [$C0], a                                  ; $4706: $E0 $C0
    ldh [$C0], a                                  ; $4708: $E0 $C0
    ret nz                                        ; $470A: $C0

    add b                                         ; $470B: $80
    ret nz                                        ; $470C: $C0

    add b                                         ; $470D: $80
    ldh a, [rP1]                                  ; $470E: $F0 $00
    jr jr_024_46F2                                ; $4710: $18 $E0

    ld c, $30                                     ; $4712: $0E $30

jr_024_4714:
    inc b                                         ; $4714: $04
    jr jr_024_4717                                ; $4715: $18 $00

jr_024_4717:
    nop                                           ; $4717: $00
    nop                                           ; $4718: $00
    nop                                           ; $4719: $00
    nop                                           ; $471A: $00
    nop                                           ; $471B: $00
    nop                                           ; $471C: $00
    nop                                           ; $471D: $00
    nop                                           ; $471E: $00
    nop                                           ; $471F: $00
    ldh [$C0], a                                  ; $4720: $E0 $C0
    ldh [$C0], a                                  ; $4722: $E0 $C0
    ldh [$C0], a                                  ; $4724: $E0 $C0

jr_024_4726:
    ldh [$C0], a                                  ; $4726: $E0 $C0
    ldh [$C0], a                                  ; $4728: $E0 $C0
    ret nz                                        ; $472A: $C0

    add b                                         ; $472B: $80
    ret nz                                        ; $472C: $C0

    add b                                         ; $472D: $80
    ret nz                                        ; $472E: $C0

    add b                                         ; $472F: $80
    ldh a, [rP1]                                  ; $4730: $F0 $00
    jr jr_024_4714                                ; $4732: $18 $E0

    inc c                                         ; $4734: $0C
    jr nc, jr_024_4739                            ; $4735: $30 $02

    inc c                                         ; $4737: $0C
    nop                                           ; $4738: $00

jr_024_4739:
    nop                                           ; $4739: $00
    nop                                           ; $473A: $00
    nop                                           ; $473B: $00
    nop                                           ; $473C: $00
    nop                                           ; $473D: $00
    nop                                           ; $473E: $00
    nop                                           ; $473F: $00
    ret nz                                        ; $4740: $C0

    add b                                         ; $4741: $80
    ldh a, [rP1]                                  ; $4742: $F0 $00
    jr jr_024_4726                                ; $4744: $18 $E0

    inc c                                         ; $4746: $0C
    jr nc, jr_024_474F                            ; $4747: $30 $06

    ld [$0002], sp                                ; $4749: $08 $02 $00
    nop                                           ; $474C: $00
    nop                                           ; $474D: $00
    nop                                           ; $474E: $00

jr_024_474F:
    nop                                           ; $474F: $00
    jr jr_024_4759                                ; $4750: $18 $07

    rra                                           ; $4752: $1F
    nop                                           ; $4753: $00
    cpl                                           ; $4754: $2F
    db $10                                        ; $4755: $10
    dec a                                         ; $4756: $3D
    ld [de], a                                    ; $4757: $12
    ld a, a                                       ; $4758: $7F

jr_024_4759:
    jr nz, jr_024_46F4                            ; $4759: $20 $99

    ld h, [hl]                                    ; $475B: $66
    sbc c                                         ; $475C: $99
    ld h, [hl]                                    ; $475D: $66
    ld a, a                                       ; $475E: $7F
    nop                                           ; $475F: $00
    ld b, b                                       ; $4760: $40
    add b                                         ; $4761: $80
    or b                                          ; $4762: $B0
    nop                                           ; $4763: $00
    ld c, b                                       ; $4764: $48
    or b                                          ; $4765: $B0
    ret z                                         ; $4766: $C8

    ld [hl], b                                    ; $4767: $70
    ld [hl], b                                    ; $4768: $70
    nop                                           ; $4769: $00
    nop                                           ; $476A: $00
    nop                                           ; $476B: $00
    nop                                           ; $476C: $00
    nop                                           ; $476D: $00
    nop                                           ; $476E: $00
    nop                                           ; $476F: $00
    dec bc                                        ; $4770: $0B
    nop                                           ; $4771: $00
    ccf                                           ; $4772: $3F
    nop                                           ; $4773: $00
    ld a, a                                       ; $4774: $7F
    nop                                           ; $4775: $00
    rst $38                                       ; $4776: $FF
    nop                                           ; $4777: $00
    rst $38                                       ; $4778: $FF
    nop                                           ; $4779: $00
    cp $01                                        ; $477A: $FE $01
    ld h, l                                       ; $477C: $65
    dec de                                        ; $477D: $1B
    ld sp, $800F                                  ; $477E: $31 $0F $80
    nop                                           ; $4781: $00
    ret nz                                        ; $4782: $C0

    nop                                           ; $4783: $00
    ldh [rP1], a                                  ; $4784: $E0 $00
    ldh a, [rP1]                                  ; $4786: $F0 $00
    ldh [rP1], a                                  ; $4788: $E0 $00
    ret nz                                        ; $478A: $C0

    nop                                           ; $478B: $00
    ld b, b                                       ; $478C: $40
    add b                                         ; $478D: $80
    ld b, b                                       ; $478E: $40
    add b                                         ; $478F: $80
    nop                                           ; $4790: $00
    nop                                           ; $4791: $00
    nop                                           ; $4792: $00
    ld [$0400], sp                                ; $4793: $08 $00 $04
    nop                                           ; $4796: $00
    inc b                                         ; $4797: $04
    nop                                           ; $4798: $00
    ld [rRAMG], sp                                ; $4799: $08 $00 $00
    nop                                           ; $479C: $00
    nop                                           ; $479D: $00
    nop                                           ; $479E: $00
    nop                                           ; $479F: $00
    nop                                           ; $47A0: $00
    ld b, $00                                     ; $47A1: $06 $00
    rrca                                          ; $47A3: $0F
    nop                                           ; $47A4: $00
    rlca                                          ; $47A5: $07
    nop                                           ; $47A6: $00
    rlca                                          ; $47A7: $07
    nop                                           ; $47A8: $00
    rrca                                          ; $47A9: $0F
    nop                                           ; $47AA: $00
    ld b, $00                                     ; $47AB: $06 $00
    nop                                           ; $47AD: $00
    nop                                           ; $47AE: $00
    nop                                           ; $47AF: $00
    ld sp, $110E                                  ; $47B0: $31 $0E $11
    ld c, $21                                     ; $47B3: $0E $21
    ld e, $40                                     ; $47B5: $1E $40
    ccf                                           ; $47B7: $3F
    ld c, a                                       ; $47B8: $4F
    jr nc, jr_024_483A                            ; $47B9: $30 $7F

    dec c                                         ; $47BB: $0D
    rst $38                                       ; $47BC: $FF
    ld a, h                                       ; $47BD: $7C
    ld a, [hl]                                    ; $47BE: $7E
    nop                                           ; $47BF: $00
    nop                                           ; $47C0: $00
    nop                                           ; $47C1: $00
    nop                                           ; $47C2: $00
    nop                                           ; $47C3: $00
    nop                                           ; $47C4: $00
    nop                                           ; $47C5: $00

jr_024_47C6:
    ldh [rP1], a                                  ; $47C6: $E0 $00
    ldh a, [$E0]                                  ; $47C8: $F0 $E0
    ldh a, [$E0]                                  ; $47CA: $F0 $E0

jr_024_47CC:
    ldh [rP1], a                                  ; $47CC: $E0 $00

jr_024_47CE:
    nop                                           ; $47CE: $00
    nop                                           ; $47CF: $00
    dec b                                         ; $47D0: $05
    nop                                           ; $47D1: $00

jr_024_47D2:
    rrca                                          ; $47D2: $0F
    nop                                           ; $47D3: $00

jr_024_47D4:
    rra                                           ; $47D4: $1F
    nop                                           ; $47D5: $00

jr_024_47D6:
    rra                                           ; $47D6: $1F
    nop                                           ; $47D7: $00

jr_024_47D8:
    rra                                           ; $47D8: $1F
    nop                                           ; $47D9: $00
    rra                                           ; $47DA: $1F
    nop                                           ; $47DB: $00
    ld a, l                                       ; $47DC: $7D
    ld [bc], a                                    ; $47DD: $02
    sbc d                                         ; $47DE: $9A
    ld h, a                                       ; $47DF: $67
    nop                                           ; $47E0: $00
    nop                                           ; $47E1: $00
    ldh [rP1], a                                  ; $47E2: $E0 $00
    ldh a, [rP1]                                  ; $47E4: $F0 $00
    ld hl, sp+$00                                 ; $47E6: $F8 $00
    ld hl, sp+$00                                 ; $47E8: $F8 $00
    db $FC                                        ; $47EA: $FC
    nop                                           ; $47EB: $00
    ld [hl-], a                                   ; $47EC: $32
    call z, $EC52                                 ; $47ED: $CC $52 $EC
    sbc h                                         ; $47F0: $9C
    ld h, e                                       ; $47F1: $63
    ld a, a                                       ; $47F2: $7F
    db $10                                        ; $47F3: $10
    ld a, [de]                                    ; $47F4: $1A
    dec b                                         ; $47F5: $05
    rlca                                          ; $47F6: $07
    nop                                           ; $47F7: $00
    inc bc                                        ; $47F8: $03
    nop                                           ; $47F9: $00
    ld bc, $0100                                  ; $47FA: $01 $00 $01
    nop                                           ; $47FD: $00
    inc bc                                        ; $47FE: $03
    nop                                           ; $47FF: $00
    inc a                                         ; $4800: $3C
    ret z                                         ; $4801: $C8

    ld hl, sp+$10                                 ; $4802: $F8 $10
    jr nc, jr_024_47C6                            ; $4804: $30 $C0

    ldh a, [rP1]                                  ; $4806: $F0 $00
    ldh a, [rP1]                                  ; $4808: $F0 $00
    jr nz, jr_024_47CC                            ; $480A: $20 $C0

    jr nz, jr_024_47CE                            ; $480C: $20 $C0

    ldh [rP1], a                                  ; $480E: $E0 $00
    jr nz, jr_024_47D2                            ; $4810: $20 $C0

    jr nz, jr_024_47D4                            ; $4812: $20 $C0

    jr nz, jr_024_47D6                            ; $4814: $20 $C0

    jr nc, jr_024_47D8                            ; $4816: $30 $C0

    ld hl, sp+$30                                 ; $4818: $F8 $30
    db $FC                                        ; $481A: $FC
    ld a, b                                       ; $481B: $78
    db $FC                                        ; $481C: $FC
    jr c, @-$06                                   ; $481D: $38 $F8

    nop                                           ; $481F: $00
    nop                                           ; $4820: $00
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    nop                                           ; $4823: $00
    nop                                           ; $4824: $00
    nop                                           ; $4825: $00
    nop                                           ; $4826: $00
    nop                                           ; $4827: $00
    inc [hl]                                      ; $4828: $34
    nop                                           ; $4829: $00
    ld a, a                                       ; $482A: $7F
    nop                                           ; $482B: $00
    rst $38                                       ; $482C: $FF
    nop                                           ; $482D: $00
    rst $38                                       ; $482E: $FF
    nop                                           ; $482F: $00
    nop                                           ; $4830: $00
    nop                                           ; $4831: $00
    nop                                           ; $4832: $00
    nop                                           ; $4833: $00
    nop                                           ; $4834: $00

jr_024_4835:
    nop                                           ; $4835: $00
    nop                                           ; $4836: $00
    nop                                           ; $4837: $00
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00

jr_024_483A:
    nop                                           ; $483A: $00
    nop                                           ; $483B: $00
    add b                                         ; $483C: $80
    nop                                           ; $483D: $00
    ret nz                                        ; $483E: $C0

    nop                                           ; $483F: $00
    ld bc, $0000                                  ; $4840: $01 $00 $00
    nop                                           ; $4843: $00
    nop                                           ; $4844: $00
    nop                                           ; $4845: $00
    jr jr_024_4848                                ; $4846: $18 $00

jr_024_4848:
    daa                                           ; $4848: $27
    jr @+$29                                      ; $4849: $18 $27

    ld e, $1F                                     ; $484B: $1E $1F
    nop                                           ; $484D: $00
    ld hl, $FF00                                  ; $484E: $21 $00 $FF
    nop                                           ; $4851: $00
    ei                                            ; $4852: $FB
    inc b                                         ; $4853: $04
    pop de                                        ; $4854: $D1
    ld l, $6C                                     ; $4855: $2E $6C
    inc de                                        ; $4857: $13
    rst $38                                       ; $4858: $FF
    nop                                           ; $4859: $00
    rst $38                                       ; $485A: $FF
    nop                                           ; $485B: $00
    adc [hl]                                      ; $485C: $8E
    ld [hl], c                                    ; $485D: $71
    rst $30                                       ; $485E: $F7
    ld [$00C0], sp                                ; $485F: $08 $C0 $00
    add b                                         ; $4862: $80
    nop                                           ; $4863: $00
    ld b, b                                       ; $4864: $40
    add b                                         ; $4865: $80
    add b                                         ; $4866: $80
    nop                                           ; $4867: $00
    jr nc, jr_024_486A                            ; $4868: $30 $00

jr_024_486A:
    ret z                                         ; $486A: $C8

    jr nc, jr_024_4835                            ; $486B: $30 $C8

    ldh a, [$F0]                                  ; $486D: $F0 $F0

jr_024_486F:
    nop                                           ; $486F: $00
    ld [hl], e                                    ; $4870: $73
    jr nz, jr_024_486F                            ; $4871: $20 $FC

    ld [hl], e                                    ; $4873: $73
    ld sp, hl                                     ; $4874: $F9
    halt                                          ; $4875: $76
    rst $38                                       ; $4876: $FF
    ld [hl], b                                    ; $4877: $70
    ld a, c                                       ; $4878: $79
    jr nz, jr_024_489C                            ; $4879: $20 $21

    nop                                           ; $487B: $00
    nop                                           ; $487C: $00
    nop                                           ; $487D: $00
    nop                                           ; $487E: $00
    nop                                           ; $487F: $00
    ld c, h                                       ; $4880: $4C
    or b                                          ; $4881: $B0

jr_024_4882:
    add sp, $50                                   ; $4882: $E8 $50
    ld hl, sp-$20                                 ; $4884: $F8 $E0
    ldh a, [$E0]                                  ; $4886: $F0 $E0
    ldh a, [$E0]                                  ; $4888: $F0 $E0
    ldh [$C0], a                                  ; $488A: $E0 $C0
    ret nz                                        ; $488C: $C0

    nop                                           ; $488D: $00
    nop                                           ; $488E: $00
    nop                                           ; $488F: $00
    ld bc, $0F00                                  ; $4890: $01 $00 $0F
    nop                                           ; $4893: $00
    rra                                           ; $4894: $1F
    nop                                           ; $4895: $00
    ccf                                           ; $4896: $3F
    nop                                           ; $4897: $00
    ccf                                           ; $4898: $3F
    nop                                           ; $4899: $00
    dec e                                         ; $489A: $1D
    ld [bc], a                                    ; $489B: $02

jr_024_489C:
    ld a, [hl+]                                   ; $489C: $2A
    rla                                           ; $489D: $17
    ld [de], a                                    ; $489E: $12
    rrca                                          ; $489F: $0F
    ld h, b                                       ; $48A0: $60
    nop                                           ; $48A1: $00
    ldh a, [rP1]                                  ; $48A2: $F0 $00
    ld hl, sp+$00                                 ; $48A4: $F8 $00
    ldh a, [rP1]                                  ; $48A6: $F0 $00
    ld hl, sp+$00                                 ; $48A8: $F8 $00
    ldh a, [rP1]                                  ; $48AA: $F0 $00
    ld [hl], b                                    ; $48AC: $70
    ret nz                                        ; $48AD: $C0

    ld d, b                                       ; $48AE: $50
    ldh [$0C], a                                  ; $48AF: $E0 $0C
    inc bc                                        ; $48B1: $03
    rlca                                          ; $48B2: $07
    nop                                           ; $48B3: $00
    dec bc                                        ; $48B4: $0B
    inc b                                         ; $48B5: $04
    rrca                                          ; $48B6: $0F
    inc b                                         ; $48B7: $04
    rrca                                          ; $48B8: $0F
    inc b                                         ; $48B9: $04
    inc de                                        ; $48BA: $13
    inc c                                         ; $48BB: $0C
    inc de                                        ; $48BC: $13
    inc c                                         ; $48BD: $0C
    rrca                                          ; $48BE: $0F
    nop                                           ; $48BF: $00
    jr nz, jr_024_4882                            ; $48C0: $20 $C0

    ldh [rP1], a                                  ; $48C2: $E0 $00
    ret nz                                        ; $48C4: $C0

    nop                                           ; $48C5: $00
    ld h, b                                       ; $48C6: $60
    add b                                         ; $48C7: $80
    ldh [rP1], a                                  ; $48C8: $E0 $00
    ld d, b                                       ; $48CA: $50
    and b                                         ; $48CB: $A0

jr_024_48CC:
    ld h, b                                       ; $48CC: $60
    add b                                         ; $48CD: $80
    ret nz                                        ; $48CE: $C0

    nop                                           ; $48CF: $00
    inc c                                         ; $48D0: $0C
    inc bc                                        ; $48D1: $03
    inc b                                         ; $48D2: $04
    inc bc                                        ; $48D3: $03

jr_024_48D4:
    inc b                                         ; $48D4: $04
    inc bc                                        ; $48D5: $03

jr_024_48D6:
    inc b                                         ; $48D6: $04
    inc bc                                        ; $48D7: $03

jr_024_48D8:
    add hl, bc                                    ; $48D8: $09
    ld b, $0F                                     ; $48D9: $06 $0F
    ld bc, $0F1F                                  ; $48DB: $01 $1F $0F
    rrca                                          ; $48DE: $0F
    nop                                           ; $48DF: $00
    ld b, b                                       ; $48E0: $40
    add b                                         ; $48E1: $80

jr_024_48E2:
    ld b, b                                       ; $48E2: $40
    add b                                         ; $48E3: $80
    ld b, b                                       ; $48E4: $40
    add b                                         ; $48E5: $80
    ld [hl], b                                    ; $48E6: $70
    add b                                         ; $48E7: $80
    ld hl, sp+$30                                 ; $48E8: $F8 $30
    ld hl, sp-$50                                 ; $48EA: $F8 $B0
    ldh a, [$80]                                  ; $48EC: $F0 $80
    ret nz                                        ; $48EE: $C0

    nop                                           ; $48EF: $00
    dec b                                         ; $48F0: $05
    nop                                           ; $48F1: $00
    rrca                                          ; $48F2: $0F
    nop                                           ; $48F3: $00
    rra                                           ; $48F4: $1F
    nop                                           ; $48F5: $00
    rra                                           ; $48F6: $1F
    nop                                           ; $48F7: $00
    rra                                           ; $48F8: $1F
    nop                                           ; $48F9: $00
    dec e                                         ; $48FA: $1D
    ld [bc], a                                    ; $48FB: $02
    ld a, [hl+]                                   ; $48FC: $2A
    rla                                           ; $48FD: $17
    ld a, [de]                                    ; $48FE: $1A
    rlca                                          ; $48FF: $07
    nop                                           ; $4900: $00
    nop                                           ; $4901: $00
    ldh [rP1], a                                  ; $4902: $E0 $00
    ldh a, [rP1]                                  ; $4904: $F0 $00
    ld hl, sp+$00                                 ; $4906: $F8 $00
    ld hl, sp+$00                                 ; $4908: $F8 $00
    jr c, jr_024_48CC                             ; $490A: $38 $C0

    ld d, h                                       ; $490C: $54
    add sp, $58                                   ; $490D: $E8 $58
    ldh [$30], a                                  ; $490F: $E0 $30
    ret nz                                        ; $4911: $C0

    jr nz, jr_024_48D4                            ; $4912: $20 $C0

    jr nz, jr_024_48D6                            ; $4914: $20 $C0

    jr nc, jr_024_48D8                            ; $4916: $30 $C0

    ld hl, sp+$30                                 ; $4918: $F8 $30
    db $FC                                        ; $491A: $FC
    ld a, b                                       ; $491B: $78
    db $FC                                        ; $491C: $FC
    jr c, @-$06                                   ; $491D: $38 $F8

    nop                                           ; $491F: $00
    jr nz, jr_024_48E2                            ; $4920: $20 $C0

    ldh [rP1], a                                  ; $4922: $E0 $00
    ld d, b                                       ; $4924: $50
    and b                                         ; $4925: $A0
    ret nc                                        ; $4926: $D0

    jr nz, @-$0E                                  ; $4927: $20 $F0

    jr nz, jr_024_499B                            ; $4929: $20 $70

    and b                                         ; $492B: $A0
    ld c, b                                       ; $492C: $48
    or b                                          ; $492D: $B0
    ret z                                         ; $492E: $C8

jr_024_492F:
    jr nc, jr_024_4965                            ; $492F: $30 $34

    rrca                                          ; $4931: $0F
    ld [$0F07], sp                                ; $4932: $08 $07 $0F
    nop                                           ; $4935: $00
    rla                                           ; $4936: $17
    ld [$081F], sp                                ; $4937: $08 $1F $08
    ld c, $05                                     ; $493A: $0E $05
    ld [de], a                                    ; $493C: $12
    dec c                                         ; $493D: $0D
    inc de                                        ; $493E: $13
    inc c                                         ; $493F: $0C
    or b                                          ; $4940: $B0
    ret nz                                        ; $4941: $C0

    ld h, b                                       ; $4942: $60
    add b                                         ; $4943: $80
    ret nc                                        ; $4944: $D0

    jr nz, jr_024_492F                            ; $4945: $20 $E8

    db $10                                        ; $4947: $10
    ld hl, sp+$10                                 ; $4948: $F8 $10
    ld [hl], b                                    ; $494A: $70
    and b                                         ; $494B: $A0
    ld c, b                                       ; $494C: $48
    or b                                          ; $494D: $B0
    ret z                                         ; $494E: $C8

jr_024_494F:
    jr nc, jr_024_496B                            ; $494F: $30 $1A

    rlca                                          ; $4951: $07
    inc c                                         ; $4952: $0C
    inc bc                                        ; $4953: $03
    dec bc                                        ; $4954: $0B
    inc b                                         ; $4955: $04
    rla                                           ; $4956: $17
    ld [$081F], sp                                ; $4957: $08 $1F $08
    ld c, $05                                     ; $495A: $0E $05
    ld [de], a                                    ; $495C: $12
    dec c                                         ; $495D: $0D
    inc de                                        ; $495E: $13
    inc c                                         ; $495F: $0C
    ld e, b                                       ; $4960: $58
    ldh [$30], a                                  ; $4961: $E0 $30
    ret nz                                        ; $4963: $C0

    ret nc                                        ; $4964: $D0

jr_024_4965:
    jr nz, jr_024_494F                            ; $4965: $20 $E8

    db $10                                        ; $4967: $10
    ld hl, sp+$10                                 ; $4968: $F8 $10
    ld [hl], b                                    ; $496A: $70

jr_024_496B:
    and b                                         ; $496B: $A0
    ld c, b                                       ; $496C: $48
    or b                                          ; $496D: $B0
    ret z                                         ; $496E: $C8

    jr nc, jr_024_497E                            ; $496F: $30 $0D

    inc bc                                        ; $4971: $03
    ld b, $01                                     ; $4972: $06 $01
    dec bc                                        ; $4974: $0B
    inc b                                         ; $4975: $04
    rla                                           ; $4976: $17
    ld [$081F], sp                                ; $4977: $08 $1F $08
    ld c, $05                                     ; $497A: $0E $05
    ld [de], a                                    ; $497C: $12
    dec c                                         ; $497D: $0D

jr_024_497E:
    inc de                                        ; $497E: $13
    inc c                                         ; $497F: $0C
    inc l                                         ; $4980: $2C
    ldh a, [rNR10]                                ; $4981: $F0 $10
    ldh [$F0], a                                  ; $4983: $E0 $F0
    nop                                           ; $4985: $00
    add sp, $10                                   ; $4986: $E8 $10
    ld hl, sp+$10                                 ; $4988: $F8 $10
    ld [hl], b                                    ; $498A: $70
    and b                                         ; $498B: $A0
    ld c, b                                       ; $498C: $48
    or b                                          ; $498D: $B0

jr_024_498E:
    ret z                                         ; $498E: $C8

    jr nc, jr_024_49AD                            ; $498F: $30 $1C

    inc bc                                        ; $4991: $03
    ccf                                           ; $4992: $3F
    db $10                                        ; $4993: $10
    ld a, a                                       ; $4994: $7F
    jr c, jr_024_4A16                             ; $4995: $38 $7F

    jr nc, jr_024_4A18                            ; $4997: $30 $7F

    nop                                           ; $4999: $00
    ld a, a                                       ; $499A: $7F

jr_024_499B:
    jr nz, jr_024_49C4                            ; $499B: $20 $27

    jr jr_024_49C6                                ; $499D: $18 $27

    dec de                                        ; $499F: $1B
    jr nz, @-$3E                                  ; $49A0: $20 $C0

    ldh a, [rNR41]                                ; $49A2: $F0 $20
    db $FC                                        ; $49A4: $FC
    nop                                           ; $49A5: $00
    ld a, [c]                                     ; $49A6: $F2
    inc l                                         ; $49A7: $2C
    ld a, [c]                                     ; $49A8: $F2
    inc c                                         ; $49A9: $0C
    call c, $C000                                 ; $49AA: $DC $00 $C0

jr_024_49AD:
    nop                                           ; $49AD: $00
    ret nz                                        ; $49AE: $C0

    add b                                         ; $49AF: $80
    ld [bc], a                                    ; $49B0: $02
    nop                                           ; $49B1: $00
    rrca                                          ; $49B2: $0F
    nop                                           ; $49B3: $00
    rra                                           ; $49B4: $1F
    nop                                           ; $49B5: $00
    ccf                                           ; $49B6: $3F
    nop                                           ; $49B7: $00
    ld a, a                                       ; $49B8: $7F
    nop                                           ; $49B9: $00
    ccf                                           ; $49BA: $3F
    nop                                           ; $49BB: $00
    ld e, $01                                     ; $49BC: $1E $01
    ld a, [bc]                                    ; $49BE: $0A
    dec b                                         ; $49BF: $05
    ldh [rP1], a                                  ; $49C0: $E0 $00
    ld hl, sp+$00                                 ; $49C2: $F8 $00

jr_024_49C4:
    ldh a, [rP1]                                  ; $49C4: $F0 $00

jr_024_49C6:
    ld hl, sp+$00                                 ; $49C6: $F8 $00
    ld hl, sp+$00                                 ; $49C8: $F8 $00
    ldh a, [rP1]                                  ; $49CA: $F0 $00
    jr nz, jr_024_498E                            ; $49CC: $20 $C0

    and b                                         ; $49CE: $A0

jr_024_49CF:
    ret nz                                        ; $49CF: $C0

    nop                                           ; $49D0: $00
    nop                                           ; $49D1: $00
    nop                                           ; $49D2: $00
    nop                                           ; $49D3: $00
    nop                                           ; $49D4: $00
    ld [bc], a                                    ; $49D5: $02
    nop                                           ; $49D6: $00
    ld bc, $0100                                  ; $49D7: $01 $00 $01
    nop                                           ; $49DA: $00
    ld [bc], a                                    ; $49DB: $02
    nop                                           ; $49DC: $00
    nop                                           ; $49DD: $00
    nop                                           ; $49DE: $00
    nop                                           ; $49DF: $00
    nop                                           ; $49E0: $00
    nop                                           ; $49E1: $00
    nop                                           ; $49E2: $00
    nop                                           ; $49E3: $00
    nop                                           ; $49E4: $00
    ld h, b                                       ; $49E5: $60
    nop                                           ; $49E6: $00
    ldh a, [rP1]                                  ; $49E7: $F0 $00
    ld a, b                                       ; $49E9: $78
    nop                                           ; $49EA: $00
    ld a, b                                       ; $49EB: $78
    nop                                           ; $49EC: $00
    ldh a, [rP1]                                  ; $49ED: $F0 $00
    ld h, b                                       ; $49EF: $60
    rra                                           ; $49F0: $1F
    nop                                           ; $49F1: $00
    rra                                           ; $49F2: $1F
    rrca                                          ; $49F3: $0F
    ccf                                           ; $49F4: $3F
    ld e, $7F                                     ; $49F5: $1E $7F
    dec a                                         ; $49F7: $3D
    rst $38                                       ; $49F8: $FF
    ld b, e                                       ; $49F9: $43
    rst $20                                       ; $49FA: $E7
    jr @-$77                                      ; $49FB: $18 $87

    ld a, b                                       ; $49FD: $78
    ld a, h                                       ; $49FE: $7C
    nop                                           ; $49FF: $00
    ret nz                                        ; $4A00: $C0

    nop                                           ; $4A01: $00
    ret nz                                        ; $4A02: $C0

    add b                                         ; $4A03: $80
    ldh [$C0], a                                  ; $4A04: $E0 $C0
    ldh a, [$C0]                                  ; $4A06: $F0 $C0
    ret z                                         ; $4A08: $C8

    jr nc, jr_024_4A13                            ; $4A09: $30 $08

    ldh a, [$F0]                                  ; $4A0B: $F0 $F0
    nop                                           ; $4A0D: $00
    nop                                           ; $4A0E: $00
    nop                                           ; $4A0F: $00

jr_024_4A10:
    ld b, $00                                     ; $4A10: $06 $00
    rrca                                          ; $4A12: $0F

jr_024_4A13:
    nop                                           ; $4A13: $00
    rra                                           ; $4A14: $1F
    nop                                           ; $4A15: $00

jr_024_4A16:
    ccf                                           ; $4A16: $3F
    nop                                           ; $4A17: $00

jr_024_4A18:
    ccf                                           ; $4A18: $3F
    nop                                           ; $4A19: $00
    rra                                           ; $4A1A: $1F
    nop                                           ; $4A1B: $00
    inc e                                         ; $4A1C: $1C
    inc bc                                        ; $4A1D: $03
    ld l, d                                       ; $4A1E: $6A
    rla                                           ; $4A1F: $17
    add b                                         ; $4A20: $80
    nop                                           ; $4A21: $00
    ldh [rP1], a                                  ; $4A22: $E0 $00
    ldh a, [rP1]                                  ; $4A24: $F0 $00
    ld hl, sp+$00                                 ; $4A26: $F8 $00
    ld hl, sp+$00                                 ; $4A28: $F8 $00
    ld hl, sp+$00                                 ; $4A2A: $F8 $00
    cp b                                          ; $4A2C: $B8
    ld b, b                                       ; $4A2D: $40
    ld d, [hl]                                    ; $4A2E: $56
    add sp, $39                                   ; $4A2F: $E8 $39
    add $79                                       ; $4A31: $C6 $79
    or [hl]                                       ; $4A33: $B6
    cp $68                                        ; $4A34: $FE $68
    ld hl, sp+$10                                 ; $4A36: $F8 $10
    ldh a, [rP1]                                  ; $4A38: $F0 $00
    ldh a, [rP1]                                  ; $4A3A: $F0 $00
    ldh a, [rP1]                                  ; $4A3C: $F0 $00
    ldh a, [$E0]                                  ; $4A3E: $F0 $E0
    ldh a, [rP1]                                  ; $4A40: $F0 $00
    ldh a, [$E0]                                  ; $4A42: $F0 $E0
    ld hl, sp+$70                                 ; $4A44: $F8 $70
    ld hl, sp+$40                                 ; $4A46: $F8 $40
    ret z                                         ; $4A48: $C8

    jr nc, jr_024_49CF                            ; $4A49: $30 $84

    ld a, b                                       ; $4A4B: $78
    call nz, $F838                                ; $4A4C: $C4 $38 $F8
    nop                                           ; $4A4F: $00
    nop                                           ; $4A50: $00
    nop                                           ; $4A51: $00
    nop                                           ; $4A52: $00
    nop                                           ; $4A53: $00
    nop                                           ; $4A54: $00
    nop                                           ; $4A55: $00
    nop                                           ; $4A56: $00
    nop                                           ; $4A57: $00
    nop                                           ; $4A58: $00
    nop                                           ; $4A59: $00
    nop                                           ; $4A5A: $00
    nop                                           ; $4A5B: $00
    ld bc, $0300                                  ; $4A5C: $01 $00 $03
    nop                                           ; $4A5F: $00
    nop                                           ; $4A60: $00
    nop                                           ; $4A61: $00
    nop                                           ; $4A62: $00
    nop                                           ; $4A63: $00
    nop                                           ; $4A64: $00
    nop                                           ; $4A65: $00
    nop                                           ; $4A66: $00
    nop                                           ; $4A67: $00
    inc l                                         ; $4A68: $2C
    nop                                           ; $4A69: $00
    cp $00                                        ; $4A6A: $FE $00
    rst $38                                       ; $4A6C: $FF
    nop                                           ; $4A6D: $00
    rst $38                                       ; $4A6E: $FF
    nop                                           ; $4A6F: $00
    inc bc                                        ; $4A70: $03
    nop                                           ; $4A71: $00
    ld bc, $0200                                  ; $4A72: $01 $00 $02
    ld bc, $0001                                  ; $4A75: $01 $01 $00
    rrca                                          ; $4A78: $0F
    ld bc, $0C13                                  ; $4A79: $01 $13 $0C
    inc de                                        ; $4A7C: $13
    rrca                                          ; $4A7D: $0F
    rrca                                          ; $4A7E: $0F

jr_024_4A7F:
    nop                                           ; $4A7F: $00
    rst $38                                       ; $4A80: $FF
    nop                                           ; $4A81: $00
    rst $18                                       ; $4A82: $DF
    jr nz, jr_024_4A10                            ; $4A83: $20 $8B

    ld [hl], h                                    ; $4A85: $74
    or a                                          ; $4A86: $B7
    ld c, b                                       ; $4A87: $48
    rst $38                                       ; $4A88: $FF
    add c                                         ; $4A89: $81
    rst $38                                       ; $4A8A: $FF
    ld b, b                                       ; $4A8B: $40
    ld a, a                                       ; $4A8C: $7F
    add b                                         ; $4A8D: $80
    rst $38                                       ; $4A8E: $FF
    nop                                           ; $4A8F: $00
    add b                                         ; $4A90: $80
    nop                                           ; $4A91: $00
    nop                                           ; $4A92: $00
    nop                                           ; $4A93: $00
    nop                                           ; $4A94: $00
    nop                                           ; $4A95: $00
    jr jr_024_4A98                                ; $4A96: $18 $00

jr_024_4A98:
    db $E4                                        ; $4A98: $E4
    jr jr_024_4A7F                                ; $4A99: $18 $E4

    ld a, b                                       ; $4A9B: $78
    ld hl, sp+$00                                 ; $4A9C: $F8 $00

jr_024_4A9E:
    add h                                         ; $4A9E: $84
    nop                                           ; $4A9F: $00
    ld a, a                                       ; $4AA0: $7F
    dec c                                         ; $4AA1: $0D
    dec a                                         ; $4AA2: $3D
    ld a, [bc]                                    ; $4AA3: $0A
    jr jr_024_4AAD                                ; $4AA4: $18 $07

    jr jr_024_4AAF                                ; $4AA6: $18 $07

    ld [$0407], sp                                ; $4AA8: $08 $07 $04
    inc bc                                        ; $4AAB: $03
    inc bc                                        ; $4AAC: $03

jr_024_4AAD:
    nop                                           ; $4AAD: $00
    nop                                           ; $4AAE: $00

jr_024_4AAF:
    nop                                           ; $4AAF: $00
    jp z, $F104                                   ; $4AB0: $CA $04 $F1

    adc $F1                                       ; $4AB3: $CE $F1
    ld l, [hl]                                    ; $4AB5: $6E
    pop af                                        ; $4AB6: $F1
    ld c, $BA                                     ; $4AB7: $0E $BA
    inc b                                         ; $4AB9: $04
    add h                                         ; $4ABA: $84
    nop                                           ; $4ABB: $00
    nop                                           ; $4ABC: $00
    nop                                           ; $4ABD: $00
    nop                                           ; $4ABE: $00
    nop                                           ; $4ABF: $00

jr_024_4AC0:
    nop                                           ; $4AC0: $00
    nop                                           ; $4AC1: $00
    rlca                                          ; $4AC2: $07
    nop                                           ; $4AC3: $00
    rrca                                          ; $4AC4: $0F
    nop                                           ; $4AC5: $00
    rra                                           ; $4AC6: $1F
    nop                                           ; $4AC7: $00
    rra                                           ; $4AC8: $1F
    nop                                           ; $4AC9: $00
    rra                                           ; $4ACA: $1F
    nop                                           ; $4ACB: $00
    rla                                           ; $4ACC: $17
    ld [$0709], sp                                ; $4ACD: $08 $09 $07
    xor b                                         ; $4AD0: $A8
    nop                                           ; $4AD1: $00
    db $FC                                        ; $4AD2: $FC
    nop                                           ; $4AD3: $00
    cp $00                                        ; $4AD4: $FE $00
    cp $00                                        ; $4AD6: $FE $00
    db $FC                                        ; $4AD8: $FC
    nop                                           ; $4AD9: $00
    ld hl, sp+$00                                 ; $4ADA: $F8 $00
    jr nc, jr_024_4A9E                            ; $4ADC: $30 $C0

    jr nc, jr_024_4AC0                            ; $4ADE: $30 $E0

    inc c                                         ; $4AE0: $0C
    inc bc                                        ; $4AE1: $03
    ld e, $0D                                     ; $4AE2: $1E $0D
    ccf                                           ; $4AE4: $3F
    inc e                                         ; $4AE5: $1C
    ccf                                           ; $4AE6: $3F
    jr jr_024_4B28                                ; $4AE7: $18 $3F

    nop                                           ; $4AE9: $00
    ccf                                           ; $4AEA: $3F
    db $10                                        ; $4AEB: $10
    inc de                                        ; $4AEC: $13
    inc c                                         ; $4AED: $0C
    inc de                                        ; $4AEE: $13
    dec c                                         ; $4AEF: $0D
    db $10                                        ; $4AF0: $10
    ldh [$38], a                                  ; $4AF1: $E0 $38

jr_024_4AF3:
    ret nc                                        ; $4AF3: $D0

    db $FC                                        ; $4AF4: $FC
    jr jr_024_4AF3                                ; $4AF5: $18 $FC

    ld [$00F8], sp                                ; $4AF7: $08 $F8 $00
    ld hl, sp+$00                                 ; $4AFA: $F8 $00
    add sp, $10                                   ; $4AFC: $E8 $10
    ldh a, [$C0]                                  ; $4AFE: $F0 $C0
    rrca                                          ; $4B00: $0F
    nop                                           ; $4B01: $00
    rrca                                          ; $4B02: $0F
    rlca                                          ; $4B03: $07
    rra                                           ; $4B04: $1F
    rrca                                          ; $4B05: $0F
    rra                                           ; $4B06: $1F
    ld c, $3F                                     ; $4B07: $0E $3F
    db $10                                        ; $4B09: $10
    add hl, sp                                    ; $4B0A: $39
    ld b, $21                                     ; $4B0B: $06 $21
    ld e, $1F                                     ; $4B0D: $1E $1F
    nop                                           ; $4B0F: $00
    ldh [rP1], a                                  ; $4B10: $E0 $00
    ldh [$C0], a                                  ; $4B12: $E0 $C0
    ldh [rLCDC], a                                ; $4B14: $E0 $40
    ldh a, [$C0]                                  ; $4B16: $F0 $C0
    ret z                                         ; $4B18: $C8

    jr nc, jr_024_4B23                            ; $4B19: $30 $08

    ldh a, [$F0]                                  ; $4B1B: $F0 $F0
    nop                                           ; $4B1D: $00
    nop                                           ; $4B1E: $00
    nop                                           ; $4B1F: $00
    dec b                                         ; $4B20: $05
    nop                                           ; $4B21: $00
    rrca                                          ; $4B22: $0F

jr_024_4B23:
    nop                                           ; $4B23: $00
    rra                                           ; $4B24: $1F
    nop                                           ; $4B25: $00
    ccf                                           ; $4B26: $3F
    nop                                           ; $4B27: $00

jr_024_4B28:
    ccf                                           ; $4B28: $3F
    nop                                           ; $4B29: $00
    rra                                           ; $4B2A: $1F
    nop                                           ; $4B2B: $00
    ld a, [de]                                    ; $4B2C: $1A
    dec b                                         ; $4B2D: $05
    ld a, [hl+]                                   ; $4B2E: $2A
    rla                                           ; $4B2F: $17
    nop                                           ; $4B30: $00
    nop                                           ; $4B31: $00
    ldh [rP1], a                                  ; $4B32: $E0 $00
    ldh a, [rP1]                                  ; $4B34: $F0 $00
    ld hl, sp+$00                                 ; $4B36: $F8 $00
    ld hl, sp+$00                                 ; $4B38: $F8 $00
    ld hl, sp+$00                                 ; $4B3A: $F8 $00
    ld hl, sp+$00                                 ; $4B3C: $F8 $00
    ld d, h                                       ; $4B3E: $54
    add sp, $18                                   ; $4B3F: $E8 $18

jr_024_4B41:
    ldh [$30], a                                  ; $4B41: $E0 $30
    ret nz                                        ; $4B43: $C0

    ld hl, sp+$30                                 ; $4B44: $F8 $30
    db $FC                                        ; $4B46: $FC
    jr c, jr_024_4B41                             ; $4B47: $38 $F8

    nop                                           ; $4B49: $00
    ld hl, sp+$10                                 ; $4B4A: $F8 $10
    ret z                                         ; $4B4C: $C8

    jr nc, @-$36                                  ; $4B4D: $30 $C8

    or b                                          ; $4B4F: $B0
    dec b                                         ; $4B50: $05
    nop                                           ; $4B51: $00
    rrca                                          ; $4B52: $0F
    nop                                           ; $4B53: $00
    rra                                           ; $4B54: $1F
    nop                                           ; $4B55: $00
    ccf                                           ; $4B56: $3F
    nop                                           ; $4B57: $00
    ccf                                           ; $4B58: $3F
    nop                                           ; $4B59: $00
    rra                                           ; $4B5A: $1F
    nop                                           ; $4B5B: $00
    rra                                           ; $4B5C: $1F
    nop                                           ; $4B5D: $00
    ld a, [hl+]                                   ; $4B5E: $2A
    dec d                                         ; $4B5F: $15
    nop                                           ; $4B60: $00
    nop                                           ; $4B61: $00
    ldh [rP1], a                                  ; $4B62: $E0 $00
    ldh a, [rP1]                                  ; $4B64: $F0 $00
    ld hl, sp+$00                                 ; $4B66: $F8 $00
    ld hl, sp+$00                                 ; $4B68: $F8 $00
    ld hl, sp+$00                                 ; $4B6A: $F8 $00
    ld hl, sp+$00                                 ; $4B6C: $F8 $00
    db $E4                                        ; $4B6E: $E4
    jr jr_024_4BD5                                ; $4B6F: $18 $64

    ret c                                         ; $4B71: $D8

    inc a                                         ; $4B72: $3C

jr_024_4B73:
    ret z                                         ; $4B73: $C8

    db $FC                                        ; $4B74: $FC

jr_024_4B75:
    jr z, jr_024_4B73                             ; $4B75: $28 $FC

    jr z, jr_024_4B75                             ; $4B77: $28 $FC

    nop                                           ; $4B79: $00
    ld hl, sp+$00                                 ; $4B7A: $F8 $00
    ldh a, [rP1]                                  ; $4B7C: $F0 $00
    ldh a, [$E0]                                  ; $4B7E: $F0 $E0
    nop                                           ; $4B80: $00
    nop                                           ; $4B81: $00
    ldh [rP1], a                                  ; $4B82: $E0 $00
    ldh a, [rP1]                                  ; $4B84: $F0 $00
    ld hl, sp+$00                                 ; $4B86: $F8 $00
    ld hl, sp+$00                                 ; $4B88: $F8 $00
    ld hl, sp+$00                                 ; $4B8A: $F8 $00
    db $E4                                        ; $4B8C: $E4
    jr jr_024_4B73                                ; $4B8D: $18 $E4

    jr jr_024_4BED                                ; $4B8F: $18 $5C

    add sp, $3C                                   ; $4B91: $E8 $3C

jr_024_4B93:
    ret z                                         ; $4B93: $C8

    db $FC                                        ; $4B94: $FC

jr_024_4B95:
    jr z, jr_024_4B93                             ; $4B95: $28 $FC

    jr z, jr_024_4B95                             ; $4B97: $28 $FC

    nop                                           ; $4B99: $00
    ld hl, sp+$00                                 ; $4B9A: $F8 $00
    ldh a, [rP1]                                  ; $4B9C: $F0 $00
    ldh a, [$E0]                                  ; $4B9E: $F0 $E0
    nop                                           ; $4BA0: $00
    nop                                           ; $4BA1: $00
    ldh [rP1], a                                  ; $4BA2: $E0 $00
    ldh a, [rP1]                                  ; $4BA4: $F0 $00
    ld hl, sp+$00                                 ; $4BA6: $F8 $00
    db $FC                                        ; $4BA8: $FC
    nop                                           ; $4BA9: $00
    ld a, [c]                                     ; $4BAA: $F2
    inc c                                         ; $4BAB: $0C
    ld a, [c]                                     ; $4BAC: $F2
    inc c                                         ; $4BAD: $0C
    cp $04                                        ; $4BAE: $FE $04
    ld e, [hl]                                    ; $4BB0: $5E

jr_024_4BB1:
    db $E4                                        ; $4BB1: $E4
    ld a, $C4                                     ; $4BB2: $3E $C4
    db $FC                                        ; $4BB4: $FC
    jr z, @-$02                                   ; $4BB5: $28 $FC

    jr nz, jr_024_4BB1                            ; $4BB7: $20 $F8

    nop                                           ; $4BB9: $00
    ld hl, sp+$00                                 ; $4BBA: $F8 $00
    ldh a, [rP1]                                  ; $4BBC: $F0 $00
    ldh a, [$E0]                                  ; $4BBE: $F0 $E0
    ld a, [de]                                    ; $4BC0: $1A
    rlca                                          ; $4BC1: $07
    inc c                                         ; $4BC2: $0C
    inc bc                                        ; $4BC3: $03
    rra                                           ; $4BC4: $1F
    inc c                                         ; $4BC5: $0C

jr_024_4BC6:
    ccf                                           ; $4BC6: $3F
    inc e                                         ; $4BC7: $1C

jr_024_4BC8:
    rra                                           ; $4BC8: $1F
    nop                                           ; $4BC9: $00
    rra                                           ; $4BCA: $1F
    ld [$0C13], sp                                ; $4BCB: $08 $13 $0C
    inc de                                        ; $4BCE: $13
    dec c                                         ; $4BCF: $0D
    rrca                                          ; $4BD0: $0F
    nop                                           ; $4BD1: $00
    rra                                           ; $4BD2: $1F
    rrca                                          ; $4BD3: $0F
    ccf                                           ; $4BD4: $3F

jr_024_4BD5:
    rra                                           ; $4BD5: $1F
    ccf                                           ; $4BD6: $3F
    rra                                           ; $4BD7: $1F
    ccf                                           ; $4BD8: $3F
    dec e                                         ; $4BD9: $1D
    ccf                                           ; $4BDA: $3F
    inc e                                         ; $4BDB: $1C
    ld e, $0D                                     ; $4BDC: $1E $0D
    ld a, a                                       ; $4BDE: $7F
    ld b, $C0                                     ; $4BDF: $06 $C0
    nop                                           ; $4BE1: $00
    ldh [$C0], a                                  ; $4BE2: $E0 $C0
    jr nc, jr_024_4BC6                            ; $4BE4: $30 $E0

    jr nc, jr_024_4BC8                            ; $4BE6: $30 $E0

    ldh a, [$E0]                                  ; $4BE8: $F0 $E0
    ldh a, [$C0]                                  ; $4BEA: $F0 $C0
    ret nc                                        ; $4BEC: $D0

jr_024_4BED:
    jr nz, @-$02                                  ; $4BED: $20 $FC

    nop                                           ; $4BEF: $00
    rst $38                                       ; $4BF0: $FF
    ld [hl], e                                    ; $4BF1: $73
    rst $38                                       ; $4BF2: $FF
    jr c, @+$01                                   ; $4BF3: $38 $FF

    dec e                                         ; $4BF5: $1D
    rst $18                                       ; $4BF6: $DF
    jr nz, jr_024_4BD5                            ; $4BF7: $20 $DC

    inc hl                                        ; $4BF9: $23
    xor $59                                       ; $4BFA: $EE $59
    rst $38                                       ; $4BFC: $FF
    ld e, h                                       ; $4BFD: $5C
    rst $38                                       ; $4BFE: $FF
    ld l, l                                       ; $4BFF: $6D
    cp $2C                                        ; $4C00: $FE $2C
    cp $18                                        ; $4C02: $FE $18
    rst $38                                       ; $4C04: $FF
    or [hl]                                       ; $4C05: $B6
    rst $38                                       ; $4C06: $FF
    ld c, $46                                     ; $4C07: $0E $46
    cp h                                          ; $4C09: $BC
    ld a, h                                       ; $4C0A: $7C
    add b                                         ; $4C0B: $80
    ld hl, sp+$10                                 ; $4C0C: $F8 $10
    ld hl, sp-$70                                 ; $4C0E: $F8 $90
    rst $38                                       ; $4C10: $FF
    ld [hl], b                                    ; $4C11: $70
    rst $38                                       ; $4C12: $FF
    ld [hl], a                                    ; $4C13: $77
    rst $38                                       ; $4C14: $FF
    ld l, a                                       ; $4C15: $6F
    ld a, a                                       ; $4C16: $7F
    cpl                                           ; $4C17: $2F
    ccf                                           ; $4C18: $3F
    db $10                                        ; $4C19: $10
    ccf                                           ; $4C1A: $3F
    ld b, $3F                                     ; $4C1B: $06 $3F
    ld e, $1F                                     ; $4C1D: $1E $1F
    nop                                           ; $4C1F: $00
    ld hl, sp+$10                                 ; $4C20: $F8 $10
    ld hl, sp-$30                                 ; $4C22: $F8 $D0
    ld hl, sp-$20                                 ; $4C24: $F8 $E0
    ldh a, [$C0]                                  ; $4C26: $F0 $C0
    ld hl, sp+$30                                 ; $4C28: $F8 $30
    ld hl, sp-$10                                 ; $4C2A: $F8 $F0
    ldh a, [rP1]                                  ; $4C2C: $F0 $00
    nop                                           ; $4C2E: $00
    nop                                           ; $4C2F: $00
    nop                                           ; $4C30: $00
    nop                                           ; $4C31: $00
    nop                                           ; $4C32: $00
    nop                                           ; $4C33: $00
    nop                                           ; $4C34: $00
    ldh [rP1], a                                  ; $4C35: $E0 $00
    ld [hl], b                                    ; $4C37: $70
    nop                                           ; $4C38: $00
    ld [hl], b                                    ; $4C39: $70
    nop                                           ; $4C3A: $00
    jr nc, jr_024_4C3D                            ; $4C3B: $30 $00

jr_024_4C3D:
    jr nz, jr_024_4C3F                            ; $4C3D: $20 $00

jr_024_4C3F:
    nop                                           ; $4C3F: $00
    nop                                           ; $4C40: $00
    nop                                           ; $4C41: $00
    nop                                           ; $4C42: $00
    nop                                           ; $4C43: $00
    nop                                           ; $4C44: $00
    nop                                           ; $4C45: $00
    nop                                           ; $4C46: $00
    add b                                         ; $4C47: $80
    nop                                           ; $4C48: $00
    ld b, b                                       ; $4C49: $40
    nop                                           ; $4C4A: $00
    ld b, b                                       ; $4C4B: $40
    nop                                           ; $4C4C: $00
    nop                                           ; $4C4D: $00
    nop                                           ; $4C4E: $00
    nop                                           ; $4C4F: $00
    ld a, a                                       ; $4C50: $7F
    inc [hl]                                      ; $4C51: $34
    ld a, a                                       ; $4C52: $7F
    ld a, [de]                                    ; $4C53: $1A
    ld a, a                                       ; $4C54: $7F
    nop                                           ; $4C55: $00
    di                                            ; $4C56: $F3
    inc l                                         ; $4C57: $2C
    rst $30                                       ; $4C58: $F7
    ld l, e                                       ; $4C59: $6B
    rst $38                                       ; $4C5A: $FF
    ld [hl], e                                    ; $4C5B: $73
    rst $38                                       ; $4C5C: $FF
    ld [hl], h                                    ; $4C5D: $74
    rst $38                                       ; $4C5E: $FF
    ld [hl], a                                    ; $4C5F: $77
    cp $2C                                        ; $4C60: $FE $2C
    cp $58                                        ; $4C62: $FE $58
    cp $00                                        ; $4C64: $FE $00
    rst $08                                       ; $4C66: $CF
    inc [hl]                                      ; $4C67: $34
    adc a                                         ; $4C68: $8F
    or $FF                                        ; $4C69: $F6 $FF
    ld c, $FF                                     ; $4C6B: $0E $FF
    ld c, $FF                                     ; $4C6D: $0E $FF
    xor $07                                       ; $4C6F: $EE $07
    nop                                           ; $4C71: $00
    rrca                                          ; $4C72: $0F
    rlca                                          ; $4C73: $07
    ld e, $0F                                     ; $4C74: $1E $0F
    ld e, $0F                                     ; $4C76: $1E $0F
    rra                                           ; $4C78: $1F
    dec bc                                        ; $4C79: $0B
    rra                                           ; $4C7A: $1F
    add hl, bc                                    ; $4C7B: $09
    ld a, l                                       ; $4C7C: $7D
    ld a, [bc]                                    ; $4C7D: $0A
    rst $38                                       ; $4C7E: $FF
    ld l, b                                       ; $4C7F: $68
    rst $38                                       ; $4C80: $FF
    ld h, h                                       ; $4C81: $64
    rst $38                                       ; $4C82: $FF
    ld e, d                                       ; $4C83: $5A
    cp a                                          ; $4C84: $BF
    ld b, h                                       ; $4C85: $44
    rst $00                                       ; $4C86: $C7
    dec sp                                        ; $4C87: $3B
    ei                                            ; $4C88: $FB
    ld b, h                                       ; $4C89: $44
    ld hl, sp+$77                                 ; $4C8A: $F8 $77
    rst $38                                       ; $4C8C: $FF
    ld [hl], b                                    ; $4C8D: $70
    rst $38                                       ; $4C8E: $FF
    ld [hl], a                                    ; $4C8F: $77
    rst $38                                       ; $4C90: $FF
    ld [hl], b                                    ; $4C91: $70
    rst $38                                       ; $4C92: $FF
    ld [hl], a                                    ; $4C93: $77
    rst $38                                       ; $4C94: $FF
    ld l, a                                       ; $4C95: $6F
    ld a, a                                       ; $4C96: $7F
    inc hl                                        ; $4C97: $23
    ccf                                           ; $4C98: $3F
    inc c                                         ; $4C99: $0C
    ccf                                           ; $4C9A: $3F
    ld e, $3F                                     ; $4C9B: $1E $3F
    inc e                                         ; $4C9D: $1C
    ld e, $00                                     ; $4C9E: $1E $00
    nop                                           ; $4CA0: $00
    nop                                           ; $4CA1: $00
    nop                                           ; $4CA2: $00
    nop                                           ; $4CA3: $00
    inc bc                                        ; $4CA4: $03
    nop                                           ; $4CA5: $00
    rlca                                          ; $4CA6: $07
    inc bc                                        ; $4CA7: $03
    rrca                                          ; $4CA8: $0F
    rlca                                          ; $4CA9: $07
    rrca                                          ; $4CAA: $0F
    rlca                                          ; $4CAB: $07
    rrca                                          ; $4CAC: $0F
    rlca                                          ; $4CAD: $07
    rrca                                          ; $4CAE: $0F
    rlca                                          ; $4CAF: $07
    nop                                           ; $4CB0: $00
    nop                                           ; $4CB1: $00
    nop                                           ; $4CB2: $00
    nop                                           ; $4CB3: $00
    ldh a, [rP1]                                  ; $4CB4: $F0 $00
    ld hl, sp-$10                                 ; $4CB6: $F8 $F0
    db $FC                                        ; $4CB8: $FC
    ld hl, sp-$04                                 ; $4CB9: $F8 $FC
    ld hl, sp-$34                                 ; $4CBB: $F8 $CC
    ld hl, sp-$34                                 ; $4CBD: $F8 $CC
    ld hl, sp+$07                                 ; $4CBF: $F8 $07
    inc bc                                        ; $4CC1: $03
    rlca                                          ; $4CC2: $07
    inc bc                                        ; $4CC3: $03
    rra                                           ; $4CC4: $1F
    ld bc, $1E3F                                  ; $4CC5: $01 $3F $1E
    ld a, a                                       ; $4CC8: $7F
    daa                                           ; $4CC9: $27
    rst $30                                       ; $4CCA: $F7
    ld c, b                                       ; $4CCB: $48
    or $49                                        ; $4CCC: $F6 $49
    xor $59                                       ; $4CCE: $EE $59
    db $FC                                        ; $4CD0: $FC
    ld a, b                                       ; $4CD1: $78
    db $FC                                        ; $4CD2: $FC

jr_024_4CD3:
    jr nc, jr_024_4CD3                            ; $4CD3: $30 $FE

    adc b                                         ; $4CD5: $88
    rst $38                                       ; $4CD6: $FF
    adc d                                         ; $4CD7: $8A
    rst $38                                       ; $4CD8: $FF
    ld d, h                                       ; $4CD9: $54
    cp $00                                        ; $4CDA: $FE $00
    ld d, $E8                                     ; $4CDC: $16 $E8
    ld e, $E8                                     ; $4CDE: $1E $E8
    rst $38                                       ; $4CE0: $FF

jr_024_4CE1:
    ld e, h                                       ; $4CE1: $5C
    ld a, a                                       ; $4CE2: $7F
    dec c                                         ; $4CE3: $0D
    ld a, a                                       ; $4CE4: $7F
    jr nz, jr_024_4D66                            ; $4CE5: $20 $7F

    inc sp                                        ; $4CE7: $33
    rst $38                                       ; $4CE8: $FF
    ld l, c                                       ; $4CE9: $69
    rst $38                                       ; $4CEA: $FF
    add hl, de                                    ; $4CEB: $19
    ccf                                           ; $4CEC: $3F
    inc e                                         ; $4CED: $1C
    dec e                                         ; $4CEE: $1D

jr_024_4CEF:
    nop                                           ; $4CEF: $00
    cp $04                                        ; $4CF0: $FE $04
    cp $E0                                        ; $4CF2: $FE $E0
    db $FC                                        ; $4CF4: $FC
    nop                                           ; $4CF5: $00
    ld hl, sp-$10                                 ; $4CF6: $F8 $F0
    db $FC                                        ; $4CF8: $FC
    ld hl, sp-$04                                 ; $4CF9: $F8 $FC
    ld hl, sp-$04                                 ; $4CFB: $F8 $FC
    ldh [$F0], a                                  ; $4CFD: $E0 $F0
    nop                                           ; $4CFF: $00
    rst $38                                       ; $4D00: $FF
    inc [hl]                                      ; $4D01: $34
    ld a, a                                       ; $4D02: $7F
    ld a, [de]                                    ; $4D03: $1A
    ld a, a                                       ; $4D04: $7F
    nop                                           ; $4D05: $00
    rst $30                                       ; $4D06: $F7
    dec bc                                        ; $4D07: $0B
    db $EB                                        ; $4D08: $EB
    inc d                                         ; $4D09: $14
    ld hl, sp+$57                                 ; $4D0A: $F8 $57
    rst $38                                       ; $4D0C: $FF
    ld e, b                                       ; $4D0D: $58
    rst $38                                       ; $4D0E: $FF
    ld e, e                                       ; $4D0F: $5B
    inc a                                         ; $4D10: $3C
    nop                                           ; $4D11: $00
    ld a, a                                       ; $4D12: $7F
    inc a                                         ; $4D13: $3C
    ccf                                           ; $4D14: $3F
    rra                                           ; $4D15: $1F
    ld a, a                                       ; $4D16: $7F
    ccf                                           ; $4D17: $3F
    ld a, a                                       ; $4D18: $7F
    ccf                                           ; $4D19: $3F
    ld a, a                                       ; $4D1A: $7F
    ccf                                           ; $4D1B: $3F
    ccf                                           ; $4D1C: $3F
    rra                                           ; $4D1D: $1F
    rra                                           ; $4D1E: $1F
    inc c                                         ; $4D1F: $0C
    nop                                           ; $4D20: $00
    nop                                           ; $4D21: $00
    nop                                           ; $4D22: $00
    nop                                           ; $4D23: $00
    ldh [rP1], a                                  ; $4D24: $E0 $00
    ldh a, [$E0]                                  ; $4D26: $F0 $E0
    ld hl, sp-$10                                 ; $4D28: $F8 $F0
    db $FC                                        ; $4D2A: $FC
    ld hl, sp-$04                                 ; $4D2B: $F8 $FC
    ld hl, sp-$04                                 ; $4D2D: $F8 $FC
    add sp, $1F                                   ; $4D2F: $E8 $1F
    ld b, $3F                                     ; $4D31: $06 $3F
    inc de                                        ; $4D33: $13
    ld a, a                                       ; $4D34: $7F
    jr nz, @+$01                                  ; $4D35: $20 $FF

    ld h, h                                       ; $4D37: $64
    rst $38                                       ; $4D38: $FF
    ld h, [hl]                                    ; $4D39: $66
    rst $38                                       ; $4D3A: $FF
    ld [hl], a                                    ; $4D3B: $77
    rst $08                                       ; $4D3C: $CF
    ld [hl], a                                    ; $4D3D: $77
    ld a, a                                       ; $4D3E: $7F
    rlca                                          ; $4D3F: $07
    db $FC                                        ; $4D40: $FC
    ld c, b                                       ; $4D41: $48
    db $FC                                        ; $4D42: $FC
    ldh a, [$F6]                                  ; $4D43: $F0 $F6
    inc c                                         ; $4D45: $0C
    cp $4C                                        ; $4D46: $FE $4C
    db $FC                                        ; $4D48: $FC
    cp b                                          ; $4D49: $B8
    ld hl, sp-$50                                 ; $4D4A: $F8 $B0
    ldh a, [$80]                                  ; $4D4C: $F0 $80
    ret nz                                        ; $4D4E: $C0

    add b                                         ; $4D4F: $80
    rra                                           ; $4D50: $1F
    nop                                           ; $4D51: $00
    rra                                           ; $4D52: $1F
    rrca                                          ; $4D53: $0F
    ccf                                           ; $4D54: $3F
    rra                                           ; $4D55: $1F
    ld a, a                                       ; $4D56: $7F
    ccf                                           ; $4D57: $3F
    rst $38                                       ; $4D58: $FF
    ld b, e                                       ; $4D59: $43
    rst $20                                       ; $4D5A: $E7
    jr jr_024_4CE1                                ; $4D5B: $18 $84

    ld a, b                                       ; $4D5D: $78
    ld a, h                                       ; $4D5E: $7C
    nop                                           ; $4D5F: $00
    ret nz                                        ; $4D60: $C0

    nop                                           ; $4D61: $00
    ret nz                                        ; $4D62: $C0

    add b                                         ; $4D63: $80
    ldh [$C0], a                                  ; $4D64: $E0 $C0

jr_024_4D66:
    ld hl, sp-$20                                 ; $4D66: $F8 $E0
    db $E4                                        ; $4D68: $E4
    jr jr_024_4CEF                                ; $4D69: $18 $84

    ld a, b                                       ; $4D6B: $78
    ld hl, sp+$00                                 ; $4D6C: $F8 $00
    nop                                           ; $4D6E: $00
    nop                                           ; $4D6F: $00
    nop                                           ; $4D70: $00
    add b                                         ; $4D71: $80
    nop                                           ; $4D72: $00
    ld b, b                                       ; $4D73: $40
    nop                                           ; $4D74: $00
    ld b, b                                       ; $4D75: $40
    nop                                           ; $4D76: $00
    nop                                           ; $4D77: $00
    nop                                           ; $4D78: $00
    nop                                           ; $4D79: $00
    nop                                           ; $4D7A: $00
    nop                                           ; $4D7B: $00
    nop                                           ; $4D7C: $00
    nop                                           ; $4D7D: $00
    nop                                           ; $4D7E: $00
    nop                                           ; $4D7F: $00
    nop                                           ; $4D80: $00
    ret nz                                        ; $4D81: $C0

    nop                                           ; $4D82: $00
    ldh [rP1], a                                  ; $4D83: $E0 $00
    ldh [rP1], a                                  ; $4D85: $E0 $00
    ld h, b                                       ; $4D87: $60
    nop                                           ; $4D88: $00
    ld b, b                                       ; $4D89: $40
    nop                                           ; $4D8A: $00
    nop                                           ; $4D8B: $00
    nop                                           ; $4D8C: $00
    nop                                           ; $4D8D: $00
    nop                                           ; $4D8E: $00
    nop                                           ; $4D8F: $00
    ld bc, $0300                                  ; $4D90: $01 $00 $03
    ld bc, $0007                                  ; $4D93: $01 $07 $00
    rrca                                          ; $4D96: $0F
    rlca                                          ; $4D97: $07
    rra                                           ; $4D98: $1F
    rrca                                          ; $4D99: $0F
    rra                                           ; $4D9A: $1F
    rrca                                          ; $4D9B: $0F
    ccf                                           ; $4D9C: $3F
    rra                                           ; $4D9D: $1F
    ccf                                           ; $4D9E: $3F
    inc de                                        ; $4D9F: $13
    add b                                         ; $4DA0: $80
    nop                                           ; $4DA1: $00
    ret nz                                        ; $4DA2: $C0

    add b                                         ; $4DA3: $80
    ldh [$80], a                                  ; $4DA4: $E0 $80
    ldh a, [$E0]                                  ; $4DA6: $F0 $E0
    ld hl, sp-$10                                 ; $4DA8: $F8 $F0
    ld hl, sp-$10                                 ; $4DAA: $F8 $F0
    db $FC                                        ; $4DAC: $FC
    ld hl, sp-$04                                 ; $4DAD: $F8 $FC
    ret z                                         ; $4DAF: $C8

    rra                                           ; $4DB0: $1F
    add hl, bc                                    ; $4DB1: $09
    rrca                                          ; $4DB2: $0F
    rlca                                          ; $4DB3: $07
    rra                                           ; $4DB4: $1F
    nop                                           ; $4DB5: $00
    ccf                                           ; $4DB6: $3F
    inc d                                         ; $4DB7: $14
    ld a, a                                       ; $4DB8: $7F
    ld [hl], $EF                                  ; $4DB9: $36 $EF
    ld [hl], a                                    ; $4DBB: $77
    ld c, a                                       ; $4DBC: $4F
    scf                                           ; $4DBD: $37
    ccf                                           ; $4DBE: $3F
    rlca                                          ; $4DBF: $07
    ld bc, $0300                                  ; $4DC0: $01 $00 $03
    ld bc, $0007                                  ; $4DC3: $01 $07 $00
    rrca                                          ; $4DC6: $0F
    rlca                                          ; $4DC7: $07
    rra                                           ; $4DC8: $1F
    rrca                                          ; $4DC9: $0F
    rra                                           ; $4DCA: $1F
    rrca                                          ; $4DCB: $0F
    ccf                                           ; $4DCC: $3F
    rra                                           ; $4DCD: $1F
    ld a, a                                       ; $4DCE: $7F
    inc de                                        ; $4DCF: $13
    add b                                         ; $4DD0: $80
    nop                                           ; $4DD1: $00
    ret nz                                        ; $4DD2: $C0

    add b                                         ; $4DD3: $80
    ldh [$80], a                                  ; $4DD4: $E0 $80
    ldh a, [$E0]                                  ; $4DD6: $F0 $E0
    ld hl, sp-$10                                 ; $4DD8: $F8 $F0
    ld hl, sp-$10                                 ; $4DDA: $F8 $F0
    db $FC                                        ; $4DDC: $FC
    ld hl, sp-$02                                 ; $4DDD: $F8 $FE
    ret z                                         ; $4DDF: $C8

    rrca                                          ; $4DE0: $0F
    nop                                           ; $4DE1: $00
    rrca                                          ; $4DE2: $0F
    rlca                                          ; $4DE3: $07
    rra                                           ; $4DE4: $1F
    rrca                                          ; $4DE5: $0F
    rra                                           ; $4DE6: $1F
    inc bc                                        ; $4DE7: $03
    inc de                                        ; $4DE8: $13
    inc c                                         ; $4DE9: $0C
    ld hl, $231E                                  ; $4DEA: $21 $1E $23
    inc e                                         ; $4DED: $1C
    rra                                           ; $4DEE: $1F
    nop                                           ; $4DEF: $00
    sbc a                                         ; $4DF0: $9F
    ld l, c                                       ; $4DF1: $69
    rst $18                                       ; $4DF2: $DF
    ld h, a                                       ; $4DF3: $67
    rst $38                                       ; $4DF4: $FF
    ld [hl], b                                    ; $4DF5: $70
    ld a, a                                       ; $4DF6: $7F
    inc [hl]                                      ; $4DF7: $34
    ccf                                           ; $4DF8: $3F
    ld d, $1F                                     ; $4DF9: $16 $1F
    rlca                                          ; $4DFB: $07
    rrca                                          ; $4DFC: $0F
    rlca                                          ; $4DFD: $07
    rrca                                          ; $4DFE: $0F
    rlca                                          ; $4DFF: $07
    nop                                           ; $4E00: $00
    nop                                           ; $4E01: $00
    ld [hl], b                                    ; $4E02: $70
    nop                                           ; $4E03: $00
    db $FC                                        ; $4E04: $FC
    ld [hl], b                                    ; $4E05: $70
    rst $38                                       ; $4E06: $FF
    ld a, h                                       ; $4E07: $7C
    ld a, a                                       ; $4E08: $7F
    ccf                                           ; $4E09: $3F
    rst $38                                       ; $4E0A: $FF
    ld a, a                                       ; $4E0B: $7F
    rst $38                                       ; $4E0C: $FF
    ld a, a                                       ; $4E0D: $7F
    rst $38                                       ; $4E0E: $FF
    ld a, a                                       ; $4E0F: $7F
    nop                                           ; $4E10: $00
    nop                                           ; $4E11: $00
    nop                                           ; $4E12: $00
    nop                                           ; $4E13: $00
    nop                                           ; $4E14: $00
    nop                                           ; $4E15: $00
    add b                                         ; $4E16: $80
    nop                                           ; $4E17: $00
    ret nz                                        ; $4E18: $C0

    add b                                         ; $4E19: $80
    ldh [$C0], a                                  ; $4E1A: $E0 $C0
    ldh a, [$E0]                                  ; $4E1C: $F0 $E0
    ldh a, [$E0]                                  ; $4E1E: $F0 $E0
    ld bc, $0300                                  ; $4E20: $01 $00 $03
    ld bc, $0001                                  ; $4E23: $01 $01 $00
    nop                                           ; $4E26: $00
    nop                                           ; $4E27: $00
    nop                                           ; $4E28: $00
    nop                                           ; $4E29: $00
    nop                                           ; $4E2A: $00
    nop                                           ; $4E2B: $00
    ld bc, $0200                                  ; $4E2C: $01 $00 $02
    ld bc, $33FF                                  ; $4E2F: $01 $FF $33
    rst $38                                       ; $4E32: $FF
    reti                                          ; $4E33: $D9


    rst $38                                       ; $4E34: $FF
    rst $28                                       ; $4E35: $EF
    rst $38                                       ; $4E36: $FF
    nop                                           ; $4E37: $00
    rst $38                                       ; $4E38: $FF
    ld c, h                                       ; $4E39: $4C
    rst $38                                       ; $4E3A: $FF
    ld c, a                                       ; $4E3B: $4F
    rst $38                                       ; $4E3C: $FF
    xor $FF                                       ; $4E3D: $EE $FF
    xor $F0                                       ; $4E3F: $EE $F0
    ret nz                                        ; $4E41: $C0

    ldh a, [$A0]                                  ; $4E42: $F0 $A0
    ldh [$C0], a                                  ; $4E44: $E0 $C0
    ldh a, [rP1]                                  ; $4E46: $F0 $00
    ldh a, [$A0]                                  ; $4E48: $F0 $A0
    ldh a, [$60]                                  ; $4E4A: $F0 $60
    ld [hl], b                                    ; $4E4C: $70
    ldh [$36], a                                  ; $4E4D: $E0 $36
    ldh [$4C], a                                  ; $4E4F: $E0 $4C
    jr c, jr_024_4E8B                             ; $4E51: $38 $38

    nop                                           ; $4E53: $00
    nop                                           ; $4E54: $00
    nop                                           ; $4E55: $00
    nop                                           ; $4E56: $00
    nop                                           ; $4E57: $00
    nop                                           ; $4E58: $00
    nop                                           ; $4E59: $00
    nop                                           ; $4E5A: $00
    nop                                           ; $4E5B: $00
    nop                                           ; $4E5C: $00
    nop                                           ; $4E5D: $00
    nop                                           ; $4E5E: $00
    nop                                           ; $4E5F: $00
    rra                                           ; $4E60: $1F
    nop                                           ; $4E61: $00
    ld e, $09                                     ; $4E62: $1E $09
    ld c, $05                                     ; $4E64: $0E $05
    ld b, $01                                     ; $4E66: $06 $01
    inc bc                                        ; $4E68: $03
    nop                                           ; $4E69: $00
    ld bc, $0000                                  ; $4E6A: $01 $00 $00
    nop                                           ; $4E6D: $00
    nop                                           ; $4E6E: $00
    nop                                           ; $4E6F: $00
    ld sp, hl                                     ; $4E70: $F9
    ld b, $79                                     ; $4E71: $06 $79
    or [hl]                                       ; $4E73: $B6
    add hl, sp                                    ; $4E74: $39
    sub $39                                       ; $4E75: $D6 $39
    add $2E                                       ; $4E77: $C6 $2E
    ret nz                                        ; $4E79: $C0

    ret nz                                        ; $4E7A: $C0

    nop                                           ; $4E7B: $00
    nop                                           ; $4E7C: $00
    nop                                           ; $4E7D: $00
    nop                                           ; $4E7E: $00
    nop                                           ; $4E7F: $00
    inc bc                                        ; $4E80: $03
    nop                                           ; $4E81: $00
    rlca                                          ; $4E82: $07
    inc bc                                        ; $4E83: $03
    rlca                                          ; $4E84: $07
    ld bc, $070F                                  ; $4E85: $01 $0F $07
    rra                                           ; $4E88: $1F
    rrca                                          ; $4E89: $0F
    rra                                           ; $4E8A: $1F

jr_024_4E8B:
    rrca                                          ; $4E8B: $0F
    ccf                                           ; $4E8C: $3F
    rra                                           ; $4E8D: $1F
    ccf                                           ; $4E8E: $3F
    add hl, de                                    ; $4E8F: $19
    nop                                           ; $4E90: $00
    nop                                           ; $4E91: $00
    add b                                         ; $4E92: $80
    nop                                           ; $4E93: $00
    ldh [rP1], a                                  ; $4E94: $E0 $00
    ldh a, [$E0]                                  ; $4E96: $F0 $E0
    ld hl, sp-$10                                 ; $4E98: $F8 $F0
    ld hl, sp-$10                                 ; $4E9A: $F8 $F0
    db $FC                                        ; $4E9C: $FC
    ld hl, sp-$04                                 ; $4E9D: $F8 $FC
    ldh [$1F], a                                  ; $4E9F: $E0 $1F
    inc c                                         ; $4EA1: $0C
    rrca                                          ; $4EA2: $0F
    inc bc                                        ; $4EA3: $03
    rra                                           ; $4EA4: $1F
    nop                                           ; $4EA5: $00
    ccf                                           ; $4EA6: $3F
    inc d                                         ; $4EA7: $14
    ld a, a                                       ; $4EA8: $7F
    ld [hl], $EF                                  ; $4EA9: $36 $EF
    ld [hl], a                                    ; $4EAB: $77
    ld c, a                                       ; $4EAC: $4F
    scf                                           ; $4EAD: $37
    ccf                                           ; $4EAE: $3F
    rlca                                          ; $4EAF: $07
    db $FC                                        ; $4EB0: $FC
    ret z                                         ; $4EB1: $C8

    ld hl, sp-$10                                 ; $4EB2: $F8 $F0
    ld hl, sp+$00                                 ; $4EB4: $F8 $00
    db $FC                                        ; $4EB6: $FC

jr_024_4EB7:
    jr z, jr_024_4EB7                             ; $4EB7: $28 $FE

    ld l, h                                       ; $4EB9: $6C
    rst $30                                       ; $4EBA: $F7
    xor $F2                                       ; $4EBB: $EE $F2
    db $EC                                        ; $4EBD: $EC
    db $FC                                        ; $4EBE: $FC
    ldh [$1F], a                                  ; $4EBF: $E0 $1F
    nop                                           ; $4EC1: $00
    jr nz, jr_024_4EE3                            ; $4EC2: $20 $1F

    ld b, b                                       ; $4EC4: $40
    ccf                                           ; $4EC5: $3F
    ld b, b                                       ; $4EC6: $40
    ccf                                           ; $4EC7: $3F
    ld b, b                                       ; $4EC8: $40
    ccf                                           ; $4EC9: $3F
    ld c, b                                       ; $4ECA: $48
    scf                                           ; $4ECB: $37
    ld d, c                                       ; $4ECC: $51
    cpl                                           ; $4ECD: $2F
    jr z, jr_024_4EE7                             ; $4ECE: $28 $17

    nop                                           ; $4ED0: $00
    nop                                           ; $4ED1: $00
    add b                                         ; $4ED2: $80

jr_024_4ED3:
    nop                                           ; $4ED3: $00
    ld b, b                                       ; $4ED4: $40
    add b                                         ; $4ED5: $80
    ret nz                                        ; $4ED6: $C0

    add b                                         ; $4ED7: $80
    ret nz                                        ; $4ED8: $C0

    add b                                         ; $4ED9: $80
    ld b, b                                       ; $4EDA: $40
    add b                                         ; $4EDB: $80
    ld b, b                                       ; $4EDC: $40
    add b                                         ; $4EDD: $80
    ld b, b                                       ; $4EDE: $40
    add b                                         ; $4EDF: $80
    inc d                                         ; $4EE0: $14
    dec bc                                        ; $4EE1: $0B
    rra                                           ; $4EE2: $1F

jr_024_4EE3:
    nop                                           ; $4EE3: $00

jr_024_4EE4:
    cpl                                           ; $4EE4: $2F
    rra                                           ; $4EE5: $1F
    ccf                                           ; $4EE6: $3F

jr_024_4EE7:
    rla                                           ; $4EE7: $17
    ld e, a                                       ; $4EE8: $5F
    jr nz, jr_024_4EE4                            ; $4EE9: $20 $F9

    ld h, [hl]                                    ; $4EEB: $66
    ld sp, hl                                     ; $4EEC: $F9
    ld h, [hl]                                    ; $4EED: $66
    ld l, a                                       ; $4EEE: $6F
    nop                                           ; $4EEF: $00
    ld b, b                                       ; $4EF0: $40
    add b                                         ; $4EF1: $80
    sbc b                                         ; $4EF2: $98
    nop                                           ; $4EF3: $00
    db $FC                                        ; $4EF4: $FC
    jr jr_024_4ED3                                ; $4EF5: $18 $DC

    ld a, b                                       ; $4EF7: $78
    ld hl, sp+$00                                 ; $4EF8: $F8 $00
    nop                                           ; $4EFA: $00
    nop                                           ; $4EFB: $00
    nop                                           ; $4EFC: $00
    nop                                           ; $4EFD: $00
    nop                                           ; $4EFE: $00
    nop                                           ; $4EFF: $00
    rra                                           ; $4F00: $1F
    ld c, $1F                                     ; $4F01: $0E $1F
    ld c, $3F                                     ; $4F03: $0E $3F
    rra                                           ; $4F05: $1F
    ccf                                           ; $4F06: $3F
    rra                                           ; $4F07: $1F
    ld a, a                                       ; $4F08: $7F
    jr nz, @+$01                                  ; $4F09: $20 $FF

    dec c                                         ; $4F0B: $0D
    rst $38                                       ; $4F0C: $FF
    ld a, h                                       ; $4F0D: $7C
    ld a, [hl]                                    ; $4F0E: $7E
    nop                                           ; $4F0F: $00
    nop                                           ; $4F10: $00
    nop                                           ; $4F11: $00
    nop                                           ; $4F12: $00
    nop                                           ; $4F13: $00
    add b                                         ; $4F14: $80
    nop                                           ; $4F15: $00
    ldh [rP1], a                                  ; $4F16: $E0 $00
    ldh a, [$E0]                                  ; $4F18: $F0 $E0
    ldh a, [$E0]                                  ; $4F1A: $F0 $E0
    ldh [rP1], a                                  ; $4F1C: $E0 $00
    nop                                           ; $4F1E: $00
    nop                                           ; $4F1F: $00
    nop                                           ; $4F20: $00
    nop                                           ; $4F21: $00
    nop                                           ; $4F22: $00
    ret nz                                        ; $4F23: $C0

    nop                                           ; $4F24: $00
    ld h, b                                       ; $4F25: $60
    nop                                           ; $4F26: $00
    jr nz, jr_024_4F29                            ; $4F27: $20 $00

jr_024_4F29:
    nop                                           ; $4F29: $00
    nop                                           ; $4F2A: $00
    nop                                           ; $4F2B: $00
    nop                                           ; $4F2C: $00
    nop                                           ; $4F2D: $00
    nop                                           ; $4F2E: $00
    nop                                           ; $4F2F: $00
    nop                                           ; $4F30: $00
    nop                                           ; $4F31: $00
    nop                                           ; $4F32: $00
    ld [hl], b                                    ; $4F33: $70
    nop                                           ; $4F34: $00
    ld hl, sp+$00                                 ; $4F35: $F8 $00
    jr c, jr_024_4F39                             ; $4F37: $38 $00

jr_024_4F39:
    jr jr_024_4F3B                                ; $4F39: $18 $00

jr_024_4F3B:
    stop                                          ; $4F3B: $10 $00
    nop                                           ; $4F3D: $00
    nop                                           ; $4F3E: $00
    nop                                           ; $4F3F: $00
    nop                                           ; $4F40: $00
    nop                                           ; $4F41: $00
    nop                                           ; $4F42: $00
    nop                                           ; $4F43: $00
    nop                                           ; $4F44: $00
    nop                                           ; $4F45: $00
    nop                                           ; $4F46: $00
    nop                                           ; $4F47: $00
    nop                                           ; $4F48: $00
    nop                                           ; $4F49: $00
    nop                                           ; $4F4A: $00
    nop                                           ; $4F4B: $00
    ld bc, $0200                                  ; $4F4C: $01 $00 $02
    ld bc, $0000                                  ; $4F4F: $01 $00 $00
    nop                                           ; $4F52: $00
    nop                                           ; $4F53: $00
    nop                                           ; $4F54: $00
    nop                                           ; $4F55: $00
    nop                                           ; $4F56: $00
    nop                                           ; $4F57: $00
    nop                                           ; $4F58: $00
    nop                                           ; $4F59: $00
    ldh a, [rP1]                                  ; $4F5A: $F0 $00
    inc c                                         ; $4F5C: $0C
    ldh a, [rDIV]                                 ; $4F5D: $F0 $04
    ld hl, sp+$02                                 ; $4F5F: $F8 $02
    ld bc, $0102                                  ; $4F61: $01 $02 $01
    ld [bc], a                                    ; $4F64: $02
    ld bc, $0102                                  ; $4F65: $01 $02 $01
    inc bc                                        ; $4F68: $03
    nop                                           ; $4F69: $00
    ld [bc], a                                    ; $4F6A: $02
    ld bc, $0001                                  ; $4F6B: $01 $01 $00
    nop                                           ; $4F6E: $00
    nop                                           ; $4F6F: $00
    call nz, $C4F8                                ; $4F70: $C4 $F8 $C4
    ld hl, sp+$04                                 ; $4F73: $F8 $04
    ld hl, sp+$02                                 ; $4F75: $F8 $02
    db $FC                                        ; $4F77: $FC
    ld l, [hl]                                    ; $4F78: $6E
    sub b                                         ; $4F79: $90
    inc e                                         ; $4F7A: $1C
    add sp, -$06                                  ; $4F7B: $E8 $FA
    inc d                                         ; $4F7D: $14
    cp $74                                        ; $4F7E: $FE $74
    ld bc, $0300                                  ; $4F80: $01 $00 $03
    ld bc, $0103                                  ; $4F83: $01 $03 $01
    inc bc                                        ; $4F86: $03
    ld bc, $0103                                  ; $4F87: $01 $03 $01
    ld bc, $0000                                  ; $4F8A: $01 $00 $00
    nop                                           ; $4F8D: $00
    nop                                           ; $4F8E: $00
    nop                                           ; $4F8F: $00
    add b                                         ; $4F90: $80
    nop                                           ; $4F91: $00
    pop bc                                        ; $4F92: $C1
    add b                                         ; $4F93: $80
    rst $38                                       ; $4F94: $FF
    add b                                         ; $4F95: $80
    rst $38                                       ; $4F96: $FF
    or [hl]                                       ; $4F97: $B6
    rst $38                                       ; $4F98: $FF
    adc [hl]                                      ; $4F99: $8E
    sbc a                                         ; $4F9A: $9F
    ld c, $1F                                     ; $4F9B: $0E $1F
    inc c                                         ; $4F9D: $0C
    ld c, $00                                     ; $4F9E: $0E $00
    ld a, [$FA74]                                 ; $4FA0: $FA $74 $FA
    inc b                                         ; $4FA3: $04
    jp hl                                         ; $4FA4: $E9


    ld d, $F9                                     ; $4FA5: $16 $F9
    and $FE                                       ; $4FA7: $E6 $FE
    ldh a, [$F0]                                  ; $4FA9: $F0 $F0
    add b                                         ; $4FAB: $80
    add b                                         ; $4FAC: $80
    nop                                           ; $4FAD: $00
    nop                                           ; $4FAE: $00
    nop                                           ; $4FAF: $00
    inc bc                                        ; $4FB0: $03
    nop                                           ; $4FB1: $00
    inc b                                         ; $4FB2: $04
    inc bc                                        ; $4FB3: $03
    ld [$0807], sp                                ; $4FB4: $08 $07 $08
    rlca                                          ; $4FB7: $07
    add hl, bc                                    ; $4FB8: $09
    rlca                                          ; $4FB9: $07
    add hl, de                                    ; $4FBA: $19
    rlca                                          ; $4FBB: $07
    jr z, jr_024_4FD5                             ; $4FBC: $28 $17

    ld a, [de]                                    ; $4FBE: $1A
    rlca                                          ; $4FBF: $07
    ld h, h                                       ; $4FC0: $64
    inc bc                                        ; $4FC1: $03

jr_024_4FC2:
    rst $38                                       ; $4FC2: $FF
    ld h, b                                       ; $4FC3: $60
    db $EB                                        ; $4FC4: $EB
    ld a, a                                       ; $4FC5: $7F
    ld a, a                                       ; $4FC6: $7F
    inc bc                                        ; $4FC7: $03
    rlca                                          ; $4FC8: $07
    inc bc                                        ; $4FC9: $03
    inc bc                                        ; $4FCA: $03
    nop                                           ; $4FCB: $00
    ld [bc], a                                    ; $4FCC: $02
    ld bc, $0003                                  ; $4FCD: $01 $03 $00
    ld h, $C0                                     ; $4FD0: $26 $C0

jr_024_4FD2:
    rst $38                                       ; $4FD2: $FF
    ld b, $D7                                     ; $4FD3: $06 $D7

jr_024_4FD5:
    cp $FE                                        ; $4FD5: $FE $FE
    ret nz                                        ; $4FD7: $C0

    ldh [$C0], a                                  ; $4FD8: $E0 $C0
    ret nz                                        ; $4FDA: $C0

    nop                                           ; $4FDB: $00
    ld b, b                                       ; $4FDC: $40
    add b                                         ; $4FDD: $80
    ldh [rP1], a                                  ; $4FDE: $E0 $00
    ld a, $1C                                     ; $4FE0: $3E $1C
    ld a, $1C                                     ; $4FE2: $3E $1C
    ld a, $1C                                     ; $4FE4: $3E $1C
    ld a, [hl]                                    ; $4FE6: $7E
    jr @+$80                                      ; $4FE7: $18 $7E

    jr nz, @+$80                                  ; $4FE9: $20 $7E

    jr c, @+$80                                   ; $4FEB: $38 $7E

    inc [hl]                                      ; $4FED: $34
    inc a                                         ; $4FEE: $3C
    nop                                           ; $4FEF: $00
    ldh a, [$C0]                                  ; $4FF0: $F0 $C0

jr_024_4FF2:
    ldh [$C0], a                                  ; $4FF2: $E0 $C0
    ldh [$C0], a                                  ; $4FF4: $E0 $C0
    ldh a, [$C0]                                  ; $4FF6: $F0 $C0
    ld hl, sp+$30                                 ; $4FF8: $F8 $30
    db $FC                                        ; $4FFA: $FC
    ld a, b                                       ; $4FFB: $78
    db $FC                                        ; $4FFC: $FC
    jr c, @-$06                                   ; $4FFD: $38 $F8

    nop                                           ; $4FFF: $00
    jr nz, jr_024_4FC2                            ; $5000: $20 $C0

    ldh [rP1], a                                  ; $5002: $E0 $00
    ret nc                                        ; $5004: $D0

    ldh [$F0], a                                  ; $5005: $E0 $F0
    and b                                         ; $5007: $A0
    ret nc                                        ; $5008: $D0

    and b                                         ; $5009: $A0
    ret nc                                        ; $500A: $D0

    jr nz, jr_024_5085                            ; $500B: $20 $78

    or b                                          ; $500D: $B0
    ld hl, sp+$30                                 ; $500E: $F8 $30
    jr nz, jr_024_4FD2                            ; $5010: $20 $C0

jr_024_5012:
    ldh a, [rP1]                                  ; $5012: $F0 $00
    ret z                                         ; $5014: $C8

    ldh a, [$F8]                                  ; $5015: $F0 $F8
    ret nc                                        ; $5017: $D0

    add sp, -$30                                  ; $5018: $E8 $D0
    ld hl, sp+$10                                 ; $501A: $F8 $10
    ld a, b                                       ; $501C: $78
    sub b                                         ; $501D: $90
    ldh a, [rP1]                                  ; $501E: $F0 $00
    inc b                                         ; $5020: $04
    inc bc                                        ; $5021: $03

jr_024_5022:
    rlca                                          ; $5022: $07
    nop                                           ; $5023: $00
    rrca                                          ; $5024: $0F
    ld b, $0E                                     ; $5025: $06 $0E
    rlca                                          ; $5027: $07
    rlca                                          ; $5028: $07
    nop                                           ; $5029: $00
    dec bc                                        ; $502A: $0B
    inc b                                         ; $502B: $04
    ld e, $0D                                     ; $502C: $1E $0D
    rra                                           ; $502E: $1F
    inc c                                         ; $502F: $0C
    jr nz, jr_024_4FF2                            ; $5030: $20 $C0

    ldh a, [rP1]                                  ; $5032: $F0 $00
    ret nc                                        ; $5034: $D0

    jr nz, jr_024_50A7                            ; $5035: $20 $70

    ret nz                                        ; $5037: $C0

    ldh [rP1], a                                  ; $5038: $E0 $00
    ret nz                                        ; $503A: $C0

    nop                                           ; $503B: $00
    ld b, b                                       ; $503C: $40
    add b                                         ; $503D: $80
    ldh [rP1], a                                  ; $503E: $E0 $00
    inc b                                         ; $5040: $04
    inc bc                                        ; $5041: $03
    rlca                                          ; $5042: $07
    nop                                           ; $5043: $00
    dec bc                                        ; $5044: $0B
    dec b                                         ; $5045: $05
    rrca                                          ; $5046: $0F
    dec b                                         ; $5047: $05
    dec bc                                        ; $5048: $0B
    inc b                                         ; $5049: $04
    dec bc                                        ; $504A: $0B
    inc b                                         ; $504B: $04
    ld e, $0D                                     ; $504C: $1E $0D
    rra                                           ; $504E: $1F
    inc c                                         ; $504F: $0C
    jr nz, jr_024_5012                            ; $5050: $20 $C0

    ldh a, [rP1]                                  ; $5052: $F0 $00
    ret nc                                        ; $5054: $D0

    and b                                         ; $5055: $A0
    sub b                                         ; $5056: $90
    ldh [$E0], a                                  ; $5057: $E0 $E0
    nop                                           ; $5059: $00
    ret nz                                        ; $505A: $C0

    nop                                           ; $505B: $00
    ld b, b                                       ; $505C: $40
    add b                                         ; $505D: $80
    ldh [rP1], a                                  ; $505E: $E0 $00
    jr nz, jr_024_5022                            ; $5060: $20 $C0

    ldh [rP1], a                                  ; $5062: $E0 $00
    ldh a, [$60]                                  ; $5064: $F0 $60
    add sp, $70                                   ; $5066: $E8 $70
    ld hl, sp+$00                                 ; $5068: $F8 $00
    ldh [rP1], a                                  ; $506A: $E0 $00
    ld b, b                                       ; $506C: $40
    add b                                         ; $506D: $80
    ldh [rP1], a                                  ; $506E: $E0 $00
    ld a, a                                       ; $5070: $7F
    ld c, $1F                                     ; $5071: $0E $1F
    ld c, $1F                                     ; $5073: $0E $1F
    ld c, $3F                                     ; $5075: $0E $3F
    inc c                                         ; $5077: $0C
    ccf                                           ; $5078: $3F
    db $10                                        ; $5079: $10
    ccf                                           ; $507A: $3F
    inc e                                         ; $507B: $1C
    ccf                                           ; $507C: $3F
    ld a, [de]                                    ; $507D: $1A
    ld e, $00                                     ; $507E: $1E $00
    ld e, $00                                     ; $5080: $1E $00
    ccf                                           ; $5082: $3F
    ld e, $1F                                     ; $5083: $1E $1F

jr_024_5085:
    rrca                                          ; $5085: $0F
    ccf                                           ; $5086: $3F
    rra                                           ; $5087: $1F
    ccf                                           ; $5088: $3F
    rra                                           ; $5089: $1F
    ccf                                           ; $508A: $3F
    rra                                           ; $508B: $1F
    rra                                           ; $508C: $1F
    rrca                                          ; $508D: $0F
    ccf                                           ; $508E: $3F
    rlca                                          ; $508F: $07
    nop                                           ; $5090: $00
    nop                                           ; $5091: $00
    add b                                         ; $5092: $80
    nop                                           ; $5093: $00
    ldh a, [$80]                                  ; $5094: $F0 $80
    ld hl, sp-$10                                 ; $5096: $F8 $F0
    db $FC                                        ; $5098: $FC
    ld hl, sp-$02                                 ; $5099: $F8 $FE
    db $FC                                        ; $509B: $FC
    cp $FC                                        ; $509C: $FE $FC
    cp $B4                                        ; $509E: $FE $B4
    ld a, a                                       ; $50A0: $7F
    dec sp                                        ; $50A1: $3B
    rst $38                                       ; $50A2: $FF
    ld a, l                                       ; $50A3: $7D
    ld a, a                                       ; $50A4: $7F
    ld e, $5E                                     ; $50A5: $1E $5E

jr_024_50A7:
    ld hl, $337C                                  ; $50A7: $21 $7C $33
    ld a, h                                       ; $50AA: $7C
    dec sp                                        ; $50AB: $3B
    ccf                                           ; $50AC: $3F
    jr jr_024_50CE                                ; $50AD: $18 $1F

    inc bc                                        ; $50AF: $03
    cp $B4                                        ; $50B0: $FE $B4
    db $FC                                        ; $50B2: $FC
    ld hl, sp-$02                                 ; $50B3: $F8 $FE
    nop                                           ; $50B5: $00
    rra                                           ; $50B6: $1F
    and $2F                                       ; $50B7: $E6 $2F
    sbc $36                                       ; $50B9: $DE $36
    call z, $00EC                                 ; $50BB: $CC $EC $00
    ldh [$C0], a                                  ; $50BE: $E0 $C0
    rrca                                          ; $50C0: $0F
    nop                                           ; $50C1: $00
    rrca                                          ; $50C2: $0F
    nop                                           ; $50C3: $00
    rra                                           ; $50C4: $1F
    nop                                           ; $50C5: $00
    rra                                           ; $50C6: $1F
    nop                                           ; $50C7: $00
    ccf                                           ; $50C8: $3F
    nop                                           ; $50C9: $00
    ld [hl], e                                    ; $50CA: $73
    inc c                                         ; $50CB: $0C
    ld b, e                                       ; $50CC: $43
    inc a                                         ; $50CD: $3C

jr_024_50CE:
    ld a, $00                                     ; $50CE: $3E $00
    ldh [rP1], a                                  ; $50D0: $E0 $00
    ldh [rP1], a                                  ; $50D2: $E0 $00
    ldh a, [rP1]                                  ; $50D4: $F0 $00
    ld hl, sp+$00                                 ; $50D6: $F8 $00
    db $E4                                        ; $50D8: $E4
    jr @-$7A                                      ; $50D9: $18 $84

    ld a, b                                       ; $50DB: $78
    ld hl, sp+$00                                 ; $50DC: $F8 $00
    nop                                           ; $50DE: $00
    nop                                           ; $50DF: $00
    nop                                           ; $50E0: $00
    ret nz                                        ; $50E1: $C0

    nop                                           ; $50E2: $00
    ld h, b                                       ; $50E3: $60
    nop                                           ; $50E4: $00
    jr nz, jr_024_50E7                            ; $50E5: $20 $00

jr_024_50E7:
    nop                                           ; $50E7: $00
    nop                                           ; $50E8: $00
    nop                                           ; $50E9: $00
    nop                                           ; $50EA: $00
    nop                                           ; $50EB: $00
    nop                                           ; $50EC: $00
    nop                                           ; $50ED: $00
    nop                                           ; $50EE: $00
    nop                                           ; $50EF: $00
    nop                                           ; $50F0: $00
    ld h, b                                       ; $50F1: $60
    nop                                           ; $50F2: $00
    ldh a, [rP1]                                  ; $50F3: $F0 $00
    ld [hl], b                                    ; $50F5: $70
    nop                                           ; $50F6: $00
    jr nc, jr_024_50F9                            ; $50F7: $30 $00

jr_024_50F9:
    jr nz, jr_024_50FB                            ; $50F9: $20 $00

jr_024_50FB:
    nop                                           ; $50FB: $00
    nop                                           ; $50FC: $00
    nop                                           ; $50FD: $00
    nop                                           ; $50FE: $00
    nop                                           ; $50FF: $00
    ld bc, $0300                                  ; $5100: $01 $00 $03
    ld bc, $0007                                  ; $5103: $01 $07 $00
    rrca                                          ; $5106: $0F
    rlca                                          ; $5107: $07
    rra                                           ; $5108: $1F
    rrca                                          ; $5109: $0F
    rra                                           ; $510A: $1F
    rrca                                          ; $510B: $0F
    rst $38                                       ; $510C: $FF
    rrca                                          ; $510D: $0F
    rst $38                                       ; $510E: $FF
    call $0080                                    ; $510F: $CD $80 $00
    ret nz                                        ; $5112: $C0

    add b                                         ; $5113: $80
    ldh [$80], a                                  ; $5114: $E0 $80
    ldh a, [$E0]                                  ; $5116: $F0 $E0
    ld hl, sp-$10                                 ; $5118: $F8 $F0
    ld hl, sp-$10                                 ; $511A: $F8 $F0
    rst $38                                       ; $511C: $FF
    ldh a, [rIE]                                  ; $511D: $F0 $FF
    or e                                          ; $511F: $B3
    ld bc, $0300                                  ; $5120: $01 $00 $03
    ld bc, $0007                                  ; $5123: $01 $07 $00
    rrca                                          ; $5126: $0F
    rlca                                          ; $5127: $07
    rra                                           ; $5128: $1F
    rrca                                          ; $5129: $0F
    rra                                           ; $512A: $1F
    rrca                                          ; $512B: $0F
    ld a, a                                       ; $512C: $7F
    rrca                                          ; $512D: $0F
    rst $38                                       ; $512E: $FF
    ld l, l                                       ; $512F: $6D
    add b                                         ; $5130: $80
    nop                                           ; $5131: $00
    ret nz                                        ; $5132: $C0

    add b                                         ; $5133: $80
    ldh [$80], a                                  ; $5134: $E0 $80
    ldh a, [$E0]                                  ; $5136: $F0 $E0
    ld hl, sp-$10                                 ; $5138: $F8 $F0
    ld hl, sp-$10                                 ; $513A: $F8 $F0
    cp $F0                                        ; $513C: $FE $F0
    rst $38                                       ; $513E: $FF
    or [hl]                                       ; $513F: $B6
    rst $38                                       ; $5140: $FF
    ld l, l                                       ; $5141: $6D
    rst $38                                       ; $5142: $FF
    ld b, a                                       ; $5143: $47
    ld a, a                                       ; $5144: $7F
    jr nc, @+$3A                                  ; $5145: $30 $38

    rlca                                          ; $5147: $07
    ld [$0C07], sp                                ; $5148: $08 $07 $0C
    inc bc                                        ; $514B: $03
    rrca                                          ; $514C: $0F
    nop                                           ; $514D: $00
    rrca                                          ; $514E: $0F
    rlca                                          ; $514F: $07
    rrca                                          ; $5150: $0F
    nop                                           ; $5151: $00
    rrca                                          ; $5152: $0F
    nop                                           ; $5153: $00
    rra                                           ; $5154: $1F
    nop                                           ; $5155: $00
    rra                                           ; $5156: $1F
    nop                                           ; $5157: $00
    inc de                                        ; $5158: $13
    inc c                                         ; $5159: $0C
    ld hl, $231E                                  ; $515A: $21 $1E $23
    inc e                                         ; $515D: $1C
    rra                                           ; $515E: $1F
    nop                                           ; $515F: $00
    nop                                           ; $5160: $00
    nop                                           ; $5161: $00
    ld [hl], b                                    ; $5162: $70
    nop                                           ; $5163: $00
    db $FC                                        ; $5164: $FC
    ld [hl], b                                    ; $5165: $70
    ld a, a                                       ; $5166: $7F
    inc a                                         ; $5167: $3C
    rst $38                                       ; $5168: $FF
    ld a, a                                       ; $5169: $7F
    rst $38                                       ; $516A: $FF
    ld a, a                                       ; $516B: $7F
    rst $38                                       ; $516C: $FF
    ld a, a                                       ; $516D: $7F
    rst $38                                       ; $516E: $FF
    ld a, a                                       ; $516F: $7F
    nop                                           ; $5170: $00
    nop                                           ; $5171: $00
    nop                                           ; $5172: $00
    nop                                           ; $5173: $00
    nop                                           ; $5174: $00
    nop                                           ; $5175: $00
    add b                                         ; $5176: $80
    nop                                           ; $5177: $00
    ret nz                                        ; $5178: $C0

    add b                                         ; $5179: $80
    ldh [$C0], a                                  ; $517A: $E0 $C0
    ldh a, [$E0]                                  ; $517C: $F0 $E0
    ldh a, [$E0]                                  ; $517E: $F0 $E0
    ld bc, $0300                                  ; $5180: $01 $00 $03
    ld bc, $0001                                  ; $5183: $01 $01 $00
    nop                                           ; $5186: $00
    nop                                           ; $5187: $00
    nop                                           ; $5188: $00
    nop                                           ; $5189: $00
    ld bc, $0300                                  ; $518A: $01 $00 $03
    ld bc, $0307                                  ; $518D: $01 $07 $03
    rst $38                                       ; $5190: $FF
    dec a                                         ; $5191: $3D
    rst $38                                       ; $5192: $FF
    db $DD                                        ; $5193: $DD
    rst $38                                       ; $5194: $FF
    rst $28                                       ; $5195: $EF
    rst $38                                       ; $5196: $FF
    nop                                           ; $5197: $00
    or b                                          ; $5198: $B0
    ld c, a                                       ; $5199: $4F
    jr nz, @-$1F                                  ; $519A: $20 $DF

    pop hl                                        ; $519C: $E1
    sbc $F7                                       ; $519D: $DE $F7
    adc b                                         ; $519F: $88
    ldh a, [$A0]                                  ; $51A0: $F0 $A0
    ldh a, [$A0]                                  ; $51A2: $F0 $A0
    ldh [$C0], a                                  ; $51A4: $E0 $C0
    ldh [rP1], a                                  ; $51A6: $E0 $00
    ret nz                                        ; $51A8: $C0

    nop                                           ; $51A9: $00
    ld h, b                                       ; $51AA: $60
    add b                                         ; $51AB: $80
    ldh a, [rNR41]                                ; $51AC: $F0 $20
    or $00                                        ; $51AE: $F6 $00
    rlca                                          ; $51B0: $07
    inc bc                                        ; $51B1: $03
    rlca                                          ; $51B2: $07
    nop                                           ; $51B3: $00
    nop                                           ; $51B4: $00
    nop                                           ; $51B5: $00
    nop                                           ; $51B6: $00
    nop                                           ; $51B7: $00
    nop                                           ; $51B8: $00
    nop                                           ; $51B9: $00
    nop                                           ; $51BA: $00
    nop                                           ; $51BB: $00
    nop                                           ; $51BC: $00
    nop                                           ; $51BD: $00
    nop                                           ; $51BE: $00
    nop                                           ; $51BF: $00
    rst $18                                       ; $51C0: $DF
    nop                                           ; $51C1: $00
    sbc [hl]                                      ; $51C2: $9E
    ld bc, $010E                                  ; $51C3: $01 $0E $01
    ld b, $01                                     ; $51C6: $06 $01
    rlca                                          ; $51C8: $07
    nop                                           ; $51C9: $00
    ld bc, $0000                                  ; $51CA: $01 $00 $00
    nop                                           ; $51CD: $00
    nop                                           ; $51CE: $00
    nop                                           ; $51CF: $00
    ld sp, hl                                     ; $51D0: $F9
    ld b, $79                                     ; $51D1: $06 $79
    add [hl]                                      ; $51D3: $86
    add hl, sp                                    ; $51D4: $39
    add $39                                       ; $51D5: $C6 $39
    add $2E                                       ; $51D7: $C6 $2E
    ret nz                                        ; $51D9: $C0

    ret nz                                        ; $51DA: $C0

    nop                                           ; $51DB: $00
    nop                                           ; $51DC: $00
    nop                                           ; $51DD: $00
    nop                                           ; $51DE: $00
    nop                                           ; $51DF: $00
    rst $38                                       ; $51E0: $FF
    call $87FF                                    ; $51E1: $CD $FF $87
    ld a, a                                       ; $51E4: $7F
    jr nc, jr_024_521F                            ; $51E5: $30 $38

    rlca                                          ; $51E7: $07
    ld [$0C07], sp                                ; $51E8: $08 $07 $0C
    inc bc                                        ; $51EB: $03
    rrca                                          ; $51EC: $0F
    nop                                           ; $51ED: $00
    rrca                                          ; $51EE: $0F
    rlca                                          ; $51EF: $07
    nop                                           ; $51F0: $00
    nop                                           ; $51F1: $00
    nop                                           ; $51F2: $00
    nop                                           ; $51F3: $00
    add b                                         ; $51F4: $80
    nop                                           ; $51F5: $00
    add b                                         ; $51F6: $80
    nop                                           ; $51F7: $00
    add b                                         ; $51F8: $80
    nop                                           ; $51F9: $00
    nop                                           ; $51FA: $00
    nop                                           ; $51FB: $00
    nop                                           ; $51FC: $00
    nop                                           ; $51FD: $00
    nop                                           ; $51FE: $00
    nop                                           ; $51FF: $00
    ld bc, $0300                                  ; $5200: $01 $00 $03
    ld bc, $0007                                  ; $5203: $01 $07 $00
    rrca                                          ; $5206: $0F
    rlca                                          ; $5207: $07
    rra                                           ; $5208: $1F
    rrca                                          ; $5209: $0F
    rra                                           ; $520A: $1F
    rrca                                          ; $520B: $0F
    ccf                                           ; $520C: $3F
    rra                                           ; $520D: $1F
    ccf                                           ; $520E: $3F
    dec e                                         ; $520F: $1D
    add b                                         ; $5210: $80
    nop                                           ; $5211: $00
    ret nz                                        ; $5212: $C0

    add b                                         ; $5213: $80
    ldh [$80], a                                  ; $5214: $E0 $80
    ldh a, [$E0]                                  ; $5216: $F0 $E0
    ld hl, sp-$10                                 ; $5218: $F8 $F0
    ld hl, sp-$10                                 ; $521A: $F8 $F0
    db $FC                                        ; $521C: $FC
    ld hl, sp-$04                                 ; $521D: $F8 $FC

jr_024_521F:
    cp b                                          ; $521F: $B8
    ld a, a                                       ; $5220: $7F
    dec l                                         ; $5221: $2D
    rst $38                                       ; $5222: $FF
    ld [hl], a                                    ; $5223: $77
    rst $38                                       ; $5224: $FF
    ld [hl], b                                    ; $5225: $70
    ld a, b                                       ; $5226: $78
    rlca                                          ; $5227: $07
    ld a, b                                       ; $5228: $78
    daa                                           ; $5229: $27
    ld a, h                                       ; $522A: $7C
    inc sp                                        ; $522B: $33
    ld a, a                                       ; $522C: $7F
    jr nc, jr_024_526E                            ; $522D: $30 $3F

    rlca                                          ; $522F: $07
    rrca                                          ; $5230: $0F
    nop                                           ; $5231: $00
    ccf                                           ; $5232: $3F
    rrca                                          ; $5233: $0F
    ld a, a                                       ; $5234: $7F
    ccf                                           ; $5235: $3F
    rst $38                                       ; $5236: $FF
    ld a, a                                       ; $5237: $7F
    rst $38                                       ; $5238: $FF
    ld a, [hl]                                    ; $5239: $7E
    rst $38                                       ; $523A: $FF
    ld a, h                                       ; $523B: $7C
    db $FC                                        ; $523C: $FC
    ld [hl], a                                    ; $523D: $77
    push af                                       ; $523E: $F5
    dec hl                                        ; $523F: $2B
    ldh [rP1], a                                  ; $5240: $E0 $00
    ldh [$C0], a                                  ; $5242: $E0 $C0
    ldh a, [$E0]                                  ; $5244: $F0 $E0
    ldh a, [rP1]                                  ; $5246: $F0 $00
    ldh [rP1], a                                  ; $5248: $E0 $00
    ldh [rP1], a                                  ; $524A: $E0 $00
    ld b, b                                       ; $524C: $40
    add b                                         ; $524D: $80
    ld b, b                                       ; $524E: $40
    add b                                         ; $524F: $80
    ld hl, sp+$77                                 ; $5250: $F8 $77
    rst $38                                       ; $5252: $FF
    ld h, b                                       ; $5253: $60
    ld h, b                                       ; $5254: $60
    rra                                           ; $5255: $1F
    ldh a, [$6F]                                  ; $5256: $F0 $6F
    sub b                                         ; $5258: $90
    ld l, a                                       ; $5259: $6F
    ld a, e                                       ; $525A: $7B
    inc [hl]                                      ; $525B: $34
    ld a, a                                       ; $525C: $7F
    dec sp                                        ; $525D: $3B
    ccf                                           ; $525E: $3F
    dec de                                        ; $525F: $1B
    ld b, b                                       ; $5260: $40
    add b                                         ; $5261: $80
    call z, $3E00                                 ; $5262: $CC $00 $3E
    call z, $BC5E                                 ; $5265: $CC $5E $BC
    ld e, h                                       ; $5268: $5C
    cp b                                          ; $5269: $B8
    ld hl, sp+$00                                 ; $526A: $F8 $00
    ret nz                                        ; $526C: $C0

    add b                                         ; $526D: $80

jr_024_526E:
    ret nz                                        ; $526E: $C0

jr_024_526F:
    add b                                         ; $526F: $80
    rra                                           ; $5270: $1F
    nop                                           ; $5271: $00
    rra                                           ; $5272: $1F
    rrca                                          ; $5273: $0F
    ccf                                           ; $5274: $3F
    rra                                           ; $5275: $1F
    ccf                                           ; $5276: $3F
    rra                                           ; $5277: $1F
    ld a, a                                       ; $5278: $7F
    ld [hl+], a                                   ; $5279: $22
    rst $20                                       ; $527A: $E7
    jr @-$77                                      ; $527B: $18 $87

    ld a, b                                       ; $527D: $78
    ld a, h                                       ; $527E: $7C
    nop                                           ; $527F: $00
    ret nz                                        ; $5280: $C0

    nop                                           ; $5281: $00
    ret nz                                        ; $5282: $C0

    add b                                         ; $5283: $80
    ldh [$C0], a                                  ; $5284: $E0 $C0
    ldh a, [$C0]                                  ; $5286: $F0 $C0
    ret z                                         ; $5288: $C8

    jr nc, jr_024_5293                            ; $5289: $30 $08

    ldh a, [$F0]                                  ; $528B: $F0 $F0
    nop                                           ; $528D: $00
    nop                                           ; $528E: $00
    nop                                           ; $528F: $00
    nop                                           ; $5290: $00
    ret nz                                        ; $5291: $C0

    nop                                           ; $5292: $00

jr_024_5293:
    ld h, b                                       ; $5293: $60
    nop                                           ; $5294: $00
    jr nz, jr_024_5297                            ; $5295: $20 $00

jr_024_5297:
    nop                                           ; $5297: $00
    nop                                           ; $5298: $00
    nop                                           ; $5299: $00
    nop                                           ; $529A: $00
    nop                                           ; $529B: $00
    nop                                           ; $529C: $00
    nop                                           ; $529D: $00
    nop                                           ; $529E: $00

jr_024_529F:
    nop                                           ; $529F: $00
    nop                                           ; $52A0: $00
    ld [hl], b                                    ; $52A1: $70
    nop                                           ; $52A2: $00
    ld hl, sp+$00                                 ; $52A3: $F8 $00
    jr c, jr_024_52A7                             ; $52A5: $38 $00

jr_024_52A7:
    jr jr_024_52A9                                ; $52A7: $18 $00

jr_024_52A9:
    stop                                          ; $52A9: $10 $00
    nop                                           ; $52AB: $00
    nop                                           ; $52AC: $00
    nop                                           ; $52AD: $00
    nop                                           ; $52AE: $00
    nop                                           ; $52AF: $00
    ret nz                                        ; $52B0: $C0

    nop                                           ; $52B1: $00
    ldh a, [$C0]                                  ; $52B2: $F0 $C0
    ld hl, sp-$10                                 ; $52B4: $F8 $F0
    db $FC                                        ; $52B6: $FC

jr_024_52B7:
    ld hl, sp-$04                                 ; $52B7: $F8 $FC
    jr jr_024_52B7                                ; $52B9: $18 $FC

    ld [$00F8], sp                                ; $52BB: $08 $F8 $00
    ld e, $E0                                     ; $52BE: $1E $E0
    ld a, [$FC67]                                 ; $52C0: $FA $67 $FC
    ld l, e                                       ; $52C3: $6B
    rst $38                                       ; $52C4: $FF
    ld b, b                                       ; $52C5: $40
    and b                                         ; $52C6: $A0
    ld e, a                                       ; $52C7: $5F
    ld b, h                                       ; $52C8: $44
    dec sp                                        ; $52C9: $3B
    ccf                                           ; $52CA: $3F
    nop                                           ; $52CB: $00
    rlca                                          ; $52CC: $07
    inc bc                                        ; $52CD: $03
    rlca                                          ; $52CE: $07
    inc bc                                        ; $52CF: $03
    ld e, a                                       ; $52D0: $5F
    and $3F                                       ; $52D1: $E6 $3F
    sub $FF                                       ; $52D3: $D6 $FF
    ld [bc], a                                    ; $52D5: $02
    dec b                                         ; $52D6: $05
    ld a, [$EC12]                                 ; $52D7: $FA $12 $EC
    db $FC                                        ; $52DA: $FC
    nop                                           ; $52DB: $00
    ldh a, [$E0]                                  ; $52DC: $F0 $E0
    ldh a, [$E0]                                  ; $52DE: $F0 $E0
    ldh a, [rP1]                                  ; $52E0: $F0 $00
    ldh a, [$E0]                                  ; $52E2: $F0 $E0
    ld hl, sp-$10                                 ; $52E4: $F8 $F0
    ld hl, sp-$40                                 ; $52E6: $F8 $C0
    ret z                                         ; $52E8: $C8

    jr nc, jr_024_526F                            ; $52E9: $30 $84

    ld a, b                                       ; $52EB: $78
    call nz, $F838                                ; $52EC: $C4 $38 $F8
    nop                                           ; $52EF: $00
    ret nz                                        ; $52F0: $C0

    nop                                           ; $52F1: $00
    ldh a, [$C0]                                  ; $52F2: $F0 $C0
    ld hl, sp-$10                                 ; $52F4: $F8 $F0
    db $FC                                        ; $52F6: $FC

jr_024_52F7:
    ld hl, sp-$04                                 ; $52F7: $F8 $FC
    jr jr_024_52F7                                ; $52F9: $18 $FC

    ld [$00F8], sp                                ; $52FB: $08 $F8 $00
    inc d                                         ; $52FE: $14
    add sp, $58                                   ; $52FF: $E8 $58
    ldh [$38], a                                  ; $5301: $E0 $38
    ret nc                                        ; $5303: $D0

    ld hl, sp+$00                                 ; $5304: $F8 $00
    inc c                                         ; $5306: $0C
    ld hl, sp+$14                                 ; $5307: $F8 $14
    add sp, -$04                                  ; $5309: $E8 $FC
    ld [$D8FC], sp                                ; $530B: $08 $FC $D8
    db $FC                                        ; $530E: $FC
    ret c                                         ; $530F: $D8

    ld hl, sp+$00                                 ; $5310: $F8 $00
    ldh a, [$E0]                                  ; $5312: $F0 $E0
    ld hl, sp-$10                                 ; $5314: $F8 $F0
    ld hl, sp-$40                                 ; $5316: $F8 $C0
    ret z                                         ; $5318: $C8

    jr nc, jr_024_529F                            ; $5319: $30 $84

    ld a, b                                       ; $531B: $78
    call nz, $F838                                ; $531C: $C4 $38 $F8
    nop                                           ; $531F: $00
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    nop                                           ; $5322: $00
    nop                                           ; $5323: $00
    nop                                           ; $5324: $00
    nop                                           ; $5325: $00
    nop                                           ; $5326: $00
    nop                                           ; $5327: $00
    rlca                                          ; $5328: $07
    nop                                           ; $5329: $00
    rrca                                          ; $532A: $0F
    rlca                                          ; $532B: $07
    rra                                           ; $532C: $1F
    rrca                                          ; $532D: $0F
    rra                                           ; $532E: $1F
    rrca                                          ; $532F: $0F
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00
    ldh a, [rP1]                                  ; $5338: $F0 $00
    ld hl, sp-$10                                 ; $533A: $F8 $F0
    db $FC                                        ; $533C: $FC
    ld hl, sp-$02                                 ; $533D: $F8 $FE
    db $FC                                        ; $533F: $FC
    rrca                                          ; $5340: $0F
    inc b                                         ; $5341: $04
    rrca                                          ; $5342: $0F
    nop                                           ; $5343: $00
    ld b, $01                                     ; $5344: $06 $01
    rlca                                          ; $5346: $07
    nop                                           ; $5347: $00
    ld b, $01                                     ; $5348: $06 $01
    dec c                                         ; $534A: $0D
    ld [bc], a                                    ; $534B: $02
    ld e, $01                                     ; $534C: $1E $01
    ccf                                           ; $534E: $3F
    nop                                           ; $534F: $00
    cp $1C                                        ; $5350: $FE $1C
    rst $38                                       ; $5352: $FF
    ld b, $17                                     ; $5353: $06 $17
    ld [$966F], a                                 ; $5355: $EA $6F $96
    ld e, $E0                                     ; $5358: $1E $E0
    rst $30                                       ; $535A: $F7
    ld [$E619], sp                                ; $535B: $08 $19 $E6
    ld sp, hl                                     ; $535E: $F9
    ld b, $27                                     ; $535F: $06 $27
    jr jr_024_53AA                                ; $5361: $18 $47

    ld a, [hl-]                                   ; $5363: $3A
    ld b, a                                       ; $5364: $47
    ld a, [hl-]                                   ; $5365: $3A
    ld b, a                                       ; $5366: $47
    ld a, [hl-]                                   ; $5367: $3A
    cpl                                           ; $5368: $2F
    db $10                                        ; $5369: $10
    jr jr_024_536C                                ; $536A: $18 $00

jr_024_536C:
    nop                                           ; $536C: $00
    nop                                           ; $536D: $00
    nop                                           ; $536E: $00
    nop                                           ; $536F: $00
    sbc a                                         ; $5370: $9F
    ld h, b                                       ; $5371: $60
    ld c, $F0                                     ; $5372: $0E $F0
    inc c                                         ; $5374: $0C
    ldh a, [$88]                                  ; $5375: $F0 $88
    ld [hl], b                                    ; $5377: $70
    sbc b                                         ; $5378: $98
    ld h, b                                       ; $5379: $60
    ldh [rP1], a                                  ; $537A: $E0 $00
    nop                                           ; $537C: $00
    nop                                           ; $537D: $00
    nop                                           ; $537E: $00
    nop                                           ; $537F: $00
    ret nz                                        ; $5380: $C0

    nop                                           ; $5381: $00
    ldh a, [$C0]                                  ; $5382: $F0 $C0
    ld hl, sp-$10                                 ; $5384: $F8 $F0
    db $FC                                        ; $5386: $FC

jr_024_5387:
    ld hl, sp-$04                                 ; $5387: $F8 $FC
    jr jr_024_5387                                ; $5389: $18 $FC

    ld [$00F8], sp                                ; $538B: $08 $F8 $00
    rla                                           ; $538E: $17
    add sp, $3A                                   ; $538F: $E8 $3A
    rlca                                          ; $5391: $07
    inc e                                         ; $5392: $1C
    dec bc                                        ; $5393: $0B
    rra                                           ; $5394: $1F
    nop                                           ; $5395: $00
    daa                                           ; $5396: $27
    rra                                           ; $5397: $1F
    cpl                                           ; $5398: $2F
    inc de                                        ; $5399: $13
    rra                                           ; $539A: $1F
    nop                                           ; $539B: $00
    rlca                                          ; $539C: $07
    inc bc                                        ; $539D: $03
    rlca                                          ; $539E: $07
    inc bc                                        ; $539F: $03
    ld e, a                                       ; $53A0: $5F
    db $E3                                        ; $53A1: $E3
    ccf                                           ; $53A2: $3F
    db $D3                                        ; $53A3: $D3
    rst $38                                       ; $53A4: $FF
    ld bc, $7A85                                  ; $53A5: $01 $85 $7A
    sub d                                         ; $53A8: $92
    ld l, h                                       ; $53A9: $6C

jr_024_53AA:
    db $FC                                        ; $53AA: $FC
    nop                                           ; $53AB: $00
    ldh a, [$E0]                                  ; $53AC: $F0 $E0
    ldh a, [$E0]                                  ; $53AE: $F0 $E0
    inc bc                                        ; $53B0: $03
    nop                                           ; $53B1: $00
    rrca                                          ; $53B2: $0F
    inc bc                                        ; $53B3: $03

jr_024_53B4:
    rra                                           ; $53B4: $1F
    rrca                                          ; $53B5: $0F
    ccf                                           ; $53B6: $3F
    rra                                           ; $53B7: $1F
    ccf                                           ; $53B8: $3F
    jr @+$41                                      ; $53B9: $18 $3F

    db $10                                        ; $53BB: $10
    rra                                           ; $53BC: $1F
    nop                                           ; $53BD: $00
    add sp, $17                                   ; $53BE: $E8 $17
    ld a, [$FCC7]                                 ; $53C0: $FA $C7 $FC
    set 7, a                                      ; $53C3: $CB $FF
    add b                                         ; $53C5: $80
    and c                                         ; $53C6: $A1
    ld e, [hl]                                    ; $53C7: $5E
    ld c, c                                       ; $53C8: $49
    ld [hl], $3F                                  ; $53C9: $36 $3F
    nop                                           ; $53CB: $00
    rlca                                          ; $53CC: $07
    inc bc                                        ; $53CD: $03
    rlca                                          ; $53CE: $07
    inc bc                                        ; $53CF: $03
    ld e, h                                       ; $53D0: $5C
    ldh [$38], a                                  ; $53D1: $E0 $38
    ret nc                                        ; $53D3: $D0

    ld hl, sp+$00                                 ; $53D4: $F8 $00
    db $E4                                        ; $53D6: $E4
    ld hl, sp-$0C                                 ; $53D7: $F8 $F4
    ret z                                         ; $53D9: $C8

    ld hl, sp+$00                                 ; $53DA: $F8 $00
    ldh a, [$E0]                                  ; $53DC: $F0 $E0
    ldh a, [$E0]                                  ; $53DE: $F0 $E0
    rrca                                          ; $53E0: $0F
    nop                                           ; $53E1: $00
    db $10                                        ; $53E2: $10
    rrca                                          ; $53E3: $0F
    jr nz, jr_024_5405                            ; $53E4: $20 $1F

    jr nz, jr_024_5407                            ; $53E6: $20 $1F

    jr nz, jr_024_5409                            ; $53E8: $20 $1F

    jr nz, @+$21                                  ; $53EA: $20 $1F

    db $10                                        ; $53EC: $10
    rrca                                          ; $53ED: $0F
    ld a, h                                       ; $53EE: $7C
    inc bc                                        ; $53EF: $03
    ret nz                                        ; $53F0: $C0

    nop                                           ; $53F1: $00
    jr nz, jr_024_53B4                            ; $53F2: $20 $C0

    db $10                                        ; $53F4: $10
    ldh [$30], a                                  ; $53F5: $E0 $30
    ldh [$B0], a                                  ; $53F7: $E0 $B0
    ldh [rNR10], a                                ; $53F9: $E0 $10
    ldh [$F0], a                                  ; $53FB: $E0 $F0
    nop                                           ; $53FD: $00
    ld d, b                                       ; $53FE: $50
    ldh [$3E], a                                  ; $53FF: $E0 $3E
    ld bc, $001F                                  ; $5401: $01 $1F $00
    ccf                                           ; $5404: $3F

jr_024_5405:
    inc b                                         ; $5405: $04
    ld a, a                                       ; $5406: $7F

jr_024_5407:
    inc bc                                        ; $5407: $03
    ld a, a                                       ; $5408: $7F

jr_024_5409:
    ld bc, $017F                                  ; $5409: $01 $7F $01
    ld c, a                                       ; $540C: $4F
    ld sp, $718F                                  ; $540D: $31 $8F $71
    db $10                                        ; $5410: $10
    ldh [$E6], a                                  ; $5411: $E0 $E6
    nop                                           ; $5413: $00
    ld sp, hl                                     ; $5414: $F9
    ld b, [hl]                                    ; $5415: $46
    ld sp, hl                                     ; $5416: $F9
    add $FE                                       ; $5417: $C6 $FE
    add b                                         ; $5419: $80
    ld hl, sp-$80                                 ; $541A: $F8 $80
    ldh a, [$80]                                  ; $541C: $F0 $80
    ldh a, [$80]                                  ; $541E: $F0 $80
    rst $38                                       ; $5420: $FF
    ld d, c                                       ; $5421: $51
    rst $38                                       ; $5422: $FF
    add hl, hl                                    ; $5423: $29
    rst $38                                       ; $5424: $FF
    dec d                                         ; $5425: $15
    rst $38                                       ; $5426: $FF
    inc bc                                        ; $5427: $03
    ld a, a                                       ; $5428: $7F
    inc bc                                        ; $5429: $03
    ccf                                           ; $542A: $3F
    inc bc                                        ; $542B: $03
    ccf                                           ; $542C: $3F
    nop                                           ; $542D: $00
    rra                                           ; $542E: $1F
    nop                                           ; $542F: $00
    ldh a, [$80]                                  ; $5430: $F0 $80
    ldh a, [$80]                                  ; $5432: $F0 $80
    ldh a, [$80]                                  ; $5434: $F0 $80
    ldh a, [$80]                                  ; $5436: $F0 $80
    ld hl, sp-$80                                 ; $5438: $F8 $80
    ld hl, sp+$00                                 ; $543A: $F8 $00
    ldh a, [rP1]                                  ; $543C: $F0 $00
    add b                                         ; $543E: $80
    nop                                           ; $543F: $00
    nop                                           ; $5440: $00
    ret nz                                        ; $5441: $C0

    nop                                           ; $5442: $00
    ld h, b                                       ; $5443: $60
    nop                                           ; $5444: $00
    jr nz, jr_024_5447                            ; $5445: $20 $00

jr_024_5447:
    nop                                           ; $5447: $00
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    nop                                           ; $544A: $00
    nop                                           ; $544B: $00
    nop                                           ; $544C: $00
    nop                                           ; $544D: $00
    nop                                           ; $544E: $00
    nop                                           ; $544F: $00
    nop                                           ; $5450: $00
    ld [hl], b                                    ; $5451: $70
    nop                                           ; $5452: $00
    ld hl, sp+$00                                 ; $5453: $F8 $00
    jr c, jr_024_5457                             ; $5455: $38 $00

jr_024_5457:
    jr jr_024_5459                                ; $5457: $18 $00

jr_024_5459:
    stop                                          ; $5459: $10 $00
    nop                                           ; $545B: $00
    nop                                           ; $545C: $00
    nop                                           ; $545D: $00
    nop                                           ; $545E: $00
    nop                                           ; $545F: $00
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    nop                                           ; $5463: $00
    nop                                           ; $5464: $00
    nop                                           ; $5465: $00
    nop                                           ; $5466: $00
    nop                                           ; $5467: $00
    nop                                           ; $5468: $00
    nop                                           ; $5469: $00
    ccf                                           ; $546A: $3F
    nop                                           ; $546B: $00
    ld b, b                                       ; $546C: $40
    ccf                                           ; $546D: $3F
    add b                                         ; $546E: $80
    ld a, a                                       ; $546F: $7F
    nop                                           ; $5470: $00
    nop                                           ; $5471: $00
    nop                                           ; $5472: $00
    nop                                           ; $5473: $00
    nop                                           ; $5474: $00
    nop                                           ; $5475: $00
    nop                                           ; $5476: $00
    nop                                           ; $5477: $00
    nop                                           ; $5478: $00
    nop                                           ; $5479: $00
    nop                                           ; $547A: $00
    nop                                           ; $547B: $00
    add b                                         ; $547C: $80
    nop                                           ; $547D: $00
    ld b, b                                       ; $547E: $40
    add b                                         ; $547F: $80
    inc bc                                        ; $5480: $03
    nop                                           ; $5481: $00
    rlca                                          ; $5482: $07
    nop                                           ; $5483: $00
    inc bc                                        ; $5484: $03
    nop                                           ; $5485: $00
    rlca                                          ; $5486: $07
    nop                                           ; $5487: $00
    rrca                                          ; $5488: $0F
    nop                                           ; $5489: $00
    rrca                                          ; $548A: $0F
    nop                                           ; $548B: $00
    rlca                                          ; $548C: $07
    nop                                           ; $548D: $00
    rlca                                          ; $548E: $07
    nop                                           ; $548F: $00
    rlca                                          ; $5490: $07
    nop                                           ; $5491: $00
    ld [$1007], sp                                ; $5492: $08 $07 $10
    rrca                                          ; $5495: $0F
    db $10                                        ; $5496: $10
    rrca                                          ; $5497: $0F
    ld d, c                                       ; $5498: $51
    rrca                                          ; $5499: $0F
    push af                                       ; $549A: $F5
    ld c, a                                       ; $549B: $4F
    ldh a, [rVBK]                                 ; $549C: $F0 $4F
    rst $30                                       ; $549E: $F7
    ld c, b                                       ; $549F: $48
    jp z, $CC77                                   ; $54A0: $CA $77 $CC

    inc sp                                        ; $54A3: $33
    ld a, a                                       ; $54A4: $7F
    nop                                           ; $54A5: $00
    ld a, a                                       ; $54A6: $7F
    ld b, $3F                                     ; $54A7: $06 $3F
    inc bc                                        ; $54A9: $03
    ccf                                           ; $54AA: $3F
    inc bc                                        ; $54AB: $03
    ccf                                           ; $54AC: $3F
    inc bc                                        ; $54AD: $03
    rra                                           ; $54AE: $1F
    inc bc                                        ; $54AF: $03
    rra                                           ; $54B0: $1F
    inc bc                                        ; $54B1: $03
    rra                                           ; $54B2: $1F
    inc bc                                        ; $54B3: $03
    rra                                           ; $54B4: $1F
    inc bc                                        ; $54B5: $03
    rra                                           ; $54B6: $1F
    inc bc                                        ; $54B7: $03
    rra                                           ; $54B8: $1F
    inc bc                                        ; $54B9: $03
    ccf                                           ; $54BA: $3F
    inc bc                                        ; $54BB: $03
    ccf                                           ; $54BC: $3F
    ld bc, $001F                                  ; $54BD: $01 $1F $00
    add b                                         ; $54C0: $80
    ld a, a                                       ; $54C1: $7F
    add e                                         ; $54C2: $83
    ld a, a                                       ; $54C3: $7F
    adc e                                         ; $54C4: $8B
    ld a, a                                       ; $54C5: $7F
    ret nz                                        ; $54C6: $C0

    ccf                                           ; $54C7: $3F
    rst $28                                       ; $54C8: $EF
    ld d, b                                       ; $54C9: $50
    or $29                                        ; $54CA: $F6 $29
    ld hl, sp+$37                                 ; $54CC: $F8 $37
    rst $38                                       ; $54CE: $FF
    jr jr_024_5511                                ; $54CF: $18 $40

    add b                                         ; $54D1: $80
    ld b, b                                       ; $54D2: $40
    add b                                         ; $54D3: $80
    ld b, b                                       ; $54D4: $40
    add b                                         ; $54D5: $80
    ld b, b                                       ; $54D6: $40
    add b                                         ; $54D7: $80
    ret nz                                        ; $54D8: $C0

    nop                                           ; $54D9: $00
    ret nz                                        ; $54DA: $C0

    nop                                           ; $54DB: $00
    ld b, b                                       ; $54DC: $40
    add b                                         ; $54DD: $80
    add b                                         ; $54DE: $80
    nop                                           ; $54DF: $00
    ldh [rP1], a                                  ; $54E0: $E0 $00
    db $10                                        ; $54E2: $10
    ldh [$08], a                                  ; $54E3: $E0 $08
    ldh a, [$08]                                  ; $54E5: $F0 $08
    ldh a, [$88]                                  ; $54E7: $F0 $88
    ldh a, [$A8]                                  ; $54E9: $F0 $A8
    ldh a, [$08]                                  ; $54EB: $F0 $08
    ldh a, [$EE]                                  ; $54ED: $F0 $EE
    db $10                                        ; $54EF: $10
    ld e, h                                       ; $54F0: $5C
    ldh [$38], a                                  ; $54F1: $E0 $38
    ret nz                                        ; $54F3: $C0

    ld hl, sp+$00                                 ; $54F4: $F8 $00
    db $FC                                        ; $54F6: $FC
    ld h, b                                       ; $54F7: $60
    db $FC                                        ; $54F8: $FC
    ret nz                                        ; $54F9: $C0

    db $FC                                        ; $54FA: $FC
    ret nz                                        ; $54FB: $C0

    and $D8                                       ; $54FC: $E6 $D8
    and $DC                                       ; $54FE: $E6 $DC
    cp $C4                                        ; $5500: $FE $C4
    cp $C4                                        ; $5502: $FE $C4
    cp $C4                                        ; $5504: $FE $C4
    db $FC                                        ; $5506: $FC
    ret nz                                        ; $5507: $C0

    ld hl, sp-$40                                 ; $5508: $F8 $C0
    db $FC                                        ; $550A: $FC
    ret nz                                        ; $550B: $C0

    db $FC                                        ; $550C: $FC
    add b                                         ; $550D: $80
    ld hl, sp+$00                                 ; $550E: $F8 $00
    rrca                                          ; $5510: $0F

jr_024_5511:
    nop                                           ; $5511: $00
    rrca                                          ; $5512: $0F
    nop                                           ; $5513: $00
    rra                                           ; $5514: $1F
    nop                                           ; $5515: $00
    ccf                                           ; $5516: $3F
    nop                                           ; $5517: $00
    ld a, a                                       ; $5518: $7F
    nop                                           ; $5519: $00
    ld a, a                                       ; $551A: $7F
    nop                                           ; $551B: $00
    dec sp                                        ; $551C: $3B
    nop                                           ; $551D: $00
    nop                                           ; $551E: $00
    nop                                           ; $551F: $00
    rst $38                                       ; $5520: $FF
    rrca                                          ; $5521: $0F
    rst $08                                       ; $5522: $CF
    ld [hl], $CF                                  ; $5523: $36 $CF
    jr c, @+$01                                   ; $5525: $38 $FF

    inc d                                         ; $5527: $14
    rst $38                                       ; $5528: $FF
    ld c, d                                       ; $5529: $4A
    cp $C5                                        ; $552A: $FE $C5
    rst $08                                       ; $552C: $CF
    nop                                           ; $552D: $00
    nop                                           ; $552E: $00
    nop                                           ; $552F: $00
    add b                                         ; $5530: $80
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    nop                                           ; $5534: $00
    nop                                           ; $5535: $00
    ldh a, [rP1]                                  ; $5536: $F0 $00
    ld hl, sp-$10                                 ; $5538: $F8 $F0
    ld [hl], b                                    ; $553A: $70
    add b                                         ; $553B: $80
    ret nz                                        ; $553C: $C0

    nop                                           ; $553D: $00
    nop                                           ; $553E: $00
    nop                                           ; $553F: $00
    nop                                           ; $5540: $00
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    ld [bc], a                                    ; $5543: $02
    ld b, b                                       ; $5544: $40
    ld b, b                                       ; $5545: $40
    ld [bc], a                                    ; $5546: $02
    ld a, [bc]                                    ; $5547: $0A
    inc d                                         ; $5548: $14
    dec b                                         ; $5549: $05
    rrca                                          ; $554A: $0F
    rrca                                          ; $554B: $0F
    ld d, c                                       ; $554C: $51
    ld d, l                                       ; $554D: $55
    dec d                                         ; $554E: $15
    dec de                                        ; $554F: $1B
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    ld b, d                                       ; $5552: $42
    ld b, d                                       ; $5553: $42
    nop                                           ; $5554: $00
    nop                                           ; $5555: $00
    add b                                         ; $5556: $80
    and h                                         ; $5557: $A4
    ld d, b                                       ; $5558: $50
    jr jr_024_559B                                ; $5559: $18 $40

    ld d, b                                       ; $555B: $50
    or b                                          ; $555C: $B0
    jr nc, @-$5A                                  ; $555D: $30 $A4

    push hl                                       ; $555F: $E5
    ld l, $6E                                     ; $5560: $2E $6E
    ld h, $33                                     ; $5562: $26 $33
    ld e, a                                       ; $5564: $5F
    ld e, [hl]                                    ; $5565: $5E
    add hl, sp                                    ; $5566: $39
    ld l, l                                       ; $5567: $6D
    ld [de], a                                    ; $5568: $12
    sub [hl]                                      ; $5569: $96
    add hl, bc                                    ; $556A: $09
    add hl, bc                                    ; $556B: $09
    nop                                           ; $556C: $00
    jr nz, jr_024_556F                            ; $556D: $20 $00

jr_024_556F:
    nop                                           ; $556F: $00
    ld b, b                                       ; $5570: $40
    ret nc                                        ; $5571: $D0

    ldh [$A0], a                                  ; $5572: $E0 $A0
    or b                                          ; $5574: $B0
    or b                                          ; $5575: $B0
    ld c, b                                       ; $5576: $48
    ret z                                         ; $5577: $C8

    sub h                                         ; $5578: $94
    inc d                                         ; $5579: $14
    ld c, b                                       ; $557A: $48
    ld c, b                                       ; $557B: $48
    inc h                                         ; $557C: $24
    and h                                         ; $557D: $A4
    ld [$0008], sp                                ; $557E: $08 $08 $00
    nop                                           ; $5581: $00
    nop                                           ; $5582: $00
    nop                                           ; $5583: $00
    ld bc, $0103                                  ; $5584: $01 $03 $01
    nop                                           ; $5587: $00
    nop                                           ; $5588: $00
    nop                                           ; $5589: $00
    nop                                           ; $558A: $00
    nop                                           ; $558B: $00
    nop                                           ; $558C: $00
    nop                                           ; $558D: $00
    nop                                           ; $558E: $00
    nop                                           ; $558F: $00
    dec l                                         ; $5590: $2D
    scf                                           ; $5591: $37
    ld d, d                                       ; $5592: $52
    sbc d                                         ; $5593: $9A
    nop                                           ; $5594: $00
    nop                                           ; $5595: $00
    or h                                          ; $5596: $B4
    db $E4                                        ; $5597: $E4
    ld a, e                                       ; $5598: $7B
    ld e, l                                       ; $5599: $5D
    dec e                                         ; $559A: $1D

jr_024_559B:
    ld d, e                                       ; $559B: $53
    inc c                                         ; $559C: $0C
    inc c                                         ; $559D: $0C
    nop                                           ; $559E: $00
    nop                                           ; $559F: $00
    ld bc, $0201                                  ; $55A0: $01 $01 $02
    ld b, $0C                                     ; $55A3: $06 $0C
    inc c                                         ; $55A5: $0C
    inc b                                         ; $55A6: $04
    rlca                                          ; $55A7: $07
    ld bc, $0001                                  ; $55A8: $01 $01 $00
    ld [bc], a                                    ; $55AB: $02
    nop                                           ; $55AC: $00
    nop                                           ; $55AD: $00
    nop                                           ; $55AE: $00
    nop                                           ; $55AF: $00
    nop                                           ; $55B0: $00
    nop                                           ; $55B1: $00
    nop                                           ; $55B2: $00
    nop                                           ; $55B3: $00
    nop                                           ; $55B4: $00
    nop                                           ; $55B5: $00
    nop                                           ; $55B6: $00
    nop                                           ; $55B7: $00
    nop                                           ; $55B8: $00
    nop                                           ; $55B9: $00
    add hl, hl                                    ; $55BA: $29
    dec hl                                        ; $55BB: $2B
    ld d, h                                       ; $55BC: $54
    call nc, RST_00                               ; $55BD: $D4 $00 $00
    add b                                         ; $55C0: $80
    add b                                         ; $55C1: $80
    nop                                           ; $55C2: $00
    nop                                           ; $55C3: $00
    ld e, d                                       ; $55C4: $5A
    ld e, d                                       ; $55C5: $5A
    xor l                                         ; $55C6: $AD
    db $ED                                        ; $55C7: $ED
    cp e                                          ; $55C8: $BB
    cp a                                          ; $55C9: $BF
    inc b                                         ; $55CA: $04
    ld d, $00                                     ; $55CB: $16 $00
    nop                                           ; $55CD: $00
    nop                                           ; $55CE: $00
    nop                                           ; $55CF: $00
    nop                                           ; $55D0: $00
    nop                                           ; $55D1: $00
    nop                                           ; $55D2: $00
    nop                                           ; $55D3: $00
    nop                                           ; $55D4: $00
    nop                                           ; $55D5: $00
    nop                                           ; $55D6: $00
    nop                                           ; $55D7: $00
    ld [bc], a                                    ; $55D8: $02
    ld [bc], a                                    ; $55D9: $02
    nop                                           ; $55DA: $00
    ld bc, $2E2A                                  ; $55DB: $01 $2A $2E
    dec d                                         ; $55DE: $15
    dec d                                         ; $55DF: $15
    nop                                           ; $55E0: $00
    nop                                           ; $55E1: $00
    nop                                           ; $55E2: $00
    nop                                           ; $55E3: $00
    nop                                           ; $55E4: $00
    nop                                           ; $55E5: $00
    nop                                           ; $55E6: $00
    nop                                           ; $55E7: $00
    ld d, e                                       ; $55E8: $53
    ld e, e                                       ; $55E9: $5B
    and b                                         ; $55EA: $A0
    and b                                         ; $55EB: $A0
    ld [$0048], sp                                ; $55EC: $08 $48 $00
    nop                                           ; $55EF: $00
    jr z, jr_024_562A                             ; $55F0: $28 $38

    inc h                                         ; $55F2: $24
    inc l                                         ; $55F3: $2C
    ld e, d                                       ; $55F4: $5A
    ld e, e                                       ; $55F5: $5B
    dec b                                         ; $55F6: $05
    rrca                                          ; $55F7: $0F
    ld [hl+], a                                   ; $55F8: $22
    ld [hl+], a                                   ; $55F9: $22
    inc b                                         ; $55FA: $04
    dec b                                         ; $55FB: $05
    nop                                           ; $55FC: $00
    nop                                           ; $55FD: $00
    inc b                                         ; $55FE: $04
    inc b                                         ; $55FF: $04
    nop                                           ; $5600: $00
    nop                                           ; $5601: $00
    jr nz, jr_024_5624                            ; $5602: $20 $20

    nop                                           ; $5604: $00
    nop                                           ; $5605: $00
    ld c, b                                       ; $5606: $48
    ld c, b                                       ; $5607: $48
    or l                                          ; $5608: $B5
    push af                                       ; $5609: $F5
    ld e, e                                       ; $560A: $5B
    ld e, a                                       ; $560B: $5F
    dec h                                         ; $560C: $25
    dec [hl]                                      ; $560D: $35
    adc b                                         ; $560E: $88
    adc b                                         ; $560F: $88
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    ld bc, $0A0A                                  ; $5613: $01 $0A $0A
    ld de, $2811                                  ; $5616: $11 $11 $28
    jr z, jr_024_561F                             ; $5619: $28 $04

    inc b                                         ; $561B: $04
    ld d, b                                       ; $561C: $50
    ld d, b                                       ; $561D: $50
    nop                                           ; $561E: $00

jr_024_561F:
    ld [$4444], sp                                ; $561F: $08 $44 $44
    nop                                           ; $5622: $00
    nop                                           ; $5623: $00

jr_024_5624:
    nop                                           ; $5624: $00
    nop                                           ; $5625: $00
    nop                                           ; $5626: $00
    nop                                           ; $5627: $00
    nop                                           ; $5628: $00
    nop                                           ; $5629: $00

jr_024_562A:
    nop                                           ; $562A: $00
    nop                                           ; $562B: $00
    nop                                           ; $562C: $00
    nop                                           ; $562D: $00
    ld b, b                                       ; $562E: $40
    ld b, b                                       ; $562F: $40
    ld [hl+], a                                   ; $5630: $22
    ld [hl+], a                                   ; $5631: $22
    ld b, h                                       ; $5632: $44
    ld b, l                                       ; $5633: $45
    nop                                           ; $5634: $00
    nop                                           ; $5635: $00
    inc d                                         ; $5636: $14
    inc d                                         ; $5637: $14
    nop                                           ; $5638: $00
    nop                                           ; $5639: $00
    ld [bc], a                                    ; $563A: $02
    ld [bc], a                                    ; $563B: $02
    nop                                           ; $563C: $00
    nop                                           ; $563D: $00
    ld bc, $0001                                  ; $563E: $01 $01 $00
    nop                                           ; $5641: $00
    ld b, d                                       ; $5642: $42
    ld b, d                                       ; $5643: $42
    dec b                                         ; $5644: $05
    dec d                                         ; $5645: $15
    ld [$A208], sp                                ; $5646: $08 $08 $A2
    and d                                         ; $5649: $A2
    nop                                           ; $564A: $00
    nop                                           ; $564B: $00
    jr nz, jr_024_566E                            ; $564C: $20 $20

    ld c, b                                       ; $564E: $48
    ld c, b                                       ; $564F: $48
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
    ld [$0008], sp                                ; $565C: $08 $08 $00
    nop                                           ; $565F: $00
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00
    nop                                           ; $5664: $00
    nop                                           ; $5665: $00
    inc b                                         ; $5666: $04
    inc b                                         ; $5667: $04
    nop                                           ; $5668: $00
    nop                                           ; $5669: $00
    nop                                           ; $566A: $00
    nop                                           ; $566B: $00
    nop                                           ; $566C: $00
    nop                                           ; $566D: $00

jr_024_566E:
    ld b, b                                       ; $566E: $40
    ld b, b                                       ; $566F: $40

jr_024_5670:
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    nop                                           ; $5672: $00
    nop                                           ; $5673: $00
    db $10                                        ; $5674: $10
    db $10                                        ; $5675: $10
    ld [bc], a                                    ; $5676: $02
    ld [bc], a                                    ; $5677: $02
    nop                                           ; $5678: $00
    nop                                           ; $5679: $00
    nop                                           ; $567A: $00
    nop                                           ; $567B: $00
    ld bc, $0001                                  ; $567C: $01 $01 $00
    nop                                           ; $567F: $00
    nop                                           ; $5680: $00
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    nop                                           ; $5683: $00
    jr nz, jr_024_56A6                            ; $5684: $20 $20

    nop                                           ; $5686: $00
    nop                                           ; $5687: $00
    nop                                           ; $5688: $00
    nop                                           ; $5689: $00
    ld [$0008], sp                                ; $568A: $08 $08 $00
    nop                                           ; $568D: $00
    nop                                           ; $568E: $00
    nop                                           ; $568F: $00
    rlca                                          ; $5690: $07
    nop                                           ; $5691: $00
    rrca                                          ; $5692: $0F
    rlca                                          ; $5693: $07
    rra                                           ; $5694: $1F
    rrca                                          ; $5695: $0F
    ccf                                           ; $5696: $3F
    rra                                           ; $5697: $1F
    ccf                                           ; $5698: $3F
    inc e                                         ; $5699: $1C
    ld a, a                                       ; $569A: $7F
    jr nc, jr_024_5712                            ; $569B: $30 $75

    ld a, [hl+]                                   ; $569D: $2A
    ld a, c                                       ; $569E: $79
    ld [hl], $E0                                  ; $569F: $36 $E0
    nop                                           ; $56A1: $00
    ldh a, [$E0]                                  ; $56A2: $F0 $E0
    ld hl, sp-$50                                 ; $56A4: $F8 $B0

jr_024_56A6:
    ld hl, sp-$30                                 ; $56A6: $F8 $D0
    ldh a, [rP1]                                  ; $56A8: $F0 $00
    ldh a, [rP1]                                  ; $56AA: $F0 $00
    jr nc, jr_024_566E                            ; $56AC: $30 $C0

    jr nc, jr_024_5670                            ; $56AE: $30 $C0

    rlca                                          ; $56B0: $07
    nop                                           ; $56B1: $00
    rrca                                          ; $56B2: $0F
    rlca                                          ; $56B3: $07
    rra                                           ; $56B4: $1F
    rrca                                          ; $56B5: $0F
    ccf                                           ; $56B6: $3F
    rra                                           ; $56B7: $1F
    ccf                                           ; $56B8: $3F
    ld e, $3F                                     ; $56B9: $1E $3F
    db $10                                        ; $56BB: $10
    rra                                           ; $56BC: $1F
    nop                                           ; $56BD: $00
    ld a, [hl+]                                   ; $56BE: $2A
    dec d                                         ; $56BF: $15
    ret nz                                        ; $56C0: $C0

    nop                                           ; $56C1: $00
    ldh a, [$C0]                                  ; $56C2: $F0 $C0
    ld hl, sp-$10                                 ; $56C4: $F8 $F0
    db $FC                                        ; $56C6: $FC
    ld a, b                                       ; $56C7: $78
    db $FC                                        ; $56C8: $FC
    ld hl, sp-$04                                 ; $56C9: $F8 $FC
    ld [$00F8], sp                                ; $56CB: $08 $F8 $00
    ld d, h                                       ; $56CE: $54
    xor b                                         ; $56CF: $A8
    rlca                                          ; $56D0: $07
    nop                                           ; $56D1: $00
    rrca                                          ; $56D2: $0F
    rlca                                          ; $56D3: $07
    rrca                                          ; $56D4: $0F
    rlca                                          ; $56D5: $07
    rra                                           ; $56D6: $1F
    dec c                                         ; $56D7: $0D
    rra                                           ; $56D8: $1F
    rrca                                          ; $56D9: $0F
    rra                                           ; $56DA: $1F
    rrca                                          ; $56DB: $0F
    cpl                                           ; $56DC: $2F
    rla                                           ; $56DD: $17
    rra                                           ; $56DE: $1F
    rlca                                          ; $56DF: $07
    ldh [rP1], a                                  ; $56E0: $E0 $00
    ldh a, [$E0]                                  ; $56E2: $F0 $E0
    ld hl, sp-$10                                 ; $56E4: $F8 $F0
    db $FC                                        ; $56E6: $FC
    ld hl, sp-$04                                 ; $56E7: $F8 $FC
    ld hl, sp-$08                                 ; $56E9: $F8 $F8
    ldh a, [$F4]                                  ; $56EB: $F0 $F4
    add sp, -$08                                  ; $56ED: $E8 $F8
    ldh [$03], a                                  ; $56EF: $E0 $03
    nop                                           ; $56F1: $00
    rlca                                          ; $56F2: $07
    inc bc                                        ; $56F3: $03
    rrca                                          ; $56F4: $0F
    rlca                                          ; $56F5: $07
    rra                                           ; $56F6: $1F
    dec c                                         ; $56F7: $0D
    rra                                           ; $56F8: $1F
    rrca                                          ; $56F9: $0F
    rra                                           ; $56FA: $1F
    rrca                                          ; $56FB: $0F
    rra                                           ; $56FC: $1F
    rrca                                          ; $56FD: $0F
    rra                                           ; $56FE: $1F
    rlca                                          ; $56FF: $07
    ld hl, sp+$00                                 ; $5700: $F8 $00
    db $FC                                        ; $5702: $FC
    ld a, b                                       ; $5703: $78
    cp $FC                                        ; $5704: $FE $FC
    cp $FC                                        ; $5706: $FE $FC
    cp $FC                                        ; $5708: $FE $FC
    cp $E4                                        ; $570A: $FE $E4
    db $EC                                        ; $570C: $EC
    ret nc                                        ; $570D: $D0

    ret z                                         ; $570E: $C8

    or b                                          ; $570F: $B0
    inc a                                         ; $5710: $3C
    inc bc                                        ; $5711: $03

jr_024_5712:
    rra                                           ; $5712: $1F
    nop                                           ; $5713: $00

jr_024_5714:
    ccf                                           ; $5714: $3F
    inc b                                         ; $5715: $04
    ld a, a                                       ; $5716: $7F
    inc bc                                        ; $5717: $03
    ld a, a                                       ; $5718: $7F
    ld bc, $017F                                  ; $5719: $01 $7F $01
    ld c, a                                       ; $571C: $4F
    ld sp, $718F                                  ; $571D: $31 $8F $71
    db $10                                        ; $5720: $10
    ldh [$E0], a                                  ; $5721: $E0 $E0
    nop                                           ; $5723: $00
    ldh a, [rLCDC]                                ; $5724: $F0 $40
    ldh a, [$C0]                                  ; $5726: $F0 $C0
    ldh a, [$80]                                  ; $5728: $F0 $80
    ld hl, sp-$80                                 ; $572A: $F8 $80
    db $EC                                        ; $572C: $EC
    sub b                                         ; $572D: $90
    db $EC                                        ; $572E: $EC
    sbc b                                         ; $572F: $98
    ld a, [de]                                    ; $5730: $1A
    dec b                                         ; $5731: $05
    inc e                                         ; $5732: $1C
    dec bc                                        ; $5733: $0B
    rra                                           ; $5734: $1F
    nop                                           ; $5735: $00
    ccf                                           ; $5736: $3F
    ld b, $3F                                     ; $5737: $06 $3F
    inc bc                                        ; $5739: $03
    ccf                                           ; $573A: $3F
    inc bc                                        ; $573B: $03
    ld h, a                                       ; $573C: $67
    add hl, de                                    ; $573D: $19
    ld h, a                                       ; $573E: $67
    add hl, sp                                    ; $573F: $39
    ld e, b                                       ; $5740: $58
    and b                                         ; $5741: $A0
    jr c, jr_024_5714                             ; $5742: $38 $D0

    ld hl, sp+$00                                 ; $5744: $F8 $00
    db $FC                                        ; $5746: $FC
    ld h, b                                       ; $5747: $60
    db $FC                                        ; $5748: $FC
    ret nz                                        ; $5749: $C0

    db $FC                                        ; $574A: $FC
    ret nz                                        ; $574B: $C0

    and $98                                       ; $574C: $E6 $98
    and $9C                                       ; $574E: $E6 $9C
    rrca                                          ; $5750: $0F

jr_024_5751:
    rlca                                          ; $5751: $07
    rra                                           ; $5752: $1F
    dec bc                                        ; $5753: $0B
    ccf                                           ; $5754: $3F
    inc c                                         ; $5755: $0C
    ccf                                           ; $5756: $3F
    ld b, $3F                                     ; $5757: $06 $3F
    inc bc                                        ; $5759: $03
    ld l, a                                       ; $575A: $6F
    db $10                                        ; $575B: $10
    ld l, a                                       ; $575C: $6F
    jr nc, jr_024_57DE                            ; $575D: $30 $7F

    jr nz, jr_024_5751                            ; $575F: $20 $F0

    ret nz                                        ; $5761: $C0

    ld hl, sp-$70                                 ; $5762: $F8 $90
    db $FC                                        ; $5764: $FC
    jr nc, @-$02                                  ; $5765: $30 $FC

    ld [hl], b                                    ; $5767: $70
    db $FC                                        ; $5768: $FC
    ldh [$F6], a                                  ; $5769: $E0 $F6
    ld [$0CF6], sp                                ; $576B: $08 $F6 $0C
    cp $04                                        ; $576E: $FE $04
    rrca                                          ; $5770: $0F
    rlca                                          ; $5771: $07
    rrca                                          ; $5772: $0F
    rlca                                          ; $5773: $07
    rra                                           ; $5774: $1F
    ld [$0F1F], sp                                ; $5775: $08 $1F $0F
    rra                                           ; $5778: $1F
    ld b, $1F                                     ; $5779: $06 $1F
    nop                                           ; $577B: $00
    rrca                                          ; $577C: $0F
    nop                                           ; $577D: $00
    rrca                                          ; $577E: $0F
    nop                                           ; $577F: $00
    sub b                                         ; $5780: $90
    ld h, b                                       ; $5781: $60
    ldh [rP1], a                                  ; $5782: $E0 $00
    ldh [$C0], a                                  ; $5784: $E0 $C0
    ldh a, [$80]                                  ; $5786: $F0 $80
    ldh a, [rP1]                                  ; $5788: $F0 $00
    ld hl, sp+$00                                 ; $578A: $F8 $00
    db $F4                                        ; $578C: $F4
    ld [$1CE6], sp                                ; $578D: $08 $E6 $1C
    ld a, [hl+]                                   ; $5790: $2A
    dec d                                         ; $5791: $15
    ld a, [de]                                    ; $5792: $1A
    dec b                                         ; $5793: $05
    inc e                                         ; $5794: $1C
    dec bc                                        ; $5795: $0B
    rrca                                          ; $5796: $0F
    nop                                           ; $5797: $00
    rra                                           ; $5798: $1F
    ld [bc], a                                    ; $5799: $02
    rra                                           ; $579A: $1F
    ld bc, $0817                                  ; $579B: $01 $17 $08
    dec de                                        ; $579E: $1B
    inc c                                         ; $579F: $0C
    ld d, h                                       ; $57A0: $54
    xor b                                         ; $57A1: $A8
    ld e, b                                       ; $57A2: $58
    and b                                         ; $57A3: $A0
    jr c, @-$2E                                   ; $57A4: $38 $D0

    ldh a, [rP1]                                  ; $57A6: $F0 $00
    ld hl, sp+$20                                 ; $57A8: $F8 $20
    ld hl, sp-$20                                 ; $57AA: $F8 $E0
    ld hl, sp-$40                                 ; $57AC: $F8 $C0
    db $EC                                        ; $57AE: $EC
    ret nc                                        ; $57AF: $D0

    rra                                           ; $57B0: $1F
    rlca                                          ; $57B1: $07
    rrca                                          ; $57B2: $0F
    rlca                                          ; $57B3: $07
    rra                                           ; $57B4: $1F
    inc bc                                        ; $57B5: $03
    rra                                           ; $57B6: $1F
    nop                                           ; $57B7: $00
    rra                                           ; $57B8: $1F

jr_024_57B9:
    inc bc                                        ; $57B9: $03
    rra                                           ; $57BA: $1F
    ld bc, $0837                                  ; $57BB: $01 $37 $08
    scf                                           ; $57BE: $37
    jr jr_024_57B9                                ; $57BF: $18 $F8

    ldh [$F0], a                                  ; $57C1: $E0 $F0
    ret nz                                        ; $57C3: $C0

    ld hl, sp-$70                                 ; $57C4: $F8 $90
    db $FC                                        ; $57C6: $FC
    jr nc, @-$02                                  ; $57C7: $30 $FC

    ldh [$FC], a                                  ; $57C9: $E0 $FC
    ret nz                                        ; $57CB: $C0

    db $FC                                        ; $57CC: $FC
    nop                                           ; $57CD: $00
    ld hl, sp+$00                                 ; $57CE: $F8 $00
    rst $38                                       ; $57D0: $FF
    ld d, c                                       ; $57D1: $51
    rst $38                                       ; $57D2: $FF
    add hl, hl                                    ; $57D3: $29
    rst $38                                       ; $57D4: $FF
    dec d                                         ; $57D5: $15
    rst $38                                       ; $57D6: $FF
    inc bc                                        ; $57D7: $03
    ld a, a                                       ; $57D8: $7F
    inc bc                                        ; $57D9: $03
    ccf                                           ; $57DA: $3F
    inc bc                                        ; $57DB: $03
    ccf                                           ; $57DC: $3F
    nop                                           ; $57DD: $00

jr_024_57DE:
    rra                                           ; $57DE: $1F
    nop                                           ; $57DF: $00
    db $FC                                        ; $57E0: $FC
    adc b                                         ; $57E1: $88
    db $FC                                        ; $57E2: $FC
    adc b                                         ; $57E3: $88
    ld hl, sp-$80                                 ; $57E4: $F8 $80
    ldh a, [$80]                                  ; $57E6: $F0 $80
    ld hl, sp-$80                                 ; $57E8: $F8 $80
    ld hl, sp+$00                                 ; $57EA: $F8 $00
    ldh a, [rP1]                                  ; $57EC: $F0 $00
    add b                                         ; $57EE: $80
    nop                                           ; $57EF: $00
    ld a, a                                       ; $57F0: $7F
    ld hl, $2177                                  ; $57F1: $21 $77 $21
    ld a, a                                       ; $57F4: $7F
    ld hl, $032F                                  ; $57F5: $21 $2F $03
    rrca                                          ; $57F8: $0F
    inc bc                                        ; $57F9: $03
    rra                                           ; $57FA: $1F
    inc bc                                        ; $57FB: $03
    rra                                           ; $57FC: $1F
    ld bc, $000F                                  ; $57FD: $01 $0F $00
    cp $84                                        ; $5800: $FE $84
    cp $84                                        ; $5802: $FE $84
    cp $84                                        ; $5804: $FE $84
    db $FC                                        ; $5806: $FC
    ret nz                                        ; $5807: $C0

    ld hl, sp-$40                                 ; $5808: $F8 $C0
    db $FC                                        ; $580A: $FC
    ret nz                                        ; $580B: $C0

    db $FC                                        ; $580C: $FC
    add b                                         ; $580D: $80
    ld hl, sp+$00                                 ; $580E: $F8 $00
    ld [hl], a                                    ; $5810: $77
    jr nz, jr_024_588A                            ; $5811: $20 $77

    jr nz, jr_024_5844                            ; $5813: $20 $2F

    nop                                           ; $5815: $00
    rrca                                          ; $5816: $0F
    nop                                           ; $5817: $00
    rrca                                          ; $5818: $0F
    nop                                           ; $5819: $00
    rra                                           ; $581A: $1F
    nop                                           ; $581B: $00
    rra                                           ; $581C: $1F
    nop                                           ; $581D: $00
    rrca                                          ; $581E: $0F
    nop                                           ; $581F: $00
    cp $04                                        ; $5820: $FE $04
    cp $04                                        ; $5822: $FE $04
    db $FC                                        ; $5824: $FC
    nop                                           ; $5825: $00
    ld hl, sp+$00                                 ; $5826: $F8 $00
    ld hl, sp+$00                                 ; $5828: $F8 $00
    db $FC                                        ; $582A: $FC
    nop                                           ; $582B: $00
    db $FC                                        ; $582C: $FC
    nop                                           ; $582D: $00
    ld hl, sp+$00                                 ; $582E: $F8 $00
    rlca                                          ; $5830: $07
    nop                                           ; $5831: $00
    rlca                                          ; $5832: $07
    nop                                           ; $5833: $00
    rrca                                          ; $5834: $0F
    nop                                           ; $5835: $00
    rrca                                          ; $5836: $0F
    nop                                           ; $5837: $00
    rrca                                          ; $5838: $0F
    nop                                           ; $5839: $00
    rrca                                          ; $583A: $0F
    nop                                           ; $583B: $00
    rrca                                          ; $583C: $0F
    nop                                           ; $583D: $00
    nop                                           ; $583E: $00
    nop                                           ; $583F: $00
    rst $38                                       ; $5840: $FF
    ld a, [bc]                                    ; $5841: $0A
    rst $38                                       ; $5842: $FF
    dec b                                         ; $5843: $05

jr_024_5844:
    rst $38                                       ; $5844: $FF
    ld [bc], a                                    ; $5845: $02
    ld a, [$F800]                                 ; $5846: $FA $00 $F8
    nop                                           ; $5849: $00
    db $FC                                        ; $584A: $FC
    nop                                           ; $584B: $00
    db $FC                                        ; $584C: $FC
    nop                                           ; $584D: $00
    ld hl, sp+$00                                 ; $584E: $F8 $00
    rra                                           ; $5850: $1F
    inc c                                         ; $5851: $0C
    rra                                           ; $5852: $1F
    inc c                                         ; $5853: $0C
    rrca                                          ; $5854: $0F
    inc b                                         ; $5855: $04
    rrca                                          ; $5856: $0F
    ld bc, $031F                                  ; $5857: $01 $1F $03
    ccf                                           ; $585A: $3F
    inc bc                                        ; $585B: $03
    ccf                                           ; $585C: $3F
    ld bc, $001F                                  ; $585D: $01 $1F $00
    db $FC                                        ; $5860: $FC
    ret z                                         ; $5861: $C8

    ld hl, sp-$40                                 ; $5862: $F8 $C0
    ldh [$C0], a                                  ; $5864: $E0 $C0
    ldh a, [$C0]                                  ; $5866: $F0 $C0
    ldh a, [$C0]                                  ; $5868: $F0 $C0
    ld hl, sp-$40                                 ; $586A: $F8 $C0
    ld hl, sp-$80                                 ; $586C: $F8 $80
    ldh a, [rP1]                                  ; $586E: $F0 $00
    ccf                                           ; $5870: $3F
    db $10                                        ; $5871: $10
    ccf                                           ; $5872: $3F
    db $10                                        ; $5873: $10
    rra                                           ; $5874: $1F
    nop                                           ; $5875: $00
    rrca                                          ; $5876: $0F
    nop                                           ; $5877: $00
    rrca                                          ; $5878: $0F
    nop                                           ; $5879: $00
    rra                                           ; $587A: $1F
    nop                                           ; $587B: $00
    rra                                           ; $587C: $1F
    nop                                           ; $587D: $00
    rrca                                          ; $587E: $0F
    nop                                           ; $587F: $00
    ld hl, sp+$00                                 ; $5880: $F8 $00
    ld hl, sp+$00                                 ; $5882: $F8 $00
    ld hl, sp+$00                                 ; $5884: $F8 $00
    ld hl, sp+$00                                 ; $5886: $F8 $00
    ld hl, sp+$00                                 ; $5888: $F8 $00

jr_024_588A:
    db $FC                                        ; $588A: $FC
    nop                                           ; $588B: $00
    db $FC                                        ; $588C: $FC
    nop                                           ; $588D: $00
    ld hl, sp+$00                                 ; $588E: $F8 $00
    inc bc                                        ; $5890: $03
    nop                                           ; $5891: $00
    rrca                                          ; $5892: $0F
    inc bc                                        ; $5893: $03
    rra                                           ; $5894: $1F
    rrca                                          ; $5895: $0F
    ccf                                           ; $5896: $3F
    rra                                           ; $5897: $1F
    ccf                                           ; $5898: $3F
    rra                                           ; $5899: $1F
    ccf                                           ; $589A: $3F
    rra                                           ; $589B: $1F
    ccf                                           ; $589C: $3F
    dec e                                         ; $589D: $1D
    dec e                                         ; $589E: $1D
    ld a, [bc]                                    ; $589F: $0A
    ldh [rP1], a                                  ; $58A0: $E0 $00
    ldh a, [$E0]                                  ; $58A2: $F0 $E0
    ld hl, sp-$10                                 ; $58A4: $F8 $F0
    db $FC                                        ; $58A6: $FC
    ld hl, sp-$04                                 ; $58A7: $F8 $FC
    adc b                                         ; $58A9: $88
    ld hl, sp+$00                                 ; $58AA: $F8 $00
    ld d, b                                       ; $58AC: $50
    and b                                         ; $58AD: $A0
    ld d, b                                       ; $58AE: $50
    and b                                         ; $58AF: $A0
    dec e                                         ; $58B0: $1D
    ld a, [bc]                                    ; $58B1: $0A
    ld a, $1D                                     ; $58B2: $3E $1D
    rra                                           ; $58B4: $1F
    ld [$030F], sp                                ; $58B5: $08 $0F $03
    rrca                                          ; $58B8: $0F
    ld b, $1F                                     ; $58B9: $06 $1F
    inc b                                         ; $58BB: $04
    ccf                                           ; $58BC: $3F
    nop                                           ; $58BD: $00
    ld a, a                                       ; $58BE: $7F
    nop                                           ; $58BF: $00
    ld d, b                                       ; $58C0: $50
    and b                                         ; $58C1: $A0
    db $10                                        ; $58C2: $10
    ldh [$E0], a                                  ; $58C3: $E0 $E0
    nop                                           ; $58C5: $00
    ret nz                                        ; $58C6: $C0

    add b                                         ; $58C7: $80
    ret nz                                        ; $58C8: $C0

    nop                                           ; $58C9: $00
    ldh [rP1], a                                  ; $58CA: $E0 $00
    sub b                                         ; $58CC: $90
    ld h, b                                       ; $58CD: $60
    sbc b                                         ; $58CE: $98
    ld [hl], b                                    ; $58CF: $70
    ld a, $1D                                     ; $58D0: $3E $1D
    rra                                           ; $58D2: $1F
    ld [$011F], sp                                ; $58D3: $08 $1F $01
    rrca                                          ; $58D6: $0F
    ld b, $0F                                     ; $58D7: $06 $0F
    nop                                           ; $58D9: $00
    rrca                                          ; $58DA: $0F
    nop                                           ; $58DB: $00
    ld b, $01                                     ; $58DC: $06 $01
    ld b, $01                                     ; $58DE: $06 $01
    db $10                                        ; $58E0: $10
    ldh [$E0], a                                  ; $58E1: $E0 $E0
    nop                                           ; $58E3: $00
    ret nz                                        ; $58E4: $C0

    add b                                         ; $58E5: $80
    ldh [rLCDC], a                                ; $58E6: $E0 $40
    ldh [rLCDC], a                                ; $58E8: $E0 $40
    ldh [rP1], a                                  ; $58EA: $E0 $00
    ld h, b                                       ; $58EC: $60
    add b                                         ; $58ED: $80
    ld h, b                                       ; $58EE: $60
    add b                                         ; $58EF: $80
    dec e                                         ; $58F0: $1D
    ld a, [bc]                                    ; $58F1: $0A
    ld a, $1D                                     ; $58F2: $3E $1D
    rra                                           ; $58F4: $1F
    ld [$031F], sp                                ; $58F5: $08 $1F $03
    rra                                           ; $58F8: $1F
    ld bc, $001F                                  ; $58F9: $01 $1F $00
    daa                                           ; $58FC: $27
    jr jr_024_5966                                ; $58FD: $18 $67

    jr jr_024_5951                                ; $58FF: $18 $50

    and b                                         ; $5901: $A0
    db $10                                        ; $5902: $10
    ldh [$E0], a                                  ; $5903: $E0 $E0
    nop                                           ; $5905: $00
    ret nz                                        ; $5906: $C0

    nop                                           ; $5907: $00
    ret nz                                        ; $5908: $C0

    add b                                         ; $5909: $80
    ldh a, [$80]                                  ; $590A: $F0 $80
    ret c                                         ; $590C: $D8

    or b                                          ; $590D: $B0
    call c, $FFA8                                 ; $590E: $DC $A8 $FF
    ld b, b                                       ; $5911: $40
    ld a, a                                       ; $5912: $7F
    jr nz, @+$41                                  ; $5913: $20 $3F

    nop                                           ; $5915: $00
    rra                                           ; $5916: $1F
    nop                                           ; $5917: $00
    ccf                                           ; $5918: $3F
    nop                                           ; $5919: $00
    ld a, a                                       ; $591A: $7F
    nop                                           ; $591B: $00
    ld a, a                                       ; $591C: $7F
    nop                                           ; $591D: $00
    ld a, a                                       ; $591E: $7F
    nop                                           ; $591F: $00
    db $FC                                        ; $5920: $FC

jr_024_5921:
    jr z, jr_024_5921                             ; $5921: $28 $FE

    inc d                                         ; $5923: $14
    db $FC                                        ; $5924: $FC
    ld [$00F8], sp                                ; $5925: $08 $F8 $00
    db $FC                                        ; $5928: $FC
    nop                                           ; $5929: $00
    db $FC                                        ; $592A: $FC
    nop                                           ; $592B: $00
    ld hl, sp+$00                                 ; $592C: $F8 $00
    ldh [rP1], a                                  ; $592E: $E0 $00
    rlca                                          ; $5930: $07
    ld [bc], a                                    ; $5931: $02
    rrca                                          ; $5932: $0F
    ld [bc], a                                    ; $5933: $02
    rra                                           ; $5934: $1F
    ld [bc], a                                    ; $5935: $02
    rra                                           ; $5936: $1F
    nop                                           ; $5937: $00
    ccf                                           ; $5938: $3F
    nop                                           ; $5939: $00
    ccf                                           ; $593A: $3F
    nop                                           ; $593B: $00
    ccf                                           ; $593C: $3F
    nop                                           ; $593D: $00
    rra                                           ; $593E: $1F
    nop                                           ; $593F: $00
    ldh [$80], a                                  ; $5940: $E0 $80
    ldh [$80], a                                  ; $5942: $E0 $80
    ldh [$80], a                                  ; $5944: $E0 $80
    ldh [rP1], a                                  ; $5946: $E0 $00
    ldh a, [rP1]                                  ; $5948: $F0 $00
    ldh a, [rP1]                                  ; $594A: $F0 $00
    ldh a, [rP1]                                  ; $594C: $F0 $00
    ret nz                                        ; $594E: $C0

    nop                                           ; $594F: $00
    rst $38                                       ; $5950: $FF

jr_024_5951:
    ld d, b                                       ; $5951: $50
    ld a, a                                       ; $5952: $7F
    jr nz, @+$01                                  ; $5953: $20 $FF

    ld b, b                                       ; $5955: $40
    ld a, a                                       ; $5956: $7F
    nop                                           ; $5957: $00
    rra                                           ; $5958: $1F
    nop                                           ; $5959: $00
    ccf                                           ; $595A: $3F
    nop                                           ; $595B: $00
    ld a, a                                       ; $595C: $7F
    nop                                           ; $595D: $00
    ld a, a                                       ; $595E: $7F
    nop                                           ; $595F: $00
    cp $94                                        ; $5960: $FE $94
    call c, $F888                                 ; $5962: $DC $88 $F8
    add b                                         ; $5965: $80

jr_024_5966:
    db $FC                                        ; $5966: $FC
    ret nz                                        ; $5967: $C0

    db $FC                                        ; $5968: $FC
    ldh [$F8], a                                  ; $5969: $E0 $F8
    ret nz                                        ; $596B: $C0

    ld hl, sp+$00                                 ; $596C: $F8 $00
    ldh [rP1], a                                  ; $596E: $E0 $00
    nop                                           ; $5970: $00
    nop                                           ; $5971: $00
    nop                                           ; $5972: $00
    nop                                           ; $5973: $00
    ld b, $06                                     ; $5974: $06 $06
    ld b, $06                                     ; $5976: $06 $06
    nop                                           ; $5978: $00
    nop                                           ; $5979: $00
    ret nz                                        ; $597A: $C0

    ret nz                                        ; $597B: $C0

    ret nz                                        ; $597C: $C0

    ret nz                                        ; $597D: $C0

    nop                                           ; $597E: $00
    nop                                           ; $597F: $00
    nop                                           ; $5980: $00
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00
    inc c                                         ; $5984: $0C
    inc c                                         ; $5985: $0C
    inc c                                         ; $5986: $0C
    inc c                                         ; $5987: $0C
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
    rlca                                          ; $5996: $07
    nop                                           ; $5997: $00
    add hl, bc                                    ; $5998: $09
    rlca                                          ; $5999: $07
    add hl, de                                    ; $599A: $19
    rrca                                          ; $599B: $0F
    inc e                                         ; $599C: $1C
    rrca                                          ; $599D: $0F
    inc e                                         ; $599E: $1C
    rrca                                          ; $599F: $0F
    nop                                           ; $59A0: $00
    nop                                           ; $59A1: $00
    nop                                           ; $59A2: $00
    nop                                           ; $59A3: $00
    nop                                           ; $59A4: $00
    nop                                           ; $59A5: $00
    ld [hl], b                                    ; $59A6: $70
    nop                                           ; $59A7: $00
    ld hl, sp+$70                                 ; $59A8: $F8 $70
    db $E4                                        ; $59AA: $E4
    cp b                                          ; $59AB: $B8
    and $BC                                       ; $59AC: $E6 $BC
    and $FC                                       ; $59AE: $E6 $FC
    inc e                                         ; $59B0: $1C
    rrca                                          ; $59B1: $0F
    rra                                           ; $59B2: $1F
    rlca                                          ; $59B3: $07
    rrca                                          ; $59B4: $0F
    ld [bc], a                                    ; $59B5: $02
    rlca                                          ; $59B6: $07
    nop                                           ; $59B7: $00
    ld [bc], a                                    ; $59B8: $02
    ld bc, $0003                                  ; $59B9: $01 $03 $00
    nop                                           ; $59BC: $00
    nop                                           ; $59BD: $00
    nop                                           ; $59BE: $00
    nop                                           ; $59BF: $00
    rst $30                                       ; $59C0: $F7
    sbc $FF                                       ; $59C1: $DE $FF
    ld c, [hl]                                    ; $59C3: $4E
    ld e, [hl]                                    ; $59C4: $5E
    and h                                         ; $59C5: $A4
    ld c, $F0                                     ; $59C6: $0E $F0
    call c, $0C20                                 ; $59C8: $DC $20 $0C
    ldh a, [rP1]                                  ; $59CB: $F0 $00
    nop                                           ; $59CD: $00
    nop                                           ; $59CE: $00
    nop                                           ; $59CF: $00
    nop                                           ; $59D0: $00
    nop                                           ; $59D1: $00
    jr nz, jr_024_59D4                            ; $59D2: $20 $00

jr_024_59D4:
    ld a, h                                       ; $59D4: $7C
    inc a                                         ; $59D5: $3C
    cp $7E                                        ; $59D6: $FE $7E
    cp $7E                                        ; $59D8: $FE $7E
    ld a, a                                       ; $59DA: $7F
    inc a                                         ; $59DB: $3C
    ld a, h                                       ; $59DC: $7C
    dec sp                                        ; $59DD: $3B
    inc a                                         ; $59DE: $3C
    dec de                                        ; $59DF: $1B
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
    db $FC                                        ; $59EC: $FC
    ld [$18FC], sp                                ; $59ED: $08 $FC $18
    rra                                           ; $59F0: $1F
    nop                                           ; $59F1: $00
    ld a, [hl-]                                   ; $59F2: $3A
    rlca                                          ; $59F3: $07
    ld a, h                                       ; $59F4: $7C
    daa                                           ; $59F5: $27
    ld hl, sp+$67                                 ; $59F6: $F8 $67
    db $FC                                        ; $59F8: $FC
    ld [hl], e                                    ; $59F9: $73
    ld [hl], a                                    ; $59FA: $77
    nop                                           ; $59FB: $00
    nop                                           ; $59FC: $00
    nop                                           ; $59FD: $00
    nop                                           ; $59FE: $00
    nop                                           ; $59FF: $00
    ret nc                                        ; $5A00: $D0

    jr nz, @+$12                                  ; $5A01: $20 $10

    ldh [$08], a                                  ; $5A03: $E0 $08
    ldh a, [rOBP0]                                ; $5A05: $F0 $48
    or b                                          ; $5A07: $B0
    ldh a, [rP1]                                  ; $5A08: $F0 $00
    add b                                         ; $5A0A: $80
    nop                                           ; $5A0B: $00
    nop                                           ; $5A0C: $00
    nop                                           ; $5A0D: $00
    nop                                           ; $5A0E: $00
    nop                                           ; $5A0F: $00
    ld e, $0C                                     ; $5A10: $1E $0C
    ld e, $0C                                     ; $5A12: $1E $0C
    ld e, $00                                     ; $5A14: $1E $00
    add hl, de                                    ; $5A16: $19
    ld b, $0F                                     ; $5A17: $06 $0F
    nop                                           ; $5A19: $00
    nop                                           ; $5A1A: $00
    nop                                           ; $5A1B: $00
    nop                                           ; $5A1C: $00
    nop                                           ; $5A1D: $00
    nop                                           ; $5A1E: $00
    nop                                           ; $5A1F: $00
    ld b, $00                                     ; $5A20: $06 $00
    dec bc                                        ; $5A22: $0B
    ld b, $1D                                     ; $5A23: $06 $1D
    rrca                                          ; $5A25: $0F
    ccf                                           ; $5A26: $3F
    ld e, $3F                                     ; $5A27: $1E $3F
    rra                                           ; $5A29: $1F
    ccf                                           ; $5A2A: $3F
    rra                                           ; $5A2B: $1F
    rra                                           ; $5A2C: $1F
    rrca                                          ; $5A2D: $0F
    cpl                                           ; $5A2E: $2F
    rla                                           ; $5A2F: $17
    ldh a, [rP1]                                  ; $5A30: $F0 $00
    sbc b                                         ; $5A32: $98
    ldh a, [rNR32]                                ; $5A33: $F0 $1C
    ld hl, sp-$02                                 ; $5A35: $F8 $FE
    db $FC                                        ; $5A37: $FC
    cp $FC                                        ; $5A38: $FE $FC
    db $FC                                        ; $5A3A: $FC
    ld hl, sp-$08                                 ; $5A3B: $F8 $F8
    ldh a, [$F4]                                  ; $5A3D: $F0 $F4
    add sp, $1F                                   ; $5A3F: $E8 $1F
    nop                                           ; $5A41: $00
    rra                                           ; $5A42: $1F
    rlca                                          ; $5A43: $07
    ccf                                           ; $5A44: $3F
    ld d, $3F                                     ; $5A45: $16 $3F
    dec de                                        ; $5A47: $1B
    ccf                                           ; $5A48: $3F
    jr jr_024_5A8A                                ; $5A49: $18 $3F

    rla                                           ; $5A4B: $17
    ccf                                           ; $5A4C: $3F
    rlca                                          ; $5A4D: $07
    rra                                           ; $5A4E: $1F
    inc bc                                        ; $5A4F: $03
    ld hl, sp+$00                                 ; $5A50: $F8 $00
    ldh a, [rLCDC]                                ; $5A52: $F0 $40
    ld hl, sp-$50                                 ; $5A54: $F8 $B0
    ld hl, sp+$70                                 ; $5A56: $F8 $70
    ld hl, sp-$50                                 ; $5A58: $F8 $B0
    ld hl, sp-$50                                 ; $5A5A: $F8 $B0
    db $F4                                        ; $5A5C: $F4
    ret z                                         ; $5A5D: $C8

    db $E4                                        ; $5A5E: $E4
    ret c                                         ; $5A5F: $D8

    rlca                                          ; $5A60: $07
    nop                                           ; $5A61: $00
    ld [$0907], sp                                ; $5A62: $08 $07 $09
    ld b, $08                                     ; $5A65: $06 $08
    rlca                                          ; $5A67: $07
    ld c, $01                                     ; $5A68: $0E $01
    rrca                                          ; $5A6A: $0F
    ld b, $0F                                     ; $5A6B: $06 $0F
    nop                                           ; $5A6D: $00
    nop                                           ; $5A6E: $00
    nop                                           ; $5A6F: $00
    db $FC                                        ; $5A70: $FC
    nop                                           ; $5A71: $00
    db $10                                        ; $5A72: $10
    ldh [$08], a                                  ; $5A73: $E0 $08
    ldh a, [$88]                                  ; $5A75: $F0 $88
    ld [hl], b                                    ; $5A77: $70
    sbc b                                         ; $5A78: $98
    ld h, b                                       ; $5A79: $60
    db $FC                                        ; $5A7A: $FC
    ld [$70FC], sp                                ; $5A7B: $08 $FC $70
    ld hl, sp+$00                                 ; $5A7E: $F8 $00
    ld hl, sp+$00                                 ; $5A80: $F8 $00
    ldh a, [rLCDC]                                ; $5A82: $F0 $40
    ld hl, sp-$50                                 ; $5A84: $F8 $B0
    cp $70                                        ; $5A86: $FE $70
    ld sp, hl                                     ; $5A88: $F9
    or [hl]                                       ; $5A89: $B6

jr_024_5A8A:
    db $FD                                        ; $5A8A: $FD
    cp d                                          ; $5A8B: $BA
    cp $D8                                        ; $5A8C: $FE $D8
    ld hl, sp-$20                                 ; $5A8E: $F8 $E0
    rlca                                          ; $5A90: $07
    nop                                           ; $5A91: $00
    ld [$0907], sp                                ; $5A92: $08 $07 $09
    ld b, $10                                     ; $5A95: $06 $10
    rrca                                          ; $5A97: $0F
    rra                                           ; $5A98: $1F
    nop                                           ; $5A99: $00
    rra                                           ; $5A9A: $1F
    ld c, $1F                                     ; $5A9B: $0E $1F
    nop                                           ; $5A9D: $00
    nop                                           ; $5A9E: $00
    nop                                           ; $5A9F: $00
    ldh a, [rP1]                                  ; $5AA0: $F0 $00
    db $10                                        ; $5AA2: $10
    ldh [$08], a                                  ; $5AA3: $E0 $08
    ldh a, [$88]                                  ; $5AA5: $F0 $88
    ld [hl], b                                    ; $5AA7: $70
    sbc b                                         ; $5AA8: $98
    ld h, b                                       ; $5AA9: $60
    db $FC                                        ; $5AAA: $FC
    ld [$70FC], sp                                ; $5AAB: $08 $FC $70
    ld hl, sp+$00                                 ; $5AAE: $F8 $00
    nop                                           ; $5AB0: $00
    ret nz                                        ; $5AB1: $C0

    nop                                           ; $5AB2: $00
    ld h, b                                       ; $5AB3: $60
    nop                                           ; $5AB4: $00
    jr nz, jr_024_5AB7                            ; $5AB5: $20 $00

jr_024_5AB7:
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
    ld h, b                                       ; $5AC1: $60
    nop                                           ; $5AC2: $00
    ldh a, [rP1]                                  ; $5AC3: $F0 $00
    jr c, jr_024_5AC7                             ; $5AC5: $38 $00

jr_024_5AC7:
    jr jr_024_5AC9                                ; $5AC7: $18 $00

jr_024_5AC9:
    stop                                          ; $5AC9: $10 $00
    nop                                           ; $5ACB: $00
    nop                                           ; $5ACC: $00
    nop                                           ; $5ACD: $00
    nop                                           ; $5ACE: $00
    nop                                           ; $5ACF: $00
    ld b, $00                                     ; $5AD0: $06 $00
    dec bc                                        ; $5AD2: $0B
    ld b, $1D                                     ; $5AD3: $06 $1D
    rrca                                          ; $5AD5: $0F
    ccf                                           ; $5AD6: $3F
    ld e, $3F                                     ; $5AD7: $1E $3F
    rra                                           ; $5AD9: $1F
    ccf                                           ; $5ADA: $3F
    rra                                           ; $5ADB: $1F
    rra                                           ; $5ADC: $1F
    rrca                                          ; $5ADD: $0F
    cpl                                           ; $5ADE: $2F
    rla                                           ; $5ADF: $17
    ldh a, [rP1]                                  ; $5AE0: $F0 $00
    sbc b                                         ; $5AE2: $98
    ldh a, [rNR32]                                ; $5AE3: $F0 $1C
    ld hl, sp-$02                                 ; $5AE5: $F8 $FE
    db $FC                                        ; $5AE7: $FC
    cp $FC                                        ; $5AE8: $FE $FC
    db $FC                                        ; $5AEA: $FC
    ld hl, sp-$08                                 ; $5AEB: $F8 $F8
    ldh a, [$F4]                                  ; $5AED: $F0 $F4
    add sp, -$08                                  ; $5AEF: $E8 $F8
    nop                                           ; $5AF1: $00
    ld hl, sp+$30                                 ; $5AF2: $F8 $30

jr_024_5AF4:
    db $FC                                        ; $5AF4: $FC

jr_024_5AF5:
    ret z                                         ; $5AF5: $C8

    db $FC                                        ; $5AF6: $FC
    jr c, jr_024_5AF5                             ; $5AF7: $38 $FC

    ld hl, sp-$04                                 ; $5AF9: $F8 $FC
    add sp, -$04                                  ; $5AFB: $E8 $FC
    add sp, -$08                                  ; $5AFD: $E8 $F8
    ldh a, [$F0]                                  ; $5AFF: $F0 $F0
    nop                                           ; $5B01: $00
    sub b                                         ; $5B02: $90
    ld h, b                                       ; $5B03: $60
    adc b                                         ; $5B04: $88
    ld [hl], b                                    ; $5B05: $70
    adc b                                         ; $5B06: $88
    ld [hl], b                                    ; $5B07: $70
    sbc b                                         ; $5B08: $98
    ld h, b                                       ; $5B09: $60
    db $FC                                        ; $5B0A: $FC
    ld [$70FC], sp                                ; $5B0B: $08 $FC $70
    ld hl, sp+$00                                 ; $5B0E: $F8 $00
    ld b, $00                                     ; $5B10: $06 $00
    rrca                                          ; $5B12: $0F
    ld b, $17                                     ; $5B13: $06 $17
    rrca                                          ; $5B15: $0F
    dec sp                                        ; $5B16: $3B
    rra                                           ; $5B17: $1F
    add hl, sp                                    ; $5B18: $39
    rra                                           ; $5B19: $1F
    dec sp                                        ; $5B1A: $3B
    dec e                                         ; $5B1B: $1D
    dec e                                         ; $5B1C: $1D
    ld a, [bc]                                    ; $5B1D: $0A
    ld a, [hl+]                                   ; $5B1E: $2A
    dec d                                         ; $5B1F: $15
    ldh a, [rP1]                                  ; $5B20: $F0 $00
    sbc b                                         ; $5B22: $98
    ldh a, [$8C]                                  ; $5B23: $F0 $8C
    ld hl, sp-$32                                 ; $5B25: $F8 $CE
    db $FC                                        ; $5B27: $FC
    sbc $FC                                       ; $5B28: $DE $FC
    db $FC                                        ; $5B2A: $FC
    jr c, jr_024_5B65                             ; $5B2B: $38 $38

    ret nc                                        ; $5B2D: $D0

    ld d, h                                       ; $5B2E: $54
    xor b                                         ; $5B2F: $A8
    ld e, b                                       ; $5B30: $58
    and b                                         ; $5B31: $A0
    jr nc, jr_024_5AF4                            ; $5B32: $30 $C0

    ld hl, sp+$30                                 ; $5B34: $F8 $30
    db $FC                                        ; $5B36: $FC
    ld hl, sp-$04                                 ; $5B37: $F8 $FC
    add sp, -$04                                  ; $5B39: $E8 $FC
    ldh [$E4], a                                  ; $5B3B: $E0 $E4
    ret c                                         ; $5B3D: $D8

    db $E4                                        ; $5B3E: $E4
    ret c                                         ; $5B3F: $D8

    ld hl, sp+$00                                 ; $5B40: $F8 $00
    db $10                                        ; $5B42: $10
    ldh [$88], a                                  ; $5B43: $E0 $88
    ld [hl], b                                    ; $5B45: $70
    cp b                                          ; $5B46: $B8

jr_024_5B47:
    ld b, b                                       ; $5B47: $40
    ld hl, sp+$30                                 ; $5B48: $F8 $30
    db $FC                                        ; $5B4A: $FC
    ld a, b                                       ; $5B4B: $78
    db $FC                                        ; $5B4C: $FC
    jr c, jr_024_5B47                             ; $5B4D: $38 $F8

    nop                                           ; $5B4F: $00
    ld b, $00                                     ; $5B50: $06 $00
    rrca                                          ; $5B52: $0F
    ld b, $17                                     ; $5B53: $06 $17
    rrca                                          ; $5B55: $0F
    dec sp                                        ; $5B56: $3B
    rra                                           ; $5B57: $1F

jr_024_5B58:
    add hl, sp                                    ; $5B58: $39
    rra                                           ; $5B59: $1F
    dec sp                                        ; $5B5A: $3B
    dec e                                         ; $5B5B: $1D
    dec e                                         ; $5B5C: $1D
    ld a, [bc]                                    ; $5B5D: $0A
    ld l, d                                       ; $5B5E: $6A
    dec d                                         ; $5B5F: $15
    ldh a, [rP1]                                  ; $5B60: $F0 $00
    sbc b                                         ; $5B62: $98
    ldh a, [$8C]                                  ; $5B63: $F0 $8C

jr_024_5B65:
    ld hl, sp-$32                                 ; $5B65: $F8 $CE
    db $FC                                        ; $5B67: $FC
    sbc $FC                                       ; $5B68: $DE $FC
    db $FC                                        ; $5B6A: $FC
    jr c, jr_024_5BA5                             ; $5B6B: $38 $38

    ret nc                                        ; $5B6D: $D0

    ld d, [hl]                                    ; $5B6E: $56
    xor b                                         ; $5B6F: $A8
    ld e, c                                       ; $5B70: $59
    and [hl]                                      ; $5B71: $A6
    add hl, sp                                    ; $5B72: $39
    sub $FE                                       ; $5B73: $D6 $FE

jr_024_5B75:
    jr nc, jr_024_5B75                            ; $5B75: $30 $FE

    db $FC                                        ; $5B77: $FC
    db $FC                                        ; $5B78: $FC
    ld hl, sp-$08                                 ; $5B79: $F8 $F8
    ldh a, [$F0]                                  ; $5B7B: $F0 $F0
    ldh [$F0], a                                  ; $5B7D: $E0 $F0
    ldh [$1F], a                                  ; $5B7F: $E0 $1F
    nop                                           ; $5B81: $00
    inc c                                         ; $5B82: $0C
    rrca                                          ; $5B83: $0F
    db $10                                        ; $5B84: $10
    rrca                                          ; $5B85: $0F
    ld de, $2F0E                                  ; $5B86: $11 $0E $2F
    db $10                                        ; $5B89: $10
    ccf                                           ; $5B8A: $3F
    ld b, $3F                                     ; $5B8B: $06 $3F
    ld e, $1F                                     ; $5B8D: $1E $1F
    nop                                           ; $5B8F: $00
    ldh [rP1], a                                  ; $5B90: $E0 $00
    jr nz, @-$3E                                  ; $5B92: $20 $C0

jr_024_5B94:
    sub b                                         ; $5B94: $90
    ld h, b                                       ; $5B95: $60
    jr nc, jr_024_5B58                            ; $5B96: $30 $C0

    ld hl, sp+$30                                 ; $5B98: $F8 $30
    ld hl, sp-$10                                 ; $5B9A: $F8 $F0
    ldh a, [rP1]                                  ; $5B9C: $F0 $00
    nop                                           ; $5B9E: $00
    nop                                           ; $5B9F: $00
    ld a, [de]                                    ; $5BA0: $1A
    dec b                                         ; $5BA1: $05
    inc a                                         ; $5BA2: $3C
    dec bc                                        ; $5BA3: $0B
    ld a, a                                       ; $5BA4: $7F

jr_024_5BA5:
    inc a                                         ; $5BA5: $3C
    ld a, a                                       ; $5BA6: $7F
    ccf                                           ; $5BA7: $3F
    ld a, a                                       ; $5BA8: $7F
    dec sp                                        ; $5BA9: $3B
    ld a, a                                       ; $5BAA: $7F
    daa                                           ; $5BAB: $27
    daa                                           ; $5BAC: $27
    dec de                                        ; $5BAD: $1B
    daa                                           ; $5BAE: $27
    dec de                                        ; $5BAF: $1B
    ld e, b                                       ; $5BB0: $58
    and b                                         ; $5BB1: $A0
    jr nz, @-$3E                                  ; $5BB2: $20 $C0

    ldh a, [rNR41]                                ; $5BB4: $F0 $20
    ldh a, [$E0]                                  ; $5BB6: $F0 $E0
    ldh a, [$C0]                                  ; $5BB8: $F0 $C0
    add sp, -$30                                  ; $5BBA: $E8 $D0
    add sp, -$30                                  ; $5BBC: $E8 $D0
    ldh a, [$80]                                  ; $5BBE: $F0 $80
    ld a, [de]                                    ; $5BC0: $1A
    dec b                                         ; $5BC1: $05
    inc a                                         ; $5BC2: $3C
    dec bc                                        ; $5BC3: $0B
    ld a, a                                       ; $5BC4: $7F
    inc e                                         ; $5BC5: $1C
    sbc a                                         ; $5BC6: $9F
    ld l, a                                       ; $5BC7: $6F
    sbc a                                         ; $5BC8: $9F
    ld l, a                                       ; $5BC9: $6F
    ld a, a                                       ; $5BCA: $7F

jr_024_5BCB:
    rla                                           ; $5BCB: $17
    rra                                           ; $5BCC: $1F
    rrca                                          ; $5BCD: $0F
    rra                                           ; $5BCE: $1F
    rrca                                          ; $5BCF: $0F
    ld e, b                                       ; $5BD0: $58
    and b                                         ; $5BD1: $A0
    jr c, jr_024_5B94                             ; $5BD2: $38 $C0

    db $F4                                        ; $5BD4: $F4
    jr z, jr_024_5BCB                             ; $5BD5: $28 $F4

    add sp, -$08                                  ; $5BD7: $E8 $F8
    ldh [$E0], a                                  ; $5BD9: $E0 $E0
    ret nz                                        ; $5BDB: $C0

    ldh [$C0], a                                  ; $5BDC: $E0 $C0
    ldh [$80], a                                  ; $5BDE: $E0 $80
    sbc d                                         ; $5BE0: $9A
    ld h, l                                       ; $5BE1: $65
    sbc h                                         ; $5BE2: $9C
    ld l, e                                       ; $5BE3: $6B
    ld a, a                                       ; $5BE4: $7F
    inc e                                         ; $5BE5: $1C
    ld a, a                                       ; $5BE6: $7F
    ccf                                           ; $5BE7: $3F
    ccf                                           ; $5BE8: $3F
    rra                                           ; $5BE9: $1F
    rra                                           ; $5BEA: $1F
    rrca                                          ; $5BEB: $0F
    rra                                           ; $5BEC: $1F
    rrca                                          ; $5BED: $0F
    rra                                           ; $5BEE: $1F
    rrca                                          ; $5BEF: $0F
    nop                                           ; $5BF0: $00
    nop                                           ; $5BF1: $00
    nop                                           ; $5BF2: $00
    nop                                           ; $5BF3: $00
    rra                                           ; $5BF4: $1F
    nop                                           ; $5BF5: $00
    ld a, a                                       ; $5BF6: $7F
    nop                                           ; $5BF7: $00
    ccf                                           ; $5BF8: $3F
    nop                                           ; $5BF9: $00
    rrca                                          ; $5BFA: $0F
    nop                                           ; $5BFB: $00
    nop                                           ; $5BFC: $00
    nop                                           ; $5BFD: $00
    nop                                           ; $5BFE: $00
    nop                                           ; $5BFF: $00
    nop                                           ; $5C00: $00
    nop                                           ; $5C01: $00
    nop                                           ; $5C02: $00
    nop                                           ; $5C03: $00
    rrca                                          ; $5C04: $0F
    nop                                           ; $5C05: $00
    ccf                                           ; $5C06: $3F
    nop                                           ; $5C07: $00
    rra                                           ; $5C08: $1F
    nop                                           ; $5C09: $00
    rlca                                          ; $5C0A: $07
    nop                                           ; $5C0B: $00
    nop                                           ; $5C0C: $00
    nop                                           ; $5C0D: $00
    nop                                           ; $5C0E: $00
    nop                                           ; $5C0F: $00
    nop                                           ; $5C10: $00
    nop                                           ; $5C11: $00
    nop                                           ; $5C12: $00
    nop                                           ; $5C13: $00
    rlca                                          ; $5C14: $07
    nop                                           ; $5C15: $00
    rra                                           ; $5C16: $1F
    nop                                           ; $5C17: $00
    rrca                                          ; $5C18: $0F
    nop                                           ; $5C19: $00
    nop                                           ; $5C1A: $00
    nop                                           ; $5C1B: $00
    nop                                           ; $5C1C: $00
    nop                                           ; $5C1D: $00
    nop                                           ; $5C1E: $00
    nop                                           ; $5C1F: $00
    rrca                                          ; $5C20: $0F
    nop                                           ; $5C21: $00
    rst $38                                       ; $5C22: $FF
    ld b, $3F                                     ; $5C23: $06 $3F
    reti                                          ; $5C25: $D9


    ld a, a                                       ; $5C26: $7F
    cp [hl]                                       ; $5C27: $BE
    rst $38                                       ; $5C28: $FF
    ld a, a                                       ; $5C29: $7F
    ld a, a                                       ; $5C2A: $7F
    rrca                                          ; $5C2B: $0F
    rrca                                          ; $5C2C: $0F
    rlca                                          ; $5C2D: $07
    rrca                                          ; $5C2E: $0F
    rlca                                          ; $5C2F: $07
    ld hl, sp+$00                                 ; $5C30: $F8 $00
    rst $38                                       ; $5C32: $FF

jr_024_5C33:
    jr nc, jr_024_5C33                            ; $5C33: $30 $FE

    call $3EFF                                    ; $5C35: $CD $FF $3E
    rst $38                                       ; $5C38: $FF
    rst $38                                       ; $5C39: $FF
    rst $38                                       ; $5C3A: $FF
    ld hl, sp-$08                                 ; $5C3B: $F8 $F8
    ldh a, [$F8]                                  ; $5C3D: $F0 $F8
    ldh a, [rP1]                                  ; $5C3F: $F0 $00
    nop                                           ; $5C41: $00
    add b                                         ; $5C42: $80
    nop                                           ; $5C43: $00
    ld b, b                                       ; $5C44: $40
    add b                                         ; $5C45: $80
    ld b, b                                       ; $5C46: $40
    add b                                         ; $5C47: $80
    add b                                         ; $5C48: $80
    nop                                           ; $5C49: $00
    nop                                           ; $5C4A: $00
    nop                                           ; $5C4B: $00
    nop                                           ; $5C4C: $00
    nop                                           ; $5C4D: $00
    nop                                           ; $5C4E: $00
    nop                                           ; $5C4F: $00
    ld e, d                                       ; $5C50: $5A
    and h                                         ; $5C51: $A4
    ld [hl-], a                                   ; $5C52: $32
    call z, $30FC                                 ; $5C53: $CC $FC $30
    ld hl, sp-$10                                 ; $5C56: $F8 $F0
    ldh a, [$E0]                                  ; $5C58: $F0 $E0
    ldh [$C0], a                                  ; $5C5A: $E0 $C0
    ldh [$C0], a                                  ; $5C5C: $E0 $C0
    ldh [$80], a                                  ; $5C5E: $E0 $80
    nop                                           ; $5C60: $00
    nop                                           ; $5C61: $00
    nop                                           ; $5C62: $00
    nop                                           ; $5C63: $00
    jr nz, jr_024_5C86                            ; $5C64: $20 $20

    ld b, b                                       ; $5C66: $40
    ld b, b                                       ; $5C67: $40
    ld h, b                                       ; $5C68: $60
    ld h, b                                       ; $5C69: $60
    jr c, jr_024_5CA4                             ; $5C6A: $38 $38

    rrca                                          ; $5C6C: $0F
    rrca                                          ; $5C6D: $0F
    nop                                           ; $5C6E: $00
    nop                                           ; $5C6F: $00
    nop                                           ; $5C70: $00
    nop                                           ; $5C71: $00
    nop                                           ; $5C72: $00
    nop                                           ; $5C73: $00
    jr z, jr_024_5C9E                             ; $5C74: $28 $28

    ld b, b                                       ; $5C76: $40
    ld b, b                                       ; $5C77: $40
    ld a, [hl]                                    ; $5C78: $7E
    ld a, [hl]                                    ; $5C79: $7E
    ccf                                           ; $5C7A: $3F
    ccf                                           ; $5C7B: $3F
    rrca                                          ; $5C7C: $0F
    rrca                                          ; $5C7D: $0F
    nop                                           ; $5C7E: $00
    nop                                           ; $5C7F: $00
    nop                                           ; $5C80: $00
    nop                                           ; $5C81: $00
    nop                                           ; $5C82: $00
    nop                                           ; $5C83: $00
    ld a, [hl-]                                   ; $5C84: $3A
    ld a, [hl-]                                   ; $5C85: $3A

jr_024_5C86:
    ld h, b                                       ; $5C86: $60
    ld h, b                                       ; $5C87: $60
    ld a, [hl]                                    ; $5C88: $7E
    ld a, [hl]                                    ; $5C89: $7E
    ld a, a                                       ; $5C8A: $7F
    ld a, a                                       ; $5C8B: $7F
    ccf                                           ; $5C8C: $3F
    ccf                                           ; $5C8D: $3F
    rlca                                          ; $5C8E: $07
    rlca                                          ; $5C8F: $07
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
    rst $38                                       ; $5C9A: $FF
    rst $38                                       ; $5C9B: $FF
    rst $38                                       ; $5C9C: $FF
    rst $38                                       ; $5C9D: $FF

jr_024_5C9E:
    rst $38                                       ; $5C9E: $FF
    rst $38                                       ; $5C9F: $FF
    nop                                           ; $5CA0: $00
    nop                                           ; $5CA1: $00
    nop                                           ; $5CA2: $00
    nop                                           ; $5CA3: $00

jr_024_5CA4:
    nop                                           ; $5CA4: $00
    nop                                           ; $5CA5: $00
    nop                                           ; $5CA6: $00
    nop                                           ; $5CA7: $00
    nop                                           ; $5CA8: $00
    nop                                           ; $5CA9: $00
    rst $38                                       ; $5CAA: $FF
    rst $38                                       ; $5CAB: $FF
    rst $38                                       ; $5CAC: $FF
    rst $38                                       ; $5CAD: $FF
    nop                                           ; $5CAE: $00
    nop                                           ; $5CAF: $00
    nop                                           ; $5CB0: $00
    nop                                           ; $5CB1: $00

jr_024_5CB2:
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
    rst $38                                       ; $5CBC: $FF
    rst $38                                       ; $5CBD: $FF
    nop                                           ; $5CBE: $00
    nop                                           ; $5CBF: $00
    dec e                                         ; $5CC0: $1D
    nop                                           ; $5CC1: $00
    daa                                           ; $5CC2: $27
    dec e                                         ; $5CC3: $1D

jr_024_5CC4:
    ld h, a                                       ; $5CC4: $67
    ld a, $73                                     ; $5CC5: $3E $73
    ccf                                           ; $5CC7: $3F
    ld [hl], a                                    ; $5CC8: $77
    dec a                                         ; $5CC9: $3D
    dec a                                         ; $5CCA: $3D
    ld a, [bc]                                    ; $5CCB: $0A
    ld a, [hl+]                                   ; $5CCC: $2A
    dec d                                         ; $5CCD: $15
    ld [de], a                                    ; $5CCE: $12
    dec c                                         ; $5CCF: $0D
    ldh [rP1], a                                  ; $5CD0: $E0 $00
    ret nc                                        ; $5CD2: $D0

    ldh [$98], a                                  ; $5CD3: $E0 $98
    ldh a, [$9C]                                  ; $5CD5: $F0 $9C
    ld a, b                                       ; $5CD7: $78
    call c, $3C38                                 ; $5CD8: $DC $38 $3C
    ret z                                         ; $5CDB: $C8

    ld e, b                                       ; $5CDC: $58
    and b                                         ; $5CDD: $A0
    ld d, b                                       ; $5CDE: $50
    and b                                         ; $5CDF: $A0
    jr c, jr_024_5CE9                             ; $5CE0: $38 $07

    ld a, a                                       ; $5CE2: $7F
    inc c                                         ; $5CE3: $0C
    rst $38                                       ; $5CE4: $FF
    ccf                                           ; $5CE5: $3F
    rst $38                                       ; $5CE6: $FF
    ccf                                           ; $5CE7: $3F
    ld a, a                                       ; $5CE8: $7F

jr_024_5CE9:
    dec sp                                        ; $5CE9: $3B
    ld a, a                                       ; $5CEA: $7F
    dec sp                                        ; $5CEB: $3B
    ld a, a                                       ; $5CEC: $7F
    dec a                                         ; $5CED: $3D
    ccf                                           ; $5CEE: $3F
    dec c                                         ; $5CEF: $0D
    jr nz, jr_024_5CB2                            ; $5CF0: $20 $C0

    ldh [rP1], a                                  ; $5CF2: $E0 $00
    ldh a, [$E0]                                  ; $5CF4: $F0 $E0
    ldh a, [$E0]                                  ; $5CF6: $F0 $E0
    ld hl, sp-$30                                 ; $5CF8: $F8 $D0
    ld hl, sp-$30                                 ; $5CFA: $F8 $D0
    ld hl, sp-$30                                 ; $5CFC: $F8 $D0
    ldh a, [$80]                                  ; $5CFE: $F0 $80
    ldh [rP1], a                                  ; $5D00: $E0 $00
    jr nz, jr_024_5CC4                            ; $5D02: $20 $C0

    or b                                          ; $5D04: $B0
    ld b, b                                       ; $5D05: $40
    ld a, b                                       ; $5D06: $78
    or b                                          ; $5D07: $B0
    ld hl, sp+$70                                 ; $5D08: $F8 $70
    ldh a, [$C0]                                  ; $5D0A: $F0 $C0
    ret nz                                        ; $5D0C: $C0

    nop                                           ; $5D0D: $00
    nop                                           ; $5D0E: $00
    nop                                           ; $5D0F: $00
    nop                                           ; $5D10: $00
    nop                                           ; $5D11: $00
    nop                                           ; $5D12: $00
    nop                                           ; $5D13: $00
    rra                                           ; $5D14: $1F
    nop                                           ; $5D15: $00
    ld hl, $131F                                  ; $5D16: $21 $1F $13
    rrca                                          ; $5D19: $0F
    rla                                           ; $5D1A: $17
    dec c                                         ; $5D1B: $0D
    dec c                                         ; $5D1C: $0D
    nop                                           ; $5D1D: $00
    nop                                           ; $5D1E: $00
    nop                                           ; $5D1F: $00
    inc c                                         ; $5D20: $0C
    nop                                           ; $5D21: $00
    ld e, $0C                                     ; $5D22: $1E $0C
    rst $38                                       ; $5D24: $FF
    ld [de], a                                    ; $5D25: $12
    rst $38                                       ; $5D26: $FF
    ld a, [c]                                     ; $5D27: $F2
    rst $38                                       ; $5D28: $FF
    ld [de], a                                    ; $5D29: $12
    sbc [hl]                                      ; $5D2A: $9E
    inc c                                         ; $5D2B: $0C
    inc c                                         ; $5D2C: $0C
    nop                                           ; $5D2D: $00
    nop                                           ; $5D2E: $00
    nop                                           ; $5D2F: $00
    nop                                           ; $5D30: $00
    nop                                           ; $5D31: $00
    nop                                           ; $5D32: $00
    nop                                           ; $5D33: $00
    rra                                           ; $5D34: $1F
    nop                                           ; $5D35: $00
    ld a, $1F                                     ; $5D36: $3E $1F
    inc e                                         ; $5D38: $1C
    rrca                                          ; $5D39: $0F
    ld e, $0D                                     ; $5D3A: $1E $0D
    dec c                                         ; $5D3C: $0D
    nop                                           ; $5D3D: $00
    nop                                           ; $5D3E: $00
    nop                                           ; $5D3F: $00
    inc c                                         ; $5D40: $0C
    nop                                           ; $5D41: $00
    ld e, $0C                                     ; $5D42: $1E $0C
    rst $28                                       ; $5D44: $EF
    ld [de], a                                    ; $5D45: $12
    rra                                           ; $5D46: $1F
    ld a, [c]                                     ; $5D47: $F2
    rst $38                                       ; $5D48: $FF
    ld [de], a                                    ; $5D49: $12
    sbc [hl]                                      ; $5D4A: $9E
    inc c                                         ; $5D4B: $0C
    inc c                                         ; $5D4C: $0C
    nop                                           ; $5D4D: $00
    nop                                           ; $5D4E: $00
    nop                                           ; $5D4F: $00
    nop                                           ; $5D50: $00
    nop                                           ; $5D51: $00
    nop                                           ; $5D52: $00
    nop                                           ; $5D53: $00
    rra                                           ; $5D54: $1F
    nop                                           ; $5D55: $00
    ccf                                           ; $5D56: $3F
    rra                                           ; $5D57: $1F
    rra                                           ; $5D58: $1F
    rrca                                          ; $5D59: $0F
    rra                                           ; $5D5A: $1F
    dec c                                         ; $5D5B: $0D
    dec c                                         ; $5D5C: $0D
    nop                                           ; $5D5D: $00
    nop                                           ; $5D5E: $00

jr_024_5D5F:
    nop                                           ; $5D5F: $00
    inc c                                         ; $5D60: $0C
    nop                                           ; $5D61: $00
    ld a, [de]                                    ; $5D62: $1A
    inc c                                         ; $5D63: $0C
    db $FD                                        ; $5D64: $FD
    ld [de], a                                    ; $5D65: $12
    db $FD                                        ; $5D66: $FD
    ld a, [c]                                     ; $5D67: $F2
    db $ED                                        ; $5D68: $ED
    ld [de], a                                    ; $5D69: $12
    sub d                                         ; $5D6A: $92
    inc c                                         ; $5D6B: $0C
    inc c                                         ; $5D6C: $0C
    nop                                           ; $5D6D: $00
    nop                                           ; $5D6E: $00
    nop                                           ; $5D6F: $00
    ld e, $00                                     ; $5D70: $1E $00
    ccf                                           ; $5D72: $3F
    ld e, $1F                                     ; $5D73: $1E $1F
    rrca                                          ; $5D75: $0F
    ccf                                           ; $5D76: $3F
    rra                                           ; $5D77: $1F
    ccf                                           ; $5D78: $3F
    rra                                           ; $5D79: $1F
    ccf                                           ; $5D7A: $3F
    rra                                           ; $5D7B: $1F
    rra                                           ; $5D7C: $1F
    inc c                                         ; $5D7D: $0C
    ccf                                           ; $5D7E: $3F
    ld b, $00                                     ; $5D7F: $06 $00
    nop                                           ; $5D81: $00
    add b                                         ; $5D82: $80
    nop                                           ; $5D83: $00
    ldh a, [$80]                                  ; $5D84: $F0 $80
    ld hl, sp-$10                                 ; $5D86: $F8 $F0
    db $FC                                        ; $5D88: $FC
    ld hl, sp-$02                                 ; $5D89: $F8 $FE
    db $FC                                        ; $5D8B: $FC
    cp $64                                        ; $5D8C: $FE $64
    ld l, [hl]                                    ; $5D8E: $6E
    sub h                                         ; $5D8F: $94
    ld a, a                                       ; $5D90: $7F
    dec sp                                        ; $5D91: $3B
    rst $38                                       ; $5D92: $FF
    ld a, l                                       ; $5D93: $7D
    ld a, a                                       ; $5D94: $7F
    ld e, $5F                                     ; $5D95: $1E $5F
    ld hl, $337F                                  ; $5D97: $21 $7F $33
    ld a, a                                       ; $5D9A: $7F
    dec sp                                        ; $5D9B: $3B
    ld [hl], a                                    ; $5D9C: $77
    jr c, jr_024_5DDE                             ; $5D9D: $38 $3F

jr_024_5D9F:
    inc bc                                        ; $5D9F: $03
    nop                                           ; $5DA0: $00
    ret nz                                        ; $5DA1: $C0

    nop                                           ; $5DA2: $00
    ldh [rP1], a                                  ; $5DA3: $E0 $00
    ld h, b                                       ; $5DA5: $60
    nop                                           ; $5DA6: $00
    ld h, b                                       ; $5DA7: $60
    nop                                           ; $5DA8: $00
    ld b, b                                       ; $5DA9: $40
    nop                                           ; $5DAA: $00
    nop                                           ; $5DAB: $00
    nop                                           ; $5DAC: $00
    nop                                           ; $5DAD: $00
    nop                                           ; $5DAE: $00
    nop                                           ; $5DAF: $00
    nop                                           ; $5DB0: $00
    add b                                         ; $5DB1: $80
    nop                                           ; $5DB2: $00
    ld b, b                                       ; $5DB3: $40
    nop                                           ; $5DB4: $00
    ld b, b                                       ; $5DB5: $40
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
    rrca                                          ; $5DC0: $0F
    nop                                           ; $5DC1: $00
    rrca                                          ; $5DC2: $0F
    rlca                                          ; $5DC3: $07
    rra                                           ; $5DC4: $1F
    rrca                                          ; $5DC5: $0F
    ccf                                           ; $5DC6: $3F
    ld e, $7F                                     ; $5DC7: $1E $7F
    jr nz, jr_024_5E3E                            ; $5DC9: $20 $73

    inc c                                         ; $5DCB: $0C
    ld b, d                                       ; $5DCC: $42
    inc a                                         ; $5DCD: $3C
    ld a, $00                                     ; $5DCE: $3E $00
    ldh [rP1], a                                  ; $5DD0: $E0 $00
    ldh [$C0], a                                  ; $5DD2: $E0 $C0
    ldh a, [$60]                                  ; $5DD4: $F0 $60
    ld hl, sp-$20                                 ; $5DD6: $F8 $E0
    db $E4                                        ; $5DD8: $E4
    jr jr_024_5D5F                                ; $5DD9: $18 $84

    ld a, b                                       ; $5DDB: $78
    ld hl, sp+$00                                 ; $5DDC: $F8 $00

jr_024_5DDE:
    nop                                           ; $5DDE: $00
    nop                                           ; $5DDF: $00
    cp $0C                                        ; $5DE0: $FE $0C
    cp $F0                                        ; $5DE2: $FE $F0
    ld sp, hl                                     ; $5DE4: $F9
    ld b, $FD                                     ; $5DE5: $06 $FD
    adc $FF                                       ; $5DE7: $CE $FF
    call c, $C0FC                                 ; $5DE9: $DC $FC $C0
    ldh [rP1], a                                  ; $5DEC: $E0 $00
    ldh [$C0], a                                  ; $5DEE: $E0 $C0
    ld bc, $0300                                  ; $5DF0: $01 $00 $03
    ld bc, $0007                                  ; $5DF3: $01 $07 $00
    rrca                                          ; $5DF6: $0F
    rlca                                          ; $5DF7: $07
    rra                                           ; $5DF8: $1F
    rrca                                          ; $5DF9: $0F
    rra                                           ; $5DFA: $1F
    rrca                                          ; $5DFB: $0F
    ccf                                           ; $5DFC: $3F
    dec e                                         ; $5DFD: $1D
    ld a, l                                       ; $5DFE: $7D
    ld [bc], a                                    ; $5DFF: $02
    sbc a                                         ; $5E00: $9F
    ld l, b                                       ; $5E01: $68
    rst $18                                       ; $5E02: $DF
    ld h, a                                       ; $5E03: $67
    rst $38                                       ; $5E04: $FF
    jr nz, jr_024_5E86                            ; $5E05: $20 $7F

    ld b, $1F                                     ; $5E07: $06 $1F
    ld b, $1F                                     ; $5E09: $06 $1F
    ld [bc], a                                    ; $5E0B: $02
    rrca                                          ; $5E0C: $0F
    nop                                           ; $5E0D: $00
    rrca                                          ; $5E0E: $0F
    rlca                                          ; $5E0F: $07
    ldh a, [rP1]                                  ; $5E10: $F0 $00
    ldh a, [$E0]                                  ; $5E12: $F0 $E0
    ld hl, sp+$70                                 ; $5E14: $F8 $70
    ld hl, sp+$40                                 ; $5E16: $F8 $40
    ret z                                         ; $5E18: $C8

    jr nc, jr_024_5D9F                            ; $5E19: $30 $84

    ld a, b                                       ; $5E1B: $78
    call nz, $F838                                ; $5E1C: $C4 $38 $F8
    nop                                           ; $5E1F: $00
    nop                                           ; $5E20: $00
    nop                                           ; $5E21: $00
    ld a, b                                       ; $5E22: $78
    nop                                           ; $5E23: $00
    cp $78                                        ; $5E24: $FE $78
    ld a, a                                       ; $5E26: $7F
    ld a, $FF                                     ; $5E27: $3E $FF
    ld a, a                                       ; $5E29: $7F
    rst $38                                       ; $5E2A: $FF
    ld a, a                                       ; $5E2B: $7F
    rst $38                                       ; $5E2C: $FF
    ld a, a                                       ; $5E2D: $7F
    ld a, a                                       ; $5E2E: $7F
    ccf                                           ; $5E2F: $3F
    nop                                           ; $5E30: $00
    nop                                           ; $5E31: $00
    nop                                           ; $5E32: $00
    nop                                           ; $5E33: $00
    nop                                           ; $5E34: $00
    nop                                           ; $5E35: $00
    ret nz                                        ; $5E36: $C0

    nop                                           ; $5E37: $00
    ldh [$C0], a                                  ; $5E38: $E0 $C0
    ldh a, [$E0]                                  ; $5E3A: $F0 $E0
    ld hl, sp-$10                                 ; $5E3C: $F8 $F0

jr_024_5E3E:
    ld hl, sp-$10                                 ; $5E3E: $F8 $F0
    ld bc, $0300                                  ; $5E40: $01 $00 $03
    ld bc, $0207                                  ; $5E43: $01 $07 $02
    rlca                                          ; $5E46: $07
    nop                                           ; $5E47: $00
    inc bc                                        ; $5E48: $03
    nop                                           ; $5E49: $00
    ld bc, $0300                                  ; $5E4A: $01 $00 $03
    ld bc, $0307                                  ; $5E4D: $01 $07 $03
    rst $38                                       ; $5E50: $FF
    inc hl                                        ; $5E51: $23
    rst $38                                       ; $5E52: $FF
    ret nc                                        ; $5E53: $D0

    rst $38                                       ; $5E54: $FF
    add sp, -$01                                  ; $5E55: $E8 $FF
    ld h, a                                       ; $5E57: $67
    rst $38                                       ; $5E58: $FF
    ld [$DF3F], sp                                ; $5E59: $08 $3F $DF
    rst $38                                       ; $5E5C: $FF

jr_024_5E5D:
    sbc $FF                                       ; $5E5D: $DE $FF
    adc b                                         ; $5E5F: $88
    ld hl, sp+$20                                 ; $5E60: $F8 $20
    db $FC                                        ; $5E62: $FC
    jr z, jr_024_5E5D                             ; $5E63: $28 $F8

    ld d, b                                       ; $5E65: $50
    ldh a, [$80]                                  ; $5E66: $F0 $80
    ldh [rP1], a                                  ; $5E68: $E0 $00
    ldh [$80], a                                  ; $5E6A: $E0 $80
    ldh a, [rNR41]                                ; $5E6C: $F0 $20
    or $00                                        ; $5E6E: $F6 $00
    rlca                                          ; $5E70: $07
    inc bc                                        ; $5E71: $03
    rlca                                          ; $5E72: $07
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
    rst $18                                       ; $5E80: $DF
    ld [bc], a                                    ; $5E81: $02
    sbc [hl]                                      ; $5E82: $9E
    dec b                                         ; $5E83: $05
    ld c, $05                                     ; $5E84: $0E $05

jr_024_5E86:
    ld b, $01                                     ; $5E86: $06 $01
    rlca                                          ; $5E88: $07
    nop                                           ; $5E89: $00
    ld bc, $0000                                  ; $5E8A: $01 $00 $00
    nop                                           ; $5E8D: $00
    nop                                           ; $5E8E: $00
    nop                                           ; $5E8F: $00
    ld sp, hl                                     ; $5E90: $F9
    ld h, [hl]                                    ; $5E91: $66
    ld a, c                                       ; $5E92: $79
    or [hl]                                       ; $5E93: $B6
    add hl, sp                                    ; $5E94: $39
    sub $39                                       ; $5E95: $D6 $39
    add $2E                                       ; $5E97: $C6 $2E
    ret nz                                        ; $5E99: $C0

    ret nz                                        ; $5E9A: $C0

    nop                                           ; $5E9B: $00
    nop                                           ; $5E9C: $00
    nop                                           ; $5E9D: $00
    nop                                           ; $5E9E: $00
    nop                                           ; $5E9F: $00
    cp $0C                                        ; $5EA0: $FE $0C
    db $FC                                        ; $5EA2: $FC
    ld hl, sp-$08                                 ; $5EA3: $F8 $F8
    nop                                           ; $5EA5: $00
    ld hl, sp-$60                                 ; $5EA6: $F8 $A0
    ld hl, sp-$70                                 ; $5EA8: $F8 $90
    db $FC                                        ; $5EAA: $FC
    sbc b                                         ; $5EAB: $98
    db $EC                                        ; $5EAC: $EC
    jr @-$06                                      ; $5EAD: $18 $F8

    ldh [rIF], a                                  ; $5EAF: $E0 $0F
    nop                                           ; $5EB1: $00
    rrca                                          ; $5EB2: $0F
    rlca                                          ; $5EB3: $07
    rra                                           ; $5EB4: $1F
    rrca                                          ; $5EB5: $0F
    rra                                           ; $5EB6: $1F
    ld c, $3F                                     ; $5EB7: $0E $3F
    db $10                                        ; $5EB9: $10
    add hl, sp                                    ; $5EBA: $39
    ld b, $21                                     ; $5EBB: $06 $21
    ld e, $1F                                     ; $5EBD: $1E $1F
    nop                                           ; $5EBF: $00
    ldh [rP1], a                                  ; $5EC0: $E0 $00
    ldh [$C0], a                                  ; $5EC2: $E0 $C0
    ldh a, [$60]                                  ; $5EC4: $F0 $60
    ldh a, [$C0]                                  ; $5EC6: $F0 $C0
    ret z                                         ; $5EC8: $C8

    jr nc, jr_024_5ED3                            ; $5EC9: $30 $08

    ldh a, [$F0]                                  ; $5ECB: $F0 $F0
    nop                                           ; $5ECD: $00
    nop                                           ; $5ECE: $00
    nop                                           ; $5ECF: $00
    ld bc, $0300                                  ; $5ED0: $01 $00 $03

jr_024_5ED3:
    ld bc, $0007                                  ; $5ED3: $01 $07 $00
    rrca                                          ; $5ED6: $0F
    rlca                                          ; $5ED7: $07
    rra                                           ; $5ED8: $1F
    rrca                                          ; $5ED9: $0F
    rra                                           ; $5EDA: $1F
    rrca                                          ; $5EDB: $0F
    ccf                                           ; $5EDC: $3F
    dec e                                         ; $5EDD: $1D
    dec a                                         ; $5EDE: $3D
    ld [de], a                                    ; $5EDF: $12
    add b                                         ; $5EE0: $80
    nop                                           ; $5EE1: $00
    ret nz                                        ; $5EE2: $C0

    add b                                         ; $5EE3: $80
    ldh [$80], a                                  ; $5EE4: $E0 $80
    ldh a, [$E0]                                  ; $5EE6: $F0 $E0
    ld hl, sp-$10                                 ; $5EE8: $F8 $F0
    ld hl, sp-$10                                 ; $5EEA: $F8 $F0
    db $FC                                        ; $5EEC: $FC
    cp b                                          ; $5EED: $B8
    cp h                                          ; $5EEE: $BC
    ld c, b                                       ; $5EEF: $48
    ld a, a                                       ; $5EF0: $7F
    jr z, @+$01                                   ; $5EF1: $28 $FF

    ld [hl], a                                    ; $5EF3: $77
    rst $38                                       ; $5EF4: $FF
    ld [hl], b                                    ; $5EF5: $70
    ld a, a                                       ; $5EF6: $7F

jr_024_5EF7:
    nop                                           ; $5EF7: $00
    ccf                                           ; $5EF8: $3F
    dec c                                         ; $5EF9: $0D
    ld e, $05                                     ; $5EFA: $1E $05
    ld c, $01                                     ; $5EFC: $0E $01
    rrca                                          ; $5EFE: $0F
    nop                                           ; $5EFF: $00
    cp $14                                        ; $5F00: $FE $14
    rst $38                                       ; $5F02: $FF
    xor $FF                                       ; $5F03: $EE $FF
    ld c, $FE                                     ; $5F05: $0E $FE
    jr nz, @-$06                                  ; $5F07: $20 $F8

    ldh [$F0], a                                  ; $5F09: $E0 $F0
    ret nz                                        ; $5F0B: $C0

    ld [hl], b                                    ; $5F0C: $70
    add b                                         ; $5F0D: $80
    ldh a, [rP1]                                  ; $5F0E: $F0 $00
    cp $14                                        ; $5F10: $FE $14
    rst $38                                       ; $5F12: $FF
    xor $FF                                       ; $5F13: $EE $FF
    ld c, $FE                                     ; $5F15: $0E $FE
    nop                                           ; $5F17: $00
    db $FC                                        ; $5F18: $FC
    jr nc, jr_024_5EF7                            ; $5F19: $30 $DC

    jr c, @-$36                                   ; $5F1B: $38 $C8

    jr nc, @-$0E                                  ; $5F1D: $30 $F0

    add b                                         ; $5F1F: $80
    cp $14                                        ; $5F20: $FE $14
    rst $38                                       ; $5F22: $FF
    xor $FF                                       ; $5F23: $EE $FF
    ld c, $FF                                     ; $5F25: $0E $FF
    ld h, b                                       ; $5F27: $60
    rst $38                                       ; $5F28: $FF
    ld h, e                                       ; $5F29: $63
    db $FC                                        ; $5F2A: $FC
    ld b, e                                       ; $5F2B: $43
    or $01                                        ; $5F2C: $F6 $01
    di                                            ; $5F2E: $F3
    ldh [rP1], a                                  ; $5F2F: $E0 $00
    nop                                           ; $5F31: $00
    nop                                           ; $5F32: $00
    nop                                           ; $5F33: $00
    nop                                           ; $5F34: $00
    nop                                           ; $5F35: $00
    nop                                           ; $5F36: $00
    nop                                           ; $5F37: $00
    add b                                         ; $5F38: $80
    nop                                           ; $5F39: $00
    ret nz                                        ; $5F3A: $C0

    add b                                         ; $5F3B: $80
    add b                                         ; $5F3C: $80
    nop                                           ; $5F3D: $00
    nop                                           ; $5F3E: $00
    nop                                           ; $5F3F: $00
    add b                                         ; $5F40: $80
    nop                                           ; $5F41: $00
    ret nz                                        ; $5F42: $C0

    add b                                         ; $5F43: $80
    ldh [$80], a                                  ; $5F44: $E0 $80
    ldh a, [$E0]                                  ; $5F46: $F0 $E0
    ld hl, sp-$10                                 ; $5F48: $F8 $F0
    ld hl, sp-$10                                 ; $5F4A: $F8 $F0
    db $FC                                        ; $5F4C: $FC
    cp b                                          ; $5F4D: $B8
    cp [hl]                                       ; $5F4E: $BE
    ld b, b                                       ; $5F4F: $40
    cp $14                                        ; $5F50: $FE $14
    rst $38                                       ; $5F52: $FF
    xor $FF                                       ; $5F53: $EE $FF
    ld c, $FE                                     ; $5F55: $0E $FE
    ld h, b                                       ; $5F57: $60
    cp $6C                                        ; $5F58: $FE $6C
    rst $30                                       ; $5F5A: $F7
    ld c, [hl]                                    ; $5F5B: $4E
    ld a, [c]                                     ; $5F5C: $F2
    inc c                                         ; $5F5D: $0C
    db $FC                                        ; $5F5E: $FC
    ldh [rP1], a                                  ; $5F5F: $E0 $00
    nop                                           ; $5F61: $00
    nop                                           ; $5F62: $00
    nop                                           ; $5F63: $00
    nop                                           ; $5F64: $00
    nop                                           ; $5F65: $00
    nop                                           ; $5F66: $00
    nop                                           ; $5F67: $00
    nop                                           ; $5F68: $00
    nop                                           ; $5F69: $00
    inc e                                         ; $5F6A: $1C
    nop                                           ; $5F6B: $00
    ccf                                           ; $5F6C: $3F
    nop                                           ; $5F6D: $00
    dec a                                         ; $5F6E: $3D
    inc bc                                        ; $5F6F: $03
    nop                                           ; $5F70: $00
    nop                                           ; $5F71: $00
    nop                                           ; $5F72: $00
    nop                                           ; $5F73: $00

jr_024_5F74:
    nop                                           ; $5F74: $00
    nop                                           ; $5F75: $00

jr_024_5F76:
    nop                                           ; $5F76: $00
    nop                                           ; $5F77: $00
    nop                                           ; $5F78: $00
    nop                                           ; $5F79: $00
    nop                                           ; $5F7A: $00
    nop                                           ; $5F7B: $00
    ld hl, sp+$00                                 ; $5F7C: $F8 $00
    db $FC                                        ; $5F7E: $FC

jr_024_5F7F:
    ld hl, sp+$3C                                 ; $5F7F: $F8 $3C
    rlca                                          ; $5F81: $07
    ld e, $0F                                     ; $5F82: $1E $0F
    ld a, $07                                     ; $5F84: $3E $07
    ld a, a                                       ; $5F86: $7F
    ld a, [hl+]                                   ; $5F87: $2A
    ld a, [hl-]                                   ; $5F88: $3A
    dec d                                         ; $5F89: $15
    ld e, $01                                     ; $5F8A: $1E $01
    dec b                                         ; $5F8C: $05
    ld [bc], a                                    ; $5F8D: $02
    ld b, $01                                     ; $5F8E: $06 $01
    ld a, [hl]                                    ; $5F90: $7E
    db $FC                                        ; $5F91: $FC
    ld a, [hl]                                    ; $5F92: $7E
    db $FC                                        ; $5F93: $FC
    rst $38                                       ; $5F94: $FF
    ld l, $FF                                     ; $5F95: $2E $FF
    ld b, $4F                                     ; $5F97: $06 $4F
    or d                                          ; $5F99: $B2
    ld c, [hl]                                    ; $5F9A: $4E
    or b                                          ; $5F9B: $B0
    ld e, b                                       ; $5F9C: $58
    and b                                         ; $5F9D: $A0
    ld d, b                                       ; $5F9E: $50
    and b                                         ; $5F9F: $A0
    rlca                                          ; $5FA0: $07
    nop                                           ; $5FA1: $00
    inc b                                         ; $5FA2: $04
    inc bc                                        ; $5FA3: $03
    ld [bc], a                                    ; $5FA4: $02
    ld bc, $003F                                  ; $5FA5: $01 $3F $00
    ld b, e                                       ; $5FA8: $43
    dec a                                         ; $5FA9: $3D
    ld b, a                                       ; $5FAA: $47
    dec sp                                        ; $5FAB: $3B
    ccf                                           ; $5FAC: $3F
    nop                                           ; $5FAD: $00
    nop                                           ; $5FAE: $00
    nop                                           ; $5FAF: $00
    ldh [rP1], a                                  ; $5FB0: $E0 $00
    jr nz, jr_024_5F74                            ; $5FB2: $20 $C0

jr_024_5FB4:
    jr nc, jr_024_5F76                            ; $5FB4: $30 $C0

    ld hl, sp+$10                                 ; $5FB6: $F8 $10
    ld hl, sp-$50                                 ; $5FB8: $F8 $B0
    ld hl, sp-$80                                 ; $5FBA: $F8 $80
    ret nz                                        ; $5FBC: $C0

    nop                                           ; $5FBD: $00
    nop                                           ; $5FBE: $00
    nop                                           ; $5FBF: $00
    inc bc                                        ; $5FC0: $03
    nop                                           ; $5FC1: $00
    rlca                                          ; $5FC2: $07
    nop                                           ; $5FC3: $00
    dec bc                                        ; $5FC4: $0B
    rlca                                          ; $5FC5: $07
    dec de                                        ; $5FC6: $1B
    ld c, $19                                     ; $5FC7: $0E $19

jr_024_5FC9:
    rrca                                          ; $5FC9: $0F
    dec de                                        ; $5FCA: $1B
    dec c                                         ; $5FCB: $0D
    ld a, l                                       ; $5FCC: $7D
    ld a, [bc]                                    ; $5FCD: $0A
    sbc d                                         ; $5FCE: $9A
    ld h, l                                       ; $5FCF: $65
    ldh [rP1], a                                  ; $5FD0: $E0 $00
    ldh a, [rP1]                                  ; $5FD2: $F0 $00
    ldh a, [$E0]                                  ; $5FD4: $F0 $E0
    ld hl, sp-$10                                 ; $5FD6: $F8 $F0
    ret c                                         ; $5FD8: $D8

    ld [hl], b                                    ; $5FD9: $70
    ret c                                         ; $5FDA: $D8

    jr nc, jr_024_601B                            ; $5FDB: $30 $3E

    ret nc                                        ; $5FDD: $D0

    ld e, c                                       ; $5FDE: $59
    and [hl]                                      ; $5FDF: $A6
    ld e, c                                       ; $5FE0: $59
    and [hl]                                      ; $5FE1: $A6
    ld [hl], $C8                                  ; $5FE2: $36 $C8
    add sp, $10                                   ; $5FE4: $E8 $10
    ret nc                                        ; $5FE6: $D0

    jr nz, jr_024_5FC9                            ; $5FE7: $20 $E0

    nop                                           ; $5FE9: $00
    ret nz                                        ; $5FEA: $C0

    nop                                           ; $5FEB: $00
    ld b, b                                       ; $5FEC: $40
    add b                                         ; $5FED: $80
    ret nz                                        ; $5FEE: $C0

    nop                                           ; $5FEF: $00
    ld h, b                                       ; $5FF0: $60
    add b                                         ; $5FF1: $80
    jr nz, jr_024_5FB4                            ; $5FF2: $20 $C0

    ldh [rP1], a                                  ; $5FF4: $E0 $00
    ldh a, [rLCDC]                                ; $5FF6: $F0 $40
    ret z                                         ; $5FF8: $C8

    jr nc, jr_024_5F7F                            ; $5FF9: $30 $84

    ld a, b                                       ; $5FFB: $78
    call nz, $F838                                ; $5FFC: $C4 $38 $F8
    nop                                           ; $5FFF: $00
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    dec de                                        ; $6002: $1B
    nop                                           ; $6003: $00
    ld a, $01                                     ; $6004: $3E $01
    dec sp                                        ; $6006: $3B
    rlca                                          ; $6007: $07
    rra                                           ; $6008: $1F
    rlca                                          ; $6009: $07
    ccf                                           ; $600A: $3F
    rrca                                          ; $600B: $0F
    ld a, a                                       ; $600C: $7F
    add hl, sp                                    ; $600D: $39
    dec a                                         ; $600E: $3D
    ld a, [de]                                    ; $600F: $1A
    nop                                           ; $6010: $00
    nop                                           ; $6011: $00
    ldh a, [rP1]                                  ; $6012: $F0 $00
    ld a, b                                       ; $6014: $78
    ldh a, [$F8]                                  ; $6015: $F0 $F8
    ldh a, [$FC]                                  ; $6017: $F0 $FC
    ld hl, sp-$04                                 ; $6019: $F8 $FC

jr_024_601B:
    xor b                                         ; $601B: $A8
    cp b                                          ; $601C: $B8
    ld b, b                                       ; $601D: $40
    ld d, b                                       ; $601E: $50
    and b                                         ; $601F: $A0
    inc e                                         ; $6020: $1C
    inc bc                                        ; $6021: $03
    ld b, $01                                     ; $6022: $06 $01
    dec bc                                        ; $6024: $0B
    inc b                                         ; $6025: $04
    rla                                           ; $6026: $17
    ld [$102B], sp                                ; $6027: $08 $2B $10
    ld c, e                                       ; $602A: $4B
    jr nc, jr_024_6079                            ; $602B: $30 $4C

    inc sp                                        ; $602D: $33
    scf                                           ; $602E: $37

jr_024_602F:
    nop                                           ; $602F: $00
    ld d, b                                       ; $6030: $50
    and b                                         ; $6031: $A0
    inc e                                         ; $6032: $1C
    ldh [$F2], a                                  ; $6033: $E0 $F2
    inc c                                         ; $6035: $0C
    ld a, [c]                                     ; $6036: $F2
    inc c                                         ; $6037: $0C
    db $EC                                        ; $6038: $EC
    db $10                                        ; $6039: $10
    ldh a, [rP1]                                  ; $603A: $F0 $00
    ld b, b                                       ; $603C: $40
    add b                                         ; $603D: $80
    ret nz                                        ; $603E: $C0

    nop                                           ; $603F: $00
    ld [$0F07], sp                                ; $6040: $08 $07 $0F
    nop                                           ; $6043: $00
    rrca                                          ; $6044: $0F
    inc b                                         ; $6045: $04
    rrca                                          ; $6046: $0F
    inc b                                         ; $6047: $04
    rra                                           ; $6048: $1F
    ld [$031C], sp                                ; $6049: $08 $1C $03
    jr nz, jr_024_606D                            ; $604C: $20 $1F

    rra                                           ; $604E: $1F
    nop                                           ; $604F: $00
    ld b, b                                       ; $6050: $40
    add b                                         ; $6051: $80
    ret nz                                        ; $6052: $C0

    nop                                           ; $6053: $00
    ret nz                                        ; $6054: $C0

    add b                                         ; $6055: $80
    ldh a, [$80]                                  ; $6056: $F0 $80
    ret z                                         ; $6058: $C8

    jr nc, @-$76                                  ; $6059: $30 $88

    ld [hl], b                                    ; $605B: $70
    ldh a, [rP1]                                  ; $605C: $F0 $00
    add b                                         ; $605E: $80
    nop                                           ; $605F: $00
    ld d, b                                       ; $6060: $50
    and [hl]                                      ; $6061: $A6
    inc e                                         ; $6062: $1C
    db $E3                                        ; $6063: $E3

jr_024_6064:
    ld a, [c]                                     ; $6064: $F2
    dec c                                         ; $6065: $0D
    ld a, [c]                                     ; $6066: $F2
    inc c                                         ; $6067: $0C
    db $EC                                        ; $6068: $EC
    db $10                                        ; $6069: $10
    ldh a, [rP1]                                  ; $606A: $F0 $00
    ld b, b                                       ; $606C: $40

jr_024_606D:
    add b                                         ; $606D: $80
    ret nz                                        ; $606E: $C0

    nop                                           ; $606F: $00
    nop                                           ; $6070: $00
    nop                                           ; $6071: $00
    ldh a, [rP1]                                  ; $6072: $F0 $00
    ld a, b                                       ; $6074: $78
    ldh a, [$F8]                                  ; $6075: $F0 $F8
    ldh a, [$FC]                                  ; $6077: $F0 $FC

jr_024_6079:
    ld hl, sp-$04                                 ; $6079: $F8 $FC
    xor b                                         ; $607B: $A8
    cp b                                          ; $607C: $B8
    ld b, b                                       ; $607D: $40
    ld d, b                                       ; $607E: $50
    and a                                         ; $607F: $A7
    ld d, b                                       ; $6080: $50
    xor a                                         ; $6081: $AF
    inc e                                         ; $6082: $1C
    db $E3                                        ; $6083: $E3
    ld a, [c]                                     ; $6084: $F2
    dec c                                         ; $6085: $0D
    ld a, [c]                                     ; $6086: $F2
    dec c                                         ; $6087: $0D
    db $EC                                        ; $6088: $EC

jr_024_6089:
    db $10                                        ; $6089: $10
    ldh a, [rP1]                                  ; $608A: $F0 $00
    ld b, b                                       ; $608C: $40
    add b                                         ; $608D: $80
    ret nz                                        ; $608E: $C0

    nop                                           ; $608F: $00
    nop                                           ; $6090: $00
    add b                                         ; $6091: $80
    nop                                           ; $6092: $00
    add b                                         ; $6093: $80
    nop                                           ; $6094: $00
    add b                                         ; $6095: $80
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
    ld [hl], b                                    ; $60A0: $70
    add b                                         ; $60A1: $80
    jr nz, jr_024_6064                            ; $60A2: $20 $C0

    ldh [rP1], a                                  ; $60A4: $E0 $00
    ldh a, [rLCDC]                                ; $60A6: $F0 $40
    ret z                                         ; $60A8: $C8

    jr nc, jr_024_602F                            ; $60A9: $30 $84

    ld a, b                                       ; $60AB: $78
    call nz, $F838                                ; $60AC: $C4 $38 $F8
    nop                                           ; $60AF: $00
    ld e, [hl]                                    ; $60B0: $5E
    and h                                         ; $60B1: $A4
    inc a                                         ; $60B2: $3C
    ret nz                                        ; $60B3: $C0

    ldh [rP1], a                                  ; $60B4: $E0 $00
    ret nc                                        ; $60B6: $D0

    jr nz, jr_024_6089                            ; $60B7: $20 $D0

    jr nz, @-$2E                                  ; $60B9: $20 $D0

    jr nz, jr_024_6105                            ; $60BB: $20 $48

    or b                                          ; $60BD: $B0
    ret z                                         ; $60BE: $C8

    jr nc, jr_024_60C4                            ; $60BF: $30 $03

    nop                                           ; $60C1: $00
    rlca                                          ; $60C2: $07
    nop                                           ; $60C3: $00

jr_024_60C4:
    dec bc                                        ; $60C4: $0B
    rlca                                          ; $60C5: $07
    dec de                                        ; $60C6: $1B
    ld c, $19                                     ; $60C7: $0E $19
    rrca                                          ; $60C9: $0F
    dec de                                        ; $60CA: $1B

jr_024_60CB:
    dec c                                         ; $60CB: $0D
    ld e, l                                       ; $60CC: $5D
    ld a, [bc]                                    ; $60CD: $0A
    ld [$E055], a                                 ; $60CE: $EA $55 $E0
    nop                                           ; $60D1: $00
    ldh a, [rP1]                                  ; $60D2: $F0 $00
    ldh a, [$E0]                                  ; $60D4: $F0 $E0
    ld hl, sp-$10                                 ; $60D6: $F8 $F0
    ret c                                         ; $60D8: $D8

    ld [hl], b                                    ; $60D9: $70
    ret c                                         ; $60DA: $D8

    jr nc, @+$3C                                  ; $60DB: $30 $3A

    ret nc                                        ; $60DD: $D0

    ld d, a                                       ; $60DE: $57
    xor d                                         ; $60DF: $AA
    ld a, d                                       ; $60E0: $7A
    dec h                                         ; $60E1: $25
    ccf                                           ; $60E2: $3F
    nop                                           ; $60E3: $00
    inc b                                         ; $60E4: $04
    inc bc                                        ; $60E5: $03
    inc c                                         ; $60E6: $0C
    inc bc                                        ; $60E7: $03
    dec bc                                        ; $60E8: $0B
    inc b                                         ; $60E9: $04
    dec bc                                        ; $60EA: $0B
    inc b                                         ; $60EB: $04
    ld b, $01                                     ; $60EC: $06 $01
    inc bc                                        ; $60EE: $03
    nop                                           ; $60EF: $00
    ld e, [hl]                                    ; $60F0: $5E
    and h                                         ; $60F1: $A4
    ld a, h                                       ; $60F2: $7C
    add b                                         ; $60F3: $80
    sub b                                         ; $60F4: $90
    ld h, b                                       ; $60F5: $60
    sub b                                         ; $60F6: $90
    ld h, b                                       ; $60F7: $60
    ret nc                                        ; $60F8: $D0

    jr nz, jr_024_60CB                            ; $60F9: $20 $D0

    jr nz, @+$62                                  ; $60FB: $20 $60

    add b                                         ; $60FD: $80
    ldh [rP1], a                                  ; $60FE: $E0 $00
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    nop                                           ; $6103: $00
    nop                                           ; $6104: $00

jr_024_6105:
    nop                                           ; $6105: $00
    nop                                           ; $6106: $00
    ld [rRAMG], sp                                ; $6107: $08 $00 $00
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
    ld [$1C00], sp                                ; $6115: $08 $00 $1C
    nop                                           ; $6118: $00
    ld [rRAMG], sp                                ; $6119: $08 $00 $00
    nop                                           ; $611C: $00
    nop                                           ; $611D: $00
    nop                                           ; $611E: $00
    nop                                           ; $611F: $00
    nop                                           ; $6120: $00
    nop                                           ; $6121: $00
    nop                                           ; $6122: $00
    ld [$0800], sp                                ; $6123: $08 $00 $08
    nop                                           ; $6126: $00
    cp [hl]                                       ; $6127: $BE
    nop                                           ; $6128: $00
    ld [$0800], sp                                ; $6129: $08 $00 $08
    nop                                           ; $612C: $00
    nop                                           ; $612D: $00
    nop                                           ; $612E: $00
    ld [rRAMG], sp                                ; $612F: $08 $00 $00
    nop                                           ; $6132: $00
    nop                                           ; $6133: $00
    nop                                           ; $6134: $00
    nop                                           ; $6135: $00
    nop                                           ; $6136: $00
    add b                                         ; $6137: $80
    nop                                           ; $6138: $00
    nop                                           ; $6139: $00
    nop                                           ; $613A: $00
    nop                                           ; $613B: $00
    nop                                           ; $613C: $00
    nop                                           ; $613D: $00
    nop                                           ; $613E: $00

jr_024_613F:
    nop                                           ; $613F: $00
    rst $38                                       ; $6140: $FF
    ld [hl], b                                    ; $6141: $70
    ld a, a                                       ; $6142: $7F
    jr c, @+$81                                   ; $6143: $38 $7F

    dec e                                         ; $6145: $1D
    ld e, a                                       ; $6146: $5F
    jr nz, jr_024_61A8                            ; $6147: $20 $5F

    jr nz, @+$41                                  ; $6149: $20 $3F

    jr @+$3D                                      ; $614B: $18 $3B

    inc e                                         ; $614D: $1C
    inc de                                        ; $614E: $13
    dec c                                         ; $614F: $0D
    ld l, $D4                                     ; $6150: $2E $D4
    adc h                                         ; $6152: $8C
    ld [hl], b                                    ; $6153: $70
    cp $80                                        ; $6154: $FE $80
    jp hl                                         ; $6156: $E9


    ld d, $F9                                     ; $6157: $16 $F9
    ld c, $FE                                     ; $6159: $0E $FE
    nop                                           ; $615B: $00
    ldh a, [rP1]                                  ; $615C: $F0 $00
    ldh [$C0], a                                  ; $615E: $E0 $C0
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    rlca                                          ; $6162: $07
    nop                                           ; $6163: $00
    ld [$1007], sp                                ; $6164: $08 $07 $10
    rrca                                          ; $6167: $0F
    db $10                                        ; $6168: $10
    rrca                                          ; $6169: $0F
    db $10                                        ; $616A: $10
    rrca                                          ; $616B: $0F
    db $10                                        ; $616C: $10
    rrca                                          ; $616D: $0F
    ld a, b                                       ; $616E: $78
    rlca                                          ; $616F: $07
    nop                                           ; $6170: $00
    nop                                           ; $6171: $00
    ldh [rP1], a                                  ; $6172: $E0 $00
    db $10                                        ; $6174: $10
    ldh [$08], a                                  ; $6175: $E0 $08
    ldh a, [rNR23]                                ; $6177: $F0 $18
    ldh a, [rNR23]                                ; $6179: $F0 $18
    ldh a, [$08]                                  ; $617B: $F0 $08
    ldh a, [$7C]                                  ; $617D: $F0 $7C
    add b                                         ; $617F: $80
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    nop                                           ; $6183: $00
    nop                                           ; $6184: $00
    ld b, b                                       ; $6185: $40
    nop                                           ; $6186: $00
    jr nz, jr_024_6189                            ; $6187: $20 $00

jr_024_6189:
    jr nz, jr_024_618B                            ; $6189: $20 $00

jr_024_618B:
    ld h, b                                       ; $618B: $60
    nop                                           ; $618C: $00
    ret nz                                        ; $618D: $C0

    nop                                           ; $618E: $00
    nop                                           ; $618F: $00
    nop                                           ; $6190: $00
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    ld [hl], b                                    ; $6193: $70
    nop                                           ; $6194: $00
    jr c, jr_024_6197                             ; $6195: $38 $00

jr_024_6197:
    jr jr_024_6199                                ; $6197: $18 $00

jr_024_6199:
    jr jr_024_619B                                ; $6199: $18 $00

jr_024_619B:
    jr c, jr_024_619D                             ; $619B: $38 $00

jr_024_619D:
    ld hl, sp+$00                                 ; $619D: $F8 $00

jr_024_619F:
    ld [hl], b                                    ; $619F: $70
    rrca                                          ; $61A0: $0F
    nop                                           ; $61A1: $00
    rrca                                          ; $61A2: $0F
    rlca                                          ; $61A3: $07
    rra                                           ; $61A4: $1F
    rrca                                          ; $61A5: $0F
    ccf                                           ; $61A6: $3F
    rra                                           ; $61A7: $1F

jr_024_61A8:
    ld a, a                                       ; $61A8: $7F
    ld hl, $0C73                                  ; $61A9: $21 $73 $0C
    ld b, d                                       ; $61AC: $42
    inc a                                         ; $61AD: $3C
    ld a, $00                                     ; $61AE: $3E $00
    ldh [rP1], a                                  ; $61B0: $E0 $00
    ldh [$C0], a                                  ; $61B2: $E0 $C0
    ldh a, [$E0]                                  ; $61B4: $F0 $E0
    ld hl, sp-$20                                 ; $61B6: $F8 $E0
    db $E4                                        ; $61B8: $E4
    jr jr_024_613F                                ; $61B9: $18 $84

    ld a, b                                       ; $61BB: $78
    ld hl, sp+$00                                 ; $61BC: $F8 $00
    nop                                           ; $61BE: $00
    nop                                           ; $61BF: $00
    ldh [rP1], a                                  ; $61C0: $E0 $00
    db $10                                        ; $61C2: $10
    ldh [$08], a                                  ; $61C3: $E0 $08
    ldh a, [$08]                                  ; $61C5: $F0 $08
    ldh a, [$88]                                  ; $61C7: $F0 $88
    ldh a, [$88]                                  ; $61C9: $F0 $88
    ldh a, [$08]                                  ; $61CB: $F0 $08
    ldh a, [$EF]                                  ; $61CD: $F0 $EF
    db $10                                        ; $61CF: $10
    ld e, h                                       ; $61D0: $5C
    and e                                         ; $61D1: $A3
    dec a                                         ; $61D2: $3D
    db $DB                                        ; $61D3: $DB
    rst $38                                       ; $61D4: $FF
    add hl, sp                                    ; $61D5: $39
    db $FD                                        ; $61D6: $FD
    jp nz, $0CF2                                  ; $61D7: $C2 $F2 $0C

    db $FC                                        ; $61DA: $FC
    nop                                           ; $61DB: $00
    ldh a, [rP1]                                  ; $61DC: $F0 $00
    ldh a, [$E0]                                  ; $61DE: $F0 $E0
    add b                                         ; $61E0: $80
    nop                                           ; $61E1: $00
    add b                                         ; $61E2: $80
    nop                                           ; $61E3: $00
    add b                                         ; $61E4: $80
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
    rlca                                          ; $61F0: $07
    nop                                           ; $61F1: $00
    ld [$1007], sp                                ; $61F2: $08 $07 $10
    rrca                                          ; $61F5: $0F
    db $10                                        ; $61F6: $10
    rrca                                          ; $61F7: $0F
    ld de, $110F                                  ; $61F8: $11 $0F $11
    rrca                                          ; $61FB: $0F

jr_024_61FC:
    db $10                                        ; $61FC: $10
    rrca                                          ; $61FD: $0F
    ld [hl], a                                    ; $61FE: $77
    ld [$659A], sp                                ; $61FF: $08 $9A $65
    call c, $FF6B                                 ; $6202: $DC $6B $FF
    ld e, h                                       ; $6205: $5C
    cp a                                          ; $6206: $BF
    ld b, e                                       ; $6207: $43
    ld c, a                                       ; $6208: $4F
    jr nc, jr_024_624A                            ; $6209: $30 $3F

    nop                                           ; $620B: $00
    rrca                                          ; $620C: $0F
    nop                                           ; $620D: $00
    rrca                                          ; $620E: $0F
    rlca                                          ; $620F: $07
    ldh a, [rP1]                                  ; $6210: $F0 $00
    ldh a, [$E0]                                  ; $6212: $F0 $E0
    ld hl, sp-$10                                 ; $6214: $F8 $F0
    ld hl, sp-$40                                 ; $6216: $F8 $C0
    ret z                                         ; $6218: $C8

    jr nc, jr_024_619F                            ; $6219: $30 $84

    ld a, b                                       ; $621B: $78
    call nz, Call_024_7838                        ; $621C: $C4 $38 $78
    nop                                           ; $621F: $00
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00

jr_024_6222:
    nop                                           ; $6222: $00
    nop                                           ; $6223: $00
    rra                                           ; $6224: $1F
    nop                                           ; $6225: $00
    jr nz, jr_024_6247                            ; $6226: $20 $1F

    ld b, b                                       ; $6228: $40
    ccf                                           ; $6229: $3F
    ld b, b                                       ; $622A: $40
    ccf                                           ; $622B: $3F
    ld b, c                                       ; $622C: $41
    ccf                                           ; $622D: $3F
    ld b, c                                       ; $622E: $41
    ccf                                           ; $622F: $3F
    nop                                           ; $6230: $00
    nop                                           ; $6231: $00
    nop                                           ; $6232: $00
    nop                                           ; $6233: $00
    add b                                         ; $6234: $80
    nop                                           ; $6235: $00
    ld b, b                                       ; $6236: $40
    add b                                         ; $6237: $80
    jr nz, @-$3E                                  ; $6238: $20 $C0

    jr nz, jr_024_61FC                            ; $623A: $20 $C0

    and b                                         ; $623C: $A0
    ret nz                                        ; $623D: $C0

    and b                                         ; $623E: $A0
    ret nz                                        ; $623F: $C0

    ld bc, $0300                                  ; $6240: $01 $00 $03
    ld bc, $0001                                  ; $6243: $01 $01 $00
    nop                                           ; $6246: $00

jr_024_6247:
    nop                                           ; $6247: $00
    nop                                           ; $6248: $00
    nop                                           ; $6249: $00

jr_024_624A:
    ld bc, $0300                                  ; $624A: $01 $00 $03
    ld bc, $0305                                  ; $624D: $01 $05 $03
    ldh [$1F], a                                  ; $6250: $E0 $1F
    rst $30                                       ; $6252: $F7
    ret z                                         ; $6253: $C8

    ei                                            ; $6254: $FB
    db $E4                                        ; $6255: $E4
    rst $38                                       ; $6256: $FF
    nop                                           ; $6257: $00
    cp a                                          ; $6258: $BF
    ld b, a                                       ; $6259: $47
    ccf                                           ; $625A: $3F
    ret nz                                        ; $625B: $C0

    rst $38                                       ; $625C: $FF
    ret nz                                        ; $625D: $C0

    rst $38                                       ; $625E: $FF
    add b                                         ; $625F: $80
    jr nz, jr_024_6222                            ; $6260: $20 $C0

    ldh [rP1], a                                  ; $6262: $E0 $00
    ld h, b                                       ; $6264: $60
    add b                                         ; $6265: $80
    ldh [rP1], a                                  ; $6266: $E0 $00
    ret nz                                        ; $6268: $C0

    nop                                           ; $6269: $00
    ldh [rP1], a                                  ; $626A: $E0 $00
    ldh a, [rNR41]                                ; $626C: $F0 $20
    or $00                                        ; $626E: $F6 $00
    inc b                                         ; $6270: $04
    inc bc                                        ; $6271: $03
    rlca                                          ; $6272: $07
    nop                                           ; $6273: $00

jr_024_6274:
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
    rst $18                                       ; $6280: $DF
    ld [bc], a                                    ; $6281: $02
    sbc [hl]                                      ; $6282: $9E
    dec b                                         ; $6283: $05
    ld c, $05                                     ; $6284: $0E $05
    ld b, $01                                     ; $6286: $06 $01
    rlca                                          ; $6288: $07
    nop                                           ; $6289: $00
    ld bc, $0000                                  ; $628A: $01 $00 $00
    nop                                           ; $628D: $00
    nop                                           ; $628E: $00
    nop                                           ; $628F: $00
    ld sp, hl                                     ; $6290: $F9
    ld h, [hl]                                    ; $6291: $66
    ld a, c                                       ; $6292: $79
    or [hl]                                       ; $6293: $B6
    add hl, sp                                    ; $6294: $39
    sub $39                                       ; $6295: $D6 $39
    add $2E                                       ; $6297: $C6 $2E
    ret nz                                        ; $6299: $C0

    ret nz                                        ; $629A: $C0

    nop                                           ; $629B: $00
    nop                                           ; $629C: $00
    nop                                           ; $629D: $00
    nop                                           ; $629E: $00
    nop                                           ; $629F: $00
    rrca                                          ; $62A0: $0F
    nop                                           ; $62A1: $00
    db $10                                        ; $62A2: $10
    rrca                                          ; $62A3: $0F
    jr nz, jr_024_62C5                            ; $62A4: $20 $1F

    jr nz, jr_024_62C7                            ; $62A6: $20 $1F

    jr nz, jr_024_62C9                            ; $62A8: $20 $1F

    jr nz, jr_024_62CB                            ; $62AA: $20 $1F

    inc de                                        ; $62AC: $13
    inc c                                         ; $62AD: $0C
    ld a, c                                       ; $62AE: $79
    ld b, $C0                                     ; $62AF: $06 $C0
    nop                                           ; $62B1: $00
    jr nz, jr_024_6274                            ; $62B2: $20 $C0

    db $10                                        ; $62B4: $10
    ldh [$D0], a                                  ; $62B5: $E0 $D0
    ldh [$D0], a                                  ; $62B7: $E0 $D0
    ldh [rNR10], a                                ; $62B9: $E0 $10
    ldh [$F0], a                                  ; $62BB: $E0 $F0
    nop                                           ; $62BD: $00
    inc a                                         ; $62BE: $3C
    ret nz                                        ; $62BF: $C0

    db $FC                                        ; $62C0: $FC
    ld [hl], e                                    ; $62C1: $73
    ld a, a                                       ; $62C2: $7F
    jr c, jr_024_6344                             ; $62C3: $38 $7F

jr_024_62C5:
    dec e                                         ; $62C5: $1D
    ld e, a                                       ; $62C6: $5F

jr_024_62C7:
    jr nz, @+$61                                  ; $62C7: $20 $5F

jr_024_62C9:
    jr nz, @+$41                                  ; $62C9: $20 $3F

jr_024_62CB:
    jr jr_024_6308                                ; $62CB: $18 $3B

jr_024_62CD:
    inc e                                         ; $62CD: $1C
    inc de                                        ; $62CE: $13
    dec c                                         ; $62CF: $0D
    ld e, $EC                                     ; $62D0: $1E $EC
    db $FC                                        ; $62D2: $FC

jr_024_62D3:
    jr jr_024_62CD                                ; $62D3: $18 $F8

    or b                                          ; $62D5: $B0
    ldh a, [rP1]                                  ; $62D6: $F0 $00
    ret nc                                        ; $62D8: $D0

    jr nz, jr_024_62D3                            ; $62D9: $20 $F8

    jr nz, jr_024_62C5                            ; $62DB: $20 $E8

    db $10                                        ; $62DD: $10
    ldh a, [$C0]                                  ; $62DE: $F0 $C0
    rrca                                          ; $62E0: $0F
    nop                                           ; $62E1: $00
    rrca                                          ; $62E2: $0F
    rlca                                          ; $62E3: $07
    rra                                           ; $62E4: $1F
    rrca                                          ; $62E5: $0F
    rra                                           ; $62E6: $1F
    rrca                                          ; $62E7: $0F
    ccf                                           ; $62E8: $3F
    db $10                                        ; $62E9: $10
    add hl, sp                                    ; $62EA: $39
    ld b, $21                                     ; $62EB: $06 $21
    ld e, $1F                                     ; $62ED: $1E $1F
    nop                                           ; $62EF: $00
    ldh [rP1], a                                  ; $62F0: $E0 $00
    ldh [$C0], a                                  ; $62F2: $E0 $C0
    ldh a, [$E0]                                  ; $62F4: $F0 $E0
    ldh a, [$C0]                                  ; $62F6: $F0 $C0
    ret z                                         ; $62F8: $C8

    jr nc, @+$0A                                  ; $62F9: $30 $08

    ldh a, [$F0]                                  ; $62FB: $F0 $F0
    nop                                           ; $62FD: $00
    nop                                           ; $62FE: $00
    nop                                           ; $62FF: $00
    ld e, a                                       ; $6300: $5F
    xor [hl]                                      ; $6301: $AE
    ld a, $DC                                     ; $6302: $3E $DC
    db $FC                                        ; $6304: $FC
    jr c, @-$02                                   ; $6305: $38 $FC

    ret nz                                        ; $6307: $C0

jr_024_6308:
    db $F4                                        ; $6308: $F4
    ld [$08FC], sp                                ; $6309: $08 $FC $08
    db $EC                                        ; $630C: $EC
    jr @-$1A                                      ; $630D: $18 $E4

    ret c                                         ; $630F: $D8

    ld [hl], h                                    ; $6310: $74
    inc hl                                        ; $6311: $23
    rst $38                                       ; $6312: $FF
    ld b, b                                       ; $6313: $40
    rst $38                                       ; $6314: $FF
    ld e, h                                       ; $6315: $5C
    ld e, a                                       ; $6316: $5F
    inc c                                         ; $6317: $0C
    cpl                                           ; $6318: $2F
    db $10                                        ; $6319: $10
    inc h                                         ; $631A: $24
    dec de                                        ; $631B: $1B
    inc h                                         ; $631C: $24
    dec de                                        ; $631D: $1B
    rra                                           ; $631E: $1F
    nop                                           ; $631F: $00
    ld e, b                                       ; $6320: $58
    and b                                         ; $6321: $A0
    db $10                                        ; $6322: $10
    ldh [$FE], a                                  ; $6323: $E0 $FE
    nop                                           ; $6325: $00
    ld sp, hl                                     ; $6326: $F9
    ld h, $E1                                     ; $6327: $26 $E1
    ld e, $7E                                     ; $6329: $1E $7E
    add b                                         ; $632B: $80
    ld b, b                                       ; $632C: $40
    add b                                         ; $632D: $80
    ret nz                                        ; $632E: $C0

    nop                                           ; $632F: $00
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    dec de                                        ; $6332: $1B
    nop                                           ; $6333: $00
    ld a, a                                       ; $6334: $7F
    add hl, de                                    ; $6335: $19
    rst $38                                       ; $6336: $FF
    ld [hl], a                                    ; $6337: $77
    rst $38                                       ; $6338: $FF
    ld [hl], a                                    ; $6339: $77
    rst $38                                       ; $633A: $FF
    ld l, a                                       ; $633B: $6F
    rst $38                                       ; $633C: $FF
    ld l, c                                       ; $633D: $69
    ld sp, hl                                     ; $633E: $F9
    ld h, [hl]                                    ; $633F: $66
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    ldh a, [rP1]                                  ; $6342: $F0 $00

jr_024_6344:
    ld hl, sp-$10                                 ; $6344: $F8 $F0
    db $FC                                        ; $6346: $FC
    ld hl, sp-$04                                 ; $6347: $F8 $FC
    ld hl, sp-$04                                 ; $6349: $F8 $FC
    xor b                                         ; $634B: $A8
    cp h                                          ; $634C: $BC
    ld c, b                                       ; $634D: $48
    ld e, h                                       ; $634E: $5C
    xor b                                         ; $634F: $A8
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    nop                                           ; $6352: $00
    add b                                         ; $6353: $80
    nop                                           ; $6354: $00
    ld b, b                                       ; $6355: $40
    nop                                           ; $6356: $00
    jr nz, jr_024_6359                            ; $6357: $20 $00

jr_024_6359:
    jr nz, jr_024_635B                            ; $6359: $20 $00

jr_024_635B:
    ld b, b                                       ; $635B: $40
    nop                                           ; $635C: $00
    nop                                           ; $635D: $00
    nop                                           ; $635E: $00
    nop                                           ; $635F: $00
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    ldh [rP1], a                                  ; $6363: $E0 $00
    jr nc, jr_024_6367                            ; $6365: $30 $00

jr_024_6367:
    jr jr_024_6369                                ; $6367: $18 $00

jr_024_6369:
    jr jr_024_636B                                ; $6369: $18 $00

jr_024_636B:
    jr nc, jr_024_636D                            ; $636B: $30 $00

jr_024_636D:
    ld h, b                                       ; $636D: $60
    nop                                           ; $636E: $00
    nop                                           ; $636F: $00
    rrca                                          ; $6370: $0F
    rlca                                          ; $6371: $07
    rrca                                          ; $6372: $0F
    nop                                           ; $6373: $00
    dec bc                                        ; $6374: $0B
    inc b                                         ; $6375: $04
    ld a, [bc]                                    ; $6376: $0A
    inc b                                         ; $6377: $04
    rla                                           ; $6378: $17
    ld [$031F], sp                                ; $6379: $08 $1F $03
    ccf                                           ; $637C: $3F
    rra                                           ; $637D: $1F
    rra                                           ; $637E: $1F
    nop                                           ; $637F: $00
    ret nz                                        ; $6380: $C0

    add b                                         ; $6381: $80
    ret nz                                        ; $6382: $C0

    nop                                           ; $6383: $00
    ld b, b                                       ; $6384: $40
    add b                                         ; $6385: $80
    cp b                                          ; $6386: $B8

jr_024_6387:
    ld b, b                                       ; $6387: $40
    db $FC                                        ; $6388: $FC
    jr jr_024_6387                                ; $6389: $18 $FC

    ld a, b                                       ; $638B: $78
    ld hl, sp+$00                                 ; $638C: $F8 $00
    add b                                         ; $638E: $80
    nop                                           ; $638F: $00
    inc bc                                        ; $6390: $03
    ld bc, $0007                                  ; $6391: $01 $07 $00
    rrca                                          ; $6394: $0F
    rlca                                          ; $6395: $07
    rra                                           ; $6396: $1F
    ld c, $1F                                     ; $6397: $0E $1F
    dec c                                         ; $6399: $0D
    rra                                           ; $639A: $1F
    dec c                                         ; $639B: $0D
    dec a                                         ; $639C: $3D
    ld a, [bc]                                    ; $639D: $0A
    ld a, [hl+]                                   ; $639E: $2A
    dec d                                         ; $639F: $15
    ldh [$C0], a                                  ; $63A0: $E0 $C0
    ldh a, [rNR41]                                ; $63A2: $F0 $20
    ldh a, [$E0]                                  ; $63A4: $F0 $E0
    ld hl, sp+$70                                 ; $63A6: $F8 $70
    ld hl, sp-$50                                 ; $63A8: $F8 $B0
    ld hl, sp-$10                                 ; $63AA: $F8 $F0
    db $FC                                        ; $63AC: $FC
    ldh a, [$FC]                                  ; $63AD: $F0 $FC
    ld d, b                                       ; $63AF: $50
    ld a, d                                       ; $63B0: $7A
    dec b                                         ; $63B1: $05
    sbc h                                         ; $63B2: $9C
    ld l, e                                       ; $63B3: $6B
    adc a                                         ; $63B4: $8F
    ld [hl], h                                    ; $63B5: $74
    ld a, a                                       ; $63B6: $7F
    nop                                           ; $63B7: $00
    rlca                                          ; $63B8: $07
    nop                                           ; $63B9: $00
    inc bc                                        ; $63BA: $03
    nop                                           ; $63BB: $00
    ld [bc], a                                    ; $63BC: $02
    ld bc, $0003                                  ; $63BD: $01 $03 $00
    cp $40                                        ; $63C0: $FE $40
    ld a, c                                       ; $63C2: $79
    sub [hl]                                      ; $63C3: $96
    pop af                                        ; $63C4: $F1
    ld l, $FE                                     ; $63C5: $2E $FE
    nop                                           ; $63C7: $00
    ldh [rP1], a                                  ; $63C8: $E0 $00
    ret nz                                        ; $63CA: $C0

    nop                                           ; $63CB: $00
    ld b, b                                       ; $63CC: $40
    add b                                         ; $63CD: $80
    ldh [rP1], a                                  ; $63CE: $E0 $00
    ld a, $1C                                     ; $63D0: $3E $1C
    ld a, $00                                     ; $63D2: $3E $00
    ld a, [hl+]                                   ; $63D4: $2A
    inc d                                         ; $63D5: $14
    ld l, [hl]                                    ; $63D6: $6E
    db $10                                        ; $63D7: $10
    ld a, [hl]                                    ; $63D8: $7E
    jr nz, @+$80                                  ; $63D9: $20 $7E

    jr c, jr_024_645B                             ; $63DB: $38 $7E

    inc [hl]                                      ; $63DD: $34
    inc a                                         ; $63DE: $3C
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
    inc c                                         ; $63EA: $0C
    nop                                           ; $63EB: $00
    rra                                           ; $63EC: $1F
    inc c                                         ; $63ED: $0C
    ccf                                           ; $63EE: $3F
    dec de                                        ; $63EF: $1B
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
    ld hl, sp+$00                                 ; $63FC: $F8 $00
    db $FC                                        ; $63FE: $FC
    ld hl, sp+$3F                                 ; $63FF: $F8 $3F
    rla                                           ; $6401: $17
    ccf                                           ; $6402: $3F
    rla                                           ; $6403: $17
    ccf                                           ; $6404: $3F
    rla                                           ; $6405: $17
    ccf                                           ; $6406: $3F
    rla                                           ; $6407: $17
    ccf                                           ; $6408: $3F
    ld [de], a                                    ; $6409: $12
    ccf                                           ; $640A: $3F
    inc b                                         ; $640B: $04
    dec e                                         ; $640C: $1D
    ld a, [bc]                                    ; $640D: $0A
    ld c, $01                                     ; $640E: $0E $01
    cp $9C                                        ; $6410: $FE $9C
    cp $6C                                        ; $6412: $FE $6C
    rst $38                                       ; $6414: $FF
    ld a, [hl]                                    ; $6415: $7E
    rst $38                                       ; $6416: $FF
    ld a, $3F                                     ; $6417: $3E $3F
    jp c, $D83E                                   ; $6419: $DA $3E $D8

    ld a, h                                       ; $641C: $7C
    sub b                                         ; $641D: $90
    db $F4                                        ; $641E: $F4
    ld [$0007], sp                                ; $641F: $08 $07 $00
    rlca                                          ; $6422: $07
    ld bc, $0307                                  ; $6423: $01 $07 $03
    ccf                                           ; $6426: $3F
    nop                                           ; $6427: $00
    ld a, [hl]                                    ; $6428: $7E
    dec a                                         ; $6429: $3D
    ld a, h                                       ; $642A: $7C
    dec sp                                        ; $642B: $3B
    ccf                                           ; $642C: $3F
    nop                                           ; $642D: $00
    nop                                           ; $642E: $00
    nop                                           ; $642F: $00
    ld hl, sp+$00                                 ; $6430: $F8 $00
    ld hl, sp-$20                                 ; $6432: $F8 $E0
    ldh a, [$80]                                  ; $6434: $F0 $80
    add sp, $10                                   ; $6436: $E8 $10
    ld c, b                                       ; $6438: $48
    or b                                          ; $6439: $B0
    ld a, b                                       ; $643A: $78
    add b                                         ; $643B: $80
    ret nz                                        ; $643C: $C0

    nop                                           ; $643D: $00
    nop                                           ; $643E: $00
    nop                                           ; $643F: $00
    jr nc, jr_024_6442                            ; $6440: $30 $00

jr_024_6442:
    ld a, a                                       ; $6442: $7F
    jr nc, @+$01                                  ; $6443: $30 $FF

    ld l, a                                       ; $6445: $6F
    rst $38                                       ; $6446: $FF
    ld e, [hl]                                    ; $6447: $5E
    rst $38                                       ; $6448: $FF
    ld e, l                                       ; $6449: $5D
    rst $38                                       ; $644A: $FF
    ld e, l                                       ; $644B: $5D
    db $FD                                        ; $644C: $FD
    ld c, d                                       ; $644D: $4A
    ld [$0055], a                                 ; $644E: $EA $55 $00
    nop                                           ; $6451: $00
    ldh [rP1], a                                  ; $6452: $E0 $00
    ldh a, [$E0]                                  ; $6454: $F0 $E0
    ld hl, sp+$70                                 ; $6456: $F8 $70
    ld hl, sp-$50                                 ; $6458: $F8 $B0
    db $FC                                        ; $645A: $FC

jr_024_645B:
    ld hl, sp-$04                                 ; $645B: $F8 $FC
    ld hl, sp-$04                                 ; $645D: $F8 $FC
    ld l, b                                       ; $645F: $68
    ld a, [$7C45]                                 ; $6460: $FA $45 $7C
    inc bc                                        ; $6463: $03
    ccf                                           ; $6464: $3F
    inc e                                         ; $6465: $1C
    rra                                           ; $6466: $1F
    inc c                                         ; $6467: $0C
    rrca                                          ; $6468: $0F
    nop                                           ; $6469: $00
    ld [de], a                                    ; $646A: $12
    dec c                                         ; $646B: $0D
    ld [de], a                                    ; $646C: $12
    dec c                                         ; $646D: $0D
    rrca                                          ; $646E: $0F
    nop                                           ; $646F: $00
    ld hl, sp+$60                                 ; $6470: $F8 $60
    ldh a, [rLCDC]                                ; $6472: $F0 $40
    ld hl, sp+$30                                 ; $6474: $F8 $30
    ldh a, [rNR41]                                ; $6476: $F0 $20
    ldh [rP1], a                                  ; $6478: $E0 $00
    ld d, b                                       ; $647A: $50
    and b                                         ; $647B: $A0
    ld h, b                                       ; $647C: $60
    add b                                         ; $647D: $80
    ret nz                                        ; $647E: $C0

    nop                                           ; $647F: $00
    rrca                                          ; $6480: $0F
    rlca                                          ; $6481: $07
    rlca                                          ; $6482: $07
    nop                                           ; $6483: $00
    dec b                                         ; $6484: $05
    ld [bc], a                                    ; $6485: $02
    dec b                                         ; $6486: $05
    ld [bc], a                                    ; $6487: $02
    dec bc                                        ; $6488: $0B
    inc b                                         ; $6489: $04
    rrca                                          ; $648A: $0F
    ld bc, $0F1F                                  ; $648B: $01 $1F $0F
    rrca                                          ; $648E: $0F
    nop                                           ; $648F: $00
    ret nz                                        ; $6490: $C0

    add b                                         ; $6491: $80
    ret nz                                        ; $6492: $C0

    nop                                           ; $6493: $00
    ld b, b                                       ; $6494: $40
    add b                                         ; $6495: $80
    ld [hl], b                                    ; $6496: $70
    add b                                         ; $6497: $80
    ld hl, sp+$30                                 ; $6498: $F8 $30
    ld hl, sp-$50                                 ; $649A: $F8 $B0
    ldh a, [$80]                                  ; $649C: $F0 $80
    ret nz                                        ; $649E: $C0

    nop                                           ; $649F: $00
    ld a, d                                       ; $64A0: $7A
    dec b                                         ; $64A1: $05
    sbc h                                         ; $64A2: $9C
    ld l, e                                       ; $64A3: $6B
    adc a                                         ; $64A4: $8F
    ld [hl], h                                    ; $64A5: $74
    ld a, a                                       ; $64A6: $7F
    nop                                           ; $64A7: $00
    rlca                                          ; $64A8: $07
    nop                                           ; $64A9: $00
    inc bc                                        ; $64AA: $03
    nop                                           ; $64AB: $00
    ld [bc], a                                    ; $64AC: $02
    ld bc, $0007                                  ; $64AD: $01 $07 $00
    cp $40                                        ; $64B0: $FE $40
    ld a, c                                       ; $64B2: $79
    sub [hl]                                      ; $64B3: $96
    pop af                                        ; $64B4: $F1
    ld l, $FE                                     ; $64B5: $2E $FE
    nop                                           ; $64B7: $00
    ldh [rP1], a                                  ; $64B8: $E0 $00
    ret nz                                        ; $64BA: $C0

    nop                                           ; $64BB: $00
    ld b, b                                       ; $64BC: $40
    add b                                         ; $64BD: $80
    ret nz                                        ; $64BE: $C0

    nop                                           ; $64BF: $00
    rlca                                          ; $64C0: $07
    nop                                           ; $64C1: $00
    ld [$1707], sp                                ; $64C2: $08 $07 $17
    ld [$0C13], sp                                ; $64C5: $08 $13 $0C
    jr jr_024_64D1                                ; $64C8: $18 $07

    ccf                                           ; $64CA: $3F
    ld [$1F7F], sp                                ; $64CB: $08 $7F $1F
    cp [hl]                                       ; $64CE: $BE
    ld e, a                                       ; $64CF: $5F
    cp a                                          ; $64D0: $BF

jr_024_64D1:
    ld e, a                                       ; $64D1: $5F
    sbc a                                         ; $64D2: $9F
    ld c, a                                       ; $64D3: $4F
    ld c, a                                       ; $64D4: $4F
    inc sp                                        ; $64D5: $33
    ccf                                           ; $64D6: $3F
    ld bc, $0207                                  ; $64D7: $01 $07 $02
    rrca                                          ; $64DA: $0F
    rlca                                          ; $64DB: $07
    rlca                                          ; $64DC: $07
    inc bc                                        ; $64DD: $03
    inc bc                                        ; $64DE: $03
    nop                                           ; $64DF: $00
    nop                                           ; $64E0: $00
    nop                                           ; $64E1: $00
    rrca                                          ; $64E2: $0F
    nop                                           ; $64E3: $00
    db $10                                        ; $64E4: $10
    rrca                                          ; $64E5: $0F
    cpl                                           ; $64E6: $2F
    db $10                                        ; $64E7: $10
    daa                                           ; $64E8: $27
    jr jr_024_651B                                ; $64E9: $18 $30

    rrca                                          ; $64EB: $0F
    ld a, a                                       ; $64EC: $7F
    db $10                                        ; $64ED: $10
    rst $38                                       ; $64EE: $FF
    ccf                                           ; $64EF: $3F
    ld bc, $0100                                  ; $64F0: $01 $00 $01
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
    ld a, [hl]                                    ; $6500: $7E
    cp a                                          ; $6501: $BF
    ccf                                           ; $6502: $3F
    sbc a                                         ; $6503: $9F
    sbc a                                         ; $6504: $9F
    ld h, a                                       ; $6505: $67
    ld a, a                                       ; $6506: $7F
    inc bc                                        ; $6507: $03
    rrca                                          ; $6508: $0F
    inc b                                         ; $6509: $04
    rra                                           ; $650A: $1F
    rrca                                          ; $650B: $0F
    rrca                                          ; $650C: $0F
    rlca                                          ; $650D: $07
    rlca                                          ; $650E: $07
    nop                                           ; $650F: $00
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    nop                                           ; $6515: $00
    nop                                           ; $6516: $00
    nop                                           ; $6517: $00
    jr nz, jr_024_653A                            ; $6518: $20 $20

    db $10                                        ; $651A: $10

jr_024_651B:
    db $10                                        ; $651B: $10
    inc c                                         ; $651C: $0C
    inc c                                         ; $651D: $0C
    ld b, $06                                     ; $651E: $06 $06
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00

jr_024_6522:
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    add d                                         ; $6528: $82
    add d                                         ; $6529: $82
    add h                                         ; $652A: $84
    add h                                         ; $652B: $84
    ret c                                         ; $652C: $D8

    ret c                                         ; $652D: $D8

    ldh a, [$F0]                                  ; $652E: $F0 $F0
    inc bc                                        ; $6530: $03
    inc bc                                        ; $6531: $03
    inc a                                         ; $6532: $3C
    ccf                                           ; $6533: $3F
    ld c, $0F                                     ; $6534: $0E $0F
    rlca                                          ; $6536: $07
    rlca                                          ; $6537: $07
    ld c, $0E                                     ; $6538: $0E $0E

jr_024_653A:
    inc c                                         ; $653A: $0C
    inc c                                         ; $653B: $0C
    db $10                                        ; $653C: $10
    db $10                                        ; $653D: $10
    jr nz, jr_024_6560                            ; $653E: $20 $20

    jr nz, jr_024_6522                            ; $6540: $20 $E0

    inc e                                         ; $6542: $1C
    db $FC                                        ; $6543: $FC
    ld d, b                                       ; $6544: $50
    ldh a, [$60]                                  ; $6545: $F0 $60
    ldh [$B0], a                                  ; $6547: $E0 $B0
    or b                                          ; $6549: $B0
    sub b                                         ; $654A: $90
    sub b                                         ; $654B: $90
    adc b                                         ; $654C: $88
    adc b                                         ; $654D: $88
    inc b                                         ; $654E: $04
    inc b                                         ; $654F: $04
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    inc d                                         ; $6558: $14
    inc d                                         ; $6559: $14
    inc a                                         ; $655A: $3C
    inc a                                         ; $655B: $3C
    inc l                                         ; $655C: $2C
    inc a                                         ; $655D: $3C
    and l                                         ; $655E: $A5
    cp l                                          ; $655F: $BD

jr_024_6560:
    ld b, $07                                     ; $6560: $06 $07
    ld [bc], a                                    ; $6562: $02
    inc bc                                        ; $6563: $03
    ld e, $1F                                     ; $6564: $1E $1F
    dec b                                         ; $6566: $05
    rlca                                          ; $6567: $07
    rlca                                          ; $6568: $07
    rlca                                          ; $6569: $07
    inc b                                         ; $656A: $04
    inc b                                         ; $656B: $04
    nop                                           ; $656C: $00
    nop                                           ; $656D: $00
    nop                                           ; $656E: $00
    nop                                           ; $656F: $00
    ld h, b                                       ; $6570: $60
    ldh [rNR41], a                                ; $6571: $E0 $20
    ldh [rNR23], a                                ; $6573: $E0 $18
    ld hl, sp+$50                                 ; $6575: $F8 $50
    ldh a, [$E0]                                  ; $6577: $F0 $E0
    ldh [$A0], a                                  ; $6579: $E0 $A0
    and b                                         ; $657B: $A0
    sub b                                         ; $657C: $90
    sub b                                         ; $657D: $90
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
    db $10                                        ; $658C: $10
    db $10                                        ; $658D: $10
    db $10                                        ; $658E: $10
    db $10                                        ; $658F: $10
    jr jr_024_65AA                                ; $6590: $18 $18

    ld d, h                                       ; $6592: $54

Jump_024_6593:
    ld e, h                                       ; $6593: $5C
    ld h, h                                       ; $6594: $64
    ld a, h                                       ; $6595: $7C
    ld h, h                                       ; $6596: $64
    ld a, h                                       ; $6597: $7C
    ld b, h                                       ; $6598: $44
    ld a, h                                       ; $6599: $7C
    ld b, h                                       ; $659A: $44
    ld a, h                                       ; $659B: $7C
    push bc                                       ; $659C: $C5
    db $FD                                        ; $659D: $FD
    jp $04FF                                      ; $659E: $C3 $FF $04


    rlca                                          ; $65A1: $07
    inc b                                         ; $65A2: $04
    rlca                                          ; $65A3: $07
    ld e, $1F                                     ; $65A4: $1E $1F
    inc b                                         ; $65A6: $04
    rlca                                          ; $65A7: $07
    ld c, $0F                                     ; $65A8: $0E $0F

jr_024_65AA:
    dec b                                         ; $65AA: $05
    dec b                                         ; $65AB: $05
    ld [bc], a                                    ; $65AC: $02
    ld [bc], a                                    ; $65AD: $02

jr_024_65AE:
    ld bc, $6001                                  ; $65AE: $01 $01 $60
    ldh [rNR50], a                                ; $65B1: $E0 $24
    db $E4                                        ; $65B3: $E4
    jr c, jr_024_65AE                             ; $65B4: $38 $F8

    ld d, b                                       ; $65B6: $50
    ld [hl], b                                    ; $65B7: $70
    ldh [$E0], a                                  ; $65B8: $E0 $E0
    and b                                         ; $65BA: $A0
    and b                                         ; $65BB: $A0
    ret nz                                        ; $65BC: $C0

    ret nz                                        ; $65BD: $C0

    nop                                           ; $65BE: $00
    nop                                           ; $65BF: $00
    db $10                                        ; $65C0: $10
    db $10                                        ; $65C1: $10
    db $10                                        ; $65C2: $10
    db $10                                        ; $65C3: $10
    jr nc, jr_024_65F6                            ; $65C4: $30 $30

    or h                                          ; $65C6: $B4
    or h                                          ; $65C7: $B4
    xor h                                         ; $65C8: $AC
    cp h                                          ; $65C9: $BC
    db $EC                                        ; $65CA: $EC
    db $FC                                        ; $65CB: $FC
    and h                                         ; $65CC: $A4
    db $FC                                        ; $65CD: $FC
    and [hl]                                      ; $65CE: $A6
    cp $C3                                        ; $65CF: $FE $C3
    rst $38                                       ; $65D1: $FF
    pop bc                                        ; $65D2: $C1
    rst $38                                       ; $65D3: $FF
    pop bc                                        ; $65D4: $C1
    rst $38                                       ; $65D5: $FF
    pop bc                                        ; $65D6: $C1
    rst $38                                       ; $65D7: $FF
    pop bc                                        ; $65D8: $C1
    rst $38                                       ; $65D9: $FF
    pop bc                                        ; $65DA: $C1
    rst $38                                       ; $65DB: $FF
    pop bc                                        ; $65DC: $C1
    rst $38                                       ; $65DD: $FF
    pop bc                                        ; $65DE: $C1
    rst $38                                       ; $65DF: $FF
    inc b                                         ; $65E0: $04
    rlca                                          ; $65E1: $07
    inc b                                         ; $65E2: $04
    ld b, $1E                                     ; $65E3: $06 $1E
    rra                                           ; $65E5: $1F
    inc b                                         ; $65E6: $04
    ld b, $08                                     ; $65E7: $06 $08
    add hl, bc                                    ; $65E9: $09
    ld b, $06                                     ; $65EA: $06 $06
    ld bc, $0001                                  ; $65EC: $01 $01 $00
    nop                                           ; $65EF: $00
    db $10                                        ; $65F0: $10
    or b                                          ; $65F1: $B0
    inc d                                         ; $65F2: $14
    db $F4                                        ; $65F3: $F4
    jr c, @-$06                                   ; $65F4: $38 $F8

jr_024_65F6:
    db $10                                        ; $65F6: $10
    or b                                          ; $65F7: $B0
    ld b, b                                       ; $65F8: $40
    ld b, b                                       ; $65F9: $40
    and b                                         ; $65FA: $A0
    and b                                         ; $65FB: $A0
    db $10                                        ; $65FC: $10
    stop                                          ; $65FD: $10 $00
    nop                                           ; $65FF: $00
    nop                                           ; $6600: $00
    nop                                           ; $6601: $00
    db $10                                        ; $6602: $10
    db $10                                        ; $6603: $10
    ld [bc], a                                    ; $6604: $02
    ld [bc], a                                    ; $6605: $02
    dec b                                         ; $6606: $05
    dec b                                         ; $6607: $05
    dec d                                         ; $6608: $15
    dec d                                         ; $6609: $15
    ld a, [bc]                                    ; $660A: $0A
    ld a, [bc]                                    ; $660B: $0A
    ld b, b                                       ; $660C: $40
    ld b, c                                       ; $660D: $41
    ld bc, $8003                                  ; $660E: $01 $03 $80
    add b                                         ; $6611: $80
    add b                                         ; $6612: $80
    add b                                         ; $6613: $80
    jr nz, jr_024_6636                            ; $6614: $20 $20

    db $10                                        ; $6616: $10
    db $10                                        ; $6617: $10
    ld [hl+], a                                   ; $6618: $22
    ld [hl+], a                                   ; $6619: $22
    ld c, b                                       ; $661A: $48
    ld c, b                                       ; $661B: $48
    ld [bc], a                                    ; $661C: $02
    ld [bc], a                                    ; $661D: $02
    ld c, b                                       ; $661E: $48
    ld c, b                                       ; $661F: $48
    ld [bc], a                                    ; $6620: $02
    ld [bc], a                                    ; $6621: $02
    jr z, @+$2B                                   ; $6622: $28 $29

    dec bc                                        ; $6624: $0B
    dec bc                                        ; $6625: $0B
    inc d                                         ; $6626: $14
    ld d, $4B                                     ; $6627: $16 $4B
    ld c, e                                       ; $6629: $4B
    ld [bc], a                                    ; $662A: $02
    inc bc                                        ; $662B: $03
    ld a, [bc]                                    ; $662C: $0A
    ld a, [bc]                                    ; $662D: $0A
    ld [$5408], sp                                ; $662E: $08 $08 $54
    ld d, h                                       ; $6631: $54
    add b                                         ; $6632: $80
    add b                                         ; $6633: $80
    ld b, b                                       ; $6634: $40
    ld h, b                                       ; $6635: $60

jr_024_6636:
    db $10                                        ; $6636: $10
    ret nc                                        ; $6637: $D0

    ld a, [bc]                                    ; $6638: $0A
    jp z, $9010                                   ; $6639: $CA $10 $90

    ld h, b                                       ; $663C: $60
    ldh [rDIV], a                                 ; $663D: $E0 $04
    and h                                         ; $663F: $A4
    ld hl, $0221                                  ; $6640: $21 $21 $02
    ld [bc], a                                    ; $6643: $02
    ld a, [hl+]                                   ; $6644: $2A
    ld a, [hl+]                                   ; $6645: $2A
    nop                                           ; $6646: $00
    nop                                           ; $6647: $00
    nop                                           ; $6648: $00
    nop                                           ; $6649: $00
    nop                                           ; $664A: $00
    nop                                           ; $664B: $00
    ld bc, $0001                                  ; $664C: $01 $01 $00
    nop                                           ; $664F: $00
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    add h                                         ; $6652: $84
    and h                                         ; $6653: $A4
    jr @+$5A                                      ; $6654: $18 $58

    db $10                                        ; $6656: $10
    sub b                                         ; $6657: $90
    add b                                         ; $6658: $80
    add b                                         ; $6659: $80
    add b                                         ; $665A: $80
    add b                                         ; $665B: $80
    db $10                                        ; $665C: $10
    stop                                          ; $665D: $10 $00
    nop                                           ; $665F: $00
    nop                                           ; $6660: $00
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    nop                                           ; $6664: $00
    nop                                           ; $6665: $00
    nop                                           ; $6666: $00
    nop                                           ; $6667: $00
    db $10                                        ; $6668: $10
    stop                                          ; $6669: $10 $00
    nop                                           ; $666B: $00
    ld b, b                                       ; $666C: $40
    ld b, b                                       ; $666D: $40
    ld [bc], a                                    ; $666E: $02
    ld [bc], a                                    ; $666F: $02
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    ld a, [bc]                                    ; $6672: $0A
    ld a, [bc]                                    ; $6673: $0A
    ld b, b                                       ; $6674: $40
    ld b, c                                       ; $6675: $41
    inc b                                         ; $6676: $04
    inc b                                         ; $6677: $04
    ld [bc], a                                    ; $6678: $02
    ld [bc], a                                    ; $6679: $02
    ld [$0108], sp                                ; $667A: $08 $08 $01
    ld bc, $0404                                  ; $667D: $01 $04 $04
    ld b, d                                       ; $6680: $42
    ld b, d                                       ; $6681: $42
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    ld a, [bc]                                    ; $6684: $0A
    ld a, [bc]                                    ; $6685: $0A
    ld [$4408], sp                                ; $6686: $08 $08 $44
    ld b, h                                       ; $6689: $44
    nop                                           ; $668A: $00
    nop                                           ; $668B: $00
    nop                                           ; $668C: $00
    nop                                           ; $668D: $00
    ld d, b                                       ; $668E: $50
    ld d, b                                       ; $668F: $50
    jr nz, @+$22                                  ; $6690: $20 $20

    ld [bc], a                                    ; $6692: $02
    ld [bc], a                                    ; $6693: $02
    jr z, @+$2A                                   ; $6694: $28 $28

    nop                                           ; $6696: $00
    nop                                           ; $6697: $00
    nop                                           ; $6698: $00
    nop                                           ; $6699: $00
    nop                                           ; $669A: $00
    nop                                           ; $669B: $00
    ld bc, $0001                                  ; $669C: $01 $01 $00
    nop                                           ; $669F: $00
    ret nz                                        ; $66A0: $C0

    ret nz                                        ; $66A1: $C0

    add h                                         ; $66A2: $84
    add h                                         ; $66A3: $84
    ld [$1048], sp                                ; $66A4: $08 $48 $10
    sub b                                         ; $66A7: $90
    nop                                           ; $66A8: $00
    nop                                           ; $66A9: $00
    add b                                         ; $66AA: $80
    add b                                         ; $66AB: $80
    db $10                                        ; $66AC: $10
    stop                                          ; $66AD: $10 $00
    nop                                           ; $66AF: $00
    ld [$0008], sp                                ; $66B0: $08 $08 $00
    nop                                           ; $66B3: $00
    nop                                           ; $66B4: $00
    nop                                           ; $66B5: $00
    nop                                           ; $66B6: $00
    nop                                           ; $66B7: $00
    nop                                           ; $66B8: $00
    nop                                           ; $66B9: $00
    add b                                         ; $66BA: $80
    add b                                         ; $66BB: $80
    db $10                                        ; $66BC: $10
    stop                                          ; $66BD: $10 $00
    nop                                           ; $66BF: $00
    nop                                           ; $66C0: $00
    nop                                           ; $66C1: $00
    nop                                           ; $66C2: $00
    nop                                           ; $66C3: $00
    nop                                           ; $66C4: $00
    nop                                           ; $66C5: $00
    nop                                           ; $66C6: $00
    ld [rRAMG], sp                                ; $66C7: $08 $00 $00
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
    jr jr_024_66D9                                ; $66D7: $18 $00

jr_024_66D9:
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
    rrca                                          ; $66E7: $0F
    nop                                           ; $66E8: $00
    inc a                                         ; $66E9: $3C
    nop                                           ; $66EA: $00
    ld bc, $0000                                  ; $66EB: $01 $00 $00
    nop                                           ; $66EE: $00
    nop                                           ; $66EF: $00
    nop                                           ; $66F0: $00
    nop                                           ; $66F1: $00
    nop                                           ; $66F2: $00
    nop                                           ; $66F3: $00
    nop                                           ; $66F4: $00
    nop                                           ; $66F5: $00
    nop                                           ; $66F6: $00
    sbc b                                         ; $66F7: $98
    nop                                           ; $66F8: $00
    ld h, b                                       ; $66F9: $60
    nop                                           ; $66FA: $00
    add b                                         ; $66FB: $80
    nop                                           ; $66FC: $00
    nop                                           ; $66FD: $00
    nop                                           ; $66FE: $00
    nop                                           ; $66FF: $00
    nop                                           ; $6700: $00
    nop                                           ; $6701: $00
    ld bc, $0600                                  ; $6702: $01 $00 $06
    ld bc, $0709                                  ; $6705: $01 $09 $07
    rla                                           ; $6708: $17
    rrca                                          ; $6709: $0F
    cpl                                           ; $670A: $2F
    ld e, $2E                                     ; $670B: $1E $2E
    dec e                                         ; $670D: $1D
    ld e, [hl]                                    ; $670E: $5E
    add hl, sp                                    ; $670F: $39
    ld a, [hl]                                    ; $6710: $7E
    nop                                           ; $6711: $00
    add c                                         ; $6712: $81
    ld a, [hl]                                    ; $6713: $7E
    ld a, [hl]                                    ; $6714: $7E
    rst $38                                       ; $6715: $FF
    rst $38                                       ; $6716: $FF
    jp $3CC3                                      ; $6717: $C3 $C3 $3C


    nop                                           ; $671A: $00
    rst $38                                       ; $671B: $FF
    xor d                                         ; $671C: $AA
    ld d, l                                       ; $671D: $55
    xor d                                         ; $671E: $AA
    ld d, l                                       ; $671F: $55
    ld e, [hl]                                    ; $6720: $5E
    add hl, sp                                    ; $6721: $39
    cp a                                          ; $6722: $BF
    ld [hl], b                                    ; $6723: $70
    cp b                                          ; $6724: $B8
    ld [hl], b                                    ; $6725: $70
    ld hl, sp+$00                                 ; $6726: $F8 $00
    add b                                         ; $6728: $80
    ld a, b                                       ; $6729: $78
    ld hl, sp+$00                                 ; $672A: $F8 $00
    cp b                                          ; $672C: $B8
    ld [hl], b                                    ; $672D: $70
    cp b                                          ; $672E: $B8
    ld [hl], b                                    ; $672F: $70
    xor d                                         ; $6730: $AA
    ld d, l                                       ; $6731: $55
    rst $38                                       ; $6732: $FF
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
    cp b                                          ; $6740: $B8
    ld [hl], b                                    ; $6741: $70
    cp b                                          ; $6742: $B8
    ld [hl], b                                    ; $6743: $70
    cp b                                          ; $6744: $B8
    ld [hl], b                                    ; $6745: $70
    cp b                                          ; $6746: $B8
    ld [hl], b                                    ; $6747: $70
    cp b                                          ; $6748: $B8
    ld [hl], b                                    ; $6749: $70
    cp b                                          ; $674A: $B8
    ld [hl], b                                    ; $674B: $70
    cp b                                          ; $674C: $B8
    ld [hl], b                                    ; $674D: $70
    cp b                                          ; $674E: $B8
    ld [hl], b                                    ; $674F: $70
    cp b                                          ; $6750: $B8
    ld [hl], b                                    ; $6751: $70
    cp b                                          ; $6752: $B8
    ld [hl], b                                    ; $6753: $70
    cp b                                          ; $6754: $B8
    ld [hl], b                                    ; $6755: $70
    cp b                                          ; $6756: $B8
    ld [hl], b                                    ; $6757: $70
    cp b                                          ; $6758: $B8
    ld [hl], b                                    ; $6759: $70
    cp b                                          ; $675A: $B8
    ld [hl], b                                    ; $675B: $70
    cp b                                          ; $675C: $B8
    ld [hl], b                                    ; $675D: $70
    ld hl, sp+$00                                 ; $675E: $F8 $00
    ld a, a                                       ; $6760: $7F
    ld a, $63                                     ; $6761: $3E $63
    ld a, $63                                     ; $6763: $3E $63
    ld a, $7F                                     ; $6765: $3E $7F
    ld a, $7F                                     ; $6767: $3E $7F
    nop                                           ; $6769: $00
    ld d, l                                       ; $676A: $55
    ld a, [hl+]                                   ; $676B: $2A
    ld d, l                                       ; $676C: $55
    ld a, [hl+]                                   ; $676D: $2A
    ld d, l                                       ; $676E: $55
    ld a, [hl+]                                   ; $676F: $2A
    ld a, a                                       ; $6770: $7F
    nop                                           ; $6771: $00
    ccf                                           ; $6772: $3F
    ld [hl], a                                    ; $6773: $77
    ccf                                           ; $6774: $3F
    ld [hl], a                                    ; $6775: $77
    ccf                                           ; $6776: $3F
    halt                                          ; $6777: $76
    ld a, $75                                     ; $6778: $3E $75
    ld a, $75                                     ; $677A: $3E $75
    ccf                                           ; $677C: $3F
    halt                                          ; $677D: $76
    ccf                                           ; $677E: $3F
    ld a, d                                       ; $677F: $7A
    ld e, a                                       ; $6780: $5F
    inc a                                         ; $6781: $3C
    ld h, a                                       ; $6782: $67
    rra                                           ; $6783: $1F
    ld a, b                                       ; $6784: $78
    ld b, a                                       ; $6785: $47
    ld a, a                                       ; $6786: $7F
    ld [hl], b                                    ; $6787: $70
    ld a, a                                       ; $6788: $7F
    nop                                           ; $6789: $00
    ld a, a                                       ; $678A: $7F
    nop                                           ; $678B: $00
    nop                                           ; $678C: $00
    nop                                           ; $678D: $00
    nop                                           ; $678E: $00
    nop                                           ; $678F: $00
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
    call Call_024_447A                            ; $6D61: $CD $7A $44
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
    ld [$C724], sp                                ; $70B9: $08 $24 $C7
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
    jp nc, Jump_024_6593                          ; $741B: $D2 $93 $65

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
    jp nc, Jump_024_6593                          ; $74E3: $D2 $93 $65

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
