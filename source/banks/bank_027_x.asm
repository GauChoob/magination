SECTION "ROM Bank $027", ROMX[$4000], BANK[$27]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    nop                                           ; $4002: $00
    nop                                           ; $4003: $00
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    nop                                           ; $4006: $00
    nop                                           ; $4007: $00
    nop                                           ; $4008: $00
    nop                                           ; $4009: $00
    nop                                           ; $400A: $00
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
    nop                                           ; $4016: $00
    nop                                           ; $4017: $00
    add b                                         ; $4018: $80
    add b                                         ; $4019: $80
    ret nz                                        ; $401A: $C0

    ret nz                                        ; $401B: $C0

    ret nc                                        ; $401C: $D0

    ret nc                                        ; $401D: $D0

    ld c, b                                       ; $401E: $48
    ld e, b                                       ; $401F: $58
    nop                                           ; $4020: $00
    nop                                           ; $4021: $00
    nop                                           ; $4022: $00
    nop                                           ; $4023: $00
    nop                                           ; $4024: $00
    nop                                           ; $4025: $00
    ld bc, $1907                                  ; $4026: $01 $07 $19
    rra                                           ; $4029: $1F
    ld e, $1E                                     ; $402A: $1E $1E
    jr nc, jr_027_406A                            ; $402C: $30 $3C

    inc a                                         ; $402E: $3C
    inc a                                         ; $402F: $3C
    ld [hl], b                                    ; $4030: $70
    ld [hl], b                                    ; $4031: $70
    and b                                         ; $4032: $A0
    ldh [$C0], a                                  ; $4033: $E0 $C0
    ret nz                                        ; $4035: $C0

    add b                                         ; $4036: $80
    add b                                         ; $4037: $80
    nop                                           ; $4038: $00
    nop                                           ; $4039: $00
    nop                                           ; $403A: $00
    nop                                           ; $403B: $00
    nop                                           ; $403C: $00
    nop                                           ; $403D: $00
    nop                                           ; $403E: $00
    nop                                           ; $403F: $00
    inc a                                         ; $4040: $3C
    inc a                                         ; $4041: $3C
    ld e, c                                       ; $4042: $59
    ld a, l                                       ; $4043: $7D
    xor $FF                                       ; $4044: $EE $FF
    ld d, h                                       ; $4046: $54
    ld a, a                                       ; $4047: $7F
    ld b, b                                       ; $4048: $40
    ld a, a                                       ; $4049: $7F
    ld d, b                                       ; $404A: $50
    ld a, a                                       ; $404B: $7F
    ld b, h                                       ; $404C: $44
    ld a, a                                       ; $404D: $7F
    add hl, hl                                    ; $404E: $29
    ccf                                           ; $404F: $3F
    add b                                         ; $4050: $80
    add b                                         ; $4051: $80
    add b                                         ; $4052: $80
    add b                                         ; $4053: $80
    nop                                           ; $4054: $00
    nop                                           ; $4055: $00
    add b                                         ; $4056: $80
    add b                                         ; $4057: $80
    ret nz                                        ; $4058: $C0

    ret nz                                        ; $4059: $C0

    ld h, b                                       ; $405A: $60
    ldh [rNR41], a                                ; $405B: $E0 $20
    ldh [rNR10], a                                ; $405D: $E0 $10
    ldh a, [rDIV]                                 ; $405F: $F0 $04
    rra                                           ; $4061: $1F
    nop                                           ; $4062: $00
    rrca                                          ; $4063: $0F
    jr jr_027_4085                                ; $4064: $18 $1F

    ld b, $07                                     ; $4066: $06 $07
    inc bc                                        ; $4068: $03
    inc bc                                        ; $4069: $03

jr_027_406A:
    nop                                           ; $406A: $00
    nop                                           ; $406B: $00
    nop                                           ; $406C: $00
    nop                                           ; $406D: $00
    nop                                           ; $406E: $00
    nop                                           ; $406F: $00
    db $10                                        ; $4070: $10
    ldh a, [rNR23]                                ; $4071: $F0 $18
    ld hl, sp+$08                                 ; $4073: $F8 $08
    ld hl, sp-$68                                 ; $4075: $F8 $98
    ld hl, sp-$10                                 ; $4077: $F8 $F0
    ldh a, [rP1]                                  ; $4079: $F0 $00
    nop                                           ; $407B: $00
    nop                                           ; $407C: $00
    nop                                           ; $407D: $00
    nop                                           ; $407E: $00
    nop                                           ; $407F: $00
    nop                                           ; $4080: $00
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    nop                                           ; $4083: $00
    nop                                           ; $4084: $00

jr_027_4085:
    nop                                           ; $4085: $00
    nop                                           ; $4086: $00
    nop                                           ; $4087: $00
    nop                                           ; $4088: $00
    nop                                           ; $4089: $00
    nop                                           ; $408A: $00
    nop                                           ; $408B: $00
    nop                                           ; $408C: $00
    nop                                           ; $408D: $00
    ld bc, $0001                                  ; $408E: $01 $01 $00
    nop                                           ; $4091: $00
    nop                                           ; $4092: $00
    nop                                           ; $4093: $00
    nop                                           ; $4094: $00
    nop                                           ; $4095: $00
    nop                                           ; $4096: $00
    nop                                           ; $4097: $00
    nop                                           ; $4098: $00
    nop                                           ; $4099: $00
    add b                                         ; $409A: $80
    add b                                         ; $409B: $80
    ret nz                                        ; $409C: $C0

    ret nz                                        ; $409D: $C0

    add b                                         ; $409E: $80
    add b                                         ; $409F: $80
    jr jr_027_40BA                                ; $40A0: $18 $18

    dec c                                         ; $40A2: $0D
    dec c                                         ; $40A3: $0D
    rlca                                          ; $40A4: $07
    rlca                                          ; $40A5: $07
    ld b, $06                                     ; $40A6: $06 $06
    ld [bc], a                                    ; $40A8: $02
    ld b, $03                                     ; $40A9: $06 $03
    rlca                                          ; $40AB: $07
    inc bc                                        ; $40AC: $03
    rlca                                          ; $40AD: $07
    ld a, [bc]                                    ; $40AE: $0A
    ld c, $80                                     ; $40AF: $0E $80
    add b                                         ; $40B1: $80
    nop                                           ; $40B2: $00
    nop                                           ; $40B3: $00
    ld b, b                                       ; $40B4: $40
    ld b, b                                       ; $40B5: $40
    ld h, b                                       ; $40B6: $60
    ld h, b                                       ; $40B7: $60
    ldh [$E0], a                                  ; $40B8: $E0 $E0

jr_027_40BA:
    add b                                         ; $40BA: $80
    add b                                         ; $40BB: $80
    nop                                           ; $40BC: $00
    nop                                           ; $40BD: $00
    nop                                           ; $40BE: $00
    nop                                           ; $40BF: $00
    dec de                                        ; $40C0: $1B
    rra                                           ; $40C1: $1F
    dec bc                                        ; $40C2: $0B
    rrca                                          ; $40C3: $0F
    dec e                                         ; $40C4: $1D
    rra                                           ; $40C5: $1F
    ld e, $1F                                     ; $40C6: $1E $1F
    ld a, [de]                                    ; $40C8: $1A
    rra                                           ; $40C9: $1F
    jr jr_027_40EB                                ; $40CA: $18 $1F

    inc d                                         ; $40CC: $14
    rra                                           ; $40CD: $1F
    ld de, $001F                                  ; $40CE: $11 $1F $00
    nop                                           ; $40D1: $00
    add b                                         ; $40D2: $80
    add b                                         ; $40D3: $80
    nop                                           ; $40D4: $00
    nop                                           ; $40D5: $00
    ret nz                                        ; $40D6: $C0

    ret nz                                        ; $40D7: $C0

    and b                                         ; $40D8: $A0
    ldh [rSVBK], a                                ; $40D9: $E0 $70
    ldh a, [$30]                                  ; $40DB: $F0 $30
    ldh a, [rNR23]                                ; $40DD: $F0 $18
    ld hl, sp+$08                                 ; $40DF: $F8 $08
    rrca                                          ; $40E1: $0F
    inc c                                         ; $40E2: $0C
    rrca                                          ; $40E3: $0F
    ld b, $07                                     ; $40E4: $06 $07
    rlca                                          ; $40E6: $07
    rlca                                          ; $40E7: $07
    nop                                           ; $40E8: $00
    nop                                           ; $40E9: $00
    nop                                           ; $40EA: $00

jr_027_40EB:
    nop                                           ; $40EB: $00
    nop                                           ; $40EC: $00
    nop                                           ; $40ED: $00
    nop                                           ; $40EE: $00
    nop                                           ; $40EF: $00
    nop                                           ; $40F0: $00
    ldh a, [$90]                                  ; $40F1: $F0 $90
    ldh a, [rNR10]                                ; $40F3: $F0 $10
    ldh a, [$E0]                                  ; $40F5: $F0 $E0
    ldh [rP1], a                                  ; $40F7: $E0 $00
    nop                                           ; $40F9: $00
    nop                                           ; $40FA: $00
    nop                                           ; $40FB: $00
    nop                                           ; $40FC: $00
    nop                                           ; $40FD: $00
    nop                                           ; $40FE: $00
    nop                                           ; $40FF: $00
    nop                                           ; $4100: $00
    nop                                           ; $4101: $00
    nop                                           ; $4102: $00
    nop                                           ; $4103: $00
    nop                                           ; $4104: $00
    nop                                           ; $4105: $00
    ld bc, $0101                                  ; $4106: $01 $01 $01
    ld bc, $0101                                  ; $4109: $01 $01 $01
    inc bc                                        ; $410C: $03
    inc bc                                        ; $410D: $03
    inc bc                                        ; $410E: $03
    inc bc                                        ; $410F: $03
    nop                                           ; $4110: $00
    nop                                           ; $4111: $00
    nop                                           ; $4112: $00
    nop                                           ; $4113: $00
    nop                                           ; $4114: $00
    nop                                           ; $4115: $00
    add b                                         ; $4116: $80
    add b                                         ; $4117: $80
    nop                                           ; $4118: $00
    nop                                           ; $4119: $00
    nop                                           ; $411A: $00
    nop                                           ; $411B: $00
    ld [hl], b                                    ; $411C: $70
    ld [hl], b                                    ; $411D: $70
    ld h, b                                       ; $411E: $60
    ld h, b                                       ; $411F: $60
    ld [bc], a                                    ; $4120: $02
    ld [bc], a                                    ; $4121: $02
    inc bc                                        ; $4122: $03
    inc bc                                        ; $4123: $03
    ld bc, $0101                                  ; $4124: $01 $01 $01
    ld bc, $0000                                  ; $4127: $01 $00 $00
    nop                                           ; $412A: $00
    nop                                           ; $412B: $00
    inc b                                         ; $412C: $04
    inc b                                         ; $412D: $04
    inc bc                                        ; $412E: $03
    inc bc                                        ; $412F: $03
    ldh [$E0], a                                  ; $4130: $E0 $E0
    ldh [$E0], a                                  ; $4132: $E0 $E0
    add b                                         ; $4134: $80
    ret nz                                        ; $4135: $C0

    nop                                           ; $4136: $00
    ret nz                                        ; $4137: $C0

    xor b                                         ; $4138: $A8
    add sp, -$48                                  ; $4139: $E8 $B8
    ld hl, sp+$60                                 ; $413B: $F8 $60
    ld l, b                                       ; $413D: $68
    ld a, b                                       ; $413E: $78
    ld a, b                                       ; $413F: $78
    inc bc                                        ; $4140: $03
    inc bc                                        ; $4141: $03
    inc bc                                        ; $4142: $03
    inc bc                                        ; $4143: $03
    rlca                                          ; $4144: $07
    rlca                                          ; $4145: $07
    ld b, $07                                     ; $4146: $06 $07
    ld a, [de]                                    ; $4148: $1A
    rra                                           ; $4149: $1F
    add hl, bc                                    ; $414A: $09
    rrca                                          ; $414B: $0F
    db $10                                        ; $414C: $10
    rra                                           ; $414D: $1F
    add hl, de                                    ; $414E: $19
    rra                                           ; $414F: $1F
    inc l                                         ; $4150: $2C
    ld a, h                                       ; $4151: $7C
    ld a, h                                       ; $4152: $7C
    ld a, h                                       ; $4153: $7C
    jr c, jr_027_41CE                             ; $4154: $38 $78

    ld [$B0F8], sp                                ; $4156: $08 $F8 $B0
    ldh a, [$60]                                  ; $4159: $F0 $60
    ldh [rNR41], a                                ; $415B: $E0 $20
    ldh [$60], a                                  ; $415D: $E0 $60
    ldh [rNR14], a                                ; $415F: $E0 $14
    rra                                           ; $4161: $1F
    db $10                                        ; $4162: $10
    rra                                           ; $4163: $1F
    jr jr_027_4185                                ; $4164: $18 $1F

    ld c, $0F                                     ; $4166: $0E $0F
    nop                                           ; $4168: $00
    nop                                           ; $4169: $00
    nop                                           ; $416A: $00
    nop                                           ; $416B: $00
    nop                                           ; $416C: $00
    nop                                           ; $416D: $00
    nop                                           ; $416E: $00
    nop                                           ; $416F: $00
    ldh [$E0], a                                  ; $4170: $E0 $E0
    ldh [$E0], a                                  ; $4172: $E0 $E0
    ret nz                                        ; $4174: $C0

    ret nz                                        ; $4175: $C0

    add b                                         ; $4176: $80
    add b                                         ; $4177: $80
    nop                                           ; $4178: $00
    nop                                           ; $4179: $00
    nop                                           ; $417A: $00
    nop                                           ; $417B: $00
    nop                                           ; $417C: $00
    nop                                           ; $417D: $00
    nop                                           ; $417E: $00
    nop                                           ; $417F: $00
    nop                                           ; $4180: $00
    nop                                           ; $4181: $00
    nop                                           ; $4182: $00
    nop                                           ; $4183: $00
    nop                                           ; $4184: $00

jr_027_4185:
    nop                                           ; $4185: $00
    nop                                           ; $4186: $00
    nop                                           ; $4187: $00
    ld [$0C08], sp                                ; $4188: $08 $08 $0C
    inc c                                         ; $418B: $0C
    inc c                                         ; $418C: $0C
    inc c                                         ; $418D: $0C
    inc b                                         ; $418E: $04
    inc b                                         ; $418F: $04
    nop                                           ; $4190: $00
    nop                                           ; $4191: $00
    nop                                           ; $4192: $00
    nop                                           ; $4193: $00
    nop                                           ; $4194: $00
    nop                                           ; $4195: $00
    nop                                           ; $4196: $00
    nop                                           ; $4197: $00
    nop                                           ; $4198: $00
    nop                                           ; $4199: $00
    nop                                           ; $419A: $00
    nop                                           ; $419B: $00
    nop                                           ; $419C: $00
    nop                                           ; $419D: $00
    nop                                           ; $419E: $00
    nop                                           ; $419F: $00
    ld [bc], a                                    ; $41A0: $02
    ld [bc], a                                    ; $41A1: $02
    inc bc                                        ; $41A2: $03
    inc bc                                        ; $41A3: $03
    nop                                           ; $41A4: $00
    nop                                           ; $41A5: $00
    nop                                           ; $41A6: $00
    nop                                           ; $41A7: $00
    ld [bc], a                                    ; $41A8: $02
    ld [bc], a                                    ; $41A9: $02
    inc b                                         ; $41AA: $04
    ld b, $07                                     ; $41AB: $06 $07
    rlca                                          ; $41AD: $07

jr_027_41AE:
    ld [bc], a                                    ; $41AE: $02
    ld [bc], a                                    ; $41AF: $02
    ld h, b                                       ; $41B0: $60
    ld h, b                                       ; $41B1: $60
    sub b                                         ; $41B2: $90
    or b                                          ; $41B3: $B0
    add sp, -$08                                  ; $41B4: $E8 $F8
    jr nz, @+$32                                  ; $41B6: $20 $30

    jr nz, jr_027_41EA                            ; $41B8: $20 $30

    jr nz, jr_027_41EC                            ; $41BA: $20 $30

    jr jr_027_41F6                                ; $41BC: $18 $38

    add b                                         ; $41BE: $80
    and b                                         ; $41BF: $A0
    rlca                                          ; $41C0: $07
    rlca                                          ; $41C1: $07
    rla                                           ; $41C2: $17
    rla                                           ; $41C3: $17
    inc a                                         ; $41C4: $3C
    ccf                                           ; $41C5: $3F
    ld e, h                                       ; $41C6: $5C
    ld a, a                                       ; $41C7: $7F
    ld a, [hl+]                                   ; $41C8: $2A
    ccf                                           ; $41C9: $3F
    ld [hl], b                                    ; $41CA: $70
    ld a, a                                       ; $41CB: $7F
    inc [hl]                                      ; $41CC: $34
    ccf                                           ; $41CD: $3F

jr_027_41CE:
    ld l, e                                       ; $41CE: $6B
    ld a, a                                       ; $41CF: $7F
    xor b                                         ; $41D0: $A8
    add sp, $48                                   ; $41D1: $E8 $48
    ret z                                         ; $41D3: $C8

    jr jr_027_41AE                                ; $41D4: $18 $D8

    ld d, b                                       ; $41D6: $50
    ldh a, [$60]                                  ; $41D7: $F0 $60
    ldh [rLCDC], a                                ; $41D9: $E0 $40
    ret nz                                        ; $41DB: $C0

    ld b, b                                       ; $41DC: $40
    ret nz                                        ; $41DD: $C0

    ld b, b                                       ; $41DE: $40
    ret nz                                        ; $41DF: $C0

    inc h                                         ; $41E0: $24
    ccf                                           ; $41E1: $3F
    jr nc, jr_027_4223                            ; $41E2: $30 $3F

    db $10                                        ; $41E4: $10
    rra                                           ; $41E5: $1F
    ld [$0C0F], sp                                ; $41E6: $08 $0F $0C
    rrca                                          ; $41E9: $0F

jr_027_41EA:
    ld [bc], a                                    ; $41EA: $02
    ld [bc], a                                    ; $41EB: $02

jr_027_41EC:
    nop                                           ; $41EC: $00
    nop                                           ; $41ED: $00
    nop                                           ; $41EE: $00
    nop                                           ; $41EF: $00
    jr nz, @-$1E                                  ; $41F0: $20 $E0

    and b                                         ; $41F2: $A0
    ldh [rP1], a                                  ; $41F3: $E0 $00
    ret nz                                        ; $41F5: $C0

jr_027_41F6:
    ret nz                                        ; $41F6: $C0

    ret nz                                        ; $41F7: $C0

    ret nz                                        ; $41F8: $C0

    ret nz                                        ; $41F9: $C0

    nop                                           ; $41FA: $00
    nop                                           ; $41FB: $00
    nop                                           ; $41FC: $00
    nop                                           ; $41FD: $00
    nop                                           ; $41FE: $00
    nop                                           ; $41FF: $00
    nop                                           ; $4200: $00
    nop                                           ; $4201: $00
    nop                                           ; $4202: $00
    nop                                           ; $4203: $00
    nop                                           ; $4204: $00
    nop                                           ; $4205: $00
    ld bc, $0700                                  ; $4206: $01 $00 $07
    nop                                           ; $4209: $00
    rrca                                          ; $420A: $0F
    nop                                           ; $420B: $00
    rra                                           ; $420C: $1F
    nop                                           ; $420D: $00
    ccf                                           ; $420E: $3F
    ld [bc], a                                    ; $420F: $02
    nop                                           ; $4210: $00
    nop                                           ; $4211: $00
    inc d                                         ; $4212: $14
    nop                                           ; $4213: $00
    ld l, e                                       ; $4214: $6B
    nop                                           ; $4215: $00
    cp $00                                        ; $4216: $FE $00
    db $F4                                        ; $4218: $F4
    nop                                           ; $4219: $00
    ldh a, [rP1]                                  ; $421A: $F0 $00
    ldh [rP1], a                                  ; $421C: $E0 $00
    rst $00                                       ; $421E: $C7
    nop                                           ; $421F: $00
    nop                                           ; $4220: $00
    nop                                           ; $4221: $00
    nop                                           ; $4222: $00

jr_027_4223:
    nop                                           ; $4223: $00
    ld b, b                                       ; $4224: $40
    nop                                           ; $4225: $00
    nop                                           ; $4226: $00
    nop                                           ; $4227: $00
    nop                                           ; $4228: $00
    nop                                           ; $4229: $00
    nop                                           ; $422A: $00
    nop                                           ; $422B: $00
    ld hl, sp+$00                                 ; $422C: $F8 $00
    rst $38                                       ; $422E: $FF
    nop                                           ; $422F: $00
    nop                                           ; $4230: $00
    nop                                           ; $4231: $00
    nop                                           ; $4232: $00
    nop                                           ; $4233: $00
    nop                                           ; $4234: $00
    nop                                           ; $4235: $00
    nop                                           ; $4236: $00
    nop                                           ; $4237: $00
    jr nz, jr_027_423A                            ; $4238: $20 $00

jr_027_423A:
    stop                                          ; $423A: $10 $00
    nop                                           ; $423C: $00
    nop                                           ; $423D: $00
    ld [rRAMG], sp                                ; $423E: $08 $00 $00
    nop                                           ; $4241: $00
    nop                                           ; $4242: $00
    nop                                           ; $4243: $00
    ld bc, $0300                                  ; $4244: $01 $00 $03
    ld bc, $0707                                  ; $4247: $01 $07 $07
    rrca                                          ; $424A: $0F
    rrca                                          ; $424B: $0F
    rra                                           ; $424C: $1F
    rrca                                          ; $424D: $0F
    ccf                                           ; $424E: $3F
    rra                                           ; $424F: $1F
    rra                                           ; $4250: $1F
    nop                                           ; $4251: $00
    ld a, a                                       ; $4252: $7F
    nop                                           ; $4253: $00
    rst $38                                       ; $4254: $FF
    xor d                                         ; $4255: $AA
    rst $38                                       ; $4256: $FF
    ld a, h                                       ; $4257: $7C
    rst $38                                       ; $4258: $FF
    ret nc                                        ; $4259: $D0

    rst $38                                       ; $425A: $FF
    add sp, -$04                                  ; $425B: $E8 $FC
    ret nz                                        ; $425D: $C0

    ldh a, [$80]                                  ; $425E: $F0 $80
    ret nc                                        ; $4260: $D0

    nop                                           ; $4261: $00
    ld hl, sp+$00                                 ; $4262: $F8 $00
    rst $38                                       ; $4264: $FF
    nop                                           ; $4265: $00
    cp $80                                        ; $4266: $FE $80
    rst $38                                       ; $4268: $FF
    nop                                           ; $4269: $00
    xor d                                         ; $426A: $AA
    nop                                           ; $426B: $00
    ld bc, $4000                                  ; $426C: $01 $00 $40
    nop                                           ; $426F: $00
    nop                                           ; $4270: $00
    nop                                           ; $4271: $00
    nop                                           ; $4272: $00
    nop                                           ; $4273: $00
    nop                                           ; $4274: $00
    nop                                           ; $4275: $00
    nop                                           ; $4276: $00
    nop                                           ; $4277: $00
    add b                                         ; $4278: $80
    nop                                           ; $4279: $00
    ret nz                                        ; $427A: $C0

    nop                                           ; $427B: $00
    nop                                           ; $427C: $00
    nop                                           ; $427D: $00
    and b                                         ; $427E: $A0
    nop                                           ; $427F: $00
    nop                                           ; $4280: $00
    nop                                           ; $4281: $00
    nop                                           ; $4282: $00
    nop                                           ; $4283: $00
    ld bc, $0600                                  ; $4284: $01 $00 $06
    inc bc                                        ; $4287: $03
    dec c                                         ; $4288: $0D
    rlca                                          ; $4289: $07
    jr jr_027_429B                                ; $428A: $18 $0F

    db $10                                        ; $428C: $10
    rra                                           ; $428D: $1F
    jr nz, jr_027_42AF                            ; $428E: $20 $1F

    rra                                           ; $4290: $1F
    rlca                                          ; $4291: $07
    rst $38                                       ; $4292: $FF
    ccf                                           ; $4293: $3F
    cp a                                          ; $4294: $BF
    rst $38                                       ; $4295: $FF
    ld c, e                                       ; $4296: $4B
    rst $38                                       ; $4297: $FF
    scf                                           ; $4298: $37
    rst $38                                       ; $4299: $FF
    rra                                           ; $429A: $1F

jr_027_429B:
    cp $7F                                        ; $429B: $FE $7F
    ld hl, sp-$04                                 ; $429D: $F8 $FC
    ldh [$F8], a                                  ; $429F: $E0 $F8
    ld b, b                                       ; $42A1: $40
    cp $E0                                        ; $42A2: $FE $E0
    rst $38                                       ; $42A4: $FF
    db $FC                                        ; $42A5: $FC
    rst $38                                       ; $42A6: $FF
    ld a, [$F5FF]                                 ; $42A7: $FA $FF $F5
    rst $38                                       ; $42AA: $FF
    ld a, [bc]                                    ; $42AB: $0A
    rst $38                                       ; $42AC: $FF
    nop                                           ; $42AD: $00
    rlca                                          ; $42AE: $07

jr_027_42AF:
    nop                                           ; $42AF: $00
    nop                                           ; $42B0: $00
    nop                                           ; $42B1: $00
    nop                                           ; $42B2: $00
    nop                                           ; $42B3: $00
    add b                                         ; $42B4: $80
    nop                                           ; $42B5: $00
    ret nz                                        ; $42B6: $C0

    nop                                           ; $42B7: $00
    ldh [rP1], a                                  ; $42B8: $E0 $00
    ldh a, [rP1]                                  ; $42BA: $F0 $00
    ldh a, [$80]                                  ; $42BC: $F0 $80
    ld hl, sp+$00                                 ; $42BE: $F8 $00
    nop                                           ; $42C0: $00
    nop                                           ; $42C1: $00
    nop                                           ; $42C2: $00
    nop                                           ; $42C3: $00
    inc bc                                        ; $42C4: $03
    nop                                           ; $42C5: $00
    nop                                           ; $42C6: $00
    inc bc                                        ; $42C7: $03
    ld [$0107], sp                                ; $42C8: $08 $07 $01
    rrca                                          ; $42CB: $0F
    ld [de], a                                    ; $42CC: $12
    rra                                           ; $42CD: $1F
    ld h, $1F                                     ; $42CE: $26 $1F
    inc e                                         ; $42D0: $1C
    rra                                           ; $42D1: $1F
    ret nz                                        ; $42D2: $C0

    ld a, a                                       ; $42D3: $7F
    nop                                           ; $42D4: $00
    rst $38                                       ; $42D5: $FF
    nop                                           ; $42D6: $00
    rst $38                                       ; $42D7: $FF
    ld bc, $07FF                                  ; $42D8: $01 $FF $07
    rst $38                                       ; $42DB: $FF
    rrca                                          ; $42DC: $0F
    rst $38                                       ; $42DD: $FF
    ccf                                           ; $42DE: $3F
    ld hl, sp-$44                                 ; $42DF: $F8 $BC
    ldh a, [$2F]                                  ; $42E1: $F0 $2F
    cp $03                                        ; $42E3: $FE $03
    rst $38                                       ; $42E5: $FF
    dec bc                                        ; $42E6: $0B
    rst $38                                       ; $42E7: $FF
    ld [hl], l                                    ; $42E8: $75
    rst $38                                       ; $42E9: $FF
    cp $FF                                        ; $42EA: $FE $FF
    rst $38                                       ; $42EC: $FF
    xor a                                         ; $42ED: $AF
    ld a, a                                       ; $42EE: $7F
    ld bc, $0000                                  ; $42EF: $01 $00 $00
    nop                                           ; $42F2: $00
    nop                                           ; $42F3: $00
    ret nz                                        ; $42F4: $C0

    add b                                         ; $42F5: $80
    ldh [$C0], a                                  ; $42F6: $E0 $C0
    ldh a, [$E0]                                  ; $42F8: $F0 $E0
    ld hl, sp-$10                                 ; $42FA: $F8 $F0
    db $FC                                        ; $42FC: $FC
    ld hl, sp-$04                                 ; $42FD: $F8 $FC
    ld hl, sp+$3F                                 ; $42FF: $F8 $3F
    inc c                                         ; $4301: $0C
    ld a, a                                       ; $4302: $7F
    ld [de], a                                    ; $4303: $12
    ld a, a                                       ; $4304: $7F
    inc l                                         ; $4305: $2C
    cp $58                                        ; $4306: $FE $58
    cp $38                                        ; $4308: $FE $38
    cp $78                                        ; $430A: $FE $78
    cp $B8                                        ; $430C: $FE $B8
    cp $78                                        ; $430E: $FE $78
    adc a                                         ; $4310: $8F
    inc bc                                        ; $4311: $03
    rra                                           ; $4312: $1F
    rlca                                          ; $4313: $07
    ld a, $0F                                     ; $4314: $3E $0F
    ld a, h                                       ; $4316: $7C
    rra                                           ; $4317: $1F
    ld a, a                                       ; $4318: $7F
    rra                                           ; $4319: $1F
    ld a, a                                       ; $431A: $7F
    rra                                           ; $431B: $1F
    ld a, a                                       ; $431C: $7F
    db $10                                        ; $431D: $10
    ld a, h                                       ; $431E: $7C
    nop                                           ; $431F: $00
    rst $38                                       ; $4320: $FF
    ldh a, [rVBK]                                 ; $4321: $F0 $4F
    cp $03                                        ; $4323: $FE $03
    rst $38                                       ; $4325: $FF
    ld bc, $08FF                                  ; $4326: $01 $FF $08
    rst $38                                       ; $4329: $FF
    adc b                                         ; $432A: $88
    rst $38                                       ; $432B: $FF
    adc $7F                                       ; $432C: $CE $7F
    sbc $7F                                       ; $432E: $DE $7F
    ld d, h                                       ; $4330: $54
    nop                                           ; $4331: $00
    adc h                                         ; $4332: $8C
    nop                                           ; $4333: $00
    and $00                                       ; $4334: $E6 $00
    ei                                            ; $4336: $FB
    add b                                         ; $4337: $80
    and $C0                                       ; $4338: $E6 $C0
    ld a, a                                       ; $433A: $7F
    ret nz                                        ; $433B: $C0

    ld a, e                                       ; $433C: $7B
    ldh [$7F], a                                  ; $433D: $E0 $7F
    ldh [$3F], a                                  ; $433F: $E0 $3F
    ccf                                           ; $4341: $3F
    ld [hl], a                                    ; $4342: $77
    ccf                                           ; $4343: $3F
    ld l, e                                       ; $4344: $6B
    ld a, [hl]                                    ; $4345: $7E
    rst $10                                       ; $4346: $D7
    ld a, [hl]                                    ; $4347: $7E
    and a                                         ; $4348: $A7
    ld a, [hl]                                    ; $4349: $7E
    adc a                                         ; $434A: $8F
    ld a, [hl]                                    ; $434B: $7E
    rst $00                                       ; $434C: $C7
    db $FC                                        ; $434D: $FC
    rlca                                          ; $434E: $07
    cp $E3                                        ; $434F: $FE $E3
    add b                                         ; $4351: $80
    rst $08                                       ; $4352: $CF
    nop                                           ; $4353: $00
    adc a                                         ; $4354: $8F
    inc bc                                        ; $4355: $03
    sbc a                                         ; $4356: $9F
    dec b                                         ; $4357: $05
    ccf                                           ; $4358: $3F
    inc bc                                        ; $4359: $03
    rra                                           ; $435A: $1F
    nop                                           ; $435B: $00
    inc a                                         ; $435C: $3C
    nop                                           ; $435D: $00
    nop                                           ; $435E: $00
    nop                                           ; $435F: $00
    db $FC                                        ; $4360: $FC
    nop                                           ; $4361: $00
    rst $38                                       ; $4362: $FF
    ldh a, [rIE]                                  ; $4363: $F0 $FF
    db $FC                                        ; $4365: $FC
    rst $20                                       ; $4366: $E7
    cp $C3                                        ; $4367: $FE $C3
    rst $38                                       ; $4369: $FF
    ldh [$7F], a                                  ; $436A: $E0 $7F
    ldh [$7F], a                                  ; $436C: $E0 $7F
    ld h, b                                       ; $436E: $60
    ccf                                           ; $436F: $3F
    nop                                           ; $4370: $00
    nop                                           ; $4371: $00
    stop                                          ; $4372: $10 $00
    add b                                         ; $4374: $80
    nop                                           ; $4375: $00
    ret nz                                        ; $4376: $C0

    nop                                           ; $4377: $00
    ret nz                                        ; $4378: $C0

    nop                                           ; $4379: $00
    ldh [$80], a                                  ; $437A: $E0 $80
    ldh [$80], a                                  ; $437C: $E0 $80
    ldh a, [$C0]                                  ; $437E: $F0 $C0
    ld b, c                                       ; $4380: $41
    ccf                                           ; $4381: $3F
    ld b, c                                       ; $4382: $41
    ccf                                           ; $4383: $3F

