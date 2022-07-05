SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    ld h, b                                       ; $4002: $60
    nop                                           ; $4003: $00
    ld hl, sp+$60                                 ; $4004: $F8 $60
    ld a, h                                       ; $4006: $7C
    jr c, jr_00B_4048                             ; $4007: $38 $3F

    nop                                           ; $4009: $00
    ld a, h                                       ; $400A: $7C
    jr c, @-$06                                   ; $400B: $38 $F8

    ld h, b                                       ; $400D: $60
    ld h, b                                       ; $400E: $60
    nop                                           ; $400F: $00
    nop                                           ; $4010: $00
    nop                                           ; $4011: $00
    nop                                           ; $4012: $00
    nop                                           ; $4013: $00
    inc c                                         ; $4014: $0C
    nop                                           ; $4015: $00
    ld [de], a                                    ; $4016: $12
    inc c                                         ; $4017: $0C
    ld sp, hl                                     ; $4018: $F9
    ld b, $12                                     ; $4019: $06 $12
    inc c                                         ; $401B: $0C
    inc c                                         ; $401C: $0C
    nop                                           ; $401D: $00
    nop                                           ; $401E: $00
    nop                                           ; $401F: $00
    nop                                           ; $4020: $00
    nop                                           ; $4021: $00
    nop                                           ; $4022: $00
    nop                                           ; $4023: $00
    nop                                           ; $4024: $00
    nop                                           ; $4025: $00
    rlca                                          ; $4026: $07
    nop                                           ; $4027: $00
    rrca                                          ; $4028: $0F
    rlca                                          ; $4029: $07
    rra                                           ; $402A: $1F
    rrca                                          ; $402B: $0F
    ccf                                           ; $402C: $3F
    rra                                           ; $402D: $1F
    ccf                                           ; $402E: $3F
    ld e, $00                                     ; $402F: $1E $00
    nop                                           ; $4031: $00
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    nop                                           ; $4034: $00
    nop                                           ; $4035: $00
    ldh [rP1], a                                  ; $4036: $E0 $00
    ldh a, [$E0]                                  ; $4038: $F0 $E0
    ld hl, sp-$10                                 ; $403A: $F8 $F0
    db $FC                                        ; $403C: $FC
    cp b                                          ; $403D: $B8
    cp h                                          ; $403E: $BC
    ld e, b                                       ; $403F: $58
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00
    nop                                           ; $4043: $00
    nop                                           ; $4044: $00
    nop                                           ; $4045: $00
    inc bc                                        ; $4046: $03
    nop                                           ; $4047: $00

jr_00B_4048:
    rlca                                          ; $4048: $07
    inc bc                                        ; $4049: $03
    rrca                                          ; $404A: $0F
    rlca                                          ; $404B: $07
    rra                                           ; $404C: $1F
    rrca                                          ; $404D: $0F
    rra                                           ; $404E: $1F
    ld c, $00                                     ; $404F: $0E $00
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    nop                                           ; $4053: $00
    nop                                           ; $4054: $00
    nop                                           ; $4055: $00
    ldh a, [rP1]                                  ; $4056: $F0 $00
    ld hl, sp-$10                                 ; $4058: $F8 $F0
    db $FC                                        ; $405A: $FC
    ld hl, sp-$02                                 ; $405B: $F8 $FE
    cp h                                          ; $405D: $BC
    cp [hl]                                       ; $405E: $BE
    ld e, h                                       ; $405F: $5C
    nop                                           ; $4060: $00
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    nop                                           ; $4064: $00
    nop                                           ; $4065: $00
    inc bc                                        ; $4066: $03
    nop                                           ; $4067: $00
    rlca                                          ; $4068: $07
    inc bc                                        ; $4069: $03
    rrca                                          ; $406A: $0F
    ld b, $1F                                     ; $406B: $06 $1F
    rrca                                          ; $406D: $0F
    rra                                           ; $406E: $1F
    rrca                                          ; $406F: $0F
    nop                                           ; $4070: $00
    nop                                           ; $4071: $00
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00
    nop                                           ; $4074: $00
    nop                                           ; $4075: $00

jr_00B_4076:
    ldh a, [rP1]                                  ; $4076: $F0 $00
    ld hl, sp-$10                                 ; $4078: $F8 $F0
    db $FC                                        ; $407A: $FC
    ld hl, sp-$02                                 ; $407B: $F8 $FE
    db $FC                                        ; $407D: $FC
    cp $FC                                        ; $407E: $FE $FC
    nop                                           ; $4080: $00
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    nop                                           ; $4083: $00
    nop                                           ; $4084: $00
    nop                                           ; $4085: $00
    rlca                                          ; $4086: $07
    nop                                           ; $4087: $00
    rrca                                          ; $4088: $0F
    rlca                                          ; $4089: $07
    rra                                           ; $408A: $1F
    dec c                                         ; $408B: $0D
    ccf                                           ; $408C: $3F
    rra                                           ; $408D: $1F
    ccf                                           ; $408E: $3F

jr_00B_408F:
    rra                                           ; $408F: $1F
    nop                                           ; $4090: $00
    nop                                           ; $4091: $00
    nop                                           ; $4092: $00
    nop                                           ; $4093: $00
    nop                                           ; $4094: $00
    nop                                           ; $4095: $00
    ldh a, [rP1]                                  ; $4096: $F0 $00
    ld hl, sp-$10                                 ; $4098: $F8 $F0
    db $FC                                        ; $409A: $FC
    ld hl, sp-$02                                 ; $409B: $F8 $FE
    db $F4                                        ; $409D: $F4
    db $FC                                        ; $409E: $FC
    ldh [rNR34], a                                ; $409F: $E0 $1E
    dec b                                         ; $40A1: $05
    dec d                                         ; $40A2: $15
    ld a, [bc]                                    ; $40A3: $0A
    add hl, bc                                    ; $40A4: $09
    ld b, $1C                                     ; $40A5: $06 $1C
    inc bc                                        ; $40A7: $03
    ccf                                           ; $40A8: $3F
    nop                                           ; $40A9: $00
    ccf                                           ; $40AA: $3F
    nop                                           ; $40AB: $00
    ld [hl], e                                    ; $40AC: $73
    inc c                                         ; $40AD: $0C
    inc sp                                        ; $40AE: $33
    inc c                                         ; $40AF: $0C
    inc e                                         ; $40B0: $1C
    add sp, $38                                   ; $40B1: $E8 $38
    ret nz                                        ; $40B3: $C0

    jr nc, jr_00B_4076                            ; $40B4: $30 $C0

    db $10                                        ; $40B6: $10
    ldh [$E0], a                                  ; $40B7: $E0 $E0
    nop                                           ; $40B9: $00
    ldh a, [rP1]                                  ; $40BA: $F0 $00
    ret nc                                        ; $40BC: $D0

    jr nz, jr_00B_408F                            ; $40BD: $20 $D0

    jr nz, jr_00B_40CF                            ; $40BF: $20 $0E

    dec b                                         ; $40C1: $05
    dec d                                         ; $40C2: $15

jr_00B_40C3:
    ld a, [bc]                                    ; $40C3: $0A
    dec c                                         ; $40C4: $0D
    ld [bc], a                                    ; $40C5: $02
    ld b, $01                                     ; $40C6: $06 $01
    rrca                                          ; $40C8: $0F
    nop                                           ; $40C9: $00
    rra                                           ; $40CA: $1F
    nop                                           ; $40CB: $00
    add hl, de                                    ; $40CC: $19
    ld b, $19                                     ; $40CD: $06 $19

jr_00B_40CF:
    ld b, $1C                                     ; $40CF: $06 $1C
    add sp, $2A                                   ; $40D1: $E8 $2A
    call nc, $D02C                                ; $40D3: $D4 $2C $D0
    db $10                                        ; $40D6: $10
    ldh [$F8], a                                  ; $40D7: $E0 $F8
    nop                                           ; $40D9: $00
    db $FC                                        ; $40DA: $FC
    nop                                           ; $40DB: $00
    db $E4                                        ; $40DC: $E4
    jr jr_00B_40C3                                ; $40DD: $18 $E4

    jr jr_00B_40F0                                ; $40DF: $18 $0F

    rlca                                          ; $40E1: $07
    rla                                           ; $40E2: $17
    dec bc                                        ; $40E3: $0B
    rrca                                          ; $40E4: $0F
    ld bc, $0007                                  ; $40E5: $01 $07 $00
    rrca                                          ; $40E8: $0F
    nop                                           ; $40E9: $00
    rra                                           ; $40EA: $1F
    nop                                           ; $40EB: $00
    rra                                           ; $40EC: $1F
    nop                                           ; $40ED: $00
    rrca                                          ; $40EE: $0F
    nop                                           ; $40EF: $00

jr_00B_40F0:
    db $FC                                        ; $40F0: $FC
    ld hl, sp-$06                                 ; $40F1: $F8 $FA
    db $F4                                        ; $40F3: $F4
    db $FC                                        ; $40F4: $FC
    ldh [$F0], a                                  ; $40F5: $E0 $F0
    nop                                           ; $40F7: $00
    ld hl, sp+$00                                 ; $40F8: $F8 $00
    db $FC                                        ; $40FA: $FC
    nop                                           ; $40FB: $00
    db $FC                                        ; $40FC: $FC
    nop                                           ; $40FD: $00
    ld hl, sp+$00                                 ; $40FE: $F8 $00
    rra                                           ; $4100: $1F
    rrca                                          ; $4101: $0F
    rra                                           ; $4102: $1F
    rlca                                          ; $4103: $07
    rrca                                          ; $4104: $0F
    inc bc                                        ; $4105: $03
    rrca                                          ; $4106: $0F
    nop                                           ; $4107: $00
    rra                                           ; $4108: $1F
    nop                                           ; $4109: $00
    rra                                           ; $410A: $1F
    nop                                           ; $410B: $00
    rrca                                          ; $410C: $0F
    nop                                           ; $410D: $00
    rrca                                          ; $410E: $0F
    nop                                           ; $410F: $00
    add sp, -$30                                  ; $4110: $E8 $D0
    ret z                                         ; $4112: $C8

    or b                                          ; $4113: $B0
    sub b                                         ; $4114: $90
    ld h, b                                       ; $4115: $60
    ldh [rP1], a                                  ; $4116: $E0 $00
    ldh a, [rP1]                                  ; $4118: $F0 $00
    ld hl, sp+$00                                 ; $411A: $F8 $00
    db $F4                                        ; $411C: $F4
    ld [$08F4], sp                                ; $411D: $08 $F4 $08
    rra                                           ; $4120: $1F
    ld c, $0E                                     ; $4121: $0E $0E
    dec b                                         ; $4123: $05
    dec d                                         ; $4124: $15
    ld a, [bc]                                    ; $4125: $0A
    dec c                                         ; $4126: $0D
    ld [bc], a                                    ; $4127: $02
    ld b, $01                                     ; $4128: $06 $01
    rrca                                          ; $412A: $0F
    nop                                           ; $412B: $00
    inc e                                         ; $412C: $1C
    inc bc                                        ; $412D: $03
    inc e                                         ; $412E: $1C
    inc bc                                        ; $412F: $03
    cp [hl]                                       ; $4130: $BE
    ld e, h                                       ; $4131: $5C
    inc e                                         ; $4132: $1C
    add sp, $2A                                   ; $4133: $E8 $2A
    call nc, $D02C                                ; $4135: $D4 $2C $D0
    db $10                                        ; $4138: $10
    ldh [$F8], a                                  ; $4139: $E0 $F8
    nop                                           ; $413B: $00
    ld hl, sp+$00                                 ; $413C: $F8 $00
    add sp, $10                                   ; $413E: $E8 $10
    rra                                           ; $4140: $1F
    rrca                                          ; $4141: $0F
    rrca                                          ; $4142: $0F
    rlca                                          ; $4143: $07
    rla                                           ; $4144: $17
    dec bc                                        ; $4145: $0B
    rrca                                          ; $4146: $0F
    ld bc, $000F                                  ; $4147: $01 $0F $00
    rra                                           ; $414A: $1F
    nop                                           ; $414B: $00
    rra                                           ; $414C: $1F
    nop                                           ; $414D: $00
    rla                                           ; $414E: $17
    ld [$FCFE], sp                                ; $414F: $08 $FE $FC
    db $FC                                        ; $4152: $FC
    ld hl, sp-$06                                 ; $4153: $F8 $FA
    db $F4                                        ; $4155: $F4
    db $FC                                        ; $4156: $FC
    ldh [$F0], a                                  ; $4157: $E0 $F0
    nop                                           ; $4159: $00
    ld hl, sp+$00                                 ; $415A: $F8 $00
    ld hl, sp+$00                                 ; $415C: $F8 $00
    ld hl, sp+$00                                 ; $415E: $F8 $00
    rra                                           ; $4160: $1F
    nop                                           ; $4161: $00
    rrca                                          ; $4162: $0F
    nop                                           ; $4163: $00
    db $10                                        ; $4164: $10
    rrca                                          ; $4165: $0F
    ld de, $2F0E                                  ; $4166: $11 $0E $2F
    db $10                                        ; $4169: $10
    ccf                                           ; $416A: $3F
    ld b, $3F                                     ; $416B: $06 $3F
    ld e, $1F                                     ; $416D: $1E $1F
    nop                                           ; $416F: $00
    ldh [rP1], a                                  ; $4170: $E0 $00
    ldh [rP1], a                                  ; $4172: $E0 $00
    db $10                                        ; $4174: $10
    ldh [$30], a                                  ; $4175: $E0 $30
    ret nz                                        ; $4177: $C0

    ld hl, sp+$30                                 ; $4178: $F8 $30
    ld hl, sp-$10                                 ; $417A: $F8 $F0
    ldh a, [rP1]                                  ; $417C: $F0 $00
    nop                                           ; $417E: $00
    nop                                           ; $417F: $00
    ld hl, sp+$00                                 ; $4180: $F8 $00
    ldh a, [rP1]                                  ; $4182: $F0 $00
    ld [$B8F0], sp                                ; $4184: $08 $F0 $B8

jr_00B_4187:
    ld b, b                                       ; $4187: $40
    ld hl, sp+$30                                 ; $4188: $F8 $30
    db $FC                                        ; $418A: $FC
    ld a, b                                       ; $418B: $78
    db $FC                                        ; $418C: $FC
    jr c, jr_00B_4187                             ; $418D: $38 $F8

    nop                                           ; $418F: $00
    ldh a, [rP1]                                  ; $4190: $F0 $00
    ldh a, [rP1]                                  ; $4192: $F0 $00
    sub b                                         ; $4194: $90
    ld h, b                                       ; $4195: $60

jr_00B_4196:
    adc b                                         ; $4196: $88
    ld [hl], b                                    ; $4197: $70
    sbc b                                         ; $4198: $98
    ld h, b                                       ; $4199: $60
    db $FC                                        ; $419A: $FC
    ld [$70FC], sp                                ; $419B: $08 $FC $70
    ld hl, sp+$00                                 ; $419E: $F8 $00
    rlca                                          ; $41A0: $07
    nop                                           ; $41A1: $00
    dec b                                         ; $41A2: $05
    ld [bc], a                                    ; $41A3: $02
    ld [$0807], sp                                ; $41A4: $08 $07 $08
    rlca                                          ; $41A7: $07
    ld c, $01                                     ; $41A8: $0E $01
    rrca                                          ; $41AA: $0F
    ld b, $0F                                     ; $41AB: $06 $0F
    nop                                           ; $41AD: $00
    nop                                           ; $41AE: $00
    nop                                           ; $41AF: $00
    ld hl, sp+$00                                 ; $41B0: $F8 $00
    ld hl, sp+$00                                 ; $41B2: $F8 $00
    ld [$88F0], sp                                ; $41B4: $08 $F0 $88
    ld [hl], b                                    ; $41B7: $70
    sbc b                                         ; $41B8: $98
    ld h, b                                       ; $41B9: $60
    db $FC                                        ; $41BA: $FC
    ld [$70FC], sp                                ; $41BB: $08 $FC $70
    ld hl, sp+$00                                 ; $41BE: $F8 $00
    rra                                           ; $41C0: $1F
    nop                                           ; $41C1: $00
    rrca                                          ; $41C2: $0F
    nop                                           ; $41C3: $00
    ld [$0A07], sp                                ; $41C4: $08 $07 $0A
    dec b                                         ; $41C7: $05
    add hl, bc                                    ; $41C8: $09
    ld b, $07                                     ; $41C9: $06 $07
    nop                                           ; $41CB: $00
    rlca                                          ; $41CC: $07
    ld [bc], a                                    ; $41CD: $02
    inc bc                                        ; $41CE: $03
    nop                                           ; $41CF: $00
    ld hl, sp+$00                                 ; $41D0: $F8 $00
    ldh a, [rP1]                                  ; $41D2: $F0 $00
    jr nc, jr_00B_4196                            ; $41D4: $30 $C0

    ld [hl], b                                    ; $41D6: $70
    add b                                         ; $41D7: $80
    ldh a, [$60]                                  ; $41D8: $F0 $60
    ldh a, [$E0]                                  ; $41DA: $F0 $E0
    ldh [$C0], a                                  ; $41DC: $E0 $C0
    ldh [rP1], a                                  ; $41DE: $E0 $00
    rrca                                          ; $41E0: $0F
    nop                                           ; $41E1: $00
    rlca                                          ; $41E2: $07
    nop                                           ; $41E3: $00
    ld [$0807], sp                                ; $41E4: $08 $07 $08
    rlca                                          ; $41E7: $07
    ld [$0707], sp                                ; $41E8: $08 $07 $07
    nop                                           ; $41EB: $00
    rlca                                          ; $41EC: $07
    inc bc                                        ; $41ED: $03
    rlca                                          ; $41EE: $07
    nop                                           ; $41EF: $00
    ldh a, [rP1]                                  ; $41F0: $F0 $00
    ldh a, [rP1]                                  ; $41F2: $F0 $00
    ld [$C8F0], sp                                ; $41F4: $08 $F0 $C8
    jr nc, @-$0E                                  ; $41F7: $30 $F0

    nop                                           ; $41F9: $00
    ldh a, [$60]                                  ; $41FA: $F0 $60
    ldh a, [$60]                                  ; $41FC: $F0 $60
    ldh a, [rP1]                                  ; $41FE: $F0 $00
    nop                                           ; $4200: $00
    nop                                           ; $4201: $00
    nop                                           ; $4202: $00
    nop                                           ; $4203: $00
    inc bc                                        ; $4204: $03
    nop                                           ; $4205: $00
    rrca                                          ; $4206: $0F
    inc bc                                        ; $4207: $03
    rra                                           ; $4208: $1F

jr_00B_4209:
    rrca                                          ; $4209: $0F
    ccf                                           ; $420A: $3F
    rra                                           ; $420B: $1F
    ccf                                           ; $420C: $3F
    rra                                           ; $420D: $1F
    ccf                                           ; $420E: $3F
    add hl, de                                    ; $420F: $19
    nop                                           ; $4210: $00
    nop                                           ; $4211: $00
    nop                                           ; $4212: $00
    nop                                           ; $4213: $00
    ldh [rP1], a                                  ; $4214: $E0 $00
    ldh a, [$E0]                                  ; $4216: $F0 $E0
    ld hl, sp-$10                                 ; $4218: $F8 $F0
    db $FC                                        ; $421A: $FC
    ld hl, sp-$04                                 ; $421B: $F8 $FC
    sbc b                                         ; $421D: $98
    sbc b                                         ; $421E: $98
    ld h, b                                       ; $421F: $60
    ccf                                           ; $4220: $3F
    add hl, de                                    ; $4221: $19
    dec e                                         ; $4222: $1D
    ld a, [bc]                                    ; $4223: $0A
    inc c                                         ; $4224: $0C
    inc bc                                        ; $4225: $03
    ld b, $01                                     ; $4226: $06 $01
    rrca                                          ; $4228: $0F
    nop                                           ; $4229: $00
    rra                                           ; $422A: $1F
    nop                                           ; $422B: $00
    cpl                                           ; $422C: $2F
    db $10                                        ; $422D: $10
    cpl                                           ; $422E: $2F
    db $10                                        ; $422F: $10
    sbc b                                         ; $4230: $98
    ld h, b                                       ; $4231: $60
    ld d, b                                       ; $4232: $50
    and b                                         ; $4233: $A0
    ld d, b                                       ; $4234: $50
    and b                                         ; $4235: $A0
    db $10                                        ; $4236: $10
    ldh [$C0], a                                  ; $4237: $E0 $C0
    nop                                           ; $4239: $00
    ldh [rP1], a                                  ; $423A: $E0 $00
    sub b                                         ; $423C: $90
    ld h, b                                       ; $423D: $60
    sub b                                         ; $423E: $90
    ld h, b                                       ; $423F: $60
    dec e                                         ; $4240: $1D
    ld a, [bc]                                    ; $4241: $0A
    inc c                                         ; $4242: $0C
    inc bc                                        ; $4243: $03
    ld b, $01                                     ; $4244: $06 $01
    rrca                                          ; $4246: $0F
    nop                                           ; $4247: $00
    rrca                                          ; $4248: $0F
    nop                                           ; $4249: $00
    rrca                                          ; $424A: $0F
    nop                                           ; $424B: $00
    ld c, $01                                     ; $424C: $0E $01
    ld b, $01                                     ; $424E: $06 $01
    ld d, b                                       ; $4250: $50
    and b                                         ; $4251: $A0
    ld d, b                                       ; $4252: $50
    and b                                         ; $4253: $A0
    db $10                                        ; $4254: $10
    ldh [$E0], a                                  ; $4255: $E0 $E0
    nop                                           ; $4257: $00
    ldh [rP1], a                                  ; $4258: $E0 $00
    ldh [rP1], a                                  ; $425A: $E0 $00
    ld h, b                                       ; $425C: $60
    add b                                         ; $425D: $80
    ld h, b                                       ; $425E: $60
    add b                                         ; $425F: $80
    ccf                                           ; $4260: $3F
    add hl, de                                    ; $4261: $19
    dec e                                         ; $4262: $1D
    ld a, [bc]                                    ; $4263: $0A
    inc c                                         ; $4264: $0C
    inc bc                                        ; $4265: $03
    ld b, $01                                     ; $4266: $06 $01
    rrca                                          ; $4268: $0F
    nop                                           ; $4269: $00
    rra                                           ; $426A: $1F
    nop                                           ; $426B: $00
    daa                                           ; $426C: $27
    jr jr_00B_4296                                ; $426D: $18 $27

    jr jr_00B_4209                                ; $426F: $18 $98

    ld h, b                                       ; $4271: $60
    ld d, b                                       ; $4272: $50
    and b                                         ; $4273: $A0
    ld d, b                                       ; $4274: $50
    and b                                         ; $4275: $A0

jr_00B_4276:
    db $10                                        ; $4276: $10
    ldh [$C0], a                                  ; $4277: $E0 $C0
    nop                                           ; $4279: $00
    ldh [rP1], a                                  ; $427A: $E0 $00
    ret nc                                        ; $427C: $D0

    jr nz, @-$2E                                  ; $427D: $20 $D0

    jr nz, jr_00B_42A0                            ; $427F: $20 $1F

    nop                                           ; $4281: $00
    rrca                                          ; $4282: $0F
    nop                                           ; $4283: $00
    db $10                                        ; $4284: $10
    rrca                                          ; $4285: $0F
    jr nz, jr_00B_42A7                            ; $4286: $20 $1F

    ld [hl], e                                    ; $4288: $73
    inc l                                         ; $4289: $2C
    ld a, a                                       ; $428A: $7F
    ld [hl-], a                                   ; $428B: $32
    ld a, a                                       ; $428C: $7F
    ld e, $7F                                     ; $428D: $1E $7F
    nop                                           ; $428F: $00
    ldh [rP1], a                                  ; $4290: $E0 $00
    ldh [rP1], a                                  ; $4292: $E0 $00
    ld a, b                                       ; $4294: $78
    add b                                         ; $4295: $80

jr_00B_4296:
    db $FC                                        ; $4296: $FC
    jr jr_00B_4315                                ; $4297: $18 $7C

    cp b                                          ; $4299: $B8
    ld a, b                                       ; $429A: $78
    or b                                          ; $429B: $B0
    ld hl, sp+$40                                 ; $429C: $F8 $40
    ldh [rP1], a                                  ; $429E: $E0 $00

jr_00B_42A0:
    rlca                                          ; $42A0: $07
    nop                                           ; $42A1: $00
    rlca                                          ; $42A2: $07
    nop                                           ; $42A3: $00
    ld [$1007], sp                                ; $42A4: $08 $07 $10

jr_00B_42A7:
    rrca                                          ; $42A7: $0F
    rra                                           ; $42A8: $1F
    nop                                           ; $42A9: $00
    rra                                           ; $42AA: $1F
    rlca                                          ; $42AB: $07
    rra                                           ; $42AC: $1F
    rrca                                          ; $42AD: $0F
    rra                                           ; $42AE: $1F
    nop                                           ; $42AF: $00
    ldh [rP1], a                                  ; $42B0: $E0 $00
    ldh [rP1], a                                  ; $42B2: $E0 $00
    jr nz, jr_00B_4276                            ; $42B4: $20 $C0

    ld h, b                                       ; $42B6: $60
    add b                                         ; $42B7: $80
    ldh a, [rNR41]                                ; $42B8: $F0 $20
    ldh a, [$A0]                                  ; $42BA: $F0 $A0
    ldh a, [$80]                                  ; $42BC: $F0 $80

jr_00B_42BE:
    ret nz                                        ; $42BE: $C0

    nop                                           ; $42BF: $00

jr_00B_42C0:
    rra                                           ; $42C0: $1F
    nop                                           ; $42C1: $00
    rrca                                          ; $42C2: $0F
    nop                                           ; $42C3: $00
    db $10                                        ; $42C4: $10
    rrca                                          ; $42C5: $0F
    inc [hl]                                      ; $42C6: $34
    dec bc                                        ; $42C7: $0B
    ld a, [hl]                                    ; $42C8: $7E
    ld hl, $3C7F                                  ; $42C9: $21 $7F $3C
    ld a, a                                       ; $42CC: $7F
    ld e, $7F                                     ; $42CD: $1E $7F
    nop                                           ; $42CF: $00
    ldh [rP1], a                                  ; $42D0: $E0 $00
    ret nz                                        ; $42D2: $C0

    nop                                           ; $42D3: $00
    jr c, jr_00B_4296                             ; $42D4: $38 $C0

    inc a                                         ; $42D6: $3C
    ret c                                         ; $42D7: $D8

    ld a, h                                       ; $42D8: $7C
    cp b                                          ; $42D9: $B8
    ld a, b                                       ; $42DA: $78
    or b                                          ; $42DB: $B0
    ld hl, sp+$40                                 ; $42DC: $F8 $40
    ldh [rP1], a                                  ; $42DE: $E0 $00
    rra                                           ; $42E0: $1F
    ld c, $0E                                     ; $42E1: $0E $0E
    dec b                                         ; $42E3: $05
    dec d                                         ; $42E4: $15
    ld a, [bc]                                    ; $42E5: $0A
    dec c                                         ; $42E6: $0D
    ld [bc], a                                    ; $42E7: $02
    ld b, $01                                     ; $42E8: $06 $01
    rrca                                          ; $42EA: $0F
    nop                                           ; $42EB: $00
    rra                                           ; $42EC: $1F
    nop                                           ; $42ED: $00
    rla                                           ; $42EE: $17
    ld [$5CBE], sp                                ; $42EF: $08 $BE $5C
    inc e                                         ; $42F2: $1C
    add sp, $2A                                   ; $42F3: $E8 $2A
    call nc, $D02C                                ; $42F5: $D4 $2C $D0
    db $10                                        ; $42F8: $10
    ldh [$F8], a                                  ; $42F9: $E0 $F8
    nop                                           ; $42FB: $00
    jr c, jr_00B_42BE                             ; $42FC: $38 $C0

    jr c, jr_00B_42C0                             ; $42FE: $38 $C0

    rra                                           ; $4300: $1F
    rrca                                          ; $4301: $0F
    rrca                                          ; $4302: $0F
    rlca                                          ; $4303: $07
    rla                                           ; $4304: $17
    dec bc                                        ; $4305: $0B
    rrca                                          ; $4306: $0F
    ld bc, $0007                                  ; $4307: $01 $07 $00
    rra                                           ; $430A: $1F
    nop                                           ; $430B: $00
    rra                                           ; $430C: $1F
    nop                                           ; $430D: $00
    rrca                                          ; $430E: $0F
    nop                                           ; $430F: $00
    cp $FC                                        ; $4310: $FE $FC
    db $FC                                        ; $4312: $FC
    ld hl, sp-$06                                 ; $4313: $F8 $FA

jr_00B_4315:
    db $F4                                        ; $4315: $F4
    db $FC                                        ; $4316: $FC
    ldh [$F0], a                                  ; $4317: $E0 $F0
    nop                                           ; $4319: $00
    ld hl, sp+$00                                 ; $431A: $F8 $00
    db $FC                                        ; $431C: $FC
    nop                                           ; $431D: $00
    db $F4                                        ; $431E: $F4
    ld [rRAMG], sp                                ; $431F: $08 $00 $00
    nop                                           ; $4322: $00
    nop                                           ; $4323: $00
    nop                                           ; $4324: $00
    nop                                           ; $4325: $00
    jr c, jr_00B_4328                             ; $4326: $38 $00

jr_00B_4328:
    ld a, a                                       ; $4328: $7F
    jr c, @+$81                                   ; $4329: $38 $7F

    scf                                           ; $432B: $37
    ld a, a                                       ; $432C: $7F
    cpl                                           ; $432D: $2F
    ccf                                           ; $432E: $3F
    rra                                           ; $432F: $1F
    nop                                           ; $4330: $00
    nop                                           ; $4331: $00
    nop                                           ; $4332: $00
    nop                                           ; $4333: $00
    nop                                           ; $4334: $00
    nop                                           ; $4335: $00
    nop                                           ; $4336: $00
    nop                                           ; $4337: $00
    ldh a, [rP1]                                  ; $4338: $F0 $00
    ld hl, sp-$10                                 ; $433A: $F8 $F0
    db $FC                                        ; $433C: $FC
    ld hl, sp-$04                                 ; $433D: $F8 $FC
    ld hl, sp+$00                                 ; $433F: $F8 $00
    nop                                           ; $4341: $00
    nop                                           ; $4342: $00
    nop                                           ; $4343: $00
    ld bc, $0300                                  ; $4344: $01 $00 $03
    ld bc, $0007                                  ; $4347: $01 $07 $00
    rrca                                          ; $434A: $0F
    rlca                                          ; $434B: $07
    rra                                           ; $434C: $1F
    ld c, $1F                                     ; $434D: $0E $1F
    rrca                                          ; $434F: $0F
    nop                                           ; $4350: $00
    nop                                           ; $4351: $00
    nop                                           ; $4352: $00
    nop                                           ; $4353: $00
    ret nz                                        ; $4354: $C0

    nop                                           ; $4355: $00
    ldh [$C0], a                                  ; $4356: $E0 $C0
    ldh a, [rNR41]                                ; $4358: $F0 $20
    ldh a, [$E0]                                  ; $435A: $F0 $E0
    ld hl, sp-$10                                 ; $435C: $F8 $F0
    ld hl, sp+$70                                 ; $435E: $F8 $70
    nop                                           ; $4360: $00
    nop                                           ; $4361: $00
    nop                                           ; $4362: $00
    nop                                           ; $4363: $00
    ld bc, $0700                                  ; $4364: $01 $00 $07
    ld bc, $050F                                  ; $4367: $01 $0F $05
    rra                                           ; $436A: $1F
    dec c                                         ; $436B: $0D
    rra                                           ; $436C: $1F
    dec c                                         ; $436D: $0D
    rra                                           ; $436E: $1F
    ld c, $00                                     ; $436F: $0E $00
    nop                                           ; $4371: $00
    nop                                           ; $4372: $00
    nop                                           ; $4373: $00
    ret nz                                        ; $4374: $C0

    nop                                           ; $4375: $00
    ldh a, [$C0]                                  ; $4376: $F0 $C0
    ldh a, [$C0]                                  ; $4378: $F0 $C0
    ld hl, sp-$30                                 ; $437A: $F8 $D0
    ld hl, sp-$30                                 ; $437C: $F8 $D0
    ld hl, sp-$50                                 ; $437E: $F8 $B0
    nop                                           ; $4380: $00
    nop                                           ; $4381: $00
    nop                                           ; $4382: $00
    nop                                           ; $4383: $00
    dec e                                         ; $4384: $1D
    nop                                           ; $4385: $00
    ccf                                           ; $4386: $3F
    dec e                                         ; $4387: $1D
    ccf                                           ; $4388: $3F
    dec e                                         ; $4389: $1D
    ccf                                           ; $438A: $3F
    dec de                                        ; $438B: $1B
    ccf                                           ; $438C: $3F
    dec de                                        ; $438D: $1B
    rra                                           ; $438E: $1F
    dec bc                                        ; $438F: $0B
    nop                                           ; $4390: $00
    nop                                           ; $4391: $00
    nop                                           ; $4392: $00
    nop                                           ; $4393: $00
    ld hl, sp+$00                                 ; $4394: $F8 $00
    db $FC                                        ; $4396: $FC
    ld hl, sp-$02                                 ; $4397: $F8 $FE
    db $FC                                        ; $4399: $FC

jr_00B_439A:
    cp $FC                                        ; $439A: $FE $FC
    cp $F4                                        ; $439C: $FE $F4
    cp $E4                                        ; $439E: $FE $E4
    ld a, a                                       ; $43A0: $7F
    ld l, $3E                                     ; $43A1: $2E $3E
    dec b                                         ; $43A3: $05

jr_00B_43A4:
    dec d                                         ; $43A4: $15
    ld a, [bc]                                    ; $43A5: $0A
    dec c                                         ; $43A6: $0D

jr_00B_43A7:
    ld [bc], a                                    ; $43A7: $02
    ld [bc], a                                    ; $43A8: $02
    ld bc, $0205                                  ; $43A9: $01 $05 $02
    dec b                                         ; $43AC: $05
    ld [bc], a                                    ; $43AD: $02
    add hl, bc                                    ; $43AE: $09
    ld b, $FE                                     ; $43AF: $06 $FE
    ld e, h                                       ; $43B1: $5C
    ld e, [hl]                                    ; $43B2: $5E
    xor h                                         ; $43B3: $AC
    ld l, $D4                                     ; $43B4: $2E $D4
    inc l                                         ; $43B6: $2C
    ret nc                                        ; $43B7: $D0

    db $10                                        ; $43B8: $10
    ldh [$E0], a                                  ; $43B9: $E0 $E0
    nop                                           ; $43BB: $00
    ldh a, [rP1]                                  ; $43BC: $F0 $00
    ldh a, [rP1]                                  ; $43BE: $F0 $00
    rra                                           ; $43C0: $1F
    dec c                                         ; $43C1: $0D
    dec e                                         ; $43C2: $1D
    ld a, [bc]                                    ; $43C3: $0A
    ld a, [hl+]                                   ; $43C4: $2A
    dec d                                         ; $43C5: $15
    ld a, [de]                                    ; $43C6: $1A

jr_00B_43C7:
    dec b                                         ; $43C7: $05
    inc c                                         ; $43C8: $0C
    inc bc                                        ; $43C9: $03
    rrca                                          ; $43CA: $0F
    nop                                           ; $43CB: $00
    dec bc                                        ; $43CC: $0B

jr_00B_43CD:
    inc b                                         ; $43CD: $04
    inc de                                        ; $43CE: $13
    inc c                                         ; $43CF: $0C
    ld hl, sp+$30                                 ; $43D0: $F8 $30
    jr c, jr_00B_43A4                             ; $43D2: $38 $D0

    ld d, h                                       ; $43D4: $54
    xor b                                         ; $43D5: $A8
    ld e, b                                       ; $43D6: $58
    and b                                         ; $43D7: $A0
    jr nc, jr_00B_439A                            ; $43D8: $30 $C0

    ldh a, [rP1]                                  ; $43DA: $F0 $00
    ret nc                                        ; $43DC: $D0

    jr nz, jr_00B_43A7                            ; $43DD: $20 $C8

    jr nc, @+$21                                  ; $43DF: $30 $1F

    ld c, $2F                                     ; $43E1: $0E $2F
    ld d, $1F                                     ; $43E3: $16 $1F
    rlca                                          ; $43E5: $07
    rrca                                          ; $43E6: $0F
    inc bc                                        ; $43E7: $03
    rlca                                          ; $43E8: $07
    nop                                           ; $43E9: $00
    dec bc                                        ; $43EA: $0B
    inc b                                         ; $43EB: $04
    dec bc                                        ; $43EC: $0B
    inc b                                         ; $43ED: $04
    inc de                                        ; $43EE: $13
    inc c                                         ; $43EF: $0C
    ld hl, sp-$50                                 ; $43F0: $F8 $B0
    db $F4                                        ; $43F2: $F4
    xor b                                         ; $43F3: $A8
    ld hl, sp+$60                                 ; $43F4: $F8 $60
    ldh a, [$C0]                                  ; $43F6: $F0 $C0
    ldh [rP1], a                                  ; $43F8: $E0 $00
    ret nc                                        ; $43FA: $D0

    jr nz, jr_00B_43CD                            ; $43FB: $20 $D0

    jr nz, jr_00B_43C7                            ; $43FD: $20 $C8

    jr nc, jr_00B_4420                            ; $43FF: $30 $1F

    dec bc                                        ; $4401: $0B
    rra                                           ; $4402: $1F
    rlca                                          ; $4403: $07
    rlca                                          ; $4404: $07
    inc bc                                        ; $4405: $03

jr_00B_4406:
    inc bc                                        ; $4406: $03
    nop                                           ; $4407: $00
    ld bc, $0100                                  ; $4408: $01 $00 $01
    nop                                           ; $440B: $00
    inc bc                                        ; $440C: $03
    nop                                           ; $440D: $00
    inc bc                                        ; $440E: $03

jr_00B_440F:
    nop                                           ; $440F: $00
    db $EC                                        ; $4410: $EC
    ret nc                                        ; $4411: $D0

    ret z                                         ; $4412: $C8

    or b                                          ; $4413: $B0
    sub b                                         ; $4414: $90
    ld h, b                                       ; $4415: $60
    ret nz                                        ; $4416: $C0

    nop                                           ; $4417: $00
    and b                                         ; $4418: $A0
    ld b, b                                       ; $4419: $40
    sub b                                         ; $441A: $90
    ld h, b                                       ; $441B: $60
    sub b                                         ; $441C: $90
    ld h, b                                       ; $441D: $60
    ldh [rP1], a                                  ; $441E: $E0 $00

jr_00B_4420:
    rra                                           ; $4420: $1F
    rrca                                          ; $4421: $0F
    rra                                           ; $4422: $1F
    dec c                                         ; $4423: $0D
    dec e                                         ; $4424: $1D
    ld a, [bc]                                    ; $4425: $0A
    ld a, [hl+]                                   ; $4426: $2A
    dec d                                         ; $4427: $15
    ld a, [de]                                    ; $4428: $1A
    dec b                                         ; $4429: $05
    inc c                                         ; $442A: $0C
    inc bc                                        ; $442B: $03
    dec bc                                        ; $442C: $0B
    inc b                                         ; $442D: $04
    add hl, bc                                    ; $442E: $09

jr_00B_442F:
    ld b, $F8                                     ; $442F: $06 $F8
    ld [hl], b                                    ; $4431: $70
    ld hl, sp+$30                                 ; $4432: $F8 $30
    jr c, jr_00B_4406                             ; $4434: $38 $D0

    ld d, h                                       ; $4436: $54
    xor b                                         ; $4437: $A8
    ld e, b                                       ; $4438: $58
    and b                                         ; $4439: $A0
    jr nc, @-$3E                                  ; $443A: $30 $C0

    ret nc                                        ; $443C: $D0

    jr nz, jr_00B_440F                            ; $443D: $20 $D0

    jr nz, @+$21                                  ; $443F: $20 $1F

    ld c, $1F                                     ; $4441: $0E $1F
    dec c                                         ; $4443: $0D
    cpl                                           ; $4444: $2F
    ld d, $1F                                     ; $4445: $16 $1F
    rlca                                          ; $4447: $07
    rrca                                          ; $4448: $0F
    inc bc                                        ; $4449: $03
    rlca                                          ; $444A: $07
    nop                                           ; $444B: $00
    dec bc                                        ; $444C: $0B
    inc b                                         ; $444D: $04
    add hl, bc                                    ; $444E: $09
    ld b, $F8                                     ; $444F: $06 $F8
    or b                                          ; $4451: $B0
    ld hl, sp+$70                                 ; $4452: $F8 $70
    db $F4                                        ; $4454: $F4
    add sp, -$08                                  ; $4455: $E8 $F8
    ldh [$F0], a                                  ; $4457: $E0 $F0
    ret nz                                        ; $4459: $C0

    ldh [rP1], a                                  ; $445A: $E0 $00
    ret nc                                        ; $445C: $D0

    jr nz, jr_00B_442F                            ; $445D: $20 $D0

    jr nz, jr_00B_446A                            ; $445F: $20 $09

    ld b, $07                                     ; $4461: $06 $07
    ld bc, $0103                                  ; $4463: $01 $03 $01
    inc bc                                        ; $4466: $03
    ld bc, $0207                                  ; $4467: $01 $07 $02

jr_00B_446A:
    rlca                                          ; $446A: $07
    nop                                           ; $446B: $00
    rrca                                          ; $446C: $0F
    rlca                                          ; $446D: $07
    rlca                                          ; $446E: $07
    nop                                           ; $446F: $00
    ldh [$C0], a                                  ; $4470: $E0 $C0
    ldh [$C0], a                                  ; $4472: $E0 $C0
    ldh [$C0], a                                  ; $4474: $E0 $C0
    ld hl, sp-$40                                 ; $4476: $F8 $C0
    db $FC                                        ; $4478: $FC
    jr @-$02                                      ; $4479: $18 $FC

    ret c                                         ; $447B: $D8

    ld hl, sp-$40                                 ; $447C: $F8 $C0
    ldh [rP1], a                                  ; $447E: $E0 $00
    inc de                                        ; $4480: $13
    dec c                                         ; $4481: $0D
    rrca                                          ; $4482: $0F
    ld bc, $0103                                  ; $4483: $01 $03 $01
    rlca                                          ; $4486: $07
    ld bc, $060F                                  ; $4487: $01 $0F $06
    rra                                           ; $448A: $1F
    rrca                                          ; $448B: $0F
    rra                                           ; $448C: $1F
    ld c, $0F                                     ; $448D: $0E $0F
    nop                                           ; $448F: $00
    ret z                                         ; $4490: $C8

    or b                                          ; $4491: $B0
    ldh a, [$C0]                                  ; $4492: $F0 $C0
    ldh [$C0], a                                  ; $4494: $E0 $C0
    ldh a, [$C0]                                  ; $4496: $F0 $C0
    ld hl, sp+$30                                 ; $4498: $F8 $30
    db $FC                                        ; $449A: $FC
    ld a, b                                       ; $449B: $78
    db $FC                                        ; $449C: $FC
    jr c, @-$06                                   ; $449D: $38 $F8

    nop                                           ; $449F: $00
    inc de                                        ; $44A0: $13
    dec c                                         ; $44A1: $0D
    rrca                                          ; $44A2: $0F
    ld bc, $0103                                  ; $44A3: $01 $03 $01
    inc bc                                        ; $44A6: $03
    ld bc, $010F                                  ; $44A7: $01 $0F $01
    rra                                           ; $44AA: $1F
    inc c                                         ; $44AB: $0C
    rra                                           ; $44AC: $1F
    rlca                                          ; $44AD: $07
    rrca                                          ; $44AE: $0F
    nop                                           ; $44AF: $00
    ret z                                         ; $44B0: $C8

    or b                                          ; $44B1: $B0
    ldh a, [$C0]                                  ; $44B2: $F0 $C0
    ldh [$C0], a                                  ; $44B4: $E0 $C0
    ldh [$C0], a                                  ; $44B6: $E0 $C0
    ld hl, sp-$40                                 ; $44B8: $F8 $C0
    db $FC                                        ; $44BA: $FC
    jr @-$02                                      ; $44BB: $18 $FC

    ld [hl], b                                    ; $44BD: $70
    ld hl, sp+$00                                 ; $44BE: $F8 $00
    ld hl, sp+$70                                 ; $44C0: $F8 $70
    ld hl, sp+$70                                 ; $44C2: $F8 $70
    ld hl, sp+$70                                 ; $44C4: $F8 $70
    ld hl, sp+$70                                 ; $44C6: $F8 $70
    cp $30                                        ; $44C8: $FE $30
    rst $38                                       ; $44CA: $FF
    ld b, [hl]                                    ; $44CB: $46
    rst $38                                       ; $44CC: $FF
    inc e                                         ; $44CD: $1C
    ld a, $00                                     ; $44CE: $3E $00
    sbc [hl]                                      ; $44D0: $9E
    ld h, b                                       ; $44D1: $60
    ld a, [hl]                                    ; $44D2: $7E
    inc e                                         ; $44D3: $1C
    ld a, [hl]                                    ; $44D4: $7E
    inc a                                         ; $44D5: $3C
    ld a, [hl]                                    ; $44D6: $7E
    jr c, @+$81                                   ; $44D7: $38 $7F

    ld [hl], $7F                                  ; $44D9: $36 $7F
    ld c, $7E                                     ; $44DB: $0E $7E
    inc l                                         ; $44DD: $2C
    ld a, $00                                     ; $44DE: $3E $00
    sbc [hl]                                      ; $44E0: $9E
    ld l, h                                       ; $44E1: $6C
    ld a, [hl]                                    ; $44E2: $7E
    jr jr_00B_4561                                ; $44E3: $18 $7C

    jr c, jr_00B_4563                             ; $44E5: $38 $7C

    nop                                           ; $44E7: $00
    inc a                                         ; $44E8: $3C
    jr jr_00B_4529                                ; $44E9: $18 $3E

    inc e                                         ; $44EB: $1C
    ld a, [hl]                                    ; $44EC: $7E
    inc l                                         ; $44ED: $2C
    ld a, [hl]                                    ; $44EE: $7E
    nop                                           ; $44EF: $00
    nop                                           ; $44F0: $00
    nop                                           ; $44F1: $00
    nop                                           ; $44F2: $00
    nop                                           ; $44F3: $00
    dec de                                        ; $44F4: $1B
    nop                                           ; $44F5: $00
    ld a, a                                       ; $44F6: $7F
    dec de                                        ; $44F7: $1B
    rst $38                                       ; $44F8: $FF
    ld [hl], a                                    ; $44F9: $77
    rst $38                                       ; $44FA: $FF
    ld [hl], a                                    ; $44FB: $77
    rst $38                                       ; $44FC: $FF
    ld l, a                                       ; $44FD: $6F
    rst $38                                       ; $44FE: $FF
    ld c, c                                       ; $44FF: $49
    nop                                           ; $4500: $00
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    nop                                           ; $4503: $00
    ldh a, [rP1]                                  ; $4504: $F0 $00
    ld hl, sp-$10                                 ; $4506: $F8 $F0
    db $FC                                        ; $4508: $FC
    ldh a, [$FC]                                  ; $4509: $F0 $FC
    ld hl, sp-$04                                 ; $450B: $F8 $FC
    xor b                                         ; $450D: $A8
    cp b                                          ; $450E: $B8
    ld b, b                                       ; $450F: $40
    rst $38                                       ; $4510: $FF
    ret                                           ; $4511: $C9


    ret                                           ; $4512: $C9


    ld b, $04                                     ; $4513: $06 $04
    inc bc                                        ; $4515: $03
    ld [bc], a                                    ; $4516: $02
    ld bc, $0003                                  ; $4517: $01 $03 $00
    dec bc                                        ; $451A: $0B
    inc b                                         ; $451B: $04
    ld a, [bc]                                    ; $451C: $0A
    dec b                                         ; $451D: $05
    rlca                                          ; $451E: $07
    nop                                           ; $451F: $00
    cp b                                          ; $4520: $B8
    ld b, b                                       ; $4521: $40
    ld d, b                                       ; $4522: $50
    and b                                         ; $4523: $A0
    ld d, b                                       ; $4524: $50
    and b                                         ; $4525: $A0
    db $10                                        ; $4526: $10
    ldh [$E0], a                                  ; $4527: $E0 $E0

jr_00B_4529:
    nop                                           ; $4529: $00
    sub b                                         ; $452A: $90
    ld h, b                                       ; $452B: $60
    sub b                                         ; $452C: $90
    ld h, b                                       ; $452D: $60
    ldh [rP1], a                                  ; $452E: $E0 $00
    jp hl                                         ; $4530: $E9


    ld b, [hl]                                    ; $4531: $46
    ld b, h                                       ; $4532: $44
    inc bc                                        ; $4533: $03
    ld [bc], a                                    ; $4534: $02
    ld bc, $0003                                  ; $4535: $01 $03 $00
    ld [bc], a                                    ; $4538: $02
    ld bc, $0300                                  ; $4539: $01 $00 $03
    inc b                                         ; $453C: $04
    inc bc                                        ; $453D: $03
    rlca                                          ; $453E: $07
    nop                                           ; $453F: $00
    ld d, b                                       ; $4540: $50
    and b                                         ; $4541: $A0
    ld d, b                                       ; $4542: $50
    and b                                         ; $4543: $A0
    db $10                                        ; $4544: $10
    ldh [$E0], a                                  ; $4545: $E0 $E0
    nop                                           ; $4547: $00
    ret nz                                        ; $4548: $C0

    nop                                           ; $4549: $00
    add b                                         ; $454A: $80
    nop                                           ; $454B: $00
    add b                                         ; $454C: $80
    nop                                           ; $454D: $00
    add b                                         ; $454E: $80
    nop                                           ; $454F: $00
    rst $38                                       ; $4550: $FF
    ret                                           ; $4551: $C9


    ret                                           ; $4552: $C9


    ld b, $04                                     ; $4553: $06 $04
    inc bc                                        ; $4555: $03
    ld [bc], a                                    ; $4556: $02
    ld bc, $0003                                  ; $4557: $01 $03 $00
    add hl, bc                                    ; $455A: $09
    ld b, $09                                     ; $455B: $06 $09
    ld b, $07                                     ; $455D: $06 $07
    nop                                           ; $455F: $00
    cp b                                          ; $4560: $B8

jr_00B_4561:
    ld b, b                                       ; $4561: $40
    ld d, b                                       ; $4562: $50

jr_00B_4563:
    and b                                         ; $4563: $A0
    ld d, b                                       ; $4564: $50
    and b                                         ; $4565: $A0
    db $10                                        ; $4566: $10
    ldh [$E0], a                                  ; $4567: $E0 $E0
    nop                                           ; $4569: $00
    ret nz                                        ; $456A: $C0

    nop                                           ; $456B: $00
    and b                                         ; $456C: $A0
    ld b, b                                       ; $456D: $40
    ret nz                                        ; $456E: $C0

jr_00B_456F:
    nop                                           ; $456F: $00
    rlca                                          ; $4570: $07
    inc bc                                        ; $4571: $03
    inc bc                                        ; $4572: $03
    ld bc, $030F                                  ; $4573: $01 $0F $03
    ccf                                           ; $4576: $3F
    rrca                                          ; $4577: $0F
    ld a, a                                       ; $4578: $7F
    jr z, jr_00B_45FA                             ; $4579: $28 $7F

    ld [hl], $7F                                  ; $457B: $36 $7F
    ld e, $7F                                     ; $457D: $1E $7F
    nop                                           ; $457F: $00
    add b                                         ; $4580: $80
    nop                                           ; $4581: $00
    add b                                         ; $4582: $80
    nop                                           ; $4583: $00
    ldh a, [$80]                                  ; $4584: $F0 $80
    ld hl, sp-$50                                 ; $4586: $F8 $B0
    ld hl, sp+$70                                 ; $4588: $F8 $70
    ldh a, [$E0]                                  ; $458A: $F0 $E0
    ldh a, [$C0]                                  ; $458C: $F0 $C0
    ldh [rP1], a                                  ; $458E: $E0 $00
    ld a, b                                       ; $4590: $78
    jr nc, jr_00B_45CB                            ; $4591: $30 $38

    db $10                                        ; $4593: $10
    ld a, b                                       ; $4594: $78
    jr nc, jr_00B_4613                            ; $4595: $30 $7C

    jr nc, jr_00B_4617                            ; $4597: $30 $7E

    nop                                           ; $4599: $00
    ld a, a                                       ; $459A: $7F
    inc a                                         ; $459B: $3C

jr_00B_459C:
    rst $38                                       ; $459C: $FF
    ld a, $7F                                     ; $459D: $3E $7F
    nop                                           ; $459F: $00
    rlca                                          ; $45A0: $07
    inc bc                                        ; $45A1: $03
    inc bc                                        ; $45A2: $03
    ld bc, $0307                                  ; $45A3: $01 $07 $03

jr_00B_45A6:
    rrca                                          ; $45A6: $0F
    inc bc                                        ; $45A7: $03
    rra                                           ; $45A8: $1F
    nop                                           ; $45A9: $00
    ccf                                           ; $45AA: $3F
    rla                                           ; $45AB: $17
    ccf                                           ; $45AC: $3F
    rrca                                          ; $45AD: $0F
    rra                                           ; $45AE: $1F
    nop                                           ; $45AF: $00
    add b                                         ; $45B0: $80
    nop                                           ; $45B1: $00
    ret nz                                        ; $45B2: $C0

jr_00B_45B3:
    add b                                         ; $45B3: $80
    ld hl, sp-$40                                 ; $45B4: $F8 $C0
    db $FC                                        ; $45B6: $FC
    ret c                                         ; $45B7: $D8

    db $FC                                        ; $45B8: $FC
    jr c, jr_00B_45B3                             ; $45B9: $38 $F8

    ld [hl], b                                    ; $45BB: $70
    ld hl, sp+$60                                 ; $45BC: $F8 $60
    ldh [rP1], a                                  ; $45BE: $E0 $00
    rra                                           ; $45C0: $1F
    rrca                                          ; $45C1: $0F
    rra                                           ; $45C2: $1F
    dec c                                         ; $45C3: $0D
    dec e                                         ; $45C4: $1D
    ld a, [bc]                                    ; $45C5: $0A
    ld a, [hl+]                                   ; $45C6: $2A
    dec d                                         ; $45C7: $15
    ld a, [de]                                    ; $45C8: $1A
    dec b                                         ; $45C9: $05
    inc c                                         ; $45CA: $0C

jr_00B_45CB:
    inc bc                                        ; $45CB: $03
    dec bc                                        ; $45CC: $0B
    inc b                                         ; $45CD: $04
    dec bc                                        ; $45CE: $0B
    inc b                                         ; $45CF: $04
    ld hl, sp+$70                                 ; $45D0: $F8 $70
    ld hl, sp+$30                                 ; $45D2: $F8 $30
    jr c, jr_00B_45A6                             ; $45D4: $38 $D0

    ld d, h                                       ; $45D6: $54
    xor b                                         ; $45D7: $A8
    ld e, b                                       ; $45D8: $58
    and b                                         ; $45D9: $A0
    jr nc, jr_00B_459C                            ; $45DA: $30 $C0

    ret nc                                        ; $45DC: $D0

    jr nz, jr_00B_456F                            ; $45DD: $20 $90

    ld h, b                                       ; $45DF: $60
    rrca                                          ; $45E0: $0F
    nop                                           ; $45E1: $00
    rra                                           ; $45E2: $1F
    rrca                                          ; $45E3: $0F
    ccf                                           ; $45E4: $3F
    rra                                           ; $45E5: $1F
    ccf                                           ; $45E6: $3F
    rra                                           ; $45E7: $1F
    ccf                                           ; $45E8: $3F
    rra                                           ; $45E9: $1F
    ccf                                           ; $45EA: $3F
    inc e                                         ; $45EB: $1C
    rra                                           ; $45EC: $1F
    inc c                                         ; $45ED: $0C
    ld a, a                                       ; $45EE: $7F
    ld b, $C0                                     ; $45EF: $06 $C0
    nop                                           ; $45F1: $00
    ldh [$C0], a                                  ; $45F2: $E0 $C0
    ldh a, [$E0]                                  ; $45F4: $F0 $E0
    ldh a, [$E0]                                  ; $45F6: $F0 $E0
    ldh a, [$E0]                                  ; $45F8: $F0 $E0

jr_00B_45FA:
    ldh a, [$C0]                                  ; $45FA: $F0 $C0
    ldh a, [rP1]                                  ; $45FC: $F0 $00
    inc a                                         ; $45FE: $3C
    ret nz                                        ; $45FF: $C0

    rlca                                          ; $4600: $07
    nop                                           ; $4601: $00
    rrca                                          ; $4602: $0F
    rlca                                          ; $4603: $07
    rra                                           ; $4604: $1F
    rrca                                          ; $4605: $0F
    rra                                           ; $4606: $1F
    rrca                                          ; $4607: $0F
    rra                                           ; $4608: $1F
    rrca                                          ; $4609: $0F
    rra                                           ; $460A: $1F
    add hl, bc                                    ; $460B: $09
    rra                                           ; $460C: $1F
    ld [$0B7C], sp                                ; $460D: $08 $7C $0B
    rlca                                          ; $4610: $07
    nop                                           ; $4611: $00
    rrca                                          ; $4612: $0F

jr_00B_4613:
    rlca                                          ; $4613: $07
    rra                                           ; $4614: $1F
    rrca                                          ; $4615: $0F
    rra                                           ; $4616: $1F

jr_00B_4617:
    rrca                                          ; $4617: $0F
    rra                                           ; $4618: $1F
    rrca                                          ; $4619: $0F
    rra                                           ; $461A: $1F
    rrca                                          ; $461B: $0F
    rra                                           ; $461C: $1F
    inc bc                                        ; $461D: $03
    ld a, a                                       ; $461E: $7F
    inc e                                         ; $461F: $1C
    inc bc                                        ; $4620: $03
    nop                                           ; $4621: $00
    rlca                                          ; $4622: $07
    inc bc                                        ; $4623: $03
    rrca                                          ; $4624: $0F
    rlca                                          ; $4625: $07
    rrca                                          ; $4626: $0F
    rlca                                          ; $4627: $07
    rrca                                          ; $4628: $0F
    rlca                                          ; $4629: $07
    rrca                                          ; $462A: $0F
    rlca                                          ; $462B: $07
    rra                                           ; $462C: $1F
    inc bc                                        ; $462D: $03
    ccf                                           ; $462E: $3F
    inc e                                         ; $462F: $1C
    ldh a, [rP1]                                  ; $4630: $F0 $00
    ld hl, sp-$10                                 ; $4632: $F8 $F0
    db $FC                                        ; $4634: $FC
    ld hl, sp-$04                                 ; $4635: $F8 $FC
    ld hl, sp-$04                                 ; $4637: $F8 $FC
    ld hl, sp-$04                                 ; $4639: $F8 $FC
    ld hl, sp-$04                                 ; $463B: $F8 $FC
    sbc b                                         ; $463D: $98
    db $FC                                        ; $463E: $FC
    ld h, b                                       ; $463F: $60
    rst $38                                       ; $4640: $FF
    ld [hl], e                                    ; $4641: $73
    ld a, a                                       ; $4642: $7F
    jr c, jr_00B_46C4                             ; $4643: $38 $7F

    dec e                                         ; $4645: $1D
    ld e, a                                       ; $4646: $5F
    jr nz, jr_00B_46A8                            ; $4647: $20 $5F

    inc hl                                        ; $4649: $23
    ccf                                           ; $464A: $3F
    add hl, de                                    ; $464B: $19
    ccf                                           ; $464C: $3F

jr_00B_464D:
    inc e                                         ; $464D: $1C
    rra                                           ; $464E: $1F
    dec c                                         ; $464F: $0D
    cp $2C                                        ; $4650: $FE $2C
    db $FC                                        ; $4652: $FC
    jr jr_00B_464D                                ; $4653: $18 $F8

    or b                                          ; $4655: $B0
    ldh a, [rP1]                                  ; $4656: $F0 $00
    ret nc                                        ; $4658: $D0

    and b                                         ; $4659: $A0
    ld hl, sp-$60                                 ; $465A: $F8 $A0
    ld hl, sp+$10                                 ; $465C: $F8 $10
    ldh a, [$C0]                                  ; $465E: $F0 $C0
    cp $75                                        ; $4660: $FE $75
    ld a, a                                       ; $4662: $7F
    ld a, [hl-]                                   ; $4663: $3A
    ccf                                           ; $4664: $3F
    inc e                                         ; $4665: $1C
    ccf                                           ; $4666: $3F
    inc bc                                        ; $4667: $03
    cpl                                           ; $4668: $2F
    db $10                                        ; $4669: $10
    ccf                                           ; $466A: $3F
    inc de                                        ; $466B: $13
    ccf                                           ; $466C: $3F
    dec de                                        ; $466D: $1B
    ccf                                           ; $466E: $3F
    dec de                                        ; $466F: $1B
    cp $75                                        ; $4670: $FE $75
    ld a, a                                       ; $4672: $7F
    ld a, [hl-]                                   ; $4673: $3A
    ccf                                           ; $4674: $3F
    inc e                                         ; $4675: $1C
    ld a, a                                       ; $4676: $7F
    inc bc                                        ; $4677: $03
    rst $28                                       ; $4678: $EF
    ld [hl], b                                    ; $4679: $70
    rst $38                                       ; $467A: $FF
    ld h, e                                       ; $467B: $63
    ld h, a                                       ; $467C: $67
    inc bc                                        ; $467D: $03
    rlca                                          ; $467E: $07
    inc bc                                        ; $467F: $03
    rst $38                                       ; $4680: $FF
    ld a, a                                       ; $4681: $7F
    ld a, a                                       ; $4682: $7F
    inc a                                         ; $4683: $3C
    ccf                                           ; $4684: $3F
    jr jr_00B_46C6                                ; $4685: $18 $3F

    rlca                                          ; $4687: $07
    cpl                                           ; $4688: $2F
    rla                                           ; $4689: $17
    ccf                                           ; $468A: $3F
    rla                                           ; $468B: $17
    ccf                                           ; $468C: $3F
    rla                                           ; $468D: $17
    rra                                           ; $468E: $1F
    rlca                                          ; $468F: $07
    ccf                                           ; $4690: $3F
    rra                                           ; $4691: $1F
    rra                                           ; $4692: $1F
    rrca                                          ; $4693: $0F
    rra                                           ; $4694: $1F
    dec b                                         ; $4695: $05
    rla                                           ; $4696: $17
    ld [$0B1F], sp                                ; $4697: $08 $1F $0B
    rra                                           ; $469A: $1F
    rlca                                          ; $469B: $07
    rrca                                          ; $469C: $0F
    rlca                                          ; $469D: $07
    rrca                                          ; $469E: $0F
    rlca                                          ; $469F: $07
    db $FC                                        ; $46A0: $FC
    ldh a, [$FC]                                  ; $46A1: $F0 $FC
    sbc b                                         ; $46A3: $98
    db $FC                                        ; $46A4: $FC
    ld [$40B8], sp                                ; $46A5: $08 $B8 $40

jr_00B_46A8:
    or b                                          ; $46A8: $B0
    ld b, b                                       ; $46A9: $40
    ld hl, sp-$50                                 ; $46AA: $F8 $B0
    db $FC                                        ; $46AC: $FC
    cp b                                          ; $46AD: $B8
    db $FC                                        ; $46AE: $FC
    sbc b                                         ; $46AF: $98
    rrca                                          ; $46B0: $0F
    nop                                           ; $46B1: $00
    ld c, $07                                     ; $46B2: $0E $07
    ld e, $0F                                     ; $46B4: $1E $0F
    rra                                           ; $46B6: $1F
    rrca                                          ; $46B7: $0F
    ccf                                           ; $46B8: $3F
    db $10                                        ; $46B9: $10
    add hl, sp                                    ; $46BA: $39
    ld b, $21                                     ; $46BB: $06 $21
    ld e, $1F                                     ; $46BD: $1E $1F
    nop                                           ; $46BF: $00
    ldh [rP1], a                                  ; $46C0: $E0 $00
    ld h, b                                       ; $46C2: $60
    ret nz                                        ; $46C3: $C0

jr_00B_46C4:
    ldh a, [$E0]                                  ; $46C4: $F0 $E0

jr_00B_46C6:
    ldh a, [$C0]                                  ; $46C6: $F0 $C0
    ret z                                         ; $46C8: $C8

    jr nc, @+$0A                                  ; $46C9: $30 $08

    ldh a, [$F0]                                  ; $46CB: $F0 $F0
    nop                                           ; $46CD: $00
    nop                                           ; $46CE: $00
    nop                                           ; $46CF: $00
    rra                                           ; $46D0: $1F
    nop                                           ; $46D1: $00
    ld c, $07                                     ; $46D2: $0E $07
    ld e, $0F                                     ; $46D4: $1E $0F
    rra                                           ; $46D6: $1F
    inc bc                                        ; $46D7: $03
    inc de                                        ; $46D8: $13
    inc c                                         ; $46D9: $0C
    ld hl, $231E                                  ; $46DA: $21 $1E $23
    inc e                                         ; $46DD: $1C
    ld e, $00                                     ; $46DE: $1E $00
    rrca                                          ; $46E0: $0F
    nop                                           ; $46E1: $00
    rrca                                          ; $46E2: $0F
    rlca                                          ; $46E3: $07
    rra                                           ; $46E4: $1F
    rrca                                          ; $46E5: $0F
    rra                                           ; $46E6: $1F
    rrca                                          ; $46E7: $0F
    rra                                           ; $46E8: $1F
    rlca                                          ; $46E9: $07
    cpl                                           ; $46EA: $2F
    db $10                                        ; $46EB: $10
    ld sp, $1F0E                                  ; $46EC: $31 $0E $1F
    nop                                           ; $46EF: $00
    rlca                                          ; $46F0: $07
    nop                                           ; $46F1: $00
    rlca                                          ; $46F2: $07
    inc bc                                        ; $46F3: $03
    rrca                                          ; $46F4: $0F
    rlca                                          ; $46F5: $07
    rrca                                          ; $46F6: $0F
    rlca                                          ; $46F7: $07
    rrca                                          ; $46F8: $0F
    ld bc, $0609                                  ; $46F9: $01 $09 $06
    rrca                                          ; $46FC: $0F
    nop                                           ; $46FD: $00
    nop                                           ; $46FE: $00
    nop                                           ; $46FF: $00

jr_00B_4700:
    db $FC                                        ; $4700: $FC
    ld h, b                                       ; $4701: $60
    ldh a, [$E0]                                  ; $4702: $F0 $E0
    ld hl, sp-$10                                 ; $4704: $F8 $F0
    ld hl, sp-$10                                 ; $4706: $F8 $F0
    ld hl, sp-$20                                 ; $4708: $F8 $E0
    db $F4                                        ; $470A: $F4
    ld [$708C], sp                                ; $470B: $08 $8C $70
    ld hl, sp+$00                                 ; $470E: $F8 $00
    rrca                                          ; $4710: $0F
    nop                                           ; $4711: $00
    ld c, $07                                     ; $4712: $0E $07
    ld e, $0F                                     ; $4714: $1E $0F
    rra                                           ; $4716: $1F
    inc bc                                        ; $4717: $03
    inc de                                        ; $4718: $13
    inc c                                         ; $4719: $0C
    ld hl, $231E                                  ; $471A: $21 $1E $23
    inc e                                         ; $471D: $1C
    ld e, $00                                     ; $471E: $1E $00
    rlca                                          ; $4720: $07
    nop                                           ; $4721: $00
    rrca                                          ; $4722: $0F
    rlca                                          ; $4723: $07
    rra                                           ; $4724: $1F
    rrca                                          ; $4725: $0F
    rra                                           ; $4726: $1F
    ld c, $1E                                     ; $4727: $0E $1E
    dec c                                         ; $4729: $0D
    ld e, $05                                     ; $472A: $1E $05
    dec d                                         ; $472C: $15
    ld a, [bc]                                    ; $472D: $0A
    add hl, bc                                    ; $472E: $09
    ld b, $E0                                     ; $472F: $06 $E0
    nop                                           ; $4731: $00
    ldh a, [$E0]                                  ; $4732: $F0 $E0
    ld hl, sp-$10                                 ; $4734: $F8 $F0
    ld hl, sp+$50                                 ; $4736: $F8 $50
    ld e, b                                       ; $4738: $58
    and b                                         ; $4739: $A0
    db $10                                        ; $473A: $10
    ldh [$30], a                                  ; $473B: $E0 $30
    ret nz                                        ; $473D: $C0

jr_00B_473E:
    jr nc, jr_00B_4700                            ; $473E: $30 $C0

    rlca                                          ; $4740: $07
    nop                                           ; $4741: $00
    rrca                                          ; $4742: $0F
    rlca                                          ; $4743: $07

jr_00B_4744:
    rra                                           ; $4744: $1F
    rrca                                          ; $4745: $0F
    rra                                           ; $4746: $1F
    rrca                                          ; $4747: $0F
    rra                                           ; $4748: $1F
    inc c                                         ; $4749: $0C
    inc e                                         ; $474A: $1C
    dec bc                                        ; $474B: $0B
    jr @+$09                                      ; $474C: $18 $07

    ld a, [hl+]                                   ; $474E: $2A
    dec d                                         ; $474F: $15
    ldh [rP1], a                                  ; $4750: $E0 $00
    ldh a, [$E0]                                  ; $4752: $F0 $E0
    ld hl, sp-$10                                 ; $4754: $F8 $F0
    ld hl, sp-$10                                 ; $4756: $F8 $F0
    ld hl, sp-$50                                 ; $4758: $F8 $B0
    cp b                                          ; $475A: $B8
    ld d, b                                       ; $475B: $50
    jr jr_00B_473E                                ; $475C: $18 $E0

    ld d, h                                       ; $475E: $54
    xor b                                         ; $475F: $A8
    inc c                                         ; $4760: $0C
    inc bc                                        ; $4761: $03
    rra                                           ; $4762: $1F
    inc c                                         ; $4763: $0C
    ccf                                           ; $4764: $3F
    rra                                           ; $4765: $1F
    ld a, a                                       ; $4766: $7F
    dec sp                                        ; $4767: $3B
    ld a, a                                       ; $4768: $7F
    scf                                           ; $4769: $37
    ccf                                           ; $476A: $3F
    inc de                                        ; $476B: $13
    inc de                                        ; $476C: $13
    dec c                                         ; $476D: $0D
    inc de                                        ; $476E: $13
    dec c                                         ; $476F: $0D
    db $10                                        ; $4770: $10
    ldh [$E0], a                                  ; $4771: $E0 $E0
    nop                                           ; $4773: $00
    ldh a, [$E0]                                  ; $4774: $F0 $E0
    ldh a, [$E0]                                  ; $4776: $F0 $E0
    ldh a, [$C0]                                  ; $4778: $F0 $C0
    ld hl, sp-$40                                 ; $477A: $F8 $C0
    ld hl, sp-$40                                 ; $477C: $F8 $C0
    ldh a, [$C0]                                  ; $477E: $F0 $C0
    ld e, b                                       ; $4780: $58
    and b                                         ; $4781: $A0
    jr nz, jr_00B_4744                            ; $4782: $20 $C0

    ldh a, [rNR41]                                ; $4784: $F0 $20
    ld hl, sp-$10                                 ; $4786: $F8 $F0
    ld hl, sp-$10                                 ; $4788: $F8 $F0
    ld hl, sp-$30                                 ; $478A: $F8 $D0
    ret c                                         ; $478C: $D8

    and b                                         ; $478D: $A0
    ret z                                         ; $478E: $C8

    or b                                          ; $478F: $B0
    rrca                                          ; $4790: $0F
    nop                                           ; $4791: $00
    rrca                                          ; $4792: $0F
    rlca                                          ; $4793: $07
    rra                                           ; $4794: $1F
    rrca                                          ; $4795: $0F
    rra                                           ; $4796: $1F
    ld c, $3F                                     ; $4797: $0E $3F
    db $10                                        ; $4799: $10
    add hl, sp                                    ; $479A: $39
    ld b, $21                                     ; $479B: $06 $21
    ld e, $1F                                     ; $479D: $1E $1F
    nop                                           ; $479F: $00
    ldh [rP1], a                                  ; $47A0: $E0 $00
    ldh [$C0], a                                  ; $47A2: $E0 $C0
    ldh [rLCDC], a                                ; $47A4: $E0 $40
    ldh a, [$C0]                                  ; $47A6: $F0 $C0
    ret z                                         ; $47A8: $C8

    jr nc, @+$0A                                  ; $47A9: $30 $08

    ldh a, [$F0]                                  ; $47AB: $F0 $F0
    nop                                           ; $47AD: $00
    nop                                           ; $47AE: $00
    nop                                           ; $47AF: $00
    ld hl, sp+$00                                 ; $47B0: $F8 $00
    ldh a, [$E0]                                  ; $47B2: $F0 $E0
    ld hl, sp+$70                                 ; $47B4: $F8 $70
    ld hl, sp+$40                                 ; $47B6: $F8 $40
    ret z                                         ; $47B8: $C8

    jr nc, @-$7A                                  ; $47B9: $30 $84

    ld a, b                                       ; $47BB: $78
    call nz, $F838                                ; $47BC: $C4 $38 $F8
    nop                                           ; $47BF: $00
    ldh [rP1], a                                  ; $47C0: $E0 $00
    ldh a, [$E0]                                  ; $47C2: $F0 $E0
    ld hl, sp-$10                                 ; $47C4: $F8 $F0
    ld hl, sp-$10                                 ; $47C6: $F8 $F0
    ld hl, sp-$10                                 ; $47C8: $F8 $F0
    db $FC                                        ; $47CA: $FC
    ldh a, [$FA]                                  ; $47CB: $F0 $FA
    db $F4                                        ; $47CD: $F4
    db $FC                                        ; $47CE: $FC
    ldh [$03], a                                  ; $47CF: $E0 $03
    nop                                           ; $47D1: $00

jr_00B_47D2:
    rlca                                          ; $47D2: $07
    inc bc                                        ; $47D3: $03
    rrca                                          ; $47D4: $0F
    rlca                                          ; $47D5: $07
    rra                                           ; $47D6: $1F
    rrca                                          ; $47D7: $0F
    rra                                           ; $47D8: $1F
    rrca                                          ; $47D9: $0F
    rra                                           ; $47DA: $1F
    rrca                                          ; $47DB: $0F
    rra                                           ; $47DC: $1F
    rrca                                          ; $47DD: $0F
    rrca                                          ; $47DE: $0F
    rlca                                          ; $47DF: $07
    ldh a, [rP1]                                  ; $47E0: $F0 $00
    ld hl, sp-$10                                 ; $47E2: $F8 $F0
    db $FC                                        ; $47E4: $FC
    ld hl, sp-$04                                 ; $47E5: $F8 $FC
    ld hl, sp-$08                                 ; $47E7: $F8 $F8
    ldh a, [$F8]                                  ; $47E9: $F0 $F8
    ret nc                                        ; $47EB: $D0

    ret nc                                        ; $47EC: $D0

    and b                                         ; $47ED: $A0
    sub b                                         ; $47EE: $90
    ld h, b                                       ; $47EF: $60
    ldh a, [$C0]                                  ; $47F0: $F0 $C0
    ldh a, [rP1]                                  ; $47F2: $F0 $00
    ld hl, sp-$10                                 ; $47F4: $F8 $F0
    db $FC                                        ; $47F6: $FC
    ld hl, sp-$04                                 ; $47F7: $F8 $FC
    ld hl, sp-$04                                 ; $47F9: $F8 $FC
    ldh [$F4], a                                  ; $47FB: $E0 $F4
    add sp, -$08                                  ; $47FD: $E8 $F8
    ldh [rTAC], a                                 ; $47FF: $E0 $07
    nop                                           ; $4801: $00
    rlca                                          ; $4802: $07
    nop                                           ; $4803: $00
    rrca                                          ; $4804: $0F
    rlca                                          ; $4805: $07
    rra                                           ; $4806: $1F
    rrca                                          ; $4807: $0F
    rra                                           ; $4808: $1F
    rrca                                          ; $4809: $0F
    rra                                           ; $480A: $1F
    rlca                                          ; $480B: $07
    rrca                                          ; $480C: $0F
    rlca                                          ; $480D: $07
    rrca                                          ; $480E: $0F
    rlca                                          ; $480F: $07
    jr nz, jr_00B_47D2                            ; $4810: $20 $C0

    ret nz                                        ; $4812: $C0

    nop                                           ; $4813: $00
    ldh [$C0], a                                  ; $4814: $E0 $C0
    ldh a, [$E0]                                  ; $4816: $F0 $E0
    ldh a, [$E0]                                  ; $4818: $F0 $E0
    ld hl, sp+$70                                 ; $481A: $F8 $70
    db $F4                                        ; $481C: $F4
    xor b                                         ; $481D: $A8
    db $E4                                        ; $481E: $E4
    ret c                                         ; $481F: $D8

    ldh a, [rP1]                                  ; $4820: $F0 $00
    ldh a, [$60]                                  ; $4822: $F0 $60
    ld hl, sp+$60                                 ; $4824: $F8 $60
    ld hl, sp+$70                                 ; $4826: $F8 $70
    ld hl, sp+$70                                 ; $4828: $F8 $70
    db $F4                                        ; $482A: $F4
    ld [$708C], sp                                ; $482B: $08 $8C $70
    ld hl, sp+$00                                 ; $482E: $F8 $00
    rlca                                          ; $4830: $07
    nop                                           ; $4831: $00
    rlca                                          ; $4832: $07

jr_00B_4833:
    inc bc                                        ; $4833: $03
    rrca                                          ; $4834: $0F
    ld b, $0F                                     ; $4835: $06 $0F
    rlca                                          ; $4837: $07
    rrca                                          ; $4838: $0F
    ld bc, $0609                                  ; $4839: $01 $09 $06
    rrca                                          ; $483C: $0F
    nop                                           ; $483D: $00
    nop                                           ; $483E: $00
    nop                                           ; $483F: $00
    db $FC                                        ; $4840: $FC
    jr nz, jr_00B_4833                            ; $4841: $20 $F0

    ldh [$F8], a                                  ; $4843: $E0 $F8
    ldh a, [$F8]                                  ; $4845: $F0 $F8
    ld [hl], b                                    ; $4847: $70
    ld hl, sp+$60                                 ; $4848: $F8 $60
    db $F4                                        ; $484A: $F4
    ld [$708C], sp                                ; $484B: $08 $8C $70
    ld hl, sp+$00                                 ; $484E: $F8 $00

jr_00B_4850:
    nop                                           ; $4850: $00
    nop                                           ; $4851: $00
    rlca                                          ; $4852: $07
    nop                                           ; $4853: $00
    rrca                                          ; $4854: $0F
    rlca                                          ; $4855: $07
    rra                                           ; $4856: $1F
    rrca                                          ; $4857: $0F
    rra                                           ; $4858: $1F
    rrca                                          ; $4859: $0F
    rra                                           ; $485A: $1F
    inc c                                         ; $485B: $0C
    inc e                                         ; $485C: $1C
    dec bc                                        ; $485D: $0B
    jr @+$09                                      ; $485E: $18 $07

    nop                                           ; $4860: $00
    nop                                           ; $4861: $00
    ldh [rP1], a                                  ; $4862: $E0 $00
    ldh a, [$E0]                                  ; $4864: $F0 $E0
    ld hl, sp-$10                                 ; $4866: $F8 $F0
    ld hl, sp-$10                                 ; $4868: $F8 $F0
    ld hl, sp-$50                                 ; $486A: $F8 $B0
    cp b                                          ; $486C: $B8
    ld d, b                                       ; $486D: $50
    jr jr_00B_4850                                ; $486E: $18 $E0

    ld a, [hl+]                                   ; $4870: $2A
    dec d                                         ; $4871: $15
    ld a, [de]                                    ; $4872: $1A
    dec b                                         ; $4873: $05
    inc b                                         ; $4874: $04
    inc bc                                        ; $4875: $03
    rrca                                          ; $4876: $0F
    inc b                                         ; $4877: $04
    rra                                           ; $4878: $1F
    rrca                                          ; $4879: $0F
    rra                                           ; $487A: $1F
    add hl, bc                                    ; $487B: $09
    add hl, de                                    ; $487C: $19
    ld b, $09                                     ; $487D: $06 $09
    ld b, $54                                     ; $487F: $06 $54
    xor b                                         ; $4881: $A8
    ld e, b                                       ; $4882: $58
    and b                                         ; $4883: $A0
    jr nz, @-$3E                                  ; $4884: $20 $C0

    ldh a, [rNR41]                                ; $4886: $F0 $20
    ld hl, sp-$10                                 ; $4888: $F8 $F0
    ld hl, sp-$10                                 ; $488A: $F8 $F0
    ld hl, sp-$30                                 ; $488C: $F8 $D0
    ld hl, sp-$40                                 ; $488E: $F8 $C0
    rrca                                          ; $4890: $0F
    nop                                           ; $4891: $00
    rlca                                          ; $4892: $07
    inc bc                                        ; $4893: $03
    rrca                                          ; $4894: $0F
    rlca                                          ; $4895: $07
    rrca                                          ; $4896: $0F
    dec b                                         ; $4897: $05
    rrca                                          ; $4898: $0F
    ld b, $07                                     ; $4899: $06 $07
    nop                                           ; $489B: $00
    dec b                                         ; $489C: $05
    ld [bc], a                                    ; $489D: $02
    inc bc                                        ; $489E: $03
    nop                                           ; $489F: $00
    ld hl, sp+$00                                 ; $48A0: $F8 $00
    ldh a, [$E0]                                  ; $48A2: $F0 $E0
    ldh [$C0], a                                  ; $48A4: $E0 $C0
    ldh a, [$80]                                  ; $48A6: $F0 $80
    sub b                                         ; $48A8: $90
    ld h, b                                       ; $48A9: $60
    db $10                                        ; $48AA: $10
    ldh [rNR41], a                                ; $48AB: $E0 $20
    ret nz                                        ; $48AD: $C0

    ldh [rP1], a                                  ; $48AE: $E0 $00
    nop                                           ; $48B0: $00
    nop                                           ; $48B1: $00
    ldh [rP1], a                                  ; $48B2: $E0 $00
    ldh a, [$E0]                                  ; $48B4: $F0 $E0
    ld hl, sp-$10                                 ; $48B6: $F8 $F0
    ld hl, sp-$10                                 ; $48B8: $F8 $F0
    ld hl, sp-$10                                 ; $48BA: $F8 $F0
    db $FC                                        ; $48BC: $FC
    ldh a, [$FA]                                  ; $48BD: $F0 $FA
    db $F4                                        ; $48BF: $F4
    rra                                           ; $48C0: $1F
    inc bc                                        ; $48C1: $03
    rlca                                          ; $48C2: $07
    ld bc, $0007                                  ; $48C3: $01 $07 $00
    rrca                                          ; $48C6: $0F
    rlca                                          ; $48C7: $07
    rra                                           ; $48C8: $1F
    rrca                                          ; $48C9: $0F
    rra                                           ; $48CA: $1F
    dec bc                                        ; $48CB: $0B
    rra                                           ; $48CC: $1F
    inc bc                                        ; $48CD: $03
    rla                                           ; $48CE: $17
    dec bc                                        ; $48CF: $0B
    db $FC                                        ; $48D0: $FC
    ldh [$F0], a                                  ; $48D1: $E0 $F0
    ret nz                                        ; $48D3: $C0

    ldh a, [rP1]                                  ; $48D4: $F0 $00
    ld hl, sp-$10                                 ; $48D6: $F8 $F0
    db $FC                                        ; $48D8: $FC
    ld hl, sp-$04                                 ; $48D9: $F8 $FC
    add sp, -$04                                  ; $48DB: $E8 $FC
    ldh [$F8], a                                  ; $48DD: $E0 $F8
    ldh [rIF], a                                  ; $48DF: $E0 $0F
    nop                                           ; $48E1: $00
    rlca                                          ; $48E2: $07
    inc bc                                        ; $48E3: $03
    rrca                                          ; $48E4: $0F
    ld b, $0F                                     ; $48E5: $06 $0F
    rlca                                          ; $48E7: $07
    rrca                                          ; $48E8: $0F
    rlca                                          ; $48E9: $07
    rlca                                          ; $48EA: $07
    nop                                           ; $48EB: $00
    inc b                                         ; $48EC: $04
    inc bc                                        ; $48ED: $03
    rlca                                          ; $48EE: $07
    nop                                           ; $48EF: $00
    ldh a, [rP1]                                  ; $48F0: $F0 $00
    ld hl, sp-$10                                 ; $48F2: $F8 $F0
    ld hl, sp-$10                                 ; $48F4: $F8 $F0
    ld hl, sp+$30                                 ; $48F6: $F8 $30
    ldh a, [rP1]                                  ; $48F8: $F0 $00
    sub b                                         ; $48FA: $90
    ld h, b                                       ; $48FB: $60
    sub b                                         ; $48FC: $90
    ld h, b                                       ; $48FD: $60
    ldh a, [rP1]                                  ; $48FE: $F0 $00
    inc bc                                        ; $4900: $03
    nop                                           ; $4901: $00
    rlca                                          ; $4902: $07
    inc bc                                        ; $4903: $03
    rrca                                          ; $4904: $0F
    rlca                                          ; $4905: $07
    rra                                           ; $4906: $1F
    rrca                                          ; $4907: $0F
    rra                                           ; $4908: $1F
    rrca                                          ; $4909: $0F
    rrca                                          ; $490A: $0F
    rlca                                          ; $490B: $07
    rrca                                          ; $490C: $0F
    dec b                                         ; $490D: $05
    dec b                                         ; $490E: $05
    ld [bc], a                                    ; $490F: $02
    ret nc                                        ; $4910: $D0

    nop                                           ; $4911: $00
    ld hl, sp-$30                                 ; $4912: $F8 $D0
    db $FC                                        ; $4914: $FC
    ld hl, sp-$08                                 ; $4915: $F8 $F8
    ldh a, [$F0]                                  ; $4917: $F0 $F0
    add b                                         ; $4919: $80
    sub b                                         ; $491A: $90
    ld h, b                                       ; $491B: $60
    ld d, b                                       ; $491C: $50
    and b                                         ; $491D: $A0
    ld d, b                                       ; $491E: $50
    and b                                         ; $491F: $A0
    dec b                                         ; $4920: $05
    ld [bc], a                                    ; $4921: $02
    ld [bc], a                                    ; $4922: $02
    ld bc, $0007                                  ; $4923: $01 $07 $00
    rlca                                          ; $4926: $07
    inc bc                                        ; $4927: $03
    rrca                                          ; $4928: $0F
    rlca                                          ; $4929: $07
    rra                                           ; $492A: $1F
    ld b, $2F                                     ; $492B: $06 $2F
    rla                                           ; $492D: $17
    cpl                                           ; $492E: $2F
    rla                                           ; $492F: $17
    ld d, b                                       ; $4930: $50
    and b                                         ; $4931: $A0
    db $10                                        ; $4932: $10
    ldh [$E0], a                                  ; $4933: $E0 $E0
    nop                                           ; $4935: $00
    ret nz                                        ; $4936: $C0

    add b                                         ; $4937: $80
    ret nz                                        ; $4938: $C0

    add b                                         ; $4939: $80
    ldh [$80], a                                  ; $493A: $E0 $80
    sub b                                         ; $493C: $90
    ld h, b                                       ; $493D: $60
    sub b                                         ; $493E: $90
    ld h, b                                       ; $493F: $60
    ld hl, $7E1E                                  ; $4940: $21 $1E $7E

jr_00B_4943:
    nop                                           ; $4943: $00
    db $FC                                        ; $4944: $FC
    jr c, jr_00B_4943                             ; $4945: $38 $FC

    ld l, b                                       ; $4947: $68
    cp $2C                                        ; $4948: $FE $2C
    cp $24                                        ; $494A: $FE $24
    and $58                                       ; $494C: $E6 $58
    ld h, [hl]                                    ; $494E: $66
    ld e, b                                       ; $494F: $58
    dec b                                         ; $4950: $05
    ld [bc], a                                    ; $4951: $02
    ld [bc], a                                    ; $4952: $02
    ld bc, $0007                                  ; $4953: $01 $07 $00
    rrca                                          ; $4956: $0F
    inc bc                                        ; $4957: $03
    rrca                                          ; $4958: $0F
    rlca                                          ; $4959: $07
    rra                                           ; $495A: $1F
    dec b                                         ; $495B: $05
    daa                                           ; $495C: $27
    dec de                                        ; $495D: $1B
    daa                                           ; $495E: $27
    dec de                                        ; $495F: $1B
    ld d, b                                       ; $4960: $50
    and b                                         ; $4961: $A0
    db $10                                        ; $4962: $10
    ldh [$E0], a                                  ; $4963: $E0 $E0
    nop                                           ; $4965: $00
    ret nz                                        ; $4966: $C0

    add b                                         ; $4967: $80
    ret nz                                        ; $4968: $C0

    add b                                         ; $4969: $80
    ldh [$80], a                                  ; $496A: $E0 $80
    ret nc                                        ; $496C: $D0

    and b                                         ; $496D: $A0
    ret nc                                        ; $496E: $D0

    and b                                         ; $496F: $A0
    rra                                           ; $4970: $1F
    nop                                           ; $4971: $00
    rrca                                          ; $4972: $0F
    rlca                                          ; $4973: $07
    rra                                           ; $4974: $1F
    rrca                                          ; $4975: $0F
    ccf                                           ; $4976: $3F
    rra                                           ; $4977: $1F
    ld e, a                                       ; $4978: $5F
    inc l                                         ; $4979: $2C
    ld c, l                                       ; $497A: $4D
    ld [hl-], a                                   ; $497B: $32
    ld h, c                                       ; $497C: $61
    ld e, $7F                                     ; $497D: $1E $7F
    nop                                           ; $497F: $00
    ldh [rP1], a                                  ; $4980: $E0 $00
    ldh [$80], a                                  ; $4982: $E0 $80
    ld hl, sp-$80                                 ; $4984: $F8 $80
    db $E4                                        ; $4986: $E4
    jr @-$3A                                      ; $4987: $18 $C4

    cp b                                          ; $4989: $B8
    ret z                                         ; $498A: $C8

    or b                                          ; $498B: $B0
    cp b                                          ; $498C: $B8
    ld b, b                                       ; $498D: $40
    ldh [rP1], a                                  ; $498E: $E0 $00
    rlca                                          ; $4990: $07
    nop                                           ; $4991: $00
    rrca                                          ; $4992: $0F
    rlca                                          ; $4993: $07
    rra                                           ; $4994: $1F
    rrca                                          ; $4995: $0F
    rra                                           ; $4996: $1F
    rrca                                          ; $4997: $0F
    ccf                                           ; $4998: $3F
    db $10                                        ; $4999: $10
    jr c, @+$09                                   ; $499A: $38 $07

    jr nc, jr_00B_49AD                            ; $499C: $30 $0F

    rra                                           ; $499E: $1F
    nop                                           ; $499F: $00
    ldh [rP1], a                                  ; $49A0: $E0 $00
    ldh [$C0], a                                  ; $49A2: $E0 $C0
    ldh [$C0], a                                  ; $49A4: $E0 $C0
    ldh [$80], a                                  ; $49A6: $E0 $80
    ret nc                                        ; $49A8: $D0

    jr nz, jr_00B_49FB                            ; $49A9: $20 $50

    and b                                         ; $49AB: $A0
    ld [hl], b                                    ; $49AC: $70

jr_00B_49AD:
    add b                                         ; $49AD: $80

jr_00B_49AE:
    ret nz                                        ; $49AE: $C0

    nop                                           ; $49AF: $00

jr_00B_49B0:
    rra                                           ; $49B0: $1F
    nop                                           ; $49B1: $00
    rrca                                          ; $49B2: $0F
    rlca                                          ; $49B3: $07
    rra                                           ; $49B4: $1F
    rrca                                          ; $49B5: $0F
    ccf                                           ; $49B6: $3F
    dec bc                                        ; $49B7: $0B
    ld e, a                                       ; $49B8: $5F
    ld hl, $3C43                                  ; $49B9: $21 $43 $3C
    ld h, c                                       ; $49BC: $61
    ld e, $7F                                     ; $49BD: $1E $7F
    nop                                           ; $49BF: $00
    ldh [rP1], a                                  ; $49C0: $E0 $00
    ret nz                                        ; $49C2: $C0

    add b                                         ; $49C3: $80
    ld hl, sp-$40                                 ; $49C4: $F8 $C0
    db $E4                                        ; $49C6: $E4
    ret c                                         ; $49C7: $D8

    call nz, $C8B8                                ; $49C8: $C4 $B8 $C8
    or b                                          ; $49CB: $B0
    cp b                                          ; $49CC: $B8
    ld b, b                                       ; $49CD: $40

jr_00B_49CE:
    ldh [rP1], a                                  ; $49CE: $E0 $00
    rlca                                          ; $49D0: $07
    nop                                           ; $49D1: $00
    rrca                                          ; $49D2: $0F
    nop                                           ; $49D3: $00
    rra                                           ; $49D4: $1F
    nop                                           ; $49D5: $00
    rra                                           ; $49D6: $1F
    nop                                           ; $49D7: $00
    rra                                           ; $49D8: $1F
    nop                                           ; $49D9: $00
    ld c, $01                                     ; $49DA: $0E $01
    dec d                                         ; $49DC: $15
    ld a, [bc]                                    ; $49DD: $0A
    add hl, bc                                    ; $49DE: $09
    ld b, $C0                                     ; $49DF: $06 $C0
    nop                                           ; $49E1: $00
    ldh [rP1], a                                  ; $49E2: $E0 $00
    ldh a, [rP1]                                  ; $49E4: $F0 $00
    ld hl, sp+$00                                 ; $49E6: $F8 $00
    ld hl, sp+$00                                 ; $49E8: $F8 $00
    sbc b                                         ; $49EA: $98
    ld h, b                                       ; $49EB: $60
    jr nc, jr_00B_49AE                            ; $49EC: $30 $C0

    jr nc, jr_00B_49B0                            ; $49EE: $30 $C0

    nop                                           ; $49F0: $00
    nop                                           ; $49F1: $00
    inc bc                                        ; $49F2: $03
    nop                                           ; $49F3: $00

jr_00B_49F4:
    rlca                                          ; $49F4: $07
    nop                                           ; $49F5: $00
    rrca                                          ; $49F6: $0F
    nop                                           ; $49F7: $00
    rrca                                          ; $49F8: $0F
    nop                                           ; $49F9: $00
    rrca                                          ; $49FA: $0F

jr_00B_49FB:
    nop                                           ; $49FB: $00
    dec e                                         ; $49FC: $1D
    ld [bc], a                                    ; $49FD: $02
    ld a, [hl+]                                   ; $49FE: $2A
    dec d                                         ; $49FF: $15
    nop                                           ; $4A00: $00
    nop                                           ; $4A01: $00
    ldh [rP1], a                                  ; $4A02: $E0 $00
    ldh a, [rP1]                                  ; $4A04: $F0 $00
    ld hl, sp+$00                                 ; $4A06: $F8 $00
    ld hl, sp+$00                                 ; $4A08: $F8 $00
    ld hl, sp+$00                                 ; $4A0A: $F8 $00
    jr c, jr_00B_49CE                             ; $4A0C: $38 $C0

    ld d, h                                       ; $4A0E: $54
    xor b                                         ; $4A0F: $A8
    inc c                                         ; $4A10: $0C
    inc bc                                        ; $4A11: $03
    rra                                           ; $4A12: $1F
    inc c                                         ; $4A13: $0C
    ccf                                           ; $4A14: $3F
    rra                                           ; $4A15: $1F
    ld a, a                                       ; $4A16: $7F
    dec sp                                        ; $4A17: $3B
    ccf                                           ; $4A18: $3F
    rlca                                          ; $4A19: $07
    cpl                                           ; $4A1A: $2F
    inc de                                        ; $4A1B: $13
    inc de                                        ; $4A1C: $13
    dec c                                         ; $4A1D: $0D
    inc de                                        ; $4A1E: $13
    dec c                                         ; $4A1F: $0D
    db $10                                        ; $4A20: $10
    ldh [$E0], a                                  ; $4A21: $E0 $E0
    nop                                           ; $4A23: $00
    ldh a, [$E0]                                  ; $4A24: $F0 $E0
    ldh a, [$E0]                                  ; $4A26: $F0 $E0
    ldh a, [$C0]                                  ; $4A28: $F0 $C0
    ld hl, sp-$40                                 ; $4A2A: $F8 $C0
    ld hl, sp-$40                                 ; $4A2C: $F8 $C0
    ldh a, [$C0]                                  ; $4A2E: $F0 $C0
    ld e, b                                       ; $4A30: $58
    and b                                         ; $4A31: $A0
    jr nz, jr_00B_49F4                            ; $4A32: $20 $C0

    ldh a, [rNR41]                                ; $4A34: $F0 $20
    ld hl, sp-$10                                 ; $4A36: $F8 $F0
    ld hl, sp-$20                                 ; $4A38: $F8 $E0
    add sp, -$30                                  ; $4A3A: $E8 $D0
    ret z                                         ; $4A3C: $C8

    or b                                          ; $4A3D: $B0
    ret z                                         ; $4A3E: $C8

    or b                                          ; $4A3F: $B0
    rrca                                          ; $4A40: $0F
    nop                                           ; $4A41: $00
    rrca                                          ; $4A42: $0F
    rlca                                          ; $4A43: $07
    rra                                           ; $4A44: $1F
    rrca                                          ; $4A45: $0F
    rra                                           ; $4A46: $1F
    ld c, $3F                                     ; $4A47: $0E $3F
    db $10                                        ; $4A49: $10
    add hl, sp                                    ; $4A4A: $39
    ld b, $21                                     ; $4A4B: $06 $21
    ld e, $1F                                     ; $4A4D: $1E $1F
    nop                                           ; $4A4F: $00
    ldh [rP1], a                                  ; $4A50: $E0 $00
    ldh [$C0], a                                  ; $4A52: $E0 $C0
    ldh [rLCDC], a                                ; $4A54: $E0 $40
    ldh a, [$C0]                                  ; $4A56: $F0 $C0
    ret z                                         ; $4A58: $C8

    jr nc, @+$0A                                  ; $4A59: $30 $08

    ldh a, [$F0]                                  ; $4A5B: $F0 $F0
    nop                                           ; $4A5D: $00
    nop                                           ; $4A5E: $00
    nop                                           ; $4A5F: $00
    ld hl, sp+$00                                 ; $4A60: $F8 $00
    ldh a, [$E0]                                  ; $4A62: $F0 $E0
    ld hl, sp+$70                                 ; $4A64: $F8 $70
    ld hl, sp+$40                                 ; $4A66: $F8 $40
    ret z                                         ; $4A68: $C8

    jr nc, @-$7A                                  ; $4A69: $30 $84

    ld a, b                                       ; $4A6B: $78
    call nz, $F838                                ; $4A6C: $C4 $38 $F8
    nop                                           ; $4A6F: $00
    nop                                           ; $4A70: $00
    nop                                           ; $4A71: $00
    ldh [rP1], a                                  ; $4A72: $E0 $00
    ldh a, [rP1]                                  ; $4A74: $F0 $00
    ld hl, sp+$00                                 ; $4A76: $F8 $00
    ld hl, sp+$00                                 ; $4A78: $F8 $00
    db $FC                                        ; $4A7A: $FC
    nop                                           ; $4A7B: $00
    ld a, [$FC04]                                 ; $4A7C: $FA $04 $FC
    nop                                           ; $4A7F: $00
    nop                                           ; $4A80: $00
    nop                                           ; $4A81: $00

jr_00B_4A82:
    rlca                                          ; $4A82: $07
    nop                                           ; $4A83: $00
    rrca                                          ; $4A84: $0F
    nop                                           ; $4A85: $00
    rra                                           ; $4A86: $1F
    nop                                           ; $4A87: $00
    rra                                           ; $4A88: $1F
    nop                                           ; $4A89: $00
    rra                                           ; $4A8A: $1F
    nop                                           ; $4A8B: $00
    rrca                                          ; $4A8C: $0F
    nop                                           ; $4A8D: $00
    rrca                                          ; $4A8E: $0F
    nop                                           ; $4A8F: $00
    nop                                           ; $4A90: $00
    nop                                           ; $4A91: $00
    ldh [rP1], a                                  ; $4A92: $E0 $00
    ldh a, [rP1]                                  ; $4A94: $F0 $00
    ld hl, sp+$00                                 ; $4A96: $F8 $00
    ldh a, [rP1]                                  ; $4A98: $F0 $00
    ret nc                                        ; $4A9A: $D0

    jr nz, @-$2E                                  ; $4A9B: $20 $D0

    jr nz, @-$6E                                  ; $4A9D: $20 $90

    ld h, b                                       ; $4A9F: $60
    ldh a, [rP1]                                  ; $4AA0: $F0 $00
    ldh a, [$E0]                                  ; $4AA2: $F0 $E0
    ld hl, sp-$10                                 ; $4AA4: $F8 $F0
    db $FC                                        ; $4AA6: $FC
    ld hl, sp-$04                                 ; $4AA7: $F8 $FC
    ldh a, [$F4]                                  ; $4AA9: $F0 $F4
    add sp, -$0C                                  ; $4AAB: $E8 $F4
    add sp, -$08                                  ; $4AAD: $E8 $F8
    ldh [rTAC], a                                 ; $4AAF: $E0 $07
    nop                                           ; $4AB1: $00
    rlca                                          ; $4AB2: $07
    nop                                           ; $4AB3: $00
    rrca                                          ; $4AB4: $0F
    rlca                                          ; $4AB5: $07
    rra                                           ; $4AB6: $1F
    rrca                                          ; $4AB7: $0F
    rra                                           ; $4AB8: $1F
    rrca                                          ; $4AB9: $0F
    rra                                           ; $4ABA: $1F
    rlca                                          ; $4ABB: $07
    rrca                                          ; $4ABC: $0F
    rlca                                          ; $4ABD: $07
    rrca                                          ; $4ABE: $0F
    rlca                                          ; $4ABF: $07
    jr nz, jr_00B_4A82                            ; $4AC0: $20 $C0

    ret nz                                        ; $4AC2: $C0

    nop                                           ; $4AC3: $00
    ldh [$C0], a                                  ; $4AC4: $E0 $C0
    ldh a, [$E0]                                  ; $4AC6: $F0 $E0
    ldh a, [$E0]                                  ; $4AC8: $F0 $E0
    ld hl, sp+$40                                 ; $4ACA: $F8 $40
    call nz, $E4B8                                ; $4ACC: $C4 $B8 $E4
    ret c                                         ; $4ACF: $D8

    ldh a, [rP1]                                  ; $4AD0: $F0 $00
    ldh a, [$60]                                  ; $4AD2: $F0 $60
    ld hl, sp+$60                                 ; $4AD4: $F8 $60
    ld hl, sp+$70                                 ; $4AD6: $F8 $70
    ld hl, sp+$70                                 ; $4AD8: $F8 $70
    db $F4                                        ; $4ADA: $F4
    ld [$708C], sp                                ; $4ADB: $08 $8C $70
    ld hl, sp+$00                                 ; $4ADE: $F8 $00

jr_00B_4AE0:
    rlca                                          ; $4AE0: $07
    nop                                           ; $4AE1: $00
    rlca                                          ; $4AE2: $07

jr_00B_4AE3:
    inc bc                                        ; $4AE3: $03
    rrca                                          ; $4AE4: $0F
    ld b, $0F                                     ; $4AE5: $06 $0F
    rlca                                          ; $4AE7: $07
    rrca                                          ; $4AE8: $0F
    ld bc, $0609                                  ; $4AE9: $01 $09 $06
    rrca                                          ; $4AEC: $0F
    nop                                           ; $4AED: $00
    nop                                           ; $4AEE: $00
    nop                                           ; $4AEF: $00
    db $FC                                        ; $4AF0: $FC
    jr nz, jr_00B_4AE3                            ; $4AF1: $20 $F0

    ldh [$F8], a                                  ; $4AF3: $E0 $F8
    ldh a, [$F8]                                  ; $4AF5: $F0 $F8
    ld [hl], b                                    ; $4AF7: $70
    ld hl, sp+$60                                 ; $4AF8: $F8 $60
    db $F4                                        ; $4AFA: $F4
    ld [$708C], sp                                ; $4AFB: $08 $8C $70
    ld hl, sp+$00                                 ; $4AFE: $F8 $00
    nop                                           ; $4B00: $00
    nop                                           ; $4B01: $00
    nop                                           ; $4B02: $00
    nop                                           ; $4B03: $00
    inc bc                                        ; $4B04: $03
    nop                                           ; $4B05: $00
    rlca                                          ; $4B06: $07
    nop                                           ; $4B07: $00
    rrca                                          ; $4B08: $0F
    nop                                           ; $4B09: $00
    rrca                                          ; $4B0A: $0F
    nop                                           ; $4B0B: $00
    rrca                                          ; $4B0C: $0F
    nop                                           ; $4B0D: $00
    dec e                                         ; $4B0E: $1D
    ld [bc], a                                    ; $4B0F: $02
    nop                                           ; $4B10: $00
    nop                                           ; $4B11: $00
    nop                                           ; $4B12: $00
    nop                                           ; $4B13: $00
    ldh [rP1], a                                  ; $4B14: $E0 $00
    ldh a, [rP1]                                  ; $4B16: $F0 $00
    ld hl, sp+$00                                 ; $4B18: $F8 $00
    ld hl, sp+$00                                 ; $4B1A: $F8 $00
    ld hl, sp+$00                                 ; $4B1C: $F8 $00
    jr c, jr_00B_4AE0                             ; $4B1E: $38 $C0

    ld a, [hl+]                                   ; $4B20: $2A
    dec d                                         ; $4B21: $15
    ld a, [de]                                    ; $4B22: $1A
    dec b                                         ; $4B23: $05
    inc b                                         ; $4B24: $04
    inc bc                                        ; $4B25: $03
    rrca                                          ; $4B26: $0F
    inc b                                         ; $4B27: $04
    rra                                           ; $4B28: $1F
    rrca                                          ; $4B29: $0F
    rra                                           ; $4B2A: $1F
    ld bc, $0E11                                  ; $4B2B: $01 $11 $0E
    add hl, bc                                    ; $4B2E: $09
    ld b, $54                                     ; $4B2F: $06 $54
    xor b                                         ; $4B31: $A8
    ld e, b                                       ; $4B32: $58
    and b                                         ; $4B33: $A0
    jr nz, @-$3E                                  ; $4B34: $20 $C0

    ldh a, [rNR41]                                ; $4B36: $F0 $20
    ld hl, sp-$10                                 ; $4B38: $F8 $F0
    ld hl, sp-$10                                 ; $4B3A: $F8 $F0
    ld hl, sp-$40                                 ; $4B3C: $F8 $C0
    add sp, -$30                                  ; $4B3E: $E8 $D0
    rrca                                          ; $4B40: $0F
    nop                                           ; $4B41: $00
    rlca                                          ; $4B42: $07
    inc bc                                        ; $4B43: $03
    rrca                                          ; $4B44: $0F
    rlca                                          ; $4B45: $07
    rrca                                          ; $4B46: $0F
    dec b                                         ; $4B47: $05
    rrca                                          ; $4B48: $0F
    ld b, $07                                     ; $4B49: $06 $07
    nop                                           ; $4B4B: $00
    dec b                                         ; $4B4C: $05
    ld [bc], a                                    ; $4B4D: $02
    inc bc                                        ; $4B4E: $03
    nop                                           ; $4B4F: $00
    ld hl, sp+$00                                 ; $4B50: $F8 $00
    ldh a, [$E0]                                  ; $4B52: $F0 $E0
    ldh [$C0], a                                  ; $4B54: $E0 $C0
    ldh a, [$80]                                  ; $4B56: $F0 $80
    sub b                                         ; $4B58: $90
    ld h, b                                       ; $4B59: $60
    db $10                                        ; $4B5A: $10
    ldh [rNR41], a                                ; $4B5B: $E0 $20
    ret nz                                        ; $4B5D: $C0

    ldh [rP1], a                                  ; $4B5E: $E0 $00
    nop                                           ; $4B60: $00
    nop                                           ; $4B61: $00
    nop                                           ; $4B62: $00
    nop                                           ; $4B63: $00
    ldh [rP1], a                                  ; $4B64: $E0 $00
    ldh a, [rP1]                                  ; $4B66: $F0 $00
    ld hl, sp+$00                                 ; $4B68: $F8 $00
    ld hl, sp+$00                                 ; $4B6A: $F8 $00
    db $FC                                        ; $4B6C: $FC
    nop                                           ; $4B6D: $00
    ld a, [$1F04]                                 ; $4B6E: $FA $04 $1F
    nop                                           ; $4B71: $00
    rlca                                          ; $4B72: $07
    nop                                           ; $4B73: $00
    rlca                                          ; $4B74: $07
    inc bc                                        ; $4B75: $03
    rrca                                          ; $4B76: $0F
    rlca                                          ; $4B77: $07
    rra                                           ; $4B78: $1F
    rrca                                          ; $4B79: $0F
    rra                                           ; $4B7A: $1F
    dec bc                                        ; $4B7B: $0B
    rra                                           ; $4B7C: $1F
    inc bc                                        ; $4B7D: $03
    rla                                           ; $4B7E: $17
    dec bc                                        ; $4B7F: $0B
    db $FC                                        ; $4B80: $FC
    nop                                           ; $4B81: $00
    ldh a, [rP1]                                  ; $4B82: $F0 $00
    ldh a, [$E0]                                  ; $4B84: $F0 $E0
    ld hl, sp-$10                                 ; $4B86: $F8 $F0
    db $FC                                        ; $4B88: $FC
    ld hl, sp-$04                                 ; $4B89: $F8 $FC
    add sp, -$04                                  ; $4B8B: $E8 $FC
    ldh [$F8], a                                  ; $4B8D: $E0 $F8
    ldh [rIF], a                                  ; $4B8F: $E0 $0F
    nop                                           ; $4B91: $00
    rlca                                          ; $4B92: $07
    inc bc                                        ; $4B93: $03
    rrca                                          ; $4B94: $0F
    ld b, $0F                                     ; $4B95: $06 $0F
    rlca                                          ; $4B97: $07
    rrca                                          ; $4B98: $0F
    rlca                                          ; $4B99: $07
    rlca                                          ; $4B9A: $07
    nop                                           ; $4B9B: $00
    inc b                                         ; $4B9C: $04
    inc bc                                        ; $4B9D: $03
    rlca                                          ; $4B9E: $07
    nop                                           ; $4B9F: $00
    ldh a, [rP1]                                  ; $4BA0: $F0 $00
    ld hl, sp-$10                                 ; $4BA2: $F8 $F0
    ld hl, sp-$10                                 ; $4BA4: $F8 $F0
    ld hl, sp+$30                                 ; $4BA6: $F8 $30
    ldh a, [rP1]                                  ; $4BA8: $F0 $00
    sub b                                         ; $4BAA: $90
    ld h, b                                       ; $4BAB: $60
    sub b                                         ; $4BAC: $90
    ld h, b                                       ; $4BAD: $60
    ldh a, [rP1]                                  ; $4BAE: $F0 $00
    nop                                           ; $4BB0: $00
    nop                                           ; $4BB1: $00
    rlca                                          ; $4BB2: $07
    nop                                           ; $4BB3: $00
    rrca                                          ; $4BB4: $0F
    nop                                           ; $4BB5: $00
    rra                                           ; $4BB6: $1F
    nop                                           ; $4BB7: $00
    rra                                           ; $4BB8: $1F
    nop                                           ; $4BB9: $00
    rra                                           ; $4BBA: $1F
    nop                                           ; $4BBB: $00
    rrca                                          ; $4BBC: $0F
    nop                                           ; $4BBD: $00
    dec b                                         ; $4BBE: $05
    ld [bc], a                                    ; $4BBF: $02
    nop                                           ; $4BC0: $00
    nop                                           ; $4BC1: $00
    ldh [rP1], a                                  ; $4BC2: $E0 $00
    ldh a, [rP1]                                  ; $4BC4: $F0 $00
    ld hl, sp+$00                                 ; $4BC6: $F8 $00
    db $FC                                        ; $4BC8: $FC
    nop                                           ; $4BC9: $00
    sub b                                         ; $4BCA: $90
    ld h, b                                       ; $4BCB: $60
    ld d, b                                       ; $4BCC: $50
    and b                                         ; $4BCD: $A0
    ld d, b                                       ; $4BCE: $50
    and b                                         ; $4BCF: $A0
    dec b                                         ; $4BD0: $05
    ld [bc], a                                    ; $4BD1: $02
    ld [bc], a                                    ; $4BD2: $02
    ld bc, $0007                                  ; $4BD3: $01 $07 $00
    rlca                                          ; $4BD6: $07
    inc bc                                        ; $4BD7: $03
    rrca                                          ; $4BD8: $0F
    rlca                                          ; $4BD9: $07
    rra                                           ; $4BDA: $1F
    ld b, $2F                                     ; $4BDB: $06 $2F
    rla                                           ; $4BDD: $17
    cpl                                           ; $4BDE: $2F
    rla                                           ; $4BDF: $17
    ld d, b                                       ; $4BE0: $50
    and b                                         ; $4BE1: $A0
    db $10                                        ; $4BE2: $10
    ldh [$E0], a                                  ; $4BE3: $E0 $E0
    nop                                           ; $4BE5: $00
    ret nz                                        ; $4BE6: $C0

    add b                                         ; $4BE7: $80
    ret nz                                        ; $4BE8: $C0

    nop                                           ; $4BE9: $00
    ld h, b                                       ; $4BEA: $60
    add b                                         ; $4BEB: $80
    sub b                                         ; $4BEC: $90
    ld h, b                                       ; $4BED: $60
    sub b                                         ; $4BEE: $90
    ld h, b                                       ; $4BEF: $60
    ld hl, $7E1E                                  ; $4BF0: $21 $1E $7E

jr_00B_4BF3:
    nop                                           ; $4BF3: $00
    db $FC                                        ; $4BF4: $FC
    jr c, jr_00B_4BF3                             ; $4BF5: $38 $FC

    ld l, b                                       ; $4BF7: $68
    cp $0C                                        ; $4BF8: $FE $0C
    sbc $24                                       ; $4BFA: $DE $24
    and $58                                       ; $4BFC: $E6 $58
    ld h, [hl]                                    ; $4BFE: $66
    ld e, b                                       ; $4BFF: $58
    dec b                                         ; $4C00: $05
    ld [bc], a                                    ; $4C01: $02
    ld [bc], a                                    ; $4C02: $02
    ld bc, $0007                                  ; $4C03: $01 $07 $00
    rrca                                          ; $4C06: $0F
    rlca                                          ; $4C07: $07
    rrca                                          ; $4C08: $0F
    inc bc                                        ; $4C09: $03
    dec de                                        ; $4C0A: $1B
    dec b                                         ; $4C0B: $05
    daa                                           ; $4C0C: $27
    dec de                                        ; $4C0D: $1B
    daa                                           ; $4C0E: $27
    dec de                                        ; $4C0F: $1B
    ld d, b                                       ; $4C10: $50
    and b                                         ; $4C11: $A0
    db $10                                        ; $4C12: $10
    ldh [$E0], a                                  ; $4C13: $E0 $E0
    nop                                           ; $4C15: $00
    ret nz                                        ; $4C16: $C0

    add b                                         ; $4C17: $80
    ret nz                                        ; $4C18: $C0

    add b                                         ; $4C19: $80
    ldh [$80], a                                  ; $4C1A: $E0 $80
    ret nc                                        ; $4C1C: $D0

    and b                                         ; $4C1D: $A0
    ret nc                                        ; $4C1E: $D0

    and b                                         ; $4C1F: $A0
    rra                                           ; $4C20: $1F
    nop                                           ; $4C21: $00
    rrca                                          ; $4C22: $0F
    rlca                                          ; $4C23: $07
    rra                                           ; $4C24: $1F
    rrca                                          ; $4C25: $0F
    ccf                                           ; $4C26: $3F
    rra                                           ; $4C27: $1F
    ld e, a                                       ; $4C28: $5F
    inc l                                         ; $4C29: $2C
    ld c, l                                       ; $4C2A: $4D
    ld [hl-], a                                   ; $4C2B: $32
    ld h, c                                       ; $4C2C: $61
    ld e, $7F                                     ; $4C2D: $1E $7F
    nop                                           ; $4C2F: $00
    ldh [rP1], a                                  ; $4C30: $E0 $00
    ldh [$80], a                                  ; $4C32: $E0 $80
    ld hl, sp-$80                                 ; $4C34: $F8 $80
    db $E4                                        ; $4C36: $E4
    jr @-$3A                                      ; $4C37: $18 $C4

    cp b                                          ; $4C39: $B8
    ret z                                         ; $4C3A: $C8

    or b                                          ; $4C3B: $B0
    cp b                                          ; $4C3C: $B8
    ld b, b                                       ; $4C3D: $40
    ldh [rP1], a                                  ; $4C3E: $E0 $00
    rlca                                          ; $4C40: $07
    nop                                           ; $4C41: $00
    rrca                                          ; $4C42: $0F
    rlca                                          ; $4C43: $07
    rra                                           ; $4C44: $1F
    rrca                                          ; $4C45: $0F
    rra                                           ; $4C46: $1F
    rrca                                          ; $4C47: $0F
    ccf                                           ; $4C48: $3F
    db $10                                        ; $4C49: $10
    jr c, @+$09                                   ; $4C4A: $38 $07

    jr nc, jr_00B_4C5D                            ; $4C4C: $30 $0F

    rra                                           ; $4C4E: $1F
    nop                                           ; $4C4F: $00
    ldh [rP1], a                                  ; $4C50: $E0 $00
    ldh [$C0], a                                  ; $4C52: $E0 $C0
    ldh [$C0], a                                  ; $4C54: $E0 $C0
    ldh [$80], a                                  ; $4C56: $E0 $80
    ret nc                                        ; $4C58: $D0

    jr nz, jr_00B_4CAB                            ; $4C59: $20 $50

    and b                                         ; $4C5B: $A0
    ld [hl], b                                    ; $4C5C: $70

jr_00B_4C5D:
    add b                                         ; $4C5D: $80
    ret nz                                        ; $4C5E: $C0

    nop                                           ; $4C5F: $00

jr_00B_4C60:
    rra                                           ; $4C60: $1F
    nop                                           ; $4C61: $00
    rrca                                          ; $4C62: $0F
    rlca                                          ; $4C63: $07
    rra                                           ; $4C64: $1F
    rrca                                          ; $4C65: $0F
    ccf                                           ; $4C66: $3F
    dec bc                                        ; $4C67: $0B
    ld e, a                                       ; $4C68: $5F
    ld hl, $3C43                                  ; $4C69: $21 $43 $3C
    ld h, c                                       ; $4C6C: $61
    ld e, $7F                                     ; $4C6D: $1E $7F
    nop                                           ; $4C6F: $00
    ldh [rP1], a                                  ; $4C70: $E0 $00
    ret nz                                        ; $4C72: $C0

    add b                                         ; $4C73: $80
    ld hl, sp-$40                                 ; $4C74: $F8 $C0
    db $E4                                        ; $4C76: $E4
    ret c                                         ; $4C77: $D8

    call nz, $C8B8                                ; $4C78: $C4 $B8 $C8
    or b                                          ; $4C7B: $B0
    cp b                                          ; $4C7C: $B8
    ld b, b                                       ; $4C7D: $40
    ldh [rP1], a                                  ; $4C7E: $E0 $00
    rlca                                          ; $4C80: $07
    nop                                           ; $4C81: $00
    rrca                                          ; $4C82: $0F
    rlca                                          ; $4C83: $07
    rra                                           ; $4C84: $1F
    rrca                                          ; $4C85: $0F
    rra                                           ; $4C86: $1F
    ld c, $1E                                     ; $4C87: $0E $1E
    dec c                                         ; $4C89: $0D
    ld e, $05                                     ; $4C8A: $1E $05
    dec d                                         ; $4C8C: $15
    ld a, [bc]                                    ; $4C8D: $0A
    add hl, bc                                    ; $4C8E: $09
    ld b, $E0                                     ; $4C8F: $06 $E0
    nop                                           ; $4C91: $00
    ldh a, [$E0]                                  ; $4C92: $F0 $E0
    ld hl, sp-$10                                 ; $4C94: $F8 $F0
    ld hl, sp+$50                                 ; $4C96: $F8 $50
    ld e, b                                       ; $4C98: $58
    and b                                         ; $4C99: $A0
    db $10                                        ; $4C9A: $10
    ldh [$30], a                                  ; $4C9B: $E0 $30
    ret nz                                        ; $4C9D: $C0

jr_00B_4C9E:
    jr nc, jr_00B_4C60                            ; $4C9E: $30 $C0

    rlca                                          ; $4CA0: $07
    nop                                           ; $4CA1: $00
    rrca                                          ; $4CA2: $0F
    rlca                                          ; $4CA3: $07

jr_00B_4CA4:
    rra                                           ; $4CA4: $1F
    rrca                                          ; $4CA5: $0F
    rra                                           ; $4CA6: $1F
    rrca                                          ; $4CA7: $0F
    rra                                           ; $4CA8: $1F
    inc c                                         ; $4CA9: $0C
    inc e                                         ; $4CAA: $1C

jr_00B_4CAB:
    dec bc                                        ; $4CAB: $0B
    jr @+$09                                      ; $4CAC: $18 $07

    ld a, [hl+]                                   ; $4CAE: $2A
    dec d                                         ; $4CAF: $15
    ldh [rP1], a                                  ; $4CB0: $E0 $00
    ldh a, [$E0]                                  ; $4CB2: $F0 $E0
    ld hl, sp-$10                                 ; $4CB4: $F8 $F0
    ld hl, sp-$10                                 ; $4CB6: $F8 $F0
    ld hl, sp-$50                                 ; $4CB8: $F8 $B0
    cp b                                          ; $4CBA: $B8
    ld d, b                                       ; $4CBB: $50
    jr jr_00B_4C9E                                ; $4CBC: $18 $E0

    ld d, h                                       ; $4CBE: $54
    xor b                                         ; $4CBF: $A8
    inc c                                         ; $4CC0: $0C
    inc bc                                        ; $4CC1: $03
    rra                                           ; $4CC2: $1F
    inc c                                         ; $4CC3: $0C
    ccf                                           ; $4CC4: $3F
    rra                                           ; $4CC5: $1F
    ld a, a                                       ; $4CC6: $7F
    dec sp                                        ; $4CC7: $3B
    ld a, a                                       ; $4CC8: $7F
    scf                                           ; $4CC9: $37
    ccf                                           ; $4CCA: $3F
    inc de                                        ; $4CCB: $13
    inc de                                        ; $4CCC: $13
    dec c                                         ; $4CCD: $0D
    inc de                                        ; $4CCE: $13
    dec c                                         ; $4CCF: $0D
    db $10                                        ; $4CD0: $10
    ldh [$E0], a                                  ; $4CD1: $E0 $E0
    nop                                           ; $4CD3: $00
    ldh a, [rNR41]                                ; $4CD4: $F0 $20
    ldh a, [rNR41]                                ; $4CD6: $F0 $20
    ldh a, [rNR41]                                ; $4CD8: $F0 $20
    ld hl, sp+$20                                 ; $4CDA: $F8 $20
    ld hl, sp+$20                                 ; $4CDC: $F8 $20
    ldh a, [rP1]                                  ; $4CDE: $F0 $00
    ld e, b                                       ; $4CE0: $58
    and b                                         ; $4CE1: $A0
    jr nz, jr_00B_4CA4                            ; $4CE2: $20 $C0

    ldh a, [rNR41]                                ; $4CE4: $F0 $20
    ld hl, sp+$70                                 ; $4CE6: $F8 $70
    ld hl, sp+$70                                 ; $4CE8: $F8 $70
    ld hl, sp+$50                                 ; $4CEA: $F8 $50
    ret c                                         ; $4CEC: $D8

    jr nz, @-$36                                  ; $4CED: $20 $C8

    jr nc, jr_00B_4D00                            ; $4CEF: $30 $0F

    nop                                           ; $4CF1: $00
    rrca                                          ; $4CF2: $0F
    rlca                                          ; $4CF3: $07
    rra                                           ; $4CF4: $1F
    rrca                                          ; $4CF5: $0F
    rra                                           ; $4CF6: $1F
    ld c, $3F                                     ; $4CF7: $0E $3F
    db $10                                        ; $4CF9: $10
    add hl, sp                                    ; $4CFA: $39
    ld b, $21                                     ; $4CFB: $06 $21
    ld e, $1F                                     ; $4CFD: $1E $1F
    nop                                           ; $4CFF: $00

jr_00B_4D00:
    ldh [rP1], a                                  ; $4D00: $E0 $00
    ldh [$C0], a                                  ; $4D02: $E0 $C0
    ldh [rLCDC], a                                ; $4D04: $E0 $40
    ldh a, [$C0]                                  ; $4D06: $F0 $C0
    ret z                                         ; $4D08: $C8

    jr nc, @+$0A                                  ; $4D09: $30 $08

    ldh a, [$F0]                                  ; $4D0B: $F0 $F0
    nop                                           ; $4D0D: $00
    nop                                           ; $4D0E: $00
    nop                                           ; $4D0F: $00
    ld hl, sp+$00                                 ; $4D10: $F8 $00
    ldh a, [$E0]                                  ; $4D12: $F0 $E0
    ld hl, sp+$70                                 ; $4D14: $F8 $70
    ld hl, sp+$40                                 ; $4D16: $F8 $40
    ret z                                         ; $4D18: $C8

    jr nc, @-$7A                                  ; $4D19: $30 $84

    ld a, b                                       ; $4D1B: $78
    call nz, $F838                                ; $4D1C: $C4 $38 $F8
    nop                                           ; $4D1F: $00
    ldh [rP1], a                                  ; $4D20: $E0 $00
    ldh a, [$E0]                                  ; $4D22: $F0 $E0
    ld hl, sp-$10                                 ; $4D24: $F8 $F0
    ld hl, sp-$10                                 ; $4D26: $F8 $F0
    ld hl, sp-$10                                 ; $4D28: $F8 $F0
    db $FC                                        ; $4D2A: $FC
    ldh a, [$FA]                                  ; $4D2B: $F0 $FA
    db $F4                                        ; $4D2D: $F4
    db $FC                                        ; $4D2E: $FC
    ldh [$03], a                                  ; $4D2F: $E0 $03
    nop                                           ; $4D31: $00

jr_00B_4D32:
    rlca                                          ; $4D32: $07
    inc bc                                        ; $4D33: $03
    rrca                                          ; $4D34: $0F
    rlca                                          ; $4D35: $07
    rra                                           ; $4D36: $1F
    rrca                                          ; $4D37: $0F
    rra                                           ; $4D38: $1F
    rrca                                          ; $4D39: $0F
    rra                                           ; $4D3A: $1F
    rrca                                          ; $4D3B: $0F
    rra                                           ; $4D3C: $1F
    rrca                                          ; $4D3D: $0F
    rrca                                          ; $4D3E: $0F
    rlca                                          ; $4D3F: $07
    ldh a, [rP1]                                  ; $4D40: $F0 $00
    ld hl, sp-$10                                 ; $4D42: $F8 $F0
    db $FC                                        ; $4D44: $FC
    ld hl, sp-$04                                 ; $4D45: $F8 $FC
    ld hl, sp-$08                                 ; $4D47: $F8 $F8
    ldh a, [$F8]                                  ; $4D49: $F0 $F8
    ret nc                                        ; $4D4B: $D0

    ret nc                                        ; $4D4C: $D0

    and b                                         ; $4D4D: $A0
    sub b                                         ; $4D4E: $90
    ld h, b                                       ; $4D4F: $60
    ldh a, [$C0]                                  ; $4D50: $F0 $C0
    ldh a, [rP1]                                  ; $4D52: $F0 $00
    ld hl, sp-$10                                 ; $4D54: $F8 $F0
    db $FC                                        ; $4D56: $FC
    ld hl, sp-$04                                 ; $4D57: $F8 $FC
    ld hl, sp-$04                                 ; $4D59: $F8 $FC
    ldh [$F4], a                                  ; $4D5B: $E0 $F4
    add sp, -$08                                  ; $4D5D: $E8 $F8
    ldh [rTAC], a                                 ; $4D5F: $E0 $07
    nop                                           ; $4D61: $00
    rlca                                          ; $4D62: $07
    nop                                           ; $4D63: $00
    rrca                                          ; $4D64: $0F
    rlca                                          ; $4D65: $07
    rra                                           ; $4D66: $1F
    rrca                                          ; $4D67: $0F
    rra                                           ; $4D68: $1F
    rrca                                          ; $4D69: $0F
    rra                                           ; $4D6A: $1F
    rlca                                          ; $4D6B: $07
    rrca                                          ; $4D6C: $0F
    rlca                                          ; $4D6D: $07
    rrca                                          ; $4D6E: $0F
    rlca                                          ; $4D6F: $07
    jr nz, jr_00B_4D32                            ; $4D70: $20 $C0

    ret nz                                        ; $4D72: $C0

    nop                                           ; $4D73: $00
    ldh [$C0], a                                  ; $4D74: $E0 $C0
    ldh a, [$E0]                                  ; $4D76: $F0 $E0
    ldh a, [$E0]                                  ; $4D78: $F0 $E0
    ld hl, sp+$70                                 ; $4D7A: $F8 $70
    db $F4                                        ; $4D7C: $F4
    xor b                                         ; $4D7D: $A8
    db $E4                                        ; $4D7E: $E4
    ret c                                         ; $4D7F: $D8

    ldh a, [rP1]                                  ; $4D80: $F0 $00
    ldh a, [$60]                                  ; $4D82: $F0 $60
    ld hl, sp+$60                                 ; $4D84: $F8 $60
    ld hl, sp+$70                                 ; $4D86: $F8 $70
    ld hl, sp+$70                                 ; $4D88: $F8 $70
    db $F4                                        ; $4D8A: $F4
    ld [$708C], sp                                ; $4D8B: $08 $8C $70
    ld hl, sp+$00                                 ; $4D8E: $F8 $00
    rlca                                          ; $4D90: $07
    nop                                           ; $4D91: $00
    rlca                                          ; $4D92: $07

jr_00B_4D93:
    inc bc                                        ; $4D93: $03
    rrca                                          ; $4D94: $0F
    ld b, $0F                                     ; $4D95: $06 $0F
    rlca                                          ; $4D97: $07
    rrca                                          ; $4D98: $0F
    ld bc, $0609                                  ; $4D99: $01 $09 $06
    rrca                                          ; $4D9C: $0F
    nop                                           ; $4D9D: $00
    nop                                           ; $4D9E: $00
    nop                                           ; $4D9F: $00
    db $FC                                        ; $4DA0: $FC
    jr nz, jr_00B_4D93                            ; $4DA1: $20 $F0

    ldh [$F8], a                                  ; $4DA3: $E0 $F8
    ldh a, [$F8]                                  ; $4DA5: $F0 $F8
    ld [hl], b                                    ; $4DA7: $70
    ld hl, sp+$60                                 ; $4DA8: $F8 $60
    db $F4                                        ; $4DAA: $F4
    ld [$708C], sp                                ; $4DAB: $08 $8C $70
    ld hl, sp+$00                                 ; $4DAE: $F8 $00

jr_00B_4DB0:
    nop                                           ; $4DB0: $00
    nop                                           ; $4DB1: $00
    rlca                                          ; $4DB2: $07
    nop                                           ; $4DB3: $00
    rrca                                          ; $4DB4: $0F
    rlca                                          ; $4DB5: $07
    rra                                           ; $4DB6: $1F
    rrca                                          ; $4DB7: $0F
    rra                                           ; $4DB8: $1F
    rrca                                          ; $4DB9: $0F
    rra                                           ; $4DBA: $1F
    inc c                                         ; $4DBB: $0C
    inc e                                         ; $4DBC: $1C
    dec bc                                        ; $4DBD: $0B
    jr @+$09                                      ; $4DBE: $18 $07

    nop                                           ; $4DC0: $00
    nop                                           ; $4DC1: $00
    ldh [rP1], a                                  ; $4DC2: $E0 $00
    ldh a, [$E0]                                  ; $4DC4: $F0 $E0
    ld hl, sp-$10                                 ; $4DC6: $F8 $F0
    ld hl, sp-$10                                 ; $4DC8: $F8 $F0
    ld hl, sp-$50                                 ; $4DCA: $F8 $B0
    cp b                                          ; $4DCC: $B8
    ld d, b                                       ; $4DCD: $50
    jr jr_00B_4DB0                                ; $4DCE: $18 $E0

    ld a, [hl+]                                   ; $4DD0: $2A
    dec d                                         ; $4DD1: $15
    ld a, [de]                                    ; $4DD2: $1A
    dec b                                         ; $4DD3: $05
    inc b                                         ; $4DD4: $04
    inc bc                                        ; $4DD5: $03
    rrca                                          ; $4DD6: $0F
    inc b                                         ; $4DD7: $04
    rra                                           ; $4DD8: $1F
    ld c, $1F                                     ; $4DD9: $0E $1F
    add hl, bc                                    ; $4DDB: $09
    add hl, de                                    ; $4DDC: $19
    ld b, $09                                     ; $4DDD: $06 $09
    ld b, $54                                     ; $4DDF: $06 $54
    xor b                                         ; $4DE1: $A8
    ld e, b                                       ; $4DE2: $58
    and b                                         ; $4DE3: $A0
    jr nz, @-$3E                                  ; $4DE4: $20 $C0

    ldh a, [rNR41]                                ; $4DE6: $F0 $20
    ld hl, sp+$70                                 ; $4DE8: $F8 $70
    ld hl, sp+$70                                 ; $4DEA: $F8 $70
    ld hl, sp+$50                                 ; $4DEC: $F8 $50
    ld hl, sp+$40                                 ; $4DEE: $F8 $40
    rrca                                          ; $4DF0: $0F
    nop                                           ; $4DF1: $00
    rlca                                          ; $4DF2: $07
    inc bc                                        ; $4DF3: $03
    rrca                                          ; $4DF4: $0F
    rlca                                          ; $4DF5: $07
    rrca                                          ; $4DF6: $0F
    dec b                                         ; $4DF7: $05
    rrca                                          ; $4DF8: $0F
    ld b, $07                                     ; $4DF9: $06 $07
    nop                                           ; $4DFB: $00
    dec b                                         ; $4DFC: $05
    ld [bc], a                                    ; $4DFD: $02
    inc bc                                        ; $4DFE: $03
    nop                                           ; $4DFF: $00
    ld hl, sp+$00                                 ; $4E00: $F8 $00
    ldh a, [$E0]                                  ; $4E02: $F0 $E0
    ldh [$C0], a                                  ; $4E04: $E0 $C0
    ldh a, [$80]                                  ; $4E06: $F0 $80
    sub b                                         ; $4E08: $90
    ld h, b                                       ; $4E09: $60
    db $10                                        ; $4E0A: $10
    ldh [rNR41], a                                ; $4E0B: $E0 $20
    ret nz                                        ; $4E0D: $C0

    ldh [rP1], a                                  ; $4E0E: $E0 $00
    nop                                           ; $4E10: $00
    nop                                           ; $4E11: $00
    ldh [rP1], a                                  ; $4E12: $E0 $00
    ldh a, [$E0]                                  ; $4E14: $F0 $E0
    ld hl, sp-$10                                 ; $4E16: $F8 $F0
    ld hl, sp-$10                                 ; $4E18: $F8 $F0
    ld hl, sp-$10                                 ; $4E1A: $F8 $F0
    db $FC                                        ; $4E1C: $FC
    ldh a, [$FA]                                  ; $4E1D: $F0 $FA
    db $F4                                        ; $4E1F: $F4
    rra                                           ; $4E20: $1F
    inc bc                                        ; $4E21: $03
    rlca                                          ; $4E22: $07
    ld bc, $0007                                  ; $4E23: $01 $07 $00
    rrca                                          ; $4E26: $0F
    rlca                                          ; $4E27: $07
    rra                                           ; $4E28: $1F
    rrca                                          ; $4E29: $0F
    rra                                           ; $4E2A: $1F
    dec bc                                        ; $4E2B: $0B
    rra                                           ; $4E2C: $1F
    inc bc                                        ; $4E2D: $03
    rla                                           ; $4E2E: $17
    dec bc                                        ; $4E2F: $0B
    db $FC                                        ; $4E30: $FC
    ldh [$F0], a                                  ; $4E31: $E0 $F0
    ret nz                                        ; $4E33: $C0

    ldh a, [rP1]                                  ; $4E34: $F0 $00
    ld hl, sp-$10                                 ; $4E36: $F8 $F0
    db $FC                                        ; $4E38: $FC
    ld hl, sp-$04                                 ; $4E39: $F8 $FC
    add sp, -$04                                  ; $4E3B: $E8 $FC
    ldh [$F8], a                                  ; $4E3D: $E0 $F8
    ldh [rIF], a                                  ; $4E3F: $E0 $0F
    nop                                           ; $4E41: $00
    rlca                                          ; $4E42: $07
    inc bc                                        ; $4E43: $03
    rrca                                          ; $4E44: $0F
    ld b, $0F                                     ; $4E45: $06 $0F
    rlca                                          ; $4E47: $07
    rrca                                          ; $4E48: $0F
    rlca                                          ; $4E49: $07
    rlca                                          ; $4E4A: $07
    nop                                           ; $4E4B: $00
    inc b                                         ; $4E4C: $04
    inc bc                                        ; $4E4D: $03
    rlca                                          ; $4E4E: $07
    nop                                           ; $4E4F: $00
    ldh a, [rP1]                                  ; $4E50: $F0 $00
    ld hl, sp-$10                                 ; $4E52: $F8 $F0
    ld hl, sp-$10                                 ; $4E54: $F8 $F0
    ld hl, sp+$30                                 ; $4E56: $F8 $30
    ldh a, [rP1]                                  ; $4E58: $F0 $00
    sub b                                         ; $4E5A: $90
    ld h, b                                       ; $4E5B: $60
    sub b                                         ; $4E5C: $90
    ld h, b                                       ; $4E5D: $60
    ldh a, [rP1]                                  ; $4E5E: $F0 $00
    inc bc                                        ; $4E60: $03
    nop                                           ; $4E61: $00
    rlca                                          ; $4E62: $07
    inc bc                                        ; $4E63: $03
    rrca                                          ; $4E64: $0F
    rlca                                          ; $4E65: $07
    rra                                           ; $4E66: $1F
    rrca                                          ; $4E67: $0F
    rra                                           ; $4E68: $1F
    rrca                                          ; $4E69: $0F
    rrca                                          ; $4E6A: $0F
    rlca                                          ; $4E6B: $07
    rrca                                          ; $4E6C: $0F
    dec b                                         ; $4E6D: $05
    dec b                                         ; $4E6E: $05
    ld [bc], a                                    ; $4E6F: $02
    ldh [rP1], a                                  ; $4E70: $E0 $00
    ldh a, [$E0]                                  ; $4E72: $F0 $E0
    ld hl, sp-$10                                 ; $4E74: $F8 $F0
    db $FC                                        ; $4E76: $FC
    ld hl, sp-$08                                 ; $4E77: $F8 $F8
    add b                                         ; $4E79: $80
    sub b                                         ; $4E7A: $90
    ld h, b                                       ; $4E7B: $60
    ld d, b                                       ; $4E7C: $50
    and b                                         ; $4E7D: $A0
    ld d, b                                       ; $4E7E: $50
    and b                                         ; $4E7F: $A0
    dec b                                         ; $4E80: $05
    ld [bc], a                                    ; $4E81: $02
    ld [bc], a                                    ; $4E82: $02
    ld bc, $0007                                  ; $4E83: $01 $07 $00
    rlca                                          ; $4E86: $07
    inc bc                                        ; $4E87: $03
    rrca                                          ; $4E88: $0F
    rlca                                          ; $4E89: $07
    rra                                           ; $4E8A: $1F
    ld b, $2F                                     ; $4E8B: $06 $2F
    rla                                           ; $4E8D: $17
    cpl                                           ; $4E8E: $2F
    rla                                           ; $4E8F: $17
    ld d, b                                       ; $4E90: $50
    and b                                         ; $4E91: $A0
    db $10                                        ; $4E92: $10
    ldh [$E0], a                                  ; $4E93: $E0 $E0
    nop                                           ; $4E95: $00
    ret nz                                        ; $4E96: $C0

    add b                                         ; $4E97: $80
    ret nz                                        ; $4E98: $C0

    add b                                         ; $4E99: $80
    ldh [$80], a                                  ; $4E9A: $E0 $80
    sub b                                         ; $4E9C: $90
    ld h, b                                       ; $4E9D: $60
    sub b                                         ; $4E9E: $90

jr_00B_4E9F:
    ld h, b                                       ; $4E9F: $60
    ld hl, $7E1E                                  ; $4EA0: $21 $1E $7E

jr_00B_4EA3:
    nop                                           ; $4EA3: $00
    db $FC                                        ; $4EA4: $FC
    jr c, jr_00B_4EA3                             ; $4EA5: $38 $FC

    ld l, b                                       ; $4EA7: $68
    cp $2C                                        ; $4EA8: $FE $2C
    cp $24                                        ; $4EAA: $FE $24
    and $58                                       ; $4EAC: $E6 $58
    ld h, [hl]                                    ; $4EAE: $66
    ld e, b                                       ; $4EAF: $58
    dec b                                         ; $4EB0: $05
    ld [bc], a                                    ; $4EB1: $02
    ld [bc], a                                    ; $4EB2: $02
    ld bc, $0007                                  ; $4EB3: $01 $07 $00
    rrca                                          ; $4EB6: $0F
    inc bc                                        ; $4EB7: $03
    rrca                                          ; $4EB8: $0F
    rlca                                          ; $4EB9: $07
    rra                                           ; $4EBA: $1F
    dec b                                         ; $4EBB: $05
    daa                                           ; $4EBC: $27
    dec de                                        ; $4EBD: $1B
    daa                                           ; $4EBE: $27
    dec de                                        ; $4EBF: $1B
    ld d, b                                       ; $4EC0: $50
    and b                                         ; $4EC1: $A0
    db $10                                        ; $4EC2: $10
    ldh [$E0], a                                  ; $4EC3: $E0 $E0
    nop                                           ; $4EC5: $00
    ret nz                                        ; $4EC6: $C0

    nop                                           ; $4EC7: $00
    ret nz                                        ; $4EC8: $C0

    nop                                           ; $4EC9: $00
    ldh [rP1], a                                  ; $4ECA: $E0 $00
    ret nc                                        ; $4ECC: $D0

    jr nz, jr_00B_4E9F                            ; $4ECD: $20 $D0

    jr nz, jr_00B_4EF0                            ; $4ECF: $20 $1F

    nop                                           ; $4ED1: $00
    rrca                                          ; $4ED2: $0F
    rlca                                          ; $4ED3: $07
    rra                                           ; $4ED4: $1F
    rrca                                          ; $4ED5: $0F
    ccf                                           ; $4ED6: $3F
    rra                                           ; $4ED7: $1F
    ld e, a                                       ; $4ED8: $5F
    inc l                                         ; $4ED9: $2C
    ld c, l                                       ; $4EDA: $4D
    ld [hl-], a                                   ; $4EDB: $32
    ld h, c                                       ; $4EDC: $61
    ld e, $7F                                     ; $4EDD: $1E $7F
    nop                                           ; $4EDF: $00
    ldh [rP1], a                                  ; $4EE0: $E0 $00
    ldh [$80], a                                  ; $4EE2: $E0 $80
    ld hl, sp-$80                                 ; $4EE4: $F8 $80
    db $E4                                        ; $4EE6: $E4
    jr @-$3A                                      ; $4EE7: $18 $C4

    cp b                                          ; $4EE9: $B8
    ret z                                         ; $4EEA: $C8

    or b                                          ; $4EEB: $B0
    cp b                                          ; $4EEC: $B8
    ld b, b                                       ; $4EED: $40
    ldh [rP1], a                                  ; $4EEE: $E0 $00

jr_00B_4EF0:
    rlca                                          ; $4EF0: $07
    nop                                           ; $4EF1: $00
    rrca                                          ; $4EF2: $0F
    rlca                                          ; $4EF3: $07
    rra                                           ; $4EF4: $1F
    rrca                                          ; $4EF5: $0F
    rra                                           ; $4EF6: $1F
    rrca                                          ; $4EF7: $0F
    ccf                                           ; $4EF8: $3F
    db $10                                        ; $4EF9: $10
    jr c, @+$09                                   ; $4EFA: $38 $07

    jr nc, jr_00B_4F0D                            ; $4EFC: $30 $0F

    rra                                           ; $4EFE: $1F
    nop                                           ; $4EFF: $00
    ldh [rP1], a                                  ; $4F00: $E0 $00
    ldh [$C0], a                                  ; $4F02: $E0 $C0
    ldh [$C0], a                                  ; $4F04: $E0 $C0
    ldh [$80], a                                  ; $4F06: $E0 $80
    ret nc                                        ; $4F08: $D0

    jr nz, jr_00B_4F5B                            ; $4F09: $20 $50

    and b                                         ; $4F0B: $A0
    ld [hl], b                                    ; $4F0C: $70

jr_00B_4F0D:
    add b                                         ; $4F0D: $80
    ret nz                                        ; $4F0E: $C0

    nop                                           ; $4F0F: $00

jr_00B_4F10:
    rra                                           ; $4F10: $1F
    nop                                           ; $4F11: $00
    rrca                                          ; $4F12: $0F
    rlca                                          ; $4F13: $07
    rra                                           ; $4F14: $1F
    rrca                                          ; $4F15: $0F
    ccf                                           ; $4F16: $3F
    dec bc                                        ; $4F17: $0B
    ld e, a                                       ; $4F18: $5F
    ld hl, $3C43                                  ; $4F19: $21 $43 $3C
    ld h, c                                       ; $4F1C: $61
    ld e, $7F                                     ; $4F1D: $1E $7F
    nop                                           ; $4F1F: $00
    ldh [rP1], a                                  ; $4F20: $E0 $00
    ret nz                                        ; $4F22: $C0

    add b                                         ; $4F23: $80
    ld hl, sp-$40                                 ; $4F24: $F8 $C0
    db $E4                                        ; $4F26: $E4
    ret c                                         ; $4F27: $D8

    call nz, $C8B8                                ; $4F28: $C4 $B8 $C8
    or b                                          ; $4F2B: $B0
    cp b                                          ; $4F2C: $B8
    ld b, b                                       ; $4F2D: $40
    ldh [rP1], a                                  ; $4F2E: $E0 $00
    rlca                                          ; $4F30: $07
    nop                                           ; $4F31: $00
    rrca                                          ; $4F32: $0F
    rlca                                          ; $4F33: $07
    rra                                           ; $4F34: $1F
    rrca                                          ; $4F35: $0F
    rra                                           ; $4F36: $1F
    ld c, $1E                                     ; $4F37: $0E $1E
    dec c                                         ; $4F39: $0D
    ld e, $05                                     ; $4F3A: $1E $05
    dec d                                         ; $4F3C: $15
    ld a, [bc]                                    ; $4F3D: $0A
    dec c                                         ; $4F3E: $0D
    ld b, $E0                                     ; $4F3F: $06 $E0
    nop                                           ; $4F41: $00
    ldh a, [$E0]                                  ; $4F42: $F0 $E0
    ld hl, sp-$10                                 ; $4F44: $F8 $F0
    ld hl, sp+$50                                 ; $4F46: $F8 $50
    ld e, b                                       ; $4F48: $58
    and b                                         ; $4F49: $A0
    db $10                                        ; $4F4A: $10
    ldh [$30], a                                  ; $4F4B: $E0 $30
    ret nz                                        ; $4F4D: $C0

jr_00B_4F4E:
    jr nc, jr_00B_4F10                            ; $4F4E: $30 $C0

    rlca                                          ; $4F50: $07
    nop                                           ; $4F51: $00
    rrca                                          ; $4F52: $0F
    rlca                                          ; $4F53: $07
    rra                                           ; $4F54: $1F
    rrca                                          ; $4F55: $0F
    rra                                           ; $4F56: $1F
    rrca                                          ; $4F57: $0F
    rra                                           ; $4F58: $1F
    inc c                                         ; $4F59: $0C
    inc e                                         ; $4F5A: $1C

jr_00B_4F5B:
    dec bc                                        ; $4F5B: $0B
    jr @+$09                                      ; $4F5C: $18 $07

    ld a, [hl+]                                   ; $4F5E: $2A
    dec d                                         ; $4F5F: $15
    ldh [rP1], a                                  ; $4F60: $E0 $00
    ldh a, [$E0]                                  ; $4F62: $F0 $E0
    ld hl, sp-$10                                 ; $4F64: $F8 $F0
    ld hl, sp-$10                                 ; $4F66: $F8 $F0
    ld hl, sp-$50                                 ; $4F68: $F8 $B0
    cp b                                          ; $4F6A: $B8
    ld d, b                                       ; $4F6B: $50
    jr jr_00B_4F4E                                ; $4F6C: $18 $E0

    ld d, h                                       ; $4F6E: $54
    xor b                                         ; $4F6F: $A8
    ld c, $03                                     ; $4F70: $0E $03
    rra                                           ; $4F72: $1F
    dec c                                         ; $4F73: $0D

jr_00B_4F74:
    ccf                                           ; $4F74: $3F
    ld e, $7F                                     ; $4F75: $1E $7F
    dec sp                                        ; $4F77: $3B
    ld a, a                                       ; $4F78: $7F
    scf                                           ; $4F79: $37
    ccf                                           ; $4F7A: $3F
    inc de                                        ; $4F7B: $13
    inc de                                        ; $4F7C: $13
    dec c                                         ; $4F7D: $0D
    inc de                                        ; $4F7E: $13
    dec c                                         ; $4F7F: $0D
    db $10                                        ; $4F80: $10
    ldh [$F0], a                                  ; $4F81: $E0 $F0
    ldh [$F0], a                                  ; $4F83: $E0 $F0
    nop                                           ; $4F85: $00
    ldh a, [$E0]                                  ; $4F86: $F0 $E0
    ldh a, [$C0]                                  ; $4F88: $F0 $C0
    ld hl, sp-$40                                 ; $4F8A: $F8 $C0
    ld hl, sp-$40                                 ; $4F8C: $F8 $C0
    ldh a, [$C0]                                  ; $4F8E: $F0 $C0
    ld e, b                                       ; $4F90: $58
    and b                                         ; $4F91: $A0
    jr nz, jr_00B_4F74                            ; $4F92: $20 $E0

    ldh a, [$C0]                                  ; $4F94: $F0 $C0
    ld hl, sp+$30                                 ; $4F96: $F8 $30
    ld hl, sp-$10                                 ; $4F98: $F8 $F0
    ld hl, sp-$30                                 ; $4F9A: $F8 $D0
    ret c                                         ; $4F9C: $D8

    and b                                         ; $4F9D: $A0
    ret z                                         ; $4F9E: $C8

    or b                                          ; $4F9F: $B0
    rrca                                          ; $4FA0: $0F
    nop                                           ; $4FA1: $00
    rrca                                          ; $4FA2: $0F
    rlca                                          ; $4FA3: $07
    rra                                           ; $4FA4: $1F
    rrca                                          ; $4FA5: $0F
    rra                                           ; $4FA6: $1F
    ld c, $3F                                     ; $4FA7: $0E $3F
    db $10                                        ; $4FA9: $10
    add hl, sp                                    ; $4FAA: $39
    ld b, $21                                     ; $4FAB: $06 $21
    ld e, $1F                                     ; $4FAD: $1E $1F
    nop                                           ; $4FAF: $00
    ldh [rP1], a                                  ; $4FB0: $E0 $00
    ldh [$C0], a                                  ; $4FB2: $E0 $C0
    ldh [rLCDC], a                                ; $4FB4: $E0 $40
    ldh a, [$C0]                                  ; $4FB6: $F0 $C0
    ret z                                         ; $4FB8: $C8

    jr nc, @+$0A                                  ; $4FB9: $30 $08

    ldh a, [$F0]                                  ; $4FBB: $F0 $F0
    nop                                           ; $4FBD: $00
    nop                                           ; $4FBE: $00
    nop                                           ; $4FBF: $00
    ld hl, sp+$00                                 ; $4FC0: $F8 $00
    ldh a, [$E0]                                  ; $4FC2: $F0 $E0
    ld hl, sp+$70                                 ; $4FC4: $F8 $70
    ld hl, sp+$40                                 ; $4FC6: $F8 $40
    ret z                                         ; $4FC8: $C8

    jr nc, @-$7A                                  ; $4FC9: $30 $84

    ld a, b                                       ; $4FCB: $78
    call nz, $F838                                ; $4FCC: $C4 $38 $F8
    nop                                           ; $4FCF: $00
    ldh [rP1], a                                  ; $4FD0: $E0 $00
    ldh a, [$E0]                                  ; $4FD2: $F0 $E0
    ld hl, sp-$10                                 ; $4FD4: $F8 $F0
    ld hl, sp-$10                                 ; $4FD6: $F8 $F0
    ld hl, sp-$10                                 ; $4FD8: $F8 $F0
    db $FC                                        ; $4FDA: $FC
    ldh a, [$FA]                                  ; $4FDB: $F0 $FA
    db $F4                                        ; $4FDD: $F4
    db $FC                                        ; $4FDE: $FC
    ldh [$03], a                                  ; $4FDF: $E0 $03
    nop                                           ; $4FE1: $00
    rlca                                          ; $4FE2: $07
    inc bc                                        ; $4FE3: $03
    rrca                                          ; $4FE4: $0F
    rlca                                          ; $4FE5: $07
    rra                                           ; $4FE6: $1F
    rrca                                          ; $4FE7: $0F
    rra                                           ; $4FE8: $1F
    rrca                                          ; $4FE9: $0F
    rra                                           ; $4FEA: $1F
    rrca                                          ; $4FEB: $0F
    rra                                           ; $4FEC: $1F
    rrca                                          ; $4FED: $0F
    rrca                                          ; $4FEE: $0F
    rlca                                          ; $4FEF: $07
    ldh a, [rP1]                                  ; $4FF0: $F0 $00
    ld hl, sp-$10                                 ; $4FF2: $F8 $F0
    db $FC                                        ; $4FF4: $FC
    ld hl, sp-$04                                 ; $4FF5: $F8 $FC
    ld hl, sp-$08                                 ; $4FF7: $F8 $F8
    ldh a, [$F8]                                  ; $4FF9: $F0 $F8
    ret nc                                        ; $4FFB: $D0

    ret nc                                        ; $4FFC: $D0

    and b                                         ; $4FFD: $A0
    ret nc                                        ; $4FFE: $D0

    ld h, b                                       ; $4FFF: $60
    ldh a, [$C0]                                  ; $5000: $F0 $C0
    ldh a, [rP1]                                  ; $5002: $F0 $00
    ld hl, sp-$10                                 ; $5004: $F8 $F0
    db $FC                                        ; $5006: $FC
    ld hl, sp-$04                                 ; $5007: $F8 $FC
    ld hl, sp-$04                                 ; $5009: $F8 $FC
    ldh [$F4], a                                  ; $500B: $E0 $F4
    add sp, -$08                                  ; $500D: $E8 $F8
    ldh [rTAC], a                                 ; $500F: $E0 $07
    nop                                           ; $5011: $00
    rlca                                          ; $5012: $07
    nop                                           ; $5013: $00
    rrca                                          ; $5014: $0F
    rlca                                          ; $5015: $07
    rra                                           ; $5016: $1F
    rrca                                          ; $5017: $0F
    rra                                           ; $5018: $1F
    rrca                                          ; $5019: $0F
    rra                                           ; $501A: $1F
    rlca                                          ; $501B: $07
    rrca                                          ; $501C: $0F
    rlca                                          ; $501D: $07
    rrca                                          ; $501E: $0F
    rlca                                          ; $501F: $07
    ld [hl], b                                    ; $5020: $70
    ldh [$E0], a                                  ; $5021: $E0 $E0
    nop                                           ; $5023: $00
    ldh [$C0], a                                  ; $5024: $E0 $C0
    ldh a, [$E0]                                  ; $5026: $F0 $E0
    ldh a, [$E0]                                  ; $5028: $F0 $E0
    ld hl, sp+$70                                 ; $502A: $F8 $70
    db $F4                                        ; $502C: $F4
    xor b                                         ; $502D: $A8
    db $E4                                        ; $502E: $E4
    ret c                                         ; $502F: $D8

    ldh a, [rP1]                                  ; $5030: $F0 $00
    ldh a, [$E0]                                  ; $5032: $F0 $E0
    ld hl, sp-$10                                 ; $5034: $F8 $F0
    ld hl, sp+$70                                 ; $5036: $F8 $70
    ld hl, sp+$60                                 ; $5038: $F8 $60
    db $F4                                        ; $503A: $F4
    ld [$708C], sp                                ; $503B: $08 $8C $70
    ld hl, sp+$00                                 ; $503E: $F8 $00
    rlca                                          ; $5040: $07
    nop                                           ; $5041: $00
    rlca                                          ; $5042: $07

jr_00B_5043:
    inc bc                                        ; $5043: $03
    rrca                                          ; $5044: $0F
    ld b, $0F                                     ; $5045: $06 $0F
    rlca                                          ; $5047: $07
    rrca                                          ; $5048: $0F
    ld bc, $0609                                  ; $5049: $01 $09 $06
    rrca                                          ; $504C: $0F
    nop                                           ; $504D: $00
    nop                                           ; $504E: $00
    nop                                           ; $504F: $00
    db $FC                                        ; $5050: $FC
    jr nz, jr_00B_5043                            ; $5051: $20 $F0

    ldh [$F8], a                                  ; $5053: $E0 $F8
    ldh a, [$F8]                                  ; $5055: $F0 $F8
    ld [hl], b                                    ; $5057: $70
    ld hl, sp+$60                                 ; $5058: $F8 $60
    db $F4                                        ; $505A: $F4
    ld [$708C], sp                                ; $505B: $08 $8C $70
    ld hl, sp+$00                                 ; $505E: $F8 $00

jr_00B_5060:
    nop                                           ; $5060: $00
    nop                                           ; $5061: $00
    rlca                                          ; $5062: $07
    nop                                           ; $5063: $00
    rrca                                          ; $5064: $0F
    rlca                                          ; $5065: $07
    rra                                           ; $5066: $1F
    rrca                                          ; $5067: $0F
    rra                                           ; $5068: $1F
    rrca                                          ; $5069: $0F
    rra                                           ; $506A: $1F
    inc c                                         ; $506B: $0C
    inc e                                         ; $506C: $1C
    dec bc                                        ; $506D: $0B
    jr @+$09                                      ; $506E: $18 $07

    nop                                           ; $5070: $00
    nop                                           ; $5071: $00
    ldh [rP1], a                                  ; $5072: $E0 $00
    ldh a, [$E0]                                  ; $5074: $F0 $E0

jr_00B_5076:
    ld hl, sp-$10                                 ; $5076: $F8 $F0
    ld hl, sp-$10                                 ; $5078: $F8 $F0
    ld hl, sp-$50                                 ; $507A: $F8 $B0
    cp b                                          ; $507C: $B8
    ld d, b                                       ; $507D: $50
    jr jr_00B_5060                                ; $507E: $18 $E0

    ld a, [hl+]                                   ; $5080: $2A
    dec d                                         ; $5081: $15
    ld a, [de]                                    ; $5082: $1A
    dec b                                         ; $5083: $05
    inc c                                         ; $5084: $0C
    rlca                                          ; $5085: $07
    rrca                                          ; $5086: $0F
    inc bc                                        ; $5087: $03
    rra                                           ; $5088: $1F
    inc c                                         ; $5089: $0C
    rra                                           ; $508A: $1F
    add hl, bc                                    ; $508B: $09
    add hl, de                                    ; $508C: $19
    ld b, $09                                     ; $508D: $06 $09
    ld b, $54                                     ; $508F: $06 $54
    xor b                                         ; $5091: $A8
    ld e, b                                       ; $5092: $58
    and b                                         ; $5093: $A0
    jr nc, jr_00B_5076                            ; $5094: $30 $E0

    ldh a, [$C0]                                  ; $5096: $F0 $C0
    ld hl, sp+$30                                 ; $5098: $F8 $30
    ld hl, sp-$10                                 ; $509A: $F8 $F0
    ld hl, sp-$30                                 ; $509C: $F8 $D0
    ld hl, sp-$40                                 ; $509E: $F8 $C0
    rrca                                          ; $50A0: $0F
    nop                                           ; $50A1: $00
    rlca                                          ; $50A2: $07
    inc bc                                        ; $50A3: $03
    rrca                                          ; $50A4: $0F
    rlca                                          ; $50A5: $07
    rrca                                          ; $50A6: $0F
    dec b                                         ; $50A7: $05
    rrca                                          ; $50A8: $0F
    ld b, $07                                     ; $50A9: $06 $07
    nop                                           ; $50AB: $00
    dec b                                         ; $50AC: $05
    ld [bc], a                                    ; $50AD: $02
    inc bc                                        ; $50AE: $03
    nop                                           ; $50AF: $00
    ld hl, sp+$00                                 ; $50B0: $F8 $00
    ldh a, [$E0]                                  ; $50B2: $F0 $E0
    ldh [$C0], a                                  ; $50B4: $E0 $C0
    ldh a, [$80]                                  ; $50B6: $F0 $80
    sub b                                         ; $50B8: $90
    ld h, b                                       ; $50B9: $60
    db $10                                        ; $50BA: $10
    ldh [rNR41], a                                ; $50BB: $E0 $20
    ret nz                                        ; $50BD: $C0

    ldh [rP1], a                                  ; $50BE: $E0 $00
    nop                                           ; $50C0: $00
    nop                                           ; $50C1: $00
    ldh [rP1], a                                  ; $50C2: $E0 $00
    ldh a, [$E0]                                  ; $50C4: $F0 $E0
    ld hl, sp-$10                                 ; $50C6: $F8 $F0
    ld hl, sp-$10                                 ; $50C8: $F8 $F0
    ld hl, sp-$10                                 ; $50CA: $F8 $F0
    db $FC                                        ; $50CC: $FC
    ldh a, [$FA]                                  ; $50CD: $F0 $FA
    db $F4                                        ; $50CF: $F4
    rra                                           ; $50D0: $1F
    inc bc                                        ; $50D1: $03
    rlca                                          ; $50D2: $07
    ld bc, $0007                                  ; $50D3: $01 $07 $00
    rrca                                          ; $50D6: $0F
    rlca                                          ; $50D7: $07
    rra                                           ; $50D8: $1F
    rrca                                          ; $50D9: $0F
    rra                                           ; $50DA: $1F
    dec bc                                        ; $50DB: $0B
    rra                                           ; $50DC: $1F
    inc bc                                        ; $50DD: $03
    rla                                           ; $50DE: $17
    dec bc                                        ; $50DF: $0B
    db $FC                                        ; $50E0: $FC
    ldh [$F0], a                                  ; $50E1: $E0 $F0
    ret nz                                        ; $50E3: $C0

    ldh a, [rP1]                                  ; $50E4: $F0 $00
    ld hl, sp-$10                                 ; $50E6: $F8 $F0
    db $FC                                        ; $50E8: $FC
    ld hl, sp-$04                                 ; $50E9: $F8 $FC
    add sp, -$04                                  ; $50EB: $E8 $FC
    ldh [$F8], a                                  ; $50ED: $E0 $F8
    ldh [rIF], a                                  ; $50EF: $E0 $0F
    nop                                           ; $50F1: $00
    rlca                                          ; $50F2: $07
    inc bc                                        ; $50F3: $03
    rrca                                          ; $50F4: $0F
    ld b, $0F                                     ; $50F5: $06 $0F
    rlca                                          ; $50F7: $07
    rrca                                          ; $50F8: $0F
    rlca                                          ; $50F9: $07
    rlca                                          ; $50FA: $07
    nop                                           ; $50FB: $00
    inc b                                         ; $50FC: $04
    inc bc                                        ; $50FD: $03
    rlca                                          ; $50FE: $07
    nop                                           ; $50FF: $00
    ldh a, [rP1]                                  ; $5100: $F0 $00
    ld hl, sp-$10                                 ; $5102: $F8 $F0
    ld hl, sp-$10                                 ; $5104: $F8 $F0
    ld hl, sp+$30                                 ; $5106: $F8 $30
    ldh a, [rP1]                                  ; $5108: $F0 $00
    sub b                                         ; $510A: $90
    ld h, b                                       ; $510B: $60
    sub b                                         ; $510C: $90
    ld h, b                                       ; $510D: $60
    ldh a, [rP1]                                  ; $510E: $F0 $00
    inc bc                                        ; $5110: $03
    nop                                           ; $5111: $00
    rlca                                          ; $5112: $07
    inc bc                                        ; $5113: $03
    rrca                                          ; $5114: $0F
    rlca                                          ; $5115: $07
    rra                                           ; $5116: $1F
    rrca                                          ; $5117: $0F
    rra                                           ; $5118: $1F
    rrca                                          ; $5119: $0F
    rrca                                          ; $511A: $0F
    rlca                                          ; $511B: $07
    rrca                                          ; $511C: $0F
    dec b                                         ; $511D: $05
    dec b                                         ; $511E: $05
    ld [bc], a                                    ; $511F: $02
    ldh [rP1], a                                  ; $5120: $E0 $00
    ldh a, [$E0]                                  ; $5122: $F0 $E0
    ld hl, sp-$10                                 ; $5124: $F8 $F0
    db $FC                                        ; $5126: $FC
    ld hl, sp-$08                                 ; $5127: $F8 $F8
    add b                                         ; $5129: $80
    sub b                                         ; $512A: $90
    ld h, b                                       ; $512B: $60
    ld d, b                                       ; $512C: $50
    and b                                         ; $512D: $A0
    ld d, b                                       ; $512E: $50
    and b                                         ; $512F: $A0
    dec b                                         ; $5130: $05
    ld [bc], a                                    ; $5131: $02
    ld [bc], a                                    ; $5132: $02
    ld bc, $0007                                  ; $5133: $01 $07 $00
    rlca                                          ; $5136: $07
    inc bc                                        ; $5137: $03
    rrca                                          ; $5138: $0F
    rlca                                          ; $5139: $07
    rra                                           ; $513A: $1F
    ld b, $2F                                     ; $513B: $06 $2F
    rla                                           ; $513D: $17
    cpl                                           ; $513E: $2F
    rla                                           ; $513F: $17
    ld d, b                                       ; $5140: $50
    and b                                         ; $5141: $A0
    sub b                                         ; $5142: $90
    ldh [$F0], a                                  ; $5143: $E0 $F0
    ld h, b                                       ; $5145: $60
    ldh [$80], a                                  ; $5146: $E0 $80
    ret nz                                        ; $5148: $C0

    add b                                         ; $5149: $80
    ldh [$80], a                                  ; $514A: $E0 $80
    sub b                                         ; $514C: $90
    ld h, b                                       ; $514D: $60
    sub b                                         ; $514E: $90

jr_00B_514F:
    ld h, b                                       ; $514F: $60
    add hl, hl                                    ; $5150: $29
    ld e, $7F                                     ; $5151: $1E $7F

jr_00B_5153:
    ld b, $FE                                     ; $5153: $06 $FE
    jr c, jr_00B_5153                             ; $5155: $38 $FC

    ld l, b                                       ; $5157: $68
    cp $2C                                        ; $5158: $FE $2C
    cp $24                                        ; $515A: $FE $24
    and $58                                       ; $515C: $E6 $58
    ld h, [hl]                                    ; $515E: $66
    ld e, b                                       ; $515F: $58
    dec b                                         ; $5160: $05
    ld [bc], a                                    ; $5161: $02
    ld [bc], a                                    ; $5162: $02
    ld bc, $0007                                  ; $5163: $01 $07 $00
    rrca                                          ; $5166: $0F
    inc bc                                        ; $5167: $03
    rrca                                          ; $5168: $0F
    rlca                                          ; $5169: $07
    rra                                           ; $516A: $1F
    dec b                                         ; $516B: $05
    daa                                           ; $516C: $27
    dec de                                        ; $516D: $1B
    daa                                           ; $516E: $27
    dec de                                        ; $516F: $1B
    ld d, b                                       ; $5170: $50
    and b                                         ; $5171: $A0
    sub b                                         ; $5172: $90
    ldh [$F0], a                                  ; $5173: $E0 $F0
    ld h, b                                       ; $5175: $60
    ldh [rP1], a                                  ; $5176: $E0 $00
    ret nz                                        ; $5178: $C0

    nop                                           ; $5179: $00
    ldh [rP1], a                                  ; $517A: $E0 $00
    ret nc                                        ; $517C: $D0

    jr nz, jr_00B_514F                            ; $517D: $20 $D0

    jr nz, jr_00B_51A0                            ; $517F: $20 $1F

    nop                                           ; $5181: $00
    rrca                                          ; $5182: $0F
    rlca                                          ; $5183: $07
    rra                                           ; $5184: $1F
    rrca                                          ; $5185: $0F
    ccf                                           ; $5186: $3F
    rra                                           ; $5187: $1F
    ld e, a                                       ; $5188: $5F
    inc l                                         ; $5189: $2C
    ld c, l                                       ; $518A: $4D
    ld [hl-], a                                   ; $518B: $32
    ld h, c                                       ; $518C: $61
    ld e, $7F                                     ; $518D: $1E $7F
    nop                                           ; $518F: $00
    ldh [rP1], a                                  ; $5190: $E0 $00
    ldh [$80], a                                  ; $5192: $E0 $80
    ld hl, sp-$80                                 ; $5194: $F8 $80
    db $E4                                        ; $5196: $E4
    jr @-$3A                                      ; $5197: $18 $C4

    cp b                                          ; $5199: $B8
    ret z                                         ; $519A: $C8

    or b                                          ; $519B: $B0
    cp b                                          ; $519C: $B8
    ld b, b                                       ; $519D: $40
    ldh [rP1], a                                  ; $519E: $E0 $00

jr_00B_51A0:
    rlca                                          ; $51A0: $07
    nop                                           ; $51A1: $00
    rrca                                          ; $51A2: $0F
    rlca                                          ; $51A3: $07
    rra                                           ; $51A4: $1F
    rrca                                          ; $51A5: $0F
    rra                                           ; $51A6: $1F
    rrca                                          ; $51A7: $0F
    ccf                                           ; $51A8: $3F
    db $10                                        ; $51A9: $10
    jr c, @+$09                                   ; $51AA: $38 $07

    jr nc, jr_00B_51BD                            ; $51AC: $30 $0F

    rra                                           ; $51AE: $1F
    nop                                           ; $51AF: $00
    ldh [rP1], a                                  ; $51B0: $E0 $00
    ldh [$C0], a                                  ; $51B2: $E0 $C0
    ldh [$C0], a                                  ; $51B4: $E0 $C0
    ldh [$80], a                                  ; $51B6: $E0 $80
    ret nc                                        ; $51B8: $D0

    jr nz, jr_00B_520B                            ; $51B9: $20 $50

    and b                                         ; $51BB: $A0
    ld [hl], b                                    ; $51BC: $70

jr_00B_51BD:
    add b                                         ; $51BD: $80
    ret nz                                        ; $51BE: $C0

    nop                                           ; $51BF: $00
    rra                                           ; $51C0: $1F
    nop                                           ; $51C1: $00
    rrca                                          ; $51C2: $0F
    rlca                                          ; $51C3: $07
    rra                                           ; $51C4: $1F
    rrca                                          ; $51C5: $0F
    ccf                                           ; $51C6: $3F
    dec bc                                        ; $51C7: $0B
    ld e, a                                       ; $51C8: $5F
    ld hl, $3C43                                  ; $51C9: $21 $43 $3C
    ld h, c                                       ; $51CC: $61
    ld e, $7F                                     ; $51CD: $1E $7F
    nop                                           ; $51CF: $00
    ldh [rP1], a                                  ; $51D0: $E0 $00
    ret nz                                        ; $51D2: $C0

    add b                                         ; $51D3: $80
    ld hl, sp-$40                                 ; $51D4: $F8 $C0
    db $E4                                        ; $51D6: $E4
    ret c                                         ; $51D7: $D8

    call nz, $C8B8                                ; $51D8: $C4 $B8 $C8
    or b                                          ; $51DB: $B0
    cp b                                          ; $51DC: $B8
    ld b, b                                       ; $51DD: $40
    ldh [rP1], a                                  ; $51DE: $E0 $00
    nop                                           ; $51E0: $00
    nop                                           ; $51E1: $00
    nop                                           ; $51E2: $00
    nop                                           ; $51E3: $00
    ld e, $00                                     ; $51E4: $1E $00
    ccf                                           ; $51E6: $3F
    inc e                                         ; $51E7: $1C
    ccf                                           ; $51E8: $3F
    dec de                                        ; $51E9: $1B
    ccf                                           ; $51EA: $3F
    rla                                           ; $51EB: $17
    rra                                           ; $51EC: $1F
    rlca                                          ; $51ED: $07
    rrca                                          ; $51EE: $0F
    rlca                                          ; $51EF: $07
    nop                                           ; $51F0: $00
    nop                                           ; $51F1: $00
    nop                                           ; $51F2: $00
    nop                                           ; $51F3: $00
    nop                                           ; $51F4: $00
    nop                                           ; $51F5: $00
    ld hl, sp+$00                                 ; $51F6: $F8 $00
    db $FC                                        ; $51F8: $FC
    ld hl, sp-$02                                 ; $51F9: $F8 $FE
    ld a, h                                       ; $51FB: $7C
    cp $BC                                        ; $51FC: $FE $BC
    rst $38                                       ; $51FE: $FF
    ld l, $00                                     ; $51FF: $2E $00
    nop                                           ; $5201: $00
    ld bc, $0300                                  ; $5202: $01 $00 $03
    ld bc, $0007                                  ; $5205: $01 $07 $00
    rrca                                          ; $5208: $0F
    rlca                                          ; $5209: $07
    rra                                           ; $520A: $1F

jr_00B_520B:
    rrca                                          ; $520B: $0F
    rra                                           ; $520C: $1F
    rrca                                          ; $520D: $0F
    rra                                           ; $520E: $1F
    dec c                                         ; $520F: $0D
    nop                                           ; $5210: $00
    nop                                           ; $5211: $00
    ret nz                                        ; $5212: $C0

    nop                                           ; $5213: $00
    ldh [$C0], a                                  ; $5214: $E0 $C0
    ldh a, [rNR41]                                ; $5216: $F0 $20
    ldh a, [$E0]                                  ; $5218: $F0 $E0
    ld hl, sp-$10                                 ; $521A: $F8 $F0
    ld hl, sp-$10                                 ; $521C: $F8 $F0
    ld hl, sp+$30                                 ; $521E: $F8 $30
    nop                                           ; $5220: $00
    nop                                           ; $5221: $00
    ld bc, $0700                                  ; $5222: $01 $00 $07
    ld bc, $050F                                  ; $5225: $01 $0F $05
    rra                                           ; $5228: $1F
    dec c                                         ; $5229: $0D
    rra                                           ; $522A: $1F
    ld c, $1F                                     ; $522B: $0E $1F
    rrca                                          ; $522D: $0F
    rra                                           ; $522E: $1F
    rrca                                          ; $522F: $0F
    nop                                           ; $5230: $00
    nop                                           ; $5231: $00
    ret nz                                        ; $5232: $C0

    nop                                           ; $5233: $00
    ldh a, [$C0]                                  ; $5234: $F0 $C0
    ldh a, [$C0]                                  ; $5236: $F0 $C0
    ld hl, sp-$30                                 ; $5238: $F8 $D0
    ld hl, sp+$30                                 ; $523A: $F8 $30
    ld hl, sp-$10                                 ; $523C: $F8 $F0
    ld hl, sp-$10                                 ; $523E: $F8 $F0
    nop                                           ; $5240: $00
    nop                                           ; $5241: $00
    ld c, $00                                     ; $5242: $0E $00
    rra                                           ; $5244: $1F
    ld c, $1F                                     ; $5245: $0E $1F
    ld c, $1F                                     ; $5247: $0E $1F
    dec c                                         ; $5249: $0D
    rrca                                          ; $524A: $0F
    inc bc                                        ; $524B: $03
    rrca                                          ; $524C: $0F
    rlca                                          ; $524D: $07
    rrca                                          ; $524E: $0F
    rlca                                          ; $524F: $07
    nop                                           ; $5250: $00
    nop                                           ; $5251: $00
    db $FC                                        ; $5252: $FC
    nop                                           ; $5253: $00
    cp $FC                                        ; $5254: $FE $FC
    rst $38                                       ; $5256: $FF
    cp $FF                                        ; $5257: $FE $FF
    cp $FF                                        ; $5259: $FE $FF
    ld a, [$F2FF]                                 ; $525B: $FA $FF $F2
    or $E8                                        ; $525E: $F6 $E8
    rrca                                          ; $5260: $0F
    ld [bc], a                                    ; $5261: $02

jr_00B_5262:
    ld a, [bc]                                    ; $5262: $0A
    dec b                                         ; $5263: $05
    ld b, $01                                     ; $5264: $06 $01
    rlca                                          ; $5266: $07
    ld [bc], a                                    ; $5267: $02
    rrca                                          ; $5268: $0F
    rlca                                          ; $5269: $07
    rra                                           ; $526A: $1F
    rrca                                          ; $526B: $0F
    rra                                           ; $526C: $1F
    dec c                                         ; $526D: $0D
    rra                                           ; $526E: $1F
    dec bc                                        ; $526F: $0B
    cpl                                           ; $5270: $2F
    sub $DF                                       ; $5271: $D6 $DF
    ld a, [$A856]                                 ; $5273: $FA $56 $A8
    ld [$F0F0], sp                                ; $5276: $08 $F0 $F0
    nop                                           ; $5279: $00
    ldh [$C0], a                                  ; $527A: $E0 $C0
    ldh [$C0], a                                  ; $527C: $E0 $C0
    ret nz                                        ; $527E: $C0

    nop                                           ; $527F: $00
    dec e                                         ; $5280: $1D
    ld a, [bc]                                    ; $5281: $0A
    ld l, $17                                     ; $5282: $2E $17
    ld a, [de]                                    ; $5284: $1A
    dec b                                         ; $5285: $05
    inc c                                         ; $5286: $0C
    inc bc                                        ; $5287: $03
    rrca                                          ; $5288: $0F
    nop                                           ; $5289: $00
    rra                                           ; $528A: $1F
    rrca                                          ; $528B: $0F
    rra                                           ; $528C: $1F
    dec c                                         ; $528D: $0D
    rra                                           ; $528E: $1F
    add hl, bc                                    ; $528F: $09
    jr c, jr_00B_5262                             ; $5290: $38 $D0

    ld [hl], h                                    ; $5292: $74
    add sp, $58                                   ; $5293: $E8 $58
    and b                                         ; $5295: $A0
    jr nc, @-$3E                                  ; $5296: $30 $C0

    ldh a, [rP1]                                  ; $5298: $F0 $00
    ld hl, sp-$10                                 ; $529A: $F8 $F0
    ld hl, sp-$50                                 ; $529C: $F8 $B0
    ld hl, sp-$70                                 ; $529E: $F8 $90
    cpl                                           ; $52A0: $2F
    rla                                           ; $52A1: $17
    rra                                           ; $52A2: $1F
    rlca                                          ; $52A3: $07
    rrca                                          ; $52A4: $0F
    nop                                           ; $52A5: $00
    rrca                                          ; $52A6: $0F
    rlca                                          ; $52A7: $07
    rra                                           ; $52A8: $1F
    rrca                                          ; $52A9: $0F
    rra                                           ; $52AA: $1F
    rrca                                          ; $52AB: $0F
    rra                                           ; $52AC: $1F
    rrca                                          ; $52AD: $0F
    rra                                           ; $52AE: $1F
    ld c, $F4                                     ; $52AF: $0E $F4
    add sp, -$08                                  ; $52B1: $E8 $F8
    ldh [$F0], a                                  ; $52B3: $E0 $F0
    nop                                           ; $52B5: $00
    ldh a, [$E0]                                  ; $52B6: $F0 $E0
    ld hl, sp-$10                                 ; $52B8: $F8 $F0

jr_00B_52BA:
    ld hl, sp-$10                                 ; $52BA: $F8 $F0
    ld hl, sp-$10                                 ; $52BC: $F8 $F0
    ld hl, sp+$30                                 ; $52BE: $F8 $30
    rlca                                          ; $52C0: $07
    inc bc                                        ; $52C1: $03
    inc bc                                        ; $52C2: $03
    nop                                           ; $52C3: $00
    rlca                                          ; $52C4: $07

jr_00B_52C5:
    inc bc                                        ; $52C5: $03
    rlca                                          ; $52C6: $07
    inc bc                                        ; $52C7: $03
    rlca                                          ; $52C8: $07
    inc bc                                        ; $52C9: $03
    inc bc                                        ; $52CA: $03
    ld bc, $0001                                  ; $52CB: $01 $01 $00
    inc bc                                        ; $52CE: $03
    ld bc, $D8E4                                  ; $52CF: $01 $E4 $D8
    ret z                                         ; $52D2: $C8

    jr nc, jr_00B_52C5                            ; $52D3: $30 $F0

    ret nz                                        ; $52D5: $C0

    ldh a, [$E0]                                  ; $52D6: $F0 $E0
    ldh a, [$E0]                                  ; $52D8: $F0 $E0
    ldh a, [$60]                                  ; $52DA: $F0 $60
    ldh a, [$60]                                  ; $52DC: $F0 $60
    ldh [$80], a                                  ; $52DE: $E0 $80
    rra                                           ; $52E0: $1F
    dec c                                         ; $52E1: $0D
    dec e                                         ; $52E2: $1D
    ld a, [bc]                                    ; $52E3: $0A
    ld l, $17                                     ; $52E4: $2E $17
    ld a, [de]                                    ; $52E6: $1A
    dec b                                         ; $52E7: $05
    inc c                                         ; $52E8: $0C
    inc bc                                        ; $52E9: $03
    rlca                                          ; $52EA: $07
    nop                                           ; $52EB: $00
    rrca                                          ; $52EC: $0F
    dec b                                         ; $52ED: $05
    rrca                                          ; $52EE: $0F
    ld b, $F8                                     ; $52EF: $06 $F8
    jr nc, jr_00B_532B                            ; $52F1: $30 $38

    ret nc                                        ; $52F3: $D0

    ld [hl], h                                    ; $52F4: $74
    add sp, $58                                   ; $52F5: $E8 $58
    and b                                         ; $52F7: $A0
    jr nc, jr_00B_52BA                            ; $52F8: $30 $C0

    ldh [rP1], a                                  ; $52FA: $E0 $00
    ldh a, [$A0]                                  ; $52FC: $F0 $A0
    ldh a, [$A0]                                  ; $52FE: $F0 $A0
    rra                                           ; $5300: $1F
    rrca                                          ; $5301: $0F
    cpl                                           ; $5302: $2F
    rla                                           ; $5303: $17
    rra                                           ; $5304: $1F
    rlca                                          ; $5305: $07
    rlca                                          ; $5306: $07
    nop                                           ; $5307: $00
    rrca                                          ; $5308: $0F
    rlca                                          ; $5309: $07
    rrca                                          ; $530A: $0F
    rlca                                          ; $530B: $07
    rrca                                          ; $530C: $0F
    rlca                                          ; $530D: $07
    rrca                                          ; $530E: $0F
    dec b                                         ; $530F: $05
    ld hl, sp-$10                                 ; $5310: $F8 $F0
    db $F4                                        ; $5312: $F4
    add sp, -$08                                  ; $5313: $E8 $F8
    ldh [$E0], a                                  ; $5315: $E0 $E0
    nop                                           ; $5317: $00
    ldh a, [$E0]                                  ; $5318: $F0 $E0
    ldh a, [$E0]                                  ; $531A: $F0 $E0
    ldh a, [$E0]                                  ; $531C: $F0 $E0
    ldh a, [$E0]                                  ; $531E: $F0 $E0
    rrca                                          ; $5320: $0F
    nop                                           ; $5321: $00
    rrca                                          ; $5322: $0F
    rlca                                          ; $5323: $07
    rrca                                          ; $5324: $0F
    rlca                                          ; $5325: $07
    rra                                           ; $5326: $1F
    rrca                                          ; $5327: $0F
    rra                                           ; $5328: $1F
    inc c                                         ; $5329: $0C
    rra                                           ; $532A: $1F

jr_00B_532B:
    ld bc, $0F1F                                  ; $532B: $01 $1F $0F
    rrca                                          ; $532E: $0F
    nop                                           ; $532F: $00
    ret nz                                        ; $5330: $C0

    add b                                         ; $5331: $80
    ldh [$C0], a                                  ; $5332: $E0 $C0
    ldh [$C0], a                                  ; $5334: $E0 $C0
    ldh a, [$80]                                  ; $5336: $F0 $80
    ld hl, sp+$30                                 ; $5338: $F8 $30
    ld hl, sp-$50                                 ; $533A: $F8 $B0
    ldh a, [$80]                                  ; $533C: $F0 $80
    ret nz                                        ; $533E: $C0

    nop                                           ; $533F: $00
    ldh a, [$60]                                  ; $5340: $F0 $60
    ldh a, [$E0]                                  ; $5342: $F0 $E0
    ldh a, [$E0]                                  ; $5344: $F0 $E0
    ldh a, [$C0]                                  ; $5346: $F0 $C0
    ld hl, sp+$30                                 ; $5348: $F8 $30
    db $FC                                        ; $534A: $FC
    ld a, b                                       ; $534B: $78
    db $FC                                        ; $534C: $FC
    jr c, @-$06                                   ; $534D: $38 $F8

    nop                                           ; $534F: $00
    ldh a, [$C0]                                  ; $5350: $F0 $C0
    ldh a, [$E0]                                  ; $5352: $F0 $E0
    ldh a, [$E0]                                  ; $5354: $F0 $E0
    ldh a, [$E0]                                  ; $5356: $F0 $E0
    ld hl, sp-$20                                 ; $5358: $F8 $E0
    db $FC                                        ; $535A: $FC
    jr @-$02                                      ; $535B: $18 $FC

    ld [hl], b                                    ; $535D: $70
    ld hl, sp+$00                                 ; $535E: $F8 $00
    db $FC                                        ; $5360: $FC
    ld a, b                                       ; $5361: $78
    db $FC                                        ; $5362: $FC
    ld a, b                                       ; $5363: $78
    db $FC                                        ; $5364: $FC
    ld a, b                                       ; $5365: $78
    db $FC                                        ; $5366: $FC
    ld a, b                                       ; $5367: $78
    cp $38                                        ; $5368: $FE $38
    rst $38                                       ; $536A: $FF
    ld b, [hl]                                    ; $536B: $46
    rst $38                                       ; $536C: $FF
    inc e                                         ; $536D: $1C
    ld a, $00                                     ; $536E: $3E $00
    cp $60                                        ; $5370: $FE $60
    ld a, [hl]                                    ; $5372: $7E
    inc e                                         ; $5373: $1C
    ld a, [hl]                                    ; $5374: $7E
    inc a                                         ; $5375: $3C
    ld a, [hl]                                    ; $5376: $7E
    jr c, jr_00B_53F8                             ; $5377: $38 $7F

    ld [hl], $7F                                  ; $5379: $36 $7F
    ld c, $7E                                     ; $537B: $0E $7E
    inc l                                         ; $537D: $2C
    ld a, $00                                     ; $537E: $3E $00
    cp $2C                                        ; $5380: $FE $2C
    ld a, [hl]                                    ; $5382: $7E
    jr nc, jr_00B_5403                            ; $5383: $30 $7E

    inc a                                         ; $5385: $3C
    ld a, [hl]                                    ; $5386: $7E
    jr nz, jr_00B_5405                            ; $5387: $20 $7C

    jr jr_00B_53C9                                ; $5389: $18 $3E

    inc e                                         ; $538B: $1C
    ld a, [hl]                                    ; $538C: $7E
    inc l                                         ; $538D: $2C
    ld a, $00                                     ; $538E: $3E $00
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    dec c                                         ; $5392: $0D
    nop                                           ; $5393: $00

jr_00B_5394:
    rra                                           ; $5394: $1F
    inc c                                         ; $5395: $0C
    ccf                                           ; $5396: $3F
    dec de                                        ; $5397: $1B
    rra                                           ; $5398: $1F
    dec bc                                        ; $5399: $0B
    rrca                                          ; $539A: $0F
    rlca                                          ; $539B: $07
    rrca                                          ; $539C: $0F
    inc b                                         ; $539D: $04
    inc b                                         ; $539E: $04
    inc bc                                        ; $539F: $03
    nop                                           ; $53A0: $00
    nop                                           ; $53A1: $00
    ld hl, sp+$00                                 ; $53A2: $F8 $00
    db $FC                                        ; $53A4: $FC
    ld hl, sp-$02                                 ; $53A5: $F8 $FE
    ld hl, sp-$02                                 ; $53A7: $F8 $FE
    db $FC                                        ; $53A9: $FC
    cp $D4                                        ; $53AA: $FE $D4
    call c, $E8A0                                 ; $53AC: $DC $A0 $E8
    ld [hl], b                                    ; $53AF: $70
    inc b                                         ; $53B0: $04
    inc bc                                        ; $53B1: $03
    ld [bc], a                                    ; $53B2: $02
    ld bc, $0003                                  ; $53B3: $01 $03 $00
    rlca                                          ; $53B6: $07
    inc bc                                        ; $53B7: $03
    rrca                                          ; $53B8: $0F
    rlca                                          ; $53B9: $07
    rrca                                          ; $53BA: $0F
    rlca                                          ; $53BB: $07
    rrca                                          ; $53BC: $0F
    dec b                                         ; $53BD: $05
    rlca                                          ; $53BE: $07
    nop                                           ; $53BF: $00
    add sp, $70                                   ; $53C0: $E8 $70
    jr z, jr_00B_5394                             ; $53C2: $28 $D0

jr_00B_53C4:
    ld [$F0F0], sp                                ; $53C4: $08 $F0 $F0
    nop                                           ; $53C7: $00
    ret nz                                        ; $53C8: $C0

jr_00B_53C9:
    add b                                         ; $53C9: $80
    ldh [$C0], a                                  ; $53CA: $E0 $C0
    ldh [$C0], a                                  ; $53CC: $E0 $C0
    ret nz                                        ; $53CE: $C0

    add b                                         ; $53CF: $80
    ld b, l                                       ; $53D0: $45
    ld a, [hl-]                                   ; $53D1: $3A
    ld h, c                                       ; $53D2: $61
    ld e, $FE                                     ; $53D3: $1E $FE
    ld h, b                                       ; $53D5: $60
    ld hl, sp+$70                                 ; $53D6: $F8 $70
    ld hl, sp+$60                                 ; $53D8: $F8 $60
    ld hl, sp+$70                                 ; $53DA: $F8 $70
    ld hl, sp+$70                                 ; $53DC: $F8 $70
    ldh a, [rP1]                                  ; $53DE: $F0 $00
    inc b                                         ; $53E0: $04
    inc bc                                        ; $53E1: $03
    ld [bc], a                                    ; $53E2: $02
    ld bc, $0003                                  ; $53E3: $01 $03 $00
    rlca                                          ; $53E6: $07
    inc bc                                        ; $53E7: $03
    rrca                                          ; $53E8: $0F
    rlca                                          ; $53E9: $07
    rrca                                          ; $53EA: $0F
    rlca                                          ; $53EB: $07
    rrca                                          ; $53EC: $0F
    rlca                                          ; $53ED: $07
    rrca                                          ; $53EE: $0F
    ld b, $E8                                     ; $53EF: $06 $E8
    ld [hl], b                                    ; $53F1: $70
    jr z, jr_00B_53C4                             ; $53F2: $28 $D0

    ld [$F0F0], sp                                ; $53F4: $08 $F0 $F0
    nop                                           ; $53F7: $00

jr_00B_53F8:
    ret nz                                        ; $53F8: $C0

    add b                                         ; $53F9: $80
    ldh [$80], a                                  ; $53FA: $E0 $80
    ldh [$80], a                                  ; $53FC: $E0 $80
    ldh [$80], a                                  ; $53FE: $E0 $80
    rlca                                          ; $5400: $07
    inc bc                                        ; $5401: $03
    rrca                                          ; $5402: $0F

jr_00B_5403:
    rlca                                          ; $5403: $07
    rra                                           ; $5404: $1F

jr_00B_5405:
    rrca                                          ; $5405: $0F
    ccf                                           ; $5406: $3F
    rra                                           ; $5407: $1F
    ld a, a                                       ; $5408: $7F
    jr z, jr_00B_548A                             ; $5409: $28 $7F

    ld [hl], $7F                                  ; $540B: $36 $7F
    ld e, $7F                                     ; $540D: $1E $7F
    nop                                           ; $540F: $00
    add b                                         ; $5410: $80
    nop                                           ; $5411: $00
    add b                                         ; $5412: $80
    nop                                           ; $5413: $00
    ldh a, [$80]                                  ; $5414: $F0 $80
    ld hl, sp-$50                                 ; $5416: $F8 $B0
    ld hl, sp+$70                                 ; $5418: $F8 $70
    ldh a, [$E0]                                  ; $541A: $F0 $E0
    ldh a, [$C0]                                  ; $541C: $F0 $C0
    ldh [rP1], a                                  ; $541E: $E0 $00
    ld a, b                                       ; $5420: $78
    jr nc, @-$06                                  ; $5421: $30 $F8

    ld [hl], b                                    ; $5423: $70
    ld hl, sp+$70                                 ; $5424: $F8 $70
    db $FC                                        ; $5426: $FC
    ld [hl], b                                    ; $5427: $70
    cp $40                                        ; $5428: $FE $40
    rst $38                                       ; $542A: $FF
    inc a                                         ; $542B: $3C
    rst $38                                       ; $542C: $FF
    ld a, $7F                                     ; $542D: $3E $7F
    nop                                           ; $542F: $00
    rrca                                          ; $5430: $0F
    inc b                                         ; $5431: $04
    rlca                                          ; $5432: $07
    inc bc                                        ; $5433: $03
    rrca                                          ; $5434: $0F
    rlca                                          ; $5435: $07
    rra                                           ; $5436: $1F
    rrca                                          ; $5437: $0F

Call_00B_5438:
    rra                                           ; $5438: $1F
    ld [$173F], sp                                ; $5439: $08 $3F $17
    ccf                                           ; $543C: $3F
    rrca                                          ; $543D: $0F
    rra                                           ; $543E: $1F
    nop                                           ; $543F: $00
    ret nz                                        ; $5440: $C0

    nop                                           ; $5441: $00
    ret nz                                        ; $5442: $C0

jr_00B_5443:
    add b                                         ; $5443: $80
    ld hl, sp-$40                                 ; $5444: $F8 $C0
    db $FC                                        ; $5446: $FC
    ret c                                         ; $5447: $D8

    db $FC                                        ; $5448: $FC
    jr c, jr_00B_5443                             ; $5449: $38 $F8

    ld [hl], b                                    ; $544B: $70
    ld hl, sp+$60                                 ; $544C: $F8 $60
    ldh [rP1], a                                  ; $544E: $E0 $00
    nop                                           ; $5450: $00
    nop                                           ; $5451: $00
    rlca                                          ; $5452: $07
    nop                                           ; $5453: $00
    add hl, sp                                    ; $5454: $39
    rlca                                          ; $5455: $07
    ld a, b                                       ; $5456: $78
    scf                                           ; $5457: $37
    ld a, h                                       ; $5458: $7C
    dec sp                                        ; $5459: $3B
    ld a, h                                       ; $545A: $7C
    dec sp                                        ; $545B: $3B
    ld a, h                                       ; $545C: $7C
    dec hl                                        ; $545D: $2B
    cpl                                           ; $545E: $2F
    rla                                           ; $545F: $17
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    ret nz                                        ; $5462: $C0

    nop                                           ; $5463: $00
    and b                                         ; $5464: $A0
    ret nz                                        ; $5465: $C0

    sbc b                                         ; $5466: $98
    ldh [rNR32], a                                ; $5467: $E0 $1C
    add sp, $1C                                   ; $5469: $E8 $1C
    add sp, $18                                   ; $546B: $E8 $18
    ldh [$78], a                                  ; $546D: $E0 $78
    ldh a, [rP1]                                  ; $546F: $F0 $00
    nop                                           ; $5471: $00
    rlca                                          ; $5472: $07
    nop                                           ; $5473: $00
    add hl, bc                                    ; $5474: $09
    rlca                                          ; $5475: $07
    ld sp, $710F                                  ; $5476: $31 $0F $71
    cpl                                           ; $5479: $2F
    ldh a, [$6F]                                  ; $547A: $F0 $6F
    ldh a, [$6F]                                  ; $547C: $F0 $6F
    ld a, [hl]                                    ; $547E: $7E
    cpl                                           ; $547F: $2F
    nop                                           ; $5480: $00
    nop                                           ; $5481: $00
    ldh [rP1], a                                  ; $5482: $E0 $00
    sub b                                         ; $5484: $90
    ldh [$8C], a                                  ; $5485: $E0 $8C
    ldh a, [$0E]                                  ; $5487: $F0 $0E
    db $F4                                        ; $5489: $F4

jr_00B_548A:
    ccf                                           ; $548A: $3F
    adc $FF                                       ; $548B: $CE $FF
    ld a, $FE                                     ; $548D: $3E $FE
    db $FC                                        ; $548F: $FC
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    rlca                                          ; $5492: $07
    nop                                           ; $5493: $00
    dec bc                                        ; $5494: $0B
    rlca                                          ; $5495: $07
    jr jr_00B_549F                                ; $5496: $18 $07

    ccf                                           ; $5498: $3F
    jr jr_00B_551A                                ; $5499: $18 $7F

    ccf                                           ; $549B: $3F
    ld a, a                                       ; $549C: $7F
    ccf                                           ; $549D: $3F
    ccf                                           ; $549E: $3F

jr_00B_549F:
    rrca                                          ; $549F: $0F
    nop                                           ; $54A0: $00
    nop                                           ; $54A1: $00
    ldh a, [rP1]                                  ; $54A2: $F0 $00
    ld [$E8F0], sp                                ; $54A4: $08 $F0 $E8
    db $10                                        ; $54A7: $10
    ld hl, sp-$20                                 ; $54A8: $F8 $E0
    db $FC                                        ; $54AA: $FC
    ldh a, [$FE]                                  ; $54AB: $F0 $FE
    call nz, $94EE                                ; $54AD: $C4 $EE $94
    rra                                           ; $54B0: $1F
    rrca                                          ; $54B1: $0F
    inc a                                         ; $54B2: $3C
    inc de                                        ; $54B3: $13
    ld a, a                                       ; $54B4: $7F
    inc bc                                        ; $54B5: $03
    ld a, a                                       ; $54B6: $7F
    inc bc                                        ; $54B7: $03
    ld a, a                                       ; $54B8: $7F
    ld bc, $017F                                  ; $54B9: $01 $7F $01
    ccf                                           ; $54BC: $3F
    nop                                           ; $54BD: $00
    rra                                           ; $54BE: $1F
    nop                                           ; $54BF: $00
    ld a, h                                       ; $54C0: $7C
    ld hl, sp+$1C                                 ; $54C1: $F8 $1C
    add sp, -$18                                  ; $54C3: $E8 $E8
    ret nz                                        ; $54C5: $C0

    ldh a, [$E0]                                  ; $54C6: $F0 $E0
    ldh a, [$E0]                                  ; $54C8: $F0 $E0
    ldh a, [$C0]                                  ; $54CA: $F0 $C0
    ldh [rP1], a                                  ; $54CC: $E0 $00
    ldh [rP1], a                                  ; $54CE: $E0 $00
    ld a, $1F                                     ; $54D0: $3E $1F
    ld a, h                                       ; $54D2: $7C
    inc hl                                        ; $54D3: $23
    cpl                                           ; $54D4: $2F
    inc bc                                        ; $54D5: $03
    rra                                           ; $54D6: $1F
    inc bc                                        ; $54D7: $03
    rra                                           ; $54D8: $1F
    ld bc, $011F                                  ; $54D9: $01 $1F $01
    rra                                           ; $54DC: $1F
    nop                                           ; $54DD: $00
    rra                                           ; $54DE: $1F
    nop                                           ; $54DF: $00
    ccf                                           ; $54E0: $3F
    rra                                           ; $54E1: $1F
    ld a, a                                       ; $54E2: $7F
    daa                                           ; $54E3: $27
    cpl                                           ; $54E4: $2F
    inc bc                                        ; $54E5: $03
    rra                                           ; $54E6: $1F
    inc bc                                        ; $54E7: $03
    rra                                           ; $54E8: $1F
    ld bc, $011F                                  ; $54E9: $01 $1F $01
    rra                                           ; $54EC: $1F
    nop                                           ; $54ED: $00
    rra                                           ; $54EE: $1F
    nop                                           ; $54EF: $00
    rra                                           ; $54F0: $1F
    rrca                                          ; $54F1: $0F
    rra                                           ; $54F2: $1F
    ld c, $1F                                     ; $54F3: $0E $1F
    ld b, $1F                                     ; $54F5: $06 $1F
    ld b, $0F                                     ; $54F7: $06 $0F
    nop                                           ; $54F9: $00
    rrca                                          ; $54FA: $0F
    nop                                           ; $54FB: $00
    rrca                                          ; $54FC: $0F
    nop                                           ; $54FD: $00
    rrca                                          ; $54FE: $0F
    nop                                           ; $54FF: $00
    sbc h                                         ; $5500: $9C
    ld l, b                                       ; $5501: $68
    db $FC                                        ; $5502: $FC
    ld [$08FC], sp                                ; $5503: $08 $FC $08
    db $FC                                        ; $5506: $FC
    nop                                           ; $5507: $00
    ld hl, sp+$00                                 ; $5508: $F8 $00
    ld hl, sp+$00                                 ; $550A: $F8 $00
    ld hl, sp+$00                                 ; $550C: $F8 $00
    ld hl, sp+$00                                 ; $550E: $F8 $00
    ld a, [hl]                                    ; $5510: $7E
    cpl                                           ; $5511: $2F
    ld a, $1F                                     ; $5512: $3E $1F
    ld a, h                                       ; $5514: $7C
    inc hl                                        ; $5515: $23
    cpl                                           ; $5516: $2F
    inc bc                                        ; $5517: $03
    rra                                           ; $5518: $1F
    inc bc                                        ; $5519: $03

jr_00B_551A:
    rra                                           ; $551A: $1F
    ld bc, $011F                                  ; $551B: $01 $1F $01
    rra                                           ; $551E: $1F
    nop                                           ; $551F: $00
    ld a, a                                       ; $5520: $7F
    ccf                                           ; $5521: $3F
    ccf                                           ; $5522: $3F
    rra                                           ; $5523: $1F
    ld a, a                                       ; $5524: $7F
    daa                                           ; $5525: $27
    cpl                                           ; $5526: $2F
    inc bc                                        ; $5527: $03
    rra                                           ; $5528: $1F
    inc bc                                        ; $5529: $03
    rra                                           ; $552A: $1F
    ld bc, $011F                                  ; $552B: $01 $1F $01
    rra                                           ; $552E: $1F
    nop                                           ; $552F: $00
    rra                                           ; $5530: $1F
    nop                                           ; $5531: $00
    rra                                           ; $5532: $1F
    nop                                           ; $5533: $00
    rra                                           ; $5534: $1F
    nop                                           ; $5535: $00
    rra                                           ; $5536: $1F
    nop                                           ; $5537: $00
    ccf                                           ; $5538: $3F
    nop                                           ; $5539: $00
    ccf                                           ; $553A: $3F
    ld b, $3F                                     ; $553B: $06 $3F
    ld e, $1F                                     ; $553D: $1E $1F
    nop                                           ; $553F: $00
    ldh [rP1], a                                  ; $5540: $E0 $00
    ldh [rP1], a                                  ; $5542: $E0 $00
    ldh a, [rP1]                                  ; $5544: $F0 $00
    ldh a, [rP1]                                  ; $5546: $F0 $00
    ld hl, sp+$30                                 ; $5548: $F8 $30
    ld hl, sp-$10                                 ; $554A: $F8 $F0
    ldh a, [rP1]                                  ; $554C: $F0 $00
    nop                                           ; $554E: $00
    nop                                           ; $554F: $00
    rra                                           ; $5550: $1F
    nop                                           ; $5551: $00
    rra                                           ; $5552: $1F
    nop                                           ; $5553: $00
    rra                                           ; $5554: $1F
    nop                                           ; $5555: $00
    ccf                                           ; $5556: $3F
    nop                                           ; $5557: $00
    ccf                                           ; $5558: $3F
    inc c                                         ; $5559: $0C
    ccf                                           ; $555A: $3F
    ld e, $3F                                     ; $555B: $1E $3F
    inc e                                         ; $555D: $1C
    rra                                           ; $555E: $1F
    nop                                           ; $555F: $00
    ld hl, sp+$00                                 ; $5560: $F8 $00
    ld hl, sp+$00                                 ; $5562: $F8 $00
    ld hl, sp+$00                                 ; $5564: $F8 $00
    ld hl, sp+$00                                 ; $5566: $F8 $00
    ld hl, sp+$00                                 ; $5568: $F8 $00
    db $FC                                        ; $556A: $FC
    ld [$70FC], sp                                ; $556B: $08 $FC $70
    ld hl, sp+$00                                 ; $556E: $F8 $00
    rrca                                          ; $5570: $0F
    nop                                           ; $5571: $00
    rra                                           ; $5572: $1F
    nop                                           ; $5573: $00
    rra                                           ; $5574: $1F
    nop                                           ; $5575: $00
    rra                                           ; $5576: $1F
    nop                                           ; $5577: $00
    rra                                           ; $5578: $1F
    nop                                           ; $5579: $00
    rrca                                          ; $557A: $0F
    ld b, $0F                                     ; $557B: $06 $0F
    nop                                           ; $557D: $00
    nop                                           ; $557E: $00
    nop                                           ; $557F: $00
    db $FC                                        ; $5580: $FC
    nop                                           ; $5581: $00
    db $FC                                        ; $5582: $FC
    nop                                           ; $5583: $00
    db $FC                                        ; $5584: $FC
    nop                                           ; $5585: $00
    db $FC                                        ; $5586: $FC
    nop                                           ; $5587: $00
    db $FC                                        ; $5588: $FC
    nop                                           ; $5589: $00
    db $FC                                        ; $558A: $FC
    ld [$70FC], sp                                ; $558B: $08 $FC $70
    ld hl, sp+$00                                 ; $558E: $F8 $00
    ccf                                           ; $5590: $3F
    nop                                           ; $5591: $00
    ccf                                           ; $5592: $3F
    nop                                           ; $5593: $00
    ccf                                           ; $5594: $3F
    nop                                           ; $5595: $00
    ccf                                           ; $5596: $3F
    nop                                           ; $5597: $00
    rra                                           ; $5598: $1F
    nop                                           ; $5599: $00
    rrca                                          ; $559A: $0F
    ld bc, $050F                                  ; $559B: $01 $0F $05
    rlca                                          ; $559E: $07
    nop                                           ; $559F: $00
    ldh a, [rP1]                                  ; $55A0: $F0 $00
    ldh a, [rP1]                                  ; $55A2: $F0 $00
    ldh a, [rP1]                                  ; $55A4: $F0 $00
    ldh a, [rP1]                                  ; $55A6: $F0 $00
    ldh [$C0], a                                  ; $55A8: $E0 $C0
    ldh [$C0], a                                  ; $55AA: $E0 $C0
    ret nz                                        ; $55AC: $C0

    add b                                         ; $55AD: $80
    ret nz                                        ; $55AE: $C0

    nop                                           ; $55AF: $00
    rrca                                          ; $55B0: $0F
    nop                                           ; $55B1: $00
    rrca                                          ; $55B2: $0F
    nop                                           ; $55B3: $00
    rrca                                          ; $55B4: $0F
    nop                                           ; $55B5: $00
    rrca                                          ; $55B6: $0F
    nop                                           ; $55B7: $00
    rrca                                          ; $55B8: $0F
    nop                                           ; $55B9: $00
    rlca                                          ; $55BA: $07
    nop                                           ; $55BB: $00
    rlca                                          ; $55BC: $07
    inc bc                                        ; $55BD: $03
    rlca                                          ; $55BE: $07
    nop                                           ; $55BF: $00
    ld hl, sp+$00                                 ; $55C0: $F8 $00
    ld hl, sp+$00                                 ; $55C2: $F8 $00
    ld hl, sp+$00                                 ; $55C4: $F8 $00
    ld hl, sp+$00                                 ; $55C6: $F8 $00
    ld hl, sp+$00                                 ; $55C8: $F8 $00
    ldh a, [$60]                                  ; $55CA: $F0 $60
    ldh a, [$60]                                  ; $55CC: $F0 $60
    ldh a, [rP1]                                  ; $55CE: $F0 $00
    nop                                           ; $55D0: $00
    nop                                           ; $55D1: $00
    rlca                                          ; $55D2: $07
    nop                                           ; $55D3: $00
    ld [$1007], sp                                ; $55D4: $08 $07 $10
    rrca                                          ; $55D7: $0F
    ld e, $01                                     ; $55D8: $1E $01
    ccf                                           ; $55DA: $3F
    ld e, $7F                                     ; $55DB: $1E $7F
    ld a, $7E                                     ; $55DD: $3E $7E
    dec a                                         ; $55DF: $3D
    nop                                           ; $55E0: $00
    nop                                           ; $55E1: $00
    ldh [rP1], a                                  ; $55E2: $E0 $00
    ld [hl], b                                    ; $55E4: $70
    ldh [rNR23], a                                ; $55E5: $E0 $18
    ldh a, [$08]                                  ; $55E7: $F0 $08
    ldh a, [$08]                                  ; $55E9: $F0 $08
    ldh a, [$78]                                  ; $55EB: $F0 $78
    ldh a, [$F8]                                  ; $55ED: $F0 $F8
    ldh a, [$7E]                                  ; $55EF: $F0 $7E
    dec a                                         ; $55F1: $3D
    inc a                                         ; $55F2: $3C
    dec de                                        ; $55F3: $1B
    ld a, $1D                                     ; $55F4: $3E $1D
    rra                                           ; $55F6: $1F
    ld [$001F], sp                                ; $55F7: $08 $1F $00
    rra                                           ; $55FA: $1F
    nop                                           ; $55FB: $00
    rra                                           ; $55FC: $1F
    nop                                           ; $55FD: $00
    rra                                           ; $55FE: $1F
    nop                                           ; $55FF: $00
    ld hl, sp-$10                                 ; $5600: $F8 $F0
    adc b                                         ; $5602: $88
    ldh a, [rNR23]                                ; $5603: $F0 $18

jr_00B_5605:
    ldh a, [$FC]                                  ; $5605: $F0 $FC

jr_00B_5607:
    jr jr_00B_5605                                ; $5607: $18 $FC

jr_00B_5609:
    jr jr_00B_5607                                ; $5609: $18 $FC

    jr jr_00B_5609                                ; $560B: $18 $FC

    ld [$00FC], sp                                ; $560D: $08 $FC $00
    inc a                                         ; $5610: $3C
    dec de                                        ; $5611: $1B
    ld a, $1D                                     ; $5612: $3E $1D
    rra                                           ; $5614: $1F
    ld [$001F], sp                                ; $5615: $08 $1F $00
    rra                                           ; $5618: $1F
    nop                                           ; $5619: $00
    rra                                           ; $561A: $1F
    nop                                           ; $561B: $00
    rra                                           ; $561C: $1F
    nop                                           ; $561D: $00
    rra                                           ; $561E: $1F
    nop                                           ; $561F: $00
    adc b                                         ; $5620: $88
    ldh a, [rNR23]                                ; $5621: $F0 $18

jr_00B_5623:
    ldh a, [$FC]                                  ; $5623: $F0 $FC

jr_00B_5625:
    jr jr_00B_5623                                ; $5625: $18 $FC

jr_00B_5627:
    jr jr_00B_5625                                ; $5627: $18 $FC

    jr jr_00B_5627                                ; $5629: $18 $FC

    ld [$00FC], sp                                ; $562B: $08 $FC $00
    ldh a, [rP1]                                  ; $562E: $F0 $00
    ld a, [hl]                                    ; $5630: $7E
    dec a                                         ; $5631: $3D
    inc a                                         ; $5632: $3C
    dec de                                        ; $5633: $1B
    ld a, $1D                                     ; $5634: $3E $1D
    rra                                           ; $5636: $1F
    ld [$001F], sp                                ; $5637: $08 $1F $00
    rra                                           ; $563A: $1F
    nop                                           ; $563B: $00
    rra                                           ; $563C: $1F
    nop                                           ; $563D: $00
    rra                                           ; $563E: $1F
    nop                                           ; $563F: $00
    ld hl, sp-$10                                 ; $5640: $F8 $F0
    adc b                                         ; $5642: $88
    ldh a, [rNR23]                                ; $5643: $F0 $18

jr_00B_5645:
    ldh a, [$FC]                                  ; $5645: $F0 $FC

jr_00B_5647:
    jr jr_00B_5645                                ; $5647: $18 $FC

jr_00B_5649:
    jr jr_00B_5647                                ; $5649: $18 $FC

    jr jr_00B_5649                                ; $564B: $18 $FC

    ld [$00FC], sp                                ; $564D: $08 $FC $00
    rra                                           ; $5650: $1F
    nop                                           ; $5651: $00
    rra                                           ; $5652: $1F
    nop                                           ; $5653: $00
    rra                                           ; $5654: $1F
    nop                                           ; $5655: $00
    ccf                                           ; $5656: $3F
    nop                                           ; $5657: $00
    ld a, a                                       ; $5658: $7F
    jr nz, jr_00B_56DA                            ; $5659: $20 $7F

    jr nc, @+$81                                  ; $565B: $30 $7F

    inc e                                         ; $565D: $1C
    ld a, a                                       ; $565E: $7F
    nop                                           ; $565F: $00
    ldh a, [rP1]                                  ; $5660: $F0 $00
    ldh a, [rP1]                                  ; $5662: $F0 $00
    ld hl, sp+$00                                 ; $5664: $F8 $00
    db $FC                                        ; $5666: $FC
    jr @-$02                                      ; $5667: $18 $FC

    jr c, @-$06                                   ; $5669: $38 $F8

    jr nc, @-$06                                  ; $566B: $30 $F8

    ld b, b                                       ; $566D: $40
    ldh [rP1], a                                  ; $566E: $E0 $00
    rra                                           ; $5670: $1F
    nop                                           ; $5671: $00
    rrca                                          ; $5672: $0F
    nop                                           ; $5673: $00
    rrca                                          ; $5674: $0F
    nop                                           ; $5675: $00
    rrca                                          ; $5676: $0F
    nop                                           ; $5677: $00
    rra                                           ; $5678: $1F
    nop                                           ; $5679: $00
    rra                                           ; $567A: $1F
    inc bc                                        ; $567B: $03
    rra                                           ; $567C: $1F
    rlca                                          ; $567D: $07
    rrca                                          ; $567E: $0F
    nop                                           ; $567F: $00
    ldh a, [rP1]                                  ; $5680: $F0 $00
    ldh a, [rP1]                                  ; $5682: $F0 $00
    ldh a, [rP1]                                  ; $5684: $F0 $00
    ldh a, [rP1]                                  ; $5686: $F0 $00
    ld hl, sp+$10                                 ; $5688: $F8 $10
    ld hl, sp-$30                                 ; $568A: $F8 $D0
    ld hl, sp-$40                                 ; $568C: $F8 $C0
    ldh [rP1], a                                  ; $568E: $E0 $00
    rra                                           ; $5690: $1F
    nop                                           ; $5691: $00
    rra                                           ; $5692: $1F
    nop                                           ; $5693: $00
    rrca                                          ; $5694: $0F
    nop                                           ; $5695: $00
    rra                                           ; $5696: $1F
    nop                                           ; $5697: $00
    ccf                                           ; $5698: $3F
    db $10                                        ; $5699: $10
    ccf                                           ; $569A: $3F
    ld e, $3F                                     ; $569B: $1E $3F
    rrca                                          ; $569D: $0F
    ccf                                           ; $569E: $3F

jr_00B_569F:
    nop                                           ; $569F: $00
    ldh a, [rP1]                                  ; $56A0: $F0 $00
    ldh a, [rP1]                                  ; $56A2: $F0 $00
    db $FC                                        ; $56A4: $FC
    nop                                           ; $56A5: $00
    cp $0C                                        ; $56A6: $FE $0C
    cp $1C                                        ; $56A8: $FE $1C
    db $FC                                        ; $56AA: $FC
    jr @-$02                                      ; $56AB: $18 $FC

    jr nz, jr_00B_569F                            ; $56AD: $20 $F0

    nop                                           ; $56AF: $00
    nop                                           ; $56B0: $00
    nop                                           ; $56B1: $00
    nop                                           ; $56B2: $00
    nop                                           ; $56B3: $00
    nop                                           ; $56B4: $00
    nop                                           ; $56B5: $00
    rlca                                          ; $56B6: $07
    nop                                           ; $56B7: $00
    dec bc                                        ; $56B8: $0B
    rlca                                          ; $56B9: $07
    add hl, de                                    ; $56BA: $19
    ld c, $1F                                     ; $56BB: $0E $1F
    inc c                                         ; $56BD: $0C
    rra                                           ; $56BE: $1F
    ld [rRAMG], sp                                ; $56BF: $08 $00 $00
    nop                                           ; $56C2: $00
    nop                                           ; $56C3: $00
    nop                                           ; $56C4: $00
    nop                                           ; $56C5: $00
    ldh [rP1], a                                  ; $56C6: $E0 $00
    ldh a, [$E0]                                  ; $56C8: $F0 $E0
    ldh a, [rP1]                                  ; $56CA: $F0 $00
    ldh a, [rP1]                                  ; $56CC: $F0 $00
    ldh a, [rP1]                                  ; $56CE: $F0 $00
    nop                                           ; $56D0: $00
    nop                                           ; $56D1: $00
    nop                                           ; $56D2: $00
    nop                                           ; $56D3: $00
    nop                                           ; $56D4: $00
    nop                                           ; $56D5: $00
    ldh a, [rP1]                                  ; $56D6: $F0 $00
    ld hl, sp-$10                                 ; $56D8: $F8 $F0

jr_00B_56DA:
    db $FC                                        ; $56DA: $FC
    jr @-$02                                      ; $56DB: $18 $FC

    ld [$00FC], sp                                ; $56DD: $08 $FC $00
    nop                                           ; $56E0: $00
    nop                                           ; $56E1: $00
    nop                                           ; $56E2: $00
    nop                                           ; $56E3: $00
    nop                                           ; $56E4: $00
    nop                                           ; $56E5: $00
    rlca                                          ; $56E6: $07
    nop                                           ; $56E7: $00
    add hl, bc                                    ; $56E8: $09
    rlca                                          ; $56E9: $07
    dec e                                         ; $56EA: $1D
    ld c, $1F                                     ; $56EB: $0E $1F
    rrca                                          ; $56ED: $0F
    rra                                           ; $56EE: $1F
    rrca                                          ; $56EF: $0F
    nop                                           ; $56F0: $00
    nop                                           ; $56F1: $00
    nop                                           ; $56F2: $00
    nop                                           ; $56F3: $00
    nop                                           ; $56F4: $00

jr_00B_56F5:
    nop                                           ; $56F5: $00
    ldh a, [rP1]                                  ; $56F6: $F0 $00
    ld hl, sp-$10                                 ; $56F8: $F8 $F0
    db $FC                                        ; $56FA: $FC
    ld hl, sp-$04                                 ; $56FB: $F8 $FC
    ld hl, sp-$04                                 ; $56FD: $F8 $FC
    ld hl, sp+$00                                 ; $56FF: $F8 $00
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    nop                                           ; $5704: $00
    nop                                           ; $5705: $00

jr_00B_5706:
    rlca                                          ; $5706: $07
    nop                                           ; $5707: $00
    rrca                                          ; $5708: $0F
    rlca                                          ; $5709: $07
    rra                                           ; $570A: $1F
    dec c                                         ; $570B: $0D
    rra                                           ; $570C: $1F
    rrca                                          ; $570D: $0F
    rra                                           ; $570E: $1F
    rrca                                          ; $570F: $0F
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    nop                                           ; $5712: $00
    nop                                           ; $5713: $00
    nop                                           ; $5714: $00
    nop                                           ; $5715: $00
    ld hl, sp+$00                                 ; $5716: $F8 $00
    db $FC                                        ; $5718: $FC
    ld hl, sp-$04                                 ; $5719: $F8 $FC
    ldh [$FC], a                                  ; $571B: $E0 $FC
    ret nz                                        ; $571D: $C0

    ld hl, sp-$80                                 ; $571E: $F8 $80
    db $FC                                        ; $5720: $FC
    ldh a, [$FA]                                  ; $5721: $F0 $FA
    db $E4                                        ; $5723: $E4
    db $FC                                        ; $5724: $FC
    nop                                           ; $5725: $00
    ld hl, sp+$00                                 ; $5726: $F8 $00
    db $FC                                        ; $5728: $FC
    nop                                           ; $5729: $00
    db $FC                                        ; $572A: $FC
    nop                                           ; $572B: $00
    db $FC                                        ; $572C: $FC
    nop                                           ; $572D: $00
    ld hl, sp+$00                                 ; $572E: $F8 $00
    ld e, $01                                     ; $5730: $1E $01
    dec d                                         ; $5732: $15
    ld a, [bc]                                    ; $5733: $0A
    add hl, bc                                    ; $5734: $09
    ld b, $1C                                     ; $5735: $06 $1C
    inc bc                                        ; $5737: $03
    ccf                                           ; $5738: $3F
    nop                                           ; $5739: $00
    ccf                                           ; $573A: $3F
    nop                                           ; $573B: $00
    ld a, c                                       ; $573C: $79
    ld b, $39                                     ; $573D: $06 $39
    ld b, $10                                     ; $573F: $06 $10
    ldh [$30], a                                  ; $5741: $E0 $30
    ret nz                                        ; $5743: $C0

jr_00B_5744:
    jr nc, jr_00B_5706                            ; $5744: $30 $C0

    db $10                                        ; $5746: $10
    ldh [$E0], a                                  ; $5747: $E0 $E0
    nop                                           ; $5749: $00

jr_00B_574A:
    ldh a, [rP1]                                  ; $574A: $F0 $00
    ret nc                                        ; $574C: $D0

    jr nz, @-$2E                                  ; $574D: $20 $D0

    jr nz, jr_00B_5770                            ; $574F: $20 $1F

    rrca                                          ; $5751: $0F
    rra                                           ; $5752: $1F
    ld b, $0F                                     ; $5753: $06 $0F
    nop                                           ; $5755: $00
    rrca                                          ; $5756: $0F
    nop                                           ; $5757: $00
    rra                                           ; $5758: $1F
    nop                                           ; $5759: $00
    rra                                           ; $575A: $1F
    nop                                           ; $575B: $00
    rrca                                          ; $575C: $0F
    nop                                           ; $575D: $00
    rrca                                          ; $575E: $0F
    nop                                           ; $575F: $00
    add sp, $10                                   ; $5760: $E8 $10
    ret z                                         ; $5762: $C8

    jr nc, jr_00B_56F5                            ; $5763: $30 $90

    ld h, b                                       ; $5765: $60
    ldh [rP1], a                                  ; $5766: $E0 $00
    ldh a, [rP1]                                  ; $5768: $F0 $00
    ld hl, sp+$00                                 ; $576A: $F8 $00
    db $F4                                        ; $576C: $F4
    ld [$08F4], sp                                ; $576D: $08 $F4 $08

jr_00B_5770:
    rra                                           ; $5770: $1F
    nop                                           ; $5771: $00
    inc e                                         ; $5772: $1C
    inc bc                                        ; $5773: $03
    ld a, [hl+]                                   ; $5774: $2A
    dec d                                         ; $5775: $15
    ld a, [de]                                    ; $5776: $1A
    dec b                                         ; $5777: $05
    inc c                                         ; $5778: $0C
    inc bc                                        ; $5779: $03
    rra                                           ; $577A: $1F
    nop                                           ; $577B: $00
    inc e                                         ; $577C: $1C
    inc bc                                        ; $577D: $03
    inc e                                         ; $577E: $1C
    inc bc                                        ; $577F: $03
    ld hl, sp+$00                                 ; $5780: $F8 $00
    jr c, jr_00B_5744                             ; $5782: $38 $C0

    ld d, h                                       ; $5784: $54
    xor b                                         ; $5785: $A8
    ld e, b                                       ; $5786: $58
    and b                                         ; $5787: $A0
    jr nc, jr_00B_574A                            ; $5788: $30 $C0

    ld hl, sp+$00                                 ; $578A: $F8 $00
    ld hl, sp+$00                                 ; $578C: $F8 $00
    add sp, $10                                   ; $578E: $E8 $10
    rra                                           ; $5790: $1F
    rrca                                          ; $5791: $0F
    rra                                           ; $5792: $1F
    rlca                                          ; $5793: $07
    cpl                                           ; $5794: $2F
    inc de                                        ; $5795: $13
    rra                                           ; $5796: $1F
    nop                                           ; $5797: $00
    rrca                                          ; $5798: $0F
    nop                                           ; $5799: $00
    rra                                           ; $579A: $1F
    nop                                           ; $579B: $00
    rra                                           ; $579C: $1F
    nop                                           ; $579D: $00
    rla                                           ; $579E: $17
    ld [$F8FC], sp                                ; $579F: $08 $FC $F8
    db $FC                                        ; $57A2: $FC
    ldh a, [$FA]                                  ; $57A3: $F0 $FA
    db $E4                                        ; $57A5: $E4
    db $FC                                        ; $57A6: $FC
    nop                                           ; $57A7: $00
    ld hl, sp+$00                                 ; $57A8: $F8 $00
    db $FC                                        ; $57AA: $FC
    nop                                           ; $57AB: $00
    db $FC                                        ; $57AC: $FC
    nop                                           ; $57AD: $00
    ld hl, sp+$00                                 ; $57AE: $F8 $00
    inc e                                         ; $57B0: $1C

jr_00B_57B1:
    inc bc                                        ; $57B1: $03
    ld a, [hl+]                                   ; $57B2: $2A
    dec d                                         ; $57B3: $15
    ld a, [de]                                    ; $57B4: $1A
    dec b                                         ; $57B5: $05
    inc c                                         ; $57B6: $0C
    inc bc                                        ; $57B7: $03
    rrca                                          ; $57B8: $0F
    nop                                           ; $57B9: $00
    rra                                           ; $57BA: $1F
    nop                                           ; $57BB: $00
    add hl, de                                    ; $57BC: $19
    ld b, $19                                     ; $57BD: $06 $19
    ld b, $00                                     ; $57BF: $06 $00
    nop                                           ; $57C1: $00
    nop                                           ; $57C2: $00
    nop                                           ; $57C3: $00
    ld bc, $0E00                                  ; $57C4: $01 $00 $0E
    ld bc, $0F13                                  ; $57C7: $01 $13 $0F
    cpl                                           ; $57CA: $2F
    ld e, $3F                                     ; $57CB: $1E $3F
    inc e                                         ; $57CD: $1C
    rra                                           ; $57CE: $1F
    nop                                           ; $57CF: $00
    nop                                           ; $57D0: $00
    nop                                           ; $57D1: $00
    nop                                           ; $57D2: $00
    nop                                           ; $57D3: $00
    ret nz                                        ; $57D4: $C0

    nop                                           ; $57D5: $00
    ld h, b                                       ; $57D6: $60
    ret nz                                        ; $57D7: $C0

    ldh a, [rP1]                                  ; $57D8: $F0 $00
    ldh a, [rP1]                                  ; $57DA: $F0 $00
    ldh a, [rP1]                                  ; $57DC: $F0 $00
    sub b                                         ; $57DE: $90
    ld h, b                                       ; $57DF: $60
    nop                                           ; $57E0: $00
    nop                                           ; $57E1: $00
    nop                                           ; $57E2: $00
    nop                                           ; $57E3: $00
    nop                                           ; $57E4: $00
    nop                                           ; $57E5: $00
    ld bc, $0E00                                  ; $57E6: $01 $00 $0E
    ld bc, $0F13                                  ; $57E9: $01 $13 $0F
    cpl                                           ; $57EC: $2F
    ld e, $3F                                     ; $57ED: $1E $3F
    inc e                                         ; $57EF: $1C
    nop                                           ; $57F0: $00
    nop                                           ; $57F1: $00
    nop                                           ; $57F2: $00
    nop                                           ; $57F3: $00
    nop                                           ; $57F4: $00
    nop                                           ; $57F5: $00
    ret nz                                        ; $57F6: $C0

    nop                                           ; $57F7: $00
    ld h, b                                       ; $57F8: $60
    ret nz                                        ; $57F9: $C0

    ldh a, [rP1]                                  ; $57FA: $F0 $00
    ldh a, [rP1]                                  ; $57FC: $F0 $00
    ldh a, [rP1]                                  ; $57FE: $F0 $00
    sub l                                         ; $5800: $95
    ld l, d                                       ; $5801: $6A
    push bc                                       ; $5802: $C5
    ld a, [hl-]                                   ; $5803: $3A
    ld h, c                                       ; $5804: $61
    ld e, $FE                                     ; $5805: $1E $FE
    nop                                           ; $5807: $00
    cp $00                                        ; $5808: $FE $00
    cp $00                                        ; $580A: $FE $00
    and $18                                       ; $580C: $E6 $18
    ld h, [hl]                                    ; $580E: $66
    jr @+$21                                      ; $580F: $18 $1F

    nop                                           ; $5811: $00
    add hl, de                                    ; $5812: $19
    ld b, $0C                                     ; $5813: $06 $0C
    inc bc                                        ; $5815: $03
    ld b, $01                                     ; $5816: $06 $01
    rrca                                          ; $5818: $0F
    nop                                           ; $5819: $00
    rra                                           ; $581A: $1F
    nop                                           ; $581B: $00
    daa                                           ; $581C: $27
    jr jr_00B_5846                                ; $581D: $18 $27

    jr jr_00B_57B1                                ; $581F: $18 $90

    ld h, b                                       ; $5821: $60
    ld d, b                                       ; $5822: $50
    and b                                         ; $5823: $A0
    ld d, b                                       ; $5824: $50
    and b                                         ; $5825: $A0
    db $10                                        ; $5826: $10
    ldh [$C0], a                                  ; $5827: $E0 $C0
    nop                                           ; $5829: $00
    ldh [rP1], a                                  ; $582A: $E0 $00
    ret nc                                        ; $582C: $D0

    jr nz, @-$2E                                  ; $582D: $20 $D0

    jr nz, jr_00B_5850                            ; $582F: $20 $1F

    nop                                           ; $5831: $00
    add hl, de                                    ; $5832: $19
    ld b, $0C                                     ; $5833: $06 $0C
    inc bc                                        ; $5835: $03
    ld b, $01                                     ; $5836: $06 $01
    rrca                                          ; $5838: $0F
    nop                                           ; $5839: $00
    rra                                           ; $583A: $1F
    nop                                           ; $583B: $00
    cpl                                           ; $583C: $2F
    db $10                                        ; $583D: $10
    cpl                                           ; $583E: $2F
    db $10                                        ; $583F: $10
    sub b                                         ; $5840: $90
    ld h, b                                       ; $5841: $60
    ld d, b                                       ; $5842: $50
    and b                                         ; $5843: $A0
    ld d, b                                       ; $5844: $50
    and b                                         ; $5845: $A0

jr_00B_5846:
    db $10                                        ; $5846: $10
    ldh [$C0], a                                  ; $5847: $E0 $C0
    nop                                           ; $5849: $00
    ldh [rP1], a                                  ; $584A: $E0 $00
    sub b                                         ; $584C: $90
    ld h, b                                       ; $584D: $60
    sub b                                         ; $584E: $90
    ld h, b                                       ; $584F: $60

jr_00B_5850:
    rra                                           ; $5850: $1F
    nop                                           ; $5851: $00
    rrca                                          ; $5852: $0F
    nop                                           ; $5853: $00
    db $10                                        ; $5854: $10
    rrca                                          ; $5855: $0F
    ld de, $2F0E                                  ; $5856: $11 $0E $2F
    db $10                                        ; $5859: $10
    ccf                                           ; $585A: $3F
    ld b, $3F                                     ; $585B: $06 $3F
    ld e, $1F                                     ; $585D: $1E $1F
    nop                                           ; $585F: $00
    ldh [rP1], a                                  ; $5860: $E0 $00
    ldh [rP1], a                                  ; $5862: $E0 $00
    db $10                                        ; $5864: $10
    ldh [$30], a                                  ; $5865: $E0 $30
    ret nz                                        ; $5867: $C0

    ld hl, sp+$30                                 ; $5868: $F8 $30
    ld hl, sp-$10                                 ; $586A: $F8 $F0
    ldh a, [rP1]                                  ; $586C: $F0 $00
    nop                                           ; $586E: $00
    nop                                           ; $586F: $00
    ld hl, sp+$00                                 ; $5870: $F8 $00
    ldh a, [rP1]                                  ; $5872: $F0 $00
    ld [$B8F0], sp                                ; $5874: $08 $F0 $B8

jr_00B_5877:
    ld b, b                                       ; $5877: $40
    ld hl, sp+$30                                 ; $5878: $F8 $30
    db $FC                                        ; $587A: $FC
    ld a, b                                       ; $587B: $78
    db $FC                                        ; $587C: $FC
    jr c, jr_00B_5877                             ; $587D: $38 $F8

    nop                                           ; $587F: $00
    ldh a, [rP1]                                  ; $5880: $F0 $00
    ldh a, [rP1]                                  ; $5882: $F0 $00
    adc b                                         ; $5884: $88
    ld [hl], b                                    ; $5885: $70

jr_00B_5886:
    adc b                                         ; $5886: $88
    ld [hl], b                                    ; $5887: $70
    sbc b                                         ; $5888: $98
    ld h, b                                       ; $5889: $60
    db $FC                                        ; $588A: $FC
    ld [$70FC], sp                                ; $588B: $08 $FC $70
    ld hl, sp+$00                                 ; $588E: $F8 $00
    rlca                                          ; $5890: $07
    nop                                           ; $5891: $00
    dec b                                         ; $5892: $05
    ld [bc], a                                    ; $5893: $02
    ld [$0807], sp                                ; $5894: $08 $07 $08
    rlca                                          ; $5897: $07
    ld c, $01                                     ; $5898: $0E $01
    rrca                                          ; $589A: $0F
    ld b, $0F                                     ; $589B: $06 $0F
    nop                                           ; $589D: $00
    nop                                           ; $589E: $00
    nop                                           ; $589F: $00
    ld hl, sp+$00                                 ; $58A0: $F8 $00
    ld hl, sp+$00                                 ; $58A2: $F8 $00
    ld [$88F0], sp                                ; $58A4: $08 $F0 $88
    ld [hl], b                                    ; $58A7: $70
    sbc b                                         ; $58A8: $98
    ld h, b                                       ; $58A9: $60
    db $FC                                        ; $58AA: $FC
    ld [$70FC], sp                                ; $58AB: $08 $FC $70
    ld hl, sp+$00                                 ; $58AE: $F8 $00
    rra                                           ; $58B0: $1F
    nop                                           ; $58B1: $00
    rrca                                          ; $58B2: $0F
    nop                                           ; $58B3: $00
    ld [$0A07], sp                                ; $58B4: $08 $07 $0A
    dec b                                         ; $58B7: $05
    add hl, bc                                    ; $58B8: $09
    ld b, $07                                     ; $58B9: $06 $07
    nop                                           ; $58BB: $00
    rlca                                          ; $58BC: $07
    ld [bc], a                                    ; $58BD: $02
    inc bc                                        ; $58BE: $03
    nop                                           ; $58BF: $00
    ld hl, sp+$00                                 ; $58C0: $F8 $00
    ldh a, [rP1]                                  ; $58C2: $F0 $00
    jr nc, jr_00B_5886                            ; $58C4: $30 $C0

    ld [hl], b                                    ; $58C6: $70
    add b                                         ; $58C7: $80
    ldh a, [$60]                                  ; $58C8: $F0 $60
    ldh a, [$E0]                                  ; $58CA: $F0 $E0
    ldh [$C0], a                                  ; $58CC: $E0 $C0
    ldh [rP1], a                                  ; $58CE: $E0 $00
    rrca                                          ; $58D0: $0F
    nop                                           ; $58D1: $00
    rlca                                          ; $58D2: $07
    nop                                           ; $58D3: $00
    ld [$0807], sp                                ; $58D4: $08 $07 $08
    rlca                                          ; $58D7: $07
    ld [$0707], sp                                ; $58D8: $08 $07 $07
    nop                                           ; $58DB: $00
    rlca                                          ; $58DC: $07
    inc bc                                        ; $58DD: $03
    rlca                                          ; $58DE: $07
    nop                                           ; $58DF: $00
    ldh a, [rP1]                                  ; $58E0: $F0 $00
    ldh a, [rP1]                                  ; $58E2: $F0 $00
    ld [$C8F0], sp                                ; $58E4: $08 $F0 $C8
    jr nc, @-$0E                                  ; $58E7: $30 $F0

    nop                                           ; $58E9: $00
    ldh a, [$60]                                  ; $58EA: $F0 $60
    ldh a, [$60]                                  ; $58EC: $F0 $60
    ldh a, [rP1]                                  ; $58EE: $F0 $00
    rra                                           ; $58F0: $1F
    nop                                           ; $58F1: $00
    rrca                                          ; $58F2: $0F
    nop                                           ; $58F3: $00
    db $10                                        ; $58F4: $10
    rrca                                          ; $58F5: $0F
    jr nz, jr_00B_5917                            ; $58F6: $20 $1F

    ld [hl], e                                    ; $58F8: $73
    inc l                                         ; $58F9: $2C
    ld a, a                                       ; $58FA: $7F
    ld [hl-], a                                   ; $58FB: $32
    ld a, a                                       ; $58FC: $7F
    ld e, $7F                                     ; $58FD: $1E $7F
    nop                                           ; $58FF: $00
    ldh [rP1], a                                  ; $5900: $E0 $00
    ldh [rP1], a                                  ; $5902: $E0 $00
    ld a, b                                       ; $5904: $78
    add b                                         ; $5905: $80

jr_00B_5906:
    db $FC                                        ; $5906: $FC
    jr @+$7E                                      ; $5907: $18 $7C

    cp b                                          ; $5909: $B8
    ld a, b                                       ; $590A: $78
    or b                                          ; $590B: $B0
    ld hl, sp+$40                                 ; $590C: $F8 $40
    ldh [rP1], a                                  ; $590E: $E0 $00
    rlca                                          ; $5910: $07
    nop                                           ; $5911: $00
    rlca                                          ; $5912: $07
    nop                                           ; $5913: $00
    ld [$1007], sp                                ; $5914: $08 $07 $10

jr_00B_5917:
    rrca                                          ; $5917: $0F
    rra                                           ; $5918: $1F
    nop                                           ; $5919: $00
    rra                                           ; $591A: $1F
    rlca                                          ; $591B: $07
    rra                                           ; $591C: $1F
    rrca                                          ; $591D: $0F
    rra                                           ; $591E: $1F
    nop                                           ; $591F: $00
    ldh [rP1], a                                  ; $5920: $E0 $00
    ldh [rP1], a                                  ; $5922: $E0 $00
    jr nz, @-$3E                                  ; $5924: $20 $C0

    ld h, b                                       ; $5926: $60
    add b                                         ; $5927: $80
    ldh a, [rNR41]                                ; $5928: $F0 $20
    ldh a, [$A0]                                  ; $592A: $F0 $A0
    ldh a, [$80]                                  ; $592C: $F0 $80
    ret nz                                        ; $592E: $C0

    nop                                           ; $592F: $00
    rra                                           ; $5930: $1F
    nop                                           ; $5931: $00
    rrca                                          ; $5932: $0F
    nop                                           ; $5933: $00
    db $10                                        ; $5934: $10
    rrca                                          ; $5935: $0F
    inc [hl]                                      ; $5936: $34
    dec bc                                        ; $5937: $0B
    ld a, [hl]                                    ; $5938: $7E
    ld hl, $3C7F                                  ; $5939: $21 $7F $3C
    ld a, a                                       ; $593C: $7F
    ld e, $7F                                     ; $593D: $1E $7F
    nop                                           ; $593F: $00
    ldh [rP1], a                                  ; $5940: $E0 $00
    ret nz                                        ; $5942: $C0

    nop                                           ; $5943: $00
    jr c, jr_00B_5906                             ; $5944: $38 $C0

    inc a                                         ; $5946: $3C
    ret c                                         ; $5947: $D8

    ld a, h                                       ; $5948: $7C
    cp b                                          ; $5949: $B8
    ld a, b                                       ; $594A: $78
    or b                                          ; $594B: $B0
    ld hl, sp+$40                                 ; $594C: $F8 $40
    ldh [rP1], a                                  ; $594E: $E0 $00
    rrca                                          ; $5950: $0F
    nop                                           ; $5951: $00
    rla                                           ; $5952: $17
    rrca                                          ; $5953: $0F
    ld sp, $791F                                  ; $5954: $31 $1F $79
    ccf                                           ; $5957: $3F
    ei                                            ; $5958: $FB
    ld a, h                                       ; $5959: $7C
    db $FC                                        ; $595A: $FC
    ld l, e                                       ; $595B: $6B
    ld [$7A55], a                                 ; $595C: $EA $55 $7A
    dec h                                         ; $595F: $25
    ldh [rP1], a                                  ; $5960: $E0 $00
    ldh a, [$E0]                                  ; $5962: $F0 $E0
    ld hl, sp-$10                                 ; $5964: $F8 $F0
    ld hl, sp-$10                                 ; $5966: $F8 $F0
    db $FC                                        ; $5968: $FC
    cp b                                          ; $5969: $B8
    cp h                                          ; $596A: $BC
    ld e, b                                       ; $596B: $58
    ld e, h                                       ; $596C: $5C
    xor b                                         ; $596D: $A8
    ld e, b                                       ; $596E: $58
    and b                                         ; $596F: $A0
    rlca                                          ; $5970: $07
    nop                                           ; $5971: $00
    rrca                                          ; $5972: $0F
    rlca                                          ; $5973: $07
    inc de                                        ; $5974: $13
    rrca                                          ; $5975: $0F
    add hl, sp                                    ; $5976: $39
    rra                                           ; $5977: $1F
    dec sp                                        ; $5978: $3B
    dec e                                         ; $5979: $1D
    dec a                                         ; $597A: $3D
    ld a, [bc]                                    ; $597B: $0A
    ld a, [hl+]                                   ; $597C: $2A
    dec d                                         ; $597D: $15
    ld a, [hl-]                                   ; $597E: $3A
    dec b                                         ; $597F: $05
    ldh [rP1], a                                  ; $5980: $E0 $00
    ldh a, [$E0]                                  ; $5982: $F0 $E0
    ld hl, sp-$50                                 ; $5984: $F8 $B0
    call c, $DC78                                 ; $5986: $DC $78 $DC
    jr c, @+$3E                                   ; $5989: $38 $3C

    ret c                                         ; $598B: $D8

    ld e, h                                       ; $598C: $5C
    xor b                                         ; $598D: $A8
    ld e, h                                       ; $598E: $5C
    and b                                         ; $598F: $A0
    rlca                                          ; $5990: $07
    nop                                           ; $5991: $00
    rrca                                          ; $5992: $0F
    rlca                                          ; $5993: $07
    rra                                           ; $5994: $1F
    rrca                                          ; $5995: $0F
    cpl                                           ; $5996: $2F
    ld e, $27                                     ; $5997: $1E $27
    rra                                           ; $5999: $1F
    jr nz, jr_00B_59BB                            ; $599A: $20 $1F

    jr nc, jr_00B_59BD                            ; $599C: $30 $1F

    inc a                                         ; $599E: $3C
    rra                                           ; $599F: $1F
    ldh [rP1], a                                  ; $59A0: $E0 $00
    ldh a, [$E0]                                  ; $59A2: $F0 $E0
    ld hl, sp-$10                                 ; $59A4: $F8 $F0
    db $FC                                        ; $59A6: $FC
    ld hl, sp-$0C                                 ; $59A7: $F8 $F4
    ld hl, sp-$3C                                 ; $59A9: $F8 $C4
    ld hl, sp+$0C                                 ; $59AB: $F8 $0C
    ld hl, sp+$3C                                 ; $59AD: $F8 $3C
    ld hl, sp+$03                                 ; $59AF: $F8 $03
    nop                                           ; $59B1: $00
    rlca                                          ; $59B2: $07
    inc bc                                        ; $59B3: $03
    rrca                                          ; $59B4: $0F
    ld b, $0F                                     ; $59B5: $06 $0F
    rlca                                          ; $59B7: $07
    add hl, bc                                    ; $59B8: $09
    rlca                                          ; $59B9: $07
    db $10                                        ; $59BA: $10

jr_00B_59BB:
    rrca                                          ; $59BB: $0F
    inc e                                         ; $59BC: $1C

jr_00B_59BD:
    rrca                                          ; $59BD: $0F
    rrca                                          ; $59BE: $0F
    rlca                                          ; $59BF: $07
    ld hl, sp+$00                                 ; $59C0: $F8 $00
    db $FC                                        ; $59C2: $FC
    ld hl, sp-$02                                 ; $59C3: $F8 $FE
    db $FC                                        ; $59C5: $FC
    cp $FC                                        ; $59C6: $FE $FC
    cp $F4                                        ; $59C8: $FE $F4
    cp $E4                                        ; $59CA: $FE $E4
    inc l                                         ; $59CC: $2C
    ret nc                                        ; $59CD: $D0

    ld hl, sp-$20                                 ; $59CE: $F8 $E0
    rra                                           ; $59D0: $1F
    nop                                           ; $59D1: $00

jr_00B_59D2:
    daa                                           ; $59D2: $27
    rra                                           ; $59D3: $1F
    ld b, b                                       ; $59D4: $40
    ccf                                           ; $59D5: $3F
    ld [hl], c                                    ; $59D6: $71
    ccf                                           ; $59D7: $3F
    ld a, a                                       ; $59D8: $7F
    ccf                                           ; $59D9: $3F
    ld a, a                                       ; $59DA: $7F
    add hl, sp                                    ; $59DB: $39
    ld a, c                                       ; $59DC: $79
    ld [hl], $3E                                  ; $59DD: $36 $3E
    add hl, de                                    ; $59DF: $19
    ldh [rP1], a                                  ; $59E0: $E0 $00
    ldh a, [$E0]                                  ; $59E2: $F0 $E0
    ld a, b                                       ; $59E4: $78
    ldh a, [$FC]                                  ; $59E5: $F0 $FC
    ld hl, sp-$04                                 ; $59E7: $F8 $FC

jr_00B_59E9:
    xor b                                         ; $59E9: $A8
    cp b                                          ; $59EA: $B8
    ld b, b                                       ; $59EB: $40
    ld d, b                                       ; $59EC: $50
    and b                                         ; $59ED: $A0
    ld d, b                                       ; $59EE: $50
    and b                                         ; $59EF: $A0
    ld a, h                                       ; $59F0: $7C
    dec sp                                        ; $59F1: $3B
    ccf                                           ; $59F2: $3F
    nop                                           ; $59F3: $00
    dec bc                                        ; $59F4: $0B
    inc b                                         ; $59F5: $04
    dec bc                                        ; $59F6: $0B

jr_00B_59F7:
    inc b                                         ; $59F7: $04
    dec bc                                        ; $59F8: $0B

jr_00B_59F9:
    inc b                                         ; $59F9: $04
    inc de                                        ; $59FA: $13
    inc c                                         ; $59FB: $0C
    inc de                                        ; $59FC: $13
    inc c                                         ; $59FD: $0C
    rrca                                          ; $59FE: $0F
    nop                                           ; $59FF: $00
    jr c, jr_00B_59D2                             ; $5A00: $38 $D0

    ldh a, [rP1]                                  ; $5A02: $F0 $00
    ret nz                                        ; $5A04: $C0

    nop                                           ; $5A05: $00
    ld h, b                                       ; $5A06: $60
    add b                                         ; $5A07: $80
    ldh [rP1], a                                  ; $5A08: $E0 $00
    ret nc                                        ; $5A0A: $D0

    jr nz, jr_00B_5A6D                            ; $5A0B: $20 $60

    add b                                         ; $5A0D: $80
    ret nz                                        ; $5A0E: $C0

    nop                                           ; $5A0F: $00
    inc a                                         ; $5A10: $3C
    ret z                                         ; $5A11: $C8

    ld hl, sp+$00                                 ; $5A12: $F8 $00
    ld d, b                                       ; $5A14: $50
    and b                                         ; $5A15: $A0
    ret nc                                        ; $5A16: $D0

    jr nz, jr_00B_59E9                            ; $5A17: $20 $D0

jr_00B_5A19:
    jr nz, jr_00B_5A6B                            ; $5A19: $20 $50

jr_00B_5A1B:
    and b                                         ; $5A1B: $A0
    ld c, b                                       ; $5A1C: $48
    or b                                          ; $5A1D: $B0
    ret z                                         ; $5A1E: $C8

    jr nc, jr_00B_5A19                            ; $5A1F: $30 $F8

    ldh a, [$F0]                                  ; $5A21: $F0 $F0
    nop                                           ; $5A23: $00
    ret nc                                        ; $5A24: $D0

    jr nz, jr_00B_59F7                            ; $5A25: $20 $D0

    jr nz, jr_00B_59F9                            ; $5A27: $20 $D0

    jr nz, jr_00B_5A7B                            ; $5A29: $20 $50

    and b                                         ; $5A2B: $A0
    ld c, b                                       ; $5A2C: $48
    or b                                          ; $5A2D: $B0
    ret z                                         ; $5A2E: $C8

    jr nc, jr_00B_5A6B                            ; $5A2F: $30 $3A

    dec b                                         ; $5A31: $05
    inc a                                         ; $5A32: $3C
    inc de                                        ; $5A33: $13
    rra                                           ; $5A34: $1F
    nop                                           ; $5A35: $00
    ld c, $01                                     ; $5A36: $0E $01
    dec bc                                        ; $5A38: $0B
    inc b                                         ; $5A39: $04
    dec bc                                        ; $5A3A: $0B
    inc b                                         ; $5A3B: $04
    add hl, bc                                    ; $5A3C: $09
    ld b, $09                                     ; $5A3D: $06 $09
    ld b, $5C                                     ; $5A3F: $06 $5C
    and b                                         ; $5A41: $A0
    inc a                                         ; $5A42: $3C
    ret z                                         ; $5A43: $C8

    ld hl, sp+$00                                 ; $5A44: $F8 $00
    ld [hl], b                                    ; $5A46: $70
    add b                                         ; $5A47: $80
    ret nc                                        ; $5A48: $D0

    jr nz, jr_00B_5A1B                            ; $5A49: $20 $D0

jr_00B_5A4B:
    jr nz, @+$52                                  ; $5A4B: $20 $50

    and b                                         ; $5A4D: $A0
    ld d, b                                       ; $5A4E: $50
    and b                                         ; $5A4F: $A0
    rst $38                                       ; $5A50: $FF
    ld a, [hl]                                    ; $5A51: $7E
    ld a, [hl]                                    ; $5A52: $7E
    nop                                           ; $5A53: $00
    ld [hl], h                                    ; $5A54: $74
    ld [$0876], sp                                ; $5A55: $08 $76 $08
    ld d, $28                                     ; $5A58: $16 $28
    ld [de], a                                    ; $5A5A: $12
    inc l                                         ; $5A5B: $2C
    ld [hl], d                                    ; $5A5C: $72
    inc c                                         ; $5A5D: $0C
    ld a, h                                       ; $5A5E: $7C
    nop                                           ; $5A5F: $00
    inc a                                         ; $5A60: $3C
    rra                                           ; $5A61: $1F

jr_00B_5A62:
    rra                                           ; $5A62: $1F
    rrca                                          ; $5A63: $0F
    rrca                                          ; $5A64: $0F
    nop                                           ; $5A65: $00
    rlca                                          ; $5A66: $07
    nop                                           ; $5A67: $00
    dec bc                                        ; $5A68: $0B
    inc b                                         ; $5A69: $04
    dec bc                                        ; $5A6A: $0B

jr_00B_5A6B:
    inc b                                         ; $5A6B: $04
    add hl, bc                                    ; $5A6C: $09

jr_00B_5A6D:
    ld b, $09                                     ; $5A6D: $06 $09
    ld b, $3C                                     ; $5A6F: $06 $3C
    ld hl, sp-$08                                 ; $5A71: $F8 $F8
    ldh a, [$F0]                                  ; $5A73: $F0 $F0
    nop                                           ; $5A75: $00
    ldh [rP1], a                                  ; $5A76: $E0 $00
    ret nc                                        ; $5A78: $D0

    jr nz, jr_00B_5A4B                            ; $5A79: $20 $D0

jr_00B_5A7B:
    jr nz, jr_00B_5ACD                            ; $5A7B: $20 $50

    and b                                         ; $5A7D: $A0
    ret nc                                        ; $5A7E: $D0

    jr nz, @+$0E                                  ; $5A7F: $20 $0C

    inc bc                                        ; $5A81: $03
    dec b                                         ; $5A82: $05
    ld [bc], a                                    ; $5A83: $02
    dec b                                         ; $5A84: $05
    ld [bc], a                                    ; $5A85: $02
    dec b                                         ; $5A86: $05
    ld [bc], a                                    ; $5A87: $02
    dec bc                                        ; $5A88: $0B
    inc b                                         ; $5A89: $04
    rrca                                          ; $5A8A: $0F
    ld bc, $0F1F                                  ; $5A8B: $01 $1F $0F
    rrca                                          ; $5A8E: $0F
    nop                                           ; $5A8F: $00
    ld b, b                                       ; $5A90: $40
    add b                                         ; $5A91: $80
    ld b, b                                       ; $5A92: $40
    add b                                         ; $5A93: $80
    ld b, b                                       ; $5A94: $40
    add b                                         ; $5A95: $80
    ld [hl], b                                    ; $5A96: $70
    add b                                         ; $5A97: $80
    ld hl, sp+$30                                 ; $5A98: $F8 $30
    ld hl, sp-$50                                 ; $5A9A: $F8 $B0
    ldh a, [$80]                                  ; $5A9C: $F0 $80
    ret nz                                        ; $5A9E: $C0

    nop                                           ; $5A9F: $00
    jr nc, jr_00B_5A62                            ; $5AA0: $30 $C0

    and b                                         ; $5AA2: $A0
    ld b, b                                       ; $5AA3: $40
    and b                                         ; $5AA4: $A0
    ld b, b                                       ; $5AA5: $40
    or b                                          ; $5AA6: $B0

jr_00B_5AA7:
    ld b, b                                       ; $5AA7: $40
    ld hl, sp+$30                                 ; $5AA8: $F8 $30
    db $FC                                        ; $5AAA: $FC
    ld a, b                                       ; $5AAB: $78
    db $FC                                        ; $5AAC: $FC
    jr c, jr_00B_5AA7                             ; $5AAD: $38 $F8

    nop                                           ; $5AAF: $00
    jr nc, @-$3E                                  ; $5AB0: $30 $C0

    and b                                         ; $5AB2: $A0
    ld b, b                                       ; $5AB3: $40
    and b                                         ; $5AB4: $A0
    ld b, b                                       ; $5AB5: $40
    and b                                         ; $5AB6: $A0
    ld b, b                                       ; $5AB7: $40
    cp b                                          ; $5AB8: $B8

jr_00B_5AB9:
    ld b, b                                       ; $5AB9: $40
    db $FC                                        ; $5ABA: $FC
    jr jr_00B_5AB9                                ; $5ABB: $18 $FC

    ld [hl], b                                    ; $5ABD: $70
    ld hl, sp+$00                                 ; $5ABE: $F8 $00
    ret z                                         ; $5AC0: $C8

    jr nc, jr_00B_5A6B                            ; $5AC1: $30 $A8

    ld d, b                                       ; $5AC3: $50
    xor b                                         ; $5AC4: $A8
    ld d, b                                       ; $5AC5: $50
    xor b                                         ; $5AC6: $A8
    ld d, b                                       ; $5AC7: $50
    xor $10                                       ; $5AC8: $EE $10
    rst $38                                       ; $5ACA: $FF
    ld b, [hl]                                    ; $5ACB: $46
    rst $38                                       ; $5ACC: $FF

jr_00B_5ACD:
    inc e                                         ; $5ACD: $1C
    ld a, $00                                     ; $5ACE: $3E $00
    cp $00                                        ; $5AD0: $FE $00
    halt                                          ; $5AD2: $76
    ld [$2856], sp                                ; $5AD3: $08 $56 $28
    ld d, [hl]                                    ; $5AD6: $56
    jr z, jr_00B_5B38                             ; $5AD7: $28 $5F

    ld h, $7F                                     ; $5AD9: $26 $7F
    ld c, $7E                                     ; $5ADB: $0E $7E
    inc l                                         ; $5ADD: $2C
    ld a, $00                                     ; $5ADE: $3E $00
    or $08                                        ; $5AE0: $F6 $08
    ld h, [hl]                                    ; $5AE2: $66
    jr jr_00B_5B39                                ; $5AE3: $18 $54

    jr z, jr_00B_5B43                             ; $5AE5: $28 $5C

    jr nz, jr_00B_5B25                            ; $5AE7: $20 $3C

    jr jr_00B_5B29                                ; $5AE9: $18 $3E

    inc e                                         ; $5AEB: $1C
    ld a, [hl]                                    ; $5AEC: $7E
    inc l                                         ; $5AED: $2C
    ld a, [hl]                                    ; $5AEE: $7E
    nop                                           ; $5AEF: $00
    ld a, $19                                     ; $5AF0: $3E $19
    rra                                           ; $5AF2: $1F
    ld c, $0F                                     ; $5AF3: $0E $0F
    nop                                           ; $5AF5: $00
    ld b, $01                                     ; $5AF6: $06 $01
    rlca                                          ; $5AF8: $07
    nop                                           ; $5AF9: $00
    dec bc                                        ; $5AFA: $0B
    inc b                                         ; $5AFB: $04
    ld a, [bc]                                    ; $5AFC: $0A
    dec b                                         ; $5AFD: $05
    rlca                                          ; $5AFE: $07
    nop                                           ; $5AFF: $00
    ld d, b                                       ; $5B00: $50
    and b                                         ; $5B01: $A0
    db $10                                        ; $5B02: $10
    ldh [$E0], a                                  ; $5B03: $E0 $E0
    nop                                           ; $5B05: $00
    add b                                         ; $5B06: $80
    nop                                           ; $5B07: $00
    ld h, b                                       ; $5B08: $60
    add b                                         ; $5B09: $80
    sub b                                         ; $5B0A: $90
    ld h, b                                       ; $5B0B: $60
    sub b                                         ; $5B0C: $90
    ld h, b                                       ; $5B0D: $60
    ldh [rP1], a                                  ; $5B0E: $E0 $00
    rra                                           ; $5B10: $1F
    ld c, $0F                                     ; $5B11: $0E $0F
    nop                                           ; $5B13: $00
    ld [bc], a                                    ; $5B14: $02
    ld bc, $0102                                  ; $5B15: $01 $02 $01
    ld [bc], a                                    ; $5B18: $02
    ld bc, $0300                                  ; $5B19: $01 $00 $03
    inc b                                         ; $5B1C: $04
    inc bc                                        ; $5B1D: $03
    rlca                                          ; $5B1E: $07
    nop                                           ; $5B1F: $00
    db $10                                        ; $5B20: $10
    ldh [$E0], a                                  ; $5B21: $E0 $E0
    nop                                           ; $5B23: $00
    add b                                         ; $5B24: $80

jr_00B_5B25:
    nop                                           ; $5B25: $00
    ret nz                                        ; $5B26: $C0

    nop                                           ; $5B27: $00
    ret nz                                        ; $5B28: $C0

jr_00B_5B29:
    nop                                           ; $5B29: $00
    add b                                         ; $5B2A: $80
    nop                                           ; $5B2B: $00
    add b                                         ; $5B2C: $80
    nop                                           ; $5B2D: $00
    add b                                         ; $5B2E: $80
    nop                                           ; $5B2F: $00
    ld a, $19                                     ; $5B30: $3E $19
    rra                                           ; $5B32: $1F
    ld c, $0F                                     ; $5B33: $0E $0F
    nop                                           ; $5B35: $00
    ld b, $01                                     ; $5B36: $06 $01

jr_00B_5B38:
    dec b                                         ; $5B38: $05

jr_00B_5B39:
    ld [bc], a                                    ; $5B39: $02
    add hl, bc                                    ; $5B3A: $09
    ld b, $09                                     ; $5B3B: $06 $09
    ld b, $07                                     ; $5B3D: $06 $07
    nop                                           ; $5B3F: $00
    ld d, b                                       ; $5B40: $50
    and b                                         ; $5B41: $A0
    db $10                                        ; $5B42: $10

jr_00B_5B43:
    ldh [$E0], a                                  ; $5B43: $E0 $E0
    nop                                           ; $5B45: $00
    add b                                         ; $5B46: $80
    nop                                           ; $5B47: $00
    ret nz                                        ; $5B48: $C0

    nop                                           ; $5B49: $00
    ret nz                                        ; $5B4A: $C0

    nop                                           ; $5B4B: $00
    and b                                         ; $5B4C: $A0
    ld b, b                                       ; $5B4D: $40
    ret nz                                        ; $5B4E: $C0

    nop                                           ; $5B4F: $00
    inc b                                         ; $5B50: $04
    inc bc                                        ; $5B51: $03
    ld [bc], a                                    ; $5B52: $02
    ld bc, $020D                                  ; $5B53: $01 $0D $02
    dec sp                                        ; $5B56: $3B
    inc b                                         ; $5B57: $04
    ld [hl], a                                    ; $5B58: $77
    jr z, jr_00B_5BDA                             ; $5B59: $28 $7F

    ld [hl], $7F                                  ; $5B5B: $36 $7F
    ld e, $7F                                     ; $5B5D: $1E $7F
    nop                                           ; $5B5F: $00
    add b                                         ; $5B60: $80
    nop                                           ; $5B61: $00
    add b                                         ; $5B62: $80
    nop                                           ; $5B63: $00
    ldh a, [rP1]                                  ; $5B64: $F0 $00
    ld a, b                                       ; $5B66: $78
    or b                                          ; $5B67: $B0
    ld hl, sp+$70                                 ; $5B68: $F8 $70
    ldh a, [$E0]                                  ; $5B6A: $F0 $E0
    ldh a, [$C0]                                  ; $5B6C: $F0 $C0
    ldh [rP1], a                                  ; $5B6E: $E0 $00
    sub b                                         ; $5B70: $90
    ld h, b                                       ; $5B71: $60
    ld d, b                                       ; $5B72: $50
    jr nz, jr_00B_5BC5                            ; $5B73: $20 $50

    jr nz, @+$5A                                  ; $5B75: $20 $58

    jr nz, @+$7E                                  ; $5B77: $20 $7C

    nop                                           ; $5B79: $00
    cp $78                                        ; $5B7A: $FE $78
    cp $7C                                        ; $5B7C: $FE $7C
    cp $00                                        ; $5B7E: $FE $00
    inc b                                         ; $5B80: $04
    inc bc                                        ; $5B81: $03
    ld [bc], a                                    ; $5B82: $02
    ld bc, $0007                                  ; $5B83: $01 $07 $00
    dec c                                         ; $5B86: $0D
    ld [bc], a                                    ; $5B87: $02
    rra                                           ; $5B88: $1F
    nop                                           ; $5B89: $00
    ccf                                           ; $5B8A: $3F
    rla                                           ; $5B8B: $17
    ccf                                           ; $5B8C: $3F
    rrca                                          ; $5B8D: $0F
    rra                                           ; $5B8E: $1F
    nop                                           ; $5B8F: $00
    add b                                         ; $5B90: $80
    nop                                           ; $5B91: $00
    ret nz                                        ; $5B92: $C0

jr_00B_5B93:
    nop                                           ; $5B93: $00
    ld a, b                                       ; $5B94: $78
    add b                                         ; $5B95: $80
    cp h                                          ; $5B96: $BC
    ld e, b                                       ; $5B97: $58
    db $FC                                        ; $5B98: $FC
    jr c, jr_00B_5B93                             ; $5B99: $38 $F8

    ld [hl], b                                    ; $5B9B: $70
    ld hl, sp+$60                                 ; $5B9C: $F8 $60
    ldh [rP1], a                                  ; $5B9E: $E0 $00
    ld a, b                                       ; $5BA0: $78
    nop                                           ; $5BA1: $00
    rst $38                                       ; $5BA2: $FF
    nop                                           ; $5BA3: $00
    rst $30                                       ; $5BA4: $F7
    rrca                                          ; $5BA5: $0F
    pop af                                        ; $5BA6: $F1
    rra                                           ; $5BA7: $1F
    ld a, c                                       ; $5BA8: $79
    ccf                                           ; $5BA9: $3F
    ld a, e                                       ; $5BAA: $7B
    inc a                                         ; $5BAB: $3C
    ld a, h                                       ; $5BAC: $7C
    dec hl                                        ; $5BAD: $2B
    ld [$0055], a                                 ; $5BAE: $EA $55 $00
    nop                                           ; $5BB1: $00
    ldh [rP1], a                                  ; $5BB2: $E0 $00
    ldh a, [$E0]                                  ; $5BB4: $F0 $E0
    ld hl, sp-$10                                 ; $5BB6: $F8 $F0
    ld hl, sp-$10                                 ; $5BB8: $F8 $F0
    db $FC                                        ; $5BBA: $FC
    cp b                                          ; $5BBB: $B8
    cp h                                          ; $5BBC: $BC
    ld e, b                                       ; $5BBD: $58
    ld e, [hl]                                    ; $5BBE: $5E
    xor h                                         ; $5BBF: $AC
    inc bc                                        ; $5BC0: $03
    nop                                           ; $5BC1: $00
    rlca                                          ; $5BC2: $07
    nop                                           ; $5BC3: $00
    dec bc                                        ; $5BC4: $0B

jr_00B_5BC5:
    rlca                                          ; $5BC5: $07
    dec de                                        ; $5BC6: $1B
    ld c, $19                                     ; $5BC7: $0E $19
    rrca                                          ; $5BC9: $0F
    dec de                                        ; $5BCA: $1B
    dec c                                         ; $5BCB: $0D
    ld e, l                                       ; $5BCC: $5D
    ld a, [bc]                                    ; $5BCD: $0A
    ld [$E055], a                                 ; $5BCE: $EA $55 $E0
    nop                                           ; $5BD1: $00
    ldh a, [rP1]                                  ; $5BD2: $F0 $00
    ldh a, [$E0]                                  ; $5BD4: $F0 $E0
    ld hl, sp-$10                                 ; $5BD6: $F8 $F0
    ret c                                         ; $5BD8: $D8

    ld [hl], b                                    ; $5BD9: $70

jr_00B_5BDA:
    ret c                                         ; $5BDA: $D8

    jr nc, @+$3C                                  ; $5BDB: $30 $3A

    ret nc                                        ; $5BDD: $D0

    ld d, a                                       ; $5BDE: $57
    xor d                                         ; $5BDF: $AA
    inc bc                                        ; $5BE0: $03
    nop                                           ; $5BE1: $00
    rlca                                          ; $5BE2: $07
    nop                                           ; $5BE3: $00
    rrca                                          ; $5BE4: $0F
    nop                                           ; $5BE5: $00
    rla                                           ; $5BE6: $17
    ld [$0C17], sp                                ; $5BE7: $08 $17 $0C
    scf                                           ; $5BEA: $37
    ld c, $7F                                     ; $5BEB: $0E $7F
    cpl                                           ; $5BED: $2F
    ld a, a                                       ; $5BEE: $7F
    ccf                                           ; $5BEF: $3F
    ret nz                                        ; $5BF0: $C0

    nop                                           ; $5BF1: $00
    ldh a, [rP1]                                  ; $5BF2: $F0 $00
    ldh a, [rP1]                                  ; $5BF4: $F0 $00
    add sp, $10                                   ; $5BF6: $E8 $10
    ld hl, sp+$10                                 ; $5BF8: $F8 $10
    db $FC                                        ; $5BFA: $FC

jr_00B_5BFB:
    jr nc, jr_00B_5BFB                            ; $5BFB: $30 $FE

    db $F4                                        ; $5BFD: $F4
    cp $FC                                        ; $5BFE: $FE $FC
    dec e                                         ; $5C00: $1D
    nop                                           ; $5C01: $00
    ccf                                           ; $5C02: $3F
    nop                                           ; $5C03: $00
    ccf                                           ; $5C04: $3F
    nop                                           ; $5C05: $00
    ccf                                           ; $5C06: $3F
    nop                                           ; $5C07: $00
    ld a, $01                                     ; $5C08: $3E $01
    inc e                                         ; $5C0A: $1C
    inc bc                                        ; $5C0B: $03
    ccf                                           ; $5C0C: $3F
    rra                                           ; $5C0D: $1F
    rra                                           ; $5C0E: $1F
    rrca                                          ; $5C0F: $0F
    ld hl, sp+$00                                 ; $5C10: $F8 $00
    inc e                                         ; $5C12: $1C
    ld hl, sp-$62                                 ; $5C13: $F8 $9E
    db $FC                                        ; $5C15: $FC
    ld e, $FC                                     ; $5C16: $1E $FC
    ld a, [hl]                                    ; $5C18: $7E
    db $F4                                        ; $5C19: $F4
    cp $E4                                        ; $5C1A: $FE $E4
    db $EC                                        ; $5C1C: $EC
    ret nc                                        ; $5C1D: $D0

    db $FC                                        ; $5C1E: $FC
    add sp, $1B                                   ; $5C1F: $E8 $1B
    nop                                           ; $5C21: $00
    ld a, $01                                     ; $5C22: $3E $01
    dec sp                                        ; $5C24: $3B
    rlca                                          ; $5C25: $07
    rra                                           ; $5C26: $1F
    rlca                                          ; $5C27: $07
    ccf                                           ; $5C28: $3F
    rrca                                          ; $5C29: $0F
    ld a, a                                       ; $5C2A: $7F
    add hl, sp                                    ; $5C2B: $39
    dec a                                         ; $5C2C: $3D
    ld a, [de]                                    ; $5C2D: $1A
    inc e                                         ; $5C2E: $1C
    inc bc                                        ; $5C2F: $03
    ldh a, [rP1]                                  ; $5C30: $F0 $00
    ld a, b                                       ; $5C32: $78
    ldh a, [$F8]                                  ; $5C33: $F0 $F8
    ldh a, [$FC]                                  ; $5C35: $F0 $FC
    ld hl, sp-$04                                 ; $5C37: $F8 $FC
    xor b                                         ; $5C39: $A8
    cp b                                          ; $5C3A: $B8
    ld b, b                                       ; $5C3B: $40
    ld d, b                                       ; $5C3C: $50

jr_00B_5C3D:
    and b                                         ; $5C3D: $A0
    ld d, b                                       ; $5C3E: $50
    and b                                         ; $5C3F: $A0
    ld a, d                                       ; $5C40: $7A
    dec b                                         ; $5C41: $05
    inc b                                         ; $5C42: $04
    inc bc                                        ; $5C43: $03
    dec bc                                        ; $5C44: $0B
    inc b                                         ; $5C45: $04
    dec bc                                        ; $5C46: $0B
    inc b                                         ; $5C47: $04
    dec bc                                        ; $5C48: $0B
    inc b                                         ; $5C49: $04
    inc de                                        ; $5C4A: $13
    inc c                                         ; $5C4B: $0C
    inc de                                        ; $5C4C: $13
    inc c                                         ; $5C4D: $0C
    rrca                                          ; $5C4E: $0F
    nop                                           ; $5C4F: $00
    ld e, h                                       ; $5C50: $5C
    and b                                         ; $5C51: $A0
    jr nz, @-$3E                                  ; $5C52: $20 $C0

    ret nz                                        ; $5C54: $C0

    nop                                           ; $5C55: $00
    ldh [rP1], a                                  ; $5C56: $E0 $00
    ldh [rP1], a                                  ; $5C58: $E0 $00
    ret nc                                        ; $5C5A: $D0

    jr nz, jr_00B_5C3D                            ; $5C5B: $20 $E0

    nop                                           ; $5C5D: $00
    ret nz                                        ; $5C5E: $C0

    nop                                           ; $5C5F: $00
    ld a, d                                       ; $5C60: $7A
    dec h                                         ; $5C61: $25
    inc a                                         ; $5C62: $3C
    inc bc                                        ; $5C63: $03
    rlca                                          ; $5C64: $07
    nop                                           ; $5C65: $00
    dec bc                                        ; $5C66: $0B
    inc b                                         ; $5C67: $04
    dec bc                                        ; $5C68: $0B
    inc b                                         ; $5C69: $04
    dec bc                                        ; $5C6A: $0B
    inc b                                         ; $5C6B: $04
    inc de                                        ; $5C6C: $13
    inc c                                         ; $5C6D: $0C
    inc de                                        ; $5C6E: $13
    inc c                                         ; $5C6F: $0C
    ccf                                           ; $5C70: $3F
    rrca                                          ; $5C71: $0F
    rrca                                          ; $5C72: $0F
    inc bc                                        ; $5C73: $03
    rlca                                          ; $5C74: $07
    nop                                           ; $5C75: $00
    dec bc                                        ; $5C76: $0B
    inc b                                         ; $5C77: $04
    dec bc                                        ; $5C78: $0B
    inc b                                         ; $5C79: $04
    dec bc                                        ; $5C7A: $0B
    inc b                                         ; $5C7B: $04
    inc de                                        ; $5C7C: $13
    inc c                                         ; $5C7D: $0C
    inc de                                        ; $5C7E: $13
    inc c                                         ; $5C7F: $0C
    rrca                                          ; $5C80: $0F
    rlca                                          ; $5C81: $07
    rlca                                          ; $5C82: $07
    nop                                           ; $5C83: $00
    inc bc                                        ; $5C84: $03
    nop                                           ; $5C85: $00
    inc bc                                        ; $5C86: $03
    nop                                           ; $5C87: $00
    ld bc, $0100                                  ; $5C88: $01 $00 $01

jr_00B_5C8B:
    nop                                           ; $5C8B: $00
    inc bc                                        ; $5C8C: $03

jr_00B_5C8D:
    nop                                           ; $5C8D: $00
    inc bc                                        ; $5C8E: $03

jr_00B_5C8F:
    nop                                           ; $5C8F: $00
    ld hl, sp-$10                                 ; $5C90: $F8 $F0
    ldh a, [rP1]                                  ; $5C92: $F0 $00
    ldh [rP1], a                                  ; $5C94: $E0 $00
    or b                                          ; $5C96: $B0
    ld b, b                                       ; $5C97: $40
    or b                                          ; $5C98: $B0
    ld b, b                                       ; $5C99: $40
    sub b                                         ; $5C9A: $90
    ld h, b                                       ; $5C9B: $60
    sub b                                         ; $5C9C: $90
    ld h, b                                       ; $5C9D: $60
    ldh [rP1], a                                  ; $5C9E: $E0 $00
    ld [$7A55], a                                 ; $5CA0: $EA $55 $7A
    dec h                                         ; $5CA3: $25
    inc a                                         ; $5CA4: $3C
    inc bc                                        ; $5CA5: $03
    rlca                                          ; $5CA6: $07
    nop                                           ; $5CA7: $00
    dec bc                                        ; $5CA8: $0B

jr_00B_5CA9:
    inc b                                         ; $5CA9: $04
    dec bc                                        ; $5CAA: $0B

jr_00B_5CAB:
    inc b                                         ; $5CAB: $04
    add hl, bc                                    ; $5CAC: $09

jr_00B_5CAD:
    ld b, $09                                     ; $5CAD: $06 $09

jr_00B_5CAF:
    ld b, $57                                     ; $5CAF: $06 $57
    xor d                                         ; $5CB1: $AA
    ld e, [hl]                                    ; $5CB2: $5E
    and h                                         ; $5CB3: $A4
    inc a                                         ; $5CB4: $3C
    ret nz                                        ; $5CB5: $C0

    ldh [rP1], a                                  ; $5CB6: $E0 $00
    ret nc                                        ; $5CB8: $D0

    jr nz, jr_00B_5C8B                            ; $5CB9: $20 $D0

    jr nz, jr_00B_5C8D                            ; $5CBB: $20 $D0

    jr nz, jr_00B_5C8F                            ; $5CBD: $20 $D0

    jr nz, jr_00B_5D40                            ; $5CBF: $20 $7F

    ccf                                           ; $5CC1: $3F
    ccf                                           ; $5CC2: $3F
    rrca                                          ; $5CC3: $0F

jr_00B_5CC4:
    rrca                                          ; $5CC4: $0F
    inc bc                                        ; $5CC5: $03
    rlca                                          ; $5CC6: $07
    nop                                           ; $5CC7: $00
    dec bc                                        ; $5CC8: $0B
    inc b                                         ; $5CC9: $04
    dec bc                                        ; $5CCA: $0B
    inc b                                         ; $5CCB: $04
    add hl, bc                                    ; $5CCC: $09
    ld b, $09                                     ; $5CCD: $06 $09
    ld b, $FF                                     ; $5CCF: $06 $FF
    db $FC                                        ; $5CD1: $FC

jr_00B_5CD2:
    db $FC                                        ; $5CD2: $FC
    ldh a, [$F0]                                  ; $5CD3: $F0 $F0
    ret nz                                        ; $5CD5: $C0

    ldh [rP1], a                                  ; $5CD6: $E0 $00
    ret nc                                        ; $5CD8: $D0

    jr nz, jr_00B_5CAB                            ; $5CD9: $20 $D0

    jr nz, jr_00B_5CAD                            ; $5CDB: $20 $D0

    jr nz, jr_00B_5CAF                            ; $5CDD: $20 $D0

    jr nz, jr_00B_5CED                            ; $5CDF: $20 $0C

    inc bc                                        ; $5CE1: $03
    inc b                                         ; $5CE2: $04
    inc bc                                        ; $5CE3: $03
    rlca                                          ; $5CE4: $07
    nop                                           ; $5CE5: $00
    rlca                                          ; $5CE6: $07
    ld [bc], a                                    ; $5CE7: $02
    rrca                                          ; $5CE8: $0F
    inc b                                         ; $5CE9: $04
    ld c, $01                                     ; $5CEA: $0E $01
    db $10                                        ; $5CEC: $10

jr_00B_5CED:
    rrca                                          ; $5CED: $0F
    rrca                                          ; $5CEE: $0F
    nop                                           ; $5CEF: $00
    ld b, b                                       ; $5CF0: $40
    add b                                         ; $5CF1: $80
    ret nz                                        ; $5CF2: $C0

    nop                                           ; $5CF3: $00
    ret nz                                        ; $5CF4: $C0

    add b                                         ; $5CF5: $80
    ldh a, [$80]                                  ; $5CF6: $F0 $80
    ret z                                         ; $5CF8: $C8

    jr nc, jr_00B_5D43                            ; $5CF9: $30 $48

    or b                                          ; $5CFB: $B0
    ld [hl], b                                    ; $5CFC: $70
    add b                                         ; $5CFD: $80
    ret nz                                        ; $5CFE: $C0

    nop                                           ; $5CFF: $00
    ld [hl], b                                    ; $5D00: $70
    add b                                         ; $5D01: $80
    jr nz, jr_00B_5CC4                            ; $5D02: $20 $C0

    ldh [rP1], a                                  ; $5D04: $E0 $00
    ldh a, [rLCDC]                                ; $5D06: $F0 $40
    ret z                                         ; $5D08: $C8

    jr nc, jr_00B_5C8F                            ; $5D09: $30 $84

    ld a, b                                       ; $5D0B: $78
    call nz, $F838                                ; $5D0C: $C4 $38 $F8
    nop                                           ; $5D0F: $00
    jr nc, jr_00B_5CD2                            ; $5D10: $30 $C0

    jr nz, @-$3E                                  ; $5D12: $20 $C0

    ldh [rP1], a                                  ; $5D14: $E0 $00
    ldh [rLCDC], a                                ; $5D16: $E0 $40
    ld hl, sp+$40                                 ; $5D18: $F8 $40
    db $E4                                        ; $5D1A: $E4
    jr jr_00B_5CA9                                ; $5D1B: $18 $8C

    ld [hl], b                                    ; $5D1D: $70
    ld hl, sp+$00                                 ; $5D1E: $F8 $00
    adc b                                         ; $5D20: $88
    ld [hl], b                                    ; $5D21: $70
    add sp, $10                                   ; $5D22: $E8 $10

jr_00B_5D24:
    ld hl, sp+$40                                 ; $5D24: $F8 $40
    ld hl, sp+$50                                 ; $5D26: $F8 $50
    cp $10                                        ; $5D28: $FE $10
    cp c                                          ; $5D2A: $B9
    ld b, [hl]                                    ; $5D2B: $46
    db $E3                                        ; $5D2C: $E3
    inc e                                         ; $5D2D: $1C
    ld a, $00                                     ; $5D2E: $3E $00
    cp $00                                        ; $5D30: $FE $00
    ld h, d                                       ; $5D32: $62
    inc e                                         ; $5D33: $1C
    ld a, d                                       ; $5D34: $7A
    inc b                                         ; $5D35: $04
    ld a, [hl]                                    ; $5D36: $7E
    jr z, jr_00B_5DB2                             ; $5D37: $28 $79

    ld h, $71                                     ; $5D39: $26 $71
    ld c, $52                                     ; $5D3B: $0E $52
    inc l                                         ; $5D3D: $2C
    ld a, $00                                     ; $5D3E: $3E $00

jr_00B_5D40:
    jp nz, $4E3C                                  ; $5D40: $C2 $3C $4E

jr_00B_5D43:
    jr nc, jr_00B_5DC1                            ; $5D43: $30 $7C

    ld [$207C], sp                                ; $5D45: $08 $7C $20
    inc h                                         ; $5D48: $24
    jr jr_00B_5D6D                                ; $5D49: $18 $22

    inc e                                         ; $5D4B: $1C
    ld d, d                                       ; $5D4C: $52
    inc l                                         ; $5D4D: $2C
    ld a, [hl]                                    ; $5D4E: $7E
    nop                                           ; $5D4F: $00
    jr c, jr_00B_5D59                             ; $5D50: $38 $07

    inc b                                         ; $5D52: $04
    inc bc                                        ; $5D53: $03

jr_00B_5D54:
    rlca                                          ; $5D54: $07
    nop                                           ; $5D55: $00
    ld b, $01                                     ; $5D56: $06 $01
    rlca                                          ; $5D58: $07

jr_00B_5D59:
    nop                                           ; $5D59: $00
    dec bc                                        ; $5D5A: $0B
    inc b                                         ; $5D5B: $04
    dec bc                                        ; $5D5C: $0B
    inc b                                         ; $5D5D: $04
    rlca                                          ; $5D5E: $07
    nop                                           ; $5D5F: $00
    and b                                         ; $5D60: $A0
    ld b, b                                       ; $5D61: $40
    jr nz, jr_00B_5D24                            ; $5D62: $20 $C0

    ret nz                                        ; $5D64: $C0

    nop                                           ; $5D65: $00
    add b                                         ; $5D66: $80
    nop                                           ; $5D67: $00
    ld h, b                                       ; $5D68: $60
    add b                                         ; $5D69: $80
    sub b                                         ; $5D6A: $90
    ld h, b                                       ; $5D6B: $60
    sub b                                         ; $5D6C: $90

jr_00B_5D6D:
    ld h, b                                       ; $5D6D: $60
    ldh [rP1], a                                  ; $5D6E: $E0 $00
    ld b, d                                       ; $5D70: $42
    inc a                                         ; $5D71: $3C
    ld a, h                                       ; $5D72: $7C
    nop                                           ; $5D73: $00
    ld d, b                                       ; $5D74: $50
    jr nz, @+$5A                                  ; $5D75: $20 $58

    jr nz, jr_00B_5DD1                            ; $5D77: $20 $58

    jr nz, jr_00B_5D8B                            ; $5D79: $20 $10

    ld h, b                                       ; $5D7B: $60
    sub b                                         ; $5D7C: $90
    ld h, b                                       ; $5D7D: $60
    ldh a, [rP1]                                  ; $5D7E: $F0 $00
    jr c, jr_00B_5D89                             ; $5D80: $38 $07

    inc b                                         ; $5D82: $04
    inc bc                                        ; $5D83: $03
    rlca                                          ; $5D84: $07
    nop                                           ; $5D85: $00
    ld b, $01                                     ; $5D86: $06 $01
    dec b                                         ; $5D88: $05

jr_00B_5D89:
    ld [bc], a                                    ; $5D89: $02
    add hl, bc                                    ; $5D8A: $09

jr_00B_5D8B:
    ld b, $09                                     ; $5D8B: $06 $09
    ld b, $07                                     ; $5D8D: $06 $07
    nop                                           ; $5D8F: $00
    and b                                         ; $5D90: $A0
    ld b, b                                       ; $5D91: $40
    jr nz, jr_00B_5D54                            ; $5D92: $20 $C0

    ret nz                                        ; $5D94: $C0

    nop                                           ; $5D95: $00
    add b                                         ; $5D96: $80
    nop                                           ; $5D97: $00
    ret nz                                        ; $5D98: $C0

    nop                                           ; $5D99: $00
    ret nz                                        ; $5D9A: $C0

    nop                                           ; $5D9B: $00
    and b                                         ; $5D9C: $A0
    ld b, b                                       ; $5D9D: $40
    ret nz                                        ; $5D9E: $C0

    nop                                           ; $5D9F: $00
    inc b                                         ; $5DA0: $04
    inc bc                                        ; $5DA1: $03
    ld [bc], a                                    ; $5DA2: $02
    ld bc, $000F                                  ; $5DA3: $01 $0F $00
    ccf                                           ; $5DA6: $3F
    inc b                                         ; $5DA7: $04
    ld e, a                                       ; $5DA8: $5F
    jr z, jr_00B_5DF4                             ; $5DA9: $28 $49

    ld [hl], $61                                  ; $5DAB: $36 $61
    ld e, $7F                                     ; $5DAD: $1E $7F
    nop                                           ; $5DAF: $00
    add b                                         ; $5DB0: $80
    nop                                           ; $5DB1: $00

jr_00B_5DB2:
    add b                                         ; $5DB2: $80
    nop                                           ; $5DB3: $00
    ldh a, [rP1]                                  ; $5DB4: $F0 $00
    ret z                                         ; $5DB6: $C8

    or b                                          ; $5DB7: $B0
    adc b                                         ; $5DB8: $88
    ld [hl], b                                    ; $5DB9: $70
    db $10                                        ; $5DBA: $10
    ldh [$30], a                                  ; $5DBB: $E0 $30
    ret nz                                        ; $5DBD: $C0

    ldh [rP1], a                                  ; $5DBE: $E0 $00
    sub b                                         ; $5DC0: $90

jr_00B_5DC1:
    ld h, b                                       ; $5DC1: $60
    ld d, b                                       ; $5DC2: $50
    jr nz, jr_00B_5E35                            ; $5DC3: $20 $70

    nop                                           ; $5DC5: $00
    ld a, b                                       ; $5DC6: $78
    jr nz, jr_00B_5E45                            ; $5DC7: $20 $7C

    nop                                           ; $5DC9: $00
    add [hl]                                      ; $5DCA: $86
    ld a, b                                       ; $5DCB: $78
    add d                                         ; $5DCC: $82
    ld a, h                                       ; $5DCD: $7C
    cp $00                                        ; $5DCE: $FE $00
    inc b                                         ; $5DD0: $04

jr_00B_5DD1:
    inc bc                                        ; $5DD1: $03
    ld [bc], a                                    ; $5DD2: $02
    ld bc, $0007                                  ; $5DD3: $01 $07 $00
    rrca                                          ; $5DD6: $0F
    ld [bc], a                                    ; $5DD7: $02
    rra                                           ; $5DD8: $1F
    nop                                           ; $5DD9: $00
    jr z, jr_00B_5DF3                             ; $5DDA: $28 $17

    jr nc, jr_00B_5DED                            ; $5DDC: $30 $0F

    rra                                           ; $5DDE: $1F
    nop                                           ; $5DDF: $00
    add b                                         ; $5DE0: $80
    nop                                           ; $5DE1: $00

jr_00B_5DE2:
    ret nz                                        ; $5DE2: $C0

    nop                                           ; $5DE3: $00
    ld hl, sp+$00                                 ; $5DE4: $F8 $00
    db $E4                                        ; $5DE6: $E4
    ld e, b                                       ; $5DE7: $58
    call nz, $8838                                ; $5DE8: $C4 $38 $88
    ld [hl], b                                    ; $5DEB: $70
    sbc b                                         ; $5DEC: $98

jr_00B_5DED:
    ld h, b                                       ; $5DED: $60
    ldh [rP1], a                                  ; $5DEE: $E0 $00
    rrca                                          ; $5DF0: $0F
    nop                                           ; $5DF1: $00
    rra                                           ; $5DF2: $1F

jr_00B_5DF3:
    rrca                                          ; $5DF3: $0F

jr_00B_5DF4:
    rst $38                                       ; $5DF4: $FF
    ld e, $FF                                     ; $5DF5: $1E $FF
    rrca                                          ; $5DF7: $0F
    rst $38                                       ; $5DF8: $FF
    inc b                                         ; $5DF9: $04
    db $FC                                        ; $5DFA: $FC
    inc bc                                        ; $5DFB: $03
    ld [$7A55], a                                 ; $5DFC: $EA $55 $7A
    dec h                                         ; $5DFF: $25
    ldh [rP1], a                                  ; $5E00: $E0 $00

jr_00B_5E02:
    ldh a, [$E0]                                  ; $5E02: $F0 $E0
    ld hl, sp-$10                                 ; $5E04: $F8 $F0
    ld hl, sp+$70                                 ; $5E06: $F8 $70
    ld a, h                                       ; $5E08: $7C
    sbc b                                         ; $5E09: $98
    inc e                                         ; $5E0A: $1C
    add sp, $5C                                   ; $5E0B: $E8 $5C
    xor b                                         ; $5E0D: $A8
    ld e, b                                       ; $5E0E: $58
    and b                                         ; $5E0F: $A0
    ld a, h                                       ; $5E10: $7C
    dec sp                                        ; $5E11: $3B
    ccf                                           ; $5E12: $3F
    db $10                                        ; $5E13: $10
    ld a, [de]                                    ; $5E14: $1A
    dec b                                         ; $5E15: $05
    rrca                                          ; $5E16: $0F
    inc b                                         ; $5E17: $04
    rrca                                          ; $5E18: $0F
    dec b                                         ; $5E19: $05
    inc sp                                        ; $5E1A: $33
    inc c                                         ; $5E1B: $0C
    ld [hl], d                                    ; $5E1C: $72
    dec l                                         ; $5E1D: $2D
    rst $38                                       ; $5E1E: $FF
    ld h, b                                       ; $5E1F: $60
    jr nc, jr_00B_5DE2                            ; $5E20: $30 $C0

jr_00B_5E22:
    ldh [rP1], a                                  ; $5E22: $E0 $00
    ld b, b                                       ; $5E24: $40
    add b                                         ; $5E25: $80
    ldh [rP1], a                                  ; $5E26: $E0 $00
    ldh [$80], a                                  ; $5E28: $E0 $80
    ret nc                                        ; $5E2A: $D0

    jr nz, @+$7A                                  ; $5E2B: $20 $78

    sub b                                         ; $5E2D: $90
    cp b                                          ; $5E2E: $B8
    db $10                                        ; $5E2F: $10
    ld a, h                                       ; $5E30: $7C
    dec sp                                        ; $5E31: $3B
    ld a, a                                       ; $5E32: $7F
    jr nc, jr_00B_5E6F                            ; $5E33: $30 $3A

jr_00B_5E35:
    dec b                                         ; $5E35: $05
    rrca                                          ; $5E36: $0F
    inc b                                         ; $5E37: $04
    rrca                                          ; $5E38: $0F
    dec b                                         ; $5E39: $05
    ld [hl], e                                    ; $5E3A: $73
    inc c                                         ; $5E3B: $0C
    ld a, [c]                                     ; $5E3C: $F2
    ld l, l                                       ; $5E3D: $6D
    rst $38                                       ; $5E3E: $FF
    ld h, b                                       ; $5E3F: $60
    jr nc, jr_00B_5E02                            ; $5E40: $30 $C0

    ldh [rP1], a                                  ; $5E42: $E0 $00
    ld b, b                                       ; $5E44: $40

jr_00B_5E45:
    add b                                         ; $5E45: $80
    ldh [rP1], a                                  ; $5E46: $E0 $00
    ldh [$80], a                                  ; $5E48: $E0 $80
    ret nc                                        ; $5E4A: $D0

    jr nz, @+$7A                                  ; $5E4B: $20 $78

    sub b                                         ; $5E4D: $90
    cp h                                          ; $5E4E: $BC
    jr jr_00B_5ECD                                ; $5E4F: $18 $7C

    dec sp                                        ; $5E51: $3B
    rst $38                                       ; $5E52: $FF
    ld [hl], b                                    ; $5E53: $70
    ld a, d                                       ; $5E54: $7A
    dec b                                         ; $5E55: $05
    rrca                                          ; $5E56: $0F
    inc b                                         ; $5E57: $04
    ld l, a                                       ; $5E58: $6F
    dec b                                         ; $5E59: $05
    di                                            ; $5E5A: $F3
    ld l, h                                       ; $5E5B: $6C
    ld a, [c]                                     ; $5E5C: $F2
    ld l, l                                       ; $5E5D: $6D
    rst $38                                       ; $5E5E: $FF
    ld b, b                                       ; $5E5F: $40
    jr nc, jr_00B_5E22                            ; $5E60: $30 $C0

    ldh [rP1], a                                  ; $5E62: $E0 $00
    ld b, b                                       ; $5E64: $40
    add b                                         ; $5E65: $80
    ldh [rP1], a                                  ; $5E66: $E0 $00

jr_00B_5E68:
    ldh [$80], a                                  ; $5E68: $E0 $80
    ret c                                         ; $5E6A: $D8

    jr nz, @+$7E                                  ; $5E6B: $20 $7C

    sbc b                                         ; $5E6D: $98
    cp h                                          ; $5E6E: $BC

jr_00B_5E6F:
    jr jr_00B_5E68                                ; $5E6F: $18 $F7

    ld b, e                                       ; $5E71: $43
    rst $38                                       ; $5E72: $FF
    ld d, e                                       ; $5E73: $53
    rst $38                                       ; $5E74: $FF
    ld l, e                                       ; $5E75: $6B
    ld a, a                                       ; $5E76: $7F
    ld [$0E1F], sp                                ; $5E77: $08 $1F $0E
    rrca                                          ; $5E7A: $0F
    ld b, $06                                     ; $5E7B: $06 $06
    nop                                           ; $5E7D: $00
    nop                                           ; $5E7E: $00
    nop                                           ; $5E7F: $00
    ld hl, sp-$70                                 ; $5E80: $F8 $90
    ld hl, sp-$50                                 ; $5E82: $F8 $B0
    ldh a, [rNR41]                                ; $5E84: $F0 $20
    ldh [$80], a                                  ; $5E86: $E0 $80
    ret nz                                        ; $5E88: $C0

    add b                                         ; $5E89: $80
    add b                                         ; $5E8A: $80
    nop                                           ; $5E8B: $00
    nop                                           ; $5E8C: $00
    nop                                           ; $5E8D: $00
    nop                                           ; $5E8E: $00
    nop                                           ; $5E8F: $00
    rst $30                                       ; $5E90: $F7
    ld b, e                                       ; $5E91: $43
    rst $38                                       ; $5E92: $FF
    ld [hl], e                                    ; $5E93: $73
    ld a, a                                       ; $5E94: $7F
    dec hl                                        ; $5E95: $2B
    ccf                                           ; $5E96: $3F
    ld [$0E1F], sp                                ; $5E97: $08 $1F $0E
    rrca                                          ; $5E9A: $0F
    ld b, $06                                     ; $5E9B: $06 $06
    nop                                           ; $5E9D: $00
    nop                                           ; $5E9E: $00
    nop                                           ; $5E9F: $00
    db $FC                                        ; $5EA0: $FC
    sbc b                                         ; $5EA1: $98
    ld hl, sp-$60                                 ; $5EA2: $F8 $A0
    ldh [rP1], a                                  ; $5EA4: $E0 $00
    ret nz                                        ; $5EA6: $C0

    add b                                         ; $5EA7: $80
    ret nz                                        ; $5EA8: $C0

    add b                                         ; $5EA9: $80
    add b                                         ; $5EAA: $80
    nop                                           ; $5EAB: $00
    nop                                           ; $5EAC: $00
    nop                                           ; $5EAD: $00
    nop                                           ; $5EAE: $00
    nop                                           ; $5EAF: $00
    rst $30                                       ; $5EB0: $F7
    ld b, e                                       ; $5EB1: $43
    ld a, a                                       ; $5EB2: $7F
    inc sp                                        ; $5EB3: $33
    ccf                                           ; $5EB4: $3F
    dec bc                                        ; $5EB5: $0B
    rra                                           ; $5EB6: $1F
    ld [$0E1F], sp                                ; $5EB7: $08 $1F $0E
    rrca                                          ; $5EBA: $0F
    ld b, $06                                     ; $5EBB: $06 $06
    nop                                           ; $5EBD: $00
    nop                                           ; $5EBE: $00
    nop                                           ; $5EBF: $00
    ld hl, sp-$70                                 ; $5EC0: $F8 $90
    ldh a, [$A0]                                  ; $5EC2: $F0 $A0
    ldh [rP1], a                                  ; $5EC4: $E0 $00
    ret nz                                        ; $5EC6: $C0

    add b                                         ; $5EC7: $80
    ret nz                                        ; $5EC8: $C0

    add b                                         ; $5EC9: $80
    add b                                         ; $5ECA: $80
    nop                                           ; $5ECB: $00
    nop                                           ; $5ECC: $00

jr_00B_5ECD:
    nop                                           ; $5ECD: $00
    nop                                           ; $5ECE: $00
    nop                                           ; $5ECF: $00
    inc bc                                        ; $5ED0: $03
    nop                                           ; $5ED1: $00
    rla                                           ; $5ED2: $17
    inc bc                                        ; $5ED3: $03
    rra                                           ; $5ED4: $1F
    rlca                                          ; $5ED5: $07
    rra                                           ; $5ED6: $1F
    rlca                                          ; $5ED7: $07
    rra                                           ; $5ED8: $1F
    rlca                                          ; $5ED9: $07
    rra                                           ; $5EDA: $1F
    rrca                                          ; $5EDB: $0F
    rra                                           ; $5EDC: $1F
    rrca                                          ; $5EDD: $0F
    ccf                                           ; $5EDE: $3F
    rra                                           ; $5EDF: $1F
    ld hl, sp+$00                                 ; $5EE0: $F8 $00
    db $FC                                        ; $5EE2: $FC
    ld hl, sp-$02                                 ; $5EE3: $F8 $FE
    cp h                                          ; $5EE5: $BC
    cp $9C                                        ; $5EE6: $FE $9C
    cp $8C                                        ; $5EE8: $FE $8C
    cp $84                                        ; $5EEA: $FE $84
    db $EC                                        ; $5EEC: $EC
    ret nc                                        ; $5EED: $D0

    add sp, -$30                                  ; $5EEE: $E8 $D0
    inc bc                                        ; $5EF0: $03
    nop                                           ; $5EF1: $00
    rla                                           ; $5EF2: $17
    inc bc                                        ; $5EF3: $03
    rra                                           ; $5EF4: $1F
    rlca                                          ; $5EF5: $07
    rra                                           ; $5EF6: $1F
    rlca                                          ; $5EF7: $07
    rra                                           ; $5EF8: $1F
    rlca                                          ; $5EF9: $07
    rra                                           ; $5EFA: $1F
    rrca                                          ; $5EFB: $0F
    ccf                                           ; $5EFC: $3F
    rra                                           ; $5EFD: $1F
    ccf                                           ; $5EFE: $3F
    rra                                           ; $5EFF: $1F
    inc bc                                        ; $5F00: $03
    nop                                           ; $5F01: $00
    rla                                           ; $5F02: $17
    inc bc                                        ; $5F03: $03
    rra                                           ; $5F04: $1F
    rlca                                          ; $5F05: $07
    rra                                           ; $5F06: $1F
    rlca                                          ; $5F07: $07
    rra                                           ; $5F08: $1F
    rlca                                          ; $5F09: $07
    rra                                           ; $5F0A: $1F
    rrca                                          ; $5F0B: $0F
    ccf                                           ; $5F0C: $3F
    rra                                           ; $5F0D: $1F
    rra                                           ; $5F0E: $1F
    rrca                                          ; $5F0F: $0F
    rra                                           ; $5F10: $1F
    rrca                                          ; $5F11: $0F
    rrca                                          ; $5F12: $0F
    nop                                           ; $5F13: $00
    rra                                           ; $5F14: $1F
    dec bc                                        ; $5F15: $0B
    ccf                                           ; $5F16: $3F
    inc d                                         ; $5F17: $14
    ld a, [hl]                                    ; $5F18: $7E
    add hl, hl                                    ; $5F19: $29
    db $FD                                        ; $5F1A: $FD
    ld e, b                                       ; $5F1B: $58
    rst $38                                       ; $5F1C: $FF
    ld e, l                                       ; $5F1D: $5D
    ld a, a                                       ; $5F1E: $7F
    rra                                           ; $5F1F: $1F
    ld hl, sp-$20                                 ; $5F20: $F8 $E0
    ldh a, [rP1]                                  ; $5F22: $F0 $00
    and b                                         ; $5F24: $A0
    ld b, b                                       ; $5F25: $40
    ldh a, [rLCDC]                                ; $5F26: $F0 $40
    ldh a, [rLCDC]                                ; $5F28: $F0 $40
    ret nc                                        ; $5F2A: $D0

    ld h, b                                       ; $5F2B: $60
    ret nc                                        ; $5F2C: $D0

    and b                                         ; $5F2D: $A0
    ldh [rP1], a                                  ; $5F2E: $E0 $00
    rra                                           ; $5F30: $1F
    rrca                                          ; $5F31: $0F
    rrca                                          ; $5F32: $0F
    nop                                           ; $5F33: $00
    rra                                           ; $5F34: $1F
    dec bc                                        ; $5F35: $0B
    ld a, a                                       ; $5F36: $7F
    inc e                                         ; $5F37: $1C
    cp $59                                        ; $5F38: $FE $59
    db $FD                                        ; $5F3A: $FD
    ld e, b                                       ; $5F3B: $58
    rst $38                                       ; $5F3C: $FF
    ld e, l                                       ; $5F3D: $5D
    ld a, a                                       ; $5F3E: $7F
    rrca                                          ; $5F3F: $0F
    rra                                           ; $5F40: $1F
    rrca                                          ; $5F41: $0F
    rrca                                          ; $5F42: $0F
    nop                                           ; $5F43: $00
    rra                                           ; $5F44: $1F
    dec bc                                        ; $5F45: $0B
    ld a, a                                       ; $5F46: $7F
    inc e                                         ; $5F47: $1C
    cp $59                                        ; $5F48: $FE $59
    rst $38                                       ; $5F4A: $FF
    ld e, h                                       ; $5F4B: $5C
    ld a, a                                       ; $5F4C: $7F
    rrca                                          ; $5F4D: $0F
    rrca                                          ; $5F4E: $0F
    nop                                           ; $5F4F: $00
    rst $38                                       ; $5F50: $FF
    ld b, [hl]                                    ; $5F51: $46
    ld a, a                                       ; $5F52: $7F
    ld a, [bc]                                    ; $5F53: $0A
    ld a, a                                       ; $5F54: $7F
    ld h, $FF                                     ; $5F55: $26 $FF
    ld e, d                                       ; $5F57: $5A
    rst $38                                       ; $5F58: $FF
    ld e, h                                       ; $5F59: $5C
    ld a, a                                       ; $5F5A: $7F
    inc c                                         ; $5F5B: $0C
    ld c, $00                                     ; $5F5C: $0E $00
    nop                                           ; $5F5E: $00
    nop                                           ; $5F5F: $00
    ld a, a                                       ; $5F60: $7F
    ld b, $3F                                     ; $5F61: $06 $3F
    ld a, [bc]                                    ; $5F63: $0A
    ld a, a                                       ; $5F64: $7F
    ld h, $FF                                     ; $5F65: $26 $FF
    ld e, d                                       ; $5F67: $5A
    rst $38                                       ; $5F68: $FF
    ld e, h                                       ; $5F69: $5C
    ld a, a                                       ; $5F6A: $7F
    inc c                                         ; $5F6B: $0C
    ld c, $00                                     ; $5F6C: $0E $00
    nop                                           ; $5F6E: $00
    nop                                           ; $5F6F: $00
    ccf                                           ; $5F70: $3F
    ld b, $7F                                     ; $5F71: $06 $7F
    ld a, [bc]                                    ; $5F73: $0A
    ld a, a                                       ; $5F74: $7F
    ld h, $FF                                     ; $5F75: $26 $FF
    ld e, d                                       ; $5F77: $5A
    rst $38                                       ; $5F78: $FF
    ld e, h                                       ; $5F79: $5C
    ld a, a                                       ; $5F7A: $7F
    inc c                                         ; $5F7B: $0C
    ld c, $00                                     ; $5F7C: $0E $00
    nop                                           ; $5F7E: $00
    nop                                           ; $5F7F: $00
    nop                                           ; $5F80: $00
    rst $38                                       ; $5F81: $FF
    nop                                           ; $5F82: $00
    rst $38                                       ; $5F83: $FF
    nop                                           ; $5F84: $00
    rst $38                                       ; $5F85: $FF
    nop                                           ; $5F86: $00
    rst $38                                       ; $5F87: $FF
    nop                                           ; $5F88: $00
    rst $38                                       ; $5F89: $FF
    nop                                           ; $5F8A: $00
    rst $38                                       ; $5F8B: $FF
    nop                                           ; $5F8C: $00
    rst $38                                       ; $5F8D: $FF
    nop                                           ; $5F8E: $00
    rst $38                                       ; $5F8F: $FF
    nop                                           ; $5F90: $00
    rst $38                                       ; $5F91: $FF
    nop                                           ; $5F92: $00
    rst $38                                       ; $5F93: $FF
    nop                                           ; $5F94: $00
    rst $38                                       ; $5F95: $FF
    nop                                           ; $5F96: $00
    rst $38                                       ; $5F97: $FF
    nop                                           ; $5F98: $00
    rst $38                                       ; $5F99: $FF
    nop                                           ; $5F9A: $00
    rst $38                                       ; $5F9B: $FF
    nop                                           ; $5F9C: $00
    rst $38                                       ; $5F9D: $FF
    nop                                           ; $5F9E: $00
    rst $38                                       ; $5F9F: $FF
    nop                                           ; $5FA0: $00
    rst $38                                       ; $5FA1: $FF
    nop                                           ; $5FA2: $00
    rst $38                                       ; $5FA3: $FF
    nop                                           ; $5FA4: $00
    rst $38                                       ; $5FA5: $FF
    nop                                           ; $5FA6: $00
    rst $38                                       ; $5FA7: $FF
    nop                                           ; $5FA8: $00
    rst $38                                       ; $5FA9: $FF
    nop                                           ; $5FAA: $00
    rst $38                                       ; $5FAB: $FF
    nop                                           ; $5FAC: $00
    rst $38                                       ; $5FAD: $FF
    nop                                           ; $5FAE: $00
    rst $38                                       ; $5FAF: $FF
    nop                                           ; $5FB0: $00
    rst $38                                       ; $5FB1: $FF
    nop                                           ; $5FB2: $00
    rst $38                                       ; $5FB3: $FF
    nop                                           ; $5FB4: $00
    rst $38                                       ; $5FB5: $FF
    nop                                           ; $5FB6: $00
    rst $38                                       ; $5FB7: $FF
    nop                                           ; $5FB8: $00
    rst $38                                       ; $5FB9: $FF
    nop                                           ; $5FBA: $00
    rst $38                                       ; $5FBB: $FF
    nop                                           ; $5FBC: $00
    rst $38                                       ; $5FBD: $FF
    nop                                           ; $5FBE: $00
    rst $38                                       ; $5FBF: $FF
    nop                                           ; $5FC0: $00
    rst $38                                       ; $5FC1: $FF
    nop                                           ; $5FC2: $00
    rst $38                                       ; $5FC3: $FF
    nop                                           ; $5FC4: $00
    rst $38                                       ; $5FC5: $FF
    nop                                           ; $5FC6: $00
    rst $38                                       ; $5FC7: $FF

jr_00B_5FC8:
    nop                                           ; $5FC8: $00
    rst $38                                       ; $5FC9: $FF
    nop                                           ; $5FCA: $00
    rst $38                                       ; $5FCB: $FF
    nop                                           ; $5FCC: $00
    rst $38                                       ; $5FCD: $FF
    nop                                           ; $5FCE: $00
    rst $38                                       ; $5FCF: $FF
    nop                                           ; $5FD0: $00
    rst $38                                       ; $5FD1: $FF
    nop                                           ; $5FD2: $00
    rst $38                                       ; $5FD3: $FF
    nop                                           ; $5FD4: $00
    rst $38                                       ; $5FD5: $FF
    nop                                           ; $5FD6: $00
    rst $38                                       ; $5FD7: $FF
    nop                                           ; $5FD8: $00
    rst $38                                       ; $5FD9: $FF
    nop                                           ; $5FDA: $00
    rst $38                                       ; $5FDB: $FF
    nop                                           ; $5FDC: $00
    rst $38                                       ; $5FDD: $FF
    nop                                           ; $5FDE: $00
    rst $38                                       ; $5FDF: $FF
    nop                                           ; $5FE0: $00
    rst $38                                       ; $5FE1: $FF
    nop                                           ; $5FE2: $00
    rst $38                                       ; $5FE3: $FF
    nop                                           ; $5FE4: $00
    rst $38                                       ; $5FE5: $FF
    nop                                           ; $5FE6: $00
    rst $38                                       ; $5FE7: $FF
    nop                                           ; $5FE8: $00
    rst $38                                       ; $5FE9: $FF

jr_00B_5FEA:
    nop                                           ; $5FEA: $00
    rst $38                                       ; $5FEB: $FF
    nop                                           ; $5FEC: $00
    rst $38                                       ; $5FED: $FF
    nop                                           ; $5FEE: $00
    rst $38                                       ; $5FEF: $FF
    nop                                           ; $5FF0: $00
    nop                                           ; $5FF1: $00
    nop                                           ; $5FF2: $00
    nop                                           ; $5FF3: $00
    rlca                                          ; $5FF4: $07
    nop                                           ; $5FF5: $00
    jr c, jr_00B_5FFF                             ; $5FF6: $38 $07

    ld a, b                                       ; $5FF8: $78
    scf                                           ; $5FF9: $37
    ld a, h                                       ; $5FFA: $7C
    dec sp                                        ; $5FFB: $3B
    ld a, h                                       ; $5FFC: $7C
    dec sp                                        ; $5FFD: $3B
    ld a, h                                       ; $5FFE: $7C

jr_00B_5FFF:
    dec hl                                        ; $5FFF: $2B
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    ret nz                                        ; $6004: $C0

    nop                                           ; $6005: $00
    jr nz, jr_00B_5FC8                            ; $6006: $20 $C0

    jr jr_00B_5FEA                                ; $6008: $18 $E0

    inc e                                         ; $600A: $1C
    add sp, $1C                                   ; $600B: $E8 $1C
    add sp, $18                                   ; $600D: $E8 $18
    ldh [rP1], a                                  ; $600F: $E0 $00
    nop                                           ; $6011: $00
    nop                                           ; $6012: $00
    nop                                           ; $6013: $00
    rlca                                          ; $6014: $07
    nop                                           ; $6015: $00
    ld [$3007], sp                                ; $6016: $08 $07 $30
    rrca                                          ; $6019: $0F
    ld [hl], b                                    ; $601A: $70
    cpl                                           ; $601B: $2F
    ldh a, [$6F]                                  ; $601C: $F0 $6F
    ldh a, [$6F]                                  ; $601E: $F0 $6F
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    nop                                           ; $6023: $00
    rlca                                          ; $6024: $07
    nop                                           ; $6025: $00
    ld [$3007], sp                                ; $6026: $08 $07 $30
    rrca                                          ; $6029: $0F
    ld [hl], b                                    ; $602A: $70
    cpl                                           ; $602B: $2F
    db $FC                                        ; $602C: $FC
    ld [hl], e                                    ; $602D: $73
    rst $38                                       ; $602E: $FF
    ld a, h                                       ; $602F: $7C
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    rlca                                          ; $6034: $07
    nop                                           ; $6035: $00
    ld [$1807], sp                                ; $6036: $08 $07 $18
    rlca                                          ; $6039: $07
    ccf                                           ; $603A: $3F
    jr jr_00B_60BC                                ; $603B: $18 $7F

    ccf                                           ; $603D: $3F
    ld a, a                                       ; $603E: $7F
    ccf                                           ; $603F: $3F
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    nop                                           ; $6043: $00
    ldh a, [rP1]                                  ; $6044: $F0 $00
    ld [$E8F0], sp                                ; $6046: $08 $F0 $E8
    db $10                                        ; $6049: $10
    ld hl, sp-$20                                 ; $604A: $F8 $E0
    db $FC                                        ; $604C: $FC
    ldh a, [$FE]                                  ; $604D: $F0 $FE
    call nz, $172F                                ; $604F: $C4 $2F $17
    rra                                           ; $6052: $1F
    ld c, $3C                                     ; $6053: $0E $3C
    inc de                                        ; $6055: $13
    ccf                                           ; $6056: $3F
    inc bc                                        ; $6057: $03
    ccf                                           ; $6058: $3F
    inc bc                                        ; $6059: $03
    ld a, a                                       ; $605A: $7F
    ld bc, HeaderManufacturerCode                 ; $605B: $01 $3F $01
    rra                                           ; $605E: $1F
    nop                                           ; $605F: $00
    ld a, b                                       ; $6060: $78
    ldh a, [$7C]                                  ; $6061: $F0 $7C
    cp b                                          ; $6063: $B8
    inc e                                         ; $6064: $1C
    add sp, -$18                                  ; $6065: $E8 $E8
    ret nz                                        ; $6067: $C0

    ldh a, [$E0]                                  ; $6068: $F0 $E0
    ldh a, [$E0]                                  ; $606A: $F0 $E0
    ldh a, [$C0]                                  ; $606C: $F0 $C0
    ldh [rP1], a                                  ; $606E: $E0 $00
    ld a, [hl]                                    ; $6070: $7E
    cpl                                           ; $6071: $2F
    ld a, $1D                                     ; $6072: $3E $1D
    ld a, h                                       ; $6074: $7C
    inc hl                                        ; $6075: $23
    cpl                                           ; $6076: $2F
    inc bc                                        ; $6077: $03
    rra                                           ; $6078: $1F
    inc bc                                        ; $6079: $03
    rra                                           ; $607A: $1F
    ld bc, $011F                                  ; $607B: $01 $1F $01
    rra                                           ; $607E: $1F
    nop                                           ; $607F: $00
    ld a, a                                       ; $6080: $7F
    ccf                                           ; $6081: $3F
    ccf                                           ; $6082: $3F
    rra                                           ; $6083: $1F
    ld a, a                                       ; $6084: $7F
    daa                                           ; $6085: $27
    cpl                                           ; $6086: $2F
    inc bc                                        ; $6087: $03
    rra                                           ; $6088: $1F
    inc bc                                        ; $6089: $03
    rra                                           ; $608A: $1F
    ld bc, $011F                                  ; $608B: $01 $1F $01
    rra                                           ; $608E: $1F
    nop                                           ; $608F: $00
    ccf                                           ; $6090: $3F
    rrca                                          ; $6091: $0F
    rra                                           ; $6092: $1F
    rrca                                          ; $6093: $0F
    rra                                           ; $6094: $1F
    ld c, $1F                                     ; $6095: $0E $1F
    ld b, $1F                                     ; $6097: $06 $1F
    ld b, $0F                                     ; $6099: $06 $0F
    nop                                           ; $609B: $00
    rrca                                          ; $609C: $0F
    nop                                           ; $609D: $00
    rrca                                          ; $609E: $0F
    nop                                           ; $609F: $00
    xor $94                                       ; $60A0: $EE $94
    sbc h                                         ; $60A2: $9C
    ld l, b                                       ; $60A3: $68
    db $FC                                        ; $60A4: $FC
    ld [$08FC], sp                                ; $60A5: $08 $FC $08
    db $FC                                        ; $60A8: $FC
    nop                                           ; $60A9: $00
    db $FC                                        ; $60AA: $FC
    nop                                           ; $60AB: $00
    db $FC                                        ; $60AC: $FC
    nop                                           ; $60AD: $00
    db $FC                                        ; $60AE: $FC
    nop                                           ; $60AF: $00
    ldh a, [$6F]                                  ; $60B0: $F0 $6F
    ld a, [hl]                                    ; $60B2: $7E
    cpl                                           ; $60B3: $2F
    ld a, $1D                                     ; $60B4: $3E $1D
    ld a, h                                       ; $60B6: $7C
    inc hl                                        ; $60B7: $23
    cpl                                           ; $60B8: $2F
    inc bc                                        ; $60B9: $03
    rra                                           ; $60BA: $1F
    inc bc                                        ; $60BB: $03

jr_00B_60BC:
    rra                                           ; $60BC: $1F
    ld bc, $011F                                  ; $60BD: $01 $1F $01
    rrca                                          ; $60C0: $0F
    or $7E                                        ; $60C1: $F6 $7E
    db $F4                                        ; $60C3: $F4
    ld a, h                                       ; $60C4: $7C
    cp b                                          ; $60C5: $B8
    ld e, $E4                                     ; $60C6: $1E $E4
    db $F4                                        ; $60C8: $F4
    ret nz                                        ; $60C9: $C0

    ld hl, sp-$40                                 ; $60CA: $F8 $C0
    ld hl, sp-$40                                 ; $60CC: $F8 $C0
    ld hl, sp-$80                                 ; $60CE: $F8 $80
    rst $38                                       ; $60D0: $FF
    ld a, h                                       ; $60D1: $7C
    ld a, a                                       ; $60D2: $7F
    ccf                                           ; $60D3: $3F
    ccf                                           ; $60D4: $3F
    rra                                           ; $60D5: $1F
    ld a, a                                       ; $60D6: $7F
    daa                                           ; $60D7: $27
    cpl                                           ; $60D8: $2F
    inc bc                                        ; $60D9: $03
    rra                                           ; $60DA: $1F
    inc bc                                        ; $60DB: $03
    rra                                           ; $60DC: $1F
    ld bc, $011F                                  ; $60DD: $01 $1F $01
    rst $38                                       ; $60E0: $FF
    ld a, $FE                                     ; $60E1: $3E $FE
    db $FC                                        ; $60E3: $FC
    db $FC                                        ; $60E4: $FC
    ld hl, sp-$02                                 ; $60E5: $F8 $FE
    db $E4                                        ; $60E7: $E4
    db $F4                                        ; $60E8: $F4
    ret nz                                        ; $60E9: $C0

    ld hl, sp-$40                                 ; $60EA: $F8 $C0
    ld hl, sp-$40                                 ; $60EC: $F8 $C0
    ld hl, sp-$80                                 ; $60EE: $F8 $80
    rra                                           ; $60F0: $1F
    nop                                           ; $60F1: $00
    rra                                           ; $60F2: $1F
    nop                                           ; $60F3: $00
    rra                                           ; $60F4: $1F
    nop                                           ; $60F5: $00
    rra                                           ; $60F6: $1F
    nop                                           ; $60F7: $00
    ccf                                           ; $60F8: $3F
    nop                                           ; $60F9: $00
    ccf                                           ; $60FA: $3F
    ld b, $3F                                     ; $60FB: $06 $3F
    ld e, $1F                                     ; $60FD: $1E $1F
    nop                                           ; $60FF: $00
    ldh [rP1], a                                  ; $6100: $E0 $00
    ldh [rP1], a                                  ; $6102: $E0 $00
    ldh a, [rP1]                                  ; $6104: $F0 $00
    ldh a, [rP1]                                  ; $6106: $F0 $00
    ld hl, sp+$30                                 ; $6108: $F8 $30
    ld hl, sp-$10                                 ; $610A: $F8 $F0
    ldh a, [rP1]                                  ; $610C: $F0 $00
    nop                                           ; $610E: $00
    nop                                           ; $610F: $00
    rra                                           ; $6110: $1F
    nop                                           ; $6111: $00
    rra                                           ; $6112: $1F
    nop                                           ; $6113: $00
    rra                                           ; $6114: $1F
    nop                                           ; $6115: $00
    ccf                                           ; $6116: $3F
    nop                                           ; $6117: $00
    ccf                                           ; $6118: $3F
    inc c                                         ; $6119: $0C
    ccf                                           ; $611A: $3F
    ld e, $3F                                     ; $611B: $1E $3F
    inc e                                         ; $611D: $1C
    rra                                           ; $611E: $1F
    nop                                           ; $611F: $00
    ld hl, sp+$00                                 ; $6120: $F8 $00
    ld hl, sp+$00                                 ; $6122: $F8 $00
    ld hl, sp+$00                                 ; $6124: $F8 $00
    ld hl, sp+$00                                 ; $6126: $F8 $00
    ld hl, sp+$00                                 ; $6128: $F8 $00
    db $FC                                        ; $612A: $FC
    ld [$70FC], sp                                ; $612B: $08 $FC $70
    ld hl, sp+$00                                 ; $612E: $F8 $00
    rrca                                          ; $6130: $0F
    nop                                           ; $6131: $00
    rra                                           ; $6132: $1F
    nop                                           ; $6133: $00
    rra                                           ; $6134: $1F
    nop                                           ; $6135: $00
    rra                                           ; $6136: $1F
    nop                                           ; $6137: $00
    rra                                           ; $6138: $1F
    nop                                           ; $6139: $00
    rrca                                          ; $613A: $0F
    ld b, $0F                                     ; $613B: $06 $0F
    nop                                           ; $613D: $00
    nop                                           ; $613E: $00
    nop                                           ; $613F: $00
    ld hl, sp+$00                                 ; $6140: $F8 $00
    ld hl, sp+$00                                 ; $6142: $F8 $00
    ld hl, sp+$00                                 ; $6144: $F8 $00
    ld hl, sp+$00                                 ; $6146: $F8 $00
    ld hl, sp+$00                                 ; $6148: $F8 $00
    db $FC                                        ; $614A: $FC
    ld [$70FC], sp                                ; $614B: $08 $FC $70
    ld hl, sp+$00                                 ; $614E: $F8 $00
    ccf                                           ; $6150: $3F
    nop                                           ; $6151: $00
    ccf                                           ; $6152: $3F
    nop                                           ; $6153: $00
    ccf                                           ; $6154: $3F
    nop                                           ; $6155: $00
    ccf                                           ; $6156: $3F
    nop                                           ; $6157: $00
    rra                                           ; $6158: $1F
    nop                                           ; $6159: $00
    rrca                                          ; $615A: $0F
    ld bc, $050F                                  ; $615B: $01 $0F $05
    rlca                                          ; $615E: $07
    nop                                           ; $615F: $00
    ldh a, [rP1]                                  ; $6160: $F0 $00
    ldh a, [rP1]                                  ; $6162: $F0 $00
    ldh a, [rP1]                                  ; $6164: $F0 $00
    ldh a, [rP1]                                  ; $6166: $F0 $00

jr_00B_6168:
    ldh [$C0], a                                  ; $6168: $E0 $C0
    ldh [$C0], a                                  ; $616A: $E0 $C0
    ret nz                                        ; $616C: $C0

    add b                                         ; $616D: $80
    ret nz                                        ; $616E: $C0

    nop                                           ; $616F: $00
    rrca                                          ; $6170: $0F
    nop                                           ; $6171: $00
    rrca                                          ; $6172: $0F
    nop                                           ; $6173: $00
    rrca                                          ; $6174: $0F
    nop                                           ; $6175: $00
    rrca                                          ; $6176: $0F
    nop                                           ; $6177: $00
    rrca                                          ; $6178: $0F
    nop                                           ; $6179: $00
    rlca                                          ; $617A: $07
    nop                                           ; $617B: $00
    rlca                                          ; $617C: $07
    inc bc                                        ; $617D: $03
    rlca                                          ; $617E: $07
    nop                                           ; $617F: $00
    ld hl, sp+$00                                 ; $6180: $F8 $00
    ld hl, sp+$00                                 ; $6182: $F8 $00
    ld hl, sp+$00                                 ; $6184: $F8 $00
    ld hl, sp+$00                                 ; $6186: $F8 $00
    ld hl, sp+$00                                 ; $6188: $F8 $00
    ldh a, [$60]                                  ; $618A: $F0 $60
    ldh a, [$60]                                  ; $618C: $F0 $60
    ldh a, [rP1]                                  ; $618E: $F0 $00
    nop                                           ; $6190: $00
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    nop                                           ; $6193: $00
    rrca                                          ; $6194: $0F
    nop                                           ; $6195: $00
    db $10                                        ; $6196: $10
    rrca                                          ; $6197: $0F
    jr nz, jr_00B_61B9                            ; $6198: $20 $1F

    inc a                                         ; $619A: $3C
    inc bc                                        ; $619B: $03
    ld a, [hl]                                    ; $619C: $7E
    dec a                                         ; $619D: $3D
    cp $7D                                        ; $619E: $FE $7D
    nop                                           ; $61A0: $00
    nop                                           ; $61A1: $00
    nop                                           ; $61A2: $00
    nop                                           ; $61A3: $00
    ret nz                                        ; $61A4: $C0

    nop                                           ; $61A5: $00
    jr nz, jr_00B_6168                            ; $61A6: $20 $C0

jr_00B_61A8:
    db $10                                        ; $61A8: $10
    ldh [rNR10], a                                ; $61A9: $E0 $10
    ldh [rNR10], a                                ; $61AB: $E0 $10
    ldh [$F0], a                                  ; $61AD: $E0 $F0
    ldh [$FE], a                                  ; $61AF: $E0 $FE
    ld a, l                                       ; $61B1: $7D
    db $FD                                        ; $61B2: $FD
    ld a, e                                       ; $61B3: $7B
    ld a, c                                       ; $61B4: $79
    scf                                           ; $61B5: $37
    ld a, h                                       ; $61B6: $7C
    dec sp                                        ; $61B7: $3B
    ccf                                           ; $61B8: $3F

jr_00B_61B9:
    db $10                                        ; $61B9: $10
    ccf                                           ; $61BA: $3F
    nop                                           ; $61BB: $00
    ccf                                           ; $61BC: $3F
    nop                                           ; $61BD: $00
    ccf                                           ; $61BE: $3F
    nop                                           ; $61BF: $00
    ldh a, [$E0]                                  ; $61C0: $F0 $E0
    ldh a, [$E0]                                  ; $61C2: $F0 $E0
    ld d, b                                       ; $61C4: $50
    and b                                         ; $61C5: $A0

jr_00B_61C6:
    jr nc, jr_00B_61A8                            ; $61C6: $30 $E0

    ld hl, sp+$30                                 ; $61C8: $F8 $30
    ld hl, sp+$30                                 ; $61CA: $F8 $30
    ld hl, sp+$30                                 ; $61CC: $F8 $30
    ld hl, sp+$10                                 ; $61CE: $F8 $10
    db $FD                                        ; $61D0: $FD
    ld a, e                                       ; $61D1: $7B
    ld a, c                                       ; $61D2: $79
    scf                                           ; $61D3: $37
    ld a, h                                       ; $61D4: $7C
    dec sp                                        ; $61D5: $3B
    ccf                                           ; $61D6: $3F
    db $10                                        ; $61D7: $10
    ccf                                           ; $61D8: $3F
    nop                                           ; $61D9: $00
    ccf                                           ; $61DA: $3F
    nop                                           ; $61DB: $00
    ccf                                           ; $61DC: $3F
    nop                                           ; $61DD: $00
    rra                                           ; $61DE: $1F
    nop                                           ; $61DF: $00
    ldh a, [$E0]                                  ; $61E0: $F0 $E0
    ld d, b                                       ; $61E2: $50
    and b                                         ; $61E3: $A0
    jr nc, jr_00B_61C6                            ; $61E4: $30 $E0

    ld hl, sp+$30                                 ; $61E6: $F8 $30
    ld hl, sp+$30                                 ; $61E8: $F8 $30
    ld hl, sp+$30                                 ; $61EA: $F8 $30
    ld hl, sp+$10                                 ; $61EC: $F8 $10
    ldh a, [rP1]                                  ; $61EE: $F0 $00
    rra                                           ; $61F0: $1F
    nop                                           ; $61F1: $00
    rra                                           ; $61F2: $1F
    nop                                           ; $61F3: $00
    rrca                                          ; $61F4: $0F
    nop                                           ; $61F5: $00
    rra                                           ; $61F6: $1F
    nop                                           ; $61F7: $00
    ccf                                           ; $61F8: $3F
    db $10                                        ; $61F9: $10
    ccf                                           ; $61FA: $3F
    ld e, $3F                                     ; $61FB: $1E $3F
    rrca                                          ; $61FD: $0F
    ccf                                           ; $61FE: $3F

jr_00B_61FF:
    nop                                           ; $61FF: $00
    ldh a, [rP1]                                  ; $6200: $F0 $00
    ldh a, [rP1]                                  ; $6202: $F0 $00

jr_00B_6204:
    db $FC                                        ; $6204: $FC
    nop                                           ; $6205: $00
    cp $0C                                        ; $6206: $FE $0C
    cp $1C                                        ; $6208: $FE $1C
    db $FC                                        ; $620A: $FC
    jr @-$02                                      ; $620B: $18 $FC

    jr nz, jr_00B_61FF                            ; $620D: $20 $F0

    nop                                           ; $620F: $00
    rra                                           ; $6210: $1F
    nop                                           ; $6211: $00
    rrca                                          ; $6212: $0F
    nop                                           ; $6213: $00
    rrca                                          ; $6214: $0F
    nop                                           ; $6215: $00
    rrca                                          ; $6216: $0F
    nop                                           ; $6217: $00
    rra                                           ; $6218: $1F
    nop                                           ; $6219: $00
    rra                                           ; $621A: $1F
    inc bc                                        ; $621B: $03
    rra                                           ; $621C: $1F
    rlca                                          ; $621D: $07
    rrca                                          ; $621E: $0F
    nop                                           ; $621F: $00
    ldh a, [rP1]                                  ; $6220: $F0 $00
    ldh a, [rP1]                                  ; $6222: $F0 $00
    ldh a, [rP1]                                  ; $6224: $F0 $00
    ldh a, [rP1]                                  ; $6226: $F0 $00
    ld hl, sp+$10                                 ; $6228: $F8 $10
    ld hl, sp-$30                                 ; $622A: $F8 $D0
    ld hl, sp-$40                                 ; $622C: $F8 $C0
    ldh [rP1], a                                  ; $622E: $E0 $00
    rrca                                          ; $6230: $0F
    nop                                           ; $6231: $00
    db $10                                        ; $6232: $10
    rrca                                          ; $6233: $0F
    jr nz, jr_00B_6255                            ; $6234: $20 $1F

    jr nz, jr_00B_6257                            ; $6236: $20 $1F

    jr nz, jr_00B_6259                            ; $6238: $20 $1F

    jr nz, jr_00B_625B                            ; $623A: $20 $1F

    inc de                                        ; $623C: $13
    inc c                                         ; $623D: $0C
    ld a, c                                       ; $623E: $79
    ld b, $C0                                     ; $623F: $06 $C0
    nop                                           ; $6241: $00
    jr nz, jr_00B_6204                            ; $6242: $20 $C0

    db $10                                        ; $6244: $10
    ldh [$D0], a                                  ; $6245: $E0 $D0
    ldh [$D0], a                                  ; $6247: $E0 $D0
    ldh [rNR10], a                                ; $6249: $E0 $10
    ldh [$F0], a                                  ; $624B: $E0 $F0
    nop                                           ; $624D: $00
    inc a                                         ; $624E: $3C
    ret nz                                        ; $624F: $C0

    ldh [rP1], a                                  ; $6250: $E0 $00
    db $10                                        ; $6252: $10
    ldh [$08], a                                  ; $6253: $E0 $08

jr_00B_6255:
    ldh a, [$08]                                  ; $6255: $F0 $08

jr_00B_6257:
    ldh a, [$88]                                  ; $6257: $F0 $88

jr_00B_6259:
    ldh a, [$88]                                  ; $6259: $F0 $88

jr_00B_625B:
    ldh a, [$08]                                  ; $625B: $F0 $08
    ldh a, [$EE]                                  ; $625D: $F0 $EE
    db $10                                        ; $625F: $10
    ldh [rP1], a                                  ; $6260: $E0 $00
    db $10                                        ; $6262: $10
    ldh [$08], a                                  ; $6263: $E0 $08
    ldh a, [$08]                                  ; $6265: $F0 $08
    ldh a, [$08]                                  ; $6267: $F0 $08
    ldh a, [$08]                                  ; $6269: $F0 $08
    ldh a, [$38]                                  ; $626B: $F0 $38
    ret nz                                        ; $626D: $C0

    cp $38                                        ; $626E: $FE $38
    inc bc                                        ; $6270: $03
    nop                                           ; $6271: $00
    inc b                                         ; $6272: $04
    inc bc                                        ; $6273: $03
    ld [$0807], sp                                ; $6274: $08 $07 $08
    rlca                                          ; $6277: $07
    ld [$0807], sp                                ; $6278: $08 $07 $08
    rlca                                          ; $627B: $07
    inc e                                         ; $627C: $1C
    inc bc                                        ; $627D: $03
    ccf                                           ; $627E: $3F
    inc e                                         ; $627F: $1C
    ldh a, [rP1]                                  ; $6280: $F0 $00
    ld [$04F0], sp                                ; $6282: $08 $F0 $04
    ld hl, sp+$04                                 ; $6285: $F8 $04
    ld hl, sp+$04                                 ; $6287: $F8 $04
    ld hl, sp+$04                                 ; $6289: $F8 $04
    ld hl, sp+$64                                 ; $628B: $F8 $64
    sbc b                                         ; $628D: $98
    db $FC                                        ; $628E: $FC
    ld h, b                                       ; $628F: $60
    db $FC                                        ; $6290: $FC
    ld [hl], e                                    ; $6291: $73
    ld a, a                                       ; $6292: $7F
    jr c, jr_00B_6314                             ; $6293: $38 $7F

jr_00B_6295:
    dec e                                         ; $6295: $1D
    ld e, a                                       ; $6296: $5F
    jr nz, jr_00B_62F8                            ; $6297: $20 $5F

    jr nz, @+$41                                  ; $6299: $20 $3F

    jr jr_00B_62D8                                ; $629B: $18 $3B

jr_00B_629D:
    inc e                                         ; $629D: $1C
    inc de                                        ; $629E: $13
    dec c                                         ; $629F: $0D
    ld e, $EC                                     ; $62A0: $1E $EC
    db $FC                                        ; $62A2: $FC

jr_00B_62A3:
    jr jr_00B_629D                                ; $62A3: $18 $F8

    or b                                          ; $62A5: $B0
    ldh a, [rP1]                                  ; $62A6: $F0 $00
    ret nc                                        ; $62A8: $D0

    jr nz, jr_00B_62A3                            ; $62A9: $20 $F8

    jr nz, jr_00B_6295                            ; $62AB: $20 $E8

    db $10                                        ; $62AD: $10
    ldh a, [$C0]                                  ; $62AE: $F0 $C0
    ld e, a                                       ; $62B0: $5F
    xor [hl]                                      ; $62B1: $AE
    ld a, $DC                                     ; $62B2: $3E $DC
    db $FC                                        ; $62B4: $FC
    jr c, @-$02                                   ; $62B5: $38 $FC

    ret nz                                        ; $62B7: $C0

    db $F4                                        ; $62B8: $F4
    ld [$08FC], sp                                ; $62B9: $08 $FC $08
    db $EC                                        ; $62BC: $EC
    jr jr_00B_62A3                                ; $62BD: $18 $E4

    ret c                                         ; $62BF: $D8

    rst $38                                       ; $62C0: $FF
    cp $FE                                        ; $62C1: $FE $FE
    db $FC                                        ; $62C3: $FC
    db $FC                                        ; $62C4: $FC
    ld hl, sp-$04                                 ; $62C5: $F8 $FC
    ret nz                                        ; $62C7: $C0

    db $F4                                        ; $62C8: $F4
    ld [$08FC], sp                                ; $62C9: $08 $FC $08
    db $F4                                        ; $62CC: $F4
    ld [$E0F8], sp                                ; $62CD: $08 $F8 $E0
    ccf                                           ; $62D0: $3F
    rra                                           ; $62D1: $1F
    rra                                           ; $62D2: $1F

jr_00B_62D3:
    rrca                                          ; $62D3: $0F
    rra                                           ; $62D4: $1F
    rlca                                          ; $62D5: $07
    rla                                           ; $62D6: $17
    dec bc                                        ; $62D7: $0B

jr_00B_62D8:
    rra                                           ; $62D8: $1F
    ld [$001F], sp                                ; $62D9: $08 $1F $00
    rrca                                          ; $62DC: $0F
    nop                                           ; $62DD: $00
    rrca                                          ; $62DE: $0F

jr_00B_62DF:
    rlca                                          ; $62DF: $07
    db $FC                                        ; $62E0: $FC
    ldh a, [$FC]                                  ; $62E1: $F0 $FC
    sbc b                                         ; $62E3: $98
    db $FC                                        ; $62E4: $FC
    ld [$40B8], sp                                ; $62E5: $08 $B8 $40
    or b                                          ; $62E8: $B0
    ld b, b                                       ; $62E9: $40
    ld hl, sp+$30                                 ; $62EA: $F8 $30
    db $F4                                        ; $62EC: $F4
    jr c, jr_00B_62D3                             ; $62ED: $38 $E4

    sbc b                                         ; $62EF: $98
    ld [hl], a                                    ; $62F0: $77
    ld [$75FA], sp                                ; $62F1: $08 $FA $75
    ld a, h                                       ; $62F4: $7C
    dec sp                                        ; $62F5: $3B
    ccf                                           ; $62F6: $3F
    inc e                                         ; $62F7: $1C

jr_00B_62F8:
    ccf                                           ; $62F8: $3F
    inc bc                                        ; $62F9: $03
    rla                                           ; $62FA: $17
    inc c                                         ; $62FB: $0C
    dec e                                         ; $62FC: $1D
    ld c, $09                                     ; $62FD: $0E $09
    ld b, $EE                                     ; $62FF: $06 $EE
    db $10                                        ; $6301: $10
    ld e, a                                       ; $6302: $5F
    xor [hl]                                      ; $6303: $AE
    ld a, $DC                                     ; $6304: $3E $DC
    db $FC                                        ; $6306: $FC
    jr c, @-$02                                   ; $6307: $38 $FC

    ret nz                                        ; $6309: $C0

    add sp, $10                                   ; $630A: $E8 $10
    ld hl, sp+$10                                 ; $630C: $F8 $10
    add sp, -$30                                  ; $630E: $E8 $D0
    ld a, a                                       ; $6310: $7F
    inc e                                         ; $6311: $1C
    rst $38                                       ; $6312: $FF
    ld a, a                                       ; $6313: $7F

jr_00B_6314:
    ld a, a                                       ; $6314: $7F
    ccf                                           ; $6315: $3F
    ccf                                           ; $6316: $3F
    rra                                           ; $6317: $1F
    ccf                                           ; $6318: $3F
    inc bc                                        ; $6319: $03
    rla                                           ; $631A: $17
    ld [$081F], sp                                ; $631B: $08 $1F $08
    rla                                           ; $631E: $17
    dec bc                                        ; $631F: $0B
    cp $38                                        ; $6320: $FE $38
    rst $38                                       ; $6322: $FF
    cp $FE                                        ; $6323: $FE $FE
    db $FC                                        ; $6325: $FC
    db $FC                                        ; $6326: $FC
    ld hl, sp-$04                                 ; $6327: $F8 $FC
    ret nz                                        ; $6329: $C0

    db $F4                                        ; $632A: $F4
    ld [$00F8], sp                                ; $632B: $08 $F8 $00
    ldh a, [$E0]                                  ; $632E: $F0 $E0
    rrca                                          ; $6330: $0F
    nop                                           ; $6331: $00
    rrca                                          ; $6332: $0F
    rlca                                          ; $6333: $07
    rra                                           ; $6334: $1F
    rrca                                          ; $6335: $0F
    rra                                           ; $6336: $1F
    rrca                                          ; $6337: $0F
    ccf                                           ; $6338: $3F
    db $10                                        ; $6339: $10
    add hl, sp                                    ; $633A: $39
    ld b, $21                                     ; $633B: $06 $21
    ld e, $1F                                     ; $633D: $1E $1F
    nop                                           ; $633F: $00
    ldh [rP1], a                                  ; $6340: $E0 $00
    ldh [$C0], a                                  ; $6342: $E0 $C0
    ldh a, [$E0]                                  ; $6344: $F0 $E0
    ldh a, [$C0]                                  ; $6346: $F0 $C0
    ret z                                         ; $6348: $C8

    jr nc, @+$0A                                  ; $6349: $30 $08

    ldh a, [$F0]                                  ; $634B: $F0 $F0
    nop                                           ; $634D: $00
    nop                                           ; $634E: $00
    nop                                           ; $634F: $00
    ld hl, sp+$00                                 ; $6350: $F8 $00
    ldh a, [$E0]                                  ; $6352: $F0 $E0
    ld hl, sp-$10                                 ; $6354: $F8 $F0
    ld hl, sp-$40                                 ; $6356: $F8 $C0
    ret z                                         ; $6358: $C8

    jr nc, jr_00B_62DF                            ; $6359: $30 $84

    ld a, b                                       ; $635B: $78
    call nz, Call_00B_7838                        ; $635C: $C4 $38 $78
    nop                                           ; $635F: $00
    ldh a, [rP1]                                  ; $6360: $F0 $00
    ldh a, [$E0]                                  ; $6362: $F0 $E0
    ld hl, sp-$20                                 ; $6364: $F8 $E0
    ld hl, sp-$10                                 ; $6366: $F8 $F0
    ld hl, sp-$10                                 ; $6368: $F8 $F0
    db $F4                                        ; $636A: $F4
    ld [$708C], sp                                ; $636B: $08 $8C $70
    ld hl, sp+$00                                 ; $636E: $F8 $00
    rlca                                          ; $6370: $07
    nop                                           ; $6371: $00
    rlca                                          ; $6372: $07
    inc bc                                        ; $6373: $03
    rrca                                          ; $6374: $0F
    rlca                                          ; $6375: $07
    rrca                                          ; $6376: $0F
    rlca                                          ; $6377: $07
    rrca                                          ; $6378: $0F
    ld bc, $0609                                  ; $6379: $01 $09 $06
    rrca                                          ; $637C: $0F
    nop                                           ; $637D: $00
    nop                                           ; $637E: $00
    nop                                           ; $637F: $00
    db $FC                                        ; $6380: $FC
    ld h, b                                       ; $6381: $60
    ldh a, [$E0]                                  ; $6382: $F0 $E0
    ld hl, sp-$10                                 ; $6384: $F8 $F0
    ld hl, sp-$10                                 ; $6386: $F8 $F0
    ld hl, sp-$20                                 ; $6388: $F8 $E0
    db $F4                                        ; $638A: $F4
    ld [$708C], sp                                ; $638B: $08 $8C $70
    ld hl, sp+$00                                 ; $638E: $F8 $00
    rrca                                          ; $6390: $0F
    nop                                           ; $6391: $00
    rlca                                          ; $6392: $07
    inc bc                                        ; $6393: $03
    rrca                                          ; $6394: $0F
    rlca                                          ; $6395: $07
    rrca                                          ; $6396: $0F
    rlca                                          ; $6397: $07
    rrca                                          ; $6398: $0F
    ld b, $07                                     ; $6399: $06 $07
    nop                                           ; $639B: $00
    dec b                                         ; $639C: $05
    ld [bc], a                                    ; $639D: $02
    inc bc                                        ; $639E: $03
    nop                                           ; $639F: $00
    ld hl, sp+$00                                 ; $63A0: $F8 $00
    ldh a, [$E0]                                  ; $63A2: $F0 $E0

jr_00B_63A4:
    ldh a, [$E0]                                  ; $63A4: $F0 $E0
    ldh a, [$80]                                  ; $63A6: $F0 $80
    sub b                                         ; $63A8: $90
    ld h, b                                       ; $63A9: $60
    db $10                                        ; $63AA: $10
    ldh [rNR41], a                                ; $63AB: $E0 $20
    ret nz                                        ; $63AD: $C0

    ldh [rP1], a                                  ; $63AE: $E0 $00
    rrca                                          ; $63B0: $0F
    nop                                           ; $63B1: $00
    rlca                                          ; $63B2: $07
    inc bc                                        ; $63B3: $03
    rrca                                          ; $63B4: $0F
    rlca                                          ; $63B5: $07
    rrca                                          ; $63B6: $0F
    rlca                                          ; $63B7: $07
    rrca                                          ; $63B8: $0F
    rlca                                          ; $63B9: $07
    rlca                                          ; $63BA: $07
    nop                                           ; $63BB: $00
    inc b                                         ; $63BC: $04
    inc bc                                        ; $63BD: $03
    rlca                                          ; $63BE: $07
    nop                                           ; $63BF: $00
    ldh a, [rP1]                                  ; $63C0: $F0 $00
    ld hl, sp-$10                                 ; $63C2: $F8 $F0
    ld hl, sp-$10                                 ; $63C4: $F8 $F0
    ld hl, sp-$50                                 ; $63C6: $F8 $B0
    ldh a, [rP1]                                  ; $63C8: $F0 $00
    sub b                                         ; $63CA: $90
    ld h, b                                       ; $63CB: $60
    sub b                                         ; $63CC: $90
    ld h, b                                       ; $63CD: $60
    ldh a, [rP1]                                  ; $63CE: $F0 $00
    rrca                                          ; $63D0: $0F
    nop                                           ; $63D1: $00
    db $10                                        ; $63D2: $10
    rrca                                          ; $63D3: $0F
    jr nz, jr_00B_63F5                            ; $63D4: $20 $1F

    jr nz, jr_00B_63F7                            ; $63D6: $20 $1F

    jr nz, jr_00B_63F9                            ; $63D8: $20 $1F

    jr nz, @+$21                                  ; $63DA: $20 $1F

    db $10                                        ; $63DC: $10
    rrca                                          ; $63DD: $0F
    ld a, $11                                     ; $63DE: $3E $11
    ret nz                                        ; $63E0: $C0

    nop                                           ; $63E1: $00
    jr nz, jr_00B_63A4                            ; $63E2: $20 $C0

    db $10                                        ; $63E4: $10
    ldh [$30], a                                  ; $63E5: $E0 $30
    ldh [$30], a                                  ; $63E7: $E0 $30
    ldh [rNR10], a                                ; $63E9: $E0 $10
    ldh [$F0], a                                  ; $63EB: $E0 $F0
    nop                                           ; $63ED: $00
    ld d, b                                       ; $63EE: $50
    and b                                         ; $63EF: $A0
    ld a, $11                                     ; $63F0: $3E $11
    ld a, a                                       ; $63F2: $7F
    ld a, $7F                                     ; $63F3: $3E $7F

jr_00B_63F5:
    ccf                                           ; $63F5: $3F
    ld a, a                                       ; $63F6: $7F

jr_00B_63F7:
    ld a, $3E                                     ; $63F7: $3E $3E

jr_00B_63F9:
    ld de, $001F                                  ; $63F9: $11 $1F $00
    cpl                                           ; $63FC: $2F
    db $10                                        ; $63FD: $10
    cpl                                           ; $63FE: $2F
    rla                                           ; $63FF: $17
    ld d, b                                       ; $6400: $50
    and b                                         ; $6401: $A0
    db $10                                        ; $6402: $10
    ldh [$E0], a                                  ; $6403: $E0 $E0
    nop                                           ; $6405: $00
    ret nz                                        ; $6406: $C0

    add b                                         ; $6407: $80
    ret nz                                        ; $6408: $C0

    nop                                           ; $6409: $00
    ldh [$C0], a                                  ; $640A: $E0 $C0
    ret nc                                        ; $640C: $D0

    ldh [$90], a                                  ; $640D: $E0 $90
    ld h, b                                       ; $640F: $60
    ld a, a                                       ; $6410: $7F
    ld a, $7F                                     ; $6411: $3E $7F
    ccf                                           ; $6413: $3F
    ld a, a                                       ; $6414: $7F
    dec a                                         ; $6415: $3D
    dec a                                         ; $6416: $3D
    ld a, [de]                                    ; $6417: $1A
    dec e                                         ; $6418: $1D
    ld [bc], a                                    ; $6419: $02
    rrca                                          ; $641A: $0F
    inc bc                                        ; $641B: $03
    rrca                                          ; $641C: $0F
    inc bc                                        ; $641D: $03
    ld c, $05                                     ; $641E: $0E $05
    db $10                                        ; $6420: $10
    ldh [$E0], a                                  ; $6421: $E0 $E0
    nop                                           ; $6423: $00
    ret nz                                        ; $6424: $C0

    nop                                           ; $6425: $00
    ldh [rLCDC], a                                ; $6426: $E0 $40
    ldh [rP1], a                                  ; $6428: $E0 $00
    ldh [rP1], a                                  ; $642A: $E0 $00
    ld h, b                                       ; $642C: $60
    add b                                         ; $642D: $80
    ld h, b                                       ; $642E: $60
    ret nz                                        ; $642F: $C0

    ld a, $11                                     ; $6430: $3E $11
    ld a, a                                       ; $6432: $7F
    ld a, $7F                                     ; $6433: $3E $7F
    ccf                                           ; $6435: $3F
    ld a, a                                       ; $6436: $7F
    dec a                                         ; $6437: $3D
    dec a                                         ; $6438: $3D
    ld [de], a                                    ; $6439: $12
    rra                                           ; $643A: $1F
    inc c                                         ; $643B: $0C
    cpl                                           ; $643C: $2F
    inc e                                         ; $643D: $1C
    daa                                           ; $643E: $27
    dec de                                        ; $643F: $1B
    ld d, b                                       ; $6440: $50
    and b                                         ; $6441: $A0
    db $10                                        ; $6442: $10
    ldh [$E0], a                                  ; $6443: $E0 $E0
    nop                                           ; $6445: $00
    ret nz                                        ; $6446: $C0

    nop                                           ; $6447: $00
    ret nz                                        ; $6448: $C0

    nop                                           ; $6449: $00
    ldh [rP1], a                                  ; $644A: $E0 $00
    ret nc                                        ; $644C: $D0

    jr nz, @-$2E                                  ; $644D: $20 $D0

    and b                                         ; $644F: $A0
    rra                                           ; $6450: $1F
    nop                                           ; $6451: $00
    rrca                                          ; $6452: $0F
    rlca                                          ; $6453: $07
    rra                                           ; $6454: $1F
    rrca                                          ; $6455: $0F
    ccf                                           ; $6456: $3F
    rra                                           ; $6457: $1F
    ld e, a                                       ; $6458: $5F
    dec l                                         ; $6459: $2D
    ld c, l                                       ; $645A: $4D
    ld [hl-], a                                   ; $645B: $32
    ld h, c                                       ; $645C: $61
    ld e, $7F                                     ; $645D: $1E $7F
    nop                                           ; $645F: $00
    ldh [rP1], a                                  ; $6460: $E0 $00
    ldh [$C0], a                                  ; $6462: $E0 $C0
    ld hl, sp-$40                                 ; $6464: $F8 $C0
    db $E4                                        ; $6466: $E4
    ret c                                         ; $6467: $D8

    call nz, $C8B8                                ; $6468: $C4 $B8 $C8
    or b                                          ; $646B: $B0
    cp b                                          ; $646C: $B8
    ld b, b                                       ; $646D: $40
    ldh [rP1], a                                  ; $646E: $E0 $00
    rlca                                          ; $6470: $07
    nop                                           ; $6471: $00
    rrca                                          ; $6472: $0F
    rlca                                          ; $6473: $07
    rra                                           ; $6474: $1F
    rrca                                          ; $6475: $0F
    rra                                           ; $6476: $1F
    rrca                                          ; $6477: $0F
    ccf                                           ; $6478: $3F
    db $10                                        ; $6479: $10
    jr c, @+$09                                   ; $647A: $38 $07

    jr nc, jr_00B_648D                            ; $647C: $30 $0F

    rra                                           ; $647E: $1F
    nop                                           ; $647F: $00
    ldh [rP1], a                                  ; $6480: $E0 $00
    ldh [$C0], a                                  ; $6482: $E0 $C0
    ldh [$C0], a                                  ; $6484: $E0 $C0

jr_00B_6486:
    ldh [$80], a                                  ; $6486: $E0 $80
    ret nc                                        ; $6488: $D0

    jr nz, jr_00B_64DB                            ; $6489: $20 $50

    and b                                         ; $648B: $A0
    ld [hl], b                                    ; $648C: $70

jr_00B_648D:
    add b                                         ; $648D: $80
    ret nz                                        ; $648E: $C0

    nop                                           ; $648F: $00
    rra                                           ; $6490: $1F
    nop                                           ; $6491: $00
    rrca                                          ; $6492: $0F
    rlca                                          ; $6493: $07
    rra                                           ; $6494: $1F
    rrca                                          ; $6495: $0F
    ccf                                           ; $6496: $3F
    rra                                           ; $6497: $1F
    ld e, a                                       ; $6498: $5F
    inc hl                                        ; $6499: $23
    ld b, e                                       ; $649A: $43
    dec a                                         ; $649B: $3D
    ld h, c                                       ; $649C: $61
    ld e, $7F                                     ; $649D: $1E $7F
    nop                                           ; $649F: $00
    ldh [rP1], a                                  ; $64A0: $E0 $00
    ret nz                                        ; $64A2: $C0

    add b                                         ; $64A3: $80
    ld hl, sp-$40                                 ; $64A4: $F8 $C0
    db $E4                                        ; $64A6: $E4
    ret c                                         ; $64A7: $D8

    call nz, $C8B8                                ; $64A8: $C4 $B8 $C8
    or b                                          ; $64AB: $B0
    cp b                                          ; $64AC: $B8
    ld b, b                                       ; $64AD: $40
    ldh [rP1], a                                  ; $64AE: $E0 $00
    nop                                           ; $64B0: $00
    nop                                           ; $64B1: $00
    ld bc, $0700                                  ; $64B2: $01 $00 $07
    ld bc, $050B                                  ; $64B5: $01 $0B $05
    rla                                           ; $64B8: $17
    dec c                                         ; $64B9: $0D
    rra                                           ; $64BA: $1F
    ld c, $1F                                     ; $64BB: $0E $1F
    ld c, $1F                                     ; $64BD: $0E $1F
    dec c                                         ; $64BF: $0D
    nop                                           ; $64C0: $00
    nop                                           ; $64C1: $00
    ret nz                                        ; $64C2: $C0

    nop                                           ; $64C3: $00
    jr nz, jr_00B_6486                            ; $64C4: $20 $C0

    or b                                          ; $64C6: $B0
    ret nz                                        ; $64C7: $C0

    xor b                                         ; $64C8: $A8
    ret nc                                        ; $64C9: $D0

    add sp, -$30                                  ; $64CA: $E8 $D0
    add sp, -$50                                  ; $64CC: $E8 $B0
    ld hl, sp+$70                                 ; $64CE: $F8 $70
    nop                                           ; $64D0: $00
    nop                                           ; $64D1: $00
    ld [bc], a                                    ; $64D2: $02
    ld bc, $0007                                  ; $64D3: $01 $07 $00
    dec bc                                        ; $64D6: $0B
    rlca                                          ; $64D7: $07
    dec de                                        ; $64D8: $1B
    ld c, $19                                     ; $64D9: $0E $19

jr_00B_64DB:
    rrca                                          ; $64DB: $0F
    dec de                                        ; $64DC: $1B
    dec c                                         ; $64DD: $0D
    dec e                                         ; $64DE: $1D
    ld a, [bc]                                    ; $64DF: $0A
    nop                                           ; $64E0: $00
    nop                                           ; $64E1: $00
    ldh [$C0], a                                  ; $64E2: $E0 $C0
    ldh a, [rNR41]                                ; $64E4: $F0 $20
    ldh a, [$E0]                                  ; $64E6: $F0 $E0
    ld hl, sp-$10                                 ; $64E8: $F8 $F0
    ret c                                         ; $64EA: $D8

    ld [hl], b                                    ; $64EB: $70
    ret c                                         ; $64EC: $D8

    jr nc, @+$3A                                  ; $64ED: $30 $38

    ret nc                                        ; $64EF: $D0

    ld [hl], b                                    ; $64F0: $70
    nop                                           ; $64F1: $00
    cp a                                          ; $64F2: $BF
    ld [hl], b                                    ; $64F3: $70
    rst $10                                       ; $64F4: $D7
    ld l, a                                       ; $64F5: $6F
    pop af                                        ; $64F6: $F1
    ld e, a                                       ; $64F7: $5F
    ld a, c                                       ; $64F8: $79
    ccf                                           ; $64F9: $3F
    ei                                            ; $64FA: $FB
    ld e, h                                       ; $64FB: $5C
    ld a, h                                       ; $64FC: $7C
    dec bc                                        ; $64FD: $0B
    ld a, [hl+]                                   ; $64FE: $2A
    dec d                                         ; $64FF: $15
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    ldh [rP1], a                                  ; $6502: $E0 $00
    ldh a, [$E0]                                  ; $6504: $F0 $E0
    ld hl, sp-$10                                 ; $6506: $F8 $F0
    ld hl, sp-$10                                 ; $6508: $F8 $F0
    db $FC                                        ; $650A: $FC
    cp b                                          ; $650B: $B8
    cp h                                          ; $650C: $BC
    ld e, b                                       ; $650D: $58
    ld e, h                                       ; $650E: $5C
    xor b                                         ; $650F: $A8
    ld [bc], a                                    ; $6510: $02
    ld bc, $0007                                  ; $6511: $01 $07 $00
    dec bc                                        ; $6514: $0B
    rlca                                          ; $6515: $07
    dec de                                        ; $6516: $1B
    ld c, $19                                     ; $6517: $0E $19
    rrca                                          ; $6519: $0F
    dec de                                        ; $651A: $1B
    dec c                                         ; $651B: $0D
    dec e                                         ; $651C: $1D
    ld a, [bc]                                    ; $651D: $0A
    ld a, [hl+]                                   ; $651E: $2A
    dec d                                         ; $651F: $15
    ldh [$C0], a                                  ; $6520: $E0 $C0
    ldh a, [rNR41]                                ; $6522: $F0 $20
    ldh a, [$E0]                                  ; $6524: $F0 $E0
    ld hl, sp-$10                                 ; $6526: $F8 $F0
    ret c                                         ; $6528: $D8

    ld [hl], b                                    ; $6529: $70
    ret c                                         ; $652A: $D8

    jr nc, jr_00B_6565                            ; $652B: $30 $38

    ret nc                                        ; $652D: $D0

    ld d, h                                       ; $652E: $54
    xor b                                         ; $652F: $A8
    ld bc, $0600                                  ; $6530: $01 $00 $06
    ld bc, $050A                                  ; $6533: $01 $0A $05
    ld [de], a                                    ; $6536: $12
    dec c                                         ; $6537: $0D
    rla                                           ; $6538: $17
    dec c                                         ; $6539: $0D
    rla                                           ; $653A: $17
    ld c, $1F                                     ; $653B: $0E $1F
    ld c, $2F                                     ; $653D: $0E $2F
    ld d, $C0                                     ; $653F: $16 $C0
    nop                                           ; $6541: $00
    ld [hl], b                                    ; $6542: $70
    ret nz                                        ; $6543: $C0

    ldh a, [$C0]                                  ; $6544: $F0 $C0
    add sp, -$30                                  ; $6546: $E8 $D0
    ld hl, sp-$30                                 ; $6548: $F8 $D0
    ld hl, sp-$50                                 ; $654A: $F8 $B0
    ld hl, sp-$50                                 ; $654C: $F8 $B0
    db $F4                                        ; $654E: $F4
    xor b                                         ; $654F: $A8
    dec e                                         ; $6550: $1D
    nop                                           ; $6551: $00
    daa                                           ; $6552: $27
    dec e                                         ; $6553: $1D
    cpl                                           ; $6554: $2F
    dec e                                         ; $6555: $1D
    cpl                                           ; $6556: $2F
    dec de                                        ; $6557: $1B
    ld a, $1B                                     ; $6558: $3E $1B
    inc e                                         ; $655A: $1C

jr_00B_655B:
    dec bc                                        ; $655B: $0B
    rra                                           ; $655C: $1F
    dec bc                                        ; $655D: $0B
    rra                                           ; $655E: $1F
    rlca                                          ; $655F: $07
    ld hl, sp+$00                                 ; $6560: $F8 $00
    inc e                                         ; $6562: $1C
    ld hl, sp-$62                                 ; $6563: $F8 $9E

jr_00B_6565:
    db $FC                                        ; $6565: $FC

jr_00B_6566:
    ld e, $FC                                     ; $6566: $1E $FC
    ld a, [hl]                                    ; $6568: $7E
    db $F4                                        ; $6569: $F4
    cp $E4                                        ; $656A: $FE $E4
    db $EC                                        ; $656C: $EC
    ret nc                                        ; $656D: $D0

    ret z                                         ; $656E: $C8

    or b                                          ; $656F: $B0
    cpl                                           ; $6570: $2F
    ld d, $1F                                     ; $6571: $16 $1F
    rlca                                          ; $6573: $07
    rrca                                          ; $6574: $0F
    inc bc                                        ; $6575: $03
    rlca                                          ; $6576: $07
    nop                                           ; $6577: $00
    dec bc                                        ; $6578: $0B
    inc b                                         ; $6579: $04
    dec bc                                        ; $657A: $0B

jr_00B_657B:
    inc b                                         ; $657B: $04
    add hl, bc                                    ; $657C: $09

jr_00B_657D:
    ld b, $09                                     ; $657D: $06 $09
    ld b, $F4                                     ; $657F: $06 $F4
    add sp, -$08                                  ; $6581: $E8 $F8
    ldh [$F0], a                                  ; $6583: $E0 $F0
    ret nz                                        ; $6585: $C0

    ldh [rP1], a                                  ; $6586: $E0 $00
    ret nc                                        ; $6588: $D0

    jr nz, jr_00B_655B                            ; $6589: $20 $D0

    jr nz, jr_00B_65DD                            ; $658B: $20 $50

    and b                                         ; $658D: $A0
    ret nc                                        ; $658E: $D0

    jr nz, jr_00B_65BB                            ; $658F: $20 $2A

    dec d                                         ; $6591: $15
    ld a, [de]                                    ; $6592: $1A
    dec b                                         ; $6593: $05

jr_00B_6594:
    inc c                                         ; $6594: $0C
    inc bc                                        ; $6595: $03
    rlca                                          ; $6596: $07
    nop                                           ; $6597: $00
    dec bc                                        ; $6598: $0B
    inc b                                         ; $6599: $04
    dec bc                                        ; $659A: $0B
    inc b                                         ; $659B: $04
    add hl, bc                                    ; $659C: $09
    ld b, $09                                     ; $659D: $06 $09
    ld b, $54                                     ; $659F: $06 $54
    xor b                                         ; $65A1: $A8
    ld e, b                                       ; $65A2: $58
    and b                                         ; $65A3: $A0
    jr nc, jr_00B_6566                            ; $65A4: $30 $C0

    ldh [rP1], a                                  ; $65A6: $E0 $00
    ret nc                                        ; $65A8: $D0

jr_00B_65A9:
    jr nz, jr_00B_657B                            ; $65A9: $20 $D0

jr_00B_65AB:
    jr nz, jr_00B_657D                            ; $65AB: $20 $D0

    jr nz, jr_00B_65FF                            ; $65AD: $20 $50

    and b                                         ; $65AF: $A0
    ld a, [de]                                    ; $65B0: $1A
    dec b                                         ; $65B1: $05
    inc b                                         ; $65B2: $04
    inc bc                                        ; $65B3: $03
    dec bc                                        ; $65B4: $0B
    inc b                                         ; $65B5: $04
    dec bc                                        ; $65B6: $0B
    inc b                                         ; $65B7: $04
    dec bc                                        ; $65B8: $0B

jr_00B_65B9:
    inc b                                         ; $65B9: $04
    inc de                                        ; $65BA: $13

jr_00B_65BB:
    inc c                                         ; $65BB: $0C
    inc de                                        ; $65BC: $13
    inc c                                         ; $65BD: $0C
    rrca                                          ; $65BE: $0F
    nop                                           ; $65BF: $00
    ld e, b                                       ; $65C0: $58
    and b                                         ; $65C1: $A0
    jr nz, @-$3E                                  ; $65C2: $20 $C0

    ret nz                                        ; $65C4: $C0

    nop                                           ; $65C5: $00
    ldh [rP1], a                                  ; $65C6: $E0 $00
    ldh [rP1], a                                  ; $65C8: $E0 $00
    ret nc                                        ; $65CA: $D0

    jr nz, jr_00B_662D                            ; $65CB: $20 $60

    add b                                         ; $65CD: $80
    ret nz                                        ; $65CE: $C0

    nop                                           ; $65CF: $00
    ld e, b                                       ; $65D0: $58
    and b                                         ; $65D1: $A0
    jr nc, jr_00B_6594                            ; $65D2: $30 $C0

    ldh [rP1], a                                  ; $65D4: $E0 $00
    ret nc                                        ; $65D6: $D0

    jr nz, jr_00B_65A9                            ; $65D7: $20 $D0

jr_00B_65D9:
    jr nz, jr_00B_65AB                            ; $65D9: $20 $D0

    jr nz, jr_00B_6625                            ; $65DB: $20 $48

jr_00B_65DD:
    or b                                          ; $65DD: $B0
    ret z                                         ; $65DE: $C8

    jr nc, jr_00B_65D9                            ; $65DF: $30 $F8

    ld h, b                                       ; $65E1: $60
    ldh a, [$C0]                                  ; $65E2: $F0 $C0
    ldh [rP1], a                                  ; $65E4: $E0 $00
    ret nc                                        ; $65E6: $D0

    jr nz, jr_00B_65B9                            ; $65E7: $20 $D0

    jr nz, jr_00B_65BB                            ; $65E9: $20 $D0

    jr nz, jr_00B_6635                            ; $65EB: $20 $48

    or b                                          ; $65ED: $B0
    ret z                                         ; $65EE: $C8

    jr nc, @-$0C                                  ; $65EF: $30 $F2

    ld l, h                                       ; $65F1: $6C
    ld a, b                                       ; $65F2: $78
    nop                                           ; $65F3: $00
    ld a, h                                       ; $65F4: $7C
    nop                                           ; $65F5: $00
    halt                                          ; $65F6: $76
    ld [$2816], sp                                ; $65F7: $08 $16 $28
    ld [hl-], a                                   ; $65FA: $32
    inc c                                         ; $65FB: $0C
    ld [hl], d                                    ; $65FC: $72
    inc c                                         ; $65FD: $0C
    ld a, h                                       ; $65FE: $7C

jr_00B_65FF:
    nop                                           ; $65FF: $00
    dec de                                        ; $6600: $1B
    nop                                           ; $6601: $00
    ld l, [hl]                                    ; $6602: $6E
    add hl, de                                    ; $6603: $19
    sbc e                                         ; $6604: $9B
    ld [hl], a                                    ; $6605: $77
    cp a                                          ; $6606: $BF
    ld [hl], a                                    ; $6607: $77
    rst $38                                       ; $6608: $FF
    ld l, a                                       ; $6609: $6F
    rst $38                                       ; $660A: $FF
    ld c, c                                       ; $660B: $49
    jp hl                                         ; $660C: $E9


    ld b, [hl]                                    ; $660D: $46
    ld b, h                                       ; $660E: $44
    inc bc                                        ; $660F: $03
    ldh a, [rP1]                                  ; $6610: $F0 $00
    ld a, b                                       ; $6612: $78
    ldh a, [$FC]                                  ; $6613: $F0 $FC
    ldh a, [$FC]                                  ; $6615: $F0 $FC
    ld hl, sp-$04                                 ; $6617: $F8 $FC
    xor b                                         ; $6619: $A8
    cp b                                          ; $661A: $B8
    ld b, b                                       ; $661B: $40
    ld d, b                                       ; $661C: $50
    and b                                         ; $661D: $A0
    ld d, b                                       ; $661E: $50
    and b                                         ; $661F: $A0
    cp $1C                                        ; $6620: $FE $1C
    ld a, [hl]                                    ; $6622: $7E
    jr nc, jr_00B_6699                            ; $6623: $30 $74

jr_00B_6625:
    ld [$205C], sp                                ; $6625: $08 $5C $20
    inc a                                         ; $6628: $3C
    jr @+$40                                      ; $6629: $18 $3E

    inc e                                         ; $662B: $1C
    ld a, [hl]                                    ; $662C: $7E

jr_00B_662D:
    inc l                                         ; $662D: $2C
    ld a, [hl]                                    ; $662E: $7E
    nop                                           ; $662F: $00
    cp $00                                        ; $6630: $FE $00
    ld a, [hl]                                    ; $6632: $7E
    inc e                                         ; $6633: $1C
    ld a, [hl]                                    ; $6634: $7E

jr_00B_6635:
    nop                                           ; $6635: $00
    ld d, [hl]                                    ; $6636: $56
    jr z, jr_00B_6698                             ; $6637: $28 $5F

    ld h, $7F                                     ; $6639: $26 $7F
    ld c, $7E                                     ; $663B: $0E $7E
    inc l                                         ; $663D: $2C
    ld a, $00                                     ; $663E: $3E $00
    rrca                                          ; $6640: $0F
    rlca                                          ; $6641: $07
    rlca                                          ; $6642: $07
    nop                                           ; $6643: $00
    dec b                                         ; $6644: $05
    ld [bc], a                                    ; $6645: $02
    dec b                                         ; $6646: $05
    ld [bc], a                                    ; $6647: $02
    dec bc                                        ; $6648: $0B
    inc b                                         ; $6649: $04
    rrca                                          ; $664A: $0F
    ld bc, $0F1F                                  ; $664B: $01 $1F $0F
    rrca                                          ; $664E: $0F
    nop                                           ; $664F: $00
    ret nz                                        ; $6650: $C0

    add b                                         ; $6651: $80
    ret nz                                        ; $6652: $C0

    nop                                           ; $6653: $00
    ld b, b                                       ; $6654: $40
    add b                                         ; $6655: $80
    ld [hl], b                                    ; $6656: $70

jr_00B_6657:
    add b                                         ; $6657: $80
    ld hl, sp+$30                                 ; $6658: $F8 $30
    ld hl, sp-$50                                 ; $665A: $F8 $B0
    ldh a, [$80]                                  ; $665C: $F0 $80
    ret nz                                        ; $665E: $C0

    nop                                           ; $665F: $00
    ldh a, [$C0]                                  ; $6660: $F0 $C0
    ldh [rP1], a                                  ; $6662: $E0 $00
    and b                                         ; $6664: $A0
    ld b, b                                       ; $6665: $40
    or b                                          ; $6666: $B0

jr_00B_6667:
    ld b, b                                       ; $6667: $40
    ld hl, sp+$30                                 ; $6668: $F8 $30
    db $FC                                        ; $666A: $FC
    ld a, b                                       ; $666B: $78
    db $FC                                        ; $666C: $FC
    jr c, jr_00B_6667                             ; $666D: $38 $F8

    nop                                           ; $666F: $00
    ldh a, [$C0]                                  ; $6670: $F0 $C0
    ldh [rP1], a                                  ; $6672: $E0 $00
    and b                                         ; $6674: $A0
    ld b, b                                       ; $6675: $40
    and b                                         ; $6676: $A0
    ld b, b                                       ; $6677: $40
    cp b                                          ; $6678: $B8

jr_00B_6679:
    ld b, b                                       ; $6679: $40
    db $FC                                        ; $667A: $FC
    jr jr_00B_6679                                ; $667B: $18 $FC

    ld [hl], b                                    ; $667D: $70
    ld hl, sp+$00                                 ; $667E: $F8 $00
    ld hl, sp+$30                                 ; $6680: $F8 $30
    cp b                                          ; $6682: $B8
    ld b, b                                       ; $6683: $40
    xor b                                         ; $6684: $A8
    ld d, b                                       ; $6685: $50
    xor b                                         ; $6686: $A8
    ld d, b                                       ; $6687: $50
    xor $10                                       ; $6688: $EE $10
    rst $38                                       ; $668A: $FF
    ld b, [hl]                                    ; $668B: $46
    rst $38                                       ; $668C: $FF
    inc e                                         ; $668D: $1C
    ld a, $00                                     ; $668E: $3E $00
    ld b, l                                       ; $6690: $45
    ld a, [hl-]                                   ; $6691: $3A
    ld hl, $3E1E                                  ; $6692: $21 $1E $3E
    nop                                           ; $6695: $00
    ld l, b                                       ; $6696: $68
    db $10                                        ; $6697: $10

jr_00B_6698:
    halt                                          ; $6698: $76

jr_00B_6699:
    ld [$46B9], sp                                ; $6699: $08 $B9 $46
    xor c                                         ; $669C: $A9
    ld d, [hl]                                    ; $669D: $56
    ld a, [hl]                                    ; $669E: $7E
    nop                                           ; $669F: $00
    ld b, d                                       ; $66A0: $42
    inc a                                         ; $66A1: $3C
    ld a, h                                       ; $66A2: $7C
    nop                                           ; $66A3: $00
    ld d, b                                       ; $66A4: $50
    jr nz, jr_00B_66FF                            ; $66A5: $20 $58

    jr nz, jr_00B_6701                            ; $66A7: $20 $58

    jr nz, jr_00B_66BB                            ; $66A9: $20 $10

    ld h, b                                       ; $66AB: $60
    sub b                                         ; $66AC: $90
    ld h, b                                       ; $66AD: $60
    ldh a, [rP1]                                  ; $66AE: $F0 $00
    ld b, l                                       ; $66B0: $45
    ld a, [hl-]                                   ; $66B1: $3A
    ld hl, $3E1E                                  ; $66B2: $21 $1E $3E
    nop                                           ; $66B5: $00
    ld l, b                                       ; $66B6: $68
    db $10                                        ; $66B7: $10
    ld e, h                                       ; $66B8: $5C
    jr nz, jr_00B_6657                            ; $66B9: $20 $9C

jr_00B_66BB:
    ld h, b                                       ; $66BB: $60
    sbc d                                         ; $66BC: $9A
    ld h, h                                       ; $66BD: $64
    ld a, h                                       ; $66BE: $7C
    nop                                           ; $66BF: $00
    rlca                                          ; $66C0: $07
    inc bc                                        ; $66C1: $03
    inc bc                                        ; $66C2: $03
    ld bc, $020D                                  ; $66C3: $01 $0D $02
    dec sp                                        ; $66C6: $3B
    inc b                                         ; $66C7: $04
    ld [hl], a                                    ; $66C8: $77
    jr z, @+$81                                   ; $66C9: $28 $7F

    ld [hl], $7F                                  ; $66CB: $36 $7F
    ld e, $7F                                     ; $66CD: $1E $7F
    nop                                           ; $66CF: $00
    add b                                         ; $66D0: $80
    nop                                           ; $66D1: $00
    add b                                         ; $66D2: $80
    nop                                           ; $66D3: $00
    ldh a, [rP1]                                  ; $66D4: $F0 $00
    ld a, b                                       ; $66D6: $78
    or b                                          ; $66D7: $B0
    ld hl, sp+$70                                 ; $66D8: $F8 $70
    ldh a, [$E0]                                  ; $66DA: $F0 $E0
    ldh a, [$C0]                                  ; $66DC: $F0 $C0
    ldh [rP1], a                                  ; $66DE: $E0 $00
    ldh a, [$60]                                  ; $66E0: $F0 $60
    ld [hl], b                                    ; $66E2: $70
    nop                                           ; $66E3: $00
    ld d, b                                       ; $66E4: $50
    jr nz, jr_00B_673F                            ; $66E5: $20 $58

    jr nz, @+$7E                                  ; $66E7: $20 $7C

    nop                                           ; $66E9: $00
    cp $78                                        ; $66EA: $FE $78
    cp $7C                                        ; $66EC: $FE $7C
    cp $00                                        ; $66EE: $FE $00
    rlca                                          ; $66F0: $07
    ld [bc], a                                    ; $66F1: $02
    ld [bc], a                                    ; $66F2: $02
    ld bc, $0007                                  ; $66F3: $01 $07 $00
    dec c                                         ; $66F6: $0D
    ld [bc], a                                    ; $66F7: $02
    rra                                           ; $66F8: $1F
    nop                                           ; $66F9: $00
    ccf                                           ; $66FA: $3F
    rla                                           ; $66FB: $17
    ccf                                           ; $66FC: $3F
    rrca                                          ; $66FD: $0F
    rra                                           ; $66FE: $1F

jr_00B_66FF:
    nop                                           ; $66FF: $00
    add b                                         ; $6700: $80

jr_00B_6701:
    nop                                           ; $6701: $00
    ret nz                                        ; $6702: $C0

jr_00B_6703:
    nop                                           ; $6703: $00
    ld a, b                                       ; $6704: $78
    add b                                         ; $6705: $80
    cp h                                          ; $6706: $BC
    ld e, b                                       ; $6707: $58
    db $FC                                        ; $6708: $FC
    jr c, jr_00B_6703                             ; $6709: $38 $F8

    ld [hl], b                                    ; $670B: $70
    ld hl, sp+$60                                 ; $670C: $F8 $60
    ldh [rP1], a                                  ; $670E: $E0 $00
    nop                                           ; $6710: $00
    nop                                           ; $6711: $00
    nop                                           ; $6712: $00
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    nop                                           ; $6715: $00
    rra                                           ; $6716: $1F
    nop                                           ; $6717: $00
    ccf                                           ; $6718: $3F
    rra                                           ; $6719: $1F
    ld c, a                                       ; $671A: $4F
    ccf                                           ; $671B: $3F
    adc $7F                                       ; $671C: $CE $7F

jr_00B_671E:
    cp $79                                        ; $671E: $FE $79
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00
    nop                                           ; $6724: $00
    nop                                           ; $6725: $00
    ldh [rP1], a                                  ; $6726: $E0 $00
    jr nc, @-$1E                                  ; $6728: $30 $E0

    ld hl, sp-$10                                 ; $672A: $F8 $F0
    jr c, jr_00B_671E                             ; $672C: $38 $F0

    inc [hl]                                      ; $672E: $34
    ld hl, sp+$00                                 ; $672F: $F8 $00
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    nop                                           ; $6734: $00
    nop                                           ; $6735: $00
    rlca                                          ; $6736: $07
    nop                                           ; $6737: $00
    ld c, $07                                     ; $6738: $0E $07
    inc de                                        ; $673A: $13
    rrca                                          ; $673B: $0F
    inc sp                                        ; $673C: $33
    rra                                           ; $673D: $1F
    ccf                                           ; $673E: $3F

jr_00B_673F:
    rra                                           ; $673F: $1F
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    nop                                           ; $6744: $00
    nop                                           ; $6745: $00
    ldh [rP1], a                                  ; $6746: $E0 $00
    ld [hl], b                                    ; $6748: $70
    ldh [$F8], a                                  ; $6749: $E0 $F8
    ldh a, [$FC]                                  ; $674B: $F0 $FC
    ld hl, sp-$04                                 ; $674D: $F8 $FC
    ld hl, sp+$07                                 ; $674F: $F8 $07
    nop                                           ; $6751: $00
    rlca                                          ; $6752: $07
    ld bc, $0003                                  ; $6753: $01 $03 $00
    inc bc                                        ; $6756: $03
    nop                                           ; $6757: $00
    inc bc                                        ; $6758: $03
    ld bc, $0307                                  ; $6759: $01 $07 $03
    rlca                                          ; $675C: $07
    inc bc                                        ; $675D: $03
    rlca                                          ; $675E: $07
    nop                                           ; $675F: $00
    sub b                                         ; $6760: $90
    ld h, b                                       ; $6761: $60
    ldh [$80], a                                  ; $6762: $E0 $80
    ldh [rP1], a                                  ; $6764: $E0 $00
    and b                                         ; $6766: $A0
    ld b, b                                       ; $6767: $40
    ret nz                                        ; $6768: $C0

    add b                                         ; $6769: $80
    ret nz                                        ; $676A: $C0

    add b                                         ; $676B: $80
    ldh [rLCDC], a                                ; $676C: $E0 $40
    ret nz                                        ; $676E: $C0

    nop                                           ; $676F: $00
    nop                                           ; $6770: $00
    nop                                           ; $6771: $00
    nop                                           ; $6772: $00
    nop                                           ; $6773: $00
    nop                                           ; $6774: $00
    nop                                           ; $6775: $00
    rlca                                          ; $6776: $07
    nop                                           ; $6777: $00
    inc c                                         ; $6778: $0C
    rlca                                          ; $6779: $07
    rla                                           ; $677A: $17
    rrca                                          ; $677B: $0F
    daa                                           ; $677C: $27
    rra                                           ; $677D: $1F
    ccf                                           ; $677E: $3F
    rra                                           ; $677F: $1F
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    nop                                           ; $6784: $00
    nop                                           ; $6785: $00
    ldh a, [rP1]                                  ; $6786: $F0 $00
    ld hl, sp-$10                                 ; $6788: $F8 $F0
    sbc h                                         ; $678A: $9C
    ld hl, sp-$64                                 ; $678B: $F8 $9C
    ld hl, sp-$04                                 ; $678D: $F8 $FC
    add sp, -$17                                  ; $678F: $E8 $E9
    halt                                          ; $6791: $76
    ld l, d                                       ; $6792: $6A
    dec [hl]                                      ; $6793: $35
    ld a, [hl-]                                   ; $6794: $3A
    dec d                                         ; $6795: $15
    inc e                                         ; $6796: $1C
    dec bc                                        ; $6797: $0B
    rrca                                          ; $6798: $0F
    nop                                           ; $6799: $00
    dec bc                                        ; $679A: $0B
    inc b                                         ; $679B: $04
    ld a, [bc]                                    ; $679C: $0A
    dec b                                         ; $679D: $05
    inc de                                        ; $679E: $13
    inc c                                         ; $679F: $0C
    inc [hl]                                      ; $67A0: $34
    ld hl, sp-$08                                 ; $67A1: $F8 $F8
    ld h, b                                       ; $67A3: $60
    ldh a, [rLCDC]                                ; $67A4: $F0 $40
    ld h, b                                       ; $67A6: $60
    add b                                         ; $67A7: $80

jr_00B_67A8:
    ret nz                                        ; $67A8: $C0

    nop                                           ; $67A9: $00
    ret nz                                        ; $67AA: $C0

    nop                                           ; $67AB: $00
    ld h, b                                       ; $67AC: $60
    add b                                         ; $67AD: $80
    ret nc                                        ; $67AE: $D0

    jr nz, jr_00B_67EE                            ; $67AF: $20 $3D

    ld a, [bc]                                    ; $67B1: $0A
    ld a, [hl+]                                   ; $67B2: $2A
    dec d                                         ; $67B3: $15
    ld a, [hl-]                                   ; $67B4: $3A
    dec b                                         ; $67B5: $05
    inc e                                         ; $67B6: $1C
    inc bc                                        ; $67B7: $03
    rrca                                          ; $67B8: $0F
    nop                                           ; $67B9: $00
    dec bc                                        ; $67BA: $0B
    inc b                                         ; $67BB: $04
    ld a, [bc]                                    ; $67BC: $0A
    dec b                                         ; $67BD: $05
    inc de                                        ; $67BE: $13
    inc c                                         ; $67BF: $0C
    db $FC                                        ; $67C0: $FC
    ld hl, sp-$04                                 ; $67C1: $F8 $FC
    ld l, b                                       ; $67C3: $68
    ld a, h                                       ; $67C4: $7C
    add b                                         ; $67C5: $80
    jr jr_00B_67A8                                ; $67C6: $18 $E0

    ldh a, [rP1]                                  ; $67C8: $F0 $00
    ret nc                                        ; $67CA: $D0

    jr nz, jr_00B_681D                            ; $67CB: $20 $50

    and b                                         ; $67CD: $A0
    ret z                                         ; $67CE: $C8

    jr nc, jr_00B_6810                            ; $67CF: $30 $3F

    rra                                           ; $67D1: $1F
    ccf                                           ; $67D2: $3F
    rra                                           ; $67D3: $1F
    rra                                           ; $67D4: $1F
    rrca                                          ; $67D5: $0F
    rrca                                          ; $67D6: $0F
    rlca                                          ; $67D7: $07
    rlca                                          ; $67D8: $07
    nop                                           ; $67D9: $00
    dec bc                                        ; $67DA: $0B
    inc b                                         ; $67DB: $04
    ld a, [bc]                                    ; $67DC: $0A
    dec b                                         ; $67DD: $05
    inc de                                        ; $67DE: $13
    inc c                                         ; $67DF: $0C
    db $FC                                        ; $67E0: $FC
    ld hl, sp-$04                                 ; $67E1: $F8 $FC
    ld hl, sp-$08                                 ; $67E3: $F8 $F8
    ldh a, [$30]                                  ; $67E5: $F0 $30
    ldh [$F0], a                                  ; $67E7: $E0 $F0
    nop                                           ; $67E9: $00
    ret nc                                        ; $67EA: $D0

    jr nz, jr_00B_683D                            ; $67EB: $20 $50

    and b                                         ; $67ED: $A0

jr_00B_67EE:
    ret z                                         ; $67EE: $C8

    jr nc, jr_00B_6829                            ; $67EF: $30 $38

    rra                                           ; $67F1: $1F
    jr jr_00B_6803                                ; $67F2: $18 $0F

    inc c                                         ; $67F4: $0C
    rlca                                          ; $67F5: $07
    rlca                                          ; $67F6: $07
    inc bc                                        ; $67F7: $03
    inc bc                                        ; $67F8: $03
    nop                                           ; $67F9: $00
    inc bc                                        ; $67FA: $03
    nop                                           ; $67FB: $00
    ld bc, $0100                                  ; $67FC: $01 $00 $01
    nop                                           ; $67FF: $00
    db $FC                                        ; $6800: $FC
    ret z                                         ; $6801: $C8

    ret c                                         ; $6802: $D8

jr_00B_6803:
    and b                                         ; $6803: $A0
    ld [hl], b                                    ; $6804: $70
    ret nz                                        ; $6805: $C0

    ldh a, [$E0]                                  ; $6806: $F0 $E0
    ldh [rP1], a                                  ; $6808: $E0 $00
    and b                                         ; $680A: $A0
    ld b, b                                       ; $680B: $40
    and b                                         ; $680C: $A0
    ld b, b                                       ; $680D: $40
    jr nz, @-$3E                                  ; $680E: $20 $C0

jr_00B_6810:
    ccf                                           ; $6810: $3F
    dec e                                         ; $6811: $1D
    dec a                                         ; $6812: $3D
    ld a, [bc]                                    ; $6813: $0A
    ld a, [hl+]                                   ; $6814: $2A
    dec d                                         ; $6815: $15
    ld a, [hl-]                                   ; $6816: $3A
    dec b                                         ; $6817: $05
    inc e                                         ; $6818: $1C
    inc bc                                        ; $6819: $03
    rrca                                          ; $681A: $0F
    nop                                           ; $681B: $00
    dec bc                                        ; $681C: $0B

jr_00B_681D:
    inc b                                         ; $681D: $04
    add hl, bc                                    ; $681E: $09
    ld b, $FC                                     ; $681F: $06 $FC
    ld hl, sp-$04                                 ; $6821: $F8 $FC
    ld hl, sp-$04                                 ; $6823: $F8 $FC
    ld l, b                                       ; $6825: $68
    db $FC                                        ; $6826: $FC
    ld b, b                                       ; $6827: $40
    ld e, b                                       ; $6828: $58

jr_00B_6829:
    and b                                         ; $6829: $A0
    ldh a, [rP1]                                  ; $682A: $F0 $00
    ret nc                                        ; $682C: $D0

    jr nz, jr_00B_687F                            ; $682D: $20 $50

    and b                                         ; $682F: $A0
    ccf                                           ; $6830: $3F
    rra                                           ; $6831: $1F
    ccf                                           ; $6832: $3F
    rra                                           ; $6833: $1F
    ccf                                           ; $6834: $3F
    rra                                           ; $6835: $1F
    rra                                           ; $6836: $1F
    rrca                                          ; $6837: $0F

Call_00B_6838:
    rrca                                          ; $6838: $0F
    rlca                                          ; $6839: $07
    rrca                                          ; $683A: $0F
    nop                                           ; $683B: $00
    dec bc                                        ; $683C: $0B

jr_00B_683D:
    inc b                                         ; $683D: $04
    add hl, bc                                    ; $683E: $09
    ld b, $FC                                     ; $683F: $06 $FC
    ld hl, sp-$04                                 ; $6841: $F8 $FC
    ld hl, sp-$04                                 ; $6843: $F8 $FC
    ld hl, sp-$08                                 ; $6845: $F8 $F8
    ldh a, [$30]                                  ; $6847: $F0 $30
    ldh [$F0], a                                  ; $6849: $E0 $F0
    nop                                           ; $684B: $00
    ret nc                                        ; $684C: $D0

    jr nz, jr_00B_689F                            ; $684D: $20 $50

    and b                                         ; $684F: $A0
    inc de                                        ; $6850: $13
    dec c                                         ; $6851: $0D
    rrca                                          ; $6852: $0F
    nop                                           ; $6853: $00
    dec b                                         ; $6854: $05
    ld [bc], a                                    ; $6855: $02
    dec b                                         ; $6856: $05
    ld [bc], a                                    ; $6857: $02
    dec bc                                        ; $6858: $0B
    inc b                                         ; $6859: $04
    rrca                                          ; $685A: $0F
    ld bc, $0F1F                                  ; $685B: $01 $1F $0F
    rrca                                          ; $685E: $0F
    nop                                           ; $685F: $00
    ret nc                                        ; $6860: $D0

    and b                                         ; $6861: $A0
    ldh [rP1], a                                  ; $6862: $E0 $00
    ld b, b                                       ; $6864: $40
    add b                                         ; $6865: $80
    ld [hl], b                                    ; $6866: $70
    add b                                         ; $6867: $80
    ld hl, sp+$30                                 ; $6868: $F8 $30
    ld hl, sp-$50                                 ; $686A: $F8 $B0
    ldh a, [$80]                                  ; $686C: $F0 $80
    ret nz                                        ; $686E: $C0

    nop                                           ; $686F: $00
    inc de                                        ; $6870: $13
    dec c                                         ; $6871: $0D
    rrca                                          ; $6872: $0F
    nop                                           ; $6873: $00
    ld [bc], a                                    ; $6874: $02
    ld bc, $0106                                  ; $6875: $01 $06 $01
    rrca                                          ; $6878: $0F
    ld b, $1F                                     ; $6879: $06 $1F
    rrca                                          ; $687B: $0F
    rra                                           ; $687C: $1F
    ld c, $0F                                     ; $687D: $0E $0F

jr_00B_687F:
    nop                                           ; $687F: $00
    ret z                                         ; $6880: $C8

    or b                                          ; $6881: $B0
    ldh a, [rP1]                                  ; $6882: $F0 $00
    and b                                         ; $6884: $A0
    ld b, b                                       ; $6885: $40
    or b                                          ; $6886: $B0

jr_00B_6887:
    ld b, b                                       ; $6887: $40
    ld hl, sp+$30                                 ; $6888: $F8 $30
    db $FC                                        ; $688A: $FC
    ld a, b                                       ; $688B: $78
    db $FC                                        ; $688C: $FC
    jr c, jr_00B_6887                             ; $688D: $38 $F8

    nop                                           ; $688F: $00
    inc de                                        ; $6890: $13
    dec c                                         ; $6891: $0D
    rrca                                          ; $6892: $0F
    nop                                           ; $6893: $00
    ld [bc], a                                    ; $6894: $02
    ld bc, $0102                                  ; $6895: $01 $02 $01
    ld c, $01                                     ; $6898: $0E $01
    rra                                           ; $689A: $1F
    inc c                                         ; $689B: $0C
    rra                                           ; $689C: $1F
    rlca                                          ; $689D: $07
    rrca                                          ; $689E: $0F

jr_00B_689F:
    nop                                           ; $689F: $00
    ret z                                         ; $68A0: $C8

    or b                                          ; $68A1: $B0
    ldh a, [rP1]                                  ; $68A2: $F0 $00
    and b                                         ; $68A4: $A0
    ld b, b                                       ; $68A5: $40
    and b                                         ; $68A6: $A0
    ld b, b                                       ; $68A7: $40
    cp b                                          ; $68A8: $B8

jr_00B_68A9:
    ld b, b                                       ; $68A9: $40
    db $FC                                        ; $68AA: $FC

jr_00B_68AB:
    jr jr_00B_68A9                                ; $68AB: $18 $FC

    ld [hl], b                                    ; $68AD: $70
    ld hl, sp+$00                                 ; $68AE: $F8 $00
    ret z                                         ; $68B0: $C8

    jr nc, jr_00B_68AB                            ; $68B1: $30 $F8

    ld b, b                                       ; $68B3: $40
    ld hl, sp+$30                                 ; $68B4: $F8 $30
    cp b                                          ; $68B6: $B8
    ld b, b                                       ; $68B7: $40
    xor $10                                       ; $68B8: $EE $10
    rst $38                                       ; $68BA: $FF
    ld b, [hl]                                    ; $68BB: $46
    rst $38                                       ; $68BC: $FF
    inc e                                         ; $68BD: $1C
    ld a, $00                                     ; $68BE: $3E $00
    sbc [hl]                                      ; $68C0: $9E
    ld h, b                                       ; $68C1: $60
    ld a, [hl]                                    ; $68C2: $7E
    inc e                                         ; $68C3: $1C
    ld a, [hl]                                    ; $68C4: $7E
    jr nz, jr_00B_693D                            ; $68C5: $20 $76

    ld [$265F], sp                                ; $68C7: $08 $5F $26
    ld a, a                                       ; $68CA: $7F
    ld c, $7E                                     ; $68CB: $0E $7E
    inc l                                         ; $68CD: $2C
    ld a, $00                                     ; $68CE: $3E $00
    sbc [hl]                                      ; $68D0: $9E
    ld h, b                                       ; $68D1: $60
    ld a, [hl]                                    ; $68D2: $7E
    jr jr_00B_6951                                ; $68D3: $18 $7C

    nop                                           ; $68D5: $00
    ld e, h                                       ; $68D6: $5C
    jr nz, jr_00B_6915                            ; $68D7: $20 $3C

    jr jr_00B_6919                                ; $68D9: $18 $3E

    inc e                                         ; $68DB: $1C
    ld a, [hl]                                    ; $68DC: $7E
    inc l                                         ; $68DD: $2C
    ld a, [hl]                                    ; $68DE: $7E
    nop                                           ; $68DF: $00
    nop                                           ; $68E0: $00
    nop                                           ; $68E1: $00
    nop                                           ; $68E2: $00
    nop                                           ; $68E3: $00
    nop                                           ; $68E4: $00
    nop                                           ; $68E5: $00
    rra                                           ; $68E6: $1F
    nop                                           ; $68E7: $00
    inc sp                                        ; $68E8: $33
    rra                                           ; $68E9: $1F
    ld [hl], e                                    ; $68EA: $73
    ccf                                           ; $68EB: $3F

jr_00B_68EC:
    ld a, a                                       ; $68EC: $7F
    ccf                                           ; $68ED: $3F
    ld c, a                                       ; $68EE: $4F
    ccf                                           ; $68EF: $3F
    nop                                           ; $68F0: $00
    nop                                           ; $68F1: $00
    nop                                           ; $68F2: $00
    nop                                           ; $68F3: $00
    nop                                           ; $68F4: $00
    nop                                           ; $68F5: $00
    ldh [rP1], a                                  ; $68F6: $E0 $00
    ldh a, [$E0]                                  ; $68F8: $F0 $E0
    jr c, jr_00B_68EC                             ; $68FA: $38 $F0

    inc [hl]                                      ; $68FC: $34
    ld hl, sp-$0C                                 ; $68FD: $F8 $F4
    cp b                                          ; $68FF: $B8
    ld c, a                                       ; $6900: $4F
    ccf                                           ; $6901: $3F
    ld c, a                                       ; $6902: $4F
    add hl, sp                                    ; $6903: $39
    add hl, sp                                    ; $6904: $39
    ld d, $1E                                     ; $6905: $16 $1E
    add hl, bc                                    ; $6907: $09
    rrca                                          ; $6908: $0F
    ld b, $03                                     ; $6909: $06 $03
    nop                                           ; $690B: $00
    rlca                                          ; $690C: $07
    nop                                           ; $690D: $00
    rrca                                          ; $690E: $0F
    nop                                           ; $690F: $00
    db $F4                                        ; $6910: $F4
    cp b                                          ; $6911: $B8
    cp h                                          ; $6912: $BC
    ld e, b                                       ; $6913: $58
    ld e, h                                       ; $6914: $5C

jr_00B_6915:
    xor b                                         ; $6915: $A8
    ld e, b                                       ; $6916: $58
    and b                                         ; $6917: $A0
    db $10                                        ; $6918: $10

jr_00B_6919:
    ldh [$C0], a                                  ; $6919: $E0 $C0
    nop                                           ; $691B: $00
    ld h, b                                       ; $691C: $60
    add b                                         ; $691D: $80
    sub b                                         ; $691E: $90
    ld h, b                                       ; $691F: $60
    ld c, a                                       ; $6920: $4F
    add hl, sp                                    ; $6921: $39
    add hl, sp                                    ; $6922: $39
    ld d, $1E                                     ; $6923: $16 $1E
    add hl, bc                                    ; $6925: $09
    rrca                                          ; $6926: $0F
    ld b, $07                                     ; $6927: $06 $07
    nop                                           ; $6929: $00
    ld [bc], a                                    ; $692A: $02
    ld bc, $0102                                  ; $692B: $01 $02 $01
    inc b                                         ; $692E: $04
    inc bc                                        ; $692F: $03
    cp h                                          ; $6930: $BC
    ld e, b                                       ; $6931: $58
    ld e, h                                       ; $6932: $5C
    xor b                                         ; $6933: $A8
    ld e, b                                       ; $6934: $58
    and b                                         ; $6935: $A0
    db $10                                        ; $6936: $10
    ldh [$E0], a                                  ; $6937: $E0 $E0
    nop                                           ; $6939: $00
    add b                                         ; $693A: $80
    nop                                           ; $693B: $00
    add b                                         ; $693C: $80

jr_00B_693D:
    nop                                           ; $693D: $00
    add b                                         ; $693E: $80
    nop                                           ; $693F: $00
    ld c, a                                       ; $6940: $4F
    ccf                                           ; $6941: $3F
    ld c, a                                       ; $6942: $4F
    add hl, sp                                    ; $6943: $39
    add hl, sp                                    ; $6944: $39
    ld d, $1E                                     ; $6945: $16 $1E
    add hl, bc                                    ; $6947: $09
    rrca                                          ; $6948: $0F
    ld b, $03                                     ; $6949: $06 $03
    nop                                           ; $694B: $00
    ld b, $01                                     ; $694C: $06 $01
    add hl, bc                                    ; $694E: $09
    ld b, $F4                                     ; $694F: $06 $F4

jr_00B_6951:
    cp b                                          ; $6951: $B8
    cp h                                          ; $6952: $BC
    ld e, b                                       ; $6953: $58
    ld e, h                                       ; $6954: $5C
    xor b                                         ; $6955: $A8
    ld e, b                                       ; $6956: $58
    and b                                         ; $6957: $A0
    db $10                                        ; $6958: $10
    ldh [$C0], a                                  ; $6959: $E0 $C0
    nop                                           ; $695B: $00
    ldh [rP1], a                                  ; $695C: $E0 $00
    ret nc                                        ; $695E: $D0

jr_00B_695F:
    jr nz, jr_00B_6970                            ; $695F: $20 $0F

    inc bc                                        ; $6961: $03
    rlca                                          ; $6962: $07
    nop                                           ; $6963: $00
    dec b                                         ; $6964: $05
    ld [bc], a                                    ; $6965: $02
    dec sp                                        ; $6966: $3B
    inc b                                         ; $6967: $04
    ld [hl], a                                    ; $6968: $77
    jr z, jr_00B_69EA                             ; $6969: $28 $7F

    ld [hl], $7F                                  ; $696B: $36 $7F
    ld e, $7F                                     ; $696D: $1E $7F
    nop                                           ; $696F: $00

jr_00B_6970:
    sub b                                         ; $6970: $90
    ld h, b                                       ; $6971: $60
    ldh [rP1], a                                  ; $6972: $E0 $00
    ldh a, [rP1]                                  ; $6974: $F0 $00
    ld a, b                                       ; $6976: $78
    or b                                          ; $6977: $B0
    ld hl, sp+$70                                 ; $6978: $F8 $70
    ldh a, [$E0]                                  ; $697A: $F0 $E0
    ldh a, [$C0]                                  ; $697C: $F0 $C0
    ldh [rP1], a                                  ; $697E: $E0 $00
    sub b                                         ; $6980: $90
    ld h, b                                       ; $6981: $60
    ld [hl], b                                    ; $6982: $70
    nop                                           ; $6983: $00
    ld d, b                                       ; $6984: $50
    jr nz, jr_00B_69DF                            ; $6985: $20 $58

    jr nz, jr_00B_6A05                            ; $6987: $20 $7C

    nop                                           ; $6989: $00
    cp $78                                        ; $698A: $FE $78
    cp $7C                                        ; $698C: $FE $7C
    cp $00                                        ; $698E: $FE $00
    add hl, bc                                    ; $6990: $09
    ld b, $07                                     ; $6991: $06 $07
    nop                                           ; $6993: $00
    rlca                                          ; $6994: $07
    nop                                           ; $6995: $00
    dec c                                         ; $6996: $0D
    ld [bc], a                                    ; $6997: $02
    rra                                           ; $6998: $1F
    nop                                           ; $6999: $00
    ccf                                           ; $699A: $3F
    rla                                           ; $699B: $17
    ccf                                           ; $699C: $3F
    rrca                                          ; $699D: $0F
    rra                                           ; $699E: $1F

jr_00B_699F:
    nop                                           ; $699F: $00
    ret nc                                        ; $69A0: $D0

    and b                                         ; $69A1: $A0
    ldh [rP1], a                                  ; $69A2: $E0 $00
    ld a, b                                       ; $69A4: $78
    add b                                         ; $69A5: $80
    cp h                                          ; $69A6: $BC
    ld e, b                                       ; $69A7: $58
    db $FC                                        ; $69A8: $FC
    jr c, @-$06                                   ; $69A9: $38 $F8

    ld [hl], b                                    ; $69AB: $70
    ld hl, sp+$60                                 ; $69AC: $F8 $60
    ldh [rP1], a                                  ; $69AE: $E0 $00
    ccf                                           ; $69B0: $3F
    dec e                                         ; $69B1: $1D
    dec a                                         ; $69B2: $3D
    ld a, [bc]                                    ; $69B3: $0A
    ld a, [hl+]                                   ; $69B4: $2A
    dec d                                         ; $69B5: $15
    ld a, [hl-]                                   ; $69B6: $3A
    dec b                                         ; $69B7: $05
    inc e                                         ; $69B8: $1C
    inc bc                                        ; $69B9: $03
    rrca                                          ; $69BA: $0F
    nop                                           ; $69BB: $00
    dec bc                                        ; $69BC: $0B
    inc b                                         ; $69BD: $04
    ld a, [bc]                                    ; $69BE: $0A
    dec b                                         ; $69BF: $05
    db $FC                                        ; $69C0: $FC
    ld hl, sp-$04                                 ; $69C1: $F8 $FC
    ld hl, sp-$04                                 ; $69C3: $F8 $FC
    ld l, b                                       ; $69C5: $68
    db $FC                                        ; $69C6: $FC
    ld b, b                                       ; $69C7: $40
    ld e, b                                       ; $69C8: $58
    and b                                         ; $69C9: $A0
    ldh a, [rP1]                                  ; $69CA: $F0 $00
    ret nc                                        ; $69CC: $D0

    jr nz, jr_00B_695F                            ; $69CD: $20 $90

    ld h, b                                       ; $69CF: $60
    rlca                                          ; $69D0: $07
    nop                                           ; $69D1: $00
    rlca                                          ; $69D2: $07
    inc bc                                        ; $69D3: $03
    rlca                                          ; $69D4: $07
    nop                                           ; $69D5: $00
    ld b, $01                                     ; $69D6: $06 $01
    rrca                                          ; $69D8: $0F
    ld b, $0F                                     ; $69D9: $06 $0F
    rlca                                          ; $69DB: $07
    rlca                                          ; $69DC: $07
    inc bc                                        ; $69DD: $03
    rlca                                          ; $69DE: $07

jr_00B_69DF:
    nop                                           ; $69DF: $00
    sub b                                         ; $69E0: $90
    ld h, b                                       ; $69E1: $60
    ldh [$80], a                                  ; $69E2: $E0 $80
    ldh [rLCDC], a                                ; $69E4: $E0 $40
    ldh [rP1], a                                  ; $69E6: $E0 $00
    and b                                         ; $69E8: $A0
    ld b, b                                       ; $69E9: $40

jr_00B_69EA:
    ldh [rP1], a                                  ; $69EA: $E0 $00
    ldh [rLCDC], a                                ; $69EC: $E0 $40
    ret nz                                        ; $69EE: $C0

    nop                                           ; $69EF: $00
    ccf                                           ; $69F0: $3F
    rra                                           ; $69F1: $1F
    ccf                                           ; $69F2: $3F
    rra                                           ; $69F3: $1F
    ccf                                           ; $69F4: $3F
    rra                                           ; $69F5: $1F
    rra                                           ; $69F6: $1F
    rrca                                          ; $69F7: $0F
    rrca                                          ; $69F8: $0F
    rlca                                          ; $69F9: $07
    rrca                                          ; $69FA: $0F
    nop                                           ; $69FB: $00
    dec bc                                        ; $69FC: $0B
    inc b                                         ; $69FD: $04
    ld a, [bc]                                    ; $69FE: $0A
    dec b                                         ; $69FF: $05
    db $FC                                        ; $6A00: $FC
    ld hl, sp-$04                                 ; $6A01: $F8 $FC
    ld hl, sp-$04                                 ; $6A03: $F8 $FC

jr_00B_6A05:
    ld hl, sp-$08                                 ; $6A05: $F8 $F8
    ldh a, [$30]                                  ; $6A07: $F0 $30
    ldh [$F0], a                                  ; $6A09: $E0 $F0
    nop                                           ; $6A0B: $00
    ret nc                                        ; $6A0C: $D0

    jr nz, jr_00B_699F                            ; $6A0D: $20 $90

    ld h, b                                       ; $6A0F: $60
    ld [bc], a                                    ; $6A10: $02
    nop                                           ; $6A11: $00
    rrca                                          ; $6A12: $0F
    ld [bc], a                                    ; $6A13: $02
    rra                                           ; $6A14: $1F
    dec bc                                        ; $6A15: $0B
    rra                                           ; $6A16: $1F
    rrca                                          ; $6A17: $0F
    ccf                                           ; $6A18: $3F
    rra                                           ; $6A19: $1F
    ccf                                           ; $6A1A: $3F
    inc e                                         ; $6A1B: $1C
    ccf                                           ; $6A1C: $3F
    jr jr_00B_6A5E                                ; $6A1D: $18 $3F

    db $10                                        ; $6A1F: $10
    ld b, b                                       ; $6A20: $40
    nop                                           ; $6A21: $00
    ldh [rLCDC], a                                ; $6A22: $E0 $40
    ldh a, [$60]                                  ; $6A24: $F0 $60
    ldh a, [$E0]                                  ; $6A26: $F0 $E0
    ldh a, [$E0]                                  ; $6A28: $F0 $E0
    ldh a, [rP1]                                  ; $6A2A: $F0 $00
    ldh a, [rP1]                                  ; $6A2C: $F0 $00
    ldh a, [rP1]                                  ; $6A2E: $F0 $00
    ld bc, $0300                                  ; $6A30: $01 $00 $03
    ld bc, $0307                                  ; $6A33: $01 $07 $03
    rlca                                          ; $6A36: $07
    inc bc                                        ; $6A37: $03
    rrca                                          ; $6A38: $0F
    rlca                                          ; $6A39: $07
    rrca                                          ; $6A3A: $0F
    ld b, $0F                                     ; $6A3B: $06 $0F
    inc b                                         ; $6A3D: $04
    rrca                                          ; $6A3E: $0F
    nop                                           ; $6A3F: $00
    ld b, b                                       ; $6A40: $40
    nop                                           ; $6A41: $00
    ldh [rLCDC], a                                ; $6A42: $E0 $40
    ldh a, [$E0]                                  ; $6A44: $F0 $E0
    ld hl, sp-$10                                 ; $6A46: $F8 $F0
    db $FC                                        ; $6A48: $FC

jr_00B_6A49:
    ld hl, sp-$04                                 ; $6A49: $F8 $FC
    jr jr_00B_6A49                                ; $6A4B: $18 $FC

    ld [$00FC], sp                                ; $6A4D: $08 $FC $00
    ld [bc], a                                    ; $6A50: $02
    nop                                           ; $6A51: $00
    rlca                                          ; $6A52: $07
    ld [bc], a                                    ; $6A53: $02
    rlca                                          ; $6A54: $07
    inc bc                                        ; $6A55: $03
    rrca                                          ; $6A56: $0F
    rlca                                          ; $6A57: $07
    rrca                                          ; $6A58: $0F
    rlca                                          ; $6A59: $07
    rra                                           ; $6A5A: $1F
    ld c, $1F                                     ; $6A5B: $0E $1F
    rrca                                          ; $6A5D: $0F

jr_00B_6A5E:
    rra                                           ; $6A5E: $1F
    rrca                                          ; $6A5F: $0F
    add b                                         ; $6A60: $80
    nop                                           ; $6A61: $00
    ret nz                                        ; $6A62: $C0

    add b                                         ; $6A63: $80
    ldh [$C0], a                                  ; $6A64: $E0 $C0

jr_00B_6A66:
    ldh a, [$E0]                                  ; $6A66: $F0 $E0
    ld hl, sp-$10                                 ; $6A68: $F8 $F0
    db $FC                                        ; $6A6A: $FC
    ld hl, sp-$04                                 ; $6A6B: $F8 $FC
    ld hl, sp-$04                                 ; $6A6D: $F8 $FC
    ld hl, sp+$01                                 ; $6A6F: $F8 $01
    nop                                           ; $6A71: $00
    rlca                                          ; $6A72: $07
    ld bc, $050F                                  ; $6A73: $01 $0F $05
    rrca                                          ; $6A76: $0F
    rlca                                          ; $6A77: $07
    rra                                           ; $6A78: $1F
    rrca                                          ; $6A79: $0F
    rra                                           ; $6A7A: $1F
    dec c                                         ; $6A7B: $0D
    rra                                           ; $6A7C: $1F
    rrca                                          ; $6A7D: $0F
    rra                                           ; $6A7E: $1F
    rrca                                          ; $6A7F: $0F
    jr nz, jr_00B_6A82                            ; $6A80: $20 $00

jr_00B_6A82:
    ldh a, [rNR41]                                ; $6A82: $F0 $20
    ld hl, sp-$50                                 ; $6A84: $F8 $B0
    db $FC                                        ; $6A86: $FC
    ld hl, sp-$04                                 ; $6A87: $F8 $FC
    ld hl, sp-$04                                 ; $6A89: $F8 $FC
    ldh [$FC], a                                  ; $6A8B: $E0 $FC
    ret nz                                        ; $6A8D: $C0

    ld hl, sp-$80                                 ; $6A8E: $F8 $80
    ld e, $01                                     ; $6A90: $1E $01
    dec d                                         ; $6A92: $15
    ld a, [bc]                                    ; $6A93: $0A
    add hl, bc                                    ; $6A94: $09
    ld b, $1C                                     ; $6A95: $06 $1C
    inc bc                                        ; $6A97: $03
    ccf                                           ; $6A98: $3F
    inc c                                         ; $6A99: $0C
    ccf                                           ; $6A9A: $3F
    add hl, de                                    ; $6A9B: $19
    ld a, c                                       ; $6A9C: $79
    ld d, $79                                     ; $6A9D: $16 $79
    ld d, $10                                     ; $6A9F: $16 $10
    ldh [$30], a                                  ; $6AA1: $E0 $30
    ret nz                                        ; $6AA3: $C0

    jr nc, jr_00B_6A66                            ; $6AA4: $30 $C0

    db $10                                        ; $6AA6: $10
    ldh [$E0], a                                  ; $6AA7: $E0 $E0
    nop                                           ; $6AA9: $00
    ldh a, [$C0]                                  ; $6AAA: $F0 $C0
    ret nc                                        ; $6AAC: $D0

    and b                                         ; $6AAD: $A0
    ret nc                                        ; $6AAE: $D0

    and b                                         ; $6AAF: $A0
    ld c, $01                                     ; $6AB0: $0E $01
    dec d                                         ; $6AB2: $15
    ld a, [bc]                                    ; $6AB3: $0A
    dec c                                         ; $6AB4: $0D
    ld [bc], a                                    ; $6AB5: $02
    ld b, $01                                     ; $6AB6: $06 $01
    rrca                                          ; $6AB8: $0F
    ld b, $1F                                     ; $6AB9: $06 $1F
    add hl, bc                                    ; $6ABB: $09
    add hl, de                                    ; $6ABC: $19
    ld b, $19                                     ; $6ABD: $06 $19
    ld b, $1C                                     ; $6ABF: $06 $1C
    ldh [$2A], a                                  ; $6AC1: $E0 $2A
    call nc, $D02C                                ; $6AC3: $D4 $2C $D0
    jr @-$1E                                      ; $6AC6: $18 $E0

    ld hl, sp+$10                                 ; $6AC8: $F8 $10
    db $FC                                        ; $6ACA: $FC
    ret z                                         ; $6ACB: $C8

    call z, $CCB0                                 ; $6ACC: $CC $B0 $CC
    or b                                          ; $6ACF: $B0
    db $FC                                        ; $6AD0: $FC
    ldh a, [$FA]                                  ; $6AD1: $F0 $FA
    db $E4                                        ; $6AD3: $E4

jr_00B_6AD4:
    db $FC                                        ; $6AD4: $FC
    nop                                           ; $6AD5: $00
    ld hl, sp+$00                                 ; $6AD6: $F8 $00
    db $FC                                        ; $6AD8: $FC
    nop                                           ; $6AD9: $00

jr_00B_6ADA:
    db $FC                                        ; $6ADA: $FC
    nop                                           ; $6ADB: $00
    db $FC                                        ; $6ADC: $FC
    nop                                           ; $6ADD: $00
    ld hl, sp+$00                                 ; $6ADE: $F8 $00
    rra                                           ; $6AE0: $1F
    rrca                                          ; $6AE1: $0F
    rra                                           ; $6AE2: $1F
    ld b, $0F                                     ; $6AE3: $06 $0F
    nop                                           ; $6AE5: $00
    rrca                                          ; $6AE6: $0F
    nop                                           ; $6AE7: $00
    rra                                           ; $6AE8: $1F
    nop                                           ; $6AE9: $00
    rra                                           ; $6AEA: $1F
    nop                                           ; $6AEB: $00
    rra                                           ; $6AEC: $1F
    nop                                           ; $6AED: $00
    rra                                           ; $6AEE: $1F

jr_00B_6AEF:
    nop                                           ; $6AEF: $00
    add sp, $10                                   ; $6AF0: $E8 $10
    ret z                                         ; $6AF2: $C8

    jr nc, @-$6E                                  ; $6AF3: $30 $90

    ld h, b                                       ; $6AF5: $60
    ldh [rP1], a                                  ; $6AF6: $E0 $00
    ldh a, [rP1]                                  ; $6AF8: $F0 $00
    ld hl, sp+$00                                 ; $6AFA: $F8 $00
    db $F4                                        ; $6AFC: $F4
    ld [$08F4], sp                                ; $6AFD: $08 $F4 $08
    rra                                           ; $6B00: $1F
    nop                                           ; $6B01: $00
    inc e                                         ; $6B02: $1C
    inc bc                                        ; $6B03: $03
    ld a, [hl+]                                   ; $6B04: $2A
    dec d                                         ; $6B05: $15
    ld a, [de]                                    ; $6B06: $1A
    dec b                                         ; $6B07: $05
    inc c                                         ; $6B08: $0C
    inc bc                                        ; $6B09: $03
    rra                                           ; $6B0A: $1F
    inc b                                         ; $6B0B: $04
    inc e                                         ; $6B0C: $1C
    dec bc                                        ; $6B0D: $0B
    inc e                                         ; $6B0E: $1C
    dec bc                                        ; $6B0F: $0B
    ld hl, sp+$00                                 ; $6B10: $F8 $00
    jr c, jr_00B_6AD4                             ; $6B12: $38 $C0

    ld d, h                                       ; $6B14: $54
    xor b                                         ; $6B15: $A8
    ld e, b                                       ; $6B16: $58
    and b                                         ; $6B17: $A0
    jr nc, jr_00B_6ADA                            ; $6B18: $30 $C0

    ld hl, sp+$30                                 ; $6B1A: $F8 $30
    ld hl, sp+$60                                 ; $6B1C: $F8 $60
    add sp, $50                                   ; $6B1E: $E8 $50
    rra                                           ; $6B20: $1F
    rrca                                          ; $6B21: $0F
    rra                                           ; $6B22: $1F
    rlca                                          ; $6B23: $07
    cpl                                           ; $6B24: $2F
    inc de                                        ; $6B25: $13
    rra                                           ; $6B26: $1F
    nop                                           ; $6B27: $00
    rrca                                          ; $6B28: $0F
    nop                                           ; $6B29: $00
    rra                                           ; $6B2A: $1F
    nop                                           ; $6B2B: $00
    rra                                           ; $6B2C: $1F
    nop                                           ; $6B2D: $00
    rla                                           ; $6B2E: $17
    ld [$F8FC], sp                                ; $6B2F: $08 $FC $F8
    db $FC                                        ; $6B32: $FC
    ldh a, [$FA]                                  ; $6B33: $F0 $FA
    db $E4                                        ; $6B35: $E4
    db $FC                                        ; $6B36: $FC
    nop                                           ; $6B37: $00
    ld hl, sp+$00                                 ; $6B38: $F8 $00
    db $FC                                        ; $6B3A: $FC
    nop                                           ; $6B3B: $00
    db $FC                                        ; $6B3C: $FC
    nop                                           ; $6B3D: $00
    ld hl, sp+$00                                 ; $6B3E: $F8 $00
    ld a, a                                       ; $6B40: $7F
    nop                                           ; $6B41: $00
    ld a, a                                       ; $6B42: $7F
    nop                                           ; $6B43: $00
    ld a, a                                       ; $6B44: $7F
    rrca                                          ; $6B45: $0F
    ld a, a                                       ; $6B46: $7F
    ld c, $7F                                     ; $6B47: $0E $7F
    db $10                                        ; $6B49: $10
    add hl, sp                                    ; $6B4A: $39
    ld b, $21                                     ; $6B4B: $06 $21
    ld e, $1F                                     ; $6B4D: $1E $1F
    nop                                           ; $6B4F: $00
    ldh [rP1], a                                  ; $6B50: $E0 $00
    ldh [rP1], a                                  ; $6B52: $E0 $00
    ldh a, [$E0]                                  ; $6B54: $F0 $E0
    ldh a, [$C0]                                  ; $6B56: $F0 $C0
    ret z                                         ; $6B58: $C8

    jr nc, @+$0A                                  ; $6B59: $30 $08

    ldh a, [$F0]                                  ; $6B5B: $F0 $F0
    nop                                           ; $6B5D: $00
    nop                                           ; $6B5E: $00
    nop                                           ; $6B5F: $00
    ld hl, sp+$00                                 ; $6B60: $F8 $00
    ldh a, [rP1]                                  ; $6B62: $F0 $00
    ld hl, sp-$10                                 ; $6B64: $F8 $F0
    ld hl, sp+$40                                 ; $6B66: $F8 $40
    ret z                                         ; $6B68: $C8

    jr nc, jr_00B_6AEF                            ; $6B69: $30 $84

    ld a, b                                       ; $6B6B: $78
    call nz, $F838                                ; $6B6C: $C4 $38 $F8
    nop                                           ; $6B6F: $00
    ld hl, sp+$00                                 ; $6B70: $F8 $00
    db $FC                                        ; $6B72: $FC
    nop                                           ; $6B73: $00
    db $FC                                        ; $6B74: $FC
    nop                                           ; $6B75: $00
    db $FC                                        ; $6B76: $FC
    nop                                           ; $6B77: $00
    ld hl, sp+$00                                 ; $6B78: $F8 $00
    db $F4                                        ; $6B7A: $F4
    ld [$708C], sp                                ; $6B7B: $08 $8C $70
    ld hl, sp+$00                                 ; $6B7E: $F8 $00
    rrca                                          ; $6B80: $0F
    nop                                           ; $6B81: $00
    rrca                                          ; $6B82: $0F
    nop                                           ; $6B83: $00
    rrca                                          ; $6B84: $0F
    nop                                           ; $6B85: $00
    rrca                                          ; $6B86: $0F
    nop                                           ; $6B87: $00
    rrca                                          ; $6B88: $0F
    nop                                           ; $6B89: $00
    add hl, bc                                    ; $6B8A: $09
    ld b, $0F                                     ; $6B8B: $06 $0F
    nop                                           ; $6B8D: $00
    nop                                           ; $6B8E: $00
    nop                                           ; $6B8F: $00
    ld hl, sp+$00                                 ; $6B90: $F8 $00
    ld hl, sp+$00                                 ; $6B92: $F8 $00
    ld hl, sp+$00                                 ; $6B94: $F8 $00
    db $FC                                        ; $6B96: $FC
    nop                                           ; $6B97: $00
    db $FC                                        ; $6B98: $FC
    nop                                           ; $6B99: $00
    db $F4                                        ; $6B9A: $F4
    ld [$708C], sp                                ; $6B9B: $08 $8C $70
    ld hl, sp+$00                                 ; $6B9E: $F8 $00
    rra                                           ; $6BA0: $1F
    nop                                           ; $6BA1: $00
    rrca                                          ; $6BA2: $0F
    nop                                           ; $6BA3: $00
    rra                                           ; $6BA4: $1F
    rlca                                          ; $6BA5: $07
    rra                                           ; $6BA6: $1F
    dec b                                         ; $6BA7: $05
    rrca                                          ; $6BA8: $0F
    ld b, $07                                     ; $6BA9: $06 $07
    nop                                           ; $6BAB: $00
    dec b                                         ; $6BAC: $05
    ld [bc], a                                    ; $6BAD: $02
    inc bc                                        ; $6BAE: $03
    nop                                           ; $6BAF: $00
    ld hl, sp+$00                                 ; $6BB0: $F8 $00
    ldh a, [rP1]                                  ; $6BB2: $F0 $00
    ld hl, sp-$40                                 ; $6BB4: $F8 $C0
    ld hl, sp-$80                                 ; $6BB6: $F8 $80
    sub b                                         ; $6BB8: $90
    ld h, b                                       ; $6BB9: $60
    db $10                                        ; $6BBA: $10
    ldh [rNR41], a                                ; $6BBB: $E0 $20
    ret nz                                        ; $6BBD: $C0

    ldh [rP1], a                                  ; $6BBE: $E0 $00
    rrca                                          ; $6BC0: $0F
    nop                                           ; $6BC1: $00
    rrca                                          ; $6BC2: $0F
    nop                                           ; $6BC3: $00
    rrca                                          ; $6BC4: $0F
    nop                                           ; $6BC5: $00
    rra                                           ; $6BC6: $1F
    nop                                           ; $6BC7: $00
    rrca                                          ; $6BC8: $0F
    nop                                           ; $6BC9: $00
    rlca                                          ; $6BCA: $07
    nop                                           ; $6BCB: $00
    inc b                                         ; $6BCC: $04
    inc bc                                        ; $6BCD: $03
    rlca                                          ; $6BCE: $07
    nop                                           ; $6BCF: $00
    ld hl, sp+$00                                 ; $6BD0: $F8 $00
    ld hl, sp+$00                                 ; $6BD2: $F8 $00
    ld hl, sp+$00                                 ; $6BD4: $F8 $00
    db $FC                                        ; $6BD6: $FC
    nop                                           ; $6BD7: $00
    ld hl, sp+$00                                 ; $6BD8: $F8 $00
    sub b                                         ; $6BDA: $90
    ld h, b                                       ; $6BDB: $60
    sub b                                         ; $6BDC: $90
    ld h, b                                       ; $6BDD: $60
    ldh a, [rP1]                                  ; $6BDE: $F0 $00
    dec b                                         ; $6BE0: $05
    nop                                           ; $6BE1: $00
    ccf                                           ; $6BE2: $3F
    dec b                                         ; $6BE3: $05
    ld a, a                                       ; $6BE4: $7F
    ccf                                           ; $6BE5: $3F
    ccf                                           ; $6BE6: $3F
    rra                                           ; $6BE7: $1F
    ld a, a                                       ; $6BE8: $7F
    ccf                                           ; $6BE9: $3F
    ccf                                           ; $6BEA: $3F
    ld e, $3F                                     ; $6BEB: $1E $3F
    inc e                                         ; $6BED: $1C
    rra                                           ; $6BEE: $1F
    nop                                           ; $6BEF: $00
    nop                                           ; $6BF0: $00
    nop                                           ; $6BF1: $00
    add b                                         ; $6BF2: $80
    nop                                           ; $6BF3: $00
    ret nz                                        ; $6BF4: $C0

    add b                                         ; $6BF5: $80
    ldh [$C0], a                                  ; $6BF6: $E0 $C0
    ldh a, [rP1]                                  ; $6BF8: $F0 $00
    ldh a, [rP1]                                  ; $6BFA: $F0 $00
    ldh a, [rP1]                                  ; $6BFC: $F0 $00
    sub b                                         ; $6BFE: $90
    ld h, b                                       ; $6BFF: $60
    rra                                           ; $6C00: $1F
    nop                                           ; $6C01: $00
    add hl, de                                    ; $6C02: $19
    ld b, $0C                                     ; $6C03: $06 $0C
    inc bc                                        ; $6C05: $03
    ld b, $01                                     ; $6C06: $06 $01
    rrca                                          ; $6C08: $0F
    nop                                           ; $6C09: $00
    rra                                           ; $6C0A: $1F
    ld bc, $011F                                  ; $6C0B: $01 $1F $01
    rra                                           ; $6C0E: $1F
    ld bc, $6090                                  ; $6C0F: $01 $90 $60
    ld d, b                                       ; $6C12: $50
    and b                                         ; $6C13: $A0
    ld d, b                                       ; $6C14: $50
    and b                                         ; $6C15: $A0
    db $10                                        ; $6C16: $10
    ldh [$C0], a                                  ; $6C17: $E0 $C0
    nop                                           ; $6C19: $00
    ldh [$80], a                                  ; $6C1A: $E0 $80
    sub b                                         ; $6C1C: $90
    ld h, b                                       ; $6C1D: $60
    sub b                                         ; $6C1E: $90
    ld h, b                                       ; $6C1F: $60
    add hl, de                                    ; $6C20: $19
    ld b, $0C                                     ; $6C21: $06 $0C
    inc bc                                        ; $6C23: $03
    ld b, $01                                     ; $6C24: $06 $01
    rrca                                          ; $6C26: $0F
    nop                                           ; $6C27: $00
    rrca                                          ; $6C28: $0F
    ld bc, $020F                                  ; $6C29: $01 $0F $02
    ld e, $01                                     ; $6C2C: $1E $01
    ld e, $01                                     ; $6C2E: $1E $01
    ld d, b                                       ; $6C30: $50
    and b                                         ; $6C31: $A0
    ld d, b                                       ; $6C32: $50
    and b                                         ; $6C33: $A0
    db $10                                        ; $6C34: $10

jr_00B_6C35:
    ldh [$E0], a                                  ; $6C35: $E0 $E0
    nop                                           ; $6C37: $00
    ldh [$C0], a                                  ; $6C38: $E0 $C0
    ldh [rLCDC], a                                ; $6C3A: $E0 $40
    ld h, b                                       ; $6C3C: $60
    add b                                         ; $6C3D: $80
    ld h, b                                       ; $6C3E: $60
    add b                                         ; $6C3F: $80
    rra                                           ; $6C40: $1F
    nop                                           ; $6C41: $00
    add hl, de                                    ; $6C42: $19
    ld b, $0C                                     ; $6C43: $06 $0C
    inc bc                                        ; $6C45: $03
    ld b, $01                                     ; $6C46: $06 $01
    rrca                                          ; $6C48: $0F
    ld [bc], a                                    ; $6C49: $02
    rra                                           ; $6C4A: $1F
    dec b                                         ; $6C4B: $05
    daa                                           ; $6C4C: $27
    dec de                                        ; $6C4D: $1B
    daa                                           ; $6C4E: $27
    dec de                                        ; $6C4F: $1B
    sub b                                         ; $6C50: $90
    ld h, b                                       ; $6C51: $60
    ld d, b                                       ; $6C52: $50
    and b                                         ; $6C53: $A0
    ld d, b                                       ; $6C54: $50
    and b                                         ; $6C55: $A0
    db $10                                        ; $6C56: $10
    ldh [$C0], a                                  ; $6C57: $E0 $C0
    nop                                           ; $6C59: $00
    ldh [$80], a                                  ; $6C5A: $E0 $80
    ret nc                                        ; $6C5C: $D0

    and b                                         ; $6C5D: $A0
    ret nc                                        ; $6C5E: $D0

    and b                                         ; $6C5F: $A0
    ccf                                           ; $6C60: $3F
    nop                                           ; $6C61: $00
    ccf                                           ; $6C62: $3F
    nop                                           ; $6C63: $00
    ld a, a                                       ; $6C64: $7F
    ld bc, $037F                                  ; $6C65: $01 $7F $03
    ld e, a                                       ; $6C68: $5F
    dec l                                         ; $6C69: $2D
    ld c, l                                       ; $6C6A: $4D
    ld [hl-], a                                   ; $6C6B: $32
    ld h, c                                       ; $6C6C: $61
    ld e, $7F                                     ; $6C6D: $1E $7F
    nop                                           ; $6C6F: $00
    ldh [rP1], a                                  ; $6C70: $E0 $00
    ldh [rP1], a                                  ; $6C72: $E0 $00
    ld hl, sp-$80                                 ; $6C74: $F8 $80
    db $E4                                        ; $6C76: $E4
    ret c                                         ; $6C77: $D8

    call nz, $C8B8                                ; $6C78: $C4 $B8 $C8
    jr nc, jr_00B_6C35                            ; $6C7B: $30 $B8

    ld b, b                                       ; $6C7D: $40
    ldh [rP1], a                                  ; $6C7E: $E0 $00
    rra                                           ; $6C80: $1F
    nop                                           ; $6C81: $00
    ccf                                           ; $6C82: $3F
    nop                                           ; $6C83: $00
    ccf                                           ; $6C84: $3F
    ld bc, HeaderManufacturerCode                 ; $6C85: $01 $3F $01
    rra                                           ; $6C88: $1F
    nop                                           ; $6C89: $00
    jr @+$09                                      ; $6C8A: $18 $07

    db $10                                        ; $6C8C: $10
    rrca                                          ; $6C8D: $0F
    rra                                           ; $6C8E: $1F
    nop                                           ; $6C8F: $00
    ldh [rP1], a                                  ; $6C90: $E0 $00
    ldh [rP1], a                                  ; $6C92: $E0 $00
    ldh [$C0], a                                  ; $6C94: $E0 $C0
    ldh [$80], a                                  ; $6C96: $E0 $80
    ret nc                                        ; $6C98: $D0

    jr nz, jr_00B_6CEB                            ; $6C99: $20 $50

    and b                                         ; $6C9B: $A0
    ld [hl], b                                    ; $6C9C: $70
    add b                                         ; $6C9D: $80
    ret nz                                        ; $6C9E: $C0

    nop                                           ; $6C9F: $00
    ld a, a                                       ; $6CA0: $7F
    nop                                           ; $6CA1: $00
    ld a, a                                       ; $6CA2: $7F
    nop                                           ; $6CA3: $00
    rst $38                                       ; $6CA4: $FF
    rrca                                          ; $6CA5: $0F
    rst $38                                       ; $6CA6: $FF
    dec bc                                        ; $6CA7: $0B
    ld e, a                                       ; $6CA8: $5F
    ld hl, $3C43                                  ; $6CA9: $21 $43 $3C
    ld h, c                                       ; $6CAC: $61
    ld e, $7F                                     ; $6CAD: $1E $7F
    nop                                           ; $6CAF: $00
    ldh [rP1], a                                  ; $6CB0: $E0 $00
    ret nz                                        ; $6CB2: $C0

    nop                                           ; $6CB3: $00
    ld hl, sp-$40                                 ; $6CB4: $F8 $C0
    db $E4                                        ; $6CB6: $E4
    ret c                                         ; $6CB7: $D8

    call nz, $C8B8                                ; $6CB8: $C4 $B8 $C8
    or b                                          ; $6CBB: $B0
    cp b                                          ; $6CBC: $B8
    ld b, b                                       ; $6CBD: $40
    ldh [rP1], a                                  ; $6CBE: $E0 $00
    jr nc, jr_00B_6CC2                            ; $6CC0: $30 $00

jr_00B_6CC2:
    ld a, a                                       ; $6CC2: $7F
    jr nc, @+$01                                  ; $6CC3: $30 $FF

    ld l, a                                       ; $6CC5: $6F
    rst $38                                       ; $6CC6: $FF
    ld e, [hl]                                    ; $6CC7: $5E
    rst $38                                       ; $6CC8: $FF
    ld e, l                                       ; $6CC9: $5D
    rst $38                                       ; $6CCA: $FF
    ld e, l                                       ; $6CCB: $5D
    db $FD                                        ; $6CCC: $FD
    ld c, d                                       ; $6CCD: $4A
    ld [$0055], a                                 ; $6CCE: $EA $55 $00
    nop                                           ; $6CD1: $00
    ldh [rP1], a                                  ; $6CD2: $E0 $00
    ldh a, [$E0]                                  ; $6CD4: $F0 $E0
    ld hl, sp+$70                                 ; $6CD6: $F8 $70
    ld hl, sp-$50                                 ; $6CD8: $F8 $B0
    db $FC                                        ; $6CDA: $FC
    ld hl, sp-$04                                 ; $6CDB: $F8 $FC
    ld hl, sp-$04                                 ; $6CDD: $F8 $FC
    ld l, b                                       ; $6CDF: $68
    inc bc                                        ; $6CE0: $03
    ld bc, $0007                                  ; $6CE1: $01 $07 $00
    rrca                                          ; $6CE4: $0F
    rlca                                          ; $6CE5: $07
    rra                                           ; $6CE6: $1F
    ld c, $1F                                     ; $6CE7: $0E $1F
    dec c                                         ; $6CE9: $0D
    rra                                           ; $6CEA: $1F

jr_00B_6CEB:
    dec c                                         ; $6CEB: $0D
    dec e                                         ; $6CEC: $1D
    ld a, [bc]                                    ; $6CED: $0A
    ld a, [hl+]                                   ; $6CEE: $2A
    dec d                                         ; $6CEF: $15
    ldh [$C0], a                                  ; $6CF0: $E0 $C0
    ldh a, [rNR41]                                ; $6CF2: $F0 $20
    ldh a, [$E0]                                  ; $6CF4: $F0 $E0
    ld hl, sp+$70                                 ; $6CF6: $F8 $70
    ld hl, sp-$50                                 ; $6CF8: $F8 $B0
    ld hl, sp-$10                                 ; $6CFA: $F8 $F0
    ld hl, sp-$10                                 ; $6CFC: $F8 $F0
    db $FC                                        ; $6CFE: $FC
    ld d, b                                       ; $6CFF: $50
    ld bc, $0700                                  ; $6D00: $01 $00 $07
    ld bc, $050F                                  ; $6D03: $01 $0F $05
    rra                                           ; $6D06: $1F
    dec c                                         ; $6D07: $0D
    rra                                           ; $6D08: $1F
    dec c                                         ; $6D09: $0D
    rra                                           ; $6D0A: $1F
    dec c                                         ; $6D0B: $0D
    rra                                           ; $6D0C: $1F
    dec c                                         ; $6D0D: $0D
    cpl                                           ; $6D0E: $2F
    ld d, $C0                                     ; $6D0F: $16 $C0
    nop                                           ; $6D11: $00
    ldh [$C0], a                                  ; $6D12: $E0 $C0
    ldh a, [$C0]                                  ; $6D14: $F0 $C0
    ld hl, sp-$30                                 ; $6D16: $F8 $D0
    ld hl, sp-$30                                 ; $6D18: $F8 $D0
    ld hl, sp-$50                                 ; $6D1A: $F8 $B0
    ld hl, sp-$50                                 ; $6D1C: $F8 $B0
    db $F4                                        ; $6D1E: $F4
    xor b                                         ; $6D1F: $A8
    dec e                                         ; $6D20: $1D
    nop                                           ; $6D21: $00
    ccf                                           ; $6D22: $3F
    dec e                                         ; $6D23: $1D
    ccf                                           ; $6D24: $3F
    dec e                                         ; $6D25: $1D
    ccf                                           ; $6D26: $3F
    dec de                                        ; $6D27: $1B
    ccf                                           ; $6D28: $3F
    dec de                                        ; $6D29: $1B
    rra                                           ; $6D2A: $1F
    dec bc                                        ; $6D2B: $0B
    rra                                           ; $6D2C: $1F
    dec bc                                        ; $6D2D: $0B
    rra                                           ; $6D2E: $1F
    dec bc                                        ; $6D2F: $0B
    ld hl, sp+$00                                 ; $6D30: $F8 $00
    db $FC                                        ; $6D32: $FC
    ld hl, sp-$02                                 ; $6D33: $F8 $FE
    db $FC                                        ; $6D35: $FC
    cp $FC                                        ; $6D36: $FE $FC
    cp $F4                                        ; $6D38: $FE $F4
    cp $E4                                        ; $6D3A: $FE $E4
    db $EC                                        ; $6D3C: $EC
    ret nc                                        ; $6D3D: $D0

    ret z                                         ; $6D3E: $C8

    or b                                          ; $6D3F: $B0
    ld a, [$7C45]                                 ; $6D40: $FA $45 $7C
    inc bc                                        ; $6D43: $03
    ccf                                           ; $6D44: $3F
    inc e                                         ; $6D45: $1C
    rra                                           ; $6D46: $1F
    inc c                                         ; $6D47: $0C
    rrca                                          ; $6D48: $0F
    nop                                           ; $6D49: $00
    ld [de], a                                    ; $6D4A: $12
    dec c                                         ; $6D4B: $0D
    ld [de], a                                    ; $6D4C: $12
    dec c                                         ; $6D4D: $0D
    rrca                                          ; $6D4E: $0F
    nop                                           ; $6D4F: $00
    ld hl, sp+$60                                 ; $6D50: $F8 $60
    ldh a, [rLCDC]                                ; $6D52: $F0 $40
    ld hl, sp+$30                                 ; $6D54: $F8 $30
    ldh a, [rNR41]                                ; $6D56: $F0 $20
    ldh [rP1], a                                  ; $6D58: $E0 $00
    ld d, b                                       ; $6D5A: $50
    and b                                         ; $6D5B: $A0
    ld h, b                                       ; $6D5C: $60
    add b                                         ; $6D5D: $80
    ret nz                                        ; $6D5E: $C0

    nop                                           ; $6D5F: $00
    ld a, [de]                                    ; $6D60: $1A
    dec b                                         ; $6D61: $05
    inc c                                         ; $6D62: $0C
    inc bc                                        ; $6D63: $03
    rra                                           ; $6D64: $1F
    inc c                                         ; $6D65: $0C
    rrca                                          ; $6D66: $0F
    ld b, $0F                                     ; $6D67: $06 $0F

jr_00B_6D69:
    nop                                           ; $6D69: $00
    dec bc                                        ; $6D6A: $0B
    inc b                                         ; $6D6B: $04
    ld [de], a                                    ; $6D6C: $12
    dec c                                         ; $6D6D: $0D
    inc de                                        ; $6D6E: $13

jr_00B_6D6F:
    inc c                                         ; $6D6F: $0C
    ld hl, sp+$40                                 ; $6D70: $F8 $40
    ld a, b                                       ; $6D72: $78
    add b                                         ; $6D73: $80
    db $FC                                        ; $6D74: $FC
    jr jr_00B_6D6F                                ; $6D75: $18 $F8

    jr nc, jr_00B_6D69                            ; $6D77: $30 $F0

    nop                                           ; $6D79: $00
    ret nc                                        ; $6D7A: $D0

    jr nz, jr_00B_6DC5                            ; $6D7B: $20 $48

    or b                                          ; $6D7D: $B0
    ret z                                         ; $6D7E: $C8

    jr nc, @+$21                                  ; $6D7F: $30 $1F

    ld b, $1F                                     ; $6D81: $06 $1F
    ld [bc], a                                    ; $6D83: $02
    ccf                                           ; $6D84: $3F
    jr jr_00B_6DA6                                ; $6D85: $18 $1F

    inc c                                         ; $6D87: $0C
    rrca                                          ; $6D88: $0F
    nop                                           ; $6D89: $00
    dec bc                                        ; $6D8A: $0B
    inc b                                         ; $6D8B: $04
    ld [de], a                                    ; $6D8C: $12
    dec c                                         ; $6D8D: $0D
    inc de                                        ; $6D8E: $13
    inc c                                         ; $6D8F: $0C
    ld hl, sp-$60                                 ; $6D90: $F8 $A0
    ld hl, sp-$80                                 ; $6D92: $F8 $80
    db $FC                                        ; $6D94: $FC
    sbc b                                         ; $6D95: $98
    ld hl, sp+$30                                 ; $6D96: $F8 $30
    ldh a, [rP1]                                  ; $6D98: $F0 $00
    ret nc                                        ; $6D9A: $D0

    jr nz, jr_00B_6DE5                            ; $6D9B: $20 $48

    or b                                          ; $6D9D: $B0
    ret z                                         ; $6D9E: $C8

    jr nc, jr_00B_6DC0                            ; $6D9F: $30 $1F

    dec bc                                        ; $6DA1: $0B
    rra                                           ; $6DA2: $1F
    inc c                                         ; $6DA3: $0C
    rrca                                          ; $6DA4: $0F
    inc b                                         ; $6DA5: $04

jr_00B_6DA6:
    rlca                                          ; $6DA6: $07
    ld [bc], a                                    ; $6DA7: $02
    ld [bc], a                                    ; $6DA8: $02
    ld bc, $0001                                  ; $6DA9: $01 $01 $00
    inc bc                                        ; $6DAC: $03
    nop                                           ; $6DAD: $00
    inc bc                                        ; $6DAE: $03
    nop                                           ; $6DAF: $00
    sub b                                         ; $6DB0: $90
    ld h, b                                       ; $6DB1: $60
    ldh [rP1], a                                  ; $6DB2: $E0 $00
    ldh [$C0], a                                  ; $6DB4: $E0 $C0
    ldh a, [$A0]                                  ; $6DB6: $F0 $A0
    or b                                          ; $6DB8: $B0
    ld b, b                                       ; $6DB9: $40
    sub b                                         ; $6DBA: $90
    ld h, b                                       ; $6DBB: $60
    sub b                                         ; $6DBC: $90
    ld h, b                                       ; $6DBD: $60
    ldh [rP1], a                                  ; $6DBE: $E0 $00

jr_00B_6DC0:
    ld a, [hl+]                                   ; $6DC0: $2A
    dec d                                         ; $6DC1: $15
    ld a, [de]                                    ; $6DC2: $1A
    dec b                                         ; $6DC3: $05
    inc c                                         ; $6DC4: $0C

jr_00B_6DC5:
    inc bc                                        ; $6DC5: $03
    rra                                           ; $6DC6: $1F
    inc c                                         ; $6DC7: $0C
    rra                                           ; $6DC8: $1F
    ld b, $17                                     ; $6DC9: $06 $17

jr_00B_6DCB:
    ld [$0609], sp                                ; $6DCB: $08 $09 $06
    add hl, bc                                    ; $6DCE: $09
    ld b, $FC                                     ; $6DCF: $06 $FC

jr_00B_6DD1:
    ld d, b                                       ; $6DD1: $50
    ld hl, sp+$40                                 ; $6DD2: $F8 $40
    ld a, b                                       ; $6DD4: $78
    add b                                         ; $6DD5: $80
    db $FC                                        ; $6DD6: $FC
    jr jr_00B_6DD1                                ; $6DD7: $18 $F8

    jr nc, jr_00B_6DCB                            ; $6DD9: $30 $F0

    nop                                           ; $6DDB: $00
    ret nc                                        ; $6DDC: $D0

    jr nz, jr_00B_6E2F                            ; $6DDD: $20 $50

    and b                                         ; $6DDF: $A0
    cpl                                           ; $6DE0: $2F
    ld d, $1F                                     ; $6DE1: $16 $1F
    ld b, $1F                                     ; $6DE3: $06 $1F

jr_00B_6DE5:
    ld [bc], a                                    ; $6DE5: $02
    ccf                                           ; $6DE6: $3F
    jr jr_00B_6E08                                ; $6DE7: $18 $1F

    inc c                                         ; $6DE9: $0C
    rrca                                          ; $6DEA: $0F
    nop                                           ; $6DEB: $00
    add hl, bc                                    ; $6DEC: $09
    ld b, $09                                     ; $6DED: $06 $09
    ld b, $F4                                     ; $6DEF: $06 $F4
    xor b                                         ; $6DF1: $A8
    ld hl, sp-$60                                 ; $6DF2: $F8 $A0
    ld hl, sp+$40                                 ; $6DF4: $F8 $40
    db $FC                                        ; $6DF6: $FC
    ld e, b                                       ; $6DF7: $58
    ld hl, sp+$30                                 ; $6DF8: $F8 $30
    ldh a, [rP1]                                  ; $6DFA: $F0 $00
    ld d, b                                       ; $6DFC: $50
    and b                                         ; $6DFD: $A0
    ret nc                                        ; $6DFE: $D0

    jr nz, jr_00B_6E10                            ; $6DFF: $20 $0F

    rlca                                          ; $6E01: $07
    rlca                                          ; $6E02: $07
    nop                                           ; $6E03: $00
    dec b                                         ; $6E04: $05
    ld [bc], a                                    ; $6E05: $02
    dec b                                         ; $6E06: $05
    ld [bc], a                                    ; $6E07: $02

jr_00B_6E08:
    dec bc                                        ; $6E08: $0B
    inc b                                         ; $6E09: $04
    rrca                                          ; $6E0A: $0F
    ld bc, $0F1F                                  ; $6E0B: $01 $1F $0F
    rrca                                          ; $6E0E: $0F
    nop                                           ; $6E0F: $00

jr_00B_6E10:
    ret nz                                        ; $6E10: $C0

    add b                                         ; $6E11: $80
    ret nz                                        ; $6E12: $C0

    nop                                           ; $6E13: $00
    ld b, b                                       ; $6E14: $40
    add b                                         ; $6E15: $80
    ld [hl], b                                    ; $6E16: $70
    add b                                         ; $6E17: $80
    ld hl, sp+$30                                 ; $6E18: $F8 $30
    ld hl, sp-$50                                 ; $6E1A: $F8 $B0
    ldh a, [$80]                                  ; $6E1C: $F0 $80
    ret nz                                        ; $6E1E: $C0

    nop                                           ; $6E1F: $00
    ldh a, [$C0]                                  ; $6E20: $F0 $C0
    ldh [rP1], a                                  ; $6E22: $E0 $00
    and b                                         ; $6E24: $A0
    ld b, b                                       ; $6E25: $40
    or b                                          ; $6E26: $B0

jr_00B_6E27:
    ld b, b                                       ; $6E27: $40
    ld hl, sp+$30                                 ; $6E28: $F8 $30
    db $FC                                        ; $6E2A: $FC
    ld a, b                                       ; $6E2B: $78
    db $FC                                        ; $6E2C: $FC
    jr c, jr_00B_6E27                             ; $6E2D: $38 $F8

jr_00B_6E2F:
    nop                                           ; $6E2F: $00
    ldh a, [$C0]                                  ; $6E30: $F0 $C0
    ldh [rP1], a                                  ; $6E32: $E0 $00
    and b                                         ; $6E34: $A0
    ld b, b                                       ; $6E35: $40
    and b                                         ; $6E36: $A0
    ld b, b                                       ; $6E37: $40
    cp b                                          ; $6E38: $B8

jr_00B_6E39:
    ld b, b                                       ; $6E39: $40
    db $FC                                        ; $6E3A: $FC
    jr jr_00B_6E39                                ; $6E3B: $18 $FC

    ld [hl], b                                    ; $6E3D: $70
    ld hl, sp+$00                                 ; $6E3E: $F8 $00
    ld hl, sp+$30                                 ; $6E40: $F8 $30
    cp b                                          ; $6E42: $B8
    ld b, b                                       ; $6E43: $40
    xor b                                         ; $6E44: $A8
    ld d, b                                       ; $6E45: $50
    xor b                                         ; $6E46: $A8
    ld d, b                                       ; $6E47: $50
    xor $10                                       ; $6E48: $EE $10
    rst $38                                       ; $6E4A: $FF
    ld b, [hl]                                    ; $6E4B: $46
    rst $38                                       ; $6E4C: $FF
    inc e                                         ; $6E4D: $1C
    ld a, $00                                     ; $6E4E: $3E $00
    cp $00                                        ; $6E50: $FE $00
    ld a, [hl]                                    ; $6E52: $7E
    inc a                                         ; $6E53: $3C
    ld a, [hl]                                    ; $6E54: $7E
    nop                                           ; $6E55: $00
    ld d, [hl]                                    ; $6E56: $56
    jr z, @+$61                                   ; $6E57: $28 $5F

    ld h, $7F                                     ; $6E59: $26 $7F
    ld c, $7E                                     ; $6E5B: $0E $7E
    inc l                                         ; $6E5D: $2C
    ld a, $00                                     ; $6E5E: $3E $00
    cp $1C                                        ; $6E60: $FE $1C
    ld a, [hl]                                    ; $6E62: $7E
    jr nc, @+$76                                  ; $6E63: $30 $74

    ld [$205C], sp                                ; $6E65: $08 $5C $20
    inc a                                         ; $6E68: $3C
    jr jr_00B_6EA9                                ; $6E69: $18 $3E

    inc e                                         ; $6E6B: $1C
    ld a, [hl]                                    ; $6E6C: $7E
    inc l                                         ; $6E6D: $2C
    ld a, [hl]                                    ; $6E6E: $7E
    nop                                           ; $6E6F: $00
    dec de                                        ; $6E70: $1B
    nop                                           ; $6E71: $00
    ld a, a                                       ; $6E72: $7F
    add hl, de                                    ; $6E73: $19
    rst $38                                       ; $6E74: $FF
    ld [hl], a                                    ; $6E75: $77
    rst $38                                       ; $6E76: $FF
    ld [hl], a                                    ; $6E77: $77

jr_00B_6E78:
    rst $38                                       ; $6E78: $FF
    ld l, a                                       ; $6E79: $6F
    rst $38                                       ; $6E7A: $FF
    ld l, c                                       ; $6E7B: $69
    ld sp, hl                                     ; $6E7C: $F9
    ld h, [hl]                                    ; $6E7D: $66
    ld [hl], h                                    ; $6E7E: $74
    inc hl                                        ; $6E7F: $23
    ldh a, [rP1]                                  ; $6E80: $F0 $00
    ld hl, sp-$10                                 ; $6E82: $F8 $F0
    db $FC                                        ; $6E84: $FC
    ld hl, sp-$04                                 ; $6E85: $F8 $FC
    ld hl, sp-$04                                 ; $6E87: $F8 $FC
    xor b                                         ; $6E89: $A8
    cp h                                          ; $6E8A: $BC
    ld c, b                                       ; $6E8B: $48
    ld e, h                                       ; $6E8C: $5C
    xor b                                         ; $6E8D: $A8
    ld e, b                                       ; $6E8E: $58
    and b                                         ; $6E8F: $A0
    ld [hl], h                                    ; $6E90: $74
    inc hl                                        ; $6E91: $23
    ld [hl], e                                    ; $6E92: $73
    jr nz, jr_00B_6E78                            ; $6E93: $20 $E3

    ld b, c                                       ; $6E95: $41
    ld b, a                                       ; $6E96: $47
    ld bc, $0007                                  ; $6E97: $01 $07 $00
    ld a, [bc]                                    ; $6E9A: $0A
    dec b                                         ; $6E9B: $05
    ld a, [bc]                                    ; $6E9C: $0A
    dec b                                         ; $6E9D: $05
    rlca                                          ; $6E9E: $07
    nop                                           ; $6E9F: $00
    ld e, b                                       ; $6EA0: $58
    and b                                         ; $6EA1: $A0
    db $10                                        ; $6EA2: $10
    ldh [$E0], a                                  ; $6EA3: $E0 $E0
    add b                                         ; $6EA5: $80
    ret nz                                        ; $6EA6: $C0

    ld b, b                                       ; $6EA7: $40
    ld h, b                                       ; $6EA8: $60

jr_00B_6EA9:
    add b                                         ; $6EA9: $80
    sub b                                         ; $6EAA: $90
    ld h, b                                       ; $6EAB: $60
    sub b                                         ; $6EAC: $90
    ld h, b                                       ; $6EAD: $60
    ldh [rP1], a                                  ; $6EAE: $E0 $00
    ld [hl], e                                    ; $6EB0: $73
    jr nz, jr_00B_6F26                            ; $6EB1: $20 $73

    ld hl, $0227                                  ; $6EB3: $21 $27 $02
    ld [bc], a                                    ; $6EB6: $02
    ld bc, $0102                                  ; $6EB7: $01 $02 $01
    nop                                           ; $6EBA: $00
    inc bc                                        ; $6EBB: $03

jr_00B_6EBC:
    inc b                                         ; $6EBC: $04
    inc bc                                        ; $6EBD: $03
    rlca                                          ; $6EBE: $07
    nop                                           ; $6EBF: $00
    db $10                                        ; $6EC0: $10
    ldh [$E0], a                                  ; $6EC1: $E0 $E0
    nop                                           ; $6EC3: $00
    ret nz                                        ; $6EC4: $C0

    add b                                         ; $6EC5: $80
    ret nz                                        ; $6EC6: $C0

    nop                                           ; $6EC7: $00
    ret nz                                        ; $6EC8: $C0

    nop                                           ; $6EC9: $00
    add b                                         ; $6ECA: $80
    nop                                           ; $6ECB: $00
    add b                                         ; $6ECC: $80
    nop                                           ; $6ECD: $00
    add b                                         ; $6ECE: $80
    nop                                           ; $6ECF: $00
    ld [hl], h                                    ; $6ED0: $74
    inc hl                                        ; $6ED1: $23
    ld [hl], e                                    ; $6ED2: $73
    jr nz, jr_00B_6EBC                            ; $6ED3: $20 $E7

    ld b, e                                       ; $6ED5: $43
    ld b, a                                       ; $6ED6: $47
    ld bc, $0205                                  ; $6ED7: $01 $05 $02
    add hl, bc                                    ; $6EDA: $09
    ld b, $09                                     ; $6EDB: $06 $09
    ld b, $07                                     ; $6EDD: $06 $07
    nop                                           ; $6EDF: $00
    ld e, b                                       ; $6EE0: $58
    and b                                         ; $6EE1: $A0
    db $10                                        ; $6EE2: $10
    ldh [$E0], a                                  ; $6EE3: $E0 $E0
    nop                                           ; $6EE5: $00
    ret nz                                        ; $6EE6: $C0

    nop                                           ; $6EE7: $00
    ld b, b                                       ; $6EE8: $40
    add b                                         ; $6EE9: $80
    ld b, b                                       ; $6EEA: $40
    add b                                         ; $6EEB: $80
    and b                                         ; $6EEC: $A0
    ld b, b                                       ; $6EED: $40
    ret nz                                        ; $6EEE: $C0

    nop                                           ; $6EEF: $00
    rlca                                          ; $6EF0: $07
    inc bc                                        ; $6EF1: $03
    inc bc                                        ; $6EF2: $03
    ld bc, $020D                                  ; $6EF3: $01 $0D $02
    dec sp                                        ; $6EF6: $3B
    inc b                                         ; $6EF7: $04
    ld [hl], a                                    ; $6EF8: $77
    jr z, jr_00B_6F7A                             ; $6EF9: $28 $7F

    ld [hl], $7F                                  ; $6EFB: $36 $7F
    ld e, $7F                                     ; $6EFD: $1E $7F
    nop                                           ; $6EFF: $00
    add b                                         ; $6F00: $80
    nop                                           ; $6F01: $00
    add b                                         ; $6F02: $80
    nop                                           ; $6F03: $00
    ldh a, [rP1]                                  ; $6F04: $F0 $00
    ld a, b                                       ; $6F06: $78
    or b                                          ; $6F07: $B0
    ld hl, sp+$70                                 ; $6F08: $F8 $70
    ldh a, [$E0]                                  ; $6F0A: $F0 $E0
    ldh a, [$C0]                                  ; $6F0C: $F0 $C0
    ldh [rP1], a                                  ; $6F0E: $E0 $00
    ldh a, [$60]                                  ; $6F10: $F0 $60
    ld [hl], b                                    ; $6F12: $70
    nop                                           ; $6F13: $00
    ld d, b                                       ; $6F14: $50
    jr nz, @+$5A                                  ; $6F15: $20 $58

    jr nz, jr_00B_6F95                            ; $6F17: $20 $7C

    nop                                           ; $6F19: $00
    cp $78                                        ; $6F1A: $FE $78
    cp $7C                                        ; $6F1C: $FE $7C
    cp $00                                        ; $6F1E: $FE $00
    rlca                                          ; $6F20: $07
    ld [bc], a                                    ; $6F21: $02
    ld [bc], a                                    ; $6F22: $02
    ld bc, $0007                                  ; $6F23: $01 $07 $00

jr_00B_6F26:
    dec c                                         ; $6F26: $0D
    ld [bc], a                                    ; $6F27: $02
    rra                                           ; $6F28: $1F
    nop                                           ; $6F29: $00
    ccf                                           ; $6F2A: $3F
    rla                                           ; $6F2B: $17
    ccf                                           ; $6F2C: $3F
    rrca                                          ; $6F2D: $0F
    rra                                           ; $6F2E: $1F
    nop                                           ; $6F2F: $00
    add b                                         ; $6F30: $80
    nop                                           ; $6F31: $00
    ret nz                                        ; $6F32: $C0

jr_00B_6F33:
    nop                                           ; $6F33: $00
    ld a, b                                       ; $6F34: $78
    add b                                         ; $6F35: $80
    cp h                                          ; $6F36: $BC
    ld e, b                                       ; $6F37: $58
    db $FC                                        ; $6F38: $FC
    jr c, jr_00B_6F33                             ; $6F39: $38 $F8

    ld [hl], b                                    ; $6F3B: $70
    ld hl, sp+$60                                 ; $6F3C: $F8 $60
    ldh [rP1], a                                  ; $6F3E: $E0 $00
    ld a, [hl+]                                   ; $6F40: $2A
    dec d                                         ; $6F41: $15
    ld a, [de]                                    ; $6F42: $1A
    dec b                                         ; $6F43: $05
    inc c                                         ; $6F44: $0C
    inc bc                                        ; $6F45: $03
    rra                                           ; $6F46: $1F
    inc c                                         ; $6F47: $0C
    rra                                           ; $6F48: $1F
    ld b, $17                                     ; $6F49: $06 $17

jr_00B_6F4B:
    ld [$0609], sp                                ; $6F4B: $08 $09 $06
    add hl, bc                                    ; $6F4E: $09
    ld b, $FC                                     ; $6F4F: $06 $FC

jr_00B_6F51:
    ld d, b                                       ; $6F51: $50
    ld hl, sp+$40                                 ; $6F52: $F8 $40
    ld a, b                                       ; $6F54: $78
    add b                                         ; $6F55: $80
    db $FC                                        ; $6F56: $FC
    jr jr_00B_6F51                                ; $6F57: $18 $F8

    jr nc, jr_00B_6F4B                            ; $6F59: $30 $F0

    nop                                           ; $6F5B: $00
    ret nc                                        ; $6F5C: $D0

    jr nz, jr_00B_6FAF                            ; $6F5D: $20 $50

    and b                                         ; $6F5F: $A0

jr_00B_6F60:
    rlca                                          ; $6F60: $07
    nop                                           ; $6F61: $00
    dec bc                                        ; $6F62: $0B
    rlca                                          ; $6F63: $07
    jr jr_00B_6F75                                ; $6F64: $18 $0F

    inc e                                         ; $6F66: $1C
    rrca                                          ; $6F67: $0F
    rra                                           ; $6F68: $1F
    rrca                                          ; $6F69: $0F
    rrca                                          ; $6F6A: $0F
    inc bc                                        ; $6F6B: $03
    inc de                                        ; $6F6C: $13
    inc c                                         ; $6F6D: $0C
    ld [$BC07], sp                                ; $6F6E: $08 $07 $BC
    ld h, b                                       ; $6F71: $60
    or $EC                                        ; $6F72: $F6 $EC
    db $FC                                        ; $6F74: $FC

jr_00B_6F75:
    ld hl, sp+$3E                                 ; $6F75: $F8 $3E
    db $F4                                        ; $6F77: $F4
    db $FC                                        ; $6F78: $FC
    add b                                         ; $6F79: $80

jr_00B_6F7A:
    sub b                                         ; $6F7A: $90
    ld h, b                                       ; $6F7B: $60
    ld d, b                                       ; $6F7C: $50
    and b                                         ; $6F7D: $A0
    ld d, b                                       ; $6F7E: $50
    and b                                         ; $6F7F: $A0
    rlca                                          ; $6F80: $07
    nop                                           ; $6F81: $00
    dec bc                                        ; $6F82: $0B
    rlca                                          ; $6F83: $07
    jr jr_00B_6F95                                ; $6F84: $18 $0F

    inc e                                         ; $6F86: $1C
    rrca                                          ; $6F87: $0F
    rra                                           ; $6F88: $1F
    ld c, $1E                                     ; $6F89: $0E $1E
    dec b                                         ; $6F8B: $05
    dec h                                         ; $6F8C: $25
    ld a, [de]                                    ; $6F8D: $1A
    ld de, $BC0E                                  ; $6F8E: $11 $0E $BC
    ld h, b                                       ; $6F91: $60
    or $EC                                        ; $6F92: $F6 $EC
    db $FC                                        ; $6F94: $FC

jr_00B_6F95:
    ld hl, sp+$3E                                 ; $6F95: $F8 $3E
    db $F4                                        ; $6F97: $F4
    db $FC                                        ; $6F98: $FC
    nop                                           ; $6F99: $00
    db $10                                        ; $6F9A: $10
    ldh [$30], a                                  ; $6F9B: $E0 $30
    ret nz                                        ; $6F9D: $C0

    jr nc, jr_00B_6F60                            ; $6F9E: $30 $C0

    ld bc, $0700                                  ; $6FA0: $01 $00 $07
    ld bc, $070B                                  ; $6FA3: $01 $0B $07
    add hl, de                                    ; $6FA6: $19
    rrca                                          ; $6FA7: $0F
    jr jr_00B_6FB9                                ; $6FA8: $18 $0F

    rra                                           ; $6FAA: $1F
    inc c                                         ; $6FAB: $0C
    inc e                                         ; $6FAC: $1C
    dec bc                                        ; $6FAD: $0B
    ld a, [hl+]                                   ; $6FAE: $2A

jr_00B_6FAF:
    dec d                                         ; $6FAF: $15
    and b                                         ; $6FB0: $A0
    nop                                           ; $6FB1: $00
    ld hl, sp-$60                                 ; $6FB2: $F8 $A0
    db $FC                                        ; $6FB4: $FC
    ld hl, sp-$08                                 ; $6FB5: $F8 $F8
    ldh a, [$FC]                                  ; $6FB7: $F0 $FC

jr_00B_6FB9:
    ld hl, sp-$08                                 ; $6FB9: $F8 $F8
    jr nz, @+$3A                                  ; $6FBB: $20 $38

    ret nz                                        ; $6FBD: $C0

    ld d, h                                       ; $6FBE: $54
    xor b                                         ; $6FBF: $A8
    nop                                           ; $6FC0: $00
    nop                                           ; $6FC1: $00
    rlca                                          ; $6FC2: $07
    nop                                           ; $6FC3: $00
    add hl, bc                                    ; $6FC4: $09
    rlca                                          ; $6FC5: $07
    dec e                                         ; $6FC6: $1D
    ld c, $1F                                     ; $6FC7: $0E $1F
    rrca                                          ; $6FC9: $0F
    rra                                           ; $6FCA: $1F
    rrca                                          ; $6FCB: $0F
    cpl                                           ; $6FCC: $2F
    rla                                           ; $6FCD: $17
    rra                                           ; $6FCE: $1F
    rlca                                          ; $6FCF: $07
    ret c                                         ; $6FD0: $D8

    nop                                           ; $6FD1: $00
    db $FC                                        ; $6FD2: $FC
    ret c                                         ; $6FD3: $D8

    db $FC                                        ; $6FD4: $FC
    ldh a, [$FE]                                  ; $6FD5: $F0 $FE
    db $FC                                        ; $6FD7: $FC
    db $FC                                        ; $6FD8: $FC
    ld hl, sp-$04                                 ; $6FD9: $F8 $FC
    ld hl, sp-$06                                 ; $6FDB: $F8 $FA
    db $F4                                        ; $6FDD: $F4
    db $FC                                        ; $6FDE: $FC
    ldh a, [rP1]                                  ; $6FDF: $F0 $00
    nop                                           ; $6FE1: $00
    rlca                                          ; $6FE2: $07
    nop                                           ; $6FE3: $00

jr_00B_6FE4:
    rrca                                          ; $6FE4: $0F
    rlca                                          ; $6FE5: $07
    rra                                           ; $6FE6: $1F
    dec c                                         ; $6FE7: $0D
    rra                                           ; $6FE8: $1F
    rrca                                          ; $6FE9: $0F
    rra                                           ; $6FEA: $1F
    rrca                                          ; $6FEB: $0F
    rra                                           ; $6FEC: $1F
    rrca                                          ; $6FED: $0F
    rra                                           ; $6FEE: $1F
    rlca                                          ; $6FEF: $07
    add sp, $00                                   ; $6FF0: $E8 $00
    db $FC                                        ; $6FF2: $FC
    ld l, b                                       ; $6FF3: $68
    cp $FC                                        ; $6FF4: $FE $FC
    db $FC                                        ; $6FF6: $FC
    ld hl, sp-$04                                 ; $6FF7: $F8 $FC
    ld hl, sp-$08                                 ; $6FF9: $F8 $F8
    ldh [$E8], a                                  ; $6FFB: $E0 $E8
    ret nc                                        ; $6FFD: $D0

    ret z                                         ; $6FFE: $C8

    or b                                          ; $6FFF: $B0
    inc e                                         ; $7000: $1C
    inc bc                                        ; $7001: $03
    ld a, a                                       ; $7002: $7F
    nop                                           ; $7003: $00
    rst $38                                       ; $7004: $FF
    ld bc, $215F                                  ; $7005: $01 $5F $21
    ld e, a                                       ; $7008: $5F
    ld hl, $314F                                  ; $7009: $21 $4F $31
    cpl                                           ; $700C: $2F
    dec e                                         ; $700D: $1D
    rra                                           ; $700E: $1F
    dec c                                         ; $700F: $0D
    db $10                                        ; $7010: $10
    ldh [$F0], a                                  ; $7011: $E0 $F0
    nop                                           ; $7013: $00
    ld hl, sp-$80                                 ; $7014: $F8 $80
    ldh a, [$80]                                  ; $7016: $F0 $80
    ret nc                                        ; $7018: $D0

jr_00B_7019:
    and b                                         ; $7019: $A0
    ret c                                         ; $701A: $D8

    and b                                         ; $701B: $A0
    ld hl, sp-$70                                 ; $701C: $F8 $90
    ldh a, [$80]                                  ; $701E: $F0 $80
    ld e, b                                       ; $7020: $58
    and b                                         ; $7021: $A0
    jr nc, jr_00B_6FE4                            ; $7022: $30 $C0

    cp $00                                        ; $7024: $FE $00
    db $EC                                        ; $7026: $EC
    sub b                                         ; $7027: $90
    add sp, -$70                                  ; $7028: $E8 $90
    add sp, -$70                                  ; $702A: $E8 $90
    ld hl, sp-$50                                 ; $702C: $F8 $B0
    ld hl, sp-$50                                 ; $702E: $F8 $B0
    rrca                                          ; $7030: $0F
    inc bc                                        ; $7031: $03
    rlca                                          ; $7032: $07
    nop                                           ; $7033: $00
    rrca                                          ; $7034: $0F
    nop                                           ; $7035: $00

jr_00B_7036:
    rla                                           ; $7036: $17
    ld [$0817], sp                                ; $7037: $08 $17 $08
    rra                                           ; $703A: $1F
    nop                                           ; $703B: $00
    rrca                                          ; $703C: $0F
    nop                                           ; $703D: $00
    rlca                                          ; $703E: $07
    nop                                           ; $703F: $00
    sub b                                         ; $7040: $90

jr_00B_7041:
    ld h, b                                       ; $7041: $60
    ldh [rP1], a                                  ; $7042: $E0 $00
    ldh a, [rP1]                                  ; $7044: $F0 $00
    or b                                          ; $7046: $B0
    ld b, b                                       ; $7047: $40
    or b                                          ; $7048: $B0
    ld b, b                                       ; $7049: $40
    ret z                                         ; $704A: $C8

jr_00B_704B:
    jr nc, jr_00B_7019                            ; $704B: $30 $CC

    jr c, jr_00B_704B                             ; $704D: $38 $FC

    jr jr_00B_7041                                ; $704F: $18 $F0

    ldh [$FE], a                                  ; $7051: $E0 $FE
    nop                                           ; $7053: $00
    db $FC                                        ; $7054: $FC
    nop                                           ; $7055: $00
    db $F4                                        ; $7056: $F4
    ld [$08F4], sp                                ; $7057: $08 $F4 $08
    db $F4                                        ; $705A: $F4
    ld [$08FC], sp                                ; $705B: $08 $FC $08
    ld hl, sp+$00                                 ; $705E: $F8 $00
    ld a, [hl+]                                   ; $7060: $2A
    dec d                                         ; $7061: $15
    ld a, [de]                                    ; $7062: $1A
    dec b                                         ; $7063: $05
    inc c                                         ; $7064: $0C
    inc bc                                        ; $7065: $03
    ccf                                           ; $7066: $3F
    nop                                           ; $7067: $00
    rra                                           ; $7068: $1F
    ld bc, $0917                                  ; $7069: $01 $17 $09
    rla                                           ; $706C: $17
    add hl, bc                                    ; $706D: $09
    rra                                           ; $706E: $1F
    add hl, bc                                    ; $706F: $09
    ld d, h                                       ; $7070: $54
    xor b                                         ; $7071: $A8
    ld e, b                                       ; $7072: $58
    and b                                         ; $7073: $A0
    jr nc, jr_00B_7036                            ; $7074: $30 $C0

    db $FC                                        ; $7076: $FC
    nop                                           ; $7077: $00
    add sp, $10                                   ; $7078: $E8 $10
    add sp, $10                                   ; $707A: $E8 $10

jr_00B_707C:
    ld hl, sp+$60                                 ; $707C: $F8 $60
    ldh a, [$60]                                  ; $707E: $F0 $60
    rra                                           ; $7080: $1F
    rlca                                          ; $7081: $07
    rlca                                          ; $7082: $07
    inc bc                                        ; $7083: $03
    ccf                                           ; $7084: $3F
    nop                                           ; $7085: $00
    rra                                           ; $7086: $1F
    nop                                           ; $7087: $00
    rla                                           ; $7088: $17
    ld [$0817], sp                                ; $7089: $08 $17 $08
    rrca                                          ; $708C: $0F
    nop                                           ; $708D: $00
    rlca                                          ; $708E: $07
    nop                                           ; $708F: $00
    db $FC                                        ; $7090: $FC
    ldh a, [$F0]                                  ; $7091: $F0 $F0
    ldh [$FE], a                                  ; $7093: $E0 $FE
    nop                                           ; $7095: $00
    db $FC                                        ; $7096: $FC
    nop                                           ; $7097: $00
    db $F4                                        ; $7098: $F4
    ld [$08F4], sp                                ; $7099: $08 $F4 $08
    db $F4                                        ; $709C: $F4
    ld [$08FC], sp                                ; $709D: $08 $FC $08
    ld [$0607], sp                                ; $70A0: $08 $07 $06
    ld bc, $000F                                  ; $70A3: $01 $0F $00
    rrca                                          ; $70A6: $0F
    nop                                           ; $70A7: $00
    ld c, $01                                     ; $70A8: $0E $01
    rra                                           ; $70AA: $1F
    nop                                           ; $70AB: $00
    ccf                                           ; $70AC: $3F
    db $10                                        ; $70AD: $10
    ccf                                           ; $70AE: $3F
    db $10                                        ; $70AF: $10
    ld d, b                                       ; $70B0: $50
    and b                                         ; $70B1: $A0
    db $10                                        ; $70B2: $10
    ldh [$E0], a                                  ; $70B3: $E0 $E0
    nop                                           ; $70B5: $00
    ret nz                                        ; $70B6: $C0

    nop                                           ; $70B7: $00
    ret nz                                        ; $70B8: $C0

    nop                                           ; $70B9: $00
    jr nz, jr_00B_707C                            ; $70BA: $20 $C0

    ld [hl], b                                    ; $70BC: $70
    ldh [$F0], a                                  ; $70BD: $E0 $F0
    ld h, b                                       ; $70BF: $60
    ld h, c                                       ; $70C0: $61
    ld e, $FE                                     ; $70C1: $1E $FE
    nop                                           ; $70C3: $00
    db $FC                                        ; $70C4: $FC
    nop                                           ; $70C5: $00
    sbc $24                                       ; $70C6: $DE $24
    sbc $24                                       ; $70C8: $DE $24
    adc $30                                       ; $70CA: $CE $30
    sbc $38                                       ; $70CC: $DE $38
    ld a, [hl]                                    ; $70CE: $7E
    jr jr_00B_70D9                                ; $70CF: $18 $08

    rlca                                          ; $70D1: $07
    ld b, $01                                     ; $70D2: $06 $01
    rrca                                          ; $70D4: $0F
    nop                                           ; $70D5: $00
    rrca                                          ; $70D6: $0F
    nop                                           ; $70D7: $00
    dec c                                         ; $70D8: $0D

jr_00B_70D9:
    ld [bc], a                                    ; $70D9: $02
    inc de                                        ; $70DA: $13
    inc c                                         ; $70DB: $0C
    dec sp                                        ; $70DC: $3B
    inc e                                         ; $70DD: $1C
    ccf                                           ; $70DE: $3F
    jr jr_00B_7131                                ; $70DF: $18 $50

    and b                                         ; $70E1: $A0
    db $10                                        ; $70E2: $10
    ldh [$E0], a                                  ; $70E3: $E0 $E0
    nop                                           ; $70E5: $00
    ret nz                                        ; $70E6: $C0

    add b                                         ; $70E7: $80
    ret nz                                        ; $70E8: $C0

    add b                                         ; $70E9: $80
    ldh [$80], a                                  ; $70EA: $E0 $80
    ldh a, [$A0]                                  ; $70EC: $F0 $A0
    ldh a, [$A0]                                  ; $70EE: $F0 $A0
    rrca                                          ; $70F0: $0F
    nop                                           ; $70F1: $00
    rrca                                          ; $70F2: $0F
    inc bc                                        ; $70F3: $03
    rra                                           ; $70F4: $1F
    rrca                                          ; $70F5: $0F
    rra                                           ; $70F6: $1F
    ld c, $3F                                     ; $70F7: $0E $3F
    db $10                                        ; $70F9: $10
    add hl, sp                                    ; $70FA: $39
    ld b, $21                                     ; $70FB: $06 $21
    ld e, $1F                                     ; $70FD: $1E $1F
    nop                                           ; $70FF: $00
    ldh [rLCDC], a                                ; $7100: $E0 $40
    ldh [$C0], a                                  ; $7102: $E0 $C0
    ldh a, [$60]                                  ; $7104: $F0 $60
    ldh a, [$C0]                                  ; $7106: $F0 $C0
    ret z                                         ; $7108: $C8

    jr nc, @+$0A                                  ; $7109: $30 $08

    ldh a, [$F0]                                  ; $710B: $F0 $F0
    nop                                           ; $710D: $00
    nop                                           ; $710E: $00
    nop                                           ; $710F: $00
    ld hl, sp+$00                                 ; $7110: $F8 $00
    ldh a, [$E0]                                  ; $7112: $F0 $E0
    ld hl, sp+$70                                 ; $7114: $F8 $70
    ld hl, sp+$40                                 ; $7116: $F8 $40
    ret z                                         ; $7118: $C8

    jr nc, @-$7A                                  ; $7119: $30 $84

    ld a, b                                       ; $711B: $78
    call nz, $F838                                ; $711C: $C4 $38 $F8
    nop                                           ; $711F: $00
    rlca                                          ; $7120: $07
    nop                                           ; $7121: $00
    rlca                                          ; $7122: $07
    inc bc                                        ; $7123: $03
    rrca                                          ; $7124: $0F
    ld b, $0F                                     ; $7125: $06 $0F
    rlca                                          ; $7127: $07
    rrca                                          ; $7128: $0F
    ld bc, $0609                                  ; $7129: $01 $09 $06
    rrca                                          ; $712C: $0F
    nop                                           ; $712D: $00
    nop                                           ; $712E: $00
    nop                                           ; $712F: $00
    db $FC                                        ; $7130: $FC

jr_00B_7131:
    ld h, b                                       ; $7131: $60
    ldh a, [$E0]                                  ; $7132: $F0 $E0
    ld hl, sp-$10                                 ; $7134: $F8 $F0
    ld hl, sp+$70                                 ; $7136: $F8 $70
    ld hl, sp+$60                                 ; $7138: $F8 $60
    db $F4                                        ; $713A: $F4
    ld [$708C], sp                                ; $713B: $08 $8C $70
    ld hl, sp+$00                                 ; $713E: $F8 $00
    ldh a, [rP1]                                  ; $7140: $F0 $00
    ldh a, [$60]                                  ; $7142: $F0 $60
    ld hl, sp+$60                                 ; $7144: $F8 $60
    ld hl, sp+$70                                 ; $7146: $F8 $70
    ld hl, sp+$70                                 ; $7148: $F8 $70
    db $F4                                        ; $714A: $F4
    ld [$708C], sp                                ; $714B: $08 $8C $70
    ld hl, sp+$00                                 ; $714E: $F8 $00
    rra                                           ; $7150: $1F
    nop                                           ; $7151: $00
    rrca                                          ; $7152: $0F
    rlca                                          ; $7153: $07
    rlca                                          ; $7154: $07
    inc bc                                        ; $7155: $03
    rrca                                          ; $7156: $0F
    ld bc, $0609                                  ; $7157: $01 $09 $06
    ld [$0407], sp                                ; $715A: $08 $07 $04
    inc bc                                        ; $715D: $03
    rlca                                          ; $715E: $07
    nop                                           ; $715F: $00
    ldh a, [rP1]                                  ; $7160: $F0 $00
    ldh [$C0], a                                  ; $7162: $E0 $C0
    ldh a, [$E0]                                  ; $7164: $F0 $E0
    ldh a, [$A0]                                  ; $7166: $F0 $A0
    ldh a, [$60]                                  ; $7168: $F0 $60
    ldh [rP1], a                                  ; $716A: $E0 $00
    and b                                         ; $716C: $A0

jr_00B_716D:
    ld b, b                                       ; $716D: $40
    ret nz                                        ; $716E: $C0

    nop                                           ; $716F: $00
    rlca                                          ; $7170: $07
    nop                                           ; $7171: $00
    rrca                                          ; $7172: $0F
    rlca                                          ; $7173: $07
    rrca                                          ; $7174: $0F
    rlca                                          ; $7175: $07
    rrca                                          ; $7176: $0F
    ld b, $07                                     ; $7177: $06 $07
    nop                                           ; $7179: $00
    inc b                                         ; $717A: $04
    inc bc                                        ; $717B: $03
    inc b                                         ; $717C: $04
    inc bc                                        ; $717D: $03
    rlca                                          ; $717E: $07
    nop                                           ; $717F: $00
    ld hl, sp+$00                                 ; $7180: $F8 $00
    ldh a, [$E0]                                  ; $7182: $F0 $E0
    ld hl, sp-$50                                 ; $7184: $F8 $B0
    ld hl, sp+$70                                 ; $7186: $F8 $70
    ld hl, sp+$70                                 ; $7188: $F8 $70
    ldh a, [rP1]                                  ; $718A: $F0 $00
    sub b                                         ; $718C: $90
    ld h, b                                       ; $718D: $60
    ldh a, [rP1]                                  ; $718E: $F0 $00
    rra                                           ; $7190: $1F
    nop                                           ; $7191: $00
    rrca                                          ; $7192: $0F
    rlca                                          ; $7193: $07
    rra                                           ; $7194: $1F
    rrca                                          ; $7195: $0F
    ccf                                           ; $7196: $3F
    rra                                           ; $7197: $1F
    ld e, a                                       ; $7198: $5F
    inc l                                         ; $7199: $2C
    ld c, l                                       ; $719A: $4D
    ld [hl-], a                                   ; $719B: $32
    ld h, c                                       ; $719C: $61
    ld e, $7F                                     ; $719D: $1E $7F
    nop                                           ; $719F: $00
    ldh [rP1], a                                  ; $71A0: $E0 $00
    ldh [$80], a                                  ; $71A2: $E0 $80
    ld hl, sp-$80                                 ; $71A4: $F8 $80
    db $E4                                        ; $71A6: $E4
    jr jr_00B_716D                                ; $71A7: $18 $C4

    cp b                                          ; $71A9: $B8
    ret z                                         ; $71AA: $C8

    or b                                          ; $71AB: $B0
    cp b                                          ; $71AC: $B8
    ld b, b                                       ; $71AD: $40
    ldh [rP1], a                                  ; $71AE: $E0 $00
    rlca                                          ; $71B0: $07
    nop                                           ; $71B1: $00
    rrca                                          ; $71B2: $0F
    rlca                                          ; $71B3: $07
    rra                                           ; $71B4: $1F
    rrca                                          ; $71B5: $0F
    rra                                           ; $71B6: $1F
    rrca                                          ; $71B7: $0F
    ccf                                           ; $71B8: $3F
    db $10                                        ; $71B9: $10
    jr c, @+$09                                   ; $71BA: $38 $07

    jr nc, jr_00B_71CD                            ; $71BC: $30 $0F

    rra                                           ; $71BE: $1F
    nop                                           ; $71BF: $00
    ldh [rP1], a                                  ; $71C0: $E0 $00
    ldh [$C0], a                                  ; $71C2: $E0 $C0
    ldh [$C0], a                                  ; $71C4: $E0 $C0
    ldh [$80], a                                  ; $71C6: $E0 $80
    ret nc                                        ; $71C8: $D0

    jr nz, jr_00B_721B                            ; $71C9: $20 $50

    and b                                         ; $71CB: $A0

jr_00B_71CC:
    ld [hl], b                                    ; $71CC: $70

jr_00B_71CD:
    add b                                         ; $71CD: $80
    ret nz                                        ; $71CE: $C0

    nop                                           ; $71CF: $00
    rra                                           ; $71D0: $1F
    nop                                           ; $71D1: $00
    rrca                                          ; $71D2: $0F
    rlca                                          ; $71D3: $07
    rra                                           ; $71D4: $1F
    rrca                                          ; $71D5: $0F
    ccf                                           ; $71D6: $3F
    dec bc                                        ; $71D7: $0B
    ld e, a                                       ; $71D8: $5F
    ld hl, $3C43                                  ; $71D9: $21 $43 $3C
    ld h, c                                       ; $71DC: $61
    ld e, $7F                                     ; $71DD: $1E $7F
    nop                                           ; $71DF: $00
    ldh [rP1], a                                  ; $71E0: $E0 $00
    ret nz                                        ; $71E2: $C0

    add b                                         ; $71E3: $80
    ld hl, sp-$40                                 ; $71E4: $F8 $C0
    db $E4                                        ; $71E6: $E4
    ret c                                         ; $71E7: $D8

    call nz, $C8B8                                ; $71E8: $C4 $B8 $C8
    or b                                          ; $71EB: $B0
    cp b                                          ; $71EC: $B8
    ld b, b                                       ; $71ED: $40
    ldh [rP1], a                                  ; $71EE: $E0 $00
    rrca                                          ; $71F0: $0F
    nop                                           ; $71F1: $00
    rla                                           ; $71F2: $17
    rrca                                          ; $71F3: $0F
    ld sp, $381F                                  ; $71F4: $31 $1F $38
    rra                                           ; $71F7: $1F
    ccf                                           ; $71F8: $3F
    rra                                           ; $71F9: $1F
    rra                                           ; $71FA: $1F
    ld b, $26                                     ; $71FB: $06 $26
    add hl, de                                    ; $71FD: $19
    db $10                                        ; $71FE: $10
    rrca                                          ; $71FF: $0F
    ld a, b                                       ; $7200: $78
    ret nz                                        ; $7201: $C0

    db $EC                                        ; $7202: $EC
    ret c                                         ; $7203: $D8

    ld hl, sp-$10                                 ; $7204: $F8 $F0

jr_00B_7206:
    ld a, h                                       ; $7206: $7C
    add sp, -$08                                  ; $7207: $E8 $F8
    nop                                           ; $7209: $00
    jr nz, jr_00B_71CC                            ; $720A: $20 $C0

    and d                                         ; $720C: $A2
    ld b, b                                       ; $720D: $40
    and l                                         ; $720E: $A5
    ld b, d                                       ; $720F: $42
    inc a                                         ; $7210: $3C
    inc bc                                        ; $7211: $03
    rst $38                                       ; $7212: $FF
    nop                                           ; $7213: $00
    rst $38                                       ; $7214: $FF
    inc bc                                        ; $7215: $03
    cp a                                          ; $7216: $BF
    ld b, d                                       ; $7217: $42
    cp a                                          ; $7218: $BF
    ld b, d                                       ; $7219: $42
    sbc a                                         ; $721A: $9F

jr_00B_721B:
    ld h, d                                       ; $721B: $62
    ld e, a                                       ; $721C: $5F
    ld a, [hl-]                                   ; $721D: $3A
    ccf                                           ; $721E: $3F
    ld a, [de]                                    ; $721F: $1A
    dec h                                         ; $7220: $25
    jp z, $12E5                                   ; $7221: $CA $E5 $12

    jp c, $AA24                                   ; $7224: $DA $24 $AA

    ld b, h                                       ; $7227: $44
    db $F4                                        ; $7228: $F4
    ld [$10F8], sp                                ; $7229: $08 $F8 $10
    ld hl, sp+$30                                 ; $722C: $F8 $30
    or b                                          ; $722E: $B0
    ld b, b                                       ; $722F: $40
    rra                                           ; $7230: $1F
    nop                                           ; $7231: $00
    jr jr_00B_723B                                ; $7232: $18 $07

    ld hl, $221E                                  ; $7234: $21 $1E $22
    dec e                                         ; $7237: $1D
    ld e, a                                       ; $7238: $5F
    jr nz, jr_00B_72BA                            ; $7239: $20 $7F

jr_00B_723B:
    dec c                                         ; $723B: $0D
    ld a, a                                       ; $723C: $7F
    inc a                                         ; $723D: $3C
    ld a, $00                                     ; $723E: $3E $00
    ret nz                                        ; $7240: $C0

    nop                                           ; $7241: $00
    ld b, b                                       ; $7242: $40
    add b                                         ; $7243: $80
    jr nz, jr_00B_7206                            ; $7244: $20 $C0

    ld h, b                                       ; $7246: $60
    add b                                         ; $7247: $80
    ldh a, [$60]                                  ; $7248: $F0 $60
    ldh a, [$E0]                                  ; $724A: $F0 $E0
    ldh [rP1], a                                  ; $724C: $E0 $00
    nop                                           ; $724E: $00
    nop                                           ; $724F: $00
    rrca                                          ; $7250: $0F
    nop                                           ; $7251: $00
    rra                                           ; $7252: $1F
    rrca                                          ; $7253: $0F
    ccf                                           ; $7254: $3F
    rra                                           ; $7255: $1F
    ld a, a                                       ; $7256: $7F
    ccf                                           ; $7257: $3F
    rst $38                                       ; $7258: $FF
    ld a, h                                       ; $7259: $7C
    db $FC                                        ; $725A: $FC
    ld l, e                                       ; $725B: $6B
    ld [$7A55], a                                 ; $725C: $EA $55 $7A
    dec h                                         ; $725F: $25
    ldh [rP1], a                                  ; $7260: $E0 $00
    ldh a, [$E0]                                  ; $7262: $F0 $E0
    ld hl, sp-$10                                 ; $7264: $F8 $F0
    ld hl, sp-$10                                 ; $7266: $F8 $F0
    db $FC                                        ; $7268: $FC
    cp b                                          ; $7269: $B8
    cp h                                          ; $726A: $BC
    ld e, b                                       ; $726B: $58
    ld e, h                                       ; $726C: $5C
    xor b                                         ; $726D: $A8
    ld e, b                                       ; $726E: $58
    and b                                         ; $726F: $A0
    rlca                                          ; $7270: $07
    nop                                           ; $7271: $00
    rrca                                          ; $7272: $0F
    rlca                                          ; $7273: $07
    rra                                           ; $7274: $1F
    rrca                                          ; $7275: $0F
    ccf                                           ; $7276: $3F
    rra                                           ; $7277: $1F
    ccf                                           ; $7278: $3F
    dec e                                         ; $7279: $1D
    dec a                                         ; $727A: $3D
    ld a, [bc]                                    ; $727B: $0A
    ld a, [hl+]                                   ; $727C: $2A
    dec d                                         ; $727D: $15
    ld a, [hl-]                                   ; $727E: $3A
    dec b                                         ; $727F: $05
    ldh [rP1], a                                  ; $7280: $E0 $00
    ldh a, [$E0]                                  ; $7282: $F0 $E0
    ld hl, sp-$50                                 ; $7284: $F8 $B0
    db $FC                                        ; $7286: $FC
    ld a, b                                       ; $7287: $78
    db $FC                                        ; $7288: $FC
    jr c, jr_00B_72C7                             ; $7289: $38 $3C

    ret c                                         ; $728B: $D8

    ld e, h                                       ; $728C: $5C
    xor b                                         ; $728D: $A8
    ld e, h                                       ; $728E: $5C
    and b                                         ; $728F: $A0
    rlca                                          ; $7290: $07
    nop                                           ; $7291: $00
    rrca                                          ; $7292: $0F
    rlca                                          ; $7293: $07
    rra                                           ; $7294: $1F
    rrca                                          ; $7295: $0F
    ccf                                           ; $7296: $3F
    rra                                           ; $7297: $1F
    ccf                                           ; $7298: $3F
    rra                                           ; $7299: $1F
    ccf                                           ; $729A: $3F
    rra                                           ; $729B: $1F
    ccf                                           ; $729C: $3F
    rra                                           ; $729D: $1F
    ccf                                           ; $729E: $3F
    rra                                           ; $729F: $1F
    inc bc                                        ; $72A0: $03
    nop                                           ; $72A1: $00

jr_00B_72A2:
    rlca                                          ; $72A2: $07
    inc bc                                        ; $72A3: $03
    rrca                                          ; $72A4: $0F
    rlca                                          ; $72A5: $07
    rrca                                          ; $72A6: $0F
    rlca                                          ; $72A7: $07
    rra                                           ; $72A8: $1F
    rrca                                          ; $72A9: $0F
    rra                                           ; $72AA: $1F
    rrca                                          ; $72AB: $0F
    rra                                           ; $72AC: $1F
    rrca                                          ; $72AD: $0F
    rrca                                          ; $72AE: $0F
    rlca                                          ; $72AF: $07
    ld hl, sp+$00                                 ; $72B0: $F8 $00
    db $FC                                        ; $72B2: $FC
    ld hl, sp-$02                                 ; $72B3: $F8 $FE
    db $FC                                        ; $72B5: $FC
    cp $FC                                        ; $72B6: $FE $FC
    cp $F4                                        ; $72B8: $FE $F4

jr_00B_72BA:
    cp $E4                                        ; $72BA: $FE $E4
    db $EC                                        ; $72BC: $EC

jr_00B_72BD:
    ret nc                                        ; $72BD: $D0

    ld hl, sp-$20                                 ; $72BE: $F8 $E0
    ld a, h                                       ; $72C0: $7C
    dec sp                                        ; $72C1: $3B
    ccf                                           ; $72C2: $3F
    db $10                                        ; $72C3: $10
    dec de                                        ; $72C4: $1B
    inc b                                         ; $72C5: $04
    dec bc                                        ; $72C6: $0B

jr_00B_72C7:
    inc b                                         ; $72C7: $04
    dec bc                                        ; $72C8: $0B
    inc b                                         ; $72C9: $04
    inc de                                        ; $72CA: $13
    inc c                                         ; $72CB: $0C
    inc de                                        ; $72CC: $13
    inc c                                         ; $72CD: $0C
    rrca                                          ; $72CE: $0F
    nop                                           ; $72CF: $00
    jr c, jr_00B_72A2                             ; $72D0: $38 $D0

    ldh a, [rP1]                                  ; $72D2: $F0 $00
    ret nz                                        ; $72D4: $C0

    nop                                           ; $72D5: $00
    ld h, b                                       ; $72D6: $60
    add b                                         ; $72D7: $80
    ldh [rP1], a                                  ; $72D8: $E0 $00
    ret nc                                        ; $72DA: $D0

    jr nz, jr_00B_72BD                            ; $72DB: $20 $E0

    nop                                           ; $72DD: $00
    ret nz                                        ; $72DE: $C0

    nop                                           ; $72DF: $00
    inc a                                         ; $72E0: $3C
    inc de                                        ; $72E1: $13
    rra                                           ; $72E2: $1F
    nop                                           ; $72E3: $00
    ld a, [bc]                                    ; $72E4: $0A
    dec b                                         ; $72E5: $05
    dec bc                                        ; $72E6: $0B
    inc b                                         ; $72E7: $04
    dec bc                                        ; $72E8: $0B
    inc b                                         ; $72E9: $04
    dec bc                                        ; $72EA: $0B
    inc b                                         ; $72EB: $04
    inc de                                        ; $72EC: $13
    inc c                                         ; $72ED: $0C
    inc de                                        ; $72EE: $13
    inc c                                         ; $72EF: $0C
    rra                                           ; $72F0: $1F
    rrca                                          ; $72F1: $0F
    rrca                                          ; $72F2: $0F
    rlca                                          ; $72F3: $07
    rrca                                          ; $72F4: $0F
    inc bc                                        ; $72F5: $03
    dec bc                                        ; $72F6: $0B
    dec b                                         ; $72F7: $05
    dec bc                                        ; $72F8: $0B
    inc b                                         ; $72F9: $04
    dec bc                                        ; $72FA: $0B
    inc b                                         ; $72FB: $04
    inc de                                        ; $72FC: $13
    inc c                                         ; $72FD: $0C
    inc de                                        ; $72FE: $13
    inc c                                         ; $72FF: $0C
    rrca                                          ; $7300: $0F
    rlca                                          ; $7301: $07
    rlca                                          ; $7302: $07
    inc bc                                        ; $7303: $03
    inc bc                                        ; $7304: $03
    ld bc, $0003                                  ; $7305: $01 $03 $00
    ld bc, $0100                                  ; $7308: $01 $00 $01

jr_00B_730B:
    nop                                           ; $730B: $00
    inc bc                                        ; $730C: $03

jr_00B_730D:
    nop                                           ; $730D: $00
    inc bc                                        ; $730E: $03

jr_00B_730F:
    nop                                           ; $730F: $00
    ld hl, sp-$10                                 ; $7310: $F8 $F0
    ldh a, [$80]                                  ; $7312: $F0 $80
    and b                                         ; $7314: $A0
    ld b, b                                       ; $7315: $40
    or b                                          ; $7316: $B0
    ld b, b                                       ; $7317: $40
    or b                                          ; $7318: $B0
    ld b, b                                       ; $7319: $40
    sub b                                         ; $731A: $90
    ld h, b                                       ; $731B: $60
    sub b                                         ; $731C: $90
    ld h, b                                       ; $731D: $60
    ldh [rP1], a                                  ; $731E: $E0 $00
    ld a, [hl-]                                   ; $7320: $3A
    dec b                                         ; $7321: $05
    inc a                                         ; $7322: $3C
    inc de                                        ; $7323: $13
    rra                                           ; $7324: $1F
    nop                                           ; $7325: $00
    ld c, $01                                     ; $7326: $0E $01
    dec bc                                        ; $7328: $0B
    inc b                                         ; $7329: $04
    dec bc                                        ; $732A: $0B
    inc b                                         ; $732B: $04
    add hl, bc                                    ; $732C: $09

jr_00B_732D:
    ld b, $09                                     ; $732D: $06 $09

jr_00B_732F:
    ld b, $5C                                     ; $732F: $06 $5C
    and b                                         ; $7331: $A0
    inc a                                         ; $7332: $3C
    ret z                                         ; $7333: $C8

    ld hl, sp+$00                                 ; $7334: $F8 $00
    ld [hl], b                                    ; $7336: $70
    add b                                         ; $7337: $80
    ret nc                                        ; $7338: $D0

    jr nz, jr_00B_730B                            ; $7339: $20 $D0

    jr nz, jr_00B_730D                            ; $733B: $20 $D0

    jr nz, jr_00B_730F                            ; $733D: $20 $D0

    jr nz, jr_00B_7380                            ; $733F: $20 $3F

    rra                                           ; $7341: $1F
    rra                                           ; $7342: $1F
    rrca                                          ; $7343: $0F
    rrca                                          ; $7344: $0F
    rlca                                          ; $7345: $07
    rrca                                          ; $7346: $0F
    inc bc                                        ; $7347: $03
    dec bc                                        ; $7348: $0B
    dec b                                         ; $7349: $05
    dec bc                                        ; $734A: $0B
    inc b                                         ; $734B: $04
    add hl, bc                                    ; $734C: $09
    ld b, $09                                     ; $734D: $06 $09
    ld b, $FC                                     ; $734F: $06 $FC
    ld hl, sp-$08                                 ; $7351: $F8 $F8
    ldh a, [$F0]                                  ; $7353: $F0 $F0
    ldh [$F0], a                                  ; $7355: $E0 $F0
    ret nz                                        ; $7357: $C0

    ret nc                                        ; $7358: $D0

    and b                                         ; $7359: $A0
    ret nc                                        ; $735A: $D0

    jr nz, jr_00B_732D                            ; $735B: $20 $D0

    jr nz, jr_00B_732F                            ; $735D: $20 $D0

    jr nz, jr_00B_7370                            ; $735F: $20 $0F

    inc bc                                        ; $7361: $03
    rlca                                          ; $7362: $07
    inc bc                                        ; $7363: $03
    rlca                                          ; $7364: $07
    inc bc                                        ; $7365: $03
    rlca                                          ; $7366: $07
    inc bc                                        ; $7367: $03
    rrca                                          ; $7368: $0F
    inc b                                         ; $7369: $04
    rrca                                          ; $736A: $0F
    ld bc, $0F1F                                  ; $736B: $01 $1F $0F
    rrca                                          ; $736E: $0F
    nop                                           ; $736F: $00

jr_00B_7370:
    ret nz                                        ; $7370: $C0

    add b                                         ; $7371: $80
    ret nz                                        ; $7372: $C0

    add b                                         ; $7373: $80
    ret nz                                        ; $7374: $C0

    add b                                         ; $7375: $80
    ldh a, [$80]                                  ; $7376: $F0 $80
    ld hl, sp+$30                                 ; $7378: $F8 $30
    ld hl, sp-$50                                 ; $737A: $F8 $B0
    ldh a, [$80]                                  ; $737C: $F0 $80
    ret nz                                        ; $737E: $C0

    nop                                           ; $737F: $00

jr_00B_7380:
    ldh a, [$C0]                                  ; $7380: $F0 $C0
    ldh [$C0], a                                  ; $7382: $E0 $C0
    ldh [$C0], a                                  ; $7384: $E0 $C0
    ldh a, [$C0]                                  ; $7386: $F0 $C0
    ld hl, sp+$30                                 ; $7388: $F8 $30
    db $FC                                        ; $738A: $FC
    ld a, b                                       ; $738B: $78
    db $FC                                        ; $738C: $FC
    jr c, @-$06                                   ; $738D: $38 $F8

    nop                                           ; $738F: $00
    ldh a, [$C0]                                  ; $7390: $F0 $C0
    ldh [$C0], a                                  ; $7392: $E0 $C0
    ldh [$C0], a                                  ; $7394: $E0 $C0
    ldh [$C0], a                                  ; $7396: $E0 $C0
    ld hl, sp-$40                                 ; $7398: $F8 $C0
    db $FC                                        ; $739A: $FC
    jr @-$02                                      ; $739B: $18 $FC

    ld [hl], b                                    ; $739D: $70
    ld hl, sp+$00                                 ; $739E: $F8 $00
    ld hl, sp+$30                                 ; $73A0: $F8 $30
    ld hl, sp+$50                                 ; $73A2: $F8 $50
    ld hl, sp+$70                                 ; $73A4: $F8 $70
    ld hl, sp+$70                                 ; $73A6: $F8 $70
    cp $30                                        ; $73A8: $FE $30
    rst $38                                       ; $73AA: $FF
    ld b, [hl]                                    ; $73AB: $46
    rst $38                                       ; $73AC: $FF
    inc e                                         ; $73AD: $1C
    ld a, $00                                     ; $73AE: $3E $00
    cp $00                                        ; $73B0: $FE $00
    ld a, [hl]                                    ; $73B2: $7E
    jr c, jr_00B_7433                             ; $73B3: $38 $7E

    jr c, jr_00B_7435                             ; $73B5: $38 $7E

    jr c, jr_00B_7438                             ; $73B7: $38 $7F

    ld [hl], $7F                                  ; $73B9: $36 $7F
    ld c, $7E                                     ; $73BB: $0E $7E
    inc l                                         ; $73BD: $2C
    ld a, $00                                     ; $73BE: $3E $00
    db $FC                                        ; $73C0: $FC
    jr nc, @-$02                                  ; $73C1: $30 $FC

    ld [hl], b                                    ; $73C3: $70
    ld hl, sp+$70                                 ; $73C4: $F8 $70
    ld hl, sp+$40                                 ; $73C6: $F8 $40
    ld a, b                                       ; $73C8: $78

jr_00B_73C9:
    jr nc, jr_00B_7447                            ; $73C9: $30 $7C

    jr c, jr_00B_73C9                             ; $73CB: $38 $FC

    ld e, b                                       ; $73CD: $58
    db $FC                                        ; $73CE: $FC
    nop                                           ; $73CF: $00
    rrca                                          ; $73D0: $0F
    nop                                           ; $73D1: $00
    rra                                           ; $73D2: $1F
    rrca                                          ; $73D3: $0F
    ccf                                           ; $73D4: $3F
    rra                                           ; $73D5: $1F
    ld a, a                                       ; $73D6: $7F
    ccf                                           ; $73D7: $3F
    ld a, a                                       ; $73D8: $7F
    ccf                                           ; $73D9: $3F
    ld a, a                                       ; $73DA: $7F
    add hl, sp                                    ; $73DB: $39
    ld a, c                                       ; $73DC: $79
    ld [hl], $7E                                  ; $73DD: $36 $7E
    add hl, sp                                    ; $73DF: $39
    ldh [rP1], a                                  ; $73E0: $E0 $00
    ldh a, [$E0]                                  ; $73E2: $F0 $E0
    ld hl, sp-$10                                 ; $73E4: $F8 $F0
    db $FC                                        ; $73E6: $FC
    ld hl, sp-$04                                 ; $73E7: $F8 $FC
    xor b                                         ; $73E9: $A8
    cp b                                          ; $73EA: $B8
    ld b, b                                       ; $73EB: $40
    ld d, b                                       ; $73EC: $50
    and b                                         ; $73ED: $A0
    ld d, b                                       ; $73EE: $50
    and b                                         ; $73EF: $A0
    ld a, [hl]                                    ; $73F0: $7E
    add hl, sp                                    ; $73F1: $39
    ld a, a                                       ; $73F2: $7F
    ld a, $3F                                     ; $73F3: $3E $3F
    jr jr_00B_7435                                ; $73F5: $18 $3E

    add hl, de                                    ; $73F7: $19
    rra                                           ; $73F8: $1F
    ld [$040B], sp                                ; $73F9: $08 $0B $04
    dec bc                                        ; $73FC: $0B
    inc b                                         ; $73FD: $04
    rlca                                          ; $73FE: $07
    nop                                           ; $73FF: $00
    ld d, b                                       ; $7400: $50
    and b                                         ; $7401: $A0
    db $10                                        ; $7402: $10
    ldh [$E0], a                                  ; $7403: $E0 $E0
    nop                                           ; $7405: $00
    add b                                         ; $7406: $80
    nop                                           ; $7407: $00
    ld h, b                                       ; $7408: $60
    add b                                         ; $7409: $80
    sub b                                         ; $740A: $90
    ld h, b                                       ; $740B: $60
    sub b                                         ; $740C: $90
    ld h, b                                       ; $740D: $60
    ldh [rP1], a                                  ; $740E: $E0 $00
    ld a, a                                       ; $7410: $7F
    ld a, $3F                                     ; $7411: $3E $3F
    jr jr_00B_7433                                ; $7413: $18 $1E

    dec c                                         ; $7415: $0D
    ld c, $05                                     ; $7416: $0E $05
    ld b, $01                                     ; $7418: $06 $01
    inc b                                         ; $741A: $04
    inc bc                                        ; $741B: $03
    inc b                                         ; $741C: $04
    inc bc                                        ; $741D: $03
    rlca                                          ; $741E: $07
    nop                                           ; $741F: $00
    db $10                                        ; $7420: $10
    ldh [$E0], a                                  ; $7421: $E0 $E0
    nop                                           ; $7423: $00
    add b                                         ; $7424: $80
    nop                                           ; $7425: $00
    ret nz                                        ; $7426: $C0

    nop                                           ; $7427: $00
    ret nz                                        ; $7428: $C0

    nop                                           ; $7429: $00
    add b                                         ; $742A: $80
    nop                                           ; $742B: $00
    add b                                         ; $742C: $80
    nop                                           ; $742D: $00
    add b                                         ; $742E: $80
    nop                                           ; $742F: $00
    ld a, [hl]                                    ; $7430: $7E
    add hl, sp                                    ; $7431: $39
    ld a, a                                       ; $7432: $7F

jr_00B_7433:
    ld a, $3F                                     ; $7433: $3E $3F

jr_00B_7435:
    jr jr_00B_7475                                ; $7435: $18 $3E

    add hl, de                                    ; $7437: $19

jr_00B_7438:
    dec e                                         ; $7438: $1D
    ld a, [bc]                                    ; $7439: $0A
    add hl, bc                                    ; $743A: $09
    ld b, $09                                     ; $743B: $06 $09
    ld b, $07                                     ; $743D: $06 $07
    nop                                           ; $743F: $00
    ld d, b                                       ; $7440: $50
    and b                                         ; $7441: $A0
    db $10                                        ; $7442: $10
    ldh [$E0], a                                  ; $7443: $E0 $E0
    nop                                           ; $7445: $00
    add b                                         ; $7446: $80

jr_00B_7447:
    nop                                           ; $7447: $00
    ret nz                                        ; $7448: $C0

    nop                                           ; $7449: $00
    ret nz                                        ; $744A: $C0

    nop                                           ; $744B: $00
    and b                                         ; $744C: $A0
    ld b, b                                       ; $744D: $40
    ret nz                                        ; $744E: $C0

    nop                                           ; $744F: $00
    rlca                                          ; $7450: $07
    inc bc                                        ; $7451: $03
    inc bc                                        ; $7452: $03
    ld bc, $030F                                  ; $7453: $01 $0F $03
    ccf                                           ; $7456: $3F
    rrca                                          ; $7457: $0F
    ld a, a                                       ; $7458: $7F
    jr nz, jr_00B_74DA                            ; $7459: $20 $7F

    ld [hl], $7F                                  ; $745B: $36 $7F
    ld e, $7F                                     ; $745D: $1E $7F
    nop                                           ; $745F: $00
    add b                                         ; $7460: $80
    nop                                           ; $7461: $00
    add b                                         ; $7462: $80
    nop                                           ; $7463: $00
    ldh a, [$80]                                  ; $7464: $F0 $80
    ld hl, sp-$50                                 ; $7466: $F8 $B0
    ld hl, sp+$70                                 ; $7468: $F8 $70
    ldh a, [$E0]                                  ; $746A: $F0 $E0
    ldh a, [$C0]                                  ; $746C: $F0 $C0
    ldh [rP1], a                                  ; $746E: $E0 $00
    ld a, b                                       ; $7470: $78
    jr nc, jr_00B_74AB                            ; $7471: $30 $38

    db $10                                        ; $7473: $10
    ld a, b                                       ; $7474: $78

jr_00B_7475:
    jr nc, jr_00B_74F3                            ; $7475: $30 $7C

    jr nc, @+$80                                  ; $7477: $30 $7E

    nop                                           ; $7479: $00
    ld a, a                                       ; $747A: $7F
    inc a                                         ; $747B: $3C
    rst $38                                       ; $747C: $FF
    ld a, $7F                                     ; $747D: $3E $7F
    nop                                           ; $747F: $00
    rlca                                          ; $7480: $07
    inc bc                                        ; $7481: $03
    inc bc                                        ; $7482: $03
    ld bc, $0307                                  ; $7483: $01 $07 $03
    rrca                                          ; $7486: $0F
    rlca                                          ; $7487: $07
    rra                                           ; $7488: $1F
    nop                                           ; $7489: $00
    ccf                                           ; $748A: $3F
    rla                                           ; $748B: $17
    ccf                                           ; $748C: $3F
    rrca                                          ; $748D: $0F
    rra                                           ; $748E: $1F
    nop                                           ; $748F: $00
    add b                                         ; $7490: $80
    nop                                           ; $7491: $00
    ret nz                                        ; $7492: $C0

jr_00B_7493:
    add b                                         ; $7493: $80
    ld hl, sp-$40                                 ; $7494: $F8 $C0
    db $FC                                        ; $7496: $FC
    ret c                                         ; $7497: $D8

    db $FC                                        ; $7498: $FC
    jr c, jr_00B_7493                             ; $7499: $38 $F8

    ld [hl], b                                    ; $749B: $70
    ld hl, sp+$60                                 ; $749C: $F8 $60
    ldh [rP1], a                                  ; $749E: $E0 $00
    rlca                                          ; $74A0: $07
    nop                                           ; $74A1: $00
    rrca                                          ; $74A2: $0F
    rlca                                          ; $74A3: $07
    rra                                           ; $74A4: $1F
    rrca                                          ; $74A5: $0F
    ccf                                           ; $74A6: $3F
    rra                                           ; $74A7: $1F
    ld a, a                                       ; $74A8: $7F
    ld a, $7E                                     ; $74A9: $3E $7E

jr_00B_74AB:
    dec [hl]                                      ; $74AB: $35
    push af                                       ; $74AC: $F5
    ld a, [hl+]                                   ; $74AD: $2A
    cp l                                          ; $74AE: $BD
    ld d, d                                       ; $74AF: $52
    ldh a, [rP1]                                  ; $74B0: $F0 $00
    ld hl, sp-$10                                 ; $74B2: $F8 $F0
    db $FC                                        ; $74B4: $FC
    ld hl, sp-$04                                 ; $74B5: $F8 $FC
    ld hl, sp-$02                                 ; $74B7: $F8 $FE
    ld e, h                                       ; $74B9: $5C
    ld e, [hl]                                    ; $74BA: $5E
    xor h                                         ; $74BB: $AC
    ld l, $D4                                     ; $74BC: $2E $D4
    inc l                                         ; $74BE: $2C
    ret nc                                        ; $74BF: $D0

    cp [hl]                                       ; $74C0: $BE
    ld e, l                                       ; $74C1: $5D
    sbc a                                         ; $74C2: $9F
    ld l, h                                       ; $74C3: $6C
    sbc l                                         ; $74C4: $9D
    ld l, d                                       ; $74C5: $6A
    adc a                                         ; $74C6: $8F
    ld [hl], b                                    ; $74C7: $70
    sbc a                                         ; $74C8: $9F
    ld h, d                                       ; $74C9: $62
    xor e                                         ; $74CA: $AB
    ld d, h                                       ; $74CB: $54
    adc c                                         ; $74CC: $89

jr_00B_74CD:
    halt                                          ; $74CD: $76
    xor a                                         ; $74CE: $AF
    ld d, c                                       ; $74CF: $51
    inc e                                         ; $74D0: $1C
    add sp, -$04                                  ; $74D1: $E8 $FC
    jr jr_00B_74CD                                ; $74D3: $18 $F8

    ret nc                                        ; $74D5: $D0

    ldh a, [$E0]                                  ; $74D6: $F0 $E0
    ldh a, [rP1]                                  ; $74D8: $F0 $00

jr_00B_74DA:
    ld l, b                                       ; $74DA: $68
    sub b                                         ; $74DB: $90
    ldh a, [rLCDC]                                ; $74DC: $F0 $40
    ldh [$C0], a                                  ; $74DE: $E0 $C0
    or a                                          ; $74E0: $B7
    ld b, b                                       ; $74E1: $40
    and d                                         ; $74E2: $A2
    ld b, c                                       ; $74E3: $41
    and d                                         ; $74E4: $A2
    ld b, c                                       ; $74E5: $41
    ld b, a                                       ; $74E6: $47
    nop                                           ; $74E7: $00
    rlca                                          ; $74E8: $07
    inc bc                                        ; $74E9: $03
    rlca                                          ; $74EA: $07
    ld [bc], a                                    ; $74EB: $02
    rrca                                          ; $74EC: $0F
    rlca                                          ; $74ED: $07
    rrca                                          ; $74EE: $0F
    nop                                           ; $74EF: $00
    ldh [rP1], a                                  ; $74F0: $E0 $00
    and b                                         ; $74F2: $A0

jr_00B_74F3:
    ld b, b                                       ; $74F3: $40

jr_00B_74F4:
    and b                                         ; $74F4: $A0
    ld b, b                                       ; $74F5: $40
    ld hl, sp+$00                                 ; $74F6: $F8 $00
    db $FC                                        ; $74F8: $FC
    jr c, @-$02                                   ; $74F9: $38 $FC

    ret c                                         ; $74FB: $D8

    ld hl, sp-$40                                 ; $74FC: $F8 $C0
    ldh [rP1], a                                  ; $74FE: $E0 $00
    ld bc, $0300                                  ; $7500: $01 $00 $03
    ld bc, $0307                                  ; $7503: $01 $07 $03
    rlca                                          ; $7506: $07
    inc bc                                        ; $7507: $03
    ccf                                           ; $7508: $3F
    ld [bc], a                                    ; $7509: $02
    ld b, a                                       ; $750A: $47
    jr c, jr_00B_756C                             ; $750B: $38 $5F

    jr nz, jr_00B_74CD                            ; $750D: $20 $BE

    ld b, c                                       ; $750F: $41
    db $FC                                        ; $7510: $FC
    nop                                           ; $7511: $00
    cp $FC                                        ; $7512: $FE $FC
    rst $38                                       ; $7514: $FF
    ld a, [hl]                                    ; $7515: $7E
    rst $38                                       ; $7516: $FF
    cp $FF                                        ; $7517: $FE $FF
    ld a, d                                       ; $7519: $7A
    ld a, a                                       ; $751A: $7F
    or d                                          ; $751B: $B2
    halt                                          ; $751C: $76
    xor b                                         ; $751D: $A8
    ld a, h                                       ; $751E: $7C
    or b                                          ; $751F: $B0
    xor [hl]                                      ; $7520: $AE
    ld d, c                                       ; $7521: $51
    and [hl]                                      ; $7522: $A6
    ld e, c                                       ; $7523: $59
    add h                                         ; $7524: $84
    ld a, e                                       ; $7525: $7B
    and h                                         ; $7526: $A4
    ld e, e                                       ; $7527: $5B
    adc h                                         ; $7528: $8C
    ld [hl], e                                    ; $7529: $73
    adc h                                         ; $752A: $8C
    ld [hl], e                                    ; $752B: $73
    sbc h                                         ; $752C: $9C
    ld h, e                                       ; $752D: $63
    sub h                                         ; $752E: $94

jr_00B_752F:
    ld h, e                                       ; $752F: $63
    ld a, h                                       ; $7530: $7C
    or b                                          ; $7531: $B0
    jr c, jr_00B_74F4                             ; $7532: $38 $C0

    ld [hl], b                                    ; $7534: $70
    add b                                         ; $7535: $80
    ld hl, sp+$20                                 ; $7536: $F8 $20
    ld a, b                                       ; $7538: $78
    add b                                         ; $7539: $80
    ret z                                         ; $753A: $C8

    jr nc, @-$36                                  ; $753B: $30 $C8

    jr nc, jr_00B_752F                            ; $753D: $30 $F0

    nop                                           ; $753F: $00
    or h                                          ; $7540: $B4
    ld b, e                                       ; $7541: $43
    and l                                         ; $7542: $A5
    ld b, d                                       ; $7543: $42
    ld b, l                                       ; $7544: $45
    ld [bc], a                                    ; $7545: $02
    inc bc                                        ; $7546: $03
    nop                                           ; $7547: $00
    ld bc, $0100                                  ; $7548: $01 $00 $01
    nop                                           ; $754B: $00
    ld bc, $0000                                  ; $754C: $01 $00 $00
    nop                                           ; $754F: $00
    ldh a, [$60]                                  ; $7550: $F0 $60
    ldh a, [rP1]                                  ; $7552: $F0 $00
    ret nc                                        ; $7554: $D0

    jr nz, jr_00B_75A7                            ; $7555: $20 $50

    and b                                         ; $7557: $A0
    call c, $FE20                                 ; $7558: $DC $20 $FE
    adc h                                         ; $755B: $8C
    cp $38                                        ; $755C: $FE $38
    ld a, h                                       ; $755E: $7C
    nop                                           ; $755F: $00
    rlca                                          ; $7560: $07
    nop                                           ; $7561: $00
    rrca                                          ; $7562: $0F
    rlca                                          ; $7563: $07
    rra                                           ; $7564: $1F
    rrca                                          ; $7565: $0F
    ccf                                           ; $7566: $3F
    rra                                           ; $7567: $1F
    ld a, a                                       ; $7568: $7F
    dec e                                         ; $7569: $1D
    cp l                                          ; $756A: $BD
    ld c, d                                       ; $756B: $4A

jr_00B_756C:
    xor d                                         ; $756C: $AA
    ld d, l                                       ; $756D: $55
    cp d                                          ; $756E: $BA
    ld b, l                                       ; $756F: $45
    ldh [rP1], a                                  ; $7570: $E0 $00
    ldh a, [$E0]                                  ; $7572: $F0 $E0
    ld hl, sp-$50                                 ; $7574: $F8 $B0
    db $FC                                        ; $7576: $FC
    ld a, b                                       ; $7577: $78
    cp $38                                        ; $7578: $FE $38
    dec a                                         ; $757A: $3D
    jp c, $AA5D                                   ; $757B: $DA $5D $AA

    ld e, l                                       ; $757E: $5D
    and d                                         ; $757F: $A2
    nop                                           ; $7580: $00
    nop                                           ; $7581: $00
    rlca                                          ; $7582: $07
    nop                                           ; $7583: $00
    rrca                                          ; $7584: $0F
    rlca                                          ; $7585: $07
    rra                                           ; $7586: $1F
    rrca                                          ; $7587: $0F
    ccf                                           ; $7588: $3F
    rra                                           ; $7589: $1F
    ld a, a                                       ; $758A: $7F
    dec e                                         ; $758B: $1D
    ld a, l                                       ; $758C: $7D
    ld a, [bc]                                    ; $758D: $0A
    ld l, d                                       ; $758E: $6A
    dec d                                         ; $758F: $15
    nop                                           ; $7590: $00
    nop                                           ; $7591: $00
    ldh [rP1], a                                  ; $7592: $E0 $00
    ldh a, [$E0]                                  ; $7594: $F0 $E0
    ld hl, sp-$50                                 ; $7596: $F8 $B0
    db $FC                                        ; $7598: $FC
    ld a, b                                       ; $7599: $78
    cp $38                                        ; $759A: $FE $38
    ld a, $D8                                     ; $759C: $3E $D8
    ld e, [hl]                                    ; $759E: $5E
    xor b                                         ; $759F: $A8
    ld a, d                                       ; $75A0: $7A
    dec b                                         ; $75A1: $05
    ld a, h                                       ; $75A2: $7C
    inc de                                        ; $75A3: $13
    ld e, a                                       ; $75A4: $5F
    jr nz, jr_00B_75F2                            ; $75A5: $20 $4B

jr_00B_75A7:
    dec [hl]                                      ; $75A7: $35
    ld c, a                                       ; $75A8: $4F
    inc sp                                        ; $75A9: $33
    ld c, a                                       ; $75AA: $4F
    inc [hl]                                      ; $75AB: $34
    ld c, [hl]                                    ; $75AC: $4E
    ld sp, $354A                                  ; $75AD: $31 $4A $35
    ld e, l                                       ; $75B0: $5D
    and d                                         ; $75B1: $A2
    dec a                                         ; $75B2: $3D
    jp z, $02FD                                   ; $75B3: $CA $FD $02

    push de                                       ; $75B6: $D5
    xor d                                         ; $75B7: $AA
    push af                                       ; $75B8: $F5
    jp z, $2EF1                                   ; $75B9: $CA $F1 $2E

    ld [hl], l                                    ; $75BC: $75
    adc d                                         ; $75BD: $8A
    sub c                                         ; $75BE: $91
    ld l, [hl]                                    ; $75BF: $6E
    dec a                                         ; $75C0: $3D
    jp z, $0AFD                                   ; $75C1: $CA $FD $0A

    reti                                          ; $75C4: $D9


    and [hl]                                      ; $75C5: $A6
    pop af                                        ; $75C6: $F1
    adc $F1                                       ; $75C7: $CE $F1
    ld l, $71                                     ; $75C9: $2E $71
    adc [hl]                                      ; $75CB: $8E
    ret                                           ; $75CC: $C9


    ld [hl], $C9                                  ; $75CD: $36 $C9
    or [hl]                                       ; $75CF: $B6
    ld c, a                                       ; $75D0: $4F
    jr nc, jr_00B_7622                            ; $75D1: $30 $4F

    inc sp                                        ; $75D3: $33
    ld d, a                                       ; $75D4: $57
    jr nz, jr_00B_75FD                            ; $75D5: $20 $26

    ld bc, $060F                                  ; $75D7: $01 $0F $06
    rrca                                          ; $75DA: $0F
    rlca                                          ; $75DB: $07
    rlca                                          ; $75DC: $07
    inc bc                                        ; $75DD: $03
    rlca                                          ; $75DE: $07
    nop                                           ; $75DF: $00
    sub c                                         ; $75E0: $91
    ld l, [hl]                                    ; $75E1: $6E
    ld a, [c]                                     ; $75E2: $F2
    adc h                                         ; $75E3: $8C
    ld [$A404], a                                 ; $75E4: $EA $04 $A4
    ld b, b                                       ; $75E7: $40
    and b                                         ; $75E8: $A0
    ld b, b                                       ; $75E9: $40
    ldh [rP1], a                                  ; $75EA: $E0 $00
    ldh [rLCDC], a                                ; $75EC: $E0 $40
    ret nz                                        ; $75EE: $C0

    nop                                           ; $75EF: $00
    sbc a                                         ; $75F0: $9F
    ld h, c                                       ; $75F1: $61

jr_00B_75F2:
    and e                                         ; $75F2: $A3
    ld b, b                                       ; $75F3: $40
    ld b, d                                       ; $75F4: $42
    ld bc, $0106                                  ; $75F5: $01 $06 $01
    rrca                                          ; $75F8: $0F
    ld b, $1F                                     ; $75F9: $06 $1F
    rrca                                          ; $75FB: $0F
    rra                                           ; $75FC: $1F

jr_00B_75FD:
    ld c, $0F                                     ; $75FD: $0E $0F
    nop                                           ; $75FF: $00
    ld sp, hl                                     ; $7600: $F9
    add $E5                                       ; $7601: $C6 $E5
    ld [bc], a                                    ; $7603: $02
    and d                                         ; $7604: $A2
    ld b, b                                       ; $7605: $40
    or b                                          ; $7606: $B0

jr_00B_7607:
    ld b, b                                       ; $7607: $40
    ld hl, sp+$30                                 ; $7608: $F8 $30
    db $FC                                        ; $760A: $FC
    ld a, b                                       ; $760B: $78
    db $FC                                        ; $760C: $FC
    jr c, jr_00B_7607                             ; $760D: $38 $F8

    nop                                           ; $760F: $00
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    rlca                                          ; $7612: $07
    nop                                           ; $7613: $00
    rrca                                          ; $7614: $0F
    rlca                                          ; $7615: $07
    rra                                           ; $7616: $1F
    rrca                                          ; $7617: $0F
    ccf                                           ; $7618: $3F
    rra                                           ; $7619: $1F
    ccf                                           ; $761A: $3F
    rlca                                          ; $761B: $07
    daa                                           ; $761C: $27
    add hl, de                                    ; $761D: $19
    ld c, e                                       ; $761E: $4B
    inc [hl]                                      ; $761F: $34
    nop                                           ; $7620: $00
    nop                                           ; $7621: $00

jr_00B_7622:
    ldh [rP1], a                                  ; $7622: $E0 $00
    ldh a, [$E0]                                  ; $7624: $F0 $E0
    ld hl, sp-$10                                 ; $7626: $F8 $F0
    db $FC                                        ; $7628: $FC
    ld hl, sp-$04                                 ; $7629: $F8 $FC
    ldh [$E4], a                                  ; $762B: $E0 $E4
    sbc b                                         ; $762D: $98
    call nz, $07B8                                ; $762E: $C4 $B8 $07
    nop                                           ; $7631: $00
    rrca                                          ; $7632: $0F
    rlca                                          ; $7633: $07
    rra                                           ; $7634: $1F
    rrca                                          ; $7635: $0F
    ccf                                           ; $7636: $3F
    rra                                           ; $7637: $1F
    ccf                                           ; $7638: $3F
    rrca                                          ; $7639: $0F
    ld l, a                                       ; $763A: $6F
    inc de                                        ; $763B: $13
    ld b, a                                       ; $763C: $47
    add hl, sp                                    ; $763D: $39
    ld c, e                                       ; $763E: $4B
    dec [hl]                                      ; $763F: $35
    ldh [rP1], a                                  ; $7640: $E0 $00
    ldh a, [$E0]                                  ; $7642: $F0 $E0
    ld hl, sp-$10                                 ; $7644: $F8 $F0
    db $FC                                        ; $7646: $FC
    ld hl, sp-$04                                 ; $7647: $F8 $FC
    ldh a, [$F6]                                  ; $7649: $F0 $F6
    ret z                                         ; $764B: $C8

    ld [c], a                                     ; $764C: $E2
    sbc h                                         ; $764D: $9C
    jp nc, $9DAC                                  ; $764E: $D2 $AC $9D

jr_00B_7651:
    ld h, d                                       ; $7651: $62
    sbc l                                         ; $7652: $9D

jr_00B_7653:
    ld h, d                                       ; $7653: $62
    sbc l                                         ; $7654: $9D
    ld h, d                                       ; $7655: $62
    sub l                                         ; $7656: $95
    ld l, d                                       ; $7657: $6A
    or l                                          ; $7658: $B5
    ld c, d                                       ; $7659: $4A
    or a                                          ; $765A: $B7
    ld c, b                                       ; $765B: $48
    and a                                         ; $765C: $A7
    ld e, b                                       ; $765D: $58
    xor a                                         ; $765E: $AF
    ld d, c                                       ; $765F: $51
    xor b                                         ; $7660: $A8
    ld d, b                                       ; $7661: $50
    xor b                                         ; $7662: $A8
    ld d, b                                       ; $7663: $50
    xor b                                         ; $7664: $A8
    ld d, b                                       ; $7665: $50
    xor b                                         ; $7666: $A8
    ld d, b                                       ; $7667: $50
    xor b                                         ; $7668: $A8
    ld d, b                                       ; $7669: $50
    db $E4                                        ; $766A: $E4
    jr jr_00B_7651                                ; $766B: $18 $E4

    jr jr_00B_7653                                ; $766D: $18 $E4

    sbc b                                         ; $766F: $98
    or d                                          ; $7670: $B2
    ld c, h                                       ; $7671: $4C
    or d                                          ; $7672: $B2
    ld c, h                                       ; $7673: $4C
    or d                                          ; $7674: $B2
    ld c, h                                       ; $7675: $4C
    cp d                                          ; $7676: $BA
    ld b, h                                       ; $7677: $44
    ld a, [c]                                     ; $7678: $F2
    inc c                                         ; $7679: $0C
    ld a, [$FA04]                                 ; $767A: $FA $04 $FA
    inc b                                         ; $767D: $04
    ld a, [$5F84]                                 ; $767E: $FA $84 $5F
    inc hl                                        ; $7681: $23
    ld e, e                                       ; $7682: $5B
    jr nz, jr_00B_76AF                            ; $7683: $20 $2A

    ld de, $0112                                  ; $7685: $11 $12 $01
    ld b, $01                                     ; $7688: $06 $01
    rrca                                          ; $768A: $0F
    inc b                                         ; $768B: $04
    rrca                                          ; $768C: $0F
    rlca                                          ; $768D: $07
    rlca                                          ; $768E: $07
    nop                                           ; $768F: $00
    ld a, [$FAC4]                                 ; $7690: $FA $C4 $FA
    inc b                                         ; $7693: $04
    or h                                          ; $7694: $B4
    ld c, b                                       ; $7695: $48
    xor b                                         ; $7696: $A8
    ld b, b                                       ; $7697: $40
    or b                                          ; $7698: $B0
    ld b, b                                       ; $7699: $40
    ld hl, sp+$10                                 ; $769A: $F8 $10
    ld hl, sp+$70                                 ; $769C: $F8 $70
    ldh a, [rP1]                                  ; $769E: $F0 $00
    xor a                                         ; $76A0: $AF
    ld d, e                                       ; $76A1: $53
    cp e                                          ; $76A2: $BB
    ld b, b                                       ; $76A3: $40
    or d                                          ; $76A4: $B2
    ld b, c                                       ; $76A5: $41
    ld d, e                                       ; $76A6: $53
    jr nz, jr_00B_76CC                            ; $76A7: $20 $23

    ld bc, $0307                                  ; $76A9: $01 $07 $03
    rlca                                          ; $76AC: $07
    inc bc                                        ; $76AD: $03
    rlca                                          ; $76AE: $07

jr_00B_76AF:
    nop                                           ; $76AF: $00
    ld a, [c]                                     ; $76B0: $F2
    adc h                                         ; $76B1: $8C
    ld a, [c]                                     ; $76B2: $F2
    call z, $04EA                                 ; $76B3: $CC $EA $04
    xor d                                         ; $76B6: $AA
    ld b, h                                       ; $76B7: $44
    call nz, $C080                                ; $76B8: $C4 $80 $C0
    add b                                         ; $76BB: $80
    ldh [rLCDC], a                                ; $76BC: $E0 $40
    ldh [rP1], a                                  ; $76BE: $E0 $00
    rra                                           ; $76C0: $1F
    nop                                           ; $76C1: $00
    ccf                                           ; $76C2: $3F
    rra                                           ; $76C3: $1F
    ld a, a                                       ; $76C4: $7F
    ccf                                           ; $76C5: $3F
    ld a, a                                       ; $76C6: $7F
    ccf                                           ; $76C7: $3F
    ld a, a                                       ; $76C8: $7F
    ccf                                           ; $76C9: $3F
    ld a, a                                       ; $76CA: $7F
    add hl, sp                                    ; $76CB: $39

jr_00B_76CC:
    ld a, c                                       ; $76CC: $79
    ld b, $8E                                     ; $76CD: $06 $8E
    ld [hl], c                                    ; $76CF: $71
    ldh [rP1], a                                  ; $76D0: $E0 $00
    ldh a, [$E0]                                  ; $76D2: $F0 $E0
    ld hl, sp-$10                                 ; $76D4: $F8 $F0
    db $FC                                        ; $76D6: $FC
    ld hl, sp-$04                                 ; $76D7: $F8 $FC
    xor b                                         ; $76D9: $A8
    cp b                                          ; $76DA: $B8
    ld b, b                                       ; $76DB: $40
    ld d, b                                       ; $76DC: $50
    and b                                         ; $76DD: $A0
    ld d, b                                       ; $76DE: $50
    and b                                         ; $76DF: $A0
    adc [hl]                                      ; $76E0: $8E
    ld [hl], c                                    ; $76E1: $71
    or a                                          ; $76E2: $B7
    ld c, d                                       ; $76E3: $4A
    ld a, a                                       ; $76E4: $7F
    add b                                         ; $76E5: $80
    ld c, [hl]                                    ; $76E6: $4E
    or c                                          ; $76E7: $B1
    ld b, a                                       ; $76E8: $47
    cp b                                          ; $76E9: $B8
    rlca                                          ; $76EA: $07
    ld hl, sp+$4E                                 ; $76EB: $F8 $4E
    or c                                          ; $76ED: $B1
    rra                                           ; $76EE: $1F
    ldh [$50], a                                  ; $76EF: $E0 $50
    and b                                         ; $76F1: $A0
    db $10                                        ; $76F2: $10
    ldh [$E0], a                                  ; $76F3: $E0 $E0
    nop                                           ; $76F5: $00
    add b                                         ; $76F6: $80
    nop                                           ; $76F7: $00
    ld h, b                                       ; $76F8: $60
    add b                                         ; $76F9: $80
    sub b                                         ; $76FA: $90
    ld h, b                                       ; $76FB: $60
    sub b                                         ; $76FC: $90
    ld h, b                                       ; $76FD: $60
    ldh [rP1], a                                  ; $76FE: $E0 $00
    rra                                           ; $7700: $1F
    db $E3                                        ; $7701: $E3
    scf                                           ; $7702: $37
    ret nz                                        ; $7703: $C0

    ld a, l                                       ; $7704: $7D
    add d                                         ; $7705: $82
    ei                                            ; $7706: $FB
    inc b                                         ; $7707: $04
    ld [hl], a                                    ; $7708: $77
    jr z, jr_00B_778A                             ; $7709: $28 $7F

    ld [hl], $7F                                  ; $770B: $36 $7F
    ld e, $7F                                     ; $770D: $1E $7F
    nop                                           ; $770F: $00
    add b                                         ; $7710: $80
    nop                                           ; $7711: $00
    add b                                         ; $7712: $80
    nop                                           ; $7713: $00
    ldh a, [rP1]                                  ; $7714: $F0 $00
    ld a, b                                       ; $7716: $78
    or b                                          ; $7717: $B0
    ld hl, sp+$70                                 ; $7718: $F8 $70
    ldh a, [$E0]                                  ; $771A: $F0 $E0
    ldh a, [$C0]                                  ; $771C: $F0 $C0
    ldh [rP1], a                                  ; $771E: $E0 $00
    or a                                          ; $7720: $B7
    ld c, d                                       ; $7721: $4A
    ld a, a                                       ; $7722: $7F
    add b                                         ; $7723: $80
    ld c, [hl]                                    ; $7724: $4E
    or c                                          ; $7725: $B1
    ld b, [hl]                                    ; $7726: $46
    cp c                                          ; $7727: $B9
    ld b, $F9                                     ; $7728: $06 $F9
    ld c, h                                       ; $772A: $4C
    or e                                          ; $772B: $B3
    inc e                                         ; $772C: $1C
    db $E3                                        ; $772D: $E3
    rra                                           ; $772E: $1F
    ldh [rNR10], a                                ; $772F: $E0 $10
    ldh [$E0], a                                  ; $7731: $E0 $E0
    nop                                           ; $7733: $00
    add b                                         ; $7734: $80
    nop                                           ; $7735: $00
    ret nz                                        ; $7736: $C0

    nop                                           ; $7737: $00
    ret nz                                        ; $7738: $C0

    nop                                           ; $7739: $00
    add b                                         ; $773A: $80
    nop                                           ; $773B: $00
    add b                                         ; $773C: $80
    nop                                           ; $773D: $00
    add b                                         ; $773E: $80
    nop                                           ; $773F: $00
    scf                                           ; $7740: $37
    jp $8063                                      ; $7741: $C3 $63 $80


    jp nz, $0201                                  ; $7744: $C2 $01 $02

    ld bc, $0003                                  ; $7747: $01 $03 $00
    rlca                                          ; $774A: $07
    inc bc                                        ; $774B: $03
    rlca                                          ; $774C: $07
    inc bc                                        ; $774D: $03
    rlca                                          ; $774E: $07
    nop                                           ; $774F: $00
    add b                                         ; $7750: $80
    nop                                           ; $7751: $00
    add b                                         ; $7752: $80
    nop                                           ; $7753: $00
    add b                                         ; $7754: $80
    nop                                           ; $7755: $00
    ret nz                                        ; $7756: $C0

    nop                                           ; $7757: $00
    ldh [rP1], a                                  ; $7758: $E0 $00
    ldh a, [$C0]                                  ; $775A: $F0 $C0
    ldh a, [$E0]                                  ; $775C: $F0 $E0
    ldh a, [rP1]                                  ; $775E: $F0 $00
    adc [hl]                                      ; $7760: $8E
    ld [hl], c                                    ; $7761: $71
    or a                                          ; $7762: $B7
    ld c, d                                       ; $7763: $4A
    ld a, a                                       ; $7764: $7F
    add b                                         ; $7765: $80
    ld c, [hl]                                    ; $7766: $4E
    or c                                          ; $7767: $B1
    ld b, l                                       ; $7768: $45
    cp d                                          ; $7769: $BA
    add hl, bc                                    ; $776A: $09
    or $49                                        ; $776B: $F6 $49
    or [hl]                                       ; $776D: $B6
    rra                                           ; $776E: $1F
    ldh [$50], a                                  ; $776F: $E0 $50
    and b                                         ; $7771: $A0
    db $10                                        ; $7772: $10
    ldh [$E0], a                                  ; $7773: $E0 $E0
    nop                                           ; $7775: $00
    add b                                         ; $7776: $80
    nop                                           ; $7777: $00
    ret nz                                        ; $7778: $C0

    nop                                           ; $7779: $00
    ret nz                                        ; $777A: $C0

    nop                                           ; $777B: $00
    and b                                         ; $777C: $A0
    ld b, b                                       ; $777D: $40
    ret nz                                        ; $777E: $C0

    nop                                           ; $777F: $00
    rra                                           ; $7780: $1F
    ld [c], a                                     ; $7781: $E2
    ld [hl-], a                                   ; $7782: $32
    pop bc                                        ; $7783: $C1
    ld h, a                                       ; $7784: $67
    add b                                         ; $7785: $80
    call $1F02                                    ; $7786: $CD $02 $1F
    nop                                           ; $7789: $00

jr_00B_778A:
    ccf                                           ; $778A: $3F
    rla                                           ; $778B: $17
    ccf                                           ; $778C: $3F
    rrca                                          ; $778D: $0F
    rra                                           ; $778E: $1F
    nop                                           ; $778F: $00
    add b                                         ; $7790: $80
    nop                                           ; $7791: $00
    ret nz                                        ; $7792: $C0

jr_00B_7793:
    nop                                           ; $7793: $00
    ld a, b                                       ; $7794: $78
    add b                                         ; $7795: $80
    cp h                                          ; $7796: $BC
    ld e, b                                       ; $7797: $58
    db $FC                                        ; $7798: $FC
    jr c, jr_00B_7793                             ; $7799: $38 $F8

    ld [hl], b                                    ; $779B: $70
    ld hl, sp+$60                                 ; $779C: $F8 $60

jr_00B_779E:
    ldh [rP1], a                                  ; $779E: $E0 $00

jr_00B_77A0:
    nop                                           ; $77A0: $00
    nop                                           ; $77A1: $00
    nop                                           ; $77A2: $00
    nop                                           ; $77A3: $00
    ld bc, $0100                                  ; $77A4: $01 $00 $01
    nop                                           ; $77A7: $00
    ld bc, $0100                                  ; $77A8: $01 $00 $01
    nop                                           ; $77AB: $00
    ld bc, $0100                                  ; $77AC: $01 $00 $01
    nop                                           ; $77AF: $00
    ld [bc], a                                    ; $77B0: $02
    ld bc, $0205                                  ; $77B1: $01 $05 $02
    ld a, [bc]                                    ; $77B4: $0A
    dec b                                         ; $77B5: $05
    rlca                                          ; $77B6: $07
    nop                                           ; $77B7: $00
    nop                                           ; $77B8: $00
    nop                                           ; $77B9: $00
    nop                                           ; $77BA: $00
    nop                                           ; $77BB: $00
    nop                                           ; $77BC: $00
    nop                                           ; $77BD: $00
    nop                                           ; $77BE: $00
    nop                                           ; $77BF: $00
    rlca                                          ; $77C0: $07
    nop                                           ; $77C1: $00
    rrca                                          ; $77C2: $0F
    rlca                                          ; $77C3: $07
    rra                                           ; $77C4: $1F
    rrca                                          ; $77C5: $0F
    rra                                           ; $77C6: $1F
    rrca                                          ; $77C7: $0F
    rra                                           ; $77C8: $1F
    ld c, $1E                                     ; $77C9: $0E $1E
    dec b                                         ; $77CB: $05
    dec d                                         ; $77CC: $15
    ld a, [bc]                                    ; $77CD: $0A
    add hl, bc                                    ; $77CE: $09
    ld b, $F8                                     ; $77CF: $06 $F8
    nop                                           ; $77D1: $00
    db $FC                                        ; $77D2: $FC
    ld hl, sp-$02                                 ; $77D3: $F8 $FE
    cp h                                          ; $77D5: $BC
    cp $DC                                        ; $77D6: $FE $DC
    db $FC                                        ; $77D8: $FC
    adc b                                         ; $77D9: $88
    sbc h                                         ; $77DA: $9C
    ld l, b                                       ; $77DB: $68
    jr c, jr_00B_779E                             ; $77DC: $38 $C0

    jr nc, jr_00B_77A0                            ; $77DE: $30 $C0

    dec c                                         ; $77E0: $0D
    nop                                           ; $77E1: $00
    rra                                           ; $77E2: $1F
    dec c                                         ; $77E3: $0D
    ccf                                           ; $77E4: $3F
    rra                                           ; $77E5: $1F
    ccf                                           ; $77E6: $3F
    ld e, $3F                                     ; $77E7: $1E $3F
    ld e, $3F                                     ; $77E9: $1E $3F
    inc e                                         ; $77EB: $1C
    inc e                                         ; $77EC: $1C
    dec bc                                        ; $77ED: $0B
    ld a, [hl+]                                   ; $77EE: $2A
    dec d                                         ; $77EF: $15
    ldh [rP1], a                                  ; $77F0: $E0 $00
    ld hl, sp-$20                                 ; $77F2: $F8 $E0
    db $FC                                        ; $77F4: $FC
    ld hl, sp-$04                                 ; $77F5: $F8 $FC
    ld hl, sp-$04                                 ; $77F7: $F8 $FC
    ld hl, sp-$04                                 ; $77F9: $F8 $FC
    cp b                                          ; $77FB: $B8
    cp b                                          ; $77FC: $B8
    ld d, b                                       ; $77FD: $50
    ld d, h                                       ; $77FE: $54
    xor b                                         ; $77FF: $A8
    inc bc                                        ; $7800: $03
    nop                                           ; $7801: $00
    rlca                                          ; $7802: $07
    inc bc                                        ; $7803: $03
    rrca                                          ; $7804: $0F
    rlca                                          ; $7805: $07
    rra                                           ; $7806: $1F
    ld c, $1F                                     ; $7807: $0E $1F
    rrca                                          ; $7809: $0F
    rra                                           ; $780A: $1F
    rrca                                          ; $780B: $0F
    cpl                                           ; $780C: $2F
    rla                                           ; $780D: $17
    rra                                           ; $780E: $1F
    rlca                                          ; $780F: $07
    ld [hl], b                                    ; $7810: $70
    nop                                           ; $7811: $00
    ld hl, sp+$70                                 ; $7812: $F8 $70
    db $FC                                        ; $7814: $FC
    ld hl, sp-$02                                 ; $7815: $F8 $FE
    db $FC                                        ; $7817: $FC
    cp $FC                                        ; $7818: $FE $FC
    db $FC                                        ; $781A: $FC
    ld hl, sp-$06                                 ; $781B: $F8 $FA
    db $F4                                        ; $781D: $F4
    db $FC                                        ; $781E: $FC
    ldh a, [$03]                                  ; $781F: $F0 $03
    nop                                           ; $7821: $00
    rlca                                          ; $7822: $07
    inc bc                                        ; $7823: $03
    rrca                                          ; $7824: $0F
    rlca                                          ; $7825: $07
    rra                                           ; $7826: $1F
    dec c                                         ; $7827: $0D
    rra                                           ; $7828: $1F
    rrca                                          ; $7829: $0F
    rra                                           ; $782A: $1F
    rrca                                          ; $782B: $0F
    rra                                           ; $782C: $1F
    rrca                                          ; $782D: $0F
    rra                                           ; $782E: $1F
    rlca                                          ; $782F: $07
    ld hl, sp+$00                                 ; $7830: $F8 $00
    db $FC                                        ; $7832: $FC
    ld a, b                                       ; $7833: $78
    cp $FC                                        ; $7834: $FE $FC
    cp $FC                                        ; $7836: $FE $FC

Call_00B_7838:
    cp $FC                                        ; $7838: $FE $FC
    cp $E4                                        ; $783A: $FE $E4
    db $EC                                        ; $783C: $EC
    ret nc                                        ; $783D: $D0

    ret z                                         ; $783E: $C8

    or b                                          ; $783F: $B0
    inc bc                                        ; $7840: $03
    nop                                           ; $7841: $00
    rrca                                          ; $7842: $0F
    inc bc                                        ; $7843: $03

jr_00B_7844:
    rra                                           ; $7844: $1F
    rrca                                          ; $7845: $0F
    ccf                                           ; $7846: $3F
    rra                                           ; $7847: $1F
    ccf                                           ; $7848: $3F
    rra                                           ; $7849: $1F
    rra                                           ; $784A: $1F
    rrca                                          ; $784B: $0F
    rrca                                          ; $784C: $0F
    dec b                                         ; $784D: $05
    dec b                                         ; $784E: $05
    ld [bc], a                                    ; $784F: $02
    ld hl, sp+$00                                 ; $7850: $F8 $00
    db $FC                                        ; $7852: $FC
    ld hl, sp-$08                                 ; $7853: $F8 $F8
    ldh a, [$FC]                                  ; $7855: $F0 $FC
    ld hl, sp-$04                                 ; $7857: $F8 $FC
    sbc b                                         ; $7859: $98
    sbc h                                         ; $785A: $9C
    ld l, b                                       ; $785B: $68
    ld e, b                                       ; $785C: $58
    and b                                         ; $785D: $A0
    ld d, b                                       ; $785E: $50
    and b                                         ; $785F: $A0
    inc c                                         ; $7860: $0C
    inc bc                                        ; $7861: $03
    rra                                           ; $7862: $1F
    nop                                           ; $7863: $00
    ccf                                           ; $7864: $3F

jr_00B_7865:
    add hl, bc                                    ; $7865: $09
    ld e, a                                       ; $7866: $5F
    jr z, @+$61                                   ; $7867: $28 $5F

    jr nz, @+$31                                  ; $7869: $20 $2F

    jr @+$3D                                      ; $786B: $18 $3B

    inc e                                         ; $786D: $1C
    inc de                                        ; $786E: $13
    dec c                                         ; $786F: $0D
    db $10                                        ; $7870: $10
    ldh [$E0], a                                  ; $7871: $E0 $E0

jr_00B_7873:
    nop                                           ; $7873: $00
    ldh a, [$A0]                                  ; $7874: $F0 $A0
    ldh a, [$80]                                  ; $7876: $F0 $80
    ret nc                                        ; $7878: $D0

    jr nz, jr_00B_7873                            ; $7879: $20 $F8

    jr nz, jr_00B_7865                            ; $787B: $20 $E8

    db $10                                        ; $787D: $10
    ldh a, [$C0]                                  ; $787E: $F0 $C0
    ld e, b                                       ; $7880: $58
    and b                                         ; $7881: $A0
    jr nz, jr_00B_7844                            ; $7882: $20 $C0

    ld hl, sp+$20                                 ; $7884: $F8 $20
    db $F4                                        ; $7886: $F4
    sbc b                                         ; $7887: $98
    db $F4                                        ; $7888: $F4
    sbc b                                         ; $7889: $98
    db $FC                                        ; $788A: $FC

jr_00B_788B:
    ld [$18EC], sp                                ; $788B: $08 $EC $18
    db $E4                                        ; $788E: $E4
    ret c                                         ; $788F: $D8

    ldh a, [$E0]                                  ; $7890: $F0 $E0
    ld hl, sp+$10                                 ; $7892: $F8 $10
    db $FC                                        ; $7894: $FC
    jr nz, jr_00B_788B                            ; $7895: $20 $F4

    jr z, @-$0A                                   ; $7897: $28 $F4

jr_00B_7899:
    ld [$08FC], sp                                ; $7899: $08 $FC $08
    db $F4                                        ; $789C: $F4
    ld [$E0F8], sp                                ; $789D: $08 $F8 $E0
    rrca                                          ; $78A0: $0F
    inc bc                                        ; $78A1: $03
    rlca                                          ; $78A2: $07
    nop                                           ; $78A3: $00
    rrca                                          ; $78A4: $0F
    inc b                                         ; $78A5: $04
    rla                                           ; $78A6: $17
    ld [$0817], sp                                ; $78A7: $08 $17 $08
    rra                                           ; $78AA: $1F
    nop                                           ; $78AB: $00
    rrca                                          ; $78AC: $0F
    nop                                           ; $78AD: $00
    rrca                                          ; $78AE: $0F
    rlca                                          ; $78AF: $07
    sub b                                         ; $78B0: $90
    ld h, b                                       ; $78B1: $60
    ldh [rP1], a                                  ; $78B2: $E0 $00
    ldh a, [$C0]                                  ; $78B4: $F0 $C0
    or b                                          ; $78B6: $B0
    ret nz                                        ; $78B7: $C0

    or b                                          ; $78B8: $B0
    ret nz                                        ; $78B9: $C0

    ret z                                         ; $78BA: $C8

    jr nc, jr_00B_7899                            ; $78BB: $30 $DC

    ld a, b                                       ; $78BD: $78
    db $F4                                        ; $78BE: $F4
    sbc b                                         ; $78BF: $98
    ld a, [hl+]                                   ; $78C0: $2A
    dec d                                         ; $78C1: $15
    ld a, [de]                                    ; $78C2: $1A
    dec b                                         ; $78C3: $05
    inc c                                         ; $78C4: $0C
    inc bc                                        ; $78C5: $03
    rra                                           ; $78C6: $1F
    ld [$041F], sp                                ; $78C7: $08 $1F $04
    rla                                           ; $78CA: $17
    ld [$061D], sp                                ; $78CB: $08 $1D $06
    add hl, bc                                    ; $78CE: $09
    ld b, $54                                     ; $78CF: $06 $54
    xor b                                         ; $78D1: $A8
    ld e, b                                       ; $78D2: $58
    and b                                         ; $78D3: $A0

jr_00B_78D4:
    jr nc, @-$3E                                  ; $78D4: $30 $C0

    ldh a, [rNR41]                                ; $78D6: $F0 $20

jr_00B_78D8:
    ld hl, sp-$60                                 ; $78D8: $F8 $A0
    add sp, -$70                                  ; $78DA: $E8 $90
    add sp, $10                                   ; $78DC: $E8 $10
    ld hl, sp-$30                                 ; $78DE: $F8 $D0
    rra                                           ; $78E0: $1F
    rlca                                          ; $78E1: $07
    rlca                                          ; $78E2: $07
    inc bc                                        ; $78E3: $03
    rrca                                          ; $78E4: $0F
    inc b                                         ; $78E5: $04
    rra                                           ; $78E6: $1F
    ld [bc], a                                    ; $78E7: $02
    rla                                           ; $78E8: $17
    ld a, [bc]                                    ; $78E9: $0A
    rla                                           ; $78EA: $17
    ld [$081F], sp                                ; $78EB: $08 $1F $08
    rla                                           ; $78EE: $17
    dec bc                                        ; $78EF: $0B
    db $FC                                        ; $78F0: $FC
    ldh a, [$F0]                                  ; $78F1: $F0 $F0
    ldh [$F8], a                                  ; $78F3: $E0 $F8
    nop                                           ; $78F5: $00
    db $FC                                        ; $78F6: $FC
    db $10                                        ; $78F7: $10
    db $F4                                        ; $78F8: $F4
    ld [$08F4], sp                                ; $78F9: $08 $F4 $08
    ld hl, sp+$00                                 ; $78FC: $F8 $00
    ldh a, [$E0]                                  ; $78FE: $F0 $E0
    rrca                                          ; $7900: $0F
    nop                                           ; $7901: $00
    ld [$1007], sp                                ; $7902: $08 $07 $10
    rrca                                          ; $7905: $0F
    ld de, $2F0E                                  ; $7906: $11 $0E $2F
    db $10                                        ; $7909: $10
    ccf                                           ; $790A: $3F
    ld b, $3F                                     ; $790B: $06 $3F
    ld e, $1F                                     ; $790D: $1E $1F
    nop                                           ; $790F: $00
    ldh [rP1], a                                  ; $7910: $E0 $00
    jr nz, jr_00B_78D4                            ; $7912: $20 $C0

    sub b                                         ; $7914: $90
    ld h, b                                       ; $7915: $60
    jr nc, jr_00B_78D8                            ; $7916: $30 $C0

    ld hl, sp+$30                                 ; $7918: $F8 $30
    ld hl, sp-$10                                 ; $791A: $F8 $F0
    ldh a, [rP1]                                  ; $791C: $F0 $00
    nop                                           ; $791E: $00
    nop                                           ; $791F: $00
    ld hl, sp+$00                                 ; $7920: $F8 $00
    db $10                                        ; $7922: $10
    ldh [$88], a                                  ; $7923: $E0 $88
    ld [hl], b                                    ; $7925: $70
    cp b                                          ; $7926: $B8

jr_00B_7927:
    ld b, b                                       ; $7927: $40
    ld hl, sp+$30                                 ; $7928: $F8 $30
    db $FC                                        ; $792A: $FC
    ld a, b                                       ; $792B: $78
    db $FC                                        ; $792C: $FC
    jr c, jr_00B_7927                             ; $792D: $38 $F8

    nop                                           ; $792F: $00
    ldh a, [rP1]                                  ; $7930: $F0 $00
    sub b                                         ; $7932: $90
    ld h, b                                       ; $7933: $60

jr_00B_7934:
    sbc b                                         ; $7934: $98
    ld h, b                                       ; $7935: $60

jr_00B_7936:
    adc b                                         ; $7936: $88
    ld [hl], b                                    ; $7937: $70
    adc b                                         ; $7938: $88
    ld [hl], b                                    ; $7939: $70
    db $FC                                        ; $793A: $FC
    ld [$70FC], sp                                ; $793B: $08 $FC $70
    ld hl, sp+$00                                 ; $793E: $F8 $00
    rlca                                          ; $7940: $07
    nop                                           ; $7941: $00
    inc b                                         ; $7942: $04
    inc bc                                        ; $7943: $03
    add hl, bc                                    ; $7944: $09
    ld b, $08                                     ; $7945: $06 $08
    rlca                                          ; $7947: $07
    ld c, $01                                     ; $7948: $0E $01
    rrca                                          ; $794A: $0F
    ld b, $0F                                     ; $794B: $06 $0F
    nop                                           ; $794D: $00
    nop                                           ; $794E: $00
    nop                                           ; $794F: $00
    sbc h                                         ; $7950: $9C
    ld h, b                                       ; $7951: $60
    db $10                                        ; $7952: $10
    ldh [$08], a                                  ; $7953: $E0 $08
    ldh a, [$88]                                  ; $7955: $F0 $88
    ld [hl], b                                    ; $7957: $70
    sbc b                                         ; $7958: $98
    ld h, b                                       ; $7959: $60
    db $FC                                        ; $795A: $FC
    ld [$70FC], sp                                ; $795B: $08 $FC $70
    ld hl, sp+$00                                 ; $795E: $F8 $00
    rrca                                          ; $7960: $0F
    nop                                           ; $7961: $00
    inc b                                         ; $7962: $04
    inc bc                                        ; $7963: $03
    ld [$0A07], sp                                ; $7964: $08 $07 $0A
    dec b                                         ; $7967: $05
    add hl, bc                                    ; $7968: $09
    ld b, $07                                     ; $7969: $06 $07
    nop                                           ; $796B: $00
    rlca                                          ; $796C: $07
    ld [bc], a                                    ; $796D: $02
    inc bc                                        ; $796E: $03
    nop                                           ; $796F: $00
    ld hl, sp+$00                                 ; $7970: $F8 $00
    jr nc, jr_00B_7934                            ; $7972: $30 $C0

    jr nz, jr_00B_7936                            ; $7974: $20 $C0

    ld [hl], b                                    ; $7976: $70
    add b                                         ; $7977: $80
    ldh a, [$60]                                  ; $7978: $F0 $60
    ldh a, [$E0]                                  ; $797A: $F0 $E0
    ldh [$C0], a                                  ; $797C: $E0 $C0
    ldh [rP1], a                                  ; $797E: $E0 $00
    rrca                                          ; $7980: $0F
    nop                                           ; $7981: $00
    inc b                                         ; $7982: $04
    inc bc                                        ; $7983: $03
    add hl, bc                                    ; $7984: $09
    ld b, $08                                     ; $7985: $06 $08
    rlca                                          ; $7987: $07
    ld [$0707], sp                                ; $7988: $08 $07 $07
    nop                                           ; $798B: $00
    rlca                                          ; $798C: $07
    inc bc                                        ; $798D: $03
    rlca                                          ; $798E: $07
    nop                                           ; $798F: $00
    ldh a, [rP1]                                  ; $7990: $F0 $00
    ld [$08F0], sp                                ; $7992: $08 $F0 $08
    ldh a, [$C8]                                  ; $7995: $F0 $C8
    jr nc, @-$0E                                  ; $7997: $30 $F0

    nop                                           ; $7999: $00
    ldh a, [$60]                                  ; $799A: $F0 $60
    ldh a, [$60]                                  ; $799C: $F0 $60
    ldh a, [rP1]                                  ; $799E: $F0 $00
    dec b                                         ; $79A0: $05
    ld [bc], a                                    ; $79A1: $02
    ld [bc], a                                    ; $79A2: $02
    ld bc, $0007                                  ; $79A3: $01 $07 $00
    rrca                                          ; $79A6: $0F
    ld bc, $030E                                  ; $79A7: $01 $0E $03
    rra                                           ; $79AA: $1F
    nop                                           ; $79AB: $00
    cpl                                           ; $79AC: $2F
    db $10                                        ; $79AD: $10
    cpl                                           ; $79AE: $2F
    rla                                           ; $79AF: $17
    ld d, b                                       ; $79B0: $50
    and b                                         ; $79B1: $A0
    db $10                                        ; $79B2: $10
    ldh [$E0], a                                  ; $79B3: $E0 $E0
    nop                                           ; $79B5: $00
    ret nz                                        ; $79B6: $C0

    add b                                         ; $79B7: $80
    ret nz                                        ; $79B8: $C0

    nop                                           ; $79B9: $00
    ld h, b                                       ; $79BA: $60
    ret nz                                        ; $79BB: $C0

    ret nc                                        ; $79BC: $D0

    ldh [$90], a                                  ; $79BD: $E0 $90

jr_00B_79BF:
    ld h, b                                       ; $79BF: $60
    ld hl, $7E1E                                  ; $79C0: $21 $1E $7E
    nop                                           ; $79C3: $00
    db $FC                                        ; $79C4: $FC
    jr nc, @-$20                                  ; $79C5: $30 $DE

    ld [hl], b                                    ; $79C7: $70
    sbc $20                                       ; $79C8: $DE $20
    sbc $30                                       ; $79CA: $DE $30
    or $38                                        ; $79CC: $F6 $38
    ld h, [hl]                                    ; $79CE: $66
    ld e, h                                       ; $79CF: $5C
    dec b                                         ; $79D0: $05
    ld [bc], a                                    ; $79D1: $02
    ld [bc], a                                    ; $79D2: $02
    ld bc, $0007                                  ; $79D3: $01 $07 $00
    rrca                                          ; $79D6: $0F
    ld [bc], a                                    ; $79D7: $02
    dec c                                         ; $79D8: $0D
    inc bc                                        ; $79D9: $03
    dec de                                        ; $79DA: $1B
    dec c                                         ; $79DB: $0D
    cpl                                           ; $79DC: $2F
    inc e                                         ; $79DD: $1C
    daa                                           ; $79DE: $27
    dec de                                        ; $79DF: $1B
    ld d, b                                       ; $79E0: $50
    and b                                         ; $79E1: $A0
    db $10                                        ; $79E2: $10
    ldh [$E0], a                                  ; $79E3: $E0 $E0
    nop                                           ; $79E5: $00

jr_00B_79E6:
    ret nz                                        ; $79E6: $C0

    nop                                           ; $79E7: $00
    ret nz                                        ; $79E8: $C0

    nop                                           ; $79E9: $00
    ldh [rP1], a                                  ; $79EA: $E0 $00
    ret nc                                        ; $79EC: $D0

    jr nz, jr_00B_79BF                            ; $79ED: $20 $D0

    and b                                         ; $79EF: $A0
    rra                                           ; $79F0: $1F
    nop                                           ; $79F1: $00
    ld [$1007], sp                                ; $79F2: $08 $07 $10
    rrca                                          ; $79F5: $0F
    jr nz, jr_00B_7A17                            ; $79F6: $20 $1F

    ld [hl], e                                    ; $79F8: $73
    inc l                                         ; $79F9: $2C
    ld a, a                                       ; $79FA: $7F
    ld [hl-], a                                   ; $79FB: $32
    ld a, a                                       ; $79FC: $7F
    ld e, $7F                                     ; $79FD: $1E $7F
    nop                                           ; $79FF: $00
    ldh [rP1], a                                  ; $7A00: $E0 $00
    ld h, b                                       ; $7A02: $60
    add b                                         ; $7A03: $80
    ld a, b                                       ; $7A04: $78
    add b                                         ; $7A05: $80

jr_00B_7A06:
    db $FC                                        ; $7A06: $FC
    jr jr_00B_7A85                                ; $7A07: $18 $7C

    cp b                                          ; $7A09: $B8
    ld a, b                                       ; $7A0A: $78
    or b                                          ; $7A0B: $B0
    ld hl, sp+$40                                 ; $7A0C: $F8 $40
    ldh [rP1], a                                  ; $7A0E: $E0 $00
    rlca                                          ; $7A10: $07
    nop                                           ; $7A11: $00
    ld [$1007], sp                                ; $7A12: $08 $07 $10
    rrca                                          ; $7A15: $0F
    db $10                                        ; $7A16: $10

jr_00B_7A17:
    rrca                                          ; $7A17: $0F
    cpl                                           ; $7A18: $2F
    db $10                                        ; $7A19: $10
    ccf                                           ; $7A1A: $3F
    rlca                                          ; $7A1B: $07
    ccf                                           ; $7A1C: $3F
    rrca                                          ; $7A1D: $0F
    rra                                           ; $7A1E: $1F
    nop                                           ; $7A1F: $00
    ldh [rP1], a                                  ; $7A20: $E0 $00
    jr nz, @-$3E                                  ; $7A22: $20 $C0

    jr nz, jr_00B_79E6                            ; $7A24: $20 $C0

    ld h, b                                       ; $7A26: $60
    add b                                         ; $7A27: $80
    ldh a, [rNR41]                                ; $7A28: $F0 $20
    ldh a, [$A0]                                  ; $7A2A: $F0 $A0
    ldh a, [$80]                                  ; $7A2C: $F0 $80
    ret nz                                        ; $7A2E: $C0

    nop                                           ; $7A2F: $00
    rra                                           ; $7A30: $1F
    nop                                           ; $7A31: $00
    ld [$1007], sp                                ; $7A32: $08 $07 $10
    rrca                                          ; $7A35: $0F
    inc [hl]                                      ; $7A36: $34
    dec bc                                        ; $7A37: $0B
    ld a, [hl]                                    ; $7A38: $7E
    ld hl, $3C7F                                  ; $7A39: $21 $7F $3C
    ld a, a                                       ; $7A3C: $7F
    ld e, $7F                                     ; $7A3D: $1E $7F
    nop                                           ; $7A3F: $00
    ldh [rP1], a                                  ; $7A40: $E0 $00
    ld b, b                                       ; $7A42: $40
    add b                                         ; $7A43: $80
    jr c, jr_00B_7A06                             ; $7A44: $38 $C0

    inc a                                         ; $7A46: $3C
    ret c                                         ; $7A47: $D8

    ld a, h                                       ; $7A48: $7C
    cp b                                          ; $7A49: $B8
    ld a, b                                       ; $7A4A: $78
    or b                                          ; $7A4B: $B0
    ld hl, sp+$40                                 ; $7A4C: $F8 $40
    ldh [rP1], a                                  ; $7A4E: $E0 $00
    rrca                                          ; $7A50: $0F

jr_00B_7A51:
    nop                                           ; $7A51: $00
    rra                                           ; $7A52: $1F
    rrca                                          ; $7A53: $0F
    ccf                                           ; $7A54: $3F
    rra                                           ; $7A55: $1F
    ld a, a                                       ; $7A56: $7F
    jr jr_00B_7A51                                ; $7A57: $18 $F8

    ld h, a                                       ; $7A59: $67
    ld a, h                                       ; $7A5A: $7C
    dec sp                                        ; $7A5B: $3B
    ld a, [hl]                                    ; $7A5C: $7E
    dec e                                         ; $7A5D: $1D
    ld a, h                                       ; $7A5E: $7C
    dec bc                                        ; $7A5F: $0B
    nop                                           ; $7A60: $00
    nop                                           ; $7A61: $00
    add b                                         ; $7A62: $80
    nop                                           ; $7A63: $00
    add b                                         ; $7A64: $80
    nop                                           ; $7A65: $00
    db $E4                                        ; $7A66: $E4
    nop                                           ; $7A67: $00
    ld e, $E4                                     ; $7A68: $1E $E4
    ld e, $EC                                     ; $7A6A: $1E $EC
    inc e                                         ; $7A6C: $1C
    add sp, $1C                                   ; $7A6D: $E8 $1C
    ldh [rP1], a                                  ; $7A6F: $E0 $00
    nop                                           ; $7A71: $00
    inc bc                                        ; $7A72: $03
    nop                                           ; $7A73: $00
    rlca                                          ; $7A74: $07
    inc bc                                        ; $7A75: $03
    ld b, a                                       ; $7A76: $47
    nop                                           ; $7A77: $00
    add sp, $47                                   ; $7A78: $E8 $47
    ldh a, [$6F]                                  ; $7A7A: $F0 $6F
    ld hl, sp+$77                                 ; $7A7C: $F8 $77
    ld a, b                                       ; $7A7E: $78
    scf                                           ; $7A7F: $37
    nop                                           ; $7A80: $00
    nop                                           ; $7A81: $00
    inc bc                                        ; $7A82: $03
    nop                                           ; $7A83: $00
    rlca                                          ; $7A84: $07

jr_00B_7A85:
    inc bc                                        ; $7A85: $03
    ld b, a                                       ; $7A86: $47
    inc bc                                        ; $7A87: $03
    rst $28                                       ; $7A88: $EF
    ld b, e                                       ; $7A89: $43
    rst $30                                       ; $7A8A: $F7
    ld l, e                                       ; $7A8B: $6B
    di                                            ; $7A8C: $F3
    ld l, l                                       ; $7A8D: $6D
    ld [hl], e                                    ; $7A8E: $73
    dec l                                         ; $7A8F: $2D
    nop                                           ; $7A90: $00
    nop                                           ; $7A91: $00
    rrca                                          ; $7A92: $0F
    nop                                           ; $7A93: $00
    rra                                           ; $7A94: $1F
    ld c, $3F                                     ; $7A95: $0E $3F
    ld e, $3F                                     ; $7A97: $1E $3F
    inc e                                         ; $7A99: $1C
    ld a, $1D                                     ; $7A9A: $3E $1D
    inc a                                         ; $7A9C: $3C
    dec de                                        ; $7A9D: $1B
    ld a, b                                       ; $7A9E: $78
    daa                                           ; $7A9F: $27
    nop                                           ; $7AA0: $00
    nop                                           ; $7AA1: $00
    nop                                           ; $7AA2: $00
    nop                                           ; $7AA3: $00
    add h                                         ; $7AA4: $84
    nop                                           ; $7AA5: $00

jr_00B_7AA6:
    xor $04                                       ; $7AA6: $EE $04
    ld e, $EC                                     ; $7AA8: $1E $EC
    ld a, $DC                                     ; $7AAA: $3E $DC
    inc a                                         ; $7AAC: $3C
    ret c                                         ; $7AAD: $D8

    ld a, b                                       ; $7AAE: $78
    add b                                         ; $7AAF: $80
    nop                                           ; $7AB0: $00
    nop                                           ; $7AB1: $00
    nop                                           ; $7AB2: $00
    nop                                           ; $7AB3: $00
    nop                                           ; $7AB4: $00
    nop                                           ; $7AB5: $00
    nop                                           ; $7AB6: $00
    nop                                           ; $7AB7: $00
    ld b, a                                       ; $7AB8: $47
    nop                                           ; $7AB9: $00
    add sp, $47                                   ; $7ABA: $E8 $47
    ldh a, [$6F]                                  ; $7ABC: $F0 $6F
    ld hl, sp+$77                                 ; $7ABE: $F8 $77
    nop                                           ; $7AC0: $00
    nop                                           ; $7AC1: $00
    nop                                           ; $7AC2: $00
    nop                                           ; $7AC3: $00
    nop                                           ; $7AC4: $00
    nop                                           ; $7AC5: $00
    nop                                           ; $7AC6: $00
    nop                                           ; $7AC7: $00
    ld b, a                                       ; $7AC8: $47
    nop                                           ; $7AC9: $00
    add sp, $47                                   ; $7ACA: $E8 $47
    ldh a, [$6F]                                  ; $7ACC: $F0 $6F
    ldh a, [$6F]                                  ; $7ACE: $F0 $6F
    adc b                                         ; $7AD0: $88
    ld [hl], a                                    ; $7AD1: $77
    ld b, c                                       ; $7AD2: $41
    ld a, $39                                     ; $7AD3: $3E $39
    ld b, $1C                                     ; $7AD5: $06 $1C
    inc bc                                        ; $7AD7: $03
    ccf                                           ; $7AD8: $3F
    nop                                           ; $7AD9: $00
    ld a, a                                       ; $7ADA: $7F
    nop                                           ; $7ADB: $00
    ld a, c                                       ; $7ADC: $79
    ld b, $79                                     ; $7ADD: $06 $79
    ld b, $12                                     ; $7ADF: $06 $12
    db $EC                                        ; $7AE1: $EC
    inc [hl]                                      ; $7AE2: $34
    ret z                                         ; $7AE3: $C8

    jr c, jr_00B_7AA6                             ; $7AE4: $38 $C0

    db $10                                        ; $7AE6: $10
    ldh [$E0], a                                  ; $7AE7: $E0 $E0
    nop                                           ; $7AE9: $00
    ldh a, [rP1]                                  ; $7AEA: $F0 $00
    ret nc                                        ; $7AEC: $D0

    jr nz, @-$2E                                  ; $7AED: $20 $D0

    jr nz, jr_00B_7B61                            ; $7AEF: $20 $70

    rrca                                          ; $7AF1: $0F
    adc d                                         ; $7AF2: $8A
    ld [hl], l                                    ; $7AF3: $75
    ld c, d                                       ; $7AF4: $4A
    dec [hl]                                      ; $7AF5: $35
    inc a                                         ; $7AF6: $3C
    inc bc                                        ; $7AF7: $03
    rrca                                          ; $7AF8: $0F
    nop                                           ; $7AF9: $00
    rra                                           ; $7AFA: $1F
    nop                                           ; $7AFB: $00
    inc e                                         ; $7AFC: $1C
    inc bc                                        ; $7AFD: $03
    inc e                                         ; $7AFE: $1C
    inc bc                                        ; $7AFF: $03
    ld c, $F0                                     ; $7B00: $0E $F0
    ld d, c                                       ; $7B02: $51
    xor [hl]                                      ; $7B03: $AE
    ld d, d                                       ; $7B04: $52
    xor h                                         ; $7B05: $AC
    inc a                                         ; $7B06: $3C
    ret nz                                        ; $7B07: $C0

    ldh a, [rP1]                                  ; $7B08: $F0 $00
    db $FC                                        ; $7B0A: $FC
    nop                                           ; $7B0B: $00
    call z, $CC30                                 ; $7B0C: $CC $30 $CC
    jr nc, jr_00B_7B82                            ; $7B0F: $30 $71

    ld c, $88                                     ; $7B11: $0E $88
    ld [hl], a                                    ; $7B13: $77
    ld c, a                                       ; $7B14: $4F
    jr nc, jr_00B_7B56                            ; $7B15: $30 $3F

    nop                                           ; $7B17: $00
    rra                                           ; $7B18: $1F
    nop                                           ; $7B19: $00
    rra                                           ; $7B1A: $1F
    nop                                           ; $7B1B: $00
    rra                                           ; $7B1C: $1F
    nop                                           ; $7B1D: $00
    rrca                                          ; $7B1E: $0F
    nop                                           ; $7B1F: $00
    jr nc, jr_00B_7B31                            ; $7B20: $30 $0F

    jr jr_00B_7B2B                                ; $7B22: $18 $07

    rrca                                          ; $7B24: $0F
    nop                                           ; $7B25: $00
    rrca                                          ; $7B26: $0F
    nop                                           ; $7B27: $00
    rra                                           ; $7B28: $1F
    nop                                           ; $7B29: $00
    rra                                           ; $7B2A: $1F

jr_00B_7B2B:
    nop                                           ; $7B2B: $00
    rrca                                          ; $7B2C: $0F
    nop                                           ; $7B2D: $00
    rrca                                          ; $7B2E: $0F
    nop                                           ; $7B2F: $00
    adc b                                         ; $7B30: $88

jr_00B_7B31:
    ld [hl], b                                    ; $7B31: $70
    ld c, b                                       ; $7B32: $48
    or b                                          ; $7B33: $B0
    db $10                                        ; $7B34: $10
    ldh [$E0], a                                  ; $7B35: $E0 $E0
    nop                                           ; $7B37: $00
    ldh a, [rP1]                                  ; $7B38: $F0 $00
    ld hl, sp+$00                                 ; $7B3A: $F8 $00
    db $F4                                        ; $7B3C: $F4
    ld [$08F4], sp                                ; $7B3D: $08 $F4 $08
    ld a, b                                       ; $7B40: $78
    scf                                           ; $7B41: $37
    ld [hl], b                                    ; $7B42: $70
    rrca                                          ; $7B43: $0F
    adc d                                         ; $7B44: $8A
    ld [hl], l                                    ; $7B45: $75
    ld c, d                                       ; $7B46: $4A
    dec [hl]                                      ; $7B47: $35
    inc a                                         ; $7B48: $3C
    inc bc                                        ; $7B49: $03
    rra                                           ; $7B4A: $1F
    nop                                           ; $7B4B: $00
    inc e                                         ; $7B4C: $1C
    inc bc                                        ; $7B4D: $03
    inc e                                         ; $7B4E: $1C
    inc bc                                        ; $7B4F: $03
    ld e, $EC                                     ; $7B50: $1E $EC
    ld c, $F0                                     ; $7B52: $0E $F0
    ld d, c                                       ; $7B54: $51
    xor [hl]                                      ; $7B55: $AE

jr_00B_7B56:
    ld d, d                                       ; $7B56: $52
    xor h                                         ; $7B57: $AC
    inc a                                         ; $7B58: $3C
    ret nz                                        ; $7B59: $C0

    ld hl, sp+$00                                 ; $7B5A: $F8 $00
    ld hl, sp+$00                                 ; $7B5C: $F8 $00
    add sp, $10                                   ; $7B5E: $E8 $10
    ld [hl], e                                    ; $7B60: $73

jr_00B_7B61:
    dec l                                         ; $7B61: $2D
    ld [hl], c                                    ; $7B62: $71
    ld c, $88                                     ; $7B63: $0E $88
    ld [hl], a                                    ; $7B65: $77
    ld c, a                                       ; $7B66: $4F
    jr nc, jr_00B_7BA8                            ; $7B67: $30 $3F

    nop                                           ; $7B69: $00
    rra                                           ; $7B6A: $1F
    nop                                           ; $7B6B: $00
    rra                                           ; $7B6C: $1F
    nop                                           ; $7B6D: $00
    rra                                           ; $7B6E: $1F
    nop                                           ; $7B6F: $00
    adc $B4                                       ; $7B70: $CE $B4
    adc $B0                                       ; $7B72: $CE $B0
    sub c                                         ; $7B74: $91
    ld l, [hl]                                    ; $7B75: $6E
    ld a, [c]                                     ; $7B76: $F2
    inc c                                         ; $7B77: $0C
    db $FC                                        ; $7B78: $FC
    nop                                           ; $7B79: $00
    db $FC                                        ; $7B7A: $FC
    nop                                           ; $7B7B: $00
    db $FC                                        ; $7B7C: $FC
    nop                                           ; $7B7D: $00
    db $FC                                        ; $7B7E: $FC
    nop                                           ; $7B7F: $00
    ccf                                           ; $7B80: $3F
    nop                                           ; $7B81: $00

jr_00B_7B82:
    ccf                                           ; $7B82: $3F
    nop                                           ; $7B83: $00
    ld a, a                                       ; $7B84: $7F
    nop                                           ; $7B85: $00
    ld a, a                                       ; $7B86: $7F
    nop                                           ; $7B87: $00
    ld a, a                                       ; $7B88: $7F
    nop                                           ; $7B89: $00
    ld a, a                                       ; $7B8A: $7F
    ld b, $3F                                     ; $7B8B: $06 $3F
    ld e, $1F                                     ; $7B8D: $1E $1F
    nop                                           ; $7B8F: $00
    ldh [rP1], a                                  ; $7B90: $E0 $00
    ldh [rP1], a                                  ; $7B92: $E0 $00
    ldh a, [rP1]                                  ; $7B94: $F0 $00
    ldh a, [rP1]                                  ; $7B96: $F0 $00
    ld hl, sp+$30                                 ; $7B98: $F8 $30
    ld hl, sp-$10                                 ; $7B9A: $F8 $F0
    ldh a, [rP1]                                  ; $7B9C: $F0 $00
    nop                                           ; $7B9E: $00
    nop                                           ; $7B9F: $00
    ld hl, sp+$00                                 ; $7BA0: $F8 $00
    ld hl, sp+$00                                 ; $7BA2: $F8 $00
    ld hl, sp+$00                                 ; $7BA4: $F8 $00
    db $FC                                        ; $7BA6: $FC

jr_00B_7BA7:
    nop                                           ; $7BA7: $00

jr_00B_7BA8:
    db $FC                                        ; $7BA8: $FC
    jr nc, jr_00B_7BA7                            ; $7BA9: $30 $FC

    ld a, b                                       ; $7BAB: $78
    db $FC                                        ; $7BAC: $FC
    jr c, jr_00B_7BA7                             ; $7BAD: $38 $F8

    nop                                           ; $7BAF: $00
    ld hl, sp+$00                                 ; $7BB0: $F8 $00
    ld hl, sp+$00                                 ; $7BB2: $F8 $00
    db $FC                                        ; $7BB4: $FC
    nop                                           ; $7BB5: $00
    db $FC                                        ; $7BB6: $FC
    nop                                           ; $7BB7: $00
    db $FC                                        ; $7BB8: $FC
    nop                                           ; $7BB9: $00
    db $FC                                        ; $7BBA: $FC
    ld [$70FC], sp                                ; $7BBB: $08 $FC $70
    ld hl, sp+$00                                 ; $7BBE: $F8 $00
    rra                                           ; $7BC0: $1F
    nop                                           ; $7BC1: $00
    rra                                           ; $7BC2: $1F
    nop                                           ; $7BC3: $00
    rra                                           ; $7BC4: $1F
    nop                                           ; $7BC5: $00
    rra                                           ; $7BC6: $1F
    nop                                           ; $7BC7: $00
    rra                                           ; $7BC8: $1F
    nop                                           ; $7BC9: $00
    rrca                                          ; $7BCA: $0F
    ld b, $0F                                     ; $7BCB: $06 $0F
    nop                                           ; $7BCD: $00
    nop                                           ; $7BCE: $00
    nop                                           ; $7BCF: $00
    ld hl, sp+$00                                 ; $7BD0: $F8 $00
    ld hl, sp+$00                                 ; $7BD2: $F8 $00
    ld hl, sp+$00                                 ; $7BD4: $F8 $00
    ld hl, sp+$00                                 ; $7BD6: $F8 $00
    ld hl, sp+$00                                 ; $7BD8: $F8 $00
    db $FC                                        ; $7BDA: $FC
    ld [$70FC], sp                                ; $7BDB: $08 $FC $70
    ld hl, sp+$00                                 ; $7BDE: $F8 $00
    rra                                           ; $7BE0: $1F
    nop                                           ; $7BE1: $00
    rrca                                          ; $7BE2: $0F
    nop                                           ; $7BE3: $00
    rrca                                          ; $7BE4: $0F
    nop                                           ; $7BE5: $00
    rrca                                          ; $7BE6: $0F
    nop                                           ; $7BE7: $00
    rrca                                          ; $7BE8: $0F
    nop                                           ; $7BE9: $00
    rlca                                          ; $7BEA: $07
    nop                                           ; $7BEB: $00
    rlca                                          ; $7BEC: $07
    ld [bc], a                                    ; $7BED: $02
    inc bc                                        ; $7BEE: $03
    nop                                           ; $7BEF: $00
    ld hl, sp+$00                                 ; $7BF0: $F8 $00
    ld hl, sp+$00                                 ; $7BF2: $F8 $00
    ld hl, sp+$00                                 ; $7BF4: $F8 $00
    ld hl, sp+$00                                 ; $7BF6: $F8 $00
    ld hl, sp+$60                                 ; $7BF8: $F8 $60
    ldh a, [$E0]                                  ; $7BFA: $F0 $E0
    ldh [$C0], a                                  ; $7BFC: $E0 $C0
    ldh [rP1], a                                  ; $7BFE: $E0 $00
    rst $38                                       ; $7C00: $FF
    nop                                           ; $7C01: $00
    rst $38                                       ; $7C02: $FF
    nop                                           ; $7C03: $00
    rst $38                                       ; $7C04: $FF
    nop                                           ; $7C05: $00
    rst $38                                       ; $7C06: $FF
    nop                                           ; $7C07: $00
    rst $38                                       ; $7C08: $FF
    nop                                           ; $7C09: $00
    ld a, a                                       ; $7C0A: $7F
    ld b, $7F                                     ; $7C0B: $06 $7F
    ld [hl], $7F                                  ; $7C0D: $36 $7F
    nop                                           ; $7C0F: $00
    nop                                           ; $7C10: $00
    nop                                           ; $7C11: $00
    nop                                           ; $7C12: $00
    nop                                           ; $7C13: $00
    inc c                                         ; $7C14: $0C
    inc c                                         ; $7C15: $0C
    inc c                                         ; $7C16: $0C
    inc c                                         ; $7C17: $0C
    nop                                           ; $7C18: $00
    nop                                           ; $7C19: $00
    nop                                           ; $7C1A: $00
    nop                                           ; $7C1B: $00
    nop                                           ; $7C1C: $00
    nop                                           ; $7C1D: $00
    nop                                           ; $7C1E: $00
    nop                                           ; $7C1F: $00
    inc e                                         ; $7C20: $1C
    nop                                           ; $7C21: $00
    ld a, $1C                                     ; $7C22: $3E $1C
    ld a, a                                       ; $7C24: $7F
    jr c, jr_00B_7CA6                             ; $7C25: $38 $7F

    inc [hl]                                      ; $7C27: $34
    ld a, a                                       ; $7C28: $7F
    inc sp                                        ; $7C29: $33
    ld a, e                                       ; $7C2A: $7B
    dec h                                         ; $7C2B: $25
    rst $38                                       ; $7C2C: $FF
    ld h, b                                       ; $7C2D: $60
    ld l, b                                       ; $7C2E: $68
    rlca                                          ; $7C2F: $07
    nop                                           ; $7C30: $00
    nop                                           ; $7C31: $00
    nop                                           ; $7C32: $00
    nop                                           ; $7C33: $00
    ldh a, [rP1]                                  ; $7C34: $F0 $00
    adc b                                         ; $7C36: $88
    ld [hl], b                                    ; $7C37: $70
    call nz, $E4B8                                ; $7C38: $C4 $B8 $E4
    ret c                                         ; $7C3B: $D8

    db $E4                                        ; $7C3C: $E4
    ret c                                         ; $7C3D: $D8

    call nz, Call_00B_6838                        ; $7C3E: $C4 $38 $68
    rlca                                          ; $7C41: $07
    ld b, $01                                     ; $7C42: $06 $01
    inc bc                                        ; $7C44: $03
    nop                                           ; $7C45: $00
    ld bc, $0300                                  ; $7C46: $01 $00 $03
    nop                                           ; $7C49: $00
    rlca                                          ; $7C4A: $07
    nop                                           ; $7C4B: $00
    dec bc                                        ; $7C4C: $0B
    inc b                                         ; $7C4D: $04
    dec bc                                        ; $7C4E: $0B
    inc b                                         ; $7C4F: $04
    call nz, Call_00B_5438                        ; $7C50: $C4 $38 $54
    xor b                                         ; $7C53: $A8
    inc d                                         ; $7C54: $14
    add sp, -$7C                                  ; $7C55: $E8 $84
    ld a, b                                       ; $7C57: $78
    ldh a, [rP1]                                  ; $7C58: $F0 $00
    ld hl, sp+$00                                 ; $7C5A: $F8 $00
    db $E4                                        ; $7C5C: $E4
    jr @-$1A                                      ; $7C5D: $18 $E4

    jr jr_00B_7C67                                ; $7C5F: $18 $06

    ld bc, $0003                                  ; $7C61: $01 $03 $00
    ld bc, $0300                                  ; $7C64: $01 $00 $03

jr_00B_7C67:
    nop                                           ; $7C67: $00
    inc bc                                        ; $7C68: $03
    nop                                           ; $7C69: $00
    inc bc                                        ; $7C6A: $03
    nop                                           ; $7C6B: $00
    inc bc                                        ; $7C6C: $03
    nop                                           ; $7C6D: $00
    inc bc                                        ; $7C6E: $03
    nop                                           ; $7C6F: $00
    ld d, h                                       ; $7C70: $54
    xor b                                         ; $7C71: $A8
    inc d                                         ; $7C72: $14
    add sp, -$7C                                  ; $7C73: $E8 $84
    ld a, b                                       ; $7C75: $78
    ld hl, sp+$00                                 ; $7C76: $F8 $00
    ld hl, sp+$00                                 ; $7C78: $F8 $00
    ld hl, sp+$00                                 ; $7C7A: $F8 $00
    sbc b                                         ; $7C7C: $98
    ld h, b                                       ; $7C7D: $60
    sbc b                                         ; $7C7E: $98
    ld h, b                                       ; $7C7F: $60
    ld l, b                                       ; $7C80: $68
    rlca                                          ; $7C81: $07
    ld b, $01                                     ; $7C82: $06 $01
    inc bc                                        ; $7C84: $03
    nop                                           ; $7C85: $00
    ld bc, $0300                                  ; $7C86: $01 $00 $03
    nop                                           ; $7C89: $00
    rlca                                          ; $7C8A: $07
    nop                                           ; $7C8B: $00
    add hl, bc                                    ; $7C8C: $09
    ld b, $09                                     ; $7C8D: $06 $09
    ld b, $C4                                     ; $7C8F: $06 $C4
    jr c, jr_00B_7CE7                             ; $7C91: $38 $54

    xor b                                         ; $7C93: $A8
    inc d                                         ; $7C94: $14
    add sp, -$7C                                  ; $7C95: $E8 $84
    ld a, b                                       ; $7C97: $78
    ldh a, [rP1]                                  ; $7C98: $F0 $00
    ld hl, sp+$00                                 ; $7C9A: $F8 $00
    db $F4                                        ; $7C9C: $F4
    ld [$08F4], sp                                ; $7C9D: $08 $F4 $08
    rlca                                          ; $7CA0: $07
    nop                                           ; $7CA1: $00
    inc bc                                        ; $7CA2: $03
    nop                                           ; $7CA3: $00
    rlca                                          ; $7CA4: $07
    nop                                           ; $7CA5: $00

jr_00B_7CA6:
    rrca                                          ; $7CA6: $0F
    nop                                           ; $7CA7: $00
    rra                                           ; $7CA8: $1F
    ld [$0F1F], sp                                ; $7CA9: $08 $1F $0F
    rra                                           ; $7CAC: $1F
    rlca                                          ; $7CAD: $07
    rra                                           ; $7CAE: $1F
    nop                                           ; $7CAF: $00
    ld hl, sp+$00                                 ; $7CB0: $F8 $00
    ldh a, [rP1]                                  ; $7CB2: $F0 $00
    cp $00                                        ; $7CB4: $FE $00
    rst $38                                       ; $7CB6: $FF
    ld b, $FF                                     ; $7CB7: $06 $FF
    ld c, $FE                                     ; $7CB9: $0E $FE
    inc c                                         ; $7CBB: $0C
    cp $90                                        ; $7CBC: $FE $90
    ld hl, sp+$00                                 ; $7CBE: $F8 $00
    inc bc                                        ; $7CC0: $03
    nop                                           ; $7CC1: $00
    inc bc                                        ; $7CC2: $03
    nop                                           ; $7CC3: $00
    rlca                                          ; $7CC4: $07
    nop                                           ; $7CC5: $00
    rlca                                          ; $7CC6: $07
    nop                                           ; $7CC7: $00
    rlca                                          ; $7CC8: $07
    nop                                           ; $7CC9: $00
    rlca                                          ; $7CCA: $07
    ld bc, $0307                                  ; $7CCB: $01 $07 $03
    rlca                                          ; $7CCE: $07
    nop                                           ; $7CCF: $00
    ld hl, sp+$00                                 ; $7CD0: $F8 $00
    ld hl, sp+$00                                 ; $7CD2: $F8 $00
    ld hl, sp+$00                                 ; $7CD4: $F8 $00
    ld hl, sp+$00                                 ; $7CD6: $F8 $00
    db $FC                                        ; $7CD8: $FC
    ld [$E8FC], sp                                ; $7CD9: $08 $FC $E8
    db $FC                                        ; $7CDC: $FC
    ldh [$F0], a                                  ; $7CDD: $E0 $F0
    nop                                           ; $7CDF: $00
    nop                                           ; $7CE0: $00
    nop                                           ; $7CE1: $00
    ret nz                                        ; $7CE2: $C0

    nop                                           ; $7CE3: $00
    ldh [$C0], a                                  ; $7CE4: $E0 $C0
    ld [c], a                                     ; $7CE6: $E2

jr_00B_7CE7:
    ret nz                                        ; $7CE7: $C0

    rst $30                                       ; $7CE8: $F7
    jp nz, $D6EF                                  ; $7CE9: $C2 $EF $D6

    rst $28                                       ; $7CEC: $EF
    sub $CE                                       ; $7CED: $D6 $CE
    or h                                          ; $7CEF: $B4
    adc $B0                                       ; $7CF0: $CE $B0
    sub c                                         ; $7CF2: $91
    ld l, [hl]                                    ; $7CF3: $6E
    ld a, [c]                                     ; $7CF4: $F2
    inc c                                         ; $7CF5: $0C
    db $FC                                        ; $7CF6: $FC
    nop                                           ; $7CF7: $00
    db $FC                                        ; $7CF8: $FC
    nop                                           ; $7CF9: $00
    db $FC                                        ; $7CFA: $FC
    nop                                           ; $7CFB: $00
    db $FC                                        ; $7CFC: $FC
    nop                                           ; $7CFD: $00
    ld hl, sp+$00                                 ; $7CFE: $F8 $00
    ccf                                           ; $7D00: $3F
    nop                                           ; $7D01: $00
    rst $38                                       ; $7D02: $FF
    nop                                           ; $7D03: $00
    rst $38                                       ; $7D04: $FF
    inc bc                                        ; $7D05: $03
    rst $38                                       ; $7D06: $FF
    rlca                                          ; $7D07: $07
    rst $38                                       ; $7D08: $FF
    rlca                                          ; $7D09: $07
    ld a, a                                       ; $7D0A: $7F
    rlca                                          ; $7D0B: $07
    rra                                           ; $7D0C: $1F
    inc bc                                        ; $7D0D: $03
    rrca                                          ; $7D0E: $0F
    nop                                           ; $7D0F: $00
    ldh a, [rP1]                                  ; $7D10: $F0 $00
    rst $38                                       ; $7D12: $FF
    nop                                           ; $7D13: $00
    rst $38                                       ; $7D14: $FF
    inc c                                         ; $7D15: $0C
    rst $38                                       ; $7D16: $FF
    adc [hl]                                      ; $7D17: $8E
    rst $38                                       ; $7D18: $FF
    adc [hl]                                      ; $7D19: $8E
    rst $38                                       ; $7D1A: $FF
    ld c, $FE                                     ; $7D1B: $0E $FE
    inc b                                         ; $7D1D: $04
    rst $38                                       ; $7D1E: $FF
    nop                                           ; $7D1F: $00
    nop                                           ; $7D20: $00
    nop                                           ; $7D21: $00
    inc bc                                        ; $7D22: $03
    nop                                           ; $7D23: $00
    inc b                                         ; $7D24: $04
    inc bc                                        ; $7D25: $03
    inc b                                         ; $7D26: $04
    inc bc                                        ; $7D27: $03
    inc bc                                        ; $7D28: $03
    nop                                           ; $7D29: $00
    nop                                           ; $7D2A: $00
    nop                                           ; $7D2B: $00
    nop                                           ; $7D2C: $00
    nop                                           ; $7D2D: $00
    nop                                           ; $7D2E: $00
    nop                                           ; $7D2F: $00
    nop                                           ; $7D30: $00
    nop                                           ; $7D31: $00
    add b                                         ; $7D32: $80
    nop                                           ; $7D33: $00
    ld b, b                                       ; $7D34: $40
    add b                                         ; $7D35: $80
    ld b, b                                       ; $7D36: $40
    add b                                         ; $7D37: $80
    add b                                         ; $7D38: $80
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
    ld b, $06                                     ; $7D44: $06 $06
    ld b, $06                                     ; $7D46: $06 $06
    nop                                           ; $7D48: $00
    nop                                           ; $7D49: $00
    ret nz                                        ; $7D4A: $C0

    ret nz                                        ; $7D4B: $C0

    ret nz                                        ; $7D4C: $C0

    ret nz                                        ; $7D4D: $C0

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