Jump_027_4384:
    ld bc, $837F                                  ; $4384: $01 $7F $83
    ld a, a                                       ; $4387: $7F
    add e                                         ; $4388: $83
    rst $38                                       ; $4389: $FF
    inc bc                                        ; $438A: $03
    cp $23                                        ; $438B: $FE $23
    cp $03                                        ; $438D: $FE $03
    rst $38                                       ; $438F: $FF
    ldh a, [$C0]                                  ; $4390: $F0 $C0
    db $E3                                        ; $4392: $E3
    add b                                         ; $4393: $80
    jp $CF00                                      ; $4394: $C3 $00 $CF


    nop                                           ; $4397: $00
    add l                                         ; $4398: $85
    nop                                           ; $4399: $00
    add b                                         ; $439A: $80
    nop                                           ; $439B: $00
    add d                                         ; $439C: $82
    nop                                           ; $439D: $00
    add a                                         ; $439E: $87
    nop                                           ; $439F: $00
    ld bc, $F800                                  ; $43A0: $01 $00 $F8
    nop                                           ; $43A3: $00
    db $FC                                        ; $43A4: $FC
    ld b, b                                       ; $43A5: $40
    cp $38                                        ; $43A6: $FE $38
    rst $38                                       ; $43A8: $FF
    ld a, h                                       ; $43A9: $7C
    rst $38                                       ; $43AA: $FF
    ld a, $77                                     ; $43AB: $3E $77
    ld a, $73                                     ; $43AD: $3E $73
    ccf                                           ; $43AF: $3F
    ld hl, sp+$00                                 ; $43B0: $F8 $00
    db $FC                                        ; $43B2: $FC
    nop                                           ; $43B3: $00
    ld a, h                                       ; $43B4: $7C
    nop                                           ; $43B5: $00
    inc e                                         ; $43B6: $1C
    nop                                           ; $43B7: $00
    inc [hl]                                      ; $43B8: $34
    nop                                           ; $43B9: $00
    sbc d                                         ; $43BA: $9A
    nop                                           ; $43BB: $00
    add h                                         ; $43BC: $84
    nop                                           ; $43BD: $00
    adc b                                         ; $43BE: $88
    nop                                           ; $43BF: $00
    jr @+$41                                      ; $43C0: $18 $3F

    ld e, h                                       ; $43C2: $5C
    ccf                                           ; $43C3: $3F
    ld [hl], h                                    ; $43C4: $74
    ld a, a                                       ; $43C5: $7F
    cp b                                          ; $43C6: $B8
    ld a, a                                       ; $43C7: $7F
    ld sp, hl                                     ; $43C8: $F9
    ld a, a                                       ; $43C9: $7F
    ld sp, hl                                     ; $43CA: $F9
    ld a, a                                       ; $43CB: $7F
    ld sp, hl                                     ; $43CC: $F9
    rst $38                                       ; $43CD: $FF
    ld sp, hl                                     ; $43CE: $F9
    rst $38                                       ; $43CF: $FF
    ld a, h                                       ; $43D0: $7C
    ldh [$78], a                                  ; $43D1: $E0 $78
    ldh [$F0], a                                  ; $43D3: $E0 $F0
    ret nz                                        ; $43D5: $C0

    pop hl                                        ; $43D6: $E1
    add b                                         ; $43D7: $80
    ldh [$80], a                                  ; $43D8: $E0 $80
    ld [$FF80], a                                 ; $43DA: $EA $80 $FF
    nop                                           ; $43DD: $00
    cp $87                                        ; $43DE: $FE $87
    rlca                                          ; $43E0: $07
    nop                                           ; $43E1: $00
    inc bc                                        ; $43E2: $03
    nop                                           ; $43E3: $00
    ld a, b                                       ; $43E4: $78
    nop                                           ; $43E5: $00
    ld a, h                                       ; $43E6: $7C
    nop                                           ; $43E7: $00
    ld a, [hl]                                    ; $43E8: $7E
    nop                                           ; $43E9: $00
    ccf                                           ; $43EA: $3F
    ld [$0CBF], sp                                ; $43EB: $08 $BF $0C
    cp a                                          ; $43EE: $BF
    ld c, $FE                                     ; $43EF: $0E $FE
    db $F4                                        ; $43F1: $F4
    cp $78                                        ; $43F2: $FE $78
    rst $38                                       ; $43F4: $FF
    inc e                                         ; $43F5: $1C
    ld a, a                                       ; $43F6: $7F
    inc d                                         ; $43F7: $14
    ld a, a                                       ; $43F8: $7F
    ld [$0C3F], sp                                ; $43F9: $08 $3F $0C
    ccf                                           ; $43FC: $3F
    nop                                           ; $43FD: $00
    sbc a                                         ; $43FE: $9F
    inc b                                         ; $43FF: $04
    cp $FC                                        ; $4400: $FE $FC
    cp $F8                                        ; $4402: $FE $F8
    rst $28                                       ; $4404: $EF
    db $FC                                        ; $4405: $FC
    rst $38                                       ; $4406: $FF
    ld a, [hl]                                    ; $4407: $7E
    rst $00                                       ; $4408: $C7
    ld a, [hl]                                    ; $4409: $7E
    ld [hl], a                                    ; $440A: $77
    ld a, a                                       ; $440B: $7F
    ld d, c                                       ; $440C: $51
    ccf                                           ; $440D: $3F
    ld [hl], c                                    ; $440E: $71
    ccf                                           ; $440F: $3F
    ld a, c                                       ; $4410: $79
    nop                                           ; $4411: $00
    ld a, c                                       ; $4412: $79
    ld bc, $0019                                  ; $4413: $01 $19 $00
    jr nz, jr_027_4418                            ; $4416: $20 $00

jr_027_4418:
    add b                                         ; $4418: $80
    nop                                           ; $4419: $00
    ret nz                                        ; $441A: $C0

    nop                                           ; $441B: $00
    jp hl                                         ; $441C: $E9


    add b                                         ; $441D: $80
    rst $38                                       ; $441E: $FF
    ldh [$1F], a                                  ; $441F: $E0 $1F
    rst $38                                       ; $4421: $FF
    cp [hl]                                       ; $4422: $BE
    rst $30                                       ; $4423: $F7
    rst $38                                       ; $4424: $FF
    ld d, e                                       ; $4425: $53
    cp $03                                        ; $4426: $FE $03
    ld a, $07                                     ; $4428: $3E $07
    ld e, [hl]                                    ; $442A: $5E
    rlca                                          ; $442B: $07
    ld a, h                                       ; $442C: $7C
    rrca                                          ; $442D: $0F
    ld hl, sp+$1F                                 ; $442E: $F8 $1F
    ccf                                           ; $4430: $3F
    ldh [$7F], a                                  ; $4431: $E0 $7F
    pop hl                                        ; $4433: $E1
    ccf                                           ; $4434: $3F
    ldh a, [$7F]                                  ; $4435: $F0 $7F
    ld [c], a                                     ; $4437: $E2
    ld a, a                                       ; $4438: $7F
    ld [c], a                                     ; $4439: $E2
    ld a, [hl]                                    ; $443A: $7E
    db $F4                                        ; $443B: $F4
    cp $E4                                        ; $443C: $FE $E4
    db $FC                                        ; $443E: $FC
    db $EC                                        ; $443F: $EC
    adc a                                         ; $4440: $8F
    cp $87                                        ; $4441: $FE $87
    cp $83                                        ; $4443: $FE $83
    cp $83                                        ; $4445: $FE $83
    ld a, a                                       ; $4447: $7F
    add e                                         ; $4448: $83
    ld a, a                                       ; $4449: $7F
    ret nz                                        ; $444A: $C0

    ld a, a                                       ; $444B: $7F
    ld b, b                                       ; $444C: $40
    ccf                                           ; $444D: $3F
    ld b, b                                       ; $444E: $40
    ccf                                           ; $444F: $3F
    inc hl                                        ; $4450: $23
    ld bc, $0183                                  ; $4451: $01 $83 $01
    add a                                         ; $4454: $87
    ld bc, $00C3                                  ; $4455: $01 $C3 $00
    push bc                                       ; $4458: $C5
    nop                                           ; $4459: $00
    ei                                            ; $445A: $FB
    add b                                         ; $445B: $80
    rst $38                                       ; $445C: $FF
    ldh [$3F], a                                  ; $445D: $E0 $3F
    ld hl, sp-$3C                                 ; $445F: $F8 $C4
    rst $38                                       ; $4461: $FF
    ld [$DEFF], sp                                ; $4462: $08 $FF $DE
    rst $38                                       ; $4465: $FF
    db $FC                                        ; $4466: $FC
    rst $38                                       ; $4467: $FF
    db $FC                                        ; $4468: $FC
    cpl                                           ; $4469: $2F
    ld hl, sp+$1F                                 ; $446A: $F8 $1F
    ld sp, hl                                     ; $446C: $F9
    ccf                                           ; $446D: $3F
    pop af                                        ; $446E: $F1
    rst $38                                       ; $446F: $FF
    ld h, c                                       ; $4470: $61
    ret nz                                        ; $4471: $C0

    ldh a, [$C0]                                  ; $4472: $F0 $C0
    ld [hl], l                                    ; $4474: $75
    ret nz                                        ; $4475: $C0

    ld sp, hl                                     ; $4476: $F9
    ret nz                                        ; $4477: $C0

    di                                            ; $4478: $F3
    ret nz                                        ; $4479: $C0

    ld [$F6C0], a                                 ; $447A: $EA $C0 $F6
    add b                                         ; $447D: $80
    xor $80                                       ; $447E: $EE $80
    ld h, e                                       ; $4480: $63
    cp $23                                        ; $4481: $FE $23
    rst $38                                       ; $4483: $FF
    ld e, c                                       ; $4484: $59
    rst $38                                       ; $4485: $FF
    or c                                          ; $4486: $B1
    ld a, a                                       ; $4487: $7F
    cp b                                          ; $4488: $B8
    ld a, a                                       ; $4489: $7F
    ld e, h                                       ; $448A: $5C
    ld a, a                                       ; $448B: $7F
    ld e, [hl]                                    ; $448C: $5E
    ccf                                           ; $448D: $3F
    ld a, a                                       ; $448E: $7F
    ccf                                           ; $448F: $3F
    sbc l                                         ; $4490: $9D
    inc bc                                        ; $4491: $03
    adc $07                                       ; $4492: $CE $07
    cp $07                                        ; $4494: $FE $07
    rst $38                                       ; $4496: $FF
    add e                                         ; $4497: $83
    rst $38                                       ; $4498: $FF
    jp $F57F                                      ; $4499: $C3 $7F $F5


    ccf                                           ; $449C: $3F
    rst $38                                       ; $449D: $FF
    rlca                                          ; $449E: $07
    rst $38                                       ; $449F: $FF
    pop hl                                        ; $44A0: $E1
    ld a, a                                       ; $44A1: $7F
    jp $01FF                                      ; $44A2: $C3 $FF $01


    rst $38                                       ; $44A5: $FF
    add e                                         ; $44A6: $83
    rst $38                                       ; $44A7: $FF
    db $E3                                        ; $44A8: $E3
    rst $38                                       ; $44A9: $FF
    jp $A7FE                                      ; $44AA: $C3 $FE $A7


    cp $0F                                        ; $44AD: $FE $0F
    db $FC                                        ; $44AF: $FC
    call nz, $C000                                ; $44B0: $C4 $00 $C0
    nop                                           ; $44B3: $00
    ret z                                         ; $44B4: $C8

    nop                                           ; $44B5: $00
    add b                                         ; $44B6: $80
    nop                                           ; $44B7: $00
    ret nz                                        ; $44B8: $C0

    nop                                           ; $44B9: $00
    add b                                         ; $44BA: $80
    nop                                           ; $44BB: $00
    add b                                         ; $44BC: $80
    nop                                           ; $44BD: $00
    nop                                           ; $44BE: $00
    nop                                           ; $44BF: $00
    ld hl, sp-$21                                 ; $44C0: $F8 $DF
    db $FD                                        ; $44C2: $FD
    rst $28                                       ; $44C3: $EF
    db $FC                                        ; $44C4: $FC
    ld e, a                                       ; $44C5: $5F
    db $FC                                        ; $44C6: $FC
    ld d, a                                       ; $44C7: $57
    cp $4F                                        ; $44C8: $FE $4F
    ld a, a                                       ; $44CA: $7F
    ld h, e                                       ; $44CB: $63
    ccf                                           ; $44CC: $3F
    ld hl, $223F                                  ; $44CD: $21 $3F $22
    db $FD                                        ; $44D0: $FD
    add a                                         ; $44D1: $87
    db $FD                                        ; $44D2: $FD
    rst $08                                       ; $44D3: $CF
    db $FC                                        ; $44D4: $FC
    rst $38                                       ; $44D5: $FF
    ld a, [hl]                                    ; $44D6: $7E
    rst $28                                       ; $44D7: $EF
    inc a                                         ; $44D8: $3C
    rst $38                                       ; $44D9: $FF
    ld e, $FF                                     ; $44DA: $1E $FF
    add b                                         ; $44DC: $80
    rst $38                                       ; $44DD: $FF
    ldh [rIE], a                                  ; $44DE: $E0 $FF
    cp a                                          ; $44E0: $BF
    ld e, $FF                                     ; $44E1: $1E $FF
    cp $67                                        ; $44E3: $FE $67
    cp $07                                        ; $44E5: $FE $07
    cp $07                                        ; $44E7: $FE $07
    cp $8F                                        ; $44E9: $FE $8F
    db $FC                                        ; $44EB: $FC
    ld c, $FC                                     ; $44EC: $0E $FC
    ld a, $F0                                     ; $44EE: $3E $F0
    sbc a                                         ; $44F0: $9F
    nop                                           ; $44F1: $00
    sbc a                                         ; $44F2: $9F
    nop                                           ; $44F3: $00
    sbc a                                         ; $44F4: $9F
    nop                                           ; $44F5: $00
    sbc [hl]                                      ; $44F6: $9E
    nop                                           ; $44F7: $00
    ld a, $00                                     ; $44F8: $3E $00
    inc e                                         ; $44FA: $1C
    nop                                           ; $44FB: $00
    ld a, [hl-]                                   ; $44FC: $3A
    nop                                           ; $44FD: $00
    jr z, jr_027_4500                             ; $44FE: $28 $00

jr_027_4500:
    jr nz, jr_027_4521                            ; $4500: $20 $1F

    jr @+$21                                      ; $4502: $18 $1F

    inc b                                         ; $4504: $04
    rrca                                          ; $4505: $0F
    ld [$0607], sp                                ; $4506: $08 $07 $06
    inc bc                                        ; $4509: $03
    ld bc, $0000                                  ; $450A: $01 $00 $00
    nop                                           ; $450D: $00
    nop                                           ; $450E: $00
    nop                                           ; $450F: $00
    ld a, a                                       ; $4510: $7F
    ldh a, [rNR22]                                ; $4511: $F0 $17
    rst $38                                       ; $4513: $FF
    nop                                           ; $4514: $00
    rst $38                                       ; $4515: $FF
    nop                                           ; $4516: $00
    rst $38                                       ; $4517: $FF
    nop                                           ; $4518: $00
    rst $38                                       ; $4519: $FF
    ld [bc], a                                    ; $451A: $02
    rst $38                                       ; $451B: $FF
    pop bc                                        ; $451C: $C1
    ccf                                           ; $451D: $3F
    jr jr_027_4527                                ; $451E: $18 $07

jr_027_4520:
    pop af                                        ; $4520: $F1

jr_027_4521:
    rst $38                                       ; $4521: $FF
    jp $07FF                                      ; $4522: $C3 $FF $07


    rst $38                                       ; $4525: $FF
    rra                                           ; $4526: $1F

jr_027_4527:
    rst $38                                       ; $4527: $FF
    cp a                                          ; $4528: $BF
    rst $38                                       ; $4529: $FF
    ld d, l                                       ; $452A: $55
    rst $38                                       ; $452B: $FF
    daa                                           ; $452C: $27
    db $FC                                        ; $452D: $FC
    jr jr_027_4520                                ; $452E: $18 $F0

    db $FC                                        ; $4530: $FC
    ret c                                         ; $4531: $D8

    ld hl, sp-$10                                 ; $4532: $F8 $F0
    ld hl, sp-$10                                 ; $4534: $F8 $F0
    ldh a, [$E0]                                  ; $4536: $F0 $E0
    ret nz                                        ; $4538: $C0

    ret nz                                        ; $4539: $C0

    add b                                         ; $453A: $80
    nop                                           ; $453B: $00
    nop                                           ; $453C: $00
    nop                                           ; $453D: $00
    nop                                           ; $453E: $00
    nop                                           ; $453F: $00
    inc h                                         ; $4540: $24
    rra                                           ; $4541: $1F
    ld [hl+], a                                   ; $4542: $22
    rra                                           ; $4543: $1F
    ld de, $080F                                  ; $4544: $11 $0F $08
    rlca                                          ; $4547: $07
    ld b, $03                                     ; $4548: $06 $03
    inc bc                                        ; $454A: $03
    ld bc, $0000                                  ; $454B: $01 $00 $00
    nop                                           ; $454E: $00
    nop                                           ; $454F: $00
    rra                                           ; $4550: $1F
    rst $38                                       ; $4551: $FF
    add b                                         ; $4552: $80
    rst $38                                       ; $4553: $FF
    ld b, b                                       ; $4554: $40
    rst $38                                       ; $4555: $FF
    rst $38                                       ; $4556: $FF
    rst $38                                       ; $4557: $FF
    cp a                                          ; $4558: $BF
    rst $38                                       ; $4559: $FF
    ld e, a                                       ; $455A: $5F
    rst $38                                       ; $455B: $FF
    rst $28                                       ; $455C: $EF
    ld a, a                                       ; $455D: $7F
    ccf                                           ; $455E: $3F
    rra                                           ; $455F: $1F
    jp $0FFF                                      ; $4560: $C3 $FF $0F


    cp $1F                                        ; $4563: $FE $1F
    db $FC                                        ; $4565: $FC
    rst $38                                       ; $4566: $FF
    ld hl, sp-$01                                 ; $4567: $F8 $FF
    ret nz                                        ; $4569: $C0

    rst $38                                       ; $456A: $FF
    rst $30                                       ; $456B: $F7
    rst $38                                       ; $456C: $FF
    xor h                                         ; $456D: $AC
    db $FC                                        ; $456E: $FC
    ret nc                                        ; $456F: $D0

    db $FC                                        ; $4570: $FC
    nop                                           ; $4571: $00
    db $FC                                        ; $4572: $FC
    nop                                           ; $4573: $00
    ld hl, sp+$00                                 ; $4574: $F8 $00
    ldh a, [rP1]                                  ; $4576: $F0 $00
    ldh [rLCDC], a                                ; $4578: $E0 $40
    ret nz                                        ; $457A: $C0

    nop                                           ; $457B: $00
    nop                                           ; $457C: $00
    nop                                           ; $457D: $00
    nop                                           ; $457E: $00
    nop                                           ; $457F: $00
    cpl                                           ; $4580: $2F
    rra                                           ; $4581: $1F
    rra                                           ; $4582: $1F
    rra                                           ; $4583: $1F
    rrca                                          ; $4584: $0F
    ld c, $0F                                     ; $4585: $0E $0F
    rlca                                          ; $4587: $07
    inc bc                                        ; $4588: $03
    ld bc, $0001                                  ; $4589: $01 $01 $00
    nop                                           ; $458C: $00
    nop                                           ; $458D: $00
    nop                                           ; $458E: $00
    nop                                           ; $458F: $00
    ret nz                                        ; $4590: $C0

    rst $38                                       ; $4591: $FF
    pop af                                        ; $4592: $F1
    rst $38                                       ; $4593: $FF
    rst $38                                       ; $4594: $FF
    cp a                                          ; $4595: $BF
    rst $38                                       ; $4596: $FF
    ld b, b                                       ; $4597: $40
    rst $38                                       ; $4598: $FF
    sub b                                         ; $4599: $90
    rst $38                                       ; $459A: $FF
    ret nz                                        ; $459B: $C0

    ld a, a                                       ; $459C: $7F
    jr c, jr_027_45BE                             ; $459D: $38 $1F

    ld [bc], a                                    ; $459F: $02
    ld a, $F8                                     ; $45A0: $3E $F8
    cp $F0                                        ; $45A2: $FE $F0
    db $FC                                        ; $45A4: $FC
    ret nz                                        ; $45A5: $C0

    pop af                                        ; $45A6: $F1
    nop                                           ; $45A7: $00
    ld [$B700], a                                 ; $45A8: $EA $00 $B7
    nop                                           ; $45AB: $00
    db $FC                                        ; $45AC: $FC
    nop                                           ; $45AD: $00
    ldh a, [rP1]                                  ; $45AE: $F0 $00
    nop                                           ; $45B0: $00
    nop                                           ; $45B1: $00
    ld [rROMB0], sp                                ; $45B2: $08 $00 $20
    nop                                           ; $45B5: $00
    ld b, b                                       ; $45B6: $40
    nop                                           ; $45B7: $00
    add b                                         ; $45B8: $80
    nop                                           ; $45B9: $00
    nop                                           ; $45BA: $00
    nop                                           ; $45BB: $00
    nop                                           ; $45BC: $00
    nop                                           ; $45BD: $00

jr_027_45BE:
    nop                                           ; $45BE: $00
    nop                                           ; $45BF: $00
    ccf                                           ; $45C0: $3F
    nop                                           ; $45C1: $00
    rra                                           ; $45C2: $1F
    db $10                                        ; $45C3: $10
    rra                                           ; $45C4: $1F
    nop                                           ; $45C5: $00
    rlca                                          ; $45C6: $07
    nop                                           ; $45C7: $00
    rlca                                          ; $45C8: $07
    nop                                           ; $45C9: $00
    ld bc, $0000                                  ; $45CA: $01 $00 $00
    nop                                           ; $45CD: $00
    nop                                           ; $45CE: $00
    nop                                           ; $45CF: $00
    db $FD                                        ; $45D0: $FD
    ld a, a                                       ; $45D1: $7F
    rst $38                                       ; $45D2: $FF
    rra                                           ; $45D3: $1F
    rst $38                                       ; $45D4: $FF
    nop                                           ; $45D5: $00
    ld c, d                                       ; $45D6: $4A
    nop                                           ; $45D7: $00
    and b                                         ; $45D8: $A0
    nop                                           ; $45D9: $00
    call nc, Call_027_7A00                        ; $45DA: $D4 $00 $7A
    nop                                           ; $45DD: $00
    dec b                                         ; $45DE: $05
    nop                                           ; $45DF: $00
    db $FC                                        ; $45E0: $FC
    ldh [$F8], a                                  ; $45E1: $E0 $F8
    add b                                         ; $45E3: $80
    pop hl                                        ; $45E4: $E1
    nop                                           ; $45E5: $00
    nop                                           ; $45E6: $00
    nop                                           ; $45E7: $00
    nop                                           ; $45E8: $00
    nop                                           ; $45E9: $00
    nop                                           ; $45EA: $00
    nop                                           ; $45EB: $00
    nop                                           ; $45EC: $00
    nop                                           ; $45ED: $00
    ld b, b                                       ; $45EE: $40
    nop                                           ; $45EF: $00
    ld d, b                                       ; $45F0: $50
    nop                                           ; $45F1: $00
    ld b, b                                       ; $45F2: $40
    nop                                           ; $45F3: $00
    nop                                           ; $45F4: $00
    nop                                           ; $45F5: $00
    nop                                           ; $45F6: $00
    nop                                           ; $45F7: $00
    nop                                           ; $45F8: $00
    nop                                           ; $45F9: $00
    nop                                           ; $45FA: $00
    nop                                           ; $45FB: $00
    nop                                           ; $45FC: $00
    nop                                           ; $45FD: $00
    nop                                           ; $45FE: $00
    nop                                           ; $45FF: $00
    nop                                           ; $4600: $00

jr_027_4601:
    nop                                           ; $4601: $00
    rlca                                          ; $4602: $07
    nop                                           ; $4603: $00
    rra                                           ; $4604: $1F
    inc bc                                        ; $4605: $03
    ccf                                           ; $4606: $3F
    inc c                                         ; $4607: $0C
    ld a, [hl]                                    ; $4608: $7E
    ld de, $27F9                                  ; $4609: $11 $F9 $27
    rst $38                                       ; $460C: $FF
    ld b, a                                       ; $460D: $47
    rst $38                                       ; $460E: $FF
    add e                                         ; $460F: $83
    rst $38                                       ; $4610: $FF
    nop                                           ; $4611: $00
    rst $38                                       ; $4612: $FF
    ld a, a                                       ; $4613: $7F
    rst $38                                       ; $4614: $FF
    add b                                         ; $4615: $80
    db $FD                                        ; $4616: $FD
    ld [bc], a                                    ; $4617: $02
    ld a, [de]                                    ; $4618: $1A
    rst $20                                       ; $4619: $E7
    rst $38                                       ; $461A: $FF
    rst $20                                       ; $461B: $E7
    rst $38                                       ; $461C: $FF
    jp $00FF                                      ; $461D: $C3 $FF $00


    pop hl                                        ; $4620: $E1
    ld a, $F1                                     ; $4621: $3E $F1
    ld c, $FE                                     ; $4623: $0E $FE
    ldh [$FE], a                                  ; $4625: $E0 $FE
    jr jr_027_4668                                ; $4627: $18 $3F

    call nz, $F2CF                                ; $4629: $C4 $CF $F2
    rst $38                                       ; $462C: $FF
    pop af                                        ; $462D: $F1
    rst $38                                       ; $462E: $FF
    ldh [$CF], a                                  ; $462F: $E0 $CF
    add c                                         ; $4631: $81
    rst $08                                       ; $4632: $CF
    add d                                         ; $4633: $82
    rst $08                                       ; $4634: $CF
    add h                                         ; $4635: $84
    sbc $85                                       ; $4636: $DE $85
    sbc a                                         ; $4638: $9F
    add hl, bc                                    ; $4639: $09
    ccf                                           ; $463A: $3F
    dec bc                                        ; $463B: $0B
    ld a, a                                       ; $463C: $7F
    ld [$689F], sp                                ; $463D: $08 $9F $68
    rst $00                                       ; $4640: $C7
    jr c, jr_027_4601                             ; $4641: $38 $BE

    ld a, c                                       ; $4643: $79
    ld a, [hl]                                    ; $4644: $7E
    ld sp, hl                                     ; $4645: $F9
    db $FD                                        ; $4646: $FD
    ei                                            ; $4647: $FB
    db $FD                                        ; $4648: $FD
    db $E3                                        ; $4649: $E3
    rst $38                                       ; $464A: $FF
    inc bc                                        ; $464B: $03
    call $3733                                    ; $464C: $CD $33 $37
    ld sp, hl                                     ; $464F: $F9
    add c                                         ; $4650: $81
    ld a, [hl]                                    ; $4651: $7E
    ld a, [hl]                                    ; $4652: $7E
    rst $38                                       ; $4653: $FF
    rst $38                                       ; $4654: $FF
    rst $38                                       ; $4655: $FF
    rst $38                                       ; $4656: $FF
    rst $38                                       ; $4657: $FF
    rst $38                                       ; $4658: $FF
    rst $38                                       ; $4659: $FF
    rst $38                                       ; $465A: $FF
    rst $38                                       ; $465B: $FF
    rst $38                                       ; $465C: $FF
    rst $38                                       ; $465D: $FF
    rst $38                                       ; $465E: $FF
    rst $38                                       ; $465F: $FF
    pop af                                        ; $4660: $F1
    ld c, $6E                                     ; $4661: $0E $6E
    sbc a                                         ; $4663: $9F
    ld a, a                                       ; $4664: $7F
    sbc a                                         ; $4665: $9F
    cp a                                          ; $4666: $BF
    rst $08                                       ; $4667: $CF

jr_027_4668:
    cp a                                          ; $4668: $BF
    rst $00                                       ; $4669: $C7
    rst $38                                       ; $466A: $FF
    pop bc                                        ; $466B: $C1
    and e                                         ; $466C: $A3
    call c, $9FFC                                 ; $466D: $DC $FC $9F
    ldh a, [rLCDC]                                ; $4670: $F0 $40
    di                                            ; $4672: $F3
    jr nz, jr_027_46F1                            ; $4673: $20 $7C

    and e                                         ; $4675: $A3
    db $FC                                        ; $4676: $FC
    sub e                                         ; $4677: $93
    cp e                                          ; $4678: $BB
    call nc, $D7FF                                ; $4679: $D4 $FF $D7
    db $FC                                        ; $467C: $FC
    rla                                           ; $467D: $17
    ld hl, sp+$17                                 ; $467E: $F8 $17
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    ld bc, $0200                                  ; $4682: $01 $00 $02
    ld bc, $0102                                  ; $4685: $01 $02 $01
    ld [bc], a                                    ; $4688: $02
    ld bc, $0102                                  ; $4689: $01 $02 $01
    ld bc, $0100                                  ; $468C: $01 $00 $01
    nop                                           ; $468F: $00
    sbc [hl]                                      ; $4690: $9E
    ld l, c                                       ; $4691: $69
    ld a, l                                       ; $4692: $7D
    dec bc                                        ; $4693: $0B
    ccf                                           ; $4694: $3F
    dec bc                                        ; $4695: $0B
    sbc a                                         ; $4696: $9F
    add hl, bc                                    ; $4697: $09
    rst $18                                       ; $4698: $DF
    add l                                         ; $4699: $85
    rst $08                                       ; $469A: $CF
    add h                                         ; $469B: $84
    rst $08                                       ; $469C: $CF
    add d                                         ; $469D: $82
    rst $08                                       ; $469E: $CF
    add c                                         ; $469F: $81
    rst $38                                       ; $46A0: $FF
    ld sp, hl                                     ; $46A1: $F9
    rst $38                                       ; $46A2: $FF
    ld hl, sp-$02                                 ; $46A3: $F8 $FE
    ld sp, hl                                     ; $46A5: $F9
    db $FD                                        ; $46A6: $FD
    ei                                            ; $46A7: $FB
    rst $38                                       ; $46A8: $FF
    di                                            ; $46A9: $F3
    ei                                            ; $46AA: $FB
    rst $20                                       ; $46AB: $E7
    rst $38                                       ; $46AC: $FF
    ld b, a                                       ; $46AD: $47
    rst $30                                       ; $46AE: $F7
    rrca                                          ; $46AF: $0F
    rst $38                                       ; $46B0: $FF
    rst $38                                       ; $46B1: $FF
    rst $38                                       ; $46B2: $FF
    ld a, [hl]                                    ; $46B3: $7E
    rst $38                                       ; $46B4: $FF
    nop                                           ; $46B5: $00
    inc a                                         ; $46B6: $3C
    jp $E7DB                                      ; $46B7: $C3 $DB $E7


    rst $30                                       ; $46BA: $F7
    rst $28                                       ; $46BB: $EF
    rst $38                                       ; $46BC: $FF
    rst $20                                       ; $46BD: $E7
    rst $38                                       ; $46BE: $FF
    rst $20                                       ; $46BF: $E7
    rst $38                                       ; $46C0: $FF
    sbc a                                         ; $46C1: $9F
    rst $38                                       ; $46C2: $FF
    rra                                           ; $46C3: $1F
    ccf                                           ; $46C4: $3F
    rst $08                                       ; $46C5: $CF
    rst $18                                       ; $46C6: $DF
    rst $28                                       ; $46C7: $EF
    rst $38                                       ; $46C8: $FF
    rst $20                                       ; $46C9: $E7
    rst $38                                       ; $46CA: $FF
    rst $30                                       ; $46CB: $F7
    rst $38                                       ; $46CC: $FF
    ld a, [c]                                     ; $46CD: $F2
    rst $38                                       ; $46CE: $FF

jr_027_46CF:
    ldh a, [$7C]                                  ; $46CF: $F0 $7C
    sub a                                         ; $46D1: $97
    cp a                                          ; $46D2: $BF
    rst $10                                       ; $46D3: $D7
    rst $38                                       ; $46D4: $FF
    call nc, $97F8                                ; $46D5: $D4 $F8 $97
    db $FC                                        ; $46D8: $FC
    sub e                                         ; $46D9: $93
    cp $21                                        ; $46DA: $FE $21
    di                                            ; $46DC: $F3
    jr nz, jr_027_46CF                            ; $46DD: $20 $F0

    ld b, b                                       ; $46DF: $40
    ld sp, hl                                     ; $46E0: $F9
    or $F1                                        ; $46E1: $F6 $F1
    ld c, $C2                                     ; $46E3: $0E $C2
    inc a                                         ; $46E5: $3C
    inc b                                         ; $46E6: $04
    ld hl, sp+$38                                 ; $46E7: $F8 $38
    ret nz                                        ; $46E9: $C0

    ld b, b                                       ; $46EA: $40
    add b                                         ; $46EB: $80
    add b                                         ; $46EC: $80
    nop                                           ; $46ED: $00
    nop                                           ; $46EE: $00
    nop                                           ; $46EF: $00
    ld a, e                                       ; $46F0: $7B

jr_027_46F1:
    call z, $FE31                                 ; $46F1: $CC $31 $FE
    ld [bc], a                                    ; $46F4: $02
    db $FC                                        ; $46F5: $FC
    call nz, $3838                                ; $46F6: $C4 $38 $38
    nop                                           ; $46F9: $00
    nop                                           ; $46FA: $00
    nop                                           ; $46FB: $00
    nop                                           ; $46FC: $00
    nop                                           ; $46FD: $00
    nop                                           ; $46FE: $00
    nop                                           ; $46FF: $00
    rst $38                                       ; $4700: $FF
    adc a                                         ; $4701: $8F
    rst $38                                       ; $4702: $FF
    ld b, a                                       ; $4703: $47
    rst $38                                       ; $4704: $FF
    jr nz, jr_027_4786                            ; $4705: $20 $7F

    db $10                                        ; $4707: $10
    ccf                                           ; $4708: $3F
    inc c                                         ; $4709: $0C
    rra                                           ; $470A: $1F
    inc bc                                        ; $470B: $03
    rlca                                          ; $470C: $07
    nop                                           ; $470D: $00
    nop                                           ; $470E: $00
    nop                                           ; $470F: $00
    rst $38                                       ; $4710: $FF
    rst $20                                       ; $4711: $E7
    rst $38                                       ; $4712: $FF
    rst $20                                       ; $4713: $E7
    rst $38                                       ; $4714: $FF
    jp $00FF                                      ; $4715: $C3 $FF $00


    rst $38                                       ; $4718: $FF
    nop                                           ; $4719: $00
    rst $38                                       ; $471A: $FF
    add b                                         ; $471B: $80
    rst $38                                       ; $471C: $FF
    ld a, a                                       ; $471D: $7F
    rst $38                                       ; $471E: $FF
    nop                                           ; $471F: $00
    rst $38                                       ; $4720: $FF
    ldh a, [rIE]                                  ; $4721: $F0 $FF
    pop af                                        ; $4723: $F1
    rst $38                                       ; $4724: $FF
    add d                                         ; $4725: $82
    rst $38                                       ; $4726: $FF
    inc b                                         ; $4727: $04
    cp $18                                        ; $4728: $FE $18
    cp $E0                                        ; $472A: $FE $E0
    pop af                                        ; $472C: $F1
    ld c, $E1                                     ; $472D: $0E $E1
    ld a, $E0                                     ; $472F: $3E $E0
    add b                                         ; $4731: $80
    ret nz                                        ; $4732: $C0

    nop                                           ; $4733: $00
    add b                                         ; $4734: $80
    nop                                           ; $4735: $00
    nop                                           ; $4736: $00
    nop                                           ; $4737: $00
    nop                                           ; $4738: $00
    nop                                           ; $4739: $00
    nop                                           ; $473A: $00
    nop                                           ; $473B: $00
    nop                                           ; $473C: $00
    nop                                           ; $473D: $00
    nop                                           ; $473E: $00
    nop                                           ; $473F: $00
    ld h, c                                       ; $4740: $61
    ld a, $61                                     ; $4741: $3E $61
    ld a, $62                                     ; $4743: $3E $62
    inc a                                         ; $4745: $3C
    ld h, d                                       ; $4746: $62
    inc a                                         ; $4747: $3C
    ld [c], a                                     ; $4748: $E2
    inc a                                         ; $4749: $3C
    jp nz, $C47C                                  ; $474A: $C2 $7C $C4

    ld a, b                                       ; $474D: $78
    call nz, $C878                                ; $474E: $C4 $78 $C8
    ld [hl], b                                    ; $4751: $70
    ret z                                         ; $4752: $C8

    ld [hl], b                                    ; $4753: $70
    ret nc                                        ; $4754: $D0

    ld h, b                                       ; $4755: $60
    ret nc                                        ; $4756: $D0

    ld h, b                                       ; $4757: $60
    ldh [rLCDC], a                                ; $4758: $E0 $40
    ldh [rP1], a                                  ; $475A: $E0 $00
    ld b, b                                       ; $475C: $40
    nop                                           ; $475D: $00
    nop                                           ; $475E: $00
    nop                                           ; $475F: $00
    rst $28                                       ; $4760: $EF
    ld b, c                                       ; $4761: $41
    ld c, a                                       ; $4762: $4F
    ld [bc], a                                    ; $4763: $02
    rrca                                          ; $4764: $0F
    inc b                                         ; $4765: $04
    ld e, $05                                     ; $4766: $1E $05
    rra                                           ; $4768: $1F
    add hl, bc                                    ; $4769: $09
    ccf                                           ; $476A: $3F
    dec bc                                        ; $476B: $0B
    ld a, a                                       ; $476C: $7F
    ld [$689F], sp                                ; $476D: $08 $9F $68
    pop bc                                        ; $4770: $C1
    ld a, $F1                                     ; $4771: $3E $F1
    ld c, $FD                                     ; $4773: $0E $FD
    ld [c], a                                     ; $4775: $E2
    cp $18                                        ; $4776: $FE $18
    ccf                                           ; $4778: $3F
    call nz, $F2CF                                ; $4779: $C4 $CF $F2
    rst $38                                       ; $477C: $FF
    pop af                                        ; $477D: $F1
    rst $38                                       ; $477E: $FF
    ldh [$9E], a                                  ; $477F: $E0 $9E
    ld l, c                                       ; $4781: $69
    ld a, l                                       ; $4782: $7D
    dec bc                                        ; $4783: $0B
    ccf                                           ; $4784: $3F
    dec bc                                        ; $4785: $0B

jr_027_4786:
    rra                                           ; $4786: $1F
    add hl, bc                                    ; $4787: $09
    rra                                           ; $4788: $1F
    dec b                                         ; $4789: $05
    rrca                                          ; $478A: $0F
    inc b                                         ; $478B: $04
    ld c, a                                       ; $478C: $4F
    ld [bc], a                                    ; $478D: $02
    rst $28                                       ; $478E: $EF
    ld b, c                                       ; $478F: $41
    ld bc, $0100                                  ; $4790: $01 $00 $01
    nop                                           ; $4793: $00
    ld bc, $0000                                  ; $4794: $01 $00 $00
    nop                                           ; $4797: $00
    nop                                           ; $4798: $00
    nop                                           ; $4799: $00
    nop                                           ; $479A: $00
    nop                                           ; $479B: $00
    nop                                           ; $479C: $00
    nop                                           ; $479D: $00
    nop                                           ; $479E: $00
    nop                                           ; $479F: $00
    ld l, a                                       ; $47A0: $6F
    call nz, $EE39                                ; $47A1: $C4 $39 $EE
    ld de, $81FE                                  ; $47A4: $11 $FE $81
    ld a, [hl]                                    ; $47A7: $7E
    ld b, d                                       ; $47A8: $42
    inc a                                         ; $47A9: $3C
    inc a                                         ; $47AA: $3C
    nop                                           ; $47AB: $00
    nop                                           ; $47AC: $00
    nop                                           ; $47AD: $00
    nop                                           ; $47AE: $00
    nop                                           ; $47AF: $00
    rst $38                                       ; $47B0: $FF
    ldh a, [rIE]                                  ; $47B1: $F0 $FF
    pop af                                        ; $47B3: $F1
    rst $38                                       ; $47B4: $FF
    add d                                         ; $47B5: $82
    rst $38                                       ; $47B6: $FF
    inc b                                         ; $47B7: $04
    cp $18                                        ; $47B8: $FE $18
    db $FD                                        ; $47BA: $FD
    ld [c], a                                     ; $47BB: $E2
    pop af                                        ; $47BC: $F1
    ld c, $C1                                     ; $47BD: $0E $C1
    ld a, $01                                     ; $47BF: $3E $01
    nop                                           ; $47C1: $00
    rra                                           ; $47C2: $1F
    ld bc, $1F7E                                  ; $47C3: $01 $7E $1F
    ldh [$7F], a                                  ; $47C6: $E0 $7F
    ld b, b                                       ; $47C8: $40
    ccf                                           ; $47C9: $3F
    ccf                                           ; $47CA: $3F
    nop                                           ; $47CB: $00
    nop                                           ; $47CC: $00
    nop                                           ; $47CD: $00
    nop                                           ; $47CE: $00
    nop                                           ; $47CF: $00
    add d                                         ; $47D0: $82
    db $FC                                        ; $47D1: $FC
    ld [bc], a                                    ; $47D2: $02
    db $FC                                        ; $47D3: $FC
    inc b                                         ; $47D4: $04
    ld hl, sp+$18                                 ; $47D5: $F8 $18
    ldh [$60], a                                  ; $47D7: $E0 $60
    add b                                         ; $47D9: $80
    add b                                         ; $47DA: $80
    nop                                           ; $47DB: $00
    nop                                           ; $47DC: $00
    nop                                           ; $47DD: $00
    nop                                           ; $47DE: $00
    nop                                           ; $47DF: $00
    rst $00                                       ; $47E0: $C7
    ld a, c                                       ; $47E1: $79
    ld a, a                                       ; $47E2: $7F
    ld [hl-], a                                   ; $47E3: $32
    ccf                                           ; $47E4: $3F
    inc b                                         ; $47E5: $04
    ld e, $05                                     ; $47E6: $1E $05
    rra                                           ; $47E8: $1F
    add hl, bc                                    ; $47E9: $09
    ccf                                           ; $47EA: $3F
    dec bc                                        ; $47EB: $0B
    ld a, a                                       ; $47EC: $7F
    ld [$689F], sp                                ; $47ED: $08 $9F $68
    pop af                                        ; $47F0: $F1
    ld e, $F9                                     ; $47F1: $1E $F9
    ld b, $FE                                     ; $47F3: $06 $FE
    ldh [$FE], a                                  ; $47F5: $E0 $FE
    jr jr_027_4838                                ; $47F7: $18 $3F

    call nz, $F2CF                                ; $47F9: $C4 $CF $F2
    rst $38                                       ; $47FC: $FF
    pop af                                        ; $47FD: $F1
    rst $38                                       ; $47FE: $FF
    ldh [$9E], a                                  ; $47FF: $E0 $9E
    ld l, c                                       ; $4801: $69
    ld a, l                                       ; $4802: $7D
    dec bc                                        ; $4803: $0B
    ccf                                           ; $4804: $3F
    dec bc                                        ; $4805: $0B
    rra                                           ; $4806: $1F
    add hl, bc                                    ; $4807: $09
    rra                                           ; $4808: $1F
    dec b                                         ; $4809: $05
    ccf                                           ; $480A: $3F
    inc b                                         ; $480B: $04
    ld a, a                                       ; $480C: $7F
    ld [hl-], a                                   ; $480D: $32
    rst $00                                       ; $480E: $C7
    ld a, c                                       ; $480F: $79
    ld bc, $0100                                  ; $4810: $01 $00 $01
    nop                                           ; $4813: $00
    inc bc                                        ; $4814: $03
    ld bc, $0103                                  ; $4815: $01 $03 $01
    ld b, $03                                     ; $4818: $06 $03
    ld b, $03                                     ; $481A: $06 $03
    rlca                                          ; $481C: $07
    ld [bc], a                                    ; $481D: $02
    ld [bc], a                                    ; $481E: $02
    nop                                           ; $481F: $00
    add e                                         ; $4820: $83
    db $FC                                        ; $4821: $FC
    add e                                         ; $4822: $83
    db $FC                                        ; $4823: $FC
    inc b                                         ; $4824: $04
    ld hl, sp+$08                                 ; $4825: $F8 $08
    ldh a, [$30]                                  ; $4827: $F0 $30
    ret nz                                        ; $4829: $C0

    ret nz                                        ; $482A: $C0

    nop                                           ; $482B: $00
    nop                                           ; $482C: $00
    nop                                           ; $482D: $00
    nop                                           ; $482E: $00
    nop                                           ; $482F: $00
    rst $38                                       ; $4830: $FF
    ldh a, [rIE]                                  ; $4831: $F0 $FF
    pop af                                        ; $4833: $F1
    rst $38                                       ; $4834: $FF
    add d                                         ; $4835: $82
    rst $38                                       ; $4836: $FF
    inc b                                         ; $4837: $04

jr_027_4838:
    cp $18                                        ; $4838: $FE $18
    cp $E0                                        ; $483A: $FE $E0
    ld sp, hl                                     ; $483C: $F9
    ld b, $F1                                     ; $483D: $06 $F1
    ld e, $00                                     ; $483F: $1E $00
    nop                                           ; $4841: $00
    ld [$1F00], sp                                ; $4842: $08 $00 $1F
    ld [$0F17], sp                                ; $4845: $08 $17 $0F
    db $10                                        ; $4848: $10
    rrca                                          ; $4849: $0F
    ld [$0407], sp                                ; $484A: $08 $07 $04
    inc bc                                        ; $484D: $03
    inc bc                                        ; $484E: $03
    nop                                           ; $484F: $00
    ld sp, $621E                                  ; $4850: $31 $1E $62
    inc a                                         ; $4853: $3C
    jp nz, $827C                                  ; $4854: $C2 $7C $82

    db $FC                                        ; $4857: $FC
    inc b                                         ; $4858: $04
    ld hl, sp+$08                                 ; $4859: $F8 $08
    ldh a, [$30]                                  ; $485B: $F0 $30
    ret nz                                        ; $485D: $C0

    ret nz                                        ; $485E: $C0

    nop                                           ; $485F: $00
    ldh a, [$1F]                                  ; $4860: $F0 $1F
    pop af                                        ; $4862: $F1
    ld c, $FD                                     ; $4863: $0E $FD
    ld [c], a                                     ; $4865: $E2
    cp $18                                        ; $4866: $FE $18
    ccf                                           ; $4868: $3F
    call nz, $F2CF                                ; $4869: $C4 $CF $F2
    rst $38                                       ; $486C: $FF
    pop af                                        ; $486D: $F1
    rst $38                                       ; $486E: $FF
    ldh [$80], a                                  ; $486F: $E0 $80
    nop                                           ; $4871: $00
    nop                                           ; $4872: $00
    nop                                           ; $4873: $00
    nop                                           ; $4874: $00
    nop                                           ; $4875: $00
    nop                                           ; $4876: $00
    nop                                           ; $4877: $00
    nop                                           ; $4878: $00
    nop                                           ; $4879: $00
    add b                                         ; $487A: $80
    nop                                           ; $487B: $00
    ret nz                                        ; $487C: $C0

    nop                                           ; $487D: $00
    ldh [$80], a                                  ; $487E: $E0 $80
    rlca                                          ; $4880: $07
    ld sp, hl                                     ; $4881: $F9
    adc a                                         ; $4882: $8F
    ld a, [c]                                     ; $4883: $F2
    rst $38                                       ; $4884: $FF
    ld h, h                                       ; $4885: $64
    ld a, [hl]                                    ; $4886: $7E
    dec b                                         ; $4887: $05
    rra                                           ; $4888: $1F
    add hl, bc                                    ; $4889: $09
    ccf                                           ; $488A: $3F
    dec bc                                        ; $488B: $0B
    ld a, a                                       ; $488C: $7F
    ld [$689F], sp                                ; $488D: $08 $9F $68
    nop                                           ; $4890: $00
    nop                                           ; $4891: $00
    rlca                                          ; $4892: $07
    nop                                           ; $4893: $00
    rra                                           ; $4894: $1F
    rlca                                          ; $4895: $07
    jr c, jr_027_48B7                             ; $4896: $38 $1F

    ld h, b                                       ; $4898: $60
    ccf                                           ; $4899: $3F
    ccf                                           ; $489A: $3F
    nop                                           ; $489B: $00
    nop                                           ; $489C: $00
    nop                                           ; $489D: $00
    nop                                           ; $489E: $00
    nop                                           ; $489F: $00
    sbc [hl]                                      ; $48A0: $9E
    ld l, c                                       ; $48A1: $69
    ld a, l                                       ; $48A2: $7D
    dec bc                                        ; $48A3: $0B
    ccf                                           ; $48A4: $3F
    dec bc                                        ; $48A5: $0B
    rra                                           ; $48A6: $1F
    add hl, bc                                    ; $48A7: $09

jr_027_48A8:
    ld a, a                                       ; $48A8: $7F
    dec b                                         ; $48A9: $05
    rst $38                                       ; $48AA: $FF
    ld h, h                                       ; $48AB: $64
    adc a                                         ; $48AC: $8F
    ld a, [c]                                     ; $48AD: $F2
    rlca                                          ; $48AE: $07
    ld sp, hl                                     ; $48AF: $F9
    rlca                                          ; $48B0: $07
    ld hl, sp-$07                                 ; $48B1: $F8 $F9
    nop                                           ; $48B3: $00
    nop                                           ; $48B4: $00
    nop                                           ; $48B5: $00
    nop                                           ; $48B6: $00

jr_027_48B7:
    nop                                           ; $48B7: $00
    nop                                           ; $48B8: $00
    nop                                           ; $48B9: $00
    nop                                           ; $48BA: $00
    nop                                           ; $48BB: $00
    nop                                           ; $48BC: $00
    nop                                           ; $48BD: $00
    nop                                           ; $48BE: $00
    nop                                           ; $48BF: $00
    rst $38                                       ; $48C0: $FF
    ldh a, [rIE]                                  ; $48C1: $F0 $FF
    pop af                                        ; $48C3: $F1
    rst $38                                       ; $48C4: $FF
    add d                                         ; $48C5: $82
    rst $38                                       ; $48C6: $FF
    inc b                                         ; $48C7: $04
    cp $18                                        ; $48C8: $FE $18
    db $FD                                        ; $48CA: $FD
    ld [c], a                                     ; $48CB: $E2
    pop af                                        ; $48CC: $F1
    ld c, $F0                                     ; $48CD: $0E $F0
    rra                                           ; $48CF: $1F
    ld b, e                                       ; $48D0: $43
    ld bc, $41E3                                  ; $48D1: $01 $E3 $41
    cp [hl]                                       ; $48D4: $BE
    ld h, e                                       ; $48D5: $63
    sbc h                                         ; $48D6: $9C
    ld a, a                                       ; $48D7: $7F
    ld b, b                                       ; $48D8: $40
    ccf                                           ; $48D9: $3F
    ld b, b                                       ; $48DA: $40
    ccf                                           ; $48DB: $3F
    inc hl                                        ; $48DC: $23
    inc e                                         ; $48DD: $1C
    inc e                                         ; $48DE: $1C
    nop                                           ; $48DF: $00
    db $10                                        ; $48E0: $10
    ldh [rNR10], a                                ; $48E1: $E0 $10
    ldh [rNR41], a                                ; $48E3: $E0 $20
    ret nz                                        ; $48E5: $C0

    jr nz, jr_027_48A8                            ; $48E6: $20 $C0

    ld b, b                                       ; $48E8: $40
    add b                                         ; $48E9: $80
    add b                                         ; $48EA: $80
    nop                                           ; $48EB: $00
    nop                                           ; $48EC: $00
    nop                                           ; $48ED: $00
    nop                                           ; $48EE: $00
    nop                                           ; $48EF: $00
    ldh a, [$1F]                                  ; $48F0: $F0 $1F
    pop af                                        ; $48F2: $F1
    ld c, $FD                                     ; $48F3: $0E $FD
    ld [c], a                                     ; $48F5: $E2
    cp $18                                        ; $48F6: $FE $18
    ccf                                           ; $48F8: $3F
    call nz, $F2CF                                ; $48F9: $C4 $CF $F2
    rst $38                                       ; $48FC: $FF
    pop af                                        ; $48FD: $F1
    rst $38                                       ; $48FE: $FF
    ldh [$67], a                                  ; $48FF: $E0 $67
    ld sp, hl                                     ; $4901: $F9
    rst $38                                       ; $4902: $FF
    sub d                                         ; $4903: $92
    sbc a                                         ; $4904: $9F
    inc b                                         ; $4905: $04
    ld e, $05                                     ; $4906: $1E $05
    rra                                           ; $4908: $1F
    add hl, bc                                    ; $4909: $09
    ccf                                           ; $490A: $3F
    dec bc                                        ; $490B: $0B
    ld a, a                                       ; $490C: $7F
    ld [$689F], sp                                ; $490D: $08 $9F $68
    nop                                           ; $4910: $00
    nop                                           ; $4911: $00
    ld [bc], a                                    ; $4912: $02
    nop                                           ; $4913: $00
    rlca                                          ; $4914: $07
    ld [bc], a                                    ; $4915: $02
    dec bc                                        ; $4916: $0B
    ld b, $0B                                     ; $4917: $06 $0B
    ld b, $09                                     ; $4919: $06 $09
    rlca                                          ; $491B: $07
    inc b                                         ; $491C: $04
    inc bc                                        ; $491D: $03
    inc b                                         ; $491E: $04
    inc bc                                        ; $491F: $03
    sbc [hl]                                      ; $4920: $9E
    ld l, c                                       ; $4921: $69
    ld a, l                                       ; $4922: $7D
    dec bc                                        ; $4923: $0B
    ccf                                           ; $4924: $3F
    dec bc                                        ; $4925: $0B
    rra                                           ; $4926: $1F
    add hl, bc                                    ; $4927: $09
    rra                                           ; $4928: $1F
    dec b                                         ; $4929: $05
    sbc a                                         ; $492A: $9F
    inc b                                         ; $492B: $04
    rst $38                                       ; $492C: $FF
    sub d                                         ; $492D: $92
    ld h, a                                       ; $492E: $67
    ld sp, hl                                     ; $492F: $F9
    ld [bc], a                                    ; $4930: $02
    ld bc, $0001                                  ; $4931: $01 $01 $00

jr_027_4934:
    nop                                           ; $4934: $00
    nop                                           ; $4935: $00

jr_027_4936:
    nop                                           ; $4936: $00
    nop                                           ; $4937: $00
    nop                                           ; $4938: $00
    nop                                           ; $4939: $00
    nop                                           ; $493A: $00
    nop                                           ; $493B: $00
    nop                                           ; $493C: $00
    nop                                           ; $493D: $00
    nop                                           ; $493E: $00
    nop                                           ; $493F: $00
    inc bc                                        ; $4940: $03
    db $FC                                        ; $4941: $FC
    inc bc                                        ; $4942: $03
    db $FC                                        ; $4943: $FC

jr_027_4944:
    adc h                                         ; $4944: $8C
    ld [hl], b                                    ; $4945: $70
    ld [hl], b                                    ; $4946: $70
    nop                                           ; $4947: $00
    nop                                           ; $4948: $00
    nop                                           ; $4949: $00
    nop                                           ; $494A: $00
    nop                                           ; $494B: $00
    nop                                           ; $494C: $00
    nop                                           ; $494D: $00
    nop                                           ; $494E: $00
    nop                                           ; $494F: $00
    rst $38                                       ; $4950: $FF
    ldh a, [rIE]                                  ; $4951: $F0 $FF
    pop af                                        ; $4953: $F1
    rst $38                                       ; $4954: $FF
    add d                                         ; $4955: $82
    rst $38                                       ; $4956: $FF
    inc b                                         ; $4957: $04
    cp $18                                        ; $4958: $FE $18
    db $FD                                        ; $495A: $FD
    ld [c], a                                     ; $495B: $E2
    pop af                                        ; $495C: $F1
    ld c, $F0                                     ; $495D: $0E $F0
    rra                                           ; $495F: $1F
    ld c, $03                                     ; $4960: $0E $03
    ld b, $03                                     ; $4962: $06 $03
    ld h, $03                                     ; $4964: $26 $03
    ld a, h                                       ; $4966: $7C
    daa                                           ; $4967: $27
    ld e, b                                       ; $4968: $58
    ccf                                           ; $4969: $3F
    ld b, b                                       ; $496A: $40
    ccf                                           ; $496B: $3F
    inc hl                                        ; $496C: $23
    inc e                                         ; $496D: $1C
    inc e                                         ; $496E: $1C
    nop                                           ; $496F: $00
    jr nz, @-$3E                                  ; $4970: $20 $C0

    jr nz, jr_027_4934                            ; $4972: $20 $C0

    jr nz, jr_027_4936                            ; $4974: $20 $C0

    ld b, b                                       ; $4976: $40
    add b                                         ; $4977: $80
    ld b, b                                       ; $4978: $40
    add b                                         ; $4979: $80
    add b                                         ; $497A: $80
    nop                                           ; $497B: $00
    nop                                           ; $497C: $00
    nop                                           ; $497D: $00
    nop                                           ; $497E: $00
    nop                                           ; $497F: $00
    ret nz                                        ; $4980: $C0

    nop                                           ; $4981: $00
    jr nz, jr_027_4944                            ; $4982: $20 $C0

    db $10                                        ; $4984: $10
    ldh [rOBP0], a                                ; $4985: $E0 $48
    or b                                          ; $4987: $B0
    ld l, b                                       ; $4988: $68
    ret nc                                        ; $4989: $D0

    ld l, b                                       ; $498A: $68
    ret nc                                        ; $498B: $D0

    ld [hl], h                                    ; $498C: $74
    ret z                                         ; $498D: $C8

    ld [hl], d                                    ; $498E: $72
    call z, $EC32                                 ; $498F: $CC $32 $EC
    ld [hl-], a                                   ; $4992: $32
    db $EC                                        ; $4993: $EC
    ld l, h                                       ; $4994: $6C
    ldh a, [$FC]                                  ; $4995: $F0 $FC
    nop                                           ; $4997: $00
    rst $38                                       ; $4998: $FF
    ld hl, sp-$01                                 ; $4999: $F8 $FF
    ld b, $CF                                     ; $499B: $06 $CF
    ld sp, $7CB3                                  ; $499D: $31 $B3 $7C
    nop                                           ; $49A0: $00
    nop                                           ; $49A1: $00
    nop                                           ; $49A2: $00
    nop                                           ; $49A3: $00
    nop                                           ; $49A4: $00
    nop                                           ; $49A5: $00
    nop                                           ; $49A6: $00
    nop                                           ; $49A7: $00
    nop                                           ; $49A8: $00
    nop                                           ; $49A9: $00

jr_027_49AA:
    add b                                         ; $49AA: $80
    nop                                           ; $49AB: $00
    ret nz                                        ; $49AC: $C0

    nop                                           ; $49AD: $00
    ldh [$80], a                                  ; $49AE: $E0 $80
    db $FD                                        ; $49B0: $FD
    ld a, [hl]                                    ; $49B1: $7E
    rst $38                                       ; $49B2: $FF
    ld a, [hl]                                    ; $49B3: $7E
    rst $38                                       ; $49B4: $FF
    inc c                                         ; $49B5: $0C
    ld e, $E1                                     ; $49B6: $1E $E1
    push hl                                       ; $49B8: $E5
    ei                                            ; $49B9: $FB
    rst $30                                       ; $49BA: $F7
    ld sp, hl                                     ; $49BB: $F9
    ei                                            ; $49BC: $FB
    db $FD                                        ; $49BD: $FD
    ei                                            ; $49BE: $FB
    db $FD                                        ; $49BF: $FD
    di                                            ; $49C0: $F3
    ld b, b                                       ; $49C1: $40
    db $FC                                        ; $49C2: $FC
    inc hl                                        ; $49C3: $23
    db $FC                                        ; $49C4: $FC
    inc de                                        ; $49C5: $13
    ld a, h                                       ; $49C6: $7C
    adc e                                         ; $49C7: $8B
    sbc [hl]                                      ; $49C8: $9E
    jp hl                                         ; $49C9: $E9


    rst $38                                       ; $49CA: $FF
    push hl                                       ; $49CB: $E5
    rst $28                                       ; $49CC: $EF
    db $F4                                        ; $49CD: $F4
    rst $28                                       ; $49CE: $EF
    db $F4                                        ; $49CF: $F4
    ret nz                                        ; $49D0: $C0

    nop                                           ; $49D1: $00
    inc a                                         ; $49D2: $3C
    ret nz                                        ; $49D3: $C0

    inc bc                                        ; $49D4: $03
    db $FC                                        ; $49D5: $FC
    nop                                           ; $49D6: $00
    rst $38                                       ; $49D7: $FF
    nop                                           ; $49D8: $00
    rst $38                                       ; $49D9: $FF
    ld hl, sp-$01                                 ; $49DA: $F8 $FF
    rst $38                                       ; $49DC: $FF
    rlca                                          ; $49DD: $07
    rrca                                          ; $49DE: $0F
    nop                                           ; $49DF: $00
    nop                                           ; $49E0: $00
    nop                                           ; $49E1: $00
    nop                                           ; $49E2: $00
    nop                                           ; $49E3: $00
    nop                                           ; $49E4: $00
    nop                                           ; $49E5: $00
    ret nz                                        ; $49E6: $C0

    nop                                           ; $49E7: $00
    jr nc, jr_027_49AA                            ; $49E8: $30 $C0

    inc c                                         ; $49EA: $0C
    ldh a, [$FE]                                  ; $49EB: $F0 $FE
    ld hl, sp-$04                                 ; $49ED: $F8 $FC
    nop                                           ; $49EF: $00
    ei                                            ; $49F0: $FB
    db $FC                                        ; $49F1: $FC
    rst $38                                       ; $49F2: $FF
    db $FC                                        ; $49F3: $FC
    ld a, [$FFFD]                                 ; $49F4: $FA $FD $FF
    db $FD                                        ; $49F7: $FD
    rst $38                                       ; $49F8: $FF
    ld sp, hl                                     ; $49F9: $F9
    db $FD                                        ; $49FA: $FD
    ei                                            ; $49FB: $FB
    rst $38                                       ; $49FC: $FF
    db $E3                                        ; $49FD: $E3
    rst $38                                       ; $49FE: $FF
    ld bc, $F2FF                                  ; $49FF: $01 $FF $F2
    rst $38                                       ; $4A02: $FF
    ld [hl-], a                                   ; $4A03: $32
    ld a, a                                       ; $4A04: $7F
    add d                                         ; $4A05: $82
    sbc a                                         ; $4A06: $9F
    ld [c], a                                     ; $4A07: $E2
    rst $28                                       ; $4A08: $EF
    ld a, [c]                                     ; $4A09: $F2
    rst $28                                       ; $4A0A: $EF
    ld a, [c]                                     ; $4A0B: $F2
    rst $38                                       ; $4A0C: $FF
    ld a, [c]                                     ; $4A0D: $F2
    rst $38                                       ; $4A0E: $FF
    db $F4                                        ; $4A0F: $F4
    jp $BD3C                                      ; $4A10: $C3 $3C $BD


    ld a, [hl]                                    ; $4A13: $7E
    cp $7F                                        ; $4A14: $FE $7F
    rst $38                                       ; $4A16: $FF
    ld a, a                                       ; $4A17: $7F
    rst $38                                       ; $4A18: $FF
    ld a, a                                       ; $4A19: $7F
    rst $38                                       ; $4A1A: $FF
    ld a, [hl]                                    ; $4A1B: $7E
    rst $38                                       ; $4A1C: $FF
    jr nc, @+$01                                  ; $4A1D: $30 $FF

    nop                                           ; $4A1F: $00
    cp $E4                                        ; $4A20: $FE $E4
    cp $64                                        ; $4A22: $FE $64
    cp $08                                        ; $4A24: $FE $08
    ld a, h                                       ; $4A26: $7C
    adc b                                         ; $4A27: $88
    db $FC                                        ; $4A28: $FC
    db $10                                        ; $4A29: $10
    ld hl, sp+$20                                 ; $4A2A: $F8 $20
    ldh a, [rLCDC]                                ; $4A2C: $F0 $40
    ldh [$80], a                                  ; $4A2E: $E0 $80
    rst $38                                       ; $4A30: $FF
    ld bc, $02FF                                  ; $4A31: $01 $FF $02
    rst $38                                       ; $4A34: $FF
    inc c                                         ; $4A35: $0C

jr_027_4A36:
    rst $38                                       ; $4A36: $FF
    ldh a, [$F0]                                  ; $4A37: $F0 $F0
    nop                                           ; $4A39: $00
    ld h, b                                       ; $4A3A: $60
    add b                                         ; $4A3B: $80
    ld c, a                                       ; $4A3C: $4F
    add b                                         ; $4A3D: $80
    sbc a                                         ; $4A3E: $9F
    rrca                                          ; $4A3F: $0F
    ret nz                                        ; $4A40: $C0

    nop                                           ; $4A41: $00
    and b                                         ; $4A42: $A0
    ld b, b                                       ; $4A43: $40
    db $10                                        ; $4A44: $10
    ldh [$88], a                                  ; $4A45: $E0 $88
    ldh a, [$C8]                                  ; $4A47: $F0 $C8
    ld [hl], b                                    ; $4A49: $70
    ret z                                         ; $4A4A: $C8

    ld [hl], b                                    ; $4A4B: $70
    sub b                                         ; $4A4C: $90
    ldh [rNR10], a                                ; $4A4D: $E0 $10
    ldh [rSCX], a                                 ; $4A4F: $E0 $43
    inc a                                         ; $4A51: $3C
    inc a                                         ; $4A52: $3C
    nop                                           ; $4A53: $00
    nop                                           ; $4A54: $00
    nop                                           ; $4A55: $00
    nop                                           ; $4A56: $00
    nop                                           ; $4A57: $00
    nop                                           ; $4A58: $00
    nop                                           ; $4A59: $00
    nop                                           ; $4A5A: $00
    nop                                           ; $4A5B: $00
    nop                                           ; $4A5C: $00
    nop                                           ; $4A5D: $00
    nop                                           ; $4A5E: $00
    nop                                           ; $4A5F: $00
    rst $30                                       ; $4A60: $F7
    ld b, b                                       ; $4A61: $40
    ld hl, sp+$27                                 ; $4A62: $F8 $27
    db $FC                                        ; $4A64: $FC
    inc de                                        ; $4A65: $13
    inc a                                         ; $4A66: $3C
    set 3, [hl]                                   ; $4A67: $CB $DE
    jp hl                                         ; $4A69: $E9


    sbc $E5                                       ; $4A6A: $DE $E5
    rst $28                                       ; $4A6C: $EF
    push af                                       ; $4A6D: $F5
    rst $28                                       ; $4A6E: $EF

jr_027_4A6F:
    db $F4                                        ; $4A6F: $F4
    nop                                           ; $4A70: $00
    nop                                           ; $4A71: $00
    ret nz                                        ; $4A72: $C0

    nop                                           ; $4A73: $00
    jr nz, jr_027_4A36                            ; $4A74: $20 $C0

    db $10                                        ; $4A76: $10
    ldh [rNR10], a                                ; $4A77: $E0 $10
    ldh [$08], a                                  ; $4A79: $E0 $08
    ldh a, [$08]                                  ; $4A7B: $F0 $08
    ldh a, [$84]                                  ; $4A7D: $F0 $84
    ld hl, sp-$3C                                 ; $4A7F: $F8 $C4
    ld a, b                                       ; $4A81: $78
    ld h, h                                       ; $4A82: $64
    jr c, jr_027_4AE9                             ; $4A83: $38 $64

    jr c, jr_027_4AEB                             ; $4A85: $38 $64

    jr c, jr_027_4AED                             ; $4A87: $38 $64

    jr c, jr_027_4ABF                             ; $4A89: $38 $34

    jr jr_027_4AC5                                ; $4A8B: $18 $38

    db $10                                        ; $4A8D: $10
    stop                                          ; $4A8E: $10 $00
    rst $38                                       ; $4A90: $FF
    ld bc, $02FF                                  ; $4A91: $01 $FF $02
    rst $38                                       ; $4A94: $FF
    dec c                                         ; $4A95: $0D
    rst $38                                       ; $4A96: $FF
    ldh a, [$F0]                                  ; $4A97: $F0 $F0
    nop                                           ; $4A99: $00
    ld h, c                                       ; $4A9A: $61
    add b                                         ; $4A9B: $80
    ld b, e                                       ; $4A9C: $43
    add c                                         ; $4A9D: $81
    add c                                         ; $4A9E: $81
    nop                                           ; $4A9F: $00
    ldh a, [rP1]                                  ; $4AA0: $F0 $00
    ld [$84F0], sp                                ; $4AA2: $08 $F0 $84
    ld hl, sp-$3C                                 ; $4AA5: $F8 $C4
    ld a, b                                       ; $4AA7: $78
    ld h, h                                       ; $4AA8: $64
    jr c, jr_027_4A6F                             ; $4AA9: $38 $C4

    ld a, b                                       ; $4AAB: $78
    adc b                                         ; $4AAC: $88
    ldh a, [rNR10]                                ; $4AAD: $F0 $10
    ldh [$E0], a                                  ; $4AAF: $E0 $E0
    nop                                           ; $4AB1: $00
    nop                                           ; $4AB2: $00
    nop                                           ; $4AB3: $00
    nop                                           ; $4AB4: $00
    nop                                           ; $4AB5: $00
    nop                                           ; $4AB6: $00
    nop                                           ; $4AB7: $00
    nop                                           ; $4AB8: $00
    nop                                           ; $4AB9: $00
    nop                                           ; $4ABA: $00
    nop                                           ; $4ABB: $00
    nop                                           ; $4ABC: $00
    nop                                           ; $4ABD: $00
    nop                                           ; $4ABE: $00

jr_027_4ABF:
    nop                                           ; $4ABF: $00
    di                                            ; $4AC0: $F3
    ld b, b                                       ; $4AC1: $40
    db $FC                                        ; $4AC2: $FC
    inc hl                                        ; $4AC3: $23
    db $FC                                        ; $4AC4: $FC

jr_027_4AC5:
    inc de                                        ; $4AC5: $13

jr_027_4AC6:
    ld a, $C9                                     ; $4AC6: $3E $C9
    rst $18                                       ; $4AC8: $DF
    jp hl                                         ; $4AC9: $E9


    rst $18                                       ; $4ACA: $DF
    db $E4                                        ; $4ACB: $E4
    rst $28                                       ; $4ACC: $EF
    db $F4                                        ; $4ACD: $F4
    rst $28                                       ; $4ACE: $EF
    db $F4                                        ; $4ACF: $F4
    add b                                         ; $4AD0: $80
    nop                                           ; $4AD1: $00
    ld [hl], b                                    ; $4AD2: $70
    add b                                         ; $4AD3: $80
    ld [$04F0], sp                                ; $4AD4: $08 $F0 $04
    ld hl, sp-$7E                                 ; $4AD7: $F8 $82
    db $FC                                        ; $4AD9: $FC
    db $C2, $7C, $61                          ; $4ADA: $C2 $7C $61

    ld a, $31                                     ; $4ADD: $3E $31
    ld e, $31                                     ; $4ADF: $1E $31
    ld e, $31                                     ; $4AE1: $1E $31
    ld e, $32                                     ; $4AE3: $1E $32
    inc e                                         ; $4AE5: $1C
    ld h, h                                       ; $4AE6: $64
    jr c, @+$3A                                   ; $4AE7: $38 $38

jr_027_4AE9:
    nop                                           ; $4AE9: $00
    nop                                           ; $4AEA: $00

jr_027_4AEB:
    nop                                           ; $4AEB: $00
    nop                                           ; $4AEC: $00

jr_027_4AED:
    nop                                           ; $4AED: $00
    nop                                           ; $4AEE: $00
    nop                                           ; $4AEF: $00
    rst $38                                       ; $4AF0: $FF
    ld bc, $02FF                                  ; $4AF1: $01 $FF $02
    rst $38                                       ; $4AF4: $FF
    inc c                                         ; $4AF5: $0C
    cp $F1                                        ; $4AF6: $FE $F1
    cp $03                                        ; $4AF8: $FE $03

jr_027_4AFA:
    ld h, [hl]                                    ; $4AFA: $66
    add e                                         ; $4AFB: $83
    ld b, e                                       ; $4AFC: $43
    add c                                         ; $4AFD: $81
    add c                                         ; $4AFE: $81
    nop                                           ; $4AFF: $00
    ret nz                                        ; $4B00: $C0

    nop                                           ; $4B01: $00
    ret nz                                        ; $4B02: $C0

    nop                                           ; $4B03: $00
    jr nz, jr_027_4AC6                            ; $4B04: $20 $C0

    db $10                                        ; $4B06: $10
    ldh [$08], a                                  ; $4B07: $E0 $08
    ldh a, [$08]                                  ; $4B09: $F0 $08
    ldh a, [rDIV]                                 ; $4B0B: $F0 $04
    ld hl, sp-$3C                                 ; $4B0D: $F8 $C4
    ld hl, sp-$0E                                 ; $4B0F: $F8 $F2
    inc a                                         ; $4B11: $3C
    ccf                                           ; $4B12: $3F
    ld c, $0E                                     ; $4B13: $0E $0E
    nop                                           ; $4B15: $00
    nop                                           ; $4B16: $00
    nop                                           ; $4B17: $00
    nop                                           ; $4B18: $00
    nop                                           ; $4B19: $00
    nop                                           ; $4B1A: $00
    nop                                           ; $4B1B: $00
    nop                                           ; $4B1C: $00
    nop                                           ; $4B1D: $00
    nop                                           ; $4B1E: $00
    nop                                           ; $4B1F: $00
    or $41                                        ; $4B20: $F6 $41
    ld hl, sp+$27                                 ; $4B22: $F8 $27
    db $FC                                        ; $4B24: $FC
    inc de                                        ; $4B25: $13
    inc a                                         ; $4B26: $3C
    set 3, a                                      ; $4B27: $CB $DF
    jp hl                                         ; $4B29: $E9


    rst $18                                       ; $4B2A: $DF
    db $E4                                        ; $4B2B: $E4
    rst $28                                       ; $4B2C: $EF
    db $F4                                        ; $4B2D: $F4
    rst $28                                       ; $4B2E: $EF
    db $F4                                        ; $4B2F: $F4
    nop                                           ; $4B30: $00
    nop                                           ; $4B31: $00
    nop                                           ; $4B32: $00
    nop                                           ; $4B33: $00
    nop                                           ; $4B34: $00
    nop                                           ; $4B35: $00
    ret nz                                        ; $4B36: $C0

    nop                                           ; $4B37: $00
    jr nc, jr_027_4AFA                            ; $4B38: $30 $C0

    ld [$04F0], sp                                ; $4B3A: $08 $F0 $04
    ld hl, sp-$3E                                 ; $4B3D: $F8 $C2
    db $FC                                        ; $4B3F: $FC
    ld [c], a                                     ; $4B40: $E2
    inc a                                         ; $4B41: $3C
    ld sp, $311E                                  ; $4B42: $31 $1E $31
    ld e, $31                                     ; $4B45: $1E $31
    ld e, $62                                     ; $4B47: $1E $62
    inc a                                         ; $4B49: $3C
    call z, $7070                                 ; $4B4A: $CC $70 $70
    nop                                           ; $4B4D: $00
    nop                                           ; $4B4E: $00
    nop                                           ; $4B4F: $00
    rst $38                                       ; $4B50: $FF
    ld bc, $02FF                                  ; $4B51: $01 $FF $02
    rst $38                                       ; $4B54: $FF
    inc c                                         ; $4B55: $0C
    cp $F1                                        ; $4B56: $FE $F1
    db $FC                                        ; $4B58: $FC
    inc bc                                        ; $4B59: $03
    ld l, h                                       ; $4B5A: $6C
    add a                                         ; $4B5B: $87
    ld c, h                                       ; $4B5C: $4C
    add a                                         ; $4B5D: $87
    add [hl]                                      ; $4B5E: $86
    inc bc                                        ; $4B5F: $03
    add b                                         ; $4B60: $80
    nop                                           ; $4B61: $00
    add b                                         ; $4B62: $80
    nop                                           ; $4B63: $00
    add b                                         ; $4B64: $80
    nop                                           ; $4B65: $00
    ld b, b                                       ; $4B66: $40
    add b                                         ; $4B67: $80
    ld b, b                                       ; $4B68: $40
    add b                                         ; $4B69: $80
    ld b, b                                       ; $4B6A: $40
    add b                                         ; $4B6B: $80
    ld b, b                                       ; $4B6C: $40
    add b                                         ; $4B6D: $80

jr_027_4B6E:
    ld b, b                                       ; $4B6E: $40
    add b                                         ; $4B6F: $80
    ld h, h                                       ; $4B70: $64
    jr c, jr_027_4BD7                             ; $4B71: $38 $64

    jr c, jr_027_4BD9                             ; $4B73: $38 $64

    jr c, jr_027_4BAB                             ; $4B75: $38 $34

    jr jr_027_4BAD                                ; $4B77: $18 $34

    jr jr_027_4B97                                ; $4B79: $18 $1C

    ld [$0008], sp                                ; $4B7B: $08 $08 $00
    nop                                           ; $4B7E: $00
    nop                                           ; $4B7F: $00
    nop                                           ; $4B80: $00
    nop                                           ; $4B81: $00
    nop                                           ; $4B82: $00
    nop                                           ; $4B83: $00
    nop                                           ; $4B84: $00
    nop                                           ; $4B85: $00
    nop                                           ; $4B86: $00
    nop                                           ; $4B87: $00
    nop                                           ; $4B88: $00
    nop                                           ; $4B89: $00
    ldh [rP1], a                                  ; $4B8A: $E0 $00
    jr jr_027_4B6E                                ; $4B8C: $18 $E0

    inc b                                         ; $4B8E: $04
    ld hl, sp+$02                                 ; $4B8F: $F8 $02
    db $FC                                        ; $4B91: $FC
    ld [c], a                                     ; $4B92: $E2
    db $FC                                        ; $4B93: $FC
    pop af                                        ; $4B94: $F1
    ld e, $99                                     ; $4B95: $1E $99

jr_027_4B97:
    ld c, $19                                     ; $4B97: $0E $19
    ld c, $32                                     ; $4B99: $0E $32
    inc e                                         ; $4B9B: $1C
    inc e                                         ; $4B9C: $1C
    nop                                           ; $4B9D: $00
    nop                                           ; $4B9E: $00
    nop                                           ; $4B9F: $00
    rst $38                                       ; $4BA0: $FF
    ld bc, $02FF                                  ; $4BA1: $01 $FF $02
    rst $38                                       ; $4BA4: $FF
    inc c                                         ; $4BA5: $0C
    cp $F1                                        ; $4BA6: $FE $F1
    or $03                                        ; $4BA8: $F6 $03
    ld h, e                                       ; $4BAA: $63

jr_027_4BAB:
    add c                                         ; $4BAB: $81
    ld b, e                                       ; $4BAC: $43

jr_027_4BAD:
    add c                                         ; $4BAD: $81
    add [hl]                                      ; $4BAE: $86
    inc bc                                        ; $4BAF: $03
    ret nz                                        ; $4BB0: $C0

    nop                                           ; $4BB1: $00
    ret nz                                        ; $4BB2: $C0

    nop                                           ; $4BB3: $00
    jr nz, @-$3E                                  ; $4BB4: $20 $C0

    jr nz, @-$3E                                  ; $4BB6: $20 $C0

    db $10                                        ; $4BB8: $10
    ldh [rNR10], a                                ; $4BB9: $E0 $10
    ldh [rNR10], a                                ; $4BBB: $E0 $10
    ldh [rNR41], a                                ; $4BBD: $E0 $20
    ret nz                                        ; $4BBF: $C0

    inc a                                         ; $4BC0: $3C
    rlca                                          ; $4BC1: $07
    ld a, b                                       ; $4BC2: $78
    ccf                                           ; $4BC3: $3F
    inc hl                                        ; $4BC4: $23
    inc e                                         ; $4BC5: $1C
    inc e                                         ; $4BC6: $1C
    nop                                           ; $4BC7: $00
    nop                                           ; $4BC8: $00
    nop                                           ; $4BC9: $00
    nop                                           ; $4BCA: $00
    nop                                           ; $4BCB: $00
    nop                                           ; $4BCC: $00
    nop                                           ; $4BCD: $00
    nop                                           ; $4BCE: $00
    nop                                           ; $4BCF: $00
    ld b, b                                       ; $4BD0: $40
    add b                                         ; $4BD1: $80
    add b                                         ; $4BD2: $80
    nop                                           ; $4BD3: $00
    nop                                           ; $4BD4: $00
    nop                                           ; $4BD5: $00
    nop                                           ; $4BD6: $00

jr_027_4BD7:
    nop                                           ; $4BD7: $00
    nop                                           ; $4BD8: $00

jr_027_4BD9:
    nop                                           ; $4BD9: $00
    nop                                           ; $4BDA: $00
    nop                                           ; $4BDB: $00
    nop                                           ; $4BDC: $00
    nop                                           ; $4BDD: $00
    nop                                           ; $4BDE: $00
    nop                                           ; $4BDF: $00
    sbc a                                         ; $4BE0: $9F
    rrca                                          ; $4BE1: $0F
    ld c, a                                       ; $4BE2: $4F
    add b                                         ; $4BE3: $80
    ld h, b                                       ; $4BE4: $60
    add b                                         ; $4BE5: $80
    db $FC                                        ; $4BE6: $FC
    nop                                           ; $4BE7: $00
    rst $38                                       ; $4BE8: $FF
    ld hl, sp-$01                                 ; $4BE9: $F8 $FF
    ld b, $CF                                     ; $4BEB: $06 $CF
    ld sp, $7CB3                                  ; $4BED: $31 $B3 $7C
    db $10                                        ; $4BF0: $10
    ldh [$90], a                                  ; $4BF1: $E0 $90
    ldh [$C8], a                                  ; $4BF3: $E0 $C8
    ld [hl], b                                    ; $4BF5: $70
    ret z                                         ; $4BF6: $C8

    ld [hl], b                                    ; $4BF7: $70
    adc b                                         ; $4BF8: $88
    ldh a, [$90]                                  ; $4BF9: $F0 $90
    ld h, b                                       ; $4BFB: $60
    ldh [rP1], a                                  ; $4BFC: $E0 $00
    ldh [$80], a                                  ; $4BFE: $E0 $80

Call_027_4C00:
    ldh a, [rLCDC]                                ; $4C00: $F0 $40
    ld hl, sp+$20                                 ; $4C02: $F8 $20
    db $FC                                        ; $4C04: $FC
    db $10                                        ; $4C05: $10
    ld a, h                                       ; $4C06: $7C
    adc b                                         ; $4C07: $88
    sbc [hl]                                      ; $4C08: $9E
    add sp, -$02                                  ; $4C09: $E8 $FE
    db $E4                                        ; $4C0B: $E4
    rst $28                                       ; $4C0C: $EF
    db $F4                                        ; $4C0D: $F4
    rst $28                                       ; $4C0E: $EF
    db $F4                                        ; $4C0F: $F4
    rst $38                                       ; $4C10: $FF
    db $E4                                        ; $4C11: $E4
    rst $38                                       ; $4C12: $FF
    ld h, h                                       ; $4C13: $64
    rst $38                                       ; $4C14: $FF
    add hl, bc                                    ; $4C15: $09
    ld a, [hl]                                    ; $4C16: $7E
    adc c                                         ; $4C17: $89
    db $FC                                        ; $4C18: $FC
    inc de                                        ; $4C19: $13
    db $FC                                        ; $4C1A: $FC
    inc hl                                        ; $4C1B: $23
    db $FC                                        ; $4C1C: $FC

jr_027_4C1D:
    ld b, e                                       ; $4C1D: $43
    di                                            ; $4C1E: $F3
    add b                                         ; $4C1F: $80
    rst $38                                       ; $4C20: $FF
    ld bc, $02FF                                  ; $4C21: $01 $FF $02
    rst $38                                       ; $4C24: $FF
    inc c                                         ; $4C25: $0C
    rst $38                                       ; $4C26: $FF
    ldh a, [$FC]                                  ; $4C27: $F0 $FC
    nop                                           ; $4C29: $00
    ld l, h                                       ; $4C2A: $6C
    ldh a, [$32]                                  ; $4C2B: $F0 $32
    db $EC                                        ; $4C2D: $EC
    ld [hl-], a                                   ; $4C2E: $32
    db $EC                                        ; $4C2F: $EC
    ldh [rP1], a                                  ; $4C30: $E0 $00
    ret nz                                        ; $4C32: $C0

    nop                                           ; $4C33: $00
    add b                                         ; $4C34: $80
    nop                                           ; $4C35: $00
    nop                                           ; $4C36: $00
    nop                                           ; $4C37: $00
    nop                                           ; $4C38: $00
    nop                                           ; $4C39: $00
    nop                                           ; $4C3A: $00
    nop                                           ; $4C3B: $00
    nop                                           ; $4C3C: $00
    nop                                           ; $4C3D: $00
    nop                                           ; $4C3E: $00
    nop                                           ; $4C3F: $00
    add c                                         ; $4C40: $81
    nop                                           ; $4C41: $00
    ld b, e                                       ; $4C42: $43
    add c                                         ; $4C43: $81
    ld h, c                                       ; $4C44: $61
    add b                                         ; $4C45: $80
    db $FC                                        ; $4C46: $FC
    nop                                           ; $4C47: $00
    rst $38                                       ; $4C48: $FF
    ld hl, sp-$01                                 ; $4C49: $F8 $FF
    ld b, $CF                                     ; $4C4B: $06 $CF
    ld sp, $7CB3                                  ; $4C4D: $31 $B3 $7C
    db $10                                        ; $4C50: $10
    ldh [$88], a                                  ; $4C51: $E0 $88
    ldh a, [$C4]                                  ; $4C53: $F0 $C4
    ld a, b                                       ; $4C55: $78
    ld h, h                                       ; $4C56: $64
    jr c, jr_027_4C1D                             ; $4C57: $38 $C4

    ld a, b                                       ; $4C59: $78
    add h                                         ; $4C5A: $84
    ld a, b                                       ; $4C5B: $78
    ret z                                         ; $4C5C: $C8

    jr nc, @-$0E                                  ; $4C5D: $30 $F0

    add b                                         ; $4C5F: $80
    rst $38                                       ; $4C60: $FF
    db $E4                                        ; $4C61: $E4
    rst $38                                       ; $4C62: $FF
    ld h, l                                       ; $4C63: $65
    cp $09                                        ; $4C64: $FE $09
    ld a, [hl]                                    ; $4C66: $7E
    adc c                                         ; $4C67: $89
    db $FC                                        ; $4C68: $FC
    inc de                                        ; $4C69: $13
    db $FC                                        ; $4C6A: $FC
    inc hl                                        ; $4C6B: $23
    ld hl, sp+$47                                 ; $4C6C: $F8 $47
    rst $30                                       ; $4C6E: $F7
    add b                                         ; $4C6F: $80
    add c                                         ; $4C70: $81
    nop                                           ; $4C71: $00
    ld b, e                                       ; $4C72: $43
    add c                                         ; $4C73: $81
    ld h, [hl]                                    ; $4C74: $66
    add e                                         ; $4C75: $83
    cp $03                                        ; $4C76: $FE $03
    rst $38                                       ; $4C78: $FF
    ld hl, sp-$01                                 ; $4C79: $F8 $FF
    ld b, $CF                                     ; $4C7B: $06 $CF
    ld sp, $7CB3                                  ; $4C7D: $31 $B3 $7C
    call nz, $04F8                                ; $4C80: $C4 $F8 $04
    ld hl, sp+$08                                 ; $4C83: $F8 $08
    ldh a, [$08]                                  ; $4C85: $F0 $08
    ldh a, [rNR10]                                ; $4C87: $F0 $10
    ldh [$A0], a                                  ; $4C89: $E0 $A0
    ld b, b                                       ; $4C8B: $40
    ret nz                                        ; $4C8C: $C0

    nop                                           ; $4C8D: $00
    ldh [$80], a                                  ; $4C8E: $E0 $80
    rst $38                                       ; $4C90: $FF
    db $E4                                        ; $4C91: $E4
    rst $38                                       ; $4C92: $FF
    ld h, h                                       ; $4C93: $64
    rst $38                                       ; $4C94: $FF
    ld [$897F], sp                                ; $4C95: $08 $7F $89
    cp $11                                        ; $4C98: $FE $11
    db $FC                                        ; $4C9A: $FC
    inc hl                                        ; $4C9B: $23
    db $FC                                        ; $4C9C: $FC
    ld b, e                                       ; $4C9D: $43
    di                                            ; $4C9E: $F3
    add b                                         ; $4C9F: $80
    add [hl]                                      ; $4CA0: $86
    inc bc                                        ; $4CA1: $03

jr_027_4CA2:
    ld c, h                                       ; $4CA2: $4C
    add a                                         ; $4CA3: $87
    ld l, h                                       ; $4CA4: $6C
    add a                                         ; $4CA5: $87
    db $FC                                        ; $4CA6: $FC
    inc bc                                        ; $4CA7: $03
    rst $38                                       ; $4CA8: $FF
    ld hl, sp-$01                                 ; $4CA9: $F8 $FF
    ld b, $CF                                     ; $4CAB: $06 $CF
    ld sp, $7CB3                                  ; $4CAD: $31 $B3 $7C
    ld b, b                                       ; $4CB0: $40
    add b                                         ; $4CB1: $80
    ld b, b                                       ; $4CB2: $40
    add b                                         ; $4CB3: $80
    ld b, b                                       ; $4CB4: $40
    add b                                         ; $4CB5: $80
    ld b, b                                       ; $4CB6: $40
    add b                                         ; $4CB7: $80
    ld b, b                                       ; $4CB8: $40
    add b                                         ; $4CB9: $80
    add b                                         ; $4CBA: $80
    nop                                           ; $4CBB: $00
    ret nz                                        ; $4CBC: $C0

    nop                                           ; $4CBD: $00
    ldh [$80], a                                  ; $4CBE: $E0 $80
    rst $38                                       ; $4CC0: $FF
    db $E4                                        ; $4CC1: $E4
    rst $38                                       ; $4CC2: $FF
    ld h, h                                       ; $4CC3: $64
    rst $38                                       ; $4CC4: $FF
    ld [$897F], sp                                ; $4CC5: $08 $7F $89
    db $FC                                        ; $4CC8: $FC
    inc de                                        ; $4CC9: $13
    db $FC                                        ; $4CCA: $FC
    inc hl                                        ; $4CCB: $23
    ld hl, sp+$47                                 ; $4CCC: $F8 $47
    or $81                                        ; $4CCE: $F6 $81
    add [hl]                                      ; $4CD0: $86
    inc bc                                        ; $4CD1: $03
    ld b, e                                       ; $4CD2: $43
    add c                                         ; $4CD3: $81
    ld h, e                                       ; $4CD4: $63
    add c                                         ; $4CD5: $81
    cp $03                                        ; $4CD6: $FE $03
    rst $38                                       ; $4CD8: $FF
    ld hl, sp-$01                                 ; $4CD9: $F8 $FF
    ld b, $CF                                     ; $4CDB: $06 $CF
    ld sp, $7CB3                                  ; $4CDD: $31 $B3 $7C
    jr nz, jr_027_4CA2                            ; $4CE0: $20 $C0

    db $10                                        ; $4CE2: $10
    ldh [rNR10], a                                ; $4CE3: $E0 $10
    ldh [rNR10], a                                ; $4CE5: $E0 $10
    ldh [rNR41], a                                ; $4CE7: $E0 $20
    ret nz                                        ; $4CE9: $C0

    and b                                         ; $4CEA: $A0
    ld b, b                                       ; $4CEB: $40
    ret nz                                        ; $4CEC: $C0

    nop                                           ; $4CED: $00
    ldh [$80], a                                  ; $4CEE: $E0 $80
    ldh a, [rLCDC]                                ; $4CF0: $F0 $40
    di                                            ; $4CF2: $F3
    jr nz, jr_027_4D71                            ; $4CF3: $20 $7C

    and e                                         ; $4CF5: $A3
    rst $38                                       ; $4CF6: $FF
    sub b                                         ; $4CF7: $90
    cp e                                          ; $4CF8: $BB
    rst $10                                       ; $4CF9: $D7
    db $FC                                        ; $4CFA: $FC
    rst $10                                       ; $4CFB: $D7
    db $FC                                        ; $4CFC: $FC
    rla                                           ; $4CFD: $17
    ld hl, sp+$17                                 ; $4CFE: $F8 $17
    nop                                           ; $4D00: $00
    nop                                           ; $4D01: $00
    add b                                         ; $4D02: $80
    nop                                           ; $4D03: $00
    ld b, b                                       ; $4D04: $40
    add b                                         ; $4D05: $80
    cp b                                          ; $4D06: $B8
    ld b, b                                       ; $4D07: $40
    db $F4                                        ; $4D08: $F4
    ld [$F4FA], sp                                ; $4D09: $08 $FA $F4
    ld bc, $01FE                                  ; $4D0C: $01 $FE $01
    cp $00                                        ; $4D0F: $FE $00
    nop                                           ; $4D11: $00
    nop                                           ; $4D12: $00
    nop                                           ; $4D13: $00
    nop                                           ; $4D14: $00
    nop                                           ; $4D15: $00
    nop                                           ; $4D16: $00
    nop                                           ; $4D17: $00
    jr c, jr_027_4D1A                             ; $4D18: $38 $00

jr_027_4D1A:
    ld a, h                                       ; $4D1A: $7C
    jr c, jr_027_4D81                             ; $4D1B: $38 $64

    jr c, jr_027_4D57                             ; $4D1D: $38 $38

    nop                                           ; $4D1F: $00
    nop                                           ; $4D20: $00
    nop                                           ; $4D21: $00
    nop                                           ; $4D22: $00
    nop                                           ; $4D23: $00
    nop                                           ; $4D24: $00
    nop                                           ; $4D25: $00
    nop                                           ; $4D26: $00
    nop                                           ; $4D27: $00
    inc e                                         ; $4D28: $1C
    nop                                           ; $4D29: $00
    ld a, $1C                                     ; $4D2A: $3E $1C
    ld [hl+], a                                   ; $4D2C: $22
    inc e                                         ; $4D2D: $1C
    inc e                                         ; $4D2E: $1C
    nop                                           ; $4D2F: $00
    nop                                           ; $4D30: $00
    nop                                           ; $4D31: $00
    nop                                           ; $4D32: $00
    nop                                           ; $4D33: $00
    nop                                           ; $4D34: $00
    nop                                           ; $4D35: $00
    nop                                           ; $4D36: $00
    nop                                           ; $4D37: $00
    inc e                                         ; $4D38: $1C
    nop                                           ; $4D39: $00
    ld a, $1C                                     ; $4D3A: $3E $1C
    ld a, $1C                                     ; $4D3C: $3E $1C
    inc e                                         ; $4D3E: $1C
    nop                                           ; $4D3F: $00
    ld a, h                                       ; $4D40: $7C
    jr c, jr_027_4DBF                             ; $4D41: $38 $7C

    jr c, jr_027_4DBD                             ; $4D43: $38 $78

    db $10                                        ; $4D45: $10
    jr c, jr_027_4D48                             ; $4D46: $38 $00

jr_027_4D48:
    inc a                                         ; $4D48: $3C
    nop                                           ; $4D49: $00
    jr c, jr_027_4D4C                             ; $4D4A: $38 $00

jr_027_4D4C:
    nop                                           ; $4D4C: $00
    nop                                           ; $4D4D: $00
    nop                                           ; $4D4E: $00
    nop                                           ; $4D4F: $00
    ld a, $1C                                     ; $4D50: $3E $1C
    ld a, $1C                                     ; $4D52: $3E $1C
    ld e, $08                                     ; $4D54: $1E $08
    inc e                                         ; $4D56: $1C

jr_027_4D57:
    nop                                           ; $4D57: $00
    ld a, $00                                     ; $4D58: $3E $00
    ld [hl], $00                                  ; $4D5A: $36 $00
    nop                                           ; $4D5C: $00
    nop                                           ; $4D5D: $00
    nop                                           ; $4D5E: $00
    nop                                           ; $4D5F: $00
    nop                                           ; $4D60: $00
    nop                                           ; $4D61: $00
    ld sp, $4F00                                  ; $4D62: $31 $00 $4F
    ld sp, $7B87                                  ; $4D65: $31 $87 $7B
    add a                                         ; $4D68: $87
    ld a, e                                       ; $4D69: $7B
    sub a                                         ; $4D6A: $97
    ld l, e                                       ; $4D6B: $6B
    adc a                                         ; $4D6C: $8F
    ld [hl], c                                    ; $4D6D: $71
    adc l                                         ; $4D6E: $8D
    ld [hl], d                                    ; $4D6F: $72
    nop                                           ; $4D70: $00

jr_027_4D71:
    nop                                           ; $4D71: $00
    db $FC                                        ; $4D72: $FC
    nop                                           ; $4D73: $00
    cp $FC                                        ; $4D74: $FE $FC
    rst $38                                       ; $4D76: $FF
    xor $FF                                       ; $4D77: $EE $FF
    or $FF                                        ; $4D79: $F6 $FF
    and d                                         ; $4D7B: $A2
    and a                                         ; $4D7C: $A7
    ld e, d                                       ; $4D7D: $5A
    ld c, [hl]                                    ; $4D7E: $4E
    or b                                          ; $4D7F: $B0
    adc [hl]                                      ; $4D80: $8E

jr_027_4D81:
    ld [hl], c                                    ; $4D81: $71
    sbc a                                         ; $4D82: $9F
    ld h, b                                       ; $4D83: $60
    sbc a                                         ; $4D84: $9F
    ld h, b                                       ; $4D85: $60
    sbc a                                         ; $4D86: $9F
    ld h, e                                       ; $4D87: $63
    adc a                                         ; $4D88: $8F
    ld [hl], d                                    ; $4D89: $72
    xor a                                         ; $4D8A: $AF
    ld d, b                                       ; $4D8B: $50
    adc h                                         ; $4D8C: $8C
    ld [hl], e                                    ; $4D8D: $73
    xor h                                         ; $4D8E: $AC
    ld d, e                                       ; $4D8F: $53
    ld c, h                                       ; $4D90: $4C
    or b                                          ; $4D91: $B0
    inc b                                         ; $4D92: $04
    ld hl, sp-$08                                 ; $4D93: $F8 $F8
    nop                                           ; $4D95: $00
    db $FC                                        ; $4D96: $FC
    ld hl, sp-$04                                 ; $4D97: $F8 $FC
    ldh a, [$FE]                                  ; $4D99: $F0 $FE
    ldh a, [$FA]                                  ; $4D9B: $F0 $FA
    ld [hl], h                                    ; $4D9D: $74
    db $FC                                        ; $4D9E: $FC
    nop                                           ; $4D9F: $00
    cp e                                          ; $4DA0: $BB
    ld b, b                                       ; $4DA1: $40
    or e                                          ; $4DA2: $B3
    ld b, c                                       ; $4DA3: $41
    or a                                          ; $4DA4: $B7
    ld b, e                                       ; $4DA5: $43
    rst $20                                       ; $4DA6: $E7
    inc bc                                        ; $4DA7: $03
    ld c, a                                       ; $4DA8: $4F
    inc b                                         ; $4DA9: $04
    rrca                                          ; $4DAA: $0F
    ld bc, $070F                                  ; $4DAB: $01 $0F $07
    rlca                                          ; $4DAE: $07
    nop                                           ; $4DAF: $00
    ld hl, sp+$00                                 ; $4DB0: $F8 $00
    ld hl, sp-$10                                 ; $4DB2: $F8 $F0
    db $FC                                        ; $4DB4: $FC
    ret c                                         ; $4DB5: $D8

    db $FC                                        ; $4DB6: $FC
    or b                                          ; $4DB7: $B0
    cp $0C                                        ; $4DB8: $FE $0C
    cp $BC                                        ; $4DBA: $FE $BC
    db $FC                                        ; $4DBC: $FC

jr_027_4DBD:
    add b                                         ; $4DBD: $80
    ret nz                                        ; $4DBE: $C0

jr_027_4DBF:
    nop                                           ; $4DBF: $00
    nop                                           ; $4DC0: $00
    nop                                           ; $4DC1: $00
    rrca                                          ; $4DC2: $0F
    nop                                           ; $4DC3: $00
    rra                                           ; $4DC4: $1F
    dec c                                         ; $4DC5: $0D
    ccf                                           ; $4DC6: $3F
    rra                                           ; $4DC7: $1F
    ccf                                           ; $4DC8: $3F
    ld e, $3F                                     ; $4DC9: $1E $3F
    ld e, $3F                                     ; $4DCB: $1E $3F
    inc e                                         ; $4DCD: $1C
    ld e, h                                       ; $4DCE: $5C
    dec hl                                        ; $4DCF: $2B
    nop                                           ; $4DD0: $00
    nop                                           ; $4DD1: $00
    ldh [rP1], a                                  ; $4DD2: $E0 $00
    ld hl, sp-$20                                 ; $4DD4: $F8 $E0
    db $FC                                        ; $4DD6: $FC
    ld hl, sp-$04                                 ; $4DD7: $F8 $FC
    ld hl, sp-$04                                 ; $4DD9: $F8 $FC
    ld hl, sp-$02                                 ; $4DDB: $F8 $FE
    cp b                                          ; $4DDD: $B8
    cp c                                          ; $4DDE: $B9
    ld d, [hl]                                    ; $4DDF: $56
    ld l, d                                       ; $4DE0: $6A
    dec d                                         ; $4DE1: $15
    ld e, d                                       ; $4DE2: $5A
    dec h                                         ; $4DE3: $25
    ld c, h                                       ; $4DE4: $4C
    inc sp                                        ; $4DE5: $33
    ld e, a                                       ; $4DE6: $5F
    inc l                                         ; $4DE7: $2C
    ld e, a                                       ; $4DE8: $5F
    daa                                           ; $4DE9: $27
    ld e, a                                       ; $4DEA: $5F
    daa                                           ; $4DEB: $27
    ld d, a                                       ; $4DEC: $57
    dec hl                                        ; $4DED: $2B
    ld d, a                                       ; $4DEE: $57
    jr z, @+$57                                   ; $4DEF: $28 $55

    xor d                                         ; $4DF1: $AA
    ld e, e                                       ; $4DF2: $5B
    and h                                         ; $4DF3: $A4
    inc sp                                        ; $4DF4: $33
    call z, $26F9                                 ; $4DF5: $CC $F9 $26
    ld sp, hl                                     ; $4DF8: $F9
    or $F9                                        ; $4DF9: $F6 $F9
    sub [hl]                                      ; $4DFB: $96
    sbc c                                         ; $4DFC: $99
    ld h, [hl]                                    ; $4DFD: $66
    sub c                                         ; $4DFE: $91
    ld l, [hl]                                    ; $4DFF: $6E
    ld e, a                                       ; $4E00: $5F
    jr nz, @+$51                                  ; $4E01: $20 $4F

    scf                                           ; $4E03: $37
    ld c, a                                       ; $4E04: $4F
    inc sp                                        ; $4E05: $33
    ld e, a                                       ; $4E06: $5F
    ld hl, $062F                                  ; $4E07: $21 $2F $06
    rrca                                          ; $4E0A: $0F
    rlca                                          ; $4E0B: $07
    rlca                                          ; $4E0C: $07
    inc bc                                        ; $4E0D: $03
    rlca                                          ; $4E0E: $07
    nop                                           ; $4E0F: $00
    pop af                                        ; $4E10: $F1
    ld c, $F1                                     ; $4E11: $0E $F1
    adc $F2                                       ; $4E13: $CE $F2
    db $EC                                        ; $4E15: $EC
    ld a, [$F4A4]                                 ; $4E16: $FA $A4 $F4
    ld h, b                                       ; $4E19: $60
    ldh [rP1], a                                  ; $4E1A: $E0 $00
    ldh [rLCDC], a                                ; $4E1C: $E0 $40
    ret nz                                        ; $4E1E: $C0

    nop                                           ; $4E1F: $00
    rrca                                          ; $4E20: $0F
    nop                                           ; $4E21: $00
    rra                                           ; $4E22: $1F
    dec c                                         ; $4E23: $0D
    ccf                                           ; $4E24: $3F
    rra                                           ; $4E25: $1F
    ccf                                           ; $4E26: $3F
    ld e, $3F                                     ; $4E27: $1E $3F
    ld e, $7F                                     ; $4E29: $1E $7F
    inc e                                         ; $4E2B: $1C
    sbc h                                         ; $4E2C: $9C
    ld l, e                                       ; $4E2D: $6B
    xor d                                         ; $4E2E: $AA
    ld d, l                                       ; $4E2F: $55
    ldh [rP1], a                                  ; $4E30: $E0 $00
    ld hl, sp-$20                                 ; $4E32: $F8 $E0
    db $FC                                        ; $4E34: $FC
    ld hl, sp-$04                                 ; $4E35: $F8 $FC
    ld hl, sp-$04                                 ; $4E37: $F8 $FC
    ld hl, sp-$02                                 ; $4E39: $F8 $FE
    cp b                                          ; $4E3B: $B8
    cp c                                          ; $4E3C: $B9
    ld d, [hl]                                    ; $4E3D: $56
    ld d, l                                       ; $4E3E: $55
    xor d                                         ; $4E3F: $AA
    ld e, c                                       ; $4E40: $59
    and [hl]                                      ; $4E41: $A6
    add hl, sp                                    ; $4E42: $39
    add $F9                                       ; $4E43: $C6 $F9
    ld [hl], $FD                                  ; $4E45: $36 $FD
    jp c, $CAFD                                   ; $4E47: $DA $FD $CA

    db $FD                                        ; $4E4A: $FD
    jp nz, $DAE5                                  ; $4E4B: $C2 $E5 $DA

    push hl                                       ; $4E4E: $E5
    ld a, [de]                                    ; $4E4F: $1A
    ld sp, hl                                     ; $4E50: $F9
    ld b, $F2                                     ; $4E51: $06 $F2
    db $EC                                        ; $4E53: $EC
    ld a, [$FC74]                                 ; $4E54: $FA $74 $FC

jr_027_4E57:
    ld b, b                                       ; $4E57: $40
    ld hl, sp+$30                                 ; $4E58: $F8 $30
    db $FC                                        ; $4E5A: $FC
    ld a, b                                       ; $4E5B: $78
    db $FC                                        ; $4E5C: $FC
    jr c, jr_027_4E57                             ; $4E5D: $38 $F8

    nop                                           ; $4E5F: $00
    nop                                           ; $4E60: $00
    nop                                           ; $4E61: $00
    rlca                                          ; $4E62: $07
    nop                                           ; $4E63: $00
    rrca                                          ; $4E64: $0F
    rlca                                          ; $4E65: $07
    rra                                           ; $4E66: $1F
    rrca                                          ; $4E67: $0F
    rra                                           ; $4E68: $1F
    rlca                                          ; $4E69: $07
    daa                                           ; $4E6A: $27
    add hl, de                                    ; $4E6B: $19
    ld c, e                                       ; $4E6C: $4B
    inc [hl]                                      ; $4E6D: $34
    sbc l                                         ; $4E6E: $9D
    ld h, d                                       ; $4E6F: $62
    nop                                           ; $4E70: $00
    nop                                           ; $4E71: $00
    ldh [rP1], a                                  ; $4E72: $E0 $00
    ldh a, [$E0]                                  ; $4E74: $F0 $E0
    ld hl, sp-$10                                 ; $4E76: $F8 $F0
    ld hl, sp-$20                                 ; $4E78: $F8 $E0
    db $E4                                        ; $4E7A: $E4
    sbc b                                         ; $4E7B: $98
    call nz, $A838                                ; $4E7C: $C4 $38 $A8
    ld d, b                                       ; $4E7F: $50
    sbc l                                         ; $4E80: $9D

jr_027_4E81:
    ld h, d                                       ; $4E81: $62
    sbc l                                         ; $4E82: $9D

jr_027_4E83:
    ld h, d                                       ; $4E83: $62
    sbc l                                         ; $4E84: $9D
    ld h, d                                       ; $4E85: $62
    sub l                                         ; $4E86: $95
    ld l, d                                       ; $4E87: $6A
    or a                                          ; $4E88: $B7
    ld c, b                                       ; $4E89: $48
    or a                                          ; $4E8A: $B7
    ld c, b                                       ; $4E8B: $48
    and a                                         ; $4E8C: $A7
    ld e, b                                       ; $4E8D: $58
    xor a                                         ; $4E8E: $AF
    ld d, c                                       ; $4E8F: $51
    xor b                                         ; $4E90: $A8
    ld d, b                                       ; $4E91: $50
    xor b                                         ; $4E92: $A8
    ld d, b                                       ; $4E93: $50
    xor b                                         ; $4E94: $A8
    ld d, b                                       ; $4E95: $50
    xor b                                         ; $4E96: $A8
    ld d, b                                       ; $4E97: $50
    add sp, $10                                   ; $4E98: $E8 $10
    db $E4                                        ; $4E9A: $E4
    jr jr_027_4E81                                ; $4E9B: $18 $E4

    jr jr_027_4E83                                ; $4E9D: $18 $E4

    sbc b                                         ; $4E9F: $98
    xor a                                         ; $4EA0: $AF
    ld d, b                                       ; $4EA1: $50
    cp a                                          ; $4EA2: $BF
    ld b, c                                       ; $4EA3: $41
    cp a                                          ; $4EA4: $BF
    ld b, e                                       ; $4EA5: $43
    ld e, a                                       ; $4EA6: $5F
    ld h, $3F                                     ; $4EA7: $26 $3F
    nop                                           ; $4EA9: $00
    rrca                                          ; $4EAA: $0F
    inc bc                                        ; $4EAB: $03
    rlca                                          ; $4EAC: $07
    inc bc                                        ; $4EAD: $03
    rlca                                          ; $4EAE: $07
    nop                                           ; $4EAF: $00
    ld a, [c]                                     ; $4EB0: $F2
    inc c                                         ; $4EB1: $0C
    ld a, [c]                                     ; $4EB2: $F2
    call z, $A4FA                                 ; $4EB3: $CC $FA $A4
    ld a, [$FC64]                                 ; $4EB6: $FA $64 $FC
    ld h, b                                       ; $4EB9: $60
    ldh a, [rP1]                                  ; $4EBA: $F0 $00
    ldh a, [$60]                                  ; $4EBC: $F0 $60
    ldh a, [rP1]                                  ; $4EBE: $F0 $00
    ldh [rP1], a                                  ; $4EC0: $E0 $00
    ldh a, [$E0]                                  ; $4EC2: $F0 $E0
    ld hl, sp-$10                                 ; $4EC4: $F8 $F0
    ld hl, sp-$20                                 ; $4EC6: $F8 $E0
    db $EC                                        ; $4EC8: $EC
    sub b                                         ; $4EC9: $90
    call nz, $A438                                ; $4ECA: $C4 $38 $A4
    ld e, b                                       ; $4ECD: $58
    and h                                         ; $4ECE: $A4
    ld e, b                                       ; $4ECF: $58
    and h                                         ; $4ED0: $A4
    ld e, b                                       ; $4ED1: $58
    and h                                         ; $4ED2: $A4
    ld e, b                                       ; $4ED3: $58
    or h                                          ; $4ED4: $B4
    ld c, b                                       ; $4ED5: $48
    db $F4                                        ; $4ED6: $F4
    ld [$0CF2], sp                                ; $4ED7: $08 $F2 $0C
    ld a, [c]                                     ; $4EDA: $F2
    inc c                                         ; $4EDB: $0C
    ld a, [$FA04]                                 ; $4EDC: $FA $04 $FA
    add h                                         ; $4EDF: $84
    ld a, [$FA04]                                 ; $4EE0: $FA $04 $FA
    ld b, h                                       ; $4EE3: $44
    ld a, [$F664]                                 ; $4EE4: $FA $64 $F6
    ld l, b                                       ; $4EE7: $68
    db $FC                                        ; $4EE8: $FC
    ld h, b                                       ; $4EE9: $60
    db $FC                                        ; $4EEA: $FC
    ld [$70FC], sp                                ; $4EEB: $08 $FC $70
    ld hl, sp+$00                                 ; $4EEE: $F8 $00
    nop                                           ; $4EF0: $00
    nop                                           ; $4EF1: $00
    inc bc                                        ; $4EF2: $03
    nop                                           ; $4EF3: $00
    rlca                                          ; $4EF4: $07
    inc bc                                        ; $4EF5: $03
    rra                                           ; $4EF6: $1F
    rlca                                          ; $4EF7: $07
    cpl                                           ; $4EF8: $2F
    rla                                           ; $4EF9: $17
    ld b, a                                       ; $4EFA: $47
    dec sp                                        ; $4EFB: $3B
    ld e, e                                       ; $4EFC: $5B
    dec h                                         ; $4EFD: $25
    xor a                                         ; $4EFE: $AF
    ld d, b                                       ; $4EFF: $50
    cp $00                                        ; $4F00: $FE $00
    rst $38                                       ; $4F02: $FF
    cp $FE                                        ; $4F03: $FE $FE
    db $FC                                        ; $4F05: $FC
    rst $38                                       ; $4F06: $FF
    cp $FF                                        ; $4F07: $FE $FF
    and $E7                                       ; $4F09: $E6 $E7
    db $DA, $D6, $68                           ; $4F0B: $DA $D6 $68

    ld d, h                                       ; $4F0E: $54
    xor b                                         ; $4F0F: $A8
    xor a                                         ; $4F10: $AF
    ld d, b                                       ; $4F11: $50
    and a                                         ; $4F12: $A7
    ld e, b                                       ; $4F13: $58
    and e                                         ; $4F14: $A3
    ld e, h                                       ; $4F15: $5C
    add e                                         ; $4F16: $83
    ld a, h                                       ; $4F17: $7C
    and e                                         ; $4F18: $A3
    ld e, h                                       ; $4F19: $5C
    rlca                                          ; $4F1A: $07
    ld sp, hl                                     ; $4F1B: $F9
    rrca                                          ; $4F1C: $0F
    pop af                                        ; $4F1D: $F1
    rrca                                          ; $4F1E: $0F
    ldh a, [rHDMA4]                               ; $4F1F: $F0 $54
    xor b                                         ; $4F21: $A8
    add h                                         ; $4F22: $84
    ld a, b                                       ; $4F23: $78
    ld hl, sp+$00                                 ; $4F24: $F8 $00
    ldh a, [$80]                                  ; $4F26: $F0 $80
    ldh a, [$E0]                                  ; $4F28: $F0 $E0
    ld hl, sp+$40                                 ; $4F2A: $F8 $40
    db $E4                                        ; $4F2C: $E4
    sbc b                                         ; $4F2D: $98
    db $E4                                        ; $4F2E: $E4
    jr jr_027_4F50                                ; $4F2F: $18 $1F

    ldh [$1F], a                                  ; $4F31: $E0 $1F
    pop hl                                        ; $4F33: $E1
    ccf                                           ; $4F34: $3F
    jp $877F                                      ; $4F35: $C3 $7F $87


    rst $18                                       ; $4F38: $DF
    rrca                                          ; $4F39: $0F
    rra                                           ; $4F3A: $1F
    ld [$071F], sp                                ; $4F3B: $08 $1F $07
    rra                                           ; $4F3E: $1F
    nop                                           ; $4F3F: $00
    ld hl, sp+$00                                 ; $4F40: $F8 $00
    ld hl, sp-$20                                 ; $4F42: $F8 $E0
    cp $E0                                        ; $4F44: $FE $E0
    rst $38                                       ; $4F46: $FF
    add $FF                                       ; $4F47: $C6 $FF
    ld l, $FE                                     ; $4F49: $2E $FE
    xor h                                         ; $4F4B: $AC
    cp $90                                        ; $4F4C: $FE $90
    ld hl, sp+$00                                 ; $4F4E: $F8 $00

jr_027_4F50:
    ld bc, $0100                                  ; $4F50: $01 $00 $01
    nop                                           ; $4F53: $00
    ld bc, $0100                                  ; $4F54: $01 $00 $01
    nop                                           ; $4F57: $00
    ld [bc], a                                    ; $4F58: $02
    ld bc, $0205                                  ; $4F59: $01 $05 $02
    ld a, [bc]                                    ; $4F5C: $0A
    dec b                                         ; $4F5D: $05
    rlca                                          ; $4F5E: $07
    nop                                           ; $4F5F: $00
    and a                                         ; $4F60: $A7
    ld e, b                                       ; $4F61: $58
    and e                                         ; $4F62: $A3
    ld e, h                                       ; $4F63: $5C
    add e                                         ; $4F64: $83
    ld a, h                                       ; $4F65: $7C
    and e                                         ; $4F66: $A3
    ld e, h                                       ; $4F67: $5C
    rlca                                          ; $4F68: $07
    ld hl, sp+$0F                                 ; $4F69: $F8 $0F
    ldh a, [rIF]                                  ; $4F6B: $F0 $0F
    pop af                                        ; $4F6D: $F1
    rra                                           ; $4F6E: $1F
    ldh [$84], a                                  ; $4F6F: $E0 $84
    ld a, b                                       ; $4F71: $78
    ld hl, sp+$00                                 ; $4F72: $F8 $00
    ld hl, sp+$60                                 ; $4F74: $F8 $60
    ld hl, sp+$50                                 ; $4F76: $F8 $50
    ld hl, sp-$30                                 ; $4F78: $F8 $D0
    ld hl, sp-$80                                 ; $4F7A: $F8 $80
    sbc b                                         ; $4F7C: $98
    ld h, b                                       ; $4F7D: $60
    sbc b                                         ; $4F7E: $98
    ld h, b                                       ; $4F7F: $60
    rra                                           ; $4F80: $1F
    ldh [$3F], a                                  ; $4F81: $E0 $3F
    ret nz                                        ; $4F83: $C0

    ld a, a                                       ; $4F84: $7F
    add c                                         ; $4F85: $81
    rst $18                                       ; $4F86: $DF
    inc bc                                        ; $4F87: $03
    rrca                                          ; $4F88: $0F
    inc b                                         ; $4F89: $04
    rrca                                          ; $4F8A: $0F
    ld bc, $030F                                  ; $4F8B: $01 $0F $03
    rlca                                          ; $4F8E: $07
    nop                                           ; $4F8F: $00
    ld hl, sp+$00                                 ; $4F90: $F8 $00
    ld hl, sp-$10                                 ; $4F92: $F8 $F0
    ld hl, sp-$10                                 ; $4F94: $F8 $F0
    ld hl, sp-$20                                 ; $4F96: $F8 $E0
    db $FC                                        ; $4F98: $FC
    ld [$E8FC], sp                                ; $4F99: $08 $FC $E8
    db $FC                                        ; $4F9C: $FC
    ldh [$F0], a                                  ; $4F9D: $E0 $F0
    nop                                           ; $4F9F: $00
    xor a                                         ; $4FA0: $AF
    ld d, b                                       ; $4FA1: $50
    and a                                         ; $4FA2: $A7
    ld e, b                                       ; $4FA3: $58
    and e                                         ; $4FA4: $A3
    ld e, h                                       ; $4FA5: $5C
    add e                                         ; $4FA6: $83
    ld a, h                                       ; $4FA7: $7C
    and a                                         ; $4FA8: $A7
    ld e, c                                       ; $4FA9: $59
    rlca                                          ; $4FAA: $07
    ld sp, hl                                     ; $4FAB: $F9
    add hl, bc                                    ; $4FAC: $09
    or $09                                        ; $4FAD: $F6 $09
    or $54                                        ; $4FAF: $F6 $54
    xor b                                         ; $4FB1: $A8
    add h                                         ; $4FB2: $84
    ld a, b                                       ; $4FB3: $78
    ld hl, sp+$00                                 ; $4FB4: $F8 $00
    ldh a, [$C0]                                  ; $4FB6: $F0 $C0
    ldh a, [$A0]                                  ; $4FB8: $F0 $A0
    ld hl, sp+$60                                 ; $4FBA: $F8 $60
    db $F4                                        ; $4FBC: $F4
    ld l, b                                       ; $4FBD: $68
    db $F4                                        ; $4FBE: $F4
    ld [$E01F], sp                                ; $4FBF: $08 $1F $E0
    rra                                           ; $4FC2: $1F
    pop hl                                        ; $4FC3: $E1
    ccf                                           ; $4FC4: $3F
    jp $867F                                      ; $4FC5: $C3 $7F $86


    rst $18                                       ; $4FC8: $DF
    ld [$0F1F], sp                                ; $4FC9: $08 $1F $0F
    rra                                           ; $4FCC: $1F
    rlca                                          ; $4FCD: $07
    rra                                           ; $4FCE: $1F
    nop                                           ; $4FCF: $00
    ld hl, sp+$00                                 ; $4FD0: $F8 $00
    ldh a, [$E0]                                  ; $4FD2: $F0 $E0
    cp $F0                                        ; $4FD4: $FE $F0
    rst $38                                       ; $4FD6: $FF
    or $FF                                        ; $4FD7: $F6 $FF
    ld l, [hl]                                    ; $4FD9: $6E
    cp $0C                                        ; $4FDA: $FE $0C
    cp $90                                        ; $4FDC: $FE $90
    ld hl, sp+$00                                 ; $4FDE: $F8 $00
    nop                                           ; $4FE0: $00
    nop                                           ; $4FE1: $00
    rrca                                          ; $4FE2: $0F
    nop                                           ; $4FE3: $00
    rra                                           ; $4FE4: $1F
    dec c                                         ; $4FE5: $0D
    ccf                                           ; $4FE6: $3F
    rra                                           ; $4FE7: $1F
    ccf                                           ; $4FE8: $3F
    ld e, $3F                                     ; $4FE9: $1E $3F
    ld e, $7F                                     ; $4FEB: $1E $7F
    inc e                                         ; $4FED: $1C
    sbc h                                         ; $4FEE: $9C
    ld l, e                                       ; $4FEF: $6B
    nop                                           ; $4FF0: $00
    nop                                           ; $4FF1: $00
    ldh [rP1], a                                  ; $4FF2: $E0 $00
    ld hl, sp-$20                                 ; $4FF4: $F8 $E0
    db $FC                                        ; $4FF6: $FC
    ld hl, sp-$04                                 ; $4FF7: $F8 $FC
    ld hl, sp-$04                                 ; $4FF9: $F8 $FC
    ld hl, sp-$04                                 ; $4FFB: $F8 $FC
    cp b                                          ; $4FFD: $B8
    cp d                                          ; $4FFE: $BA
    ld d, h                                       ; $4FFF: $54
    nop                                           ; $5000: $00
    nop                                           ; $5001: $00
    ld sp, $4F00                                  ; $5002: $31 $00 $4F
    ld sp, $7B87                                  ; $5005: $31 $87 $7B
    add a                                         ; $5008: $87
    ld a, e                                       ; $5009: $7B
    sub a                                         ; $500A: $97
    ld l, d                                       ; $500B: $6A
    adc a                                         ; $500C: $8F
    ld [hl], b                                    ; $500D: $70
    adc l                                         ; $500E: $8D
    ld [hl], d                                    ; $500F: $72
    nop                                           ; $5010: $00
    nop                                           ; $5011: $00
    ld hl, sp+$00                                 ; $5012: $F8 $00
    db $FC                                        ; $5014: $FC
    ld hl, sp-$04                                 ; $5015: $F8 $FC
    add b                                         ; $5017: $80
    db $FC                                        ; $5018: $FC
    nop                                           ; $5019: $00
    db $FC                                        ; $501A: $FC
    nop                                           ; $501B: $00
    add h                                         ; $501C: $84
    ld a, b                                       ; $501D: $78
    ld c, h                                       ; $501E: $4C
    or b                                          ; $501F: $B0
    adc [hl]                                      ; $5020: $8E
    ld [hl], c                                    ; $5021: $71
    sbc a                                         ; $5022: $9F
    ld h, b                                       ; $5023: $60
    sbc a                                         ; $5024: $9F
    ld h, b                                       ; $5025: $60
    sbc a                                         ; $5026: $9F
    ld h, e                                       ; $5027: $63
    adc a                                         ; $5028: $8F
    ld [hl], d                                    ; $5029: $72
    xor a                                         ; $502A: $AF
    ld d, b                                       ; $502B: $50
    adc h                                         ; $502C: $8C
    ld [hl], e                                    ; $502D: $73
    xor h                                         ; $502E: $AC
    ld d, e                                       ; $502F: $53
    ld c, h                                       ; $5030: $4C
    or b                                          ; $5031: $B0
    inc b                                         ; $5032: $04
    ld hl, sp-$08                                 ; $5033: $F8 $F8
    nop                                           ; $5035: $00
    db $FC                                        ; $5036: $FC
    ret c                                         ; $5037: $D8

    db $FC                                        ; $5038: $FC
    ret nc                                        ; $5039: $D0

    cp $D0                                        ; $503A: $FE $D0
    ld a, [$FC54]                                 ; $503C: $FA $54 $FC
    nop                                           ; $503F: $00
    cp e                                          ; $5040: $BB
    ld b, b                                       ; $5041: $40
    or e                                          ; $5042: $B3
    ld b, c                                       ; $5043: $41
    or a                                          ; $5044: $B7
    ld b, e                                       ; $5045: $43
    rst $20                                       ; $5046: $E7
    inc bc                                        ; $5047: $03
    ld c, a                                       ; $5048: $4F
    inc b                                         ; $5049: $04
    rrca                                          ; $504A: $0F
    ld bc, $070F                                  ; $504B: $01 $0F $07
    rlca                                          ; $504E: $07
    nop                                           ; $504F: $00
    ld hl, sp-$10                                 ; $5050: $F8 $F0
    ld hl, sp-$10                                 ; $5052: $F8 $F0
    db $FC                                        ; $5054: $FC
    ret c                                         ; $5055: $D8

    db $FC                                        ; $5056: $FC
    or b                                          ; $5057: $B0
    cp $0C                                        ; $5058: $FE $0C
    cp $BC                                        ; $505A: $FE $BC
    db $FC                                        ; $505C: $FC
    add b                                         ; $505D: $80
    ret nz                                        ; $505E: $C0

    nop                                           ; $505F: $00
    nop                                           ; $5060: $00
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    nop                                           ; $5063: $00
    rlca                                          ; $5064: $07
    nop                                           ; $5065: $00
    rrca                                          ; $5066: $0F
    rlca                                          ; $5067: $07
    rra                                           ; $5068: $1F
    inc c                                         ; $5069: $0C
    rra                                           ; $506A: $1F
    ld [$003F], sp                                ; $506B: $08 $3F $00
    ld e, h                                       ; $506E: $5C
    inc hl                                        ; $506F: $23
    nop                                           ; $5070: $00
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    nop                                           ; $5073: $00
    ldh [rP1], a                                  ; $5074: $E0 $00
    ldh a, [$E0]                                  ; $5076: $F0 $E0
    ld hl, sp+$30                                 ; $5078: $F8 $30
    ld hl, sp+$10                                 ; $507A: $F8 $10
    cp $00                                        ; $507C: $FE $00
    add hl, sp                                    ; $507E: $39
    add $6A                                       ; $507F: $C6 $6A
    dec d                                         ; $5081: $15
    ld e, d                                       ; $5082: $5A
    dec h                                         ; $5083: $25
    ld c, h                                       ; $5084: $4C
    inc sp                                        ; $5085: $33
    ld e, a                                       ; $5086: $5F
    inc l                                         ; $5087: $2C
    ld e, a                                       ; $5088: $5F
    ld h, $5F                                     ; $5089: $26 $5F
    ld h, $57                                     ; $508B: $26 $57
    ld a, [hl+]                                   ; $508D: $2A
    ld d, a                                       ; $508E: $57
    jr z, @+$57                                   ; $508F: $28 $55

    xor d                                         ; $5091: $AA
    ld e, e                                       ; $5092: $5B
    and h                                         ; $5093: $A4
    inc sp                                        ; $5094: $33
    call z, $26F9                                 ; $5095: $CC $F9 $26
    ld sp, hl                                     ; $5098: $F9
    or $F9                                        ; $5099: $F6 $F9
    sub [hl]                                      ; $509B: $96
    sbc c                                         ; $509C: $99
    ld h, [hl]                                    ; $509D: $66
    sub c                                         ; $509E: $91
    ld l, [hl]                                    ; $509F: $6E
    ld e, a                                       ; $50A0: $5F
    inc hl                                        ; $50A1: $23
    ld c, a                                       ; $50A2: $4F
    scf                                           ; $50A3: $37
    ld c, a                                       ; $50A4: $4F
    inc sp                                        ; $50A5: $33
    ld e, a                                       ; $50A6: $5F
    ld hl, $062F                                  ; $50A7: $21 $2F $06
    rrca                                          ; $50AA: $0F
    rlca                                          ; $50AB: $07
    rlca                                          ; $50AC: $07
    inc bc                                        ; $50AD: $03
    rlca                                          ; $50AE: $07
    nop                                           ; $50AF: $00
    pop af                                        ; $50B0: $F1
    adc [hl]                                      ; $50B1: $8E
    pop af                                        ; $50B2: $F1
    adc $F2                                       ; $50B3: $CE $F2
    db $EC                                        ; $50B5: $EC
    ld a, [$F4A4]                                 ; $50B6: $FA $A4 $F4
    ld h, b                                       ; $50B9: $60
    ldh [rP1], a                                  ; $50BA: $E0 $00
    ldh [rLCDC], a                                ; $50BC: $E0 $40
    ret nz                                        ; $50BE: $C0

    nop                                           ; $50BF: $00
    nop                                           ; $50C0: $00
    nop                                           ; $50C1: $00
    ldh [rP1], a                                  ; $50C2: $E0 $00
    ldh a, [$E0]                                  ; $50C4: $F0 $E0
    ld hl, sp+$30                                 ; $50C6: $F8 $30
    ld hl, sp+$10                                 ; $50C8: $F8 $10
    cp $00                                        ; $50CA: $FE $00
    add hl, sp                                    ; $50CC: $39
    add $55                                       ; $50CD: $C6 $55
    xor d                                         ; $50CF: $AA
    ld e, c                                       ; $50D0: $59
    and [hl]                                      ; $50D1: $A6
    add hl, sp                                    ; $50D2: $39
    add $F9                                       ; $50D3: $C6 $F9
    ld [hl], $FD                                  ; $50D5: $36 $FD
    ld e, d                                       ; $50D7: $5A
    db $FD                                        ; $50D8: $FD
    ld c, d                                       ; $50D9: $4A
    db $FD                                        ; $50DA: $FD
    ld b, d                                       ; $50DB: $42
    push hl                                       ; $50DC: $E5
    ld e, d                                       ; $50DD: $5A
    push hl                                       ; $50DE: $E5
    ld a, [de]                                    ; $50DF: $1A
    ld sp, hl                                     ; $50E0: $F9
    and $F2                                       ; $50E1: $E6 $F2
    db $EC                                        ; $50E3: $EC
    ld a, [$FC74]                                 ; $50E4: $FA $74 $FC

jr_027_50E7:
    ld b, b                                       ; $50E7: $40
    ld hl, sp+$30                                 ; $50E8: $F8 $30
    db $FC                                        ; $50EA: $FC
    ld a, b                                       ; $50EB: $78
    db $FC                                        ; $50EC: $FC
    jr c, jr_027_50E7                             ; $50ED: $38 $F8

    nop                                           ; $50EF: $00
    nop                                           ; $50F0: $00
    nop                                           ; $50F1: $00
    nop                                           ; $50F2: $00
    nop                                           ; $50F3: $00
    rlca                                          ; $50F4: $07
    nop                                           ; $50F5: $00
    rrca                                          ; $50F6: $0F
    rlca                                          ; $50F7: $07
    rra                                           ; $50F8: $1F
    rrca                                          ; $50F9: $0F
    rra                                           ; $50FA: $1F
    rlca                                          ; $50FB: $07
    daa                                           ; $50FC: $27
    add hl, de                                    ; $50FD: $19
    ld c, e                                       ; $50FE: $4B
    inc [hl]                                      ; $50FF: $34
    nop                                           ; $5100: $00
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    nop                                           ; $5103: $00
    ldh [rP1], a                                  ; $5104: $E0 $00
    ldh a, [$E0]                                  ; $5106: $F0 $E0
    ld hl, sp-$10                                 ; $5108: $F8 $F0
    ld hl, sp-$20                                 ; $510A: $F8 $E0
    db $E4                                        ; $510C: $E4
    sbc b                                         ; $510D: $98
    call nz, $9D38                                ; $510E: $C4 $38 $9D

jr_027_5111:
    ld h, d                                       ; $5111: $62
    sbc l                                         ; $5112: $9D

jr_027_5113:
    ld h, d                                       ; $5113: $62
    sbc l                                         ; $5114: $9D
    ld h, d                                       ; $5115: $62
    sub l                                         ; $5116: $95
    ld l, d                                       ; $5117: $6A
    or a                                          ; $5118: $B7
    ld c, b                                       ; $5119: $48
    or a                                          ; $511A: $B7
    ld c, b                                       ; $511B: $48
    and a                                         ; $511C: $A7
    ld e, b                                       ; $511D: $58
    xor a                                         ; $511E: $AF
    ld d, c                                       ; $511F: $51
    xor b                                         ; $5120: $A8
    ld d, b                                       ; $5121: $50
    xor b                                         ; $5122: $A8
    ld d, b                                       ; $5123: $50
    xor b                                         ; $5124: $A8
    ld d, b                                       ; $5125: $50
    xor b                                         ; $5126: $A8
    ld d, b                                       ; $5127: $50
    add sp, $10                                   ; $5128: $E8 $10
    db $E4                                        ; $512A: $E4
    jr jr_027_5111                                ; $512B: $18 $E4

    jr jr_027_5113                                ; $512D: $18 $E4

    sbc b                                         ; $512F: $98
    xor a                                         ; $5130: $AF
    ld d, b                                       ; $5131: $50
    cp a                                          ; $5132: $BF
    ld b, c                                       ; $5133: $41
    cp a                                          ; $5134: $BF
    ld b, e                                       ; $5135: $43
    ld e, a                                       ; $5136: $5F
    ld h, $3F                                     ; $5137: $26 $3F
    nop                                           ; $5139: $00
    rrca                                          ; $513A: $0F
    inc bc                                        ; $513B: $03
    rlca                                          ; $513C: $07
    inc bc                                        ; $513D: $03
    rlca                                          ; $513E: $07
    nop                                           ; $513F: $00
    ld a, [c]                                     ; $5140: $F2
    inc c                                         ; $5141: $0C
    ld a, [c]                                     ; $5142: $F2
    call z, $A4FA                                 ; $5143: $CC $FA $A4
    ld a, [$FC64]                                 ; $5146: $FA $64 $FC
    ld h, b                                       ; $5149: $60
    ldh a, [rP1]                                  ; $514A: $F0 $00
    ldh a, [$60]                                  ; $514C: $F0 $60
    ldh a, [rP1]                                  ; $514E: $F0 $00
    nop                                           ; $5150: $00
    nop                                           ; $5151: $00
    ldh [rP1], a                                  ; $5152: $E0 $00
    ldh a, [$E0]                                  ; $5154: $F0 $E0
    ld hl, sp-$10                                 ; $5156: $F8 $F0
    ld hl, sp-$20                                 ; $5158: $F8 $E0
    db $EC                                        ; $515A: $EC
    sub b                                         ; $515B: $90
    call nz, $A438                                ; $515C: $C4 $38 $A4
    ld e, b                                       ; $515F: $58
    and h                                         ; $5160: $A4
    ld e, b                                       ; $5161: $58
    and h                                         ; $5162: $A4
    ld e, b                                       ; $5163: $58
    or h                                          ; $5164: $B4
    ld c, b                                       ; $5165: $48
    db $F4                                        ; $5166: $F4
    ld [$0CF2], sp                                ; $5167: $08 $F2 $0C
    ld a, [c]                                     ; $516A: $F2
    inc c                                         ; $516B: $0C
    ld a, [$FA04]                                 ; $516C: $FA $04 $FA
    add h                                         ; $516F: $84
    ld a, [$FA04]                                 ; $5170: $FA $04 $FA
    ld b, h                                       ; $5173: $44
    ld a, [$F664]                                 ; $5174: $FA $64 $F6
    ld l, b                                       ; $5177: $68
    db $FC                                        ; $5178: $FC
    ld h, b                                       ; $5179: $60
    db $FC                                        ; $517A: $FC
    ld [$70FC], sp                                ; $517B: $08 $FC $70
    ld hl, sp+$00                                 ; $517E: $F8 $00
    nop                                           ; $5180: $00
    nop                                           ; $5181: $00
    inc bc                                        ; $5182: $03
    nop                                           ; $5183: $00
    rlca                                          ; $5184: $07
    inc bc                                        ; $5185: $03
    rra                                           ; $5186: $1F
    rlca                                          ; $5187: $07
    cpl                                           ; $5188: $2F
    rla                                           ; $5189: $17
    ld b, a                                       ; $518A: $47
    jr c, @+$60                                   ; $518B: $38 $5E

    ld hl, $50AF                                  ; $518D: $21 $AF $50
    ldh a, [rP1]                                  ; $5190: $F0 $00
    ld hl, sp+$70                                 ; $5192: $F8 $70
    db $FC                                        ; $5194: $FC
    ret nz                                        ; $5195: $C0

    db $FC                                        ; $5196: $FC
    add b                                         ; $5197: $80
    db $FC                                        ; $5198: $FC
    nop                                           ; $5199: $00
    db $E4                                        ; $519A: $E4
    jr jr_027_51F1                                ; $519B: $18 $54

    xor b                                         ; $519D: $A8
    inc d                                         ; $519E: $14
    add sp, -$51                                  ; $519F: $E8 $AF
    ld d, b                                       ; $51A1: $50
    and a                                         ; $51A2: $A7
    ld e, b                                       ; $51A3: $58
    and e                                         ; $51A4: $A3
    ld e, h                                       ; $51A5: $5C
    add e                                         ; $51A6: $83
    ld a, h                                       ; $51A7: $7C
    and e                                         ; $51A8: $A3
    ld e, h                                       ; $51A9: $5C
    rlca                                          ; $51AA: $07
    ld sp, hl                                     ; $51AB: $F9
    rrca                                          ; $51AC: $0F
    pop af                                        ; $51AD: $F1
    rrca                                          ; $51AE: $0F
    ldh a, [rHDMA4]                               ; $51AF: $F0 $54
    xor b                                         ; $51B1: $A8
    add h                                         ; $51B2: $84
    ld a, b                                       ; $51B3: $78
    ld hl, sp+$00                                 ; $51B4: $F8 $00
    ldh a, [$80]                                  ; $51B6: $F0 $80
    ldh a, [$E0]                                  ; $51B8: $F0 $E0
    ld hl, sp+$40                                 ; $51BA: $F8 $40
    db $E4                                        ; $51BC: $E4
    sbc b                                         ; $51BD: $98
    db $E4                                        ; $51BE: $E4
    jr jr_027_51E0                                ; $51BF: $18 $1F

    pop hl                                        ; $51C1: $E1
    rra                                           ; $51C2: $1F
    pop hl                                        ; $51C3: $E1
    ccf                                           ; $51C4: $3F
    jp $877F                                      ; $51C5: $C3 $7F $87


    rst $18                                       ; $51C8: $DF
    rrca                                          ; $51C9: $0F
    rra                                           ; $51CA: $1F
    ld [$071F], sp                                ; $51CB: $08 $1F $07
    rra                                           ; $51CE: $1F
    nop                                           ; $51CF: $00
    ld hl, sp-$40                                 ; $51D0: $F8 $C0
    ld hl, sp-$20                                 ; $51D2: $F8 $E0
    cp $E0                                        ; $51D4: $FE $E0
    rst $38                                       ; $51D6: $FF
    add $FF                                       ; $51D7: $C6 $FF
    ld l, $FE                                     ; $51D9: $2E $FE
    xor h                                         ; $51DB: $AC
    cp $90                                        ; $51DC: $FE $90
    ld hl, sp+$00                                 ; $51DE: $F8 $00

jr_027_51E0:
    ld bc, $0100                                  ; $51E0: $01 $00 $01
    nop                                           ; $51E3: $00
    ld bc, $0100                                  ; $51E4: $01 $00 $01
    nop                                           ; $51E7: $00
    ld [bc], a                                    ; $51E8: $02
    ld bc, $0205                                  ; $51E9: $01 $05 $02
    ld a, [bc]                                    ; $51EC: $0A
    dec b                                         ; $51ED: $05
    rlca                                          ; $51EE: $07
    nop                                           ; $51EF: $00
    and a                                         ; $51F0: $A7

jr_027_51F1:
    ld e, b                                       ; $51F1: $58
    and e                                         ; $51F2: $A3
    ld e, h                                       ; $51F3: $5C
    add e                                         ; $51F4: $83
    ld a, h                                       ; $51F5: $7C
    and e                                         ; $51F6: $A3
    ld e, h                                       ; $51F7: $5C
    rlca                                          ; $51F8: $07
    ld hl, sp+$0F                                 ; $51F9: $F8 $0F
    ldh a, [rIF]                                  ; $51FB: $F0 $0F
    pop af                                        ; $51FD: $F1
    rra                                           ; $51FE: $1F
    ldh [$84], a                                  ; $51FF: $E0 $84
    ld a, b                                       ; $5201: $78
    ld hl, sp+$00                                 ; $5202: $F8 $00
    ld hl, sp+$60                                 ; $5204: $F8 $60
    ld hl, sp+$50                                 ; $5206: $F8 $50
    ld hl, sp-$30                                 ; $5208: $F8 $D0
    ld hl, sp-$80                                 ; $520A: $F8 $80
    sbc b                                         ; $520C: $98
    ld h, b                                       ; $520D: $60
    sbc b                                         ; $520E: $98
    ld h, b                                       ; $520F: $60
    rra                                           ; $5210: $1F
    ldh [$3F], a                                  ; $5211: $E0 $3F
    ret nz                                        ; $5213: $C0

    ld a, a                                       ; $5214: $7F
    add c                                         ; $5215: $81
    rst $18                                       ; $5216: $DF
    inc bc                                        ; $5217: $03
    rrca                                          ; $5218: $0F
    inc b                                         ; $5219: $04
    rrca                                          ; $521A: $0F
    ld bc, $030F                                  ; $521B: $01 $0F $03
    rlca                                          ; $521E: $07
    nop                                           ; $521F: $00
    ld hl, sp+$00                                 ; $5220: $F8 $00
    ld hl, sp-$10                                 ; $5222: $F8 $F0
    ld hl, sp-$10                                 ; $5224: $F8 $F0
    ld hl, sp-$20                                 ; $5226: $F8 $E0
    db $FC                                        ; $5228: $FC
    ld [$E8FC], sp                                ; $5229: $08 $FC $E8
    db $FC                                        ; $522C: $FC
    ldh [$F0], a                                  ; $522D: $E0 $F0
    nop                                           ; $522F: $00
    xor a                                         ; $5230: $AF
    ld d, b                                       ; $5231: $50
    and a                                         ; $5232: $A7
    ld e, b                                       ; $5233: $58
    and e                                         ; $5234: $A3
    ld e, h                                       ; $5235: $5C
    add e                                         ; $5236: $83
    ld a, h                                       ; $5237: $7C
    and a                                         ; $5238: $A7
    ld e, c                                       ; $5239: $59
    rlca                                          ; $523A: $07
    ld sp, hl                                     ; $523B: $F9
    add hl, bc                                    ; $523C: $09
    or $09                                        ; $523D: $F6 $09
    or $14                                        ; $523F: $F6 $14
    add sp, -$7C                                  ; $5241: $E8 $84
    ld a, b                                       ; $5243: $78
    ld hl, sp+$00                                 ; $5244: $F8 $00
    ldh a, [$C0]                                  ; $5246: $F0 $C0
    ldh a, [$A0]                                  ; $5248: $F0 $A0
    ld hl, sp+$40                                 ; $524A: $F8 $40
    db $F4                                        ; $524C: $F4
    ret z                                         ; $524D: $C8

    db $F4                                        ; $524E: $F4
    ld [$0007], sp                                ; $524F: $08 $07 $00
    rrca                                          ; $5252: $0F
    rlca                                          ; $5253: $07
    rra                                           ; $5254: $1F
    rrca                                          ; $5255: $0F
    ccf                                           ; $5256: $3F
    rra                                           ; $5257: $1F
    ccf                                           ; $5258: $3F
    ld e, $3E                                     ; $5259: $1E $3E
    dec d                                         ; $525B: $15
    push af                                       ; $525C: $F5
    ld a, [hl+]                                   ; $525D: $2A
    cp l                                          ; $525E: $BD
    ld b, d                                       ; $525F: $42
    ldh a, [rP1]                                  ; $5260: $F0 $00
    ld hl, sp-$10                                 ; $5262: $F8 $F0
    db $FC                                        ; $5264: $FC
    ld hl, sp-$04                                 ; $5265: $F8 $FC
    ld hl, sp-$02                                 ; $5267: $F8 $FE
    ld e, h                                       ; $5269: $5C
    ld e, [hl]                                    ; $526A: $5E
    xor h                                         ; $526B: $AC
    cpl                                           ; $526C: $2F
    sub $2E                                       ; $526D: $D6 $2E
    ret nc                                        ; $526F: $D0

    sbc [hl]                                      ; $5270: $9E
    ld h, c                                       ; $5271: $61
    cp a                                          ; $5272: $BF
    ld b, b                                       ; $5273: $40
    xor a                                         ; $5274: $AF
    ld d, e                                       ; $5275: $53
    adc a                                         ; $5276: $8F
    ld [hl], d                                    ; $5277: $72
    xor a                                         ; $5278: $AF
    ld d, d                                       ; $5279: $52
    adc e                                         ; $527A: $8B
    ld [hl], h                                    ; $527B: $74
    adc c                                         ; $527C: $89
    halt                                          ; $527D: $76
    xor a                                         ; $527E: $AF
    ld d, c                                       ; $527F: $51
    db $10                                        ; $5280: $10
    ldh [$E0], a                                  ; $5281: $E0 $E0
    nop                                           ; $5283: $00
    ldh [$C0], a                                  ; $5284: $E0 $C0
    ldh a, [$E0]                                  ; $5286: $F0 $E0
    ldh a, [rP1]                                  ; $5288: $F0 $00
    add sp, -$30                                  ; $528A: $E8 $D0
    ldh a, [$C0]                                  ; $528C: $F0 $C0
    ldh [$C0], a                                  ; $528E: $E0 $C0
    or a                                          ; $5290: $B7
    ld b, c                                       ; $5291: $41
    and e                                         ; $5292: $A3
    ld b, c                                       ; $5293: $41
    and e                                         ; $5294: $A3
    ld b, c                                       ; $5295: $41
    ld b, a                                       ; $5296: $47
    nop                                           ; $5297: $00
    rlca                                          ; $5298: $07
    inc bc                                        ; $5299: $03
    rlca                                          ; $529A: $07
    ld [bc], a                                    ; $529B: $02
    rrca                                          ; $529C: $0F
    rlca                                          ; $529D: $07
    rrca                                          ; $529E: $0F
    nop                                           ; $529F: $00
    ldh [$C0], a                                  ; $52A0: $E0 $C0
    ldh [$C0], a                                  ; $52A2: $E0 $C0
    ldh [$C0], a                                  ; $52A4: $E0 $C0
    ld hl, sp+$00                                 ; $52A6: $F8 $00
    db $FC                                        ; $52A8: $FC
    jr c, @-$02                                   ; $52A9: $38 $FC

    ret c                                         ; $52AB: $D8

    ld hl, sp-$40                                 ; $52AC: $F8 $C0
    ldh [rP1], a                                  ; $52AE: $E0 $00
    rlca                                          ; $52B0: $07
    nop                                           ; $52B1: $00
    rrca                                          ; $52B2: $0F
    rlca                                          ; $52B3: $07
    rra                                           ; $52B4: $1F
    ld c, $3F                                     ; $52B5: $0E $3F
    rrca                                          ; $52B7: $0F
    ld e, a                                       ; $52B8: $5F
    dec l                                         ; $52B9: $2D
    db $DD                                        ; $52BA: $DD
    ld a, [hl+]                                   ; $52BB: $2A
    ld [$FA55], a                                 ; $52BC: $EA $55 $FA
    dec h                                         ; $52BF: $25
    ldh [rP1], a                                  ; $52C0: $E0 $00
    ldh a, [$E0]                                  ; $52C2: $F0 $E0
    ld hl, sp-$10                                 ; $52C4: $F8 $F0
    db $FC                                        ; $52C6: $FC
    ld [hl], b                                    ; $52C7: $70
    ld a, [$3B34]                                 ; $52C8: $FA $34 $3B
    call nc, $AA57                                ; $52CB: $D4 $57 $AA
    ld e, a                                       ; $52CE: $5F
    and h                                         ; $52CF: $A4
    ld a, [$7C25]                                 ; $52D0: $FA $25 $7C
    inc bc                                        ; $52D3: $03
    ld l, a                                       ; $52D4: $6F
    db $10                                        ; $52D5: $10
    ld c, a                                       ; $52D6: $4F
    scf                                           ; $52D7: $37
    ld c, a                                       ; $52D8: $4F
    scf                                           ; $52D9: $37
    ld c, a                                       ; $52DA: $4F
    inc [hl]                                      ; $52DB: $34
    ld c, a                                       ; $52DC: $4F
    ld sp, $354B                                  ; $52DD: $31 $4B $35
    ld e, a                                       ; $52E0: $5F
    and h                                         ; $52E1: $A4
    dec a                                         ; $52E2: $3D
    jp nz, $0AF5                                  ; $52E3: $C2 $F5 $0A

    push af                                       ; $52E6: $F5
    ld [$EAF5], a                                 ; $52E7: $EA $F5 $EA
    pop af                                        ; $52EA: $F1
    ld l, $F5                                     ; $52EB: $2E $F5
    adc d                                         ; $52ED: $8A
    sub c                                         ; $52EE: $91
    ld l, [hl]                                    ; $52EF: $6E
    ld c, a                                       ; $52F0: $4F
    ld sp, $334F                                  ; $52F1: $31 $4F $33
    ld d, a                                       ; $52F4: $57
    inc hl                                        ; $52F5: $23
    daa                                           ; $52F6: $27
    ld bc, $060F                                  ; $52F7: $01 $0F $06
    rrca                                          ; $52FA: $0F
    rlca                                          ; $52FB: $07
    rlca                                          ; $52FC: $07
    inc bc                                        ; $52FD: $03
    rlca                                          ; $52FE: $07
    nop                                           ; $52FF: $00
    sub c                                         ; $5300: $91
    ld l, [hl]                                    ; $5301: $6E
    ld a, [c]                                     ; $5302: $F2
    adc h                                         ; $5303: $8C
    ld [$E4C4], a                                 ; $5304: $EA $C4 $E4
    ret nz                                        ; $5307: $C0

    ldh [rLCDC], a                                ; $5308: $E0 $40
    ldh [rP1], a                                  ; $530A: $E0 $00
    ldh [rLCDC], a                                ; $530C: $E0 $40
    ret nz                                        ; $530E: $C0

    nop                                           ; $530F: $00
    dec a                                         ; $5310: $3D
    jp nz, $0AF5                                  ; $5311: $C2 $F5 $0A

    push af                                       ; $5314: $F5
    ld [$EEF1], a                                 ; $5315: $EA $F1 $EE
    pop af                                        ; $5318: $F1
    ld l, $F1                                     ; $5319: $2E $F1
    adc [hl]                                      ; $531B: $8E
    ret                                           ; $531C: $C9


    or [hl]                                       ; $531D: $B6
    ret                                           ; $531E: $C9


    or [hl]                                       ; $531F: $B6
    ld sp, hl                                     ; $5320: $F9
    add $E5                                       ; $5321: $C6 $E5
    jp nz, $C0E2                                  ; $5323: $C2 $E2 $C0

    ldh a, [$C0]                                  ; $5326: $F0 $C0
    ld hl, sp+$30                                 ; $5328: $F8 $30
    db $FC                                        ; $532A: $FC
    ld a, b                                       ; $532B: $78
    db $FC                                        ; $532C: $FC
    jr c, @-$06                                   ; $532D: $38 $F8

    nop                                           ; $532F: $00
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    rlca                                          ; $5332: $07
    nop                                           ; $5333: $00
    rrca                                          ; $5334: $0F
    rlca                                          ; $5335: $07
    rra                                           ; $5336: $1F
    rrca                                          ; $5337: $0F
    rra                                           ; $5338: $1F
    rrca                                          ; $5339: $0F
    ccf                                           ; $533A: $3F
    rlca                                          ; $533B: $07
    daa                                           ; $533C: $27
    add hl, de                                    ; $533D: $19
    ld c, e                                       ; $533E: $4B
    inc [hl]                                      ; $533F: $34
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    ldh [rP1], a                                  ; $5342: $E0 $00
    ldh a, [$E0]                                  ; $5344: $F0 $E0
    ld hl, sp-$10                                 ; $5346: $F8 $F0
    ld hl, sp-$10                                 ; $5348: $F8 $F0
    db $FC                                        ; $534A: $FC
    ldh [$E4], a                                  ; $534B: $E0 $E4
    sbc b                                         ; $534D: $98
    call nz, $9DB8                                ; $534E: $C4 $B8 $9D

jr_027_5351:
    ld h, d                                       ; $5351: $62
    sbc l                                         ; $5352: $9D

jr_027_5353:
    ld h, d                                       ; $5353: $62
    sbc l                                         ; $5354: $9D
    ld h, d                                       ; $5355: $62
    sub l                                         ; $5356: $95
    ld l, d                                       ; $5357: $6A
    or a                                          ; $5358: $B7
    ld c, b                                       ; $5359: $48
    or a                                          ; $535A: $B7
    ld c, b                                       ; $535B: $48
    and a                                         ; $535C: $A7
    ld e, b                                       ; $535D: $58
    xor a                                         ; $535E: $AF
    ld d, c                                       ; $535F: $51
    xor b                                         ; $5360: $A8
    ld d, b                                       ; $5361: $50
    xor b                                         ; $5362: $A8
    ld d, b                                       ; $5363: $50
    xor b                                         ; $5364: $A8
    ld d, b                                       ; $5365: $50
    xor b                                         ; $5366: $A8
    ld d, b                                       ; $5367: $50
    add sp, $10                                   ; $5368: $E8 $10
    db $E4                                        ; $536A: $E4
    jr jr_027_5351                                ; $536B: $18 $E4

    jr jr_027_5353                                ; $536D: $18 $E4

    sbc b                                         ; $536F: $98
    xor a                                         ; $5370: $AF
    ld d, e                                       ; $5371: $53
    cp e                                          ; $5372: $BB
    ld b, c                                       ; $5373: $41
    or e                                          ; $5374: $B3
    ld b, c                                       ; $5375: $41
    ld d, e                                       ; $5376: $53
    jr nz, jr_027_539C                            ; $5377: $20 $23

    ld bc, $0307                                  ; $5379: $01 $07 $03
    rlca                                          ; $537C: $07
    inc bc                                        ; $537D: $03
    rlca                                          ; $537E: $07
    nop                                           ; $537F: $00
    ld a, [c]                                     ; $5380: $F2
    adc h                                         ; $5381: $8C
    ld a, [c]                                     ; $5382: $F2
    call z, $C4EA                                 ; $5383: $CC $EA $C4
    ld [$C444], a                                 ; $5386: $EA $44 $C4
    add b                                         ; $5389: $80
    ret nz                                        ; $538A: $C0

    add b                                         ; $538B: $80
    ldh [rLCDC], a                                ; $538C: $E0 $40
    ldh [rP1], a                                  ; $538E: $E0 $00
    ldh [rP1], a                                  ; $5390: $E0 $00
    ldh a, [$E0]                                  ; $5392: $F0 $E0
    ld hl, sp-$10                                 ; $5394: $F8 $F0
    ld hl, sp-$10                                 ; $5396: $F8 $F0
    db $FC                                        ; $5398: $FC
    ldh a, [$F6]                                  ; $5399: $F0 $F6
    ret z                                         ; $539B: $C8

jr_027_539C:
    ld [c], a                                     ; $539C: $E2
    sbc h                                         ; $539D: $9C
    jp nc, $D2AC                                  ; $539E: $D2 $AC $D2

    inc l                                         ; $53A1: $2C
    jp nc, $D22C                                  ; $53A2: $D2 $2C $D2

    inc l                                         ; $53A5: $2C
    jp c, $F224                                   ; $53A6: $DA $24 $F2

    inc c                                         ; $53A9: $0C
    ld a, [c]                                     ; $53AA: $F2
    inc c                                         ; $53AB: $0C
    ld a, [$FA04]                                 ; $53AC: $FA $04 $FA
    add h                                         ; $53AF: $84
    ld a, [$FAC4]                                 ; $53B0: $FA $C4 $FA
    call nz, $C8F4                                ; $53B3: $C4 $F4 $C8
    add sp, -$40                                  ; $53B6: $E8 $C0
    ldh a, [$C0]                                  ; $53B8: $F0 $C0
    ld hl, sp+$10                                 ; $53BA: $F8 $10
    ld hl, sp+$70                                 ; $53BC: $F8 $70
    ldh a, [rP1]                                  ; $53BE: $F0 $00
    ld bc, $0700                                  ; $53C0: $01 $00 $07
    ld bc, $070F                                  ; $53C3: $01 $0F $07
    rra                                           ; $53C6: $1F
    rrca                                          ; $53C7: $0F
    ccf                                           ; $53C8: $3F
    rra                                           ; $53C9: $1F
    ld a, a                                       ; $53CA: $7F
    add hl, sp                                    ; $53CB: $39
    ld a, l                                       ; $53CC: $7D
    ld a, [bc]                                    ; $53CD: $0A
    adc h                                         ; $53CE: $8C
    ld [hl], e                                    ; $53CF: $73
    ldh a, [rP1]                                  ; $53D0: $F0 $00
    ld hl, sp-$10                                 ; $53D2: $F8 $F0
    ld hl, sp-$10                                 ; $53D4: $F8 $F0
    db $FC                                        ; $53D6: $FC
    ld hl, sp-$04                                 ; $53D7: $F8 $FC
    xor b                                         ; $53D9: $A8
    cp b                                          ; $53DA: $B8
    ld b, b                                       ; $53DB: $40
    ld d, b                                       ; $53DC: $50
    and b                                         ; $53DD: $A0
    ld d, b                                       ; $53DE: $50
    and b                                         ; $53DF: $A0
    adc h                                         ; $53E0: $8C
    ld [hl], e                                    ; $53E1: $73
    or [hl]                                       ; $53E2: $B6
    ld c, c                                       ; $53E3: $49
    ld a, a                                       ; $53E4: $7F
    add b                                         ; $53E5: $80
    ld c, [hl]                                    ; $53E6: $4E
    or c                                          ; $53E7: $B1
    ld b, a                                       ; $53E8: $47
    cp b                                          ; $53E9: $B8
    rlca                                          ; $53EA: $07
    ld hl, sp+$4E                                 ; $53EB: $F8 $4E
    or c                                          ; $53ED: $B1
    rra                                           ; $53EE: $1F
    ldh [$50], a                                  ; $53EF: $E0 $50
    and b                                         ; $53F1: $A0
    db $10                                        ; $53F2: $10
    ldh [$E0], a                                  ; $53F3: $E0 $E0
    nop                                           ; $53F5: $00
    add b                                         ; $53F6: $80
    nop                                           ; $53F7: $00
    ld h, b                                       ; $53F8: $60
    add b                                         ; $53F9: $80
    sub b                                         ; $53FA: $90
    ld h, b                                       ; $53FB: $60
    sub b                                         ; $53FC: $90
    ld h, b                                       ; $53FD: $60
    ldh [rP1], a                                  ; $53FE: $E0 $00
    rra                                           ; $5400: $1F
    db $E3                                        ; $5401: $E3
    scf                                           ; $5402: $37
    jp $877F                                      ; $5403: $C3 $7F $87


    rst $38                                       ; $5406: $FF
    rra                                           ; $5407: $1F
    ld a, a                                       ; $5408: $7F
    jr z, jr_027_548A                             ; $5409: $28 $7F

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
    ld bc, $0100                                  ; $5420: $01 $00 $01
    nop                                           ; $5423: $00
    ld bc, $0100                                  ; $5424: $01 $00 $01
    nop                                           ; $5427: $00
    ld [bc], a                                    ; $5428: $02
    ld bc, $0205                                  ; $5429: $01 $05 $02
    ld a, [bc]                                    ; $542C: $0A
    dec b                                         ; $542D: $05
    rlca                                          ; $542E: $07
    nop                                           ; $542F: $00
    or [hl]                                       ; $5430: $B6
    ld c, c                                       ; $5431: $49
    ld a, a                                       ; $5432: $7F
    add b                                         ; $5433: $80
    ld c, a                                       ; $5434: $4F
    or c                                          ; $5435: $B1
    ld b, a                                       ; $5436: $47
    cp c                                          ; $5437: $B9
    rlca                                          ; $5438: $07
    ld hl, sp+$4C                                 ; $5439: $F8 $4C
    or e                                          ; $543B: $B3
    inc e                                         ; $543C: $1C
    db $E3                                        ; $543D: $E3
    rra                                           ; $543E: $1F
    ldh [rNR10], a                                ; $543F: $E0 $10
    ldh [$E0], a                                  ; $5441: $E0 $E0
    nop                                           ; $5443: $00
    add b                                         ; $5444: $80
    nop                                           ; $5445: $00
    ret nz                                        ; $5446: $C0

    nop                                           ; $5447: $00
    ret nz                                        ; $5448: $C0

    nop                                           ; $5449: $00
    add b                                         ; $544A: $80
    nop                                           ; $544B: $00
    add b                                         ; $544C: $80
    nop                                           ; $544D: $00
    add b                                         ; $544E: $80
    nop                                           ; $544F: $00
    scf                                           ; $5450: $37
    jp $8163                                      ; $5451: $C3 $63 $81


    jp $0701                                      ; $5454: $C3 $01 $07


    inc bc                                        ; $5457: $03
    rlca                                          ; $5458: $07
    nop                                           ; $5459: $00
    rlca                                          ; $545A: $07
    inc bc                                        ; $545B: $03
    rlca                                          ; $545C: $07
    inc bc                                        ; $545D: $03
    rlca                                          ; $545E: $07
    nop                                           ; $545F: $00
    add b                                         ; $5460: $80
    nop                                           ; $5461: $00
    add b                                         ; $5462: $80
    nop                                           ; $5463: $00
    add b                                         ; $5464: $80
    nop                                           ; $5465: $00
    ret nz                                        ; $5466: $C0

    nop                                           ; $5467: $00
    ldh [rP1], a                                  ; $5468: $E0 $00
    ldh a, [$C0]                                  ; $546A: $F0 $C0
    ldh a, [$E0]                                  ; $546C: $F0 $E0
    ldh a, [rP1]                                  ; $546E: $F0 $00
    adc h                                         ; $5470: $8C
    ld [hl], e                                    ; $5471: $73
    or [hl]                                       ; $5472: $B6
    ld c, c                                       ; $5473: $49
    ld a, a                                       ; $5474: $7F
    add b                                         ; $5475: $80
    ld c, a                                       ; $5476: $4F
    or c                                          ; $5477: $B1
    ld b, a                                       ; $5478: $47
    cp d                                          ; $5479: $BA
    dec bc                                        ; $547A: $0B
    db $F4                                        ; $547B: $F4
    ld c, c                                       ; $547C: $49
    or [hl]                                       ; $547D: $B6
    rra                                           ; $547E: $1F
    ldh [$50], a                                  ; $547F: $E0 $50
    and b                                         ; $5481: $A0
    db $10                                        ; $5482: $10
    ldh [$E0], a                                  ; $5483: $E0 $E0
    nop                                           ; $5485: $00
    add b                                         ; $5486: $80
    nop                                           ; $5487: $00
    ret nz                                        ; $5488: $C0

    nop                                           ; $5489: $00

jr_027_548A:
    ret nz                                        ; $548A: $C0

    nop                                           ; $548B: $00
    and b                                         ; $548C: $A0
    ld b, b                                       ; $548D: $40
    ret nz                                        ; $548E: $C0

    nop                                           ; $548F: $00
    rra                                           ; $5490: $1F
    db $E3                                        ; $5491: $E3
    scf                                           ; $5492: $37
    jp $8367                                      ; $5493: $C3 $67 $83


    rst $08                                       ; $5496: $CF
    rlca                                          ; $5497: $07
    rra                                           ; $5498: $1F
    nop                                           ; $5499: $00
    ccf                                           ; $549A: $3F
    rla                                           ; $549B: $17
    ccf                                           ; $549C: $3F
    rrca                                          ; $549D: $0F
    rra                                           ; $549E: $1F
    nop                                           ; $549F: $00
    jr nz, jr_027_54A2                            ; $54A0: $20 $00

jr_027_54A2:
    ld h, e                                       ; $54A2: $63
    db $10                                        ; $54A3: $10
    dec e                                         ; $54A4: $1D
    ld a, [hl+]                                   ; $54A5: $2A
    ld [hl], a                                    ; $54A6: $77
    jr z, @+$01                                   ; $54A7: $28 $FF

    ld a, [hl]                                    ; $54A9: $7E
    rst $28                                       ; $54AA: $EF
    ld e, l                                       ; $54AB: $5D
    cp $3D                                        ; $54AC: $FE $3D
    ld h, [hl]                                    ; $54AE: $66
    jr @+$0E                                      ; $54AF: $18 $0C

    nop                                           ; $54B1: $00
    ld e, $08                                     ; $54B2: $1E $08
    add hl, sp                                    ; $54B4: $39
    ld d, $31                                     ; $54B5: $16 $31
    ld c, $13                                     ; $54B7: $0E $13
    dec c                                         ; $54B9: $0D
    ccf                                           ; $54BA: $3F
    ld de, $192F                                  ; $54BB: $11 $2F $19
    ld c, a                                       ; $54BE: $4F
    dec a                                         ; $54BF: $3D
    nop                                           ; $54C0: $00
    nop                                           ; $54C1: $00
    inc c                                         ; $54C2: $0C
    nop                                           ; $54C3: $00
    ld e, $04                                     ; $54C4: $1E $04
    rst $20                                       ; $54C6: $E7
    ld a, [de]                                    ; $54C7: $1A
    db $E3                                        ; $54C8: $E3
    call c, $CCB2                                 ; $54C9: $DC $B2 $CC
    ld a, $C0                                     ; $54CC: $3E $C0
    ld a, $CC                                     ; $54CE: $3E $CC
    rst $38                                       ; $54D0: $FF
    ccf                                           ; $54D1: $3F
    pop af                                        ; $54D2: $F1
    ld e, a                                       ; $54D3: $5F
    ld hl, sp+$67                                 ; $54D4: $F8 $67
    rst $38                                       ; $54D6: $FF
    jr c, @+$01                                   ; $54D7: $38 $FF

    rrca                                          ; $54D9: $0F
    ld e, a                                       ; $54DA: $5F
    jr nz, jr_027_550A                            ; $54DB: $20 $2D

    ld [de], a                                    ; $54DD: $12
    rra                                           ; $54DE: $1F
    nop                                           ; $54DF: $00
    ld a, [$F7FC]                                 ; $54E0: $FA $FC $F7
    ld a, [$E6FF]                                 ; $54E3: $FA $FF $E6
    rst $38                                       ; $54E6: $FF
    inc e                                         ; $54E7: $1C
    db $FD                                        ; $54E8: $FD
    ld a, [c]                                     ; $54E9: $F2
    ld a, [$2C04]                                 ; $54EA: $FA $04 $2C
    ret nc                                        ; $54ED: $D0

    ldh a, [rP1]                                  ; $54EE: $F0 $00
    nop                                           ; $54F0: $00
    nop                                           ; $54F1: $00
    jr jr_027_54F4                                ; $54F2: $18 $00

jr_027_54F4:
    inc a                                         ; $54F4: $3C
    db $10                                        ; $54F5: $10
    ld [hl], e                                    ; $54F6: $73
    inc l                                         ; $54F7: $2C
    ld h, e                                       ; $54F8: $63
    dec e                                         ; $54F9: $1D
    daa                                           ; $54FA: $27
    dec de                                        ; $54FB: $1B
    ld a, a                                       ; $54FC: $7F
    ld hl, $394F                                  ; $54FD: $21 $4F $39
    nop                                           ; $5500: $00
    nop                                           ; $5501: $00
    nop                                           ; $5502: $00
    nop                                           ; $5503: $00
    ld b, $00                                     ; $5504: $06 $00
    rst $28                                       ; $5506: $EF
    ld [bc], a                                    ; $5507: $02
    di                                            ; $5508: $F3
    db $ED                                        ; $5509: $ED

jr_027_550A:
    sub c                                         ; $550A: $91
    xor $39                                       ; $550B: $EE $39
    add $3F                                       ; $550D: $C6 $3F
    ret nz                                        ; $550F: $C0

    nop                                           ; $5510: $00
    nop                                           ; $5511: $00
    nop                                           ; $5512: $00
    nop                                           ; $5513: $00
    nop                                           ; $5514: $00
    nop                                           ; $5515: $00
    nop                                           ; $5516: $00
    nop                                           ; $5517: $00
    add b                                         ; $5518: $80
    nop                                           ; $5519: $00
    add b                                         ; $551A: $80
    nop                                           ; $551B: $00
    nop                                           ; $551C: $00
    nop                                           ; $551D: $00
    nop                                           ; $551E: $00
    nop                                           ; $551F: $00
    ld b, $00                                     ; $5520: $06 $00
    rrca                                          ; $5522: $0F
    inc b                                         ; $5523: $04
    inc e                                         ; $5524: $1C
    dec bc                                        ; $5525: $0B
    jr jr_027_552F                                ; $5526: $18 $07

    add hl, bc                                    ; $5528: $09
    ld b, $1F                                     ; $5529: $06 $1F
    nop                                           ; $552B: $00
    cpl                                           ; $552C: $2F
    add hl, de                                    ; $552D: $19
    ld c, a                                       ; $552E: $4F

jr_027_552F:
    dec a                                         ; $552F: $3D
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    jr jr_027_5534                                ; $5532: $18 $00

jr_027_5534:
    cp h                                          ; $5534: $BC
    ld [$34CE], sp                                ; $5535: $08 $CE $34
    add $B8                                       ; $5538: $C6 $B8
    db $E4                                        ; $553A: $E4
    sbc b                                         ; $553B: $98
    ld a, h                                       ; $553C: $7C
    add b                                         ; $553D: $80
    ld a, $CC                                     ; $553E: $3E $CC
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
    jr jr_027_554E                                ; $554C: $18 $00

jr_027_554E:
    inc a                                         ; $554E: $3C
    ld [rRAMG], sp                                ; $554F: $08 $00 $00
    nop                                           ; $5552: $00
    nop                                           ; $5553: $00
    nop                                           ; $5554: $00
    nop                                           ; $5555: $00
    nop                                           ; $5556: $00
    nop                                           ; $5557: $00
    nop                                           ; $5558: $00
    nop                                           ; $5559: $00
    nop                                           ; $555A: $00
    nop                                           ; $555B: $00
    rrca                                          ; $555C: $0F
    nop                                           ; $555D: $00
    jr c, jr_027_556F                             ; $555E: $38 $0F

    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00
    nop                                           ; $5565: $00
    nop                                           ; $5566: $00

jr_027_5567:
    nop                                           ; $5567: $00
    nop                                           ; $5568: $00
    nop                                           ; $5569: $00
    nop                                           ; $556A: $00
    nop                                           ; $556B: $00
    ldh a, [rP1]                                  ; $556C: $F0 $00
    ld a, h                                       ; $556E: $7C

jr_027_556F:
    ldh a, [rP1]                                  ; $556F: $F0 $00
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    nop                                           ; $5575: $00
    nop                                           ; $5576: $00
    nop                                           ; $5577: $00
    nop                                           ; $5578: $00
    nop                                           ; $5579: $00
    nop                                           ; $557A: $00
    nop                                           ; $557B: $00
    jr c, jr_027_557E                             ; $557C: $38 $00

jr_027_557E:
    ld h, h                                       ; $557E: $64
    jr @+$50                                      ; $557F: $18 $4E

    inc [hl]                                      ; $5581: $34
    ld b, a                                       ; $5582: $47
    jr c, jr_027_55EC                             ; $5583: $38 $67

    jr jr_027_5604                                ; $5585: $18 $7D

    nop                                           ; $5587: $00
    ld bc, $0100                                  ; $5588: $01 $00 $01
    nop                                           ; $558B: $00
    nop                                           ; $558C: $00
    nop                                           ; $558D: $00
    nop                                           ; $558E: $00
    nop                                           ; $558F: $00
    ld a, h                                       ; $5590: $7C
    ccf                                           ; $5591: $3F
    rst $38                                       ; $5592: $FF
    rrca                                          ; $5593: $0F
    pop af                                        ; $5594: $F1
    ccf                                           ; $5595: $3F
    ldh [$DF], a                                  ; $5596: $E0 $DF
    rst $38                                       ; $5598: $FF
    ld h, b                                       ; $5599: $60
    rst $38                                       ; $559A: $FF
    rra                                           ; $559B: $1F
    ld e, l                                       ; $559C: $5D
    ld [hl+], a                                   ; $559D: $22
    ccf                                           ; $559E: $3F
    nop                                           ; $559F: $00
    cp $FC                                        ; $55A0: $FE $FC
    cp a                                          ; $55A2: $BF
    ldh [rIE], a                                  ; $55A3: $E0 $FF
    ld hl, sp-$01                                 ; $55A5: $F8 $FF
    di                                            ; $55A7: $F3
    rst $38                                       ; $55A8: $FF
    ld c, $FE                                     ; $55A9: $0E $FE
    ld sp, hl                                     ; $55AB: $F9
    cpl                                           ; $55AC: $2F
    ret nc                                        ; $55AD: $D0

    db $FC                                        ; $55AE: $FC
    nop                                           ; $55AF: $00
    call nz, $C438                                ; $55B0: $C4 $38 $C4
    jr c, @-$36                                   ; $55B3: $38 $C8

    jr nc, jr_027_5567                            ; $55B5: $30 $B0

    nop                                           ; $55B7: $00
    add b                                         ; $55B8: $80
    nop                                           ; $55B9: $00
    add b                                         ; $55BA: $80
    nop                                           ; $55BB: $00
    nop                                           ; $55BC: $00
    nop                                           ; $55BD: $00
    nop                                           ; $55BE: $00
    nop                                           ; $55BF: $00
    nop                                           ; $55C0: $00
    nop                                           ; $55C1: $00
    nop                                           ; $55C2: $00
    nop                                           ; $55C3: $00
    nop                                           ; $55C4: $00
    inc c                                         ; $55C5: $0C
    jr jr_027_55E6                                ; $55C6: $18 $1E

    inc e                                         ; $55C8: $1C
    ld e, $16                                     ; $55C9: $1E $16
    rla                                           ; $55CB: $17
    inc hl                                        ; $55CC: $23
    dec hl                                        ; $55CD: $2B
    ld bc, $001D                                  ; $55CE: $01 $1D $00
    nop                                           ; $55D1: $00
    nop                                           ; $55D2: $00
    nop                                           ; $55D3: $00
    add b                                         ; $55D4: $80
    sbc b                                         ; $55D5: $98
    db $10                                        ; $55D6: $10
    inc a                                         ; $55D7: $3C
    jr c, jr_027_5616                             ; $55D8: $38 $3C

    jr c, jr_027_5618                             ; $55DA: $38 $3C

    inc a                                         ; $55DC: $3C
    inc a                                         ; $55DD: $3C
    jr c, jr_027_561C                             ; $55DE: $38 $3C

    ld [de], a                                    ; $55E0: $12
    ld a, $30                                     ; $55E1: $3E $30
    inc a                                         ; $55E3: $3C
    add hl, de                                    ; $55E4: $19
    dec a                                         ; $55E5: $3D

jr_027_55E6:
    jr c, jr_027_5624                             ; $55E6: $38 $3C

    ld a, l                                       ; $55E8: $7D
    ld a, l                                       ; $55E9: $7D
    xor [hl]                                      ; $55EA: $AE
    xor [hl]                                      ; $55EB: $AE

jr_027_55EC:
    ld d, l                                       ; $55EC: $55
    ld d, l                                       ; $55ED: $55
    ld [$3C08], sp                                ; $55EE: $08 $08 $3C
    inc a                                         ; $55F1: $3C
    ld e, [hl]                                    ; $55F2: $5E
    ld e, [hl]                                    ; $55F3: $5E
    daa                                           ; $55F4: $27
    daa                                           ; $55F5: $27
    ld a, [bc]                                    ; $55F6: $0A
    ld a, [bc]                                    ; $55F7: $0A
    inc h                                         ; $55F8: $24
    inc h                                         ; $55F9: $24
    add d                                         ; $55FA: $82
    add d                                         ; $55FB: $82
    ld b, a                                       ; $55FC: $47
    ld b, a                                       ; $55FD: $47
    nop                                           ; $55FE: $00
    nop                                           ; $55FF: $00
    nop                                           ; $5600: $00
    nop                                           ; $5601: $00
    nop                                           ; $5602: $00
    inc b                                         ; $5603: $04

jr_027_5604:
    nop                                           ; $5604: $00
    ld c, $0C                                     ; $5605: $0E $0C
    rra                                           ; $5607: $1F
    inc e                                         ; $5608: $1C
    rra                                           ; $5609: $1F
    ld c, $1F                                     ; $560A: $0E $1F
    ld e, $1F                                     ; $560C: $1E $1F
    rra                                           ; $560E: $1F
    rra                                           ; $560F: $1F
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    nop                                           ; $5614: $00
    nop                                           ; $5615: $00

jr_027_5616:
    nop                                           ; $5616: $00
    nop                                           ; $5617: $00

jr_027_5618:
    nop                                           ; $5618: $00
    db $10                                        ; $5619: $10
    jr nz, jr_027_5654                            ; $561A: $20 $38

jr_027_561C:
    jr nc, @+$3A                                  ; $561C: $30 $38

    jr nc, jr_027_5658                            ; $561E: $30 $38

    ld e, $1F                                     ; $5620: $1E $1F
    ld e, a                                       ; $5622: $5F
    ld e, a                                       ; $5623: $5F

jr_027_5624:
    dec de                                        ; $5624: $1B
    dec de                                        ; $5625: $1B
    inc a                                         ; $5626: $3C
    inc a                                         ; $5627: $3C
    ld a, [hl+]                                   ; $5628: $2A
    ld a, [hl+]                                   ; $5629: $2A
    inc d                                         ; $562A: $14
    inc d                                         ; $562B: $14
    jr nz, jr_027_564E                            ; $562C: $20 $20

    ld [bc], a                                    ; $562E: $02
    ld [bc], a                                    ; $562F: $02
    ld a, [de]                                    ; $5630: $1A
    ld a, [de]                                    ; $5631: $1A
    jr c, jr_027_566C                             ; $5632: $38 $38

    sub b                                         ; $5634: $90
    sub b                                         ; $5635: $90
    adc b                                         ; $5636: $88
    adc b                                         ; $5637: $88
    nop                                           ; $5638: $00
    ld h, b                                       ; $5639: $60
    db $E4                                        ; $563A: $E4
    db $F4                                        ; $563B: $F4
    sub b                                         ; $563C: $90
    sub b                                         ; $563D: $90
    ld b, b                                       ; $563E: $40
    ld b, b                                       ; $563F: $40
    nop                                           ; $5640: $00
    db $10                                        ; $5641: $10
    db $10                                        ; $5642: $10
    jr c, @+$32                                   ; $5643: $38 $30

    jr c, jr_027_56C0                             ; $5645: $38 $79

    ld a, l                                       ; $5647: $7D
    ld d, h                                       ; $5648: $54
    ld d, h                                       ; $5649: $54
    jr c, jr_027_5684                             ; $564A: $38 $38

    inc d                                         ; $564C: $14
    inc d                                         ; $564D: $14

jr_027_564E:
    ld [$1008], sp                                ; $564E: $08 $08 $10
    stop                                          ; $5651: $10 $00
    nop                                           ; $5653: $00

jr_027_5654:
    db $10                                        ; $5654: $10
    stop                                          ; $5655: $10 $00
    nop                                           ; $5657: $00

jr_027_5658:
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
    jr jr_027_56A3                                ; $5669: $18 $38

    inc a                                         ; $566B: $3C

jr_027_566C:
    inc d                                         ; $566C: $14
    inc d                                         ; $566D: $14
    ld [$C008], sp                                ; $566E: $08 $08 $C0
    nop                                           ; $5671: $00
    jr nc, jr_027_5674                            ; $5672: $30 $00

jr_027_5674:
    jr jr_027_5676                                ; $5674: $18 $00

jr_027_5676:
    inc c                                         ; $5676: $0C
    nop                                           ; $5677: $00
    ld c, $04                                     ; $5678: $0E $04
    ld c, $04                                     ; $567A: $0E $04
    rrca                                          ; $567C: $0F
    ld [bc], a                                    ; $567D: $02
    rra                                           ; $567E: $1F
    inc c                                         ; $567F: $0C
    ld a, $10                                     ; $5680: $3E $10
    cp $00                                        ; $5682: $FE $00

jr_027_5684:
    cp $C4                                        ; $5684: $FE $C4
    rst $38                                       ; $5686: $FF
    ld [de], a                                    ; $5687: $12
    rst $38                                       ; $5688: $FF
    ld e, b                                       ; $5689: $58
    db $FC                                        ; $568A: $FC
    ld l, b                                       ; $568B: $68
    db $FC                                        ; $568C: $FC
    ld h, b                                       ; $568D: $60
    ldh a, [rP1]                                  ; $568E: $F0 $00
    inc a                                         ; $5690: $3C
    inc a                                         ; $5691: $3C
    ld b, d                                       ; $5692: $42
    ld a, [hl]                                    ; $5693: $7E
    sbc c                                         ; $5694: $99
    rst $38                                       ; $5695: $FF
    cp l                                          ; $5696: $BD
    rst $38                                       ; $5697: $FF
    cp l                                          ; $5698: $BD
    rst $38                                       ; $5699: $FF
    sbc c                                         ; $569A: $99
    rst $38                                       ; $569B: $FF
    ld b, d                                       ; $569C: $42
    ld a, [hl]                                    ; $569D: $7E
    inc a                                         ; $569E: $3C
    inc a                                         ; $569F: $3C
    nop                                           ; $56A0: $00
    nop                                           ; $56A1: $00
    nop                                           ; $56A2: $00

jr_027_56A3:
    nop                                           ; $56A3: $00
    nop                                           ; $56A4: $00
    nop                                           ; $56A5: $00
    nop                                           ; $56A6: $00
    nop                                           ; $56A7: $00
    nop                                           ; $56A8: $00
    nop                                           ; $56A9: $00
    rst $38                                       ; $56AA: $FF
    nop                                           ; $56AB: $00
    rst $38                                       ; $56AC: $FF
    ld l, d                                       ; $56AD: $6A
    rst $38                                       ; $56AE: $FF
    nop                                           ; $56AF: $00
    rst $38                                       ; $56B0: $FF
    rst $38                                       ; $56B1: $FF
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

jr_027_56C0:
    nop                                           ; $56C0: $00
    nop                                           ; $56C1: $00
    nop                                           ; $56C2: $00
    nop                                           ; $56C3: $00
    nop                                           ; $56C4: $00
    nop                                           ; $56C5: $00
    ret nz                                        ; $56C6: $C0

    nop                                           ; $56C7: $00
    ldh [rP1], a                                  ; $56C8: $E0 $00
    ld hl, sp-$20                                 ; $56CA: $F8 $E0
    cp $18                                        ; $56CC: $FE $18
    rst $18                                       ; $56CE: $DF
    add [hl]                                      ; $56CF: $86
    rlca                                          ; $56D0: $07
    ld hl, sp-$40                                 ; $56D1: $F8 $C0
    add b                                         ; $56D3: $80
    ret nz                                        ; $56D4: $C0

    add b                                         ; $56D5: $80
    ret nz                                        ; $56D6: $C0

    add b                                         ; $56D7: $80
    ret nz                                        ; $56D8: $C0

    add b                                         ; $56D9: $80
    ret nz                                        ; $56DA: $C0

    add b                                         ; $56DB: $80
    ret nz                                        ; $56DC: $C0

    nop                                           ; $56DD: $00
    nop                                           ; $56DE: $00
    nop                                           ; $56DF: $00
    nop                                           ; $56E0: $00
    nop                                           ; $56E1: $00
    nop                                           ; $56E2: $00
    nop                                           ; $56E3: $00
    nop                                           ; $56E4: $00
    nop                                           ; $56E5: $00
    ret nz                                        ; $56E6: $C0

    nop                                           ; $56E7: $00
    ldh [rP1], a                                  ; $56E8: $E0 $00
    ld hl, sp-$20                                 ; $56EA: $F8 $E0
    db $FC                                        ; $56EC: $FC
    jr @-$20                                      ; $56ED: $18 $DE

    add h                                         ; $56EF: $84
    rst $00                                       ; $56F0: $C7
    add d                                         ; $56F1: $82
    jp nz, $C080                                  ; $56F2: $C2 $80 $C0

    add h                                         ; $56F5: $84
    ret nz                                        ; $56F6: $C0

    adc b                                         ; $56F7: $88
    ret nz                                        ; $56F8: $C0

    sub b                                         ; $56F9: $90
    ret nz                                        ; $56FA: $C0

    and b                                         ; $56FB: $A0
    add b                                         ; $56FC: $80
    ld b, b                                       ; $56FD: $40
    nop                                           ; $56FE: $00
    nop                                           ; $56FF: $00
    nop                                           ; $5700: $00
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    nop                                           ; $5704: $00
    nop                                           ; $5705: $00
    ld [$1400], sp                                ; $5706: $08 $00 $14
    ld [$0814], sp                                ; $5709: $08 $14 $08
    inc e                                         ; $570C: $1C
    nop                                           ; $570D: $00
    ld [$0800], sp                                ; $570E: $08 $00 $08
    nop                                           ; $5711: $00
    ld [$0800], sp                                ; $5712: $08 $00 $08
    nop                                           ; $5715: $00
    ld [$1C00], sp                                ; $5716: $08 $00 $1C
    nop                                           ; $5719: $00
    ld a, $14                                     ; $571A: $3E $14
    ld a, $14                                     ; $571C: $3E $14
    inc d                                         ; $571E: $14
    nop                                           ; $571F: $00
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    rra                                           ; $5722: $1F
    nop                                           ; $5723: $00
    jr nz, jr_027_5745                            ; $5724: $20 $1F

    ld e, a                                       ; $5726: $5F
    jr nz, jr_027_579B                            ; $5727: $20 $72

    rra                                           ; $5729: $1F
    halt                                          ; $572A: $76
    ccf                                           ; $572B: $3F
    ld a, a                                       ; $572C: $7F
    nop                                           ; $572D: $00
    ld b, b                                       ; $572E: $40
    ccf                                           ; $572F: $3F
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    ld hl, sp+$00                                 ; $5732: $F8 $00
    inc b                                         ; $5734: $04
    ld hl, sp-$06                                 ; $5735: $F8 $FA
    inc b                                         ; $5737: $04
    sbc $F8                                       ; $5738: $DE $F8
    adc $FC                                       ; $573A: $CE $FC
    cp $00                                        ; $573C: $FE $00
    ld [bc], a                                    ; $573E: $02
    db $FC                                        ; $573F: $FC
    ld a, a                                       ; $5740: $7F
    nop                                           ; $5741: $00
    ld h, b                                       ; $5742: $60
    ccf                                           ; $5743: $3F
    ld b, [hl]                                    ; $5744: $46

jr_027_5745:
    ccf                                           ; $5745: $3F
    ld [hl], b                                    ; $5746: $70
    ccf                                           ; $5747: $3F
    ld a, a                                       ; $5748: $7F
    nop                                           ; $5749: $00
    ld [hl], h                                    ; $574A: $74
    ccf                                           ; $574B: $3F
    ld [hl], h                                    ; $574C: $74
    ccf                                           ; $574D: $3F
    ld a, a                                       ; $574E: $7F
    nop                                           ; $574F: $00
    cp $00                                        ; $5750: $FE $00
    ld a, $FC                                     ; $5752: $3E $FC
    ld c, $FC                                     ; $5754: $0E $FC
    ld a, [$FEFC]                                 ; $5756: $FA $FC $FE
    nop                                           ; $5759: $00
    xor d                                         ; $575A: $AA
    db $FC                                        ; $575B: $FC
    xor $FC                                       ; $575C: $EE $FC
    cp $00                                        ; $575E: $FE $00
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
    inc bc                                        ; $576A: $03
    nop                                           ; $576B: $00
    rlca                                          ; $576C: $07
    inc bc                                        ; $576D: $03
    rrca                                          ; $576E: $0F
    rlca                                          ; $576F: $07
    rrca                                          ; $5770: $0F
    inc bc                                        ; $5771: $03
    rra                                           ; $5772: $1F
    nop                                           ; $5773: $00
    ccf                                           ; $5774: $3F
    dec e                                         ; $5775: $1D
    ld a, a                                       ; $5776: $7F
    ld a, $7F                                     ; $5777: $3E $7F
    inc e                                         ; $5779: $1C
    ld a, a                                       ; $577A: $7F
    ld [hl+], a                                   ; $577B: $22
    ld a, $1C                                     ; $577C: $3E $1C
    inc e                                         ; $577E: $1C
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
    inc bc                                        ; $578A: $03
    nop                                           ; $578B: $00
    inc b                                         ; $578C: $04
    inc bc                                        ; $578D: $03
    add hl, bc                                    ; $578E: $09
    rlca                                          ; $578F: $07

jr_027_5790:
    rrca                                          ; $5790: $0F
    inc bc                                        ; $5791: $03
    rra                                           ; $5792: $1F
    nop                                           ; $5793: $00
    daa                                           ; $5794: $27
    dec e                                         ; $5795: $1D
    ld c, a                                       ; $5796: $4F
    ld a, $6F                                     ; $5797: $3E $6F
    inc e                                         ; $5799: $1C
    ld a, a                                       ; $579A: $7F

jr_027_579B:
    ld [hl+], a                                   ; $579B: $22
    ld a, $1C                                     ; $579C: $3E $1C
    inc e                                         ; $579E: $1C
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
    inc bc                                        ; $57AA: $03
    nop                                           ; $57AB: $00
    rlca                                          ; $57AC: $07
    inc bc                                        ; $57AD: $03
    ld c, $07                                     ; $57AE: $0E $07
    inc c                                         ; $57B0: $0C
    inc bc                                        ; $57B1: $03
    rra                                           ; $57B2: $1F
    nop                                           ; $57B3: $00
    dec sp                                        ; $57B4: $3B
    dec e                                         ; $57B5: $1D
    ld [hl], c                                    ; $57B6: $71
    ld a, $63                                     ; $57B7: $3E $63
    inc e                                         ; $57B9: $1C
    ld a, a                                       ; $57BA: $7F
    ld [hl+], a                                   ; $57BB: $22
    ld a, $1C                                     ; $57BC: $3E $1C
    inc e                                         ; $57BE: $1C
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
    add b                                         ; $57CA: $80
    nop                                           ; $57CB: $00
    ld b, b                                       ; $57CC: $40
    add b                                         ; $57CD: $80
    jr nz, jr_027_5790                            ; $57CE: $20 $C0

    ld h, b                                       ; $57D0: $60
    add b                                         ; $57D1: $80
    ldh a, [rP1]                                  ; $57D2: $F0 $00
    cp b                                          ; $57D4: $B8
    ld [hl], b                                    ; $57D5: $70
    ld a, h                                       ; $57D6: $7C
    ld hl, sp-$04                                 ; $57D7: $F8 $FC
    ld [hl], b                                    ; $57D9: $70
    db $FC                                        ; $57DA: $FC
    adc b                                         ; $57DB: $88
    ld hl, sp+$70                                 ; $57DC: $F8 $70
    ld [hl], b                                    ; $57DE: $70
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
    add b                                         ; $57EA: $80
    nop                                           ; $57EB: $00
    ret nz                                        ; $57EC: $C0

    add b                                         ; $57ED: $80
    ldh [$C0], a                                  ; $57EE: $E0 $C0
    ldh [$80], a                                  ; $57F0: $E0 $80
    ldh a, [rP1]                                  ; $57F2: $F0 $00
    add sp, $70                                   ; $57F4: $E8 $70
    call nz, $8CF8                                ; $57F6: $C4 $F8 $8C
    ld [hl], b                                    ; $57F9: $70
    db $FC                                        ; $57FA: $FC
    adc b                                         ; $57FB: $88

jr_027_57FC:
    ld hl, sp+$70                                 ; $57FC: $F8 $70
    ld [hl], b                                    ; $57FE: $70
    nop                                           ; $57FF: $00
    cp $00                                        ; $5800: $FE $00
    rst $38                                       ; $5802: $FF
    cp $FE                                        ; $5803: $FE $FE
    ld bc, $12B8                                  ; $5805: $01 $B8 $12
    cp b                                          ; $5808: $B8
    inc d                                         ; $5809: $14
    rst $30                                       ; $580A: $F7
    jr z, jr_027_57FC                             ; $580B: $28 $EF

    rst $00                                       ; $580D: $C7
    rst $08                                       ; $580E: $CF
    nop                                           ; $580F: $00
    nop                                           ; $5810: $00
    nop                                           ; $5811: $00
    nop                                           ; $5812: $00
    nop                                           ; $5813: $00
    nop                                           ; $5814: $00
    nop                                           ; $5815: $00
    nop                                           ; $5816: $00
    add b                                         ; $5817: $80
    nop                                           ; $5818: $00
    ld b, b                                       ; $5819: $40
    ret nz                                        ; $581A: $C0

    jr nz, @-$1E                                  ; $581B: $20 $E0

    ret nz                                        ; $581D: $C0

    ldh [rP1], a                                  ; $581E: $E0 $00
    add a                                         ; $5820: $87
    nop                                           ; $5821: $00
    add b                                         ; $5822: $80
    nop                                           ; $5823: $00
    add b                                         ; $5824: $80
    nop                                           ; $5825: $00
    ret nz                                        ; $5826: $C0

    nop                                           ; $5827: $00
    ldh [rLCDC], a                                ; $5828: $E0 $40
    ldh a, [$E0]                                  ; $582A: $F0 $E0
    ldh [$C0], a                                  ; $582C: $E0 $C0
    ret nz                                        ; $582E: $C0

    nop                                           ; $582F: $00
    ret nz                                        ; $5830: $C0

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
    rlca                                          ; $5840: $07
    nop                                           ; $5841: $00
    rra                                           ; $5842: $1F
    rlca                                          ; $5843: $07
    ccf                                           ; $5844: $3F
    rra                                           ; $5845: $1F
    ld a, a                                       ; $5846: $7F
    cpl                                           ; $5847: $2F
    ld a, a                                       ; $5848: $7F
    rla                                           ; $5849: $17
    ld a, a                                       ; $584A: $7F
    cpl                                           ; $584B: $2F
    ld a, a                                       ; $584C: $7F
    inc c                                         ; $584D: $0C
    ld e, $00                                     ; $584E: $1E $00
    add b                                         ; $5850: $80
    nop                                           ; $5851: $00
    ldh [$80], a                                  ; $5852: $E0 $80
    ld hl, sp-$20                                 ; $5854: $F8 $E0
    ld hl, sp-$20                                 ; $5856: $F8 $E0
    ldh a, [$C0]                                  ; $5858: $F0 $C0
    ldh [rP1], a                                  ; $585A: $E0 $00
    add b                                         ; $585C: $80
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
    ret nz                                        ; $5868: $C0

    nop                                           ; $5869: $00
    and b                                         ; $586A: $A0
    ret nz                                        ; $586B: $C0

    ldh a, [rNR41]                                ; $586C: $F0 $20
    jr nc, jr_027_5870                            ; $586E: $30 $00

jr_027_5870:
    nop                                           ; $5870: $00
    nop                                           ; $5871: $00
    rlca                                          ; $5872: $07
    nop                                           ; $5873: $00
    rra                                           ; $5874: $1F
    rlca                                          ; $5875: $07
    ccf                                           ; $5876: $3F
    jr jr_027_58D9                                ; $5877: $18 $60

    jr nz, @-$1E                                  ; $5879: $20 $E0

    ld b, b                                       ; $587B: $40
    add b                                         ; $587C: $80
    ld h, b                                       ; $587D: $60
    rst $08                                       ; $587E: $CF
    jr c, jr_027_5881                             ; $587F: $38 $00

jr_027_5881:
    nop                                           ; $5881: $00
    ldh [rP1], a                                  ; $5882: $E0 $00
    ld hl, sp-$20                                 ; $5884: $F8 $E0
    db $FC                                        ; $5886: $FC
    jr jr_027_588F                                ; $5887: $18 $06

    inc b                                         ; $5889: $04
    rlca                                          ; $588A: $07
    ld [bc], a                                    ; $588B: $02
    rlca                                          ; $588C: $07
    ld b, $8F                                     ; $588D: $06 $8F

jr_027_588F:
    inc c                                         ; $588F: $0C
    ld a, a                                       ; $5890: $7F
    rra                                           ; $5891: $1F
    ld a, [hl]                                    ; $5892: $7E
    ld l, $66                                     ; $5893: $2E $66
    ld a, $33                                     ; $5895: $3E $33
    rra                                           ; $5897: $1F
    inc sp                                        ; $5898: $33
    rra                                           ; $5899: $1F
    dec de                                        ; $589A: $1B
    rrca                                          ; $589B: $0F
    rrca                                          ; $589C: $0F
    inc bc                                        ; $589D: $03
    inc bc                                        ; $589E: $03
    nop                                           ; $589F: $00
    adc $C8                                       ; $58A0: $CE $C8
    sbc $D4                                       ; $58A2: $DE $D4
    cp $FC                                        ; $58A4: $FE $FC
    cp h                                          ; $58A6: $BC
    cp b                                          ; $58A7: $B8
    inc a                                         ; $58A8: $3C
    jr c, @+$3A                                   ; $58A9: $38 $38

    jr nc, jr_027_58DD                            ; $58AB: $30 $30

    ld b, b                                       ; $58AD: $40
    ret nz                                        ; $58AE: $C0

    nop                                           ; $58AF: $00
    inc bc                                        ; $58B0: $03
    nop                                           ; $58B1: $00
    inc bc                                        ; $58B2: $03
    inc bc                                        ; $58B3: $03
    inc bc                                        ; $58B4: $03
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
    rst $38                                       ; $58C0: $FF
    db $FC                                        ; $58C1: $FC
    rst $38                                       ; $58C2: $FF
    rst $38                                       ; $58C3: $FF
    rst $38                                       ; $58C4: $FF
    cp $0E                                        ; $58C5: $FE $0E
    ld c, $06                                     ; $58C7: $0E $06
    ld b, $24                                     ; $58C9: $06 $24
    inc h                                         ; $58CB: $24
    jr nz, @+$22                                  ; $58CC: $20 $20

    ld [$1808], sp                                ; $58CE: $08 $08 $18
    jr @+$1A                                      ; $58D1: $18 $18

    jr @+$12                                      ; $58D3: $18 $10

    stop                                          ; $58D5: $10 $00
    nop                                           ; $58D7: $00
    nop                                           ; $58D8: $00

jr_027_58D9:
    nop                                           ; $58D9: $00
    nop                                           ; $58DA: $00
    nop                                           ; $58DB: $00
    nop                                           ; $58DC: $00

jr_027_58DD:
    nop                                           ; $58DD: $00
    nop                                           ; $58DE: $00
    nop                                           ; $58DF: $00

    ; $58E0
BITSET_SplashScreen::
    db $02         ;VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_InteractiveImaginationLogo,$10,$08
        LoadBitmap $8D00,BITMAP_MusyX,$0A,$03

    db $02         ;VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_InteractiveImaginationLogoText,$10,$04
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02

    ; $58FE
BITSET_PressStartScreen::
    db $01         ;VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8000,BITMAP_PressStart,$07,$01

    db $02         ;VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_MagiNationLogo,$10,$07
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02

    ; $5915
BITMAP_InteractiveImaginationLogo::
    INCBIN "autogenerated/assets/boot/splash/InteractiveImaginationLogo.tileset"

    ; $6115
BITMAP_InteractiveImaginationLogoText::
    INCBIN "autogenerated/assets/boot/splash/InteractiveImaginationLogoText.tileset"

    ; $6515
BITMAP_MusyX::
    INCBIN "autogenerated/assets/boot/splash/MusyX.tileset"

    ; $66F5
BITMAP_PressStart::
    INCBIN "autogenerated/assets/boot/pressstart/PressStart.tileset"

    ; $6765
BITMAP_MagiNationLogo::
    INCBIN "autogenerated/assets/boot/pressstart/MagiNationLogo.tileset"

    ; $6E65
PAL_InteractiveImaginationLogo::
    INCBIN "autogenerated/assets/boot/splash/InteractiveImaginationLogo.pal"

    ; $6EA5
PAL_MusyX::
    INCBIN "autogenerated/assets/boot/splash/MusyX.pal"

    ; $6EE5
PAL_StartScreen::
    INCBIN "autogenerated/assets/boot/pressstart/StartScreen.pal"

    call nz, Call_027_4C00                        ; $6F25: $C4 $00 $4C
    nop                                           ; $6F28: $00
    call nz, $EE00                                ; $6F29: $C4 $00 $EE
    nop                                           ; $6F2C: $00

    ; $6F2D
ATTRTILE_InteractiveImaginationLogoRLE::
    INCBIN "autogenerated/assets/boot/splash/InteractiveImaginationLogo.attrmap.rle"
    INCBIN "autogenerated/assets/boot/splash/InteractiveImaginationLogo.tilemap.rle"

    ; $70F8
ATTRTILE_MusyXRLE::
    INCBIN "autogenerated/assets/boot/splash/MusyX.attrmap.rle"
    INCBIN "autogenerated/assets/boot/splash/MusyX.tilemap.rle"

    ; $7179
ATTRTILE_MagiNationLogoRLE::
    INCBIN "autogenerated/assets/boot/pressstart/MagiNationLogo.attrmap.rle"
    INCBIN "autogenerated/assets/boot/pressstart/MagiNationLogo.tilemap.rle"



    ld h, [hl]                                    ; $724B: $66
    ld h, a                                       ; $724C: $67
    ld l, b                                       ; $724D: $68
    xor $69                                       ; $724E: $EE $69
    ld l, d                                       ; $7250: $6A
    ld l, e                                       ; $7251: $6B
    ld l, h                                       ; $7252: $6C
    ld l, l                                       ; $7253: $6D
    pop bc                                        ; $7254: $C1
    xor $EE                                       ; $7255: $EE $EE
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

Call_027_7A00:
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
