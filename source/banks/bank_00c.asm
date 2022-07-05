SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    jr c, jr_00C_4004                             ; $4002: $38 $00

jr_00C_4004:
    ld b, [hl]                                    ; $4004: $46
    db $38, $BB                                   ; $4005: $38 $BB
    ld b, h                                       ; $4007: $44
    or a                                          ; $4008: $B7
    ld c, e                                       ; $4009: $4B
    or a                                          ; $400A: $B7
    ld c, e                                       ; $400B: $4B
    cp a                                          ; $400C: $BF
    ld b, c                                       ; $400D: $41
    ld c, a                                       ; $400E: $4F
    ld b, $00                                     ; $400F: $06 $00
    nop                                           ; $4011: $00
    jr c, jr_00C_4014                             ; $4012: $38 $00

jr_00C_4014:
    ld b, [hl]                                    ; $4014: $46
    db $38, $BB                                   ; $4015: $38 $BB
    ld b, h                                       ; $4017: $44
    or a                                          ; $4018: $B7
    ld c, e                                       ; $4019: $4B
    ld d, a                                       ; $401A: $57
    dec bc                                        ; $401B: $0B
    rrca                                          ; $401C: $0F
    ld bc, $060F                                  ; $401D: $01 $0F $06
    nop                                           ; $4020: $00
    nop                                           ; $4021: $00
    jr jr_00C_4024                                ; $4022: $18 $00

jr_00C_4024:
    ld h, $18                                     ; $4024: $26 $18
    dec de                                        ; $4026: $1B
    inc b                                         ; $4027: $04
    rla                                           ; $4028: $17
    dec bc                                        ; $4029: $0B
    rla                                           ; $402A: $17
    dec bc                                        ; $402B: $0B
    rrca                                          ; $402C: $0F
    ld bc, $060F                                  ; $402D: $01 $0F $06
    nop                                           ; $4030: $00
    nop                                           ; $4031: $00
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    inc b                                         ; $4034: $04
    nop                                           ; $4035: $00
    dec bc                                        ; $4036: $0B
    inc b                                         ; $4037: $04
    rla                                           ; $4038: $17
    dec bc                                        ; $4039: $0B
    rla                                           ; $403A: $17
    dec bc                                        ; $403B: $0B
    rrca                                          ; $403C: $0F
    ld bc, $060F                                  ; $403D: $01 $0F $06
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00
    nop                                           ; $4043: $00
    nop                                           ; $4044: $00
    nop                                           ; $4045: $00
    inc bc                                        ; $4046: $03
    nop                                           ; $4047: $00
    rlca                                          ; $4048: $07
    inc bc                                        ; $4049: $03
    rlca                                          ; $404A: $07
    inc bc                                        ; $404B: $03
    rlca                                          ; $404C: $07
    ld bc, $060F                                  ; $404D: $01 $0F $06
    nop                                           ; $4050: $00
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    nop                                           ; $4053: $00
    nop                                           ; $4054: $00
    nop                                           ; $4055: $00
    ret nz                                        ; $4056: $C0

    nop                                           ; $4057: $00
    ldh [rLCDC], a                                ; $4058: $E0 $40
    ldh a, [$A0]                                  ; $405A: $F0 $A0
    ld hl, sp-$30                                 ; $405C: $F8 $D0
    db $FC                                        ; $405E: $FC
    add sp, $00                                   ; $405F: $E8 $00
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    nop                                           ; $4064: $00
    nop                                           ; $4065: $00
    inc bc                                        ; $4066: $03
    nop                                           ; $4067: $00
    rlca                                          ; $4068: $07
    inc bc                                        ; $4069: $03
    rlca                                          ; $406A: $07
    inc bc                                        ; $406B: $03
    rlca                                          ; $406C: $07
    inc bc                                        ; $406D: $03
    rrca                                          ; $406E: $0F
    dec b                                         ; $406F: $05
    nop                                           ; $4070: $00
    nop                                           ; $4071: $00
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00
    nop                                           ; $4074: $00
    nop                                           ; $4075: $00
    ret nz                                        ; $4076: $C0

    nop                                           ; $4077: $00
    ldh a, [$80]                                  ; $4078: $F0 $80
    ld hl, sp-$30                                 ; $407A: $F8 $D0
    db $FC                                        ; $407C: $FC
    add sp, -$02                                  ; $407D: $E8 $FE
    db $F4                                        ; $407F: $F4
    rrca                                          ; $4080: $0F
    rlca                                          ; $4081: $07
    rlca                                          ; $4082: $07
    inc bc                                        ; $4083: $03
    inc bc                                        ; $4084: $03
    ld bc, $0001                                  ; $4085: $01 $01 $00
    nop                                           ; $4088: $00
    nop                                           ; $4089: $00
    nop                                           ; $408A: $00
    nop                                           ; $408B: $00
    nop                                           ; $408C: $00
    nop                                           ; $408D: $00
    nop                                           ; $408E: $00
    nop                                           ; $408F: $00
    cp $74                                        ; $4090: $FE $74
    push hl                                       ; $4092: $E5
    cp d                                          ; $4093: $BA
    push hl                                       ; $4094: $E5
    jp c, $E0FE                                   ; $4095: $DA $FE $E0

    ret z                                         ; $4098: $C8

    ld [hl], b                                    ; $4099: $70
    ld c, b                                       ; $409A: $48
    jr nc, jr_00C_40CD                            ; $409B: $30 $30

    nop                                           ; $409D: $00
    nop                                           ; $409E: $00
    nop                                           ; $409F: $00
    rrca                                          ; $40A0: $0F
    ld b, $0F                                     ; $40A1: $06 $0F
    rlca                                          ; $40A3: $07
    rlca                                          ; $40A4: $07
    inc bc                                        ; $40A5: $03
    inc bc                                        ; $40A6: $03
    ld bc, $0001                                  ; $40A7: $01 $01 $00
    nop                                           ; $40AA: $00
    nop                                           ; $40AB: $00
    nop                                           ; $40AC: $00
    nop                                           ; $40AD: $00
    nop                                           ; $40AE: $00
    nop                                           ; $40AF: $00
    cp $F4                                        ; $40B0: $FE $F4
    push hl                                       ; $40B2: $E5
    ld a, d                                       ; $40B3: $7A
    push hl                                       ; $40B4: $E5
    sbc d                                         ; $40B5: $9A
    cp $E0                                        ; $40B6: $FE $E0
    ret z                                         ; $40B8: $C8

    ldh a, [$C8]                                  ; $40B9: $F0 $C8
    jr nc, jr_00C_40ED                            ; $40BB: $30 $30

    nop                                           ; $40BD: $00
    nop                                           ; $40BE: $00
    nop                                           ; $40BF: $00
    ld [bc], a                                    ; $40C0: $02
    ld [bc], a                                    ; $40C1: $02
    jr c, jr_00C_40C4                             ; $40C2: $38 $00

jr_00C_40C4:
    ld a, [hl]                                    ; $40C4: $7E
    jr c, jr_00C_4106                             ; $40C5: $38 $3F

    ld e, $3F                                     ; $40C7: $1E $3F
    ld e, $1E                                     ; $40C9: $1E $1E
    nop                                           ; $40CB: $00
    ld b, b                                       ; $40CC: $40

jr_00C_40CD:
    ld b, b                                       ; $40CD: $40
    nop                                           ; $40CE: $00
    ld a, a                                       ; $40CF: $7F
    ld b, b                                       ; $40D0: $40
    nop                                           ; $40D1: $00
    ldh a, [rSTAT]                                ; $40D2: $F0 $41
    ld hl, sp+$71                                 ; $40D4: $F8 $71
    db $FC                                        ; $40D6: $FC
    ld a, d                                       ; $40D7: $7A
    ld a, h                                       ; $40D8: $7C
    ld a, [hl-]                                   ; $40D9: $3A
    jr c, jr_00C_411E                             ; $40DA: $38 $42

    nop                                           ; $40DC: $00
    ld a, $C8                                     ; $40DD: $3E $C8
    ccf                                           ; $40DF: $3F
    nop                                           ; $40E0: $00
    nop                                           ; $40E1: $00
    nop                                           ; $40E2: $00
    nop                                           ; $40E3: $00
    nop                                           ; $40E4: $00
    nop                                           ; $40E5: $00
    ld b, b                                       ; $40E6: $40
    ld b, b                                       ; $40E7: $40
    ld b, b                                       ; $40E8: $40
    ld b, b                                       ; $40E9: $40
    nop                                           ; $40EA: $00
    nop                                           ; $40EB: $00
    nop                                           ; $40EC: $00

jr_00C_40ED:
    nop                                           ; $40ED: $00
    db $10                                        ; $40EE: $10
    sub b                                         ; $40EF: $90
    ld bc, $071E                                  ; $40F0: $01 $1E $07
    nop                                           ; $40F3: $00
    rrca                                          ; $40F4: $0F
    rlca                                          ; $40F5: $07
    rra                                           ; $40F6: $1F
    rrca                                          ; $40F7: $0F
    rra                                           ; $40F8: $1F
    ld c, $0E                                     ; $40F9: $0E $0E
    ld bc, $4040                                  ; $40FB: $01 $40 $40
    nop                                           ; $40FE: $00
    nop                                           ; $40FF: $00
    ldh [$DE], a                                  ; $4100: $E0 $DE
    pop af                                        ; $4102: $F1
    ld l, b                                       ; $4103: $68
    db $E3                                        ; $4104: $E3
    dec e                                         ; $4105: $1D

jr_00C_4106:
    add c                                         ; $4106: $81
    ld [hl], h                                    ; $4107: $74
    nop                                           ; $4108: $00
    add $10                                       ; $4109: $C6 $10
    ld [bc], a                                    ; $410B: $02
    jr c, jr_00C_411E                             ; $410C: $38 $10

    stop                                          ; $410E: $10 $00
    nop                                           ; $4110: $00
    nop                                           ; $4111: $00
    ret nz                                        ; $4112: $C0

    nop                                           ; $4113: $00
    ldh [$C0], a                                  ; $4114: $E0 $C0
    ldh [$C0], a                                  ; $4116: $E0 $C0
    ldh [rLCDC], a                                ; $4118: $E0 $40
    ld b, b                                       ; $411A: $40
    nop                                           ; $411B: $00
    nop                                           ; $411C: $00
    nop                                           ; $411D: $00

jr_00C_411E:
    nop                                           ; $411E: $00
    nop                                           ; $411F: $00
    jr nc, jr_00C_4122                            ; $4120: $30 $00

jr_00C_4122:
    ld a, b                                       ; $4122: $78
    jr nc, @+$72                                  ; $4123: $30 $70

    jr nc, jr_00C_4147                            ; $4125: $30 $20

    nop                                           ; $4127: $00
    add b                                         ; $4128: $80
    nop                                           ; $4129: $00
    nop                                           ; $412A: $00
    ld [$1730], sp                                ; $412B: $08 $30 $17
    ld [hl], l                                    ; $412E: $75
    scf                                           ; $412F: $37
    nop                                           ; $4130: $00
    nop                                           ; $4131: $00
    nop                                           ; $4132: $00
    nop                                           ; $4133: $00
    add b                                         ; $4134: $80
    nop                                           ; $4135: $00
    inc b                                         ; $4136: $04
    nop                                           ; $4137: $00
    ld c, $24                                     ; $4138: $0E $24
    rrca                                          ; $413A: $0F
    ld b, [hl]                                    ; $413B: $46
    rlca                                          ; $413C: $07
    add $02                                       ; $413D: $C6 $02
    ldh [rNR41], a                                ; $413F: $E0 $20
    rlca                                          ; $4141: $07
    ld bc, $4009                                  ; $4142: $01 $09 $40
    nop                                           ; $4145: $00
    db $EC                                        ; $4146: $EC

jr_00C_4147:
    ld l, b                                       ; $4147: $68
    ld l, b                                       ; $4148: $68
    nop                                           ; $4149: $00
    nop                                           ; $414A: $00
    nop                                           ; $414B: $00
    nop                                           ; $414C: $00
    nop                                           ; $414D: $00
    nop                                           ; $414E: $00
    nop                                           ; $414F: $00
    add b                                         ; $4150: $80
    ld d, b                                       ; $4151: $50
    inc b                                         ; $4152: $04
    add b                                         ; $4153: $80
    ld b, $44                                     ; $4154: $06 $44
    rrca                                          ; $4156: $0F
    ld b, $06                                     ; $4157: $06 $06
    nop                                           ; $4159: $00
    nop                                           ; $415A: $00
    nop                                           ; $415B: $00
    nop                                           ; $415C: $00
    nop                                           ; $415D: $00
    nop                                           ; $415E: $00
    nop                                           ; $415F: $00
    nop                                           ; $4160: $00
    nop                                           ; $4161: $00
    inc c                                         ; $4162: $0C
    nop                                           ; $4163: $00
    ld e, $0C                                     ; $4164: $1E $0C
    ld a, $1C                                     ; $4166: $3E $1C
    inc a                                         ; $4168: $3C
    jr jr_00C_4183                                ; $4169: $18 $18

    nop                                           ; $416B: $00
    nop                                           ; $416C: $00
    nop                                           ; $416D: $00
    nop                                           ; $416E: $00
    nop                                           ; $416F: $00
    nop                                           ; $4170: $00
    nop                                           ; $4171: $00
    inc c                                         ; $4172: $0C
    nop                                           ; $4173: $00
    ld e, $0C                                     ; $4174: $1E $0C
    ld e, $0C                                     ; $4176: $1E $0C
    inc c                                         ; $4178: $0C
    nop                                           ; $4179: $00
    nop                                           ; $417A: $00
    nop                                           ; $417B: $00

jr_00C_417C:
    nop                                           ; $417C: $00
    nop                                           ; $417D: $00
    nop                                           ; $417E: $00
    nop                                           ; $417F: $00
    ld bc, $0F00                                  ; $4180: $01 $00 $0F

jr_00C_4183:
    nop                                           ; $4183: $00
    rra                                           ; $4184: $1F
    nop                                           ; $4185: $00
    ccf                                           ; $4186: $3F
    nop                                           ; $4187: $00
    ccf                                           ; $4188: $3F
    nop                                           ; $4189: $00
    dec e                                         ; $418A: $1D
    ld [bc], a                                    ; $418B: $02
    ld a, [hl+]                                   ; $418C: $2A
    rla                                           ; $418D: $17
    ld [de], a                                    ; $418E: $12
    rrca                                          ; $418F: $0F
    ld h, b                                       ; $4190: $60
    nop                                           ; $4191: $00
    ldh a, [rP1]                                  ; $4192: $F0 $00
    ld hl, sp+$00                                 ; $4194: $F8 $00
    ldh a, [rP1]                                  ; $4196: $F0 $00
    ld hl, sp+$00                                 ; $4198: $F8 $00
    ldh a, [rP1]                                  ; $419A: $F0 $00
    ld [hl], b                                    ; $419C: $70
    ret nz                                        ; $419D: $C0

    ld d, b                                       ; $419E: $50
    ldh [rTIMA], a                                ; $419F: $E0 $05
    nop                                           ; $41A1: $00
    rrca                                          ; $41A2: $0F
    nop                                           ; $41A3: $00
    rra                                           ; $41A4: $1F
    nop                                           ; $41A5: $00
    rra                                           ; $41A6: $1F
    nop                                           ; $41A7: $00
    rra                                           ; $41A8: $1F
    nop                                           ; $41A9: $00
    dec e                                         ; $41AA: $1D
    ld [bc], a                                    ; $41AB: $02
    ld a, [hl+]                                   ; $41AC: $2A
    rla                                           ; $41AD: $17
    ld a, [de]                                    ; $41AE: $1A
    rlca                                          ; $41AF: $07
    nop                                           ; $41B0: $00
    nop                                           ; $41B1: $00
    ldh [rP1], a                                  ; $41B2: $E0 $00
    ldh a, [rP1]                                  ; $41B4: $F0 $00
    ld hl, sp+$00                                 ; $41B6: $F8 $00
    ld hl, sp+$00                                 ; $41B8: $F8 $00
    jr c, jr_00C_417C                             ; $41BA: $38 $C0

    ld d, h                                       ; $41BC: $54
    add sp, $58                                   ; $41BD: $E8 $58
    ldh [rP1], a                                  ; $41BF: $E0 $00
    nop                                           ; $41C1: $00
    rlca                                          ; $41C2: $07
    nop                                           ; $41C3: $00
    rrca                                          ; $41C4: $0F
    nop                                           ; $41C5: $00
    rra                                           ; $41C6: $1F
    nop                                           ; $41C7: $00
    rra                                           ; $41C8: $1F
    nop                                           ; $41C9: $00
    rra                                           ; $41CA: $1F
    nop                                           ; $41CB: $00
    cpl                                           ; $41CC: $2F
    db $10                                        ; $41CD: $10
    rra                                           ; $41CE: $1F
    nop                                           ; $41CF: $00
    and b                                         ; $41D0: $A0
    nop                                           ; $41D1: $00

jr_00C_41D2:
    ldh a, [rP1]                                  ; $41D2: $F0 $00
    ld hl, sp+$00                                 ; $41D4: $F8 $00
    ld hl, sp+$00                                 ; $41D6: $F8 $00
    ld hl, sp+$00                                 ; $41D8: $F8 $00
    ld hl, sp+$00                                 ; $41DA: $F8 $00
    db $F4                                        ; $41DC: $F4
    ld [$00F8], sp                                ; $41DD: $08 $F8 $00
    nop                                           ; $41E0: $00
    nop                                           ; $41E1: $00
    inc bc                                        ; $41E2: $03
    nop                                           ; $41E3: $00
    rlca                                          ; $41E4: $07
    nop                                           ; $41E5: $00
    rrca                                          ; $41E6: $0F
    nop                                           ; $41E7: $00
    rrca                                          ; $41E8: $0F
    nop                                           ; $41E9: $00
    rrca                                          ; $41EA: $0F
    nop                                           ; $41EB: $00
    rrca                                          ; $41EC: $0F
    nop                                           ; $41ED: $00
    rlca                                          ; $41EE: $07
    nop                                           ; $41EF: $00
    ld e, b                                       ; $41F0: $58
    nop                                           ; $41F1: $00
    db $FC                                        ; $41F2: $FC
    nop                                           ; $41F3: $00
    cp $00                                        ; $41F4: $FE $00
    cp $00                                        ; $41F6: $FE $00
    db $FC                                        ; $41F8: $FC
    nop                                           ; $41F9: $00
    ld hl, sp+$00                                 ; $41FA: $F8 $00
    add sp, $10                                   ; $41FC: $E8 $10
    ret z                                         ; $41FE: $C8

    jr nc, jr_00C_420D                            ; $41FF: $30 $0C

    inc bc                                        ; $4201: $03
    rlca                                          ; $4202: $07
    nop                                           ; $4203: $00
    dec bc                                        ; $4204: $0B
    inc b                                         ; $4205: $04
    rrca                                          ; $4206: $0F
    inc b                                         ; $4207: $04
    rrca                                          ; $4208: $0F
    inc b                                         ; $4209: $04
    inc de                                        ; $420A: $13
    inc c                                         ; $420B: $0C
    inc de                                        ; $420C: $13

jr_00C_420D:
    inc c                                         ; $420D: $0C
    rrca                                          ; $420E: $0F
    nop                                           ; $420F: $00
    jr nz, jr_00C_41D2                            ; $4210: $20 $C0

    ldh [rP1], a                                  ; $4212: $E0 $00
    ret nz                                        ; $4214: $C0

    nop                                           ; $4215: $00
    ld h, b                                       ; $4216: $60
    add b                                         ; $4217: $80
    ldh [rP1], a                                  ; $4218: $E0 $00
    ld d, b                                       ; $421A: $50
    and b                                         ; $421B: $A0
    ld h, b                                       ; $421C: $60
    add b                                         ; $421D: $80
    ret nz                                        ; $421E: $C0

    nop                                           ; $421F: $00
    inc b                                         ; $4220: $04
    inc bc                                        ; $4221: $03
    rlca                                          ; $4222: $07
    nop                                           ; $4223: $00
    ld a, [bc]                                    ; $4224: $0A
    dec b                                         ; $4225: $05
    dec bc                                        ; $4226: $0B
    inc b                                         ; $4227: $04
    rrca                                          ; $4228: $0F
    inc b                                         ; $4229: $04
    ld c, $05                                     ; $422A: $0E $05
    ld [de], a                                    ; $422C: $12
    dec c                                         ; $422D: $0D
    inc de                                        ; $422E: $13
    inc c                                         ; $422F: $0C
    rlca                                          ; $4230: $07
    nop                                           ; $4231: $00
    ld c, $01                                     ; $4232: $0E $01
    dec bc                                        ; $4234: $0B
    inc b                                         ; $4235: $04
    dec bc                                        ; $4236: $0B
    inc b                                         ; $4237: $04
    rrca                                          ; $4238: $0F
    inc b                                         ; $4239: $04
    ld c, $05                                     ; $423A: $0E $05
    ld [de], a                                    ; $423C: $12
    dec c                                         ; $423D: $0D
    inc de                                        ; $423E: $13
    inc c                                         ; $423F: $0C
    ld [hl], d                                    ; $4240: $72
    inc c                                         ; $4241: $0C
    cp h                                          ; $4242: $BC
    ld b, b                                       ; $4243: $40
    add sp, $10                                   ; $4244: $E8 $10
    db $FC                                        ; $4246: $FC

jr_00C_4247:
    db $10                                        ; $4247: $10
    inc a                                         ; $4248: $3C
    ld d, b                                       ; $4249: $50
    inc h                                         ; $424A: $24
    ld e, b                                       ; $424B: $58
    db $E4                                        ; $424C: $E4
    jr jr_00C_4247                                ; $424D: $18 $F8

    nop                                           ; $424F: $00
    ld a, [de]                                    ; $4250: $1A
    rlca                                          ; $4251: $07
    inc b                                         ; $4252: $04
    inc bc                                        ; $4253: $03
    rlca                                          ; $4254: $07
    nop                                           ; $4255: $00
    ld c, $01                                     ; $4256: $0E $01
    dec bc                                        ; $4258: $0B

jr_00C_4259:
    inc b                                         ; $4259: $04
    rrca                                          ; $425A: $0F
    inc b                                         ; $425B: $04
    add hl, bc                                    ; $425C: $09
    ld b, $09                                     ; $425D: $06 $09
    ld b, $58                                     ; $425F: $06 $58
    ldh [rNR41], a                                ; $4261: $E0 $20
    ret nz                                        ; $4263: $C0

    ldh [rP1], a                                  ; $4264: $E0 $00
    ld [hl], b                                    ; $4266: $70
    add b                                         ; $4267: $80
    ret nc                                        ; $4268: $D0

    jr nz, @-$2E                                  ; $4269: $20 $D0

    jr nz, jr_00C_42DD                            ; $426B: $20 $70

    and b                                         ; $426D: $A0
    ld [hl], b                                    ; $426E: $70
    and b                                         ; $426F: $A0
    rra                                           ; $4270: $1F
    nop                                           ; $4271: $00

jr_00C_4272:
    rlca                                          ; $4272: $07
    nop                                           ; $4273: $00

jr_00C_4274:
    ld c, $01                                     ; $4274: $0E $01

jr_00C_4276:
    dec bc                                        ; $4276: $0B
    inc b                                         ; $4277: $04

jr_00C_4278:
    dec bc                                        ; $4278: $0B
    inc b                                         ; $4279: $04
    rrca                                          ; $427A: $0F

jr_00C_427B:
    inc b                                         ; $427B: $04
    add hl, bc                                    ; $427C: $09
    ld b, $09                                     ; $427D: $06 $09
    ld b, $F8                                     ; $427F: $06 $F8
    nop                                           ; $4281: $00

jr_00C_4282:
    ldh [rP1], a                                  ; $4282: $E0 $00

jr_00C_4284:
    ld [hl], b                                    ; $4284: $70
    add b                                         ; $4285: $80

jr_00C_4286:
    ret nc                                        ; $4286: $D0

    jr nz, jr_00C_4259                            ; $4287: $20 $D0

    jr nz, jr_00C_42DB                            ; $4289: $20 $50

    and b                                         ; $428B: $A0
    ld [hl], b                                    ; $428C: $70
    and b                                         ; $428D: $A0
    ldh a, [rNR41]                                ; $428E: $F0 $20
    inc c                                         ; $4290: $0C
    inc bc                                        ; $4291: $03
    inc b                                         ; $4292: $04
    inc bc                                        ; $4293: $03
    inc b                                         ; $4294: $04
    inc bc                                        ; $4295: $03
    inc b                                         ; $4296: $04
    inc bc                                        ; $4297: $03
    add hl, bc                                    ; $4298: $09
    ld b, $0F                                     ; $4299: $06 $0F
    ld bc, $0F1F                                  ; $429B: $01 $1F $0F
    rrca                                          ; $429E: $0F
    nop                                           ; $429F: $00
    ld b, b                                       ; $42A0: $40
    add b                                         ; $42A1: $80
    ld b, b                                       ; $42A2: $40
    add b                                         ; $42A3: $80
    ld b, b                                       ; $42A4: $40
    add b                                         ; $42A5: $80
    ld [hl], b                                    ; $42A6: $70
    add b                                         ; $42A7: $80
    ld hl, sp+$30                                 ; $42A8: $F8 $30
    ld hl, sp-$50                                 ; $42AA: $F8 $B0
    ldh a, [$80]                                  ; $42AC: $F0 $80
    ret nz                                        ; $42AE: $C0

    nop                                           ; $42AF: $00
    jr nc, jr_00C_4272                            ; $42B0: $30 $C0

    jr nz, jr_00C_4274                            ; $42B2: $20 $C0

    jr nz, jr_00C_4276                            ; $42B4: $20 $C0

    jr nc, jr_00C_4278                            ; $42B6: $30 $C0

    ld hl, sp+$30                                 ; $42B8: $F8 $30
    db $FC                                        ; $42BA: $FC
    ld a, b                                       ; $42BB: $78
    db $FC                                        ; $42BC: $FC
    jr c, @-$06                                   ; $42BD: $38 $F8

    nop                                           ; $42BF: $00
    jr nc, jr_00C_4282                            ; $42C0: $30 $C0

    jr nz, jr_00C_4284                            ; $42C2: $20 $C0

    jr nz, jr_00C_4286                            ; $42C4: $20 $C0

    jr nz, @-$3E                                  ; $42C6: $20 $C0

    jr c, @-$3E                                   ; $42C8: $38 $C0

    db $FC                                        ; $42CA: $FC
    jr @-$02                                      ; $42CB: $18 $FC

    ld [hl], b                                    ; $42CD: $70
    ld hl, sp+$00                                 ; $42CE: $F8 $00
    ret z                                         ; $42D0: $C8

    jr nc, jr_00C_427B                            ; $42D1: $30 $A8

    ld d, b                                       ; $42D3: $50
    adc b                                         ; $42D4: $88
    ld [hl], b                                    ; $42D5: $70
    adc b                                         ; $42D6: $88
    ld [hl], b                                    ; $42D7: $70
    adc $30                                       ; $42D8: $CE $30
    rst $38                                       ; $42DA: $FF

jr_00C_42DB:
    ld b, [hl]                                    ; $42DB: $46
    rst $38                                       ; $42DC: $FF

jr_00C_42DD:
    inc e                                         ; $42DD: $1C
    ld a, $00                                     ; $42DE: $3E $00
    ld a, [hl]                                    ; $42E0: $7E
    nop                                           ; $42E1: $00
    ld h, [hl]                                    ; $42E2: $66
    jr jr_00C_432B                                ; $42E3: $18 $46

    jr c, jr_00C_432D                             ; $42E5: $38 $46

    jr c, jr_00C_4338                             ; $42E7: $38 $4F

    ld [hl], $7F                                  ; $42E9: $36 $7F
    ld c, $7E                                     ; $42EB: $0E $7E
    inc l                                         ; $42ED: $2C
    ld a, $00                                     ; $42EE: $3E $00
    and $18                                       ; $42F0: $E6 $18
    ld b, [hl]                                    ; $42F2: $46
    jr c, @+$46                                   ; $42F3: $38 $44

    jr c, @+$5E                                   ; $42F5: $38 $5C

    jr nz, jr_00C_4335                            ; $42F7: $20 $3C

    jr @+$40                                      ; $42F9: $18 $3E

    inc e                                         ; $42FB: $1C
    ld a, [hl]                                    ; $42FC: $7E
    inc l                                         ; $42FD: $2C
    ld a, [hl]                                    ; $42FE: $7E
    nop                                           ; $42FF: $00
    ld [bc], a                                    ; $4300: $02
    nop                                           ; $4301: $00
    rrca                                          ; $4302: $0F
    nop                                           ; $4303: $00
    rra                                           ; $4304: $1F
    nop                                           ; $4305: $00
    ccf                                           ; $4306: $3F
    nop                                           ; $4307: $00
    ccf                                           ; $4308: $3F
    nop                                           ; $4309: $00
    ccf                                           ; $430A: $3F
    nop                                           ; $430B: $00
    add hl, de                                    ; $430C: $19
    ld b, $0C                                     ; $430D: $06 $0C
    inc bc                                        ; $430F: $03
    ldh [rP1], a                                  ; $4310: $E0 $00
    ldh a, [rP1]                                  ; $4312: $F0 $00
    ld hl, sp+$00                                 ; $4314: $F8 $00
    db $FC                                        ; $4316: $FC
    nop                                           ; $4317: $00
    ld hl, sp+$00                                 ; $4318: $F8 $00
    or b                                          ; $431A: $B0
    ld b, b                                       ; $431B: $40
    ld d, b                                       ; $431C: $50
    ldh [$50], a                                  ; $431D: $E0 $50
    ldh [$0C], a                                  ; $431F: $E0 $0C
    inc bc                                        ; $4321: $03
    ld b, $01                                     ; $4322: $06 $01
    inc bc                                        ; $4324: $03
    nop                                           ; $4325: $00
    ld b, $01                                     ; $4326: $06 $01
    rlca                                          ; $4328: $07
    nop                                           ; $4329: $00
    dec bc                                        ; $432A: $0B

jr_00C_432B:
    inc b                                         ; $432B: $04
    ld a, [bc]                                    ; $432C: $0A

jr_00C_432D:
    dec b                                         ; $432D: $05
    rlca                                          ; $432E: $07
    nop                                           ; $432F: $00
    ld d, b                                       ; $4330: $50
    ldh [rNR10], a                                ; $4331: $E0 $10
    ldh [$E0], a                                  ; $4333: $E0 $E0

jr_00C_4335:
    nop                                           ; $4335: $00
    add b                                         ; $4336: $80
    nop                                           ; $4337: $00

jr_00C_4338:
    ldh [$C0], a                                  ; $4338: $E0 $C0
    sub b                                         ; $433A: $90
    ld h, b                                       ; $433B: $60
    sub b                                         ; $433C: $90
    ld h, b                                       ; $433D: $60
    ldh [rP1], a                                  ; $433E: $E0 $00
    jp nz, Jump_00C_7C3C                          ; $4340: $C2 $3C $7C

    nop                                           ; $4343: $00
    ld d, b                                       ; $4344: $50
    jr nz, jr_00C_439F                            ; $4345: $20 $58

    jr nz, jr_00C_43C1                            ; $4347: $20 $78

    jr nz, jr_00C_435B                            ; $4349: $20 $10

    ld h, b                                       ; $434B: $60
    sub b                                         ; $434C: $90
    ld h, b                                       ; $434D: $60
    ldh a, [rP1]                                  ; $434E: $F0 $00
    inc c                                         ; $4350: $0C
    inc bc                                        ; $4351: $03
    ld b, $01                                     ; $4352: $06 $01
    inc bc                                        ; $4354: $03
    nop                                           ; $4355: $00
    ld b, $01                                     ; $4356: $06 $01
    rlca                                          ; $4358: $07
    ld [bc], a                                    ; $4359: $02
    add hl, bc                                    ; $435A: $09

jr_00C_435B:
    ld b, $09                                     ; $435B: $06 $09
    ld b, $07                                     ; $435D: $06 $07
    nop                                           ; $435F: $00
    ld d, b                                       ; $4360: $50
    ldh [rNR10], a                                ; $4361: $E0 $10
    ldh [$E0], a                                  ; $4363: $E0 $E0
    nop                                           ; $4365: $00
    add b                                         ; $4366: $80
    nop                                           ; $4367: $00
    ret nz                                        ; $4368: $C0

    nop                                           ; $4369: $00
    ret nz                                        ; $436A: $C0

    nop                                           ; $436B: $00
    and b                                         ; $436C: $A0
    ld b, b                                       ; $436D: $40
    ret nz                                        ; $436E: $C0

    nop                                           ; $436F: $00
    inc b                                         ; $4370: $04
    inc bc                                        ; $4371: $03
    ld [bc], a                                    ; $4372: $02
    ld bc, $030C                                  ; $4373: $01 $0C $03

jr_00C_4376:
    jr nc, jr_00C_4387                            ; $4376: $30 $0F

    ld [hl], a                                    ; $4378: $77
    jr z, jr_00C_43FA                             ; $4379: $28 $7F

    ld [hl], $7F                                  ; $437B: $36 $7F
    ld e, $7F                                     ; $437D: $1E $7F
    nop                                           ; $437F: $00
    add b                                         ; $4380: $80
    nop                                           ; $4381: $00
    add b                                         ; $4382: $80
    nop                                           ; $4383: $00
    ld [hl], b                                    ; $4384: $70
    add b                                         ; $4385: $80
    ld a, b                                       ; $4386: $78

jr_00C_4387:
    or b                                          ; $4387: $B0
    ld hl, sp+$70                                 ; $4388: $F8 $70
    ldh a, [$E0]                                  ; $438A: $F0 $E0
    ldh a, [$C0]                                  ; $438C: $F0 $C0
    ldh [rP1], a                                  ; $438E: $E0 $00
    ld c, b                                       ; $4390: $48
    jr nc, jr_00C_43BB                            ; $4391: $30 $28

    db $10                                        ; $4393: $10
    ld c, b                                       ; $4394: $48
    jr nc, jr_00C_43E3                            ; $4395: $30 $4C

    jr nc, jr_00C_4417                            ; $4397: $30 $7E

    nop                                           ; $4399: $00
    ld a, a                                       ; $439A: $7F
    inc a                                         ; $439B: $3C
    rst $38                                       ; $439C: $FF
    ld a, $7F                                     ; $439D: $3E $7F

jr_00C_439F:
    nop                                           ; $439F: $00
    inc b                                         ; $43A0: $04
    inc bc                                        ; $43A1: $03
    ld [bc], a                                    ; $43A2: $02
    ld bc, $0304                                  ; $43A3: $01 $04 $03
    ld [$1F07], sp                                ; $43A6: $08 $07 $1F
    nop                                           ; $43A9: $00
    ccf                                           ; $43AA: $3F
    rla                                           ; $43AB: $17
    ccf                                           ; $43AC: $3F
    rrca                                          ; $43AD: $0F
    rra                                           ; $43AE: $1F
    nop                                           ; $43AF: $00
    add b                                         ; $43B0: $80
    nop                                           ; $43B1: $00
    ld b, b                                       ; $43B2: $40

jr_00C_43B3:
    add b                                         ; $43B3: $80
    jr c, jr_00C_4376                             ; $43B4: $38 $C0

    inc a                                         ; $43B6: $3C
    ret c                                         ; $43B7: $D8

    db $FC                                        ; $43B8: $FC
    jr c, jr_00C_43B3                             ; $43B9: $38 $F8

jr_00C_43BB:
    ld [hl], b                                    ; $43BB: $70
    ld hl, sp+$60                                 ; $43BC: $F8 $60
    ldh [rP1], a                                  ; $43BE: $E0 $00

jr_00C_43C0:
    nop                                           ; $43C0: $00

jr_00C_43C1:
    nop                                           ; $43C1: $00
    rlca                                          ; $43C2: $07
    nop                                           ; $43C3: $00
    rrca                                          ; $43C4: $0F
    nop                                           ; $43C5: $00
    rra                                           ; $43C6: $1F
    nop                                           ; $43C7: $00
    rra                                           ; $43C8: $1F
    nop                                           ; $43C9: $00
    rra                                           ; $43CA: $1F
    nop                                           ; $43CB: $00
    rla                                           ; $43CC: $17
    ld [$0709], sp                                ; $43CD: $08 $09 $07
    xor b                                         ; $43D0: $A8
    nop                                           ; $43D1: $00
    db $FC                                        ; $43D2: $FC
    nop                                           ; $43D3: $00
    cp $00                                        ; $43D4: $FE $00
    cp $00                                        ; $43D6: $FE $00
    db $FC                                        ; $43D8: $FC
    nop                                           ; $43D9: $00
    ld hl, sp+$00                                 ; $43DA: $F8 $00
    jr nc, @-$3E                                  ; $43DC: $30 $C0

    jr nc, jr_00C_43C0                            ; $43DE: $30 $E0

    dec b                                         ; $43E0: $05
    nop                                           ; $43E1: $00
    rrca                                          ; $43E2: $0F

jr_00C_43E3:
    nop                                           ; $43E3: $00
    rra                                           ; $43E4: $1F
    nop                                           ; $43E5: $00
    ccf                                           ; $43E6: $3F
    nop                                           ; $43E7: $00
    ccf                                           ; $43E8: $3F
    nop                                           ; $43E9: $00
    rra                                           ; $43EA: $1F
    nop                                           ; $43EB: $00
    ld a, [de]                                    ; $43EC: $1A
    dec b                                         ; $43ED: $05
    ld a, [hl+]                                   ; $43EE: $2A
    rla                                           ; $43EF: $17
    nop                                           ; $43F0: $00
    nop                                           ; $43F1: $00
    ldh [rP1], a                                  ; $43F2: $E0 $00
    ldh a, [rP1]                                  ; $43F4: $F0 $00
    ld hl, sp+$00                                 ; $43F6: $F8 $00
    ld hl, sp+$00                                 ; $43F8: $F8 $00

jr_00C_43FA:
    ld hl, sp+$00                                 ; $43FA: $F8 $00
    ld hl, sp+$00                                 ; $43FC: $F8 $00
    ld d, h                                       ; $43FE: $54
    add sp, $00                                   ; $43FF: $E8 $00
    nop                                           ; $4401: $00
    rlca                                          ; $4402: $07
    nop                                           ; $4403: $00
    rrca                                          ; $4404: $0F
    nop                                           ; $4405: $00
    rra                                           ; $4406: $1F
    nop                                           ; $4407: $00
    rra                                           ; $4408: $1F
    nop                                           ; $4409: $00
    rra                                           ; $440A: $1F
    nop                                           ; $440B: $00
    rra                                           ; $440C: $1F
    nop                                           ; $440D: $00
    cpl                                           ; $440E: $2F
    db $10                                        ; $440F: $10
    and b                                         ; $4410: $A0
    nop                                           ; $4411: $00
    ldh a, [rP1]                                  ; $4412: $F0 $00
    ld hl, sp+$00                                 ; $4414: $F8 $00
    db $FC                                        ; $4416: $FC

jr_00C_4417:
    nop                                           ; $4417: $00
    db $FC                                        ; $4418: $FC
    nop                                           ; $4419: $00
    ld hl, sp+$00                                 ; $441A: $F8 $00
    ld hl, sp+$00                                 ; $441C: $F8 $00
    db $F4                                        ; $441E: $F4
    ld [rRAMG], sp                                ; $441F: $08 $00 $00
    rlca                                          ; $4422: $07
    nop                                           ; $4423: $00
    rrca                                          ; $4424: $0F
    nop                                           ; $4425: $00
    rra                                           ; $4426: $1F
    nop                                           ; $4427: $00
    rra                                           ; $4428: $1F
    nop                                           ; $4429: $00
    rra                                           ; $442A: $1F
    nop                                           ; $442B: $00
    rra                                           ; $442C: $1F
    nop                                           ; $442D: $00
    rra                                           ; $442E: $1F
    nop                                           ; $442F: $00
    jr z, jr_00C_4432                             ; $4430: $28 $00

jr_00C_4432:
    db $FC                                        ; $4432: $FC
    nop                                           ; $4433: $00
    cp $00                                        ; $4434: $FE $00
    cp $00                                        ; $4436: $FE $00
    cp $00                                        ; $4438: $FE $00
    db $FC                                        ; $443A: $FC
    nop                                           ; $443B: $00
    add sp, $10                                   ; $443C: $E8 $10
    ret z                                         ; $443E: $C8

    jr nc, jr_00C_444D                            ; $443F: $30 $0C

    inc bc                                        ; $4441: $03
    ld e, $0D                                     ; $4442: $1E $0D
    ccf                                           ; $4444: $3F
    inc e                                         ; $4445: $1C
    ccf                                           ; $4446: $3F
    jr jr_00C_4488                                ; $4447: $18 $3F

    nop                                           ; $4449: $00
    ccf                                           ; $444A: $3F
    db $10                                        ; $444B: $10
    inc de                                        ; $444C: $13

jr_00C_444D:
    inc c                                         ; $444D: $0C
    inc de                                        ; $444E: $13
    dec c                                         ; $444F: $0D
    db $10                                        ; $4450: $10
    ldh [$38], a                                  ; $4451: $E0 $38

jr_00C_4453:
    ret nc                                        ; $4453: $D0

    db $FC                                        ; $4454: $FC
    jr jr_00C_4453                                ; $4455: $18 $FC

    ld [$00F8], sp                                ; $4457: $08 $F8 $00
    ld hl, sp+$00                                 ; $445A: $F8 $00
    add sp, $10                                   ; $445C: $E8 $10
    ldh a, [$C0]                                  ; $445E: $F0 $C0
    jr jr_00C_4469                                ; $4460: $18 $07

    inc c                                         ; $4462: $0C
    inc bc                                        ; $4463: $03
    rra                                           ; $4464: $1F
    inc c                                         ; $4465: $0C
    ccf                                           ; $4466: $3F
    inc e                                         ; $4467: $1C
    rra                                           ; $4468: $1F

jr_00C_4469:
    nop                                           ; $4469: $00
    rra                                           ; $446A: $1F
    ld [$0C13], sp                                ; $446B: $08 $13 $0C
    inc de                                        ; $446E: $13
    dec c                                         ; $446F: $0D
    rra                                           ; $4470: $1F
    nop                                           ; $4471: $00
    rrca                                          ; $4472: $0F
    nop                                           ; $4473: $00
    rra                                           ; $4474: $1F
    dec c                                         ; $4475: $0D
    ccf                                           ; $4476: $3F
    inc e                                         ; $4477: $1C
    rra                                           ; $4478: $1F
    nop                                           ; $4479: $00
    rla                                           ; $447A: $17
    ld [$081F], sp                                ; $447B: $08 $1F $08
    rrca                                          ; $447E: $0F
    inc bc                                        ; $447F: $03
    ld hl, sp+$00                                 ; $4480: $F8 $00
    ld hl, sp+$00                                 ; $4482: $F8 $00
    db $FC                                        ; $4484: $FC
    ret c                                         ; $4485: $D8

    cp $1C                                        ; $4486: $FE $1C

jr_00C_4488:
    db $FC                                        ; $4488: $FC
    nop                                           ; $4489: $00
    db $F4                                        ; $448A: $F4
    ld [$08FC], sp                                ; $448B: $08 $FC $08
    ld hl, sp-$20                                 ; $448E: $F8 $E0
    rrca                                          ; $4490: $0F
    inc bc                                        ; $4491: $03
    rra                                           ; $4492: $1F

jr_00C_4493:
    nop                                           ; $4493: $00
    ccf                                           ; $4494: $3F
    db $10                                        ; $4495: $10
    rra                                           ; $4496: $1F
    nop                                           ; $4497: $00
    rra                                           ; $4498: $1F
    nop                                           ; $4499: $00
    rra                                           ; $449A: $1F
    nop                                           ; $449B: $00
    rrca                                          ; $449C: $0F
    nop                                           ; $449D: $00
    rrca                                          ; $449E: $0F

jr_00C_449F:
    rlca                                          ; $449F: $07
    sub b                                         ; $44A0: $90
    ld h, b                                       ; $44A1: $60
    ldh [rP1], a                                  ; $44A2: $E0 $00
    ldh a, [$E0]                                  ; $44A4: $F0 $E0
    ldh a, [$60]                                  ; $44A6: $F0 $60
    ldh a, [rP1]                                  ; $44A8: $F0 $00
    ld hl, sp+$00                                 ; $44AA: $F8 $00
    db $E4                                        ; $44AC: $E4
    jr c, jr_00C_4493                             ; $44AD: $38 $E4

    sbc b                                         ; $44AF: $98
    ld a, [hl+]                                   ; $44B0: $2A
    rla                                           ; $44B1: $17
    jr jr_00C_44BB                                ; $44B2: $18 $07

    inc c                                         ; $44B4: $0C
    inc bc                                        ; $44B5: $03
    rra                                           ; $44B6: $1F
    inc c                                         ; $44B7: $0C
    ccf                                           ; $44B8: $3F
    inc e                                         ; $44B9: $1C
    rra                                           ; $44BA: $1F

jr_00C_44BB:
    nop                                           ; $44BB: $00
    add hl, de                                    ; $44BC: $19
    ld c, $09                                     ; $44BD: $0E $09
    ld b, $54                                     ; $44BF: $06 $54
    add sp, $18                                   ; $44C1: $E8 $18

jr_00C_44C3:
    ldh [$30], a                                  ; $44C3: $E0 $30
    ret nz                                        ; $44C5: $C0

    ld hl, sp+$30                                 ; $44C6: $F8 $30
    db $FC                                        ; $44C8: $FC
    jr c, jr_00C_44C3                             ; $44C9: $38 $F8

    nop                                           ; $44CB: $00
    add sp, $10                                   ; $44CC: $E8 $10
    add sp, -$30                                  ; $44CE: $E8 $D0
    cpl                                           ; $44D0: $2F
    db $10                                        ; $44D1: $10
    rra                                           ; $44D2: $1F
    nop                                           ; $44D3: $00
    rrca                                          ; $44D4: $0F
    nop                                           ; $44D5: $00
    rra                                           ; $44D6: $1F
    dec c                                         ; $44D7: $0D
    ccf                                           ; $44D8: $3F
    inc e                                         ; $44D9: $1C
    rra                                           ; $44DA: $1F
    nop                                           ; $44DB: $00
    rla                                           ; $44DC: $17
    ld [$0B1F], sp                                ; $44DD: $08 $1F $0B
    db $F4                                        ; $44E0: $F4
    ld [$00F8], sp                                ; $44E1: $08 $F8 $00
    ld hl, sp+$00                                 ; $44E4: $F8 $00
    db $FC                                        ; $44E6: $FC
    ret c                                         ; $44E7: $D8

    cp $1C                                        ; $44E8: $FE $1C
    db $FC                                        ; $44EA: $FC
    nop                                           ; $44EB: $00
    db $F4                                        ; $44EC: $F4
    ld [$E0F8], sp                                ; $44ED: $08 $F8 $E0
    rrca                                          ; $44F0: $0F
    nop                                           ; $44F1: $00
    rrca                                          ; $44F2: $0F
    rlca                                          ; $44F3: $07
    rra                                           ; $44F4: $1F
    rrca                                          ; $44F5: $0F
    rra                                           ; $44F6: $1F
    ld c, $3F                                     ; $44F7: $0E $3F
    db $10                                        ; $44F9: $10
    add hl, sp                                    ; $44FA: $39
    ld b, $21                                     ; $44FB: $06 $21
    ld e, $1F                                     ; $44FD: $1E $1F
    nop                                           ; $44FF: $00
    ldh [rP1], a                                  ; $4500: $E0 $00
    ldh [$C0], a                                  ; $4502: $E0 $C0
    ldh [rLCDC], a                                ; $4504: $E0 $40
    ldh a, [$C0]                                  ; $4506: $F0 $C0
    ret z                                         ; $4508: $C8

    jr nc, @+$0A                                  ; $4509: $30 $08

    ldh a, [$F0]                                  ; $450B: $F0 $F0
    nop                                           ; $450D: $00
    nop                                           ; $450E: $00
    nop                                           ; $450F: $00
    ld hl, sp+$00                                 ; $4510: $F8 $00
    ldh a, [$E0]                                  ; $4512: $F0 $E0
    ld hl, sp+$70                                 ; $4514: $F8 $70
    ld hl, sp+$40                                 ; $4516: $F8 $40
    ret z                                         ; $4518: $C8

    jr nc, jr_00C_449F                            ; $4519: $30 $84

    ld a, b                                       ; $451B: $78
    call nz, $F838                                ; $451C: $C4 $38 $F8
    nop                                           ; $451F: $00
    ldh a, [rP1]                                  ; $4520: $F0 $00
    ldh a, [$60]                                  ; $4522: $F0 $60
    ld hl, sp+$60                                 ; $4524: $F8 $60
    ld hl, sp+$70                                 ; $4526: $F8 $70
    ld hl, sp+$70                                 ; $4528: $F8 $70
    db $F4                                        ; $452A: $F4
    ld [$708C], sp                                ; $452B: $08 $8C $70
    ld hl, sp+$00                                 ; $452E: $F8 $00
    rlca                                          ; $4530: $07
    nop                                           ; $4531: $00
    rlca                                          ; $4532: $07
    inc bc                                        ; $4533: $03
    rrca                                          ; $4534: $0F
    ld b, $0F                                     ; $4535: $06 $0F
    rlca                                          ; $4537: $07
    rrca                                          ; $4538: $0F
    ld bc, $0609                                  ; $4539: $01 $09 $06
    rrca                                          ; $453C: $0F
    nop                                           ; $453D: $00
    nop                                           ; $453E: $00
    nop                                           ; $453F: $00
    db $FC                                        ; $4540: $FC
    ld h, b                                       ; $4541: $60
    ldh a, [$E0]                                  ; $4542: $F0 $E0
    ld hl, sp-$10                                 ; $4544: $F8 $F0
    ld hl, sp+$70                                 ; $4546: $F8 $70
    ld hl, sp+$60                                 ; $4548: $F8 $60
    db $F4                                        ; $454A: $F4
    ld [$708C], sp                                ; $454B: $08 $8C $70
    ld hl, sp+$00                                 ; $454E: $F8 $00
    rrca                                          ; $4550: $0F
    nop                                           ; $4551: $00
    rlca                                          ; $4552: $07
    inc bc                                        ; $4553: $03
    rrca                                          ; $4554: $0F
    rlca                                          ; $4555: $07
    rrca                                          ; $4556: $0F
    dec b                                         ; $4557: $05
    rrca                                          ; $4558: $0F
    ld b, $07                                     ; $4559: $06 $07
    nop                                           ; $455B: $00
    dec b                                         ; $455C: $05
    ld [bc], a                                    ; $455D: $02
    inc bc                                        ; $455E: $03
    nop                                           ; $455F: $00
    ld hl, sp+$00                                 ; $4560: $F8 $00
    ldh a, [$E0]                                  ; $4562: $F0 $E0
    ldh [$C0], a                                  ; $4564: $E0 $C0
    ldh a, [$80]                                  ; $4566: $F0 $80
    sub b                                         ; $4568: $90
    ld h, b                                       ; $4569: $60
    db $10                                        ; $456A: $10
    ldh [rNR41], a                                ; $456B: $E0 $20
    ret nz                                        ; $456D: $C0

    ldh [rP1], a                                  ; $456E: $E0 $00
    rrca                                          ; $4570: $0F
    nop                                           ; $4571: $00
    rlca                                          ; $4572: $07
    inc bc                                        ; $4573: $03
    rrca                                          ; $4574: $0F
    ld b, $0F                                     ; $4575: $06 $0F
    rlca                                          ; $4577: $07
    rrca                                          ; $4578: $0F
    rlca                                          ; $4579: $07
    rlca                                          ; $457A: $07
    nop                                           ; $457B: $00
    inc b                                         ; $457C: $04
    inc bc                                        ; $457D: $03
    rlca                                          ; $457E: $07
    nop                                           ; $457F: $00
    ldh a, [rP1]                                  ; $4580: $F0 $00
    ld hl, sp-$10                                 ; $4582: $F8 $F0
    ld hl, sp-$10                                 ; $4584: $F8 $F0
    ld hl, sp+$30                                 ; $4586: $F8 $30
    ldh a, [rP1]                                  ; $4588: $F0 $00
    sub b                                         ; $458A: $90
    ld h, b                                       ; $458B: $60
    sub b                                         ; $458C: $90
    ld h, b                                       ; $458D: $60
    ldh a, [rP1]                                  ; $458E: $F0 $00
    ld bc, $0700                                  ; $4590: $01 $00 $07
    nop                                           ; $4593: $00
    rrca                                          ; $4594: $0F
    nop                                           ; $4595: $00
    rra                                           ; $4596: $1F
    nop                                           ; $4597: $00
    ccf                                           ; $4598: $3F
    nop                                           ; $4599: $00
    rra                                           ; $459A: $1F
    nop                                           ; $459B: $00
    rrca                                          ; $459C: $0F
    nop                                           ; $459D: $00
    dec b                                         ; $459E: $05
    ld [bc], a                                    ; $459F: $02
    ld [hl], b                                    ; $45A0: $70
    nop                                           ; $45A1: $00
    db $FC                                        ; $45A2: $FC
    nop                                           ; $45A3: $00
    ld hl, sp+$00                                 ; $45A4: $F8 $00
    db $FC                                        ; $45A6: $FC
    nop                                           ; $45A7: $00
    db $FC                                        ; $45A8: $FC
    nop                                           ; $45A9: $00
    ld hl, sp+$00                                 ; $45AA: $F8 $00
    db $10                                        ; $45AC: $10
    ldh [$50], a                                  ; $45AD: $E0 $50
    ldh [rTIMA], a                                ; $45AF: $E0 $05
    ld [bc], a                                    ; $45B1: $02
    ld [bc], a                                    ; $45B2: $02
    ld bc, $0007                                  ; $45B3: $01 $07 $00
    rlca                                          ; $45B6: $07
    inc bc                                        ; $45B7: $03
    rrca                                          ; $45B8: $0F
    ld [bc], a                                    ; $45B9: $02
    rra                                           ; $45BA: $1F
    nop                                           ; $45BB: $00
    cpl                                           ; $45BC: $2F
    db $10                                        ; $45BD: $10
    cpl                                           ; $45BE: $2F
    rla                                           ; $45BF: $17
    ld d, b                                       ; $45C0: $50
    ldh [rNR10], a                                ; $45C1: $E0 $10
    ldh [$E0], a                                  ; $45C3: $E0 $E0
    nop                                           ; $45C5: $00
    ret nz                                        ; $45C6: $C0

    add b                                         ; $45C7: $80
    ret nz                                        ; $45C8: $C0

    nop                                           ; $45C9: $00
    ld h, b                                       ; $45CA: $60
    add b                                         ; $45CB: $80
    sub b                                         ; $45CC: $90
    ld h, b                                       ; $45CD: $60
    sub b                                         ; $45CE: $90

jr_00C_45CF:
    ld h, b                                       ; $45CF: $60
    ld hl, $7E1E                                  ; $45D0: $21 $1E $7E

jr_00C_45D3:
    nop                                           ; $45D3: $00
    db $FC                                        ; $45D4: $FC
    jr nc, jr_00C_45D3                            ; $45D5: $30 $FC

    ld d, b                                       ; $45D7: $50
    cp $00                                        ; $45D8: $FE $00
    sbc $20                                       ; $45DA: $DE $20
    and $18                                       ; $45DC: $E6 $18
    ld h, [hl]                                    ; $45DE: $66
    ld e, b                                       ; $45DF: $58
    dec b                                         ; $45E0: $05
    ld [bc], a                                    ; $45E1: $02
    ld [bc], a                                    ; $45E2: $02
    ld bc, $0007                                  ; $45E3: $01 $07 $00
    rrca                                          ; $45E6: $0F
    ld b, $0F                                     ; $45E7: $06 $0F
    ld bc, $041B                                  ; $45E9: $01 $1B $04
    daa                                           ; $45EC: $27
    jr jr_00C_4616                                ; $45ED: $18 $27

    dec de                                        ; $45EF: $1B
    ld d, b                                       ; $45F0: $50
    ldh [rNR10], a                                ; $45F1: $E0 $10
    ldh [$E0], a                                  ; $45F3: $E0 $E0
    nop                                           ; $45F5: $00
    ret nz                                        ; $45F6: $C0

    nop                                           ; $45F7: $00
    ret nz                                        ; $45F8: $C0

    nop                                           ; $45F9: $00
    ldh [rP1], a                                  ; $45FA: $E0 $00
    ret nc                                        ; $45FC: $D0

    jr nz, jr_00C_45CF                            ; $45FD: $20 $D0

    and b                                         ; $45FF: $A0
    rra                                           ; $4600: $1F
    nop                                           ; $4601: $00
    rrca                                          ; $4602: $0F
    rlca                                          ; $4603: $07
    rra                                           ; $4604: $1F
    rrca                                          ; $4605: $0F
    ccf                                           ; $4606: $3F
    rra                                           ; $4607: $1F
    ld e, a                                       ; $4608: $5F
    inc l                                         ; $4609: $2C
    ld c, l                                       ; $460A: $4D
    ld [hl-], a                                   ; $460B: $32
    ld h, c                                       ; $460C: $61
    ld e, $7F                                     ; $460D: $1E $7F
    nop                                           ; $460F: $00
    ldh [rP1], a                                  ; $4610: $E0 $00
    ldh [$80], a                                  ; $4612: $E0 $80
    ld hl, sp-$80                                 ; $4614: $F8 $80

jr_00C_4616:
    db $E4                                        ; $4616: $E4
    jr @-$3A                                      ; $4617: $18 $C4

    cp b                                          ; $4619: $B8
    ret z                                         ; $461A: $C8

    or b                                          ; $461B: $B0
    cp b                                          ; $461C: $B8
    ld b, b                                       ; $461D: $40
    ldh [rP1], a                                  ; $461E: $E0 $00
    rlca                                          ; $4620: $07
    nop                                           ; $4621: $00
    rrca                                          ; $4622: $0F
    rlca                                          ; $4623: $07
    rra                                           ; $4624: $1F
    rrca                                          ; $4625: $0F
    rra                                           ; $4626: $1F
    rrca                                          ; $4627: $0F
    ccf                                           ; $4628: $3F
    db $10                                        ; $4629: $10
    jr c, @+$09                                   ; $462A: $38 $07

    jr nc, jr_00C_463D                            ; $462C: $30 $0F

    rra                                           ; $462E: $1F
    nop                                           ; $462F: $00
    ldh [rP1], a                                  ; $4630: $E0 $00
    ldh [$C0], a                                  ; $4632: $E0 $C0
    ldh [$C0], a                                  ; $4634: $E0 $C0
    ldh [$80], a                                  ; $4636: $E0 $80
    ret nc                                        ; $4638: $D0

    jr nz, jr_00C_468B                            ; $4639: $20 $50

    and b                                         ; $463B: $A0
    ld [hl], b                                    ; $463C: $70

jr_00C_463D:
    add b                                         ; $463D: $80
    ret nz                                        ; $463E: $C0

    nop                                           ; $463F: $00
    rra                                           ; $4640: $1F
    nop                                           ; $4641: $00
    rrca                                          ; $4642: $0F
    rlca                                          ; $4643: $07
    rra                                           ; $4644: $1F
    rrca                                          ; $4645: $0F
    ccf                                           ; $4646: $3F
    dec bc                                        ; $4647: $0B
    ld e, a                                       ; $4648: $5F
    ld hl, $3C43                                  ; $4649: $21 $43 $3C
    ld h, c                                       ; $464C: $61
    ld e, $7F                                     ; $464D: $1E $7F
    nop                                           ; $464F: $00
    ldh [rP1], a                                  ; $4650: $E0 $00
    ret nz                                        ; $4652: $C0

    add b                                         ; $4653: $80
    ld hl, sp-$40                                 ; $4654: $F8 $C0
    db $E4                                        ; $4656: $E4
    ret c                                         ; $4657: $D8

    call nz, $C8B8                                ; $4658: $C4 $B8 $C8
    or b                                          ; $465B: $B0
    cp b                                          ; $465C: $B8
    ld b, b                                       ; $465D: $40
    ldh [rP1], a                                  ; $465E: $E0 $00
    nop                                           ; $4660: $00
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    nop                                           ; $4664: $00
    nop                                           ; $4665: $00
    nop                                           ; $4666: $00
    nop                                           ; $4667: $00
    nop                                           ; $4668: $00
    nop                                           ; $4669: $00
    nop                                           ; $466A: $00
    nop                                           ; $466B: $00
    nop                                           ; $466C: $00
    nop                                           ; $466D: $00
    nop                                           ; $466E: $00
    nop                                           ; $466F: $00
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    nop                                           ; $4673: $00
    nop                                           ; $4674: $00
    nop                                           ; $4675: $00

jr_00C_4676:
    nop                                           ; $4676: $00
    nop                                           ; $4677: $00

jr_00C_4678:
    nop                                           ; $4678: $00
    nop                                           ; $4679: $00
    nop                                           ; $467A: $00
    nop                                           ; $467B: $00
    nop                                           ; $467C: $00
    nop                                           ; $467D: $00
    nop                                           ; $467E: $00
    nop                                           ; $467F: $00
    rrca                                          ; $4680: $0F
    nop                                           ; $4681: $00
    rra                                           ; $4682: $1F
    rrca                                          ; $4683: $0F
    ccf                                           ; $4684: $3F
    rra                                           ; $4685: $1F
    ccf                                           ; $4686: $3F
    rra                                           ; $4687: $1F
    ccf                                           ; $4688: $3F
    dec e                                         ; $4689: $1D
    ccf                                           ; $468A: $3F

jr_00C_468B:
    inc e                                         ; $468B: $1C
    ld e, $0D                                     ; $468C: $1E $0D
    ld a, a                                       ; $468E: $7F
    ld b, $C0                                     ; $468F: $06 $C0
    nop                                           ; $4691: $00
    ldh [$C0], a                                  ; $4692: $E0 $C0
    jr nc, jr_00C_4676                            ; $4694: $30 $E0

    jr nc, jr_00C_4678                            ; $4696: $30 $E0

    ldh a, [$E0]                                  ; $4698: $F0 $E0
    ldh a, [$C0]                                  ; $469A: $F0 $C0
    ret nc                                        ; $469C: $D0

    jr nz, @-$02                                  ; $469D: $20 $FC

    nop                                           ; $469F: $00
    rlca                                          ; $46A0: $07
    nop                                           ; $46A1: $00
    rrca                                          ; $46A2: $0F
    rlca                                          ; $46A3: $07
    ld e, $0F                                     ; $46A4: $1E $0F
    ld e, $0F                                     ; $46A6: $1E $0F
    rra                                           ; $46A8: $1F
    dec bc                                        ; $46A9: $0B
    rra                                           ; $46AA: $1F
    add hl, bc                                    ; $46AB: $09
    dec e                                         ; $46AC: $1D
    ld a, [bc]                                    ; $46AD: $0A
    ld a, a                                       ; $46AE: $7F
    ld [$0007], sp                                ; $46AF: $08 $07 $00
    rrca                                          ; $46B2: $0F
    rlca                                          ; $46B3: $07
    rra                                           ; $46B4: $1F
    rrca                                          ; $46B5: $0F
    ld e, $0F                                     ; $46B6: $1E $0F
    ld e, $0F                                     ; $46B8: $1E $0F
    rra                                           ; $46BA: $1F
    rrca                                          ; $46BB: $0F
    rra                                           ; $46BC: $1F
    inc bc                                        ; $46BD: $03
    ld a, a                                       ; $46BE: $7F
    inc e                                         ; $46BF: $1C
    inc bc                                        ; $46C0: $03
    nop                                           ; $46C1: $00
    rlca                                          ; $46C2: $07
    inc bc                                        ; $46C3: $03
    rrca                                          ; $46C4: $0F

jr_00C_46C5:
    rlca                                          ; $46C5: $07
    add hl, bc                                    ; $46C6: $09
    rlca                                          ; $46C7: $07
    add hl, bc                                    ; $46C8: $09
    rlca                                          ; $46C9: $07
    rrca                                          ; $46CA: $0F
    rlca                                          ; $46CB: $07
    rra                                           ; $46CC: $1F
    inc bc                                        ; $46CD: $03
    ccf                                           ; $46CE: $3F
    inc e                                         ; $46CF: $1C
    ldh a, [rP1]                                  ; $46D0: $F0 $00
    ld hl, sp-$10                                 ; $46D2: $F8 $F0
    db $FC                                        ; $46D4: $FC
    ld hl, sp-$04                                 ; $46D5: $F8 $FC
    ld hl, sp-$04                                 ; $46D7: $F8 $FC
    ld hl, sp-$04                                 ; $46D9: $F8 $FC
    ld hl, sp-$04                                 ; $46DB: $F8 $FC
    sbc b                                         ; $46DD: $98
    db $FC                                        ; $46DE: $FC
    ld h, b                                       ; $46DF: $60
    rst $38                                       ; $46E0: $FF
    ld [hl], e                                    ; $46E1: $73
    rst $38                                       ; $46E2: $FF
    jr c, @+$01                                   ; $46E3: $38 $FF

    dec e                                         ; $46E5: $1D
    rst $18                                       ; $46E6: $DF
    jr nz, jr_00C_46C5                            ; $46E7: $20 $DC

    inc hl                                        ; $46E9: $23
    xor $59                                       ; $46EA: $EE $59
    rst $38                                       ; $46EC: $FF

jr_00C_46ED:
    ld e, h                                       ; $46ED: $5C
    rst $38                                       ; $46EE: $FF
    ld l, l                                       ; $46EF: $6D
    cp $2C                                        ; $46F0: $FE $2C
    db $FC                                        ; $46F2: $FC
    jr jr_00C_46ED                                ; $46F3: $18 $F8

    or b                                          ; $46F5: $B0
    ld hl, sp+$00                                 ; $46F6: $F8 $00
    ld e, b                                       ; $46F8: $58
    and b                                         ; $46F9: $A0
    ld a, b                                       ; $46FA: $78
    and b                                         ; $46FB: $A0
    ld hl, sp+$10                                 ; $46FC: $F8 $10
    ld hl, sp-$80                                 ; $46FE: $F8 $80
    rst $38                                       ; $4700: $FF
    ld [hl], h                                    ; $4701: $74
    rst $38                                       ; $4702: $FF
    ld a, [hl-]                                   ; $4703: $3A
    rst $38                                       ; $4704: $FF
    inc e                                         ; $4705: $1C
    rst $38                                       ; $4706: $FF
    inc bc                                        ; $4707: $03
    db $EB                                        ; $4708: $EB
    inc d                                         ; $4709: $14
    ld hl, sp+$57                                 ; $470A: $F8 $57
    db $FC                                        ; $470C: $FC
    ld e, e                                       ; $470D: $5B
    db $FC                                        ; $470E: $FC
    ld e, e                                       ; $470F: $5B
    rst $38                                       ; $4710: $FF
    ld a, a                                       ; $4711: $7F
    rst $38                                       ; $4712: $FF
    ld a, a                                       ; $4713: $7F
    db $FC                                        ; $4714: $FC
    ld a, a                                       ; $4715: $7F
    db $FC                                        ; $4716: $FC
    ld a, a                                       ; $4717: $7F
    db $FC                                        ; $4718: $FC
    ld a, a                                       ; $4719: $7F
    rst $38                                       ; $471A: $FF
    ld a, a                                       ; $471B: $7F
    db $FC                                        ; $471C: $FC
    ld a, a                                       ; $471D: $7F
    db $FC                                        ; $471E: $FC
    ld a, a                                       ; $471F: $7F
    ccf                                           ; $4720: $3F
    rra                                           ; $4721: $1F
    ccf                                           ; $4722: $3F
    rra                                           ; $4723: $1F
    ld [hl], e                                    ; $4724: $73
    ccf                                           ; $4725: $3F
    ld [hl], e                                    ; $4726: $73
    ccf                                           ; $4727: $3F
    ld [hl], e                                    ; $4728: $73
    ccf                                           ; $4729: $3F
    ld a, a                                       ; $472A: $7F
    ccf                                           ; $472B: $3F
    ld [hl], e                                    ; $472C: $73
    ccf                                           ; $472D: $3F
    inc sp                                        ; $472E: $33
    rra                                           ; $472F: $1F
    db $FC                                        ; $4730: $FC
    ldh a, [$FC]                                  ; $4731: $F0 $FC
    sbc b                                         ; $4733: $98
    db $FC                                        ; $4734: $FC
    ld [$40B8], sp                                ; $4735: $08 $B8 $40
    or b                                          ; $4738: $B0
    ld b, b                                       ; $4739: $40
    ld hl, sp-$50                                 ; $473A: $F8 $B0
    db $FC                                        ; $473C: $FC
    cp b                                          ; $473D: $B8
    db $FC                                        ; $473E: $FC
    sbc b                                         ; $473F: $98
    ld a, a                                       ; $4740: $7F
    ld [$74FF], sp                                ; $4741: $08 $FF $74
    rst $38                                       ; $4744: $FF
    ld a, [hl-]                                   ; $4745: $3A
    rst $38                                       ; $4746: $FF
    inc e                                         ; $4747: $1C
    rst $38                                       ; $4748: $FF
    inc bc                                        ; $4749: $03
    di                                            ; $474A: $F3
    ld l, h                                       ; $474B: $6C
    rst $38                                       ; $474C: $FF
    ld l, [hl]                                    ; $474D: $6E
    rst $38                                       ; $474E: $FF
    halt                                          ; $474F: $76
    cp $10                                        ; $4750: $FE $10
    rst $38                                       ; $4752: $FF
    ld l, $FF                                     ; $4753: $2E $FF
    ld e, h                                       ; $4755: $5C
    rst $38                                       ; $4756: $FF
    jr c, @+$01                                   ; $4757: $38 $FF

    ret nz                                        ; $4759: $C0

    rst $28                                       ; $475A: $EF
    ld d, $3F                                     ; $475B: $16 $3F
    sub $3F                                       ; $475D: $D6 $3F
    sub $FF                                       ; $475F: $D6 $FF
    ld [hl], b                                    ; $4761: $70
    rst $38                                       ; $4762: $FF
    ld [hl], a                                    ; $4763: $77
    rst $38                                       ; $4764: $FF
    ld l, a                                       ; $4765: $6F
    ld a, a                                       ; $4766: $7F
    cpl                                           ; $4767: $2F
    ccf                                           ; $4768: $3F
    db $10                                        ; $4769: $10
    ccf                                           ; $476A: $3F
    ld b, $3F                                     ; $476B: $06 $3F
    ld e, $1F                                     ; $476D: $1E $1F
    nop                                           ; $476F: $00
    ld hl, sp+$10                                 ; $4770: $F8 $10
    ld hl, sp-$30                                 ; $4772: $F8 $D0
    ld hl, sp-$20                                 ; $4774: $F8 $E0
    ldh a, [$C0]                                  ; $4776: $F0 $C0
    ld hl, sp+$30                                 ; $4778: $F8 $30
    ld hl, sp-$10                                 ; $477A: $F8 $F0
    ldh a, [rP1]                                  ; $477C: $F0 $00
    nop                                           ; $477E: $00
    nop                                           ; $477F: $00
    rst $38                                       ; $4780: $FF
    ld h, b                                       ; $4781: $60
    rst $38                                       ; $4782: $FF
    ld [hl], a                                    ; $4783: $77
    rst $38                                       ; $4784: $FF
    ld l, a                                       ; $4785: $6F
    ld a, a                                       ; $4786: $7F
    inc hl                                        ; $4787: $23
    ccf                                           ; $4788: $3F
    inc c                                         ; $4789: $0C
    ccf                                           ; $478A: $3F
    ld e, $3F                                     ; $478B: $1E $3F
    inc e                                         ; $478D: $1C
    ld e, $00                                     ; $478E: $1E $00
    db $FC                                        ; $4790: $FC
    ld a, a                                       ; $4791: $7F
    rst $38                                       ; $4792: $FF
    ld a, a                                       ; $4793: $7F
    rst $38                                       ; $4794: $FF
    ld a, a                                       ; $4795: $7F
    ld a, a                                       ; $4796: $7F
    ccf                                           ; $4797: $3F
    ccf                                           ; $4798: $3F
    rlca                                          ; $4799: $07
    ccf                                           ; $479A: $3F
    db $10                                        ; $479B: $10
    ccf                                           ; $479C: $3F
    ld c, $1F                                     ; $479D: $0E $1F
    nop                                           ; $479F: $00
    inc sp                                        ; $47A0: $33
    rra                                           ; $47A1: $1F
    ccf                                           ; $47A2: $3F
    rra                                           ; $47A3: $1F
    ccf                                           ; $47A4: $3F
    rra                                           ; $47A5: $1F
    ccf                                           ; $47A6: $3F
    rra                                           ; $47A7: $1F
    rra                                           ; $47A8: $1F
    ld bc, $060F                                  ; $47A9: $01 $0F $06
    rrca                                          ; $47AC: $0F
    nop                                           ; $47AD: $00
    nop                                           ; $47AE: $00
    nop                                           ; $47AF: $00
    db $FC                                        ; $47B0: $FC
    and b                                         ; $47B1: $A0
    ldh a, [$C0]                                  ; $47B2: $F0 $C0
    ld hl, sp-$30                                 ; $47B4: $F8 $D0
    ld hl, sp-$30                                 ; $47B6: $F8 $D0
    ld hl, sp-$60                                 ; $47B8: $F8 $A0
    db $FC                                        ; $47BA: $FC
    ld [$70FC], sp                                ; $47BB: $08 $FC $70
    ld hl, sp+$00                                 ; $47BE: $F8 $00
    rst $38                                       ; $47C0: $FF
    ld [hl], b                                    ; $47C1: $70
    ld a, a                                       ; $47C2: $7F
    dec sp                                        ; $47C3: $3B
    ld a, a                                       ; $47C4: $7F
    scf                                           ; $47C5: $37
    ld a, a                                       ; $47C6: $7F
    scf                                           ; $47C7: $37
    ld a, a                                       ; $47C8: $7F
    ld [hl], $3F                                  ; $47C9: $36 $3F
    nop                                           ; $47CB: $00
    rlca                                          ; $47CC: $07
    ld [bc], a                                    ; $47CD: $02
    inc bc                                        ; $47CE: $03
    nop                                           ; $47CF: $00
    rst $38                                       ; $47D0: $FF
    ld b, $FE                                     ; $47D1: $06 $FE
    db $EC                                        ; $47D3: $EC
    cp $EC                                        ; $47D4: $FE $EC
    cp $8C                                        ; $47D6: $FE $8C
    cp $6C                                        ; $47D8: $FE $6C
    db $FC                                        ; $47DA: $FC
    ldh [$E0], a                                  ; $47DB: $E0 $E0
    ret nz                                        ; $47DD: $C0

    ldh [rP1], a                                  ; $47DE: $E0 $00
    db $FC                                        ; $47E0: $FC
    ld a, a                                       ; $47E1: $7F
    db $FC                                        ; $47E2: $FC
    ld a, a                                       ; $47E3: $7F
    ld a, a                                       ; $47E4: $7F
    ccf                                           ; $47E5: $3F
    ccf                                           ; $47E6: $3F
    rlca                                          ; $47E7: $07
    rrca                                          ; $47E8: $0F
    nop                                           ; $47E9: $00
    rlca                                          ; $47EA: $07
    nop                                           ; $47EB: $00
    rlca                                          ; $47EC: $07
    inc bc                                        ; $47ED: $03
    rlca                                          ; $47EE: $07
    nop                                           ; $47EF: $00
    ccf                                           ; $47F0: $3F
    cp $3F                                        ; $47F1: $FE $3F
    cp $FE                                        ; $47F3: $FE $FE
    db $FC                                        ; $47F5: $FC
    db $FC                                        ; $47F6: $FC
    ldh [$F0], a                                  ; $47F7: $E0 $F0
    nop                                           ; $47F9: $00
    ldh a, [$60]                                  ; $47FA: $F0 $60
    ldh a, [$60]                                  ; $47FC: $F0 $60
    ldh a, [rP1]                                  ; $47FE: $F0 $00
    rrca                                          ; $4800: $0F
    nop                                           ; $4801: $00
    rra                                           ; $4802: $1F
    rrca                                          ; $4803: $0F
    ccf                                           ; $4804: $3F
    rra                                           ; $4805: $1F
    cpl                                           ; $4806: $2F
    rra                                           ; $4807: $1F
    cpl                                           ; $4808: $2F
    rra                                           ; $4809: $1F
    ccf                                           ; $480A: $3F
    rra                                           ; $480B: $1F
    rra                                           ; $480C: $1F
    rrca                                          ; $480D: $0F
    ccf                                           ; $480E: $3F
    ld de, $00C0                                  ; $480F: $11 $C0 $00
    ldh [$C0], a                                  ; $4812: $E0 $C0
    ldh a, [$E0]                                  ; $4814: $F0 $E0
    ret nc                                        ; $4816: $D0

    ldh [$D0], a                                  ; $4817: $E0 $D0
    ld h, b                                       ; $4819: $60
    ldh a, [rNR41]                                ; $481A: $F0 $20
    or b                                          ; $481C: $B0
    ld b, b                                       ; $481D: $40
    ldh a, [$80]                                  ; $481E: $F0 $80
    ccf                                           ; $4820: $3F
    ld de, $3E7F                                  ; $4821: $11 $7F $3E
    ld a, a                                       ; $4824: $7F
    ccf                                           ; $4825: $3F
    ld c, a                                       ; $4826: $4F
    ld a, $4E                                     ; $4827: $3E $4E
    dec a                                         ; $4829: $3D
    ld c, a                                       ; $482A: $4F
    inc a                                         ; $482B: $3C
    ld a, a                                       ; $482C: $7F
    inc a                                         ; $482D: $3C
    sbc a                                         ; $482E: $9F
    ld a, h                                       ; $482F: $7C
    ldh a, [$80]                                  ; $4830: $F0 $80
    ldh a, [$C0]                                  ; $4832: $F0 $C0
    ldh [rP1], a                                  ; $4834: $E0 $00
    ret nz                                        ; $4836: $C0

    add b                                         ; $4837: $80
    ret nz                                        ; $4838: $C0

    nop                                           ; $4839: $00
    ldh [$C0], a                                  ; $483A: $E0 $C0
    ret nc                                        ; $483C: $D0

    ldh [$90], a                                  ; $483D: $E0 $90
    ld h, b                                       ; $483F: $60
    ld a, a                                       ; $4840: $7F
    ld a, $7F                                     ; $4841: $3E $7F
    ccf                                           ; $4843: $3F
    ld e, a                                       ; $4844: $5F
    dec a                                         ; $4845: $3D
    ld e, l                                       ; $4846: $5D
    ld a, [hl-]                                   ; $4847: $3A
    ld e, l                                       ; $4848: $5D
    ld a, [hl-]                                   ; $4849: $3A
    ld a, a                                       ; $484A: $7F
    dec sp                                        ; $484B: $3B
    cp a                                          ; $484C: $BF
    ld a, e                                       ; $484D: $7B
    cp a                                          ; $484E: $BF
    ld a, c                                       ; $484F: $79
    ldh a, [$C0]                                  ; $4850: $F0 $C0
    ldh [rP1], a                                  ; $4852: $E0 $00
    and b                                         ; $4854: $A0
    ld b, b                                       ; $4855: $40
    jr nz, @-$3E                                  ; $4856: $20 $C0

    and b                                         ; $4858: $A0
    ld b, b                                       ; $4859: $40
    ldh [rP1], a                                  ; $485A: $E0 $00
    ldh [$80], a                                  ; $485C: $E0 $80
    ldh [$80], a                                  ; $485E: $E0 $80
    ccf                                           ; $4860: $3F
    ld de, $3E7F                                  ; $4861: $11 $7F $3E
    ld a, a                                       ; $4864: $7F
    ccf                                           ; $4865: $3F
    rst $38                                       ; $4866: $FF
    ld a, l                                       ; $4867: $7D
    db $FD                                        ; $4868: $FD
    ld [hl], d                                    ; $4869: $72
    cp $6D                                        ; $486A: $FE $6D
    xor $5D                                       ; $486C: $EE $5D
    db $E4                                        ; $486E: $E4
    ld e, e                                       ; $486F: $5B
    ldh a, [$80]                                  ; $4870: $F0 $80
    ldh a, [$C0]                                  ; $4872: $F0 $C0
    ldh [rP1], a                                  ; $4874: $E0 $00
    ret nz                                        ; $4876: $C0

    nop                                           ; $4877: $00
    ld b, b                                       ; $4878: $40
    add b                                         ; $4879: $80
    ld h, b                                       ; $487A: $60
    add b                                         ; $487B: $80
    ld d, b                                       ; $487C: $50
    and b                                         ; $487D: $A0
    ld d, b                                       ; $487E: $50
    and b                                         ; $487F: $A0
    sbc a                                         ; $4880: $9F
    ld a, h                                       ; $4881: $7C
    sbc a                                         ; $4882: $9F
    ld a, l                                       ; $4883: $7D
    rst $38                                       ; $4884: $FF
    ld a, e                                       ; $4885: $7B
    ld a, a                                       ; $4886: $7F
    rlca                                          ; $4887: $07
    ld a, a                                       ; $4888: $7F
    dec l                                         ; $4889: $2D
    ld a, a                                       ; $488A: $7F
    ld [hl-], a                                   ; $488B: $32
    ld a, a                                       ; $488C: $7F
    ld e, $7F                                     ; $488D: $1E $7F
    nop                                           ; $488F: $00
    ldh [rP1], a                                  ; $4890: $E0 $00
    ldh [$C0], a                                  ; $4892: $E0 $C0
    ld hl, sp-$40                                 ; $4894: $F8 $C0
    db $FC                                        ; $4896: $FC
    ret c                                         ; $4897: $D8

    db $FC                                        ; $4898: $FC
    cp b                                          ; $4899: $B8
    ld hl, sp-$50                                 ; $489A: $F8 $B0
    ld hl, sp+$40                                 ; $489C: $F8 $40
    ldh [rP1], a                                  ; $489E: $E0 $00
    cp a                                          ; $48A0: $BF
    ld [hl], b                                    ; $48A1: $70
    rst $38                                       ; $48A2: $FF
    ld [hl], c                                    ; $48A3: $71
    rst $38                                       ; $48A4: $FF
    ld [hl], e                                    ; $48A5: $73
    rst $38                                       ; $48A6: $FF
    daa                                           ; $48A7: $27
    ccf                                           ; $48A8: $3F
    nop                                           ; $48A9: $00
    ccf                                           ; $48AA: $3F
    rlca                                          ; $48AB: $07
    rra                                           ; $48AC: $1F
    rrca                                          ; $48AD: $0F
    rra                                           ; $48AE: $1F
    nop                                           ; $48AF: $00
    ldh [rP1], a                                  ; $48B0: $E0 $00
    ldh [$C0], a                                  ; $48B2: $E0 $C0
    ldh [$C0], a                                  ; $48B4: $E0 $C0
    ldh [$80], a                                  ; $48B6: $E0 $80
    ldh a, [rNR41]                                ; $48B8: $F0 $20
    ldh a, [$A0]                                  ; $48BA: $F0 $A0
    ldh a, [$80]                                  ; $48BC: $F0 $80
    ret nz                                        ; $48BE: $C0

    nop                                           ; $48BF: $00
    rst $38                                       ; $48C0: $FF
    ld h, b                                       ; $48C1: $60
    rst $38                                       ; $48C2: $FF
    ld [hl], e                                    ; $48C3: $73
    rst $38                                       ; $48C4: $FF
    ld h, a                                       ; $48C5: $67
    rst $38                                       ; $48C6: $FF
    ld c, a                                       ; $48C7: $4F
    rst $38                                       ; $48C8: $FF
    inc bc                                        ; $48C9: $03
    rst $38                                       ; $48CA: $FF
    dec a                                         ; $48CB: $3D
    ld a, a                                       ; $48CC: $7F
    ld e, $7F                                     ; $48CD: $1E $7F
    nop                                           ; $48CF: $00
    ldh [rP1], a                                  ; $48D0: $E0 $00
    ret nz                                        ; $48D2: $C0

    add b                                         ; $48D3: $80
    ld hl, sp-$40                                 ; $48D4: $F8 $C0
    db $FC                                        ; $48D6: $FC
    ret c                                         ; $48D7: $D8

    db $FC                                        ; $48D8: $FC
    cp b                                          ; $48D9: $B8
    ld hl, sp-$50                                 ; $48DA: $F8 $B0
    ld hl, sp+$40                                 ; $48DC: $F8 $40
    ldh [rP1], a                                  ; $48DE: $E0 $00
    ld a, a                                       ; $48E0: $7F
    ccf                                           ; $48E1: $3F
    rst $38                                       ; $48E2: $FF
    ld a, a                                       ; $48E3: $7F
    rst $38                                       ; $48E4: $FF
    ld a, a                                       ; $48E5: $7F
    db $FC                                        ; $48E6: $FC
    ld a, a                                       ; $48E7: $7F
    db $FC                                        ; $48E8: $FC
    ld a, a                                       ; $48E9: $7F
    db $FC                                        ; $48EA: $FC
    ld a, a                                       ; $48EB: $7F
    rst $38                                       ; $48EC: $FF
    ld a, a                                       ; $48ED: $7F
    db $FC                                        ; $48EE: $FC
    ld a, a                                       ; $48EF: $7F
    ld e, $00                                     ; $48F0: $1E $00
    ccf                                           ; $48F2: $3F
    ld e, $1F                                     ; $48F3: $1E $1F
    rrca                                          ; $48F5: $0F
    ccf                                           ; $48F6: $3F
    rra                                           ; $48F7: $1F
    ccf                                           ; $48F8: $3F
    rra                                           ; $48F9: $1F
    ccf                                           ; $48FA: $3F
    rra                                           ; $48FB: $1F
    rra                                           ; $48FC: $1F
    rrca                                          ; $48FD: $0F
    rrca                                          ; $48FE: $0F
    ld b, $00                                     ; $48FF: $06 $00
    nop                                           ; $4901: $00
    add b                                         ; $4902: $80
    nop                                           ; $4903: $00
    ldh a, [$80]                                  ; $4904: $F0 $80
    ld hl, sp-$10                                 ; $4906: $F8 $F0
    db $FC                                        ; $4908: $FC
    ld hl, sp-$02                                 ; $4909: $F8 $FE
    db $FC                                        ; $490B: $FC
    cp $FC                                        ; $490C: $FE $FC
    cp $74                                        ; $490E: $FE $74
    ld bc, $0300                                  ; $4910: $01 $00 $03
    ld bc, $0007                                  ; $4913: $01 $07 $00
    rrca                                          ; $4916: $0F
    rlca                                          ; $4917: $07
    rra                                           ; $4918: $1F
    rrca                                          ; $4919: $0F
    rra                                           ; $491A: $1F
    rrca                                          ; $491B: $0F
    ccf                                           ; $491C: $3F
    rra                                           ; $491D: $1F
    ccf                                           ; $491E: $3F
    inc de                                        ; $491F: $13
    add b                                         ; $4920: $80
    nop                                           ; $4921: $00
    ret nz                                        ; $4922: $C0

    add b                                         ; $4923: $80
    ldh [$80], a                                  ; $4924: $E0 $80
    ldh a, [$E0]                                  ; $4926: $F0 $E0
    ld hl, sp-$10                                 ; $4928: $F8 $F0
    ld hl, sp-$10                                 ; $492A: $F8 $F0
    db $FC                                        ; $492C: $FC
    ld hl, sp-$04                                 ; $492D: $F8 $FC
    ret z                                         ; $492F: $C8

    ld bc, $0300                                  ; $4930: $01 $00 $03
    ld bc, $0107                                  ; $4933: $01 $07 $01
    rrca                                          ; $4936: $0F
    inc b                                         ; $4937: $04
    rra                                           ; $4938: $1F
    rrca                                          ; $4939: $0F
    rra                                           ; $493A: $1F
    rrca                                          ; $493B: $0F
    ccf                                           ; $493C: $3F
    rra                                           ; $493D: $1F
    ccf                                           ; $493E: $3F
    rra                                           ; $493F: $1F
    add b                                         ; $4940: $80
    nop                                           ; $4941: $00
    ret nz                                        ; $4942: $C0

    add b                                         ; $4943: $80
    ldh [$80], a                                  ; $4944: $E0 $80
    ldh a, [$E0]                                  ; $4946: $F0 $E0
    ld hl, sp-$10                                 ; $4948: $F8 $F0
    ld hl, sp-$10                                 ; $494A: $F8 $F0
    db $FC                                        ; $494C: $FC
    ld hl, sp-$04                                 ; $494D: $F8 $FC
    ld hl, sp+$7F                                 ; $494F: $F8 $7F
    nop                                           ; $4951: $00
    rst $38                                       ; $4952: $FF
    ld a, a                                       ; $4953: $7F
    ld a, a                                       ; $4954: $7F
    ccf                                           ; $4955: $3F
    ccf                                           ; $4956: $3F
    dec de                                        ; $4957: $1B
    ccf                                           ; $4958: $3F
    rlca                                          ; $4959: $07
    ccf                                           ; $495A: $3F
    rra                                           ; $495B: $1F
    rra                                           ; $495C: $1F
    rrca                                          ; $495D: $0F
    rrca                                          ; $495E: $0F
    rlca                                          ; $495F: $07
    nop                                           ; $4960: $00
    nop                                           ; $4961: $00
    ld hl, sp+$00                                 ; $4962: $F8 $00
    db $FC                                        ; $4964: $FC
    ld hl, sp-$02                                 ; $4965: $F8 $FE
    db $FC                                        ; $4967: $FC
    cp $FC                                        ; $4968: $FE $FC
    db $FC                                        ; $496A: $FC
    ld hl, sp-$08                                 ; $496B: $F8 $F8
    ldh a, [$F0]                                  ; $496D: $F0 $F0
    add b                                         ; $496F: $80
    rrca                                          ; $4970: $0F
    inc bc                                        ; $4971: $03
    rra                                           ; $4972: $1F
    add hl, bc                                    ; $4973: $09
    ccf                                           ; $4974: $3F
    db $10                                        ; $4975: $10
    ld a, a                                       ; $4976: $7F
    ld [hl-], a                                   ; $4977: $32
    ld a, a                                       ; $4978: $7F
    inc sp                                        ; $4979: $33
    ld a, a                                       ; $497A: $7F
    dec sp                                        ; $497B: $3B
    ld h, a                                       ; $497C: $67
    dec sp                                        ; $497D: $3B
    ccf                                           ; $497E: $3F
    inc bc                                        ; $497F: $03
    cp $24                                        ; $4980: $FE $24
    db $FC                                        ; $4982: $FC
    ld hl, sp-$08                                 ; $4983: $F8 $F8
    nop                                           ; $4985: $00
    ld hl, sp+$20                                 ; $4986: $F8 $20
    ld hl, sp+$50                                 ; $4988: $F8 $50
    db $FC                                        ; $498A: $FC
    ret c                                         ; $498B: $D8

    db $EC                                        ; $498C: $EC
    ret c                                         ; $498D: $D8

    ld hl, sp-$40                                 ; $498E: $F8 $C0
    rra                                           ; $4990: $1F
    add hl, bc                                    ; $4991: $09
    rrca                                          ; $4992: $0F
    rlca                                          ; $4993: $07
    rra                                           ; $4994: $1F
    nop                                           ; $4995: $00
    ccf                                           ; $4996: $3F
    inc d                                         ; $4997: $14
    ld a, a                                       ; $4998: $7F
    ld [hl], $EF                                  ; $4999: $36 $EF
    ld [hl], a                                    ; $499B: $77
    ld c, a                                       ; $499C: $4F
    scf                                           ; $499D: $37
    ccf                                           ; $499E: $3F
    rlca                                          ; $499F: $07
    rra                                           ; $49A0: $1F
    rrca                                          ; $49A1: $0F
    rrca                                          ; $49A2: $0F
    rlca                                          ; $49A3: $07
    rra                                           ; $49A4: $1F
    nop                                           ; $49A5: $00
    ccf                                           ; $49A6: $3F
    rla                                           ; $49A7: $17
    ld a, a                                       ; $49A8: $7F
    cpl                                           ; $49A9: $2F
    rst $38                                       ; $49AA: $FF
    ld l, a                                       ; $49AB: $6F
    ld e, a                                       ; $49AC: $5F
    cpl                                           ; $49AD: $2F
    ccf                                           ; $49AE: $3F
    rlca                                          ; $49AF: $07
    rra                                           ; $49B0: $1F
    nop                                           ; $49B1: $00
    rra                                           ; $49B2: $1F
    ld c, $1F                                     ; $49B3: $0E $1F
    rrca                                          ; $49B5: $0F
    rra                                           ; $49B6: $1F
    rrca                                          ; $49B7: $0F
    rra                                           ; $49B8: $1F
    rrca                                          ; $49B9: $0F
    rra                                           ; $49BA: $1F
    rrca                                          ; $49BB: $0F
    rrca                                          ; $49BC: $0F
    inc bc                                        ; $49BD: $03
    rlca                                          ; $49BE: $07

jr_00C_49BF:
    nop                                           ; $49BF: $00
    ldh a, [rP1]                                  ; $49C0: $F0 $00
    ldh a, [rP1]                                  ; $49C2: $F0 $00
    ldh a, [rNR41]                                ; $49C4: $F0 $20
    ldh a, [rNR41]                                ; $49C6: $F0 $20
    ldh a, [$60]                                  ; $49C8: $F0 $60
    add sp, $70                                   ; $49CA: $E8 $70
    ret z                                         ; $49CC: $C8

    jr nc, jr_00C_49BF                            ; $49CD: $30 $F0

    nop                                           ; $49CF: $00
    ccf                                           ; $49D0: $3F
    inc de                                        ; $49D1: $13
    rra                                           ; $49D2: $1F
    add hl, bc                                    ; $49D3: $09
    rrca                                          ; $49D4: $0F
    rlca                                          ; $49D5: $07
    rra                                           ; $49D6: $1F
    nop                                           ; $49D7: $00
    rra                                           ; $49D8: $1F
    ld a, [bc]                                    ; $49D9: $0A
    rra                                           ; $49DA: $1F
    dec bc                                        ; $49DB: $0B
    rra                                           ; $49DC: $1F
    dec c                                         ; $49DD: $0D
    dec e                                         ; $49DE: $1D
    ld c, $FC                                     ; $49DF: $0E $FC
    ret z                                         ; $49E1: $C8

    ld hl, sp-$70                                 ; $49E2: $F8 $90
    ldh a, [$E0]                                  ; $49E4: $F0 $E0
    ld hl, sp+$00                                 ; $49E6: $F8 $00
    ld hl, sp+$10                                 ; $49E8: $F8 $10
    ld hl, sp+$50                                 ; $49EA: $F8 $50
    db $FC                                        ; $49EC: $FC
    ret c                                         ; $49ED: $D8

    db $FC                                        ; $49EE: $FC
    ret c                                         ; $49EF: $D8

    ccf                                           ; $49F0: $3F
    rra                                           ; $49F1: $1F
    rra                                           ; $49F2: $1F
    rrca                                          ; $49F3: $0F
    rrca                                          ; $49F4: $0F
    rlca                                          ; $49F5: $07
    rra                                           ; $49F6: $1F
    nop                                           ; $49F7: $00
    rra                                           ; $49F8: $1F
    rrca                                          ; $49F9: $0F
    ccf                                           ; $49FA: $3F
    rra                                           ; $49FB: $1F
    ccf                                           ; $49FC: $3F
    rrca                                          ; $49FD: $0F
    ccf                                           ; $49FE: $3F
    rrca                                          ; $49FF: $0F
    db $FC                                        ; $4A00: $FC
    ld hl, sp-$08                                 ; $4A01: $F8 $F8
    ldh a, [$F0]                                  ; $4A03: $F0 $F0
    ldh [$F0], a                                  ; $4A05: $E0 $F0
    nop                                           ; $4A07: $00
    ld hl, sp-$10                                 ; $4A08: $F8 $F0
    db $FC                                        ; $4A0A: $FC
    add sp, -$02                                  ; $4A0B: $E8 $FE
    db $EC                                        ; $4A0D: $EC
    db $F4                                        ; $4A0E: $F4
    add sp, $0F                                   ; $4A0F: $E8 $0F
    nop                                           ; $4A11: $00
    rrca                                          ; $4A12: $0F
    rlca                                          ; $4A13: $07
    rra                                           ; $4A14: $1F
    rrca                                          ; $4A15: $0F
    rra                                           ; $4A16: $1F
    rrca                                          ; $4A17: $0F
    ccf                                           ; $4A18: $3F
    db $10                                        ; $4A19: $10
    add hl, sp                                    ; $4A1A: $39
    ld b, $21                                     ; $4A1B: $06 $21
    ld e, $1F                                     ; $4A1D: $1E $1F
    nop                                           ; $4A1F: $00
    ldh [rP1], a                                  ; $4A20: $E0 $00
    ldh [$C0], a                                  ; $4A22: $E0 $C0
    ldh a, [$E0]                                  ; $4A24: $F0 $E0
    ldh a, [$C0]                                  ; $4A26: $F0 $C0
    ret z                                         ; $4A28: $C8

    jr nc, @+$0A                                  ; $4A29: $30 $08

    ldh a, [$F0]                                  ; $4A2B: $F0 $F0
    nop                                           ; $4A2D: $00
    nop                                           ; $4A2E: $00
    nop                                           ; $4A2F: $00
    ld hl, sp+$00                                 ; $4A30: $F8 $00
    ldh a, [$E0]                                  ; $4A32: $F0 $E0

Jump_00C_4A34:
    ld hl, sp-$10                                 ; $4A34: $F8 $F0
    ld hl, sp-$40                                 ; $4A36: $F8 $C0
    ret z                                         ; $4A38: $C8

    jr nc, jr_00C_49BF                            ; $4A39: $30 $84

    ld a, b                                       ; $4A3B: $78
    call nz, $F838                                ; $4A3C: $C4 $38 $F8
    nop                                           ; $4A3F: $00
    ldh a, [rP1]                                  ; $4A40: $F0 $00
    ldh a, [$E0]                                  ; $4A42: $F0 $E0
    ld hl, sp-$10                                 ; $4A44: $F8 $F0
    ld hl, sp-$10                                 ; $4A46: $F8 $F0
    ld hl, sp-$20                                 ; $4A48: $F8 $E0
    db $F4                                        ; $4A4A: $F4
    ld [$708C], sp                                ; $4A4B: $08 $8C $70
    ld hl, sp+$00                                 ; $4A4E: $F8 $00
    rlca                                          ; $4A50: $07
    nop                                           ; $4A51: $00
    rlca                                          ; $4A52: $07
    inc bc                                        ; $4A53: $03
    rrca                                          ; $4A54: $0F
    rlca                                          ; $4A55: $07
    rrca                                          ; $4A56: $0F
    rlca                                          ; $4A57: $07
    rrca                                          ; $4A58: $0F
    ld bc, $0609                                  ; $4A59: $01 $09 $06
    rrca                                          ; $4A5C: $0F
    nop                                           ; $4A5D: $00
    nop                                           ; $4A5E: $00
    nop                                           ; $4A5F: $00
    ldh a, [$60]                                  ; $4A60: $F0 $60
    ldh a, [$E0]                                  ; $4A62: $F0 $E0
    ld hl, sp-$10                                 ; $4A64: $F8 $F0
    ld hl, sp-$10                                 ; $4A66: $F8 $F0
    ld hl, sp-$20                                 ; $4A68: $F8 $E0
    db $F4                                        ; $4A6A: $F4
    ld [$708C], sp                                ; $4A6B: $08 $8C $70

jr_00C_4A6E:
    ld hl, sp+$00                                 ; $4A6E: $F8 $00
    rrca                                          ; $4A70: $0F
    nop                                           ; $4A71: $00
    rlca                                          ; $4A72: $07
    inc bc                                        ; $4A73: $03
    rrca                                          ; $4A74: $0F
    rlca                                          ; $4A75: $07
    rrca                                          ; $4A76: $0F
    rlca                                          ; $4A77: $07
    rrca                                          ; $4A78: $0F
    rlca                                          ; $4A79: $07
    rlca                                          ; $4A7A: $07
    nop                                           ; $4A7B: $00
    dec b                                         ; $4A7C: $05
    ld [bc], a                                    ; $4A7D: $02
    inc bc                                        ; $4A7E: $03
    nop                                           ; $4A7F: $00
    ld hl, sp+$00                                 ; $4A80: $F8 $00
    ldh a, [$E0]                                  ; $4A82: $F0 $E0
    ldh a, [$E0]                                  ; $4A84: $F0 $E0
    ldh a, [$80]                                  ; $4A86: $F0 $80
    sub b                                         ; $4A88: $90
    ld h, b                                       ; $4A89: $60
    db $10                                        ; $4A8A: $10
    ldh [rNR41], a                                ; $4A8B: $E0 $20
    ret nz                                        ; $4A8D: $C0

    ldh [rP1], a                                  ; $4A8E: $E0 $00
    rra                                           ; $4A90: $1F
    nop                                           ; $4A91: $00
    rrca                                          ; $4A92: $0F
    rlca                                          ; $4A93: $07
    rra                                           ; $4A94: $1F
    rrca                                          ; $4A95: $0F
    rra                                           ; $4A96: $1F
    rrca                                          ; $4A97: $0F
    rra                                           ; $4A98: $1F
    rrca                                          ; $4A99: $0F
    rrca                                          ; $4A9A: $0F
    nop                                           ; $4A9B: $00
    add hl, bc                                    ; $4A9C: $09
    ld b, $0F                                     ; $4A9D: $06 $0F
    nop                                           ; $4A9F: $00
    ld hl, sp+$00                                 ; $4AA0: $F8 $00
    ldh a, [$E0]                                  ; $4AA2: $F0 $E0
    ldh a, [$E0]                                  ; $4AA4: $F0 $E0
    ldh a, [$E0]                                  ; $4AA6: $F0 $E0
    ldh [rP1], a                                  ; $4AA8: $E0 $00
    jr nz, @-$3E                                  ; $4AAA: $20 $C0

    jr nz, jr_00C_4A6E                            ; $4AAC: $20 $C0

    ldh [rP1], a                                  ; $4AAE: $E0 $00
    jr c, jr_00C_4AB2                             ; $4AB0: $38 $00

jr_00C_4AB2:
    ld a, a                                       ; $4AB2: $7F
    jr c, jr_00C_4B34                             ; $4AB3: $38 $7F

    ccf                                           ; $4AB5: $3F
    ccf                                           ; $4AB6: $3F
    rra                                           ; $4AB7: $1F
    ccf                                           ; $4AB8: $3F
    rra                                           ; $4AB9: $1F
    ccf                                           ; $4ABA: $3F
    rra                                           ; $4ABB: $1F
    rra                                           ; $4ABC: $1F
    rrca                                          ; $4ABD: $0F
    rrca                                          ; $4ABE: $0F
    rlca                                          ; $4ABF: $07
    nop                                           ; $4AC0: $00
    nop                                           ; $4AC1: $00
    ldh a, [rP1]                                  ; $4AC2: $F0 $00
    ld hl, sp-$10                                 ; $4AC4: $F8 $F0
    db $FC                                        ; $4AC6: $FC
    ld hl, sp-$04                                 ; $4AC7: $F8 $FC
    ld hl, sp-$08                                 ; $4AC9: $F8 $F8
    ldh a, [$F0]                                  ; $4ACB: $F0 $F0
    ldh [$E0], a                                  ; $4ACD: $E0 $E0
    ret nz                                        ; $4ACF: $C0

    rrca                                          ; $4AD0: $0F
    rlca                                          ; $4AD1: $07
    rrca                                          ; $4AD2: $0F
    inc bc                                        ; $4AD3: $03
    rrca                                          ; $4AD4: $0F
    inc b                                         ; $4AD5: $04
    rra                                           ; $4AD6: $1F
    inc c                                         ; $4AD7: $0C
    rra                                           ; $4AD8: $1F
    dec c                                         ; $4AD9: $0D
    rra                                           ; $4ADA: $1F
    inc c                                         ; $4ADB: $0C
    rra                                           ; $4ADC: $1F
    inc c                                         ; $4ADD: $0C
    rra                                           ; $4ADE: $1F
    inc b                                         ; $4ADF: $04
    ldh [$C0], a                                  ; $4AE0: $E0 $C0
    ret nz                                        ; $4AE2: $C0

    add b                                         ; $4AE3: $80
    ret nz                                        ; $4AE4: $C0

    add b                                         ; $4AE5: $80
    ret nz                                        ; $4AE6: $C0

    nop                                           ; $4AE7: $00
    ret nz                                        ; $4AE8: $C0

    nop                                           ; $4AE9: $00
    ldh [$C0], a                                  ; $4AEA: $E0 $C0
    ret nc                                        ; $4AEC: $D0

    ldh [$90], a                                  ; $4AED: $E0 $90
    ld h, b                                       ; $4AEF: $60
    rrca                                          ; $4AF0: $0F
    inc bc                                        ; $4AF1: $03
    rra                                           ; $4AF2: $1F
    inc c                                         ; $4AF3: $0C
    rra                                           ; $4AF4: $1F
    ld [$0A1F], sp                                ; $4AF5: $08 $1F $0A
    rra                                           ; $4AF8: $1F
    ld a, [bc]                                    ; $4AF9: $0A
    rra                                           ; $4AFA: $1F
    dec bc                                        ; $4AFB: $0B
    rra                                           ; $4AFC: $1F
    dec bc                                        ; $4AFD: $0B
    ld c, $01                                     ; $4AFE: $0E $01
    ret nz                                        ; $4B00: $C0

jr_00C_4B01:
    add b                                         ; $4B01: $80
    ret nz                                        ; $4B02: $C0

    add b                                         ; $4B03: $80
    ret nz                                        ; $4B04: $C0

    add b                                         ; $4B05: $80
    ldh [$C0], a                                  ; $4B06: $E0 $C0
    ldh [rLCDC], a                                ; $4B08: $E0 $40
    ldh [rLCDC], a                                ; $4B0A: $E0 $40
    ld h, b                                       ; $4B0C: $60
    add b                                         ; $4B0D: $80
    ld h, b                                       ; $4B0E: $60
    add b                                         ; $4B0F: $80
    rrca                                          ; $4B10: $0F
    rlca                                          ; $4B11: $07
    rrca                                          ; $4B12: $0F
    inc bc                                        ; $4B13: $03
    rra                                           ; $4B14: $1F
    inc c                                         ; $4B15: $0C
    rra                                           ; $4B16: $1F
    ld [$061F], sp                                ; $4B17: $08 $1F $06
    rra                                           ; $4B1A: $1F
    inc c                                         ; $4B1B: $0C
    cpl                                           ; $4B1C: $2F
    inc e                                         ; $4B1D: $1C
    daa                                           ; $4B1E: $27
    jr jr_00C_4B01                                ; $4B1F: $18 $E0

    ret nz                                        ; $4B21: $C0

    ret nz                                        ; $4B22: $C0

    add b                                         ; $4B23: $80
    ret nz                                        ; $4B24: $C0

    add b                                         ; $4B25: $80
    ret nz                                        ; $4B26: $C0

    add b                                         ; $4B27: $80
    ret nz                                        ; $4B28: $C0

    add b                                         ; $4B29: $80
    ldh [$80], a                                  ; $4B2A: $E0 $80
    ret nc                                        ; $4B2C: $D0

    and b                                         ; $4B2D: $A0
    ret nc                                        ; $4B2E: $D0

    and b                                         ; $4B2F: $A0
    rrca                                          ; $4B30: $0F
    nop                                           ; $4B31: $00
    rrca                                          ; $4B32: $0F
    rlca                                          ; $4B33: $07

jr_00C_4B34:
    rra                                           ; $4B34: $1F
    rrca                                          ; $4B35: $0F
    ccf                                           ; $4B36: $3F
    rra                                           ; $4B37: $1F
    ld e, a                                       ; $4B38: $5F
    cpl                                           ; $4B39: $2F
    ld c, a                                       ; $4B3A: $4F
    ld sp, $1E61                                  ; $4B3B: $31 $61 $1E
    ld a, a                                       ; $4B3E: $7F
    nop                                           ; $4B3F: $00
    ldh [rP1], a                                  ; $4B40: $E0 $00
    ldh [$C0], a                                  ; $4B42: $E0 $C0
    ld hl, sp-$20                                 ; $4B44: $F8 $E0
    db $E4                                        ; $4B46: $E4
    ret c                                         ; $4B47: $D8

    call nz, $C8B8                                ; $4B48: $C4 $B8 $C8
    or b                                          ; $4B4B: $B0
    cp b                                          ; $4B4C: $B8
    ld b, b                                       ; $4B4D: $40
    ldh [rP1], a                                  ; $4B4E: $E0 $00
    rlca                                          ; $4B50: $07
    nop                                           ; $4B51: $00
    rrca                                          ; $4B52: $0F
    rlca                                          ; $4B53: $07
    rra                                           ; $4B54: $1F
    rrca                                          ; $4B55: $0F
    rra                                           ; $4B56: $1F
    rrca                                          ; $4B57: $0F
    ccf                                           ; $4B58: $3F
    db $10                                        ; $4B59: $10
    jr c, @+$09                                   ; $4B5A: $38 $07

    jr nc, jr_00C_4B6D                            ; $4B5C: $30 $0F

    rra                                           ; $4B5E: $1F
    nop                                           ; $4B5F: $00
    ldh [rP1], a                                  ; $4B60: $E0 $00
    ldh [$C0], a                                  ; $4B62: $E0 $C0
    ldh [$C0], a                                  ; $4B64: $E0 $C0

jr_00C_4B66:
    ldh [$80], a                                  ; $4B66: $E0 $80
    ret nc                                        ; $4B68: $D0

    jr nz, @+$52                                  ; $4B69: $20 $50

    and b                                         ; $4B6B: $A0

jr_00C_4B6C:
    ld [hl], b                                    ; $4B6C: $70

jr_00C_4B6D:
    add b                                         ; $4B6D: $80
    ret nz                                        ; $4B6E: $C0

    nop                                           ; $4B6F: $00

jr_00C_4B70:
    rra                                           ; $4B70: $1F
    nop                                           ; $4B71: $00
    rrca                                          ; $4B72: $0F
    rlca                                          ; $4B73: $07
    rra                                           ; $4B74: $1F
    rrca                                          ; $4B75: $0F
    ccf                                           ; $4B76: $3F
    rrca                                          ; $4B77: $0F
    ld e, a                                       ; $4B78: $5F
    inc hl                                        ; $4B79: $23
    ld b, e                                       ; $4B7A: $43
    dec a                                         ; $4B7B: $3D
    ld h, c                                       ; $4B7C: $61
    ld e, $7F                                     ; $4B7D: $1E $7F
    nop                                           ; $4B7F: $00
    ldh [rP1], a                                  ; $4B80: $E0 $00
    ret nz                                        ; $4B82: $C0

    add b                                         ; $4B83: $80
    ld hl, sp-$40                                 ; $4B84: $F8 $C0
    db $E4                                        ; $4B86: $E4
    ret c                                         ; $4B87: $D8

    call nz, $C8B8                                ; $4B88: $C4 $B8 $C8
    or b                                          ; $4B8B: $B0
    cp b                                          ; $4B8C: $B8
    ld b, b                                       ; $4B8D: $40
    ldh [rP1], a                                  ; $4B8E: $E0 $00
    rlca                                          ; $4B90: $07
    nop                                           ; $4B91: $00
    ld [$1007], sp                                ; $4B92: $08 $07 $10
    rrca                                          ; $4B95: $0F
    ld de, $110F                                  ; $4B96: $11 $0F $11
    rrca                                          ; $4B99: $0F
    db $10                                        ; $4B9A: $10
    rrca                                          ; $4B9B: $0F
    ld a, [hl+]                                   ; $4B9C: $2A
    dec d                                         ; $4B9D: $15
    jr jr_00C_4BA7                                ; $4B9E: $18 $07

    add b                                         ; $4BA0: $80
    nop                                           ; $4BA1: $00
    ld b, b                                       ; $4BA2: $40
    add b                                         ; $4BA3: $80
    jr nz, jr_00C_4B66                            ; $4BA4: $20 $C0

    and b                                         ; $4BA6: $A0

jr_00C_4BA7:
    ret nz                                        ; $4BA7: $C0

    and b                                         ; $4BA8: $A0
    ret nz                                        ; $4BA9: $C0

    jr nz, jr_00C_4B6C                            ; $4BAA: $20 $C0

    ld h, b                                       ; $4BAC: $60
    add b                                         ; $4BAD: $80
    jr nz, jr_00C_4B70                            ; $4BAE: $20 $C0

    inc bc                                        ; $4BB0: $03
    nop                                           ; $4BB1: $00
    inc b                                         ; $4BB2: $04
    inc bc                                        ; $4BB3: $03
    ld [$0907], sp                                ; $4BB4: $08 $07 $09
    rlca                                          ; $4BB7: $07
    add hl, bc                                    ; $4BB8: $09
    rlca                                          ; $4BB9: $07
    jr jr_00C_4BC3                                ; $4BBA: $18 $07

    ld a, [hl+]                                   ; $4BBC: $2A
    dec d                                         ; $4BBD: $15
    jr jr_00C_4BC7                                ; $4BBE: $18 $07

    inc bc                                        ; $4BC0: $03
    nop                                           ; $4BC1: $00
    inc b                                         ; $4BC2: $04

jr_00C_4BC3:
    inc bc                                        ; $4BC3: $03
    ld [$0807], sp                                ; $4BC4: $08 $07 $08

jr_00C_4BC7:
    rlca                                          ; $4BC7: $07
    ld [$1807], sp                                ; $4BC8: $08 $07 $18
    rlca                                          ; $4BCB: $07
    jr z, jr_00C_4BE5                             ; $4BCC: $28 $17

    jr jr_00C_4BD7                                ; $4BCE: $18 $07

    inc a                                         ; $4BD0: $3C
    nop                                           ; $4BD1: $00
    ld b, d                                       ; $4BD2: $42
    inc a                                         ; $4BD3: $3C
    add c                                         ; $4BD4: $81
    ld a, [hl]                                    ; $4BD5: $7E
    add c                                         ; $4BD6: $81

jr_00C_4BD7:
    ld a, [hl]                                    ; $4BD7: $7E
    add c                                         ; $4BD8: $81
    ld a, [hl]                                    ; $4BD9: $7E
    add l                                         ; $4BDA: $85
    ld a, d                                       ; $4BDB: $7A
    adc c                                         ; $4BDC: $89
    halt                                          ; $4BDD: $76

jr_00C_4BDE:
    add l                                         ; $4BDE: $85
    ld a, d                                       ; $4BDF: $7A
    ld hl, $3E1E                                  ; $4BE0: $21 $1E $3E
    nop                                           ; $4BE3: $00
    ld e, a                                       ; $4BE4: $5F

jr_00C_4BE5:
    inc a                                         ; $4BE5: $3C
    ld a, a                                       ; $4BE6: $7F
    inc l                                         ; $4BE7: $2C
    ld e, a                                       ; $4BE8: $5F
    jr nz, jr_00C_4BDE                            ; $4BE9: $20 $F3

    ld l, h                                       ; $4BEB: $6C
    di                                            ; $4BEC: $F3
    ld l, h                                       ; $4BED: $6C
    ld a, [hl]                                    ; $4BEE: $7E
    db $10                                        ; $4BEF: $10
    inc b                                         ; $4BF0: $04
    inc bc                                        ; $4BF1: $03
    rlca                                          ; $4BF2: $07
    nop                                           ; $4BF3: $00
    dec bc                                        ; $4BF4: $0B
    rlca                                          ; $4BF5: $07
    rrca                                          ; $4BF6: $0F
    dec b                                         ; $4BF7: $05
    dec bc                                        ; $4BF8: $0B
    dec b                                         ; $4BF9: $05
    dec bc                                        ; $4BFA: $0B
    inc b                                         ; $4BFB: $04
    ld e, $0D                                     ; $4BFC: $1E $0D
    rra                                           ; $4BFE: $1F
    inc c                                         ; $4BFF: $0C
    inc b                                         ; $4C00: $04
    inc bc                                        ; $4C01: $03
    rlca                                          ; $4C02: $07
    nop                                           ; $4C03: $00
    dec bc                                        ; $4C04: $0B
    rlca                                          ; $4C05: $07
    rrca                                          ; $4C06: $0F
    dec b                                         ; $4C07: $05
    dec bc                                        ; $4C08: $0B
    dec b                                         ; $4C09: $05
    dec bc                                        ; $4C0A: $0B
    inc b                                         ; $4C0B: $04
    ld e, $0D                                     ; $4C0C: $1E $0D
    rra                                           ; $4C0E: $1F
    inc c                                         ; $4C0F: $0C
    ld b, d                                       ; $4C10: $42
    inc a                                         ; $4C11: $3C
    inc a                                         ; $4C12: $3C
    nop                                           ; $4C13: $00

jr_00C_4C14:
    halt                                          ; $4C14: $76
    jr z, @+$80                                   ; $4C15: $28 $7E

    jr z, jr_00C_4C2F                             ; $4C17: $28 $16

    jr z, jr_00C_4C39                             ; $4C19: $28 $1E

    inc l                                         ; $4C1B: $2C
    ld a, $0C                                     ; $4C1C: $3E $0C
    ld a, h                                       ; $4C1E: $7C
    nop                                           ; $4C1F: $00

jr_00C_4C20:
    jr jr_00C_4C29                                ; $4C20: $18 $07

    inc b                                         ; $4C22: $04
    inc bc                                        ; $4C23: $03
    rlca                                          ; $4C24: $07
    nop                                           ; $4C25: $00
    dec bc                                        ; $4C26: $0B
    rlca                                          ; $4C27: $07
    rrca                                          ; $4C28: $0F

jr_00C_4C29:
    dec b                                         ; $4C29: $05
    rrca                                          ; $4C2A: $0F
    inc b                                         ; $4C2B: $04
    ld a, [bc]                                    ; $4C2C: $0A
    dec b                                         ; $4C2D: $05
    rrca                                          ; $4C2E: $0F

jr_00C_4C2F:
    ld b, $18                                     ; $4C2F: $06 $18
    ldh [rNR41], a                                ; $4C31: $E0 $20
    ret nz                                        ; $4C33: $C0

    ldh [rP1], a                                  ; $4C34: $E0 $00
    ret nc                                        ; $4C36: $D0

    ldh [$F0], a                                  ; $4C37: $E0 $F0

jr_00C_4C39:
    and b                                         ; $4C39: $A0
    ret nc                                        ; $4C3A: $D0

    jr nz, jr_00C_4CAD                            ; $4C3B: $20 $70

    and b                                         ; $4C3D: $A0
    ld [hl], b                                    ; $4C3E: $70
    and b                                         ; $4C3F: $A0
    jr jr_00C_4C49                                ; $4C40: $18 $07

    inc b                                         ; $4C42: $04
    inc bc                                        ; $4C43: $03
    rlca                                          ; $4C44: $07
    nop                                           ; $4C45: $00
    dec bc                                        ; $4C46: $0B
    rlca                                          ; $4C47: $07
    rrca                                          ; $4C48: $0F

jr_00C_4C49:
    dec b                                         ; $4C49: $05
    dec bc                                        ; $4C4A: $0B
    dec b                                         ; $4C4B: $05
    rrca                                          ; $4C4C: $0F
    dec b                                         ; $4C4D: $05
    ld c, $05                                     ; $4C4E: $0E $05
    jr @-$1E                                      ; $4C50: $18 $E0

    jr nz, jr_00C_4C14                            ; $4C52: $20 $C0

    ldh [rP1], a                                  ; $4C54: $E0 $00
    ret nc                                        ; $4C56: $D0

    ldh [$F0], a                                  ; $4C57: $E0 $F0
    ldh [$F0], a                                  ; $4C59: $E0 $F0
    ret nz                                        ; $4C5B: $C0

    ldh a, [$C0]                                  ; $4C5C: $F0 $C0
    jr nc, jr_00C_4C20                            ; $4C5E: $30 $C0

    rrca                                          ; $4C60: $0F
    inc bc                                        ; $4C61: $03
    rlca                                          ; $4C62: $07
    inc bc                                        ; $4C63: $03
    rlca                                          ; $4C64: $07
    inc bc                                        ; $4C65: $03
    rlca                                          ; $4C66: $07
    inc bc                                        ; $4C67: $03
    rrca                                          ; $4C68: $0F
    inc b                                         ; $4C69: $04
    rrca                                          ; $4C6A: $0F
    ld bc, $0F1F                                  ; $4C6B: $01 $1F $0F
    rrca                                          ; $4C6E: $0F
    nop                                           ; $4C6F: $00
    ret nz                                        ; $4C70: $C0

    add b                                         ; $4C71: $80
    ret nz                                        ; $4C72: $C0

    add b                                         ; $4C73: $80
    ret nz                                        ; $4C74: $C0

    add b                                         ; $4C75: $80
    ldh a, [$80]                                  ; $4C76: $F0 $80
    ld hl, sp+$30                                 ; $4C78: $F8 $30
    ld hl, sp-$50                                 ; $4C7A: $F8 $B0
    ldh a, [$80]                                  ; $4C7C: $F0 $80
    ret nz                                        ; $4C7E: $C0

    nop                                           ; $4C7F: $00
    ldh a, [$C0]                                  ; $4C80: $F0 $C0
    ldh [$C0], a                                  ; $4C82: $E0 $C0
    ldh [$C0], a                                  ; $4C84: $E0 $C0
    ldh a, [$C0]                                  ; $4C86: $F0 $C0
    ld hl, sp+$30                                 ; $4C88: $F8 $30
    db $FC                                        ; $4C8A: $FC
    ld a, b                                       ; $4C8B: $78
    db $FC                                        ; $4C8C: $FC
    jr c, @-$06                                   ; $4C8D: $38 $F8

    nop                                           ; $4C8F: $00
    ldh a, [$C0]                                  ; $4C90: $F0 $C0
    ldh [$C0], a                                  ; $4C92: $E0 $C0
    ldh [$C0], a                                  ; $4C94: $E0 $C0
    ldh [$C0], a                                  ; $4C96: $E0 $C0
    ld hl, sp-$40                                 ; $4C98: $F8 $C0
    db $FC                                        ; $4C9A: $FC
    jr @-$02                                      ; $4C9B: $18 $FC

    ld [hl], b                                    ; $4C9D: $70
    ld hl, sp+$00                                 ; $4C9E: $F8 $00
    ld hl, sp+$60                                 ; $4CA0: $F8 $60
    ld hl, sp+$70                                 ; $4CA2: $F8 $70

jr_00C_4CA4:
    ld hl, sp+$70                                 ; $4CA4: $F8 $70
    ld hl, sp+$70                                 ; $4CA6: $F8 $70
    cp $10                                        ; $4CA8: $FE $10
    rst $38                                       ; $4CAA: $FF
    ld b, [hl]                                    ; $4CAB: $46
    rst $38                                       ; $4CAC: $FF

jr_00C_4CAD:
    inc e                                         ; $4CAD: $1C
    ld a, $00                                     ; $4CAE: $3E $00
    cp $60                                        ; $4CB0: $FE $60
    ld a, [hl]                                    ; $4CB2: $7E
    jr jr_00C_4D33                                ; $4CB3: $18 $7E

    jr c, @+$80                                   ; $4CB5: $38 $7E

    jr c, jr_00C_4D38                             ; $4CB7: $38 $7F

    ld h, $7F                                     ; $4CB9: $26 $7F
    ld c, $7E                                     ; $4CBB: $0E $7E
    inc l                                         ; $4CBD: $2C
    ld a, $00                                     ; $4CBE: $3E $00
    ld a, [hl]                                    ; $4CC0: $7E
    nop                                           ; $4CC1: $00
    ld a, [hl]                                    ; $4CC2: $7E
    jr @+$7E                                      ; $4CC3: $18 $7C

    jr c, jr_00C_4D43                             ; $4CC5: $38 $7C

    jr nz, jr_00C_4D05                            ; $4CC7: $20 $3C

    jr jr_00C_4D09                                ; $4CC9: $18 $3E

    inc e                                         ; $4CCB: $1C
    ld a, [hl]                                    ; $4CCC: $7E
    inc l                                         ; $4CCD: $2C
    ld a, [hl]                                    ; $4CCE: $7E
    nop                                           ; $4CCF: $00
    rlca                                          ; $4CD0: $07
    nop                                           ; $4CD1: $00
    ld [$1007], sp                                ; $4CD2: $08 $07 $10
    rrca                                          ; $4CD5: $0F
    db $10                                        ; $4CD6: $10
    rrca                                          ; $4CD7: $0F
    db $10                                        ; $4CD8: $10
    rrca                                          ; $4CD9: $0F
    ld [de], a                                    ; $4CDA: $12
    dec c                                         ; $4CDB: $0D
    inc d                                         ; $4CDC: $14
    dec bc                                        ; $4CDD: $0B
    ld a, [bc]                                    ; $4CDE: $0A
    dec b                                         ; $4CDF: $05
    ret nz                                        ; $4CE0: $C0

    nop                                           ; $4CE1: $00
    jr nz, jr_00C_4CA4                            ; $4CE2: $20 $C0

    db $10                                        ; $4CE4: $10
    ldh [$30], a                                  ; $4CE5: $E0 $30
    ldh [$30], a                                  ; $4CE7: $E0 $30
    ldh [rNR10], a                                ; $4CE9: $E0 $10
    ldh [$50], a                                  ; $4CEB: $E0 $50
    and b                                         ; $4CED: $A0
    db $10                                        ; $4CEE: $10
    ldh [$A1], a                                  ; $4CEF: $E0 $A1
    ld e, [hl]                                    ; $4CF1: $5E
    ld d, c                                       ; $4CF2: $51
    ld l, $3E                                     ; $4CF3: $2E $3E
    nop                                           ; $4CF5: $00
    jr c, @+$12                                   ; $4CF6: $38 $10

    halt                                          ; $4CF8: $76
    ld [$46FF], sp                                ; $4CF9: $08 $FF $46
    rst $28                                       ; $4CFC: $EF
    ld d, [hl]                                    ; $4CFD: $56
    ld a, [hl]                                    ; $4CFE: $7E
    nop                                           ; $4CFF: $00
    and d                                         ; $4D00: $A2
    ld e, h                                       ; $4D01: $5C
    ld a, h                                       ; $4D02: $7C
    nop                                           ; $4D03: $00
    ld d, b                                       ; $4D04: $50

jr_00C_4D05:
    jr nz, jr_00C_4D7F                            ; $4D05: $20 $78

    jr nz, jr_00C_4D61                            ; $4D07: $20 $58

jr_00C_4D09:
    jr nz, jr_00C_4D7B                            ; $4D09: $20 $70

    ld h, b                                       ; $4D0B: $60
    ldh a, [$60]                                  ; $4D0C: $F0 $60
    ldh a, [rP1]                                  ; $4D0E: $F0 $00
    and c                                         ; $4D10: $A1
    ld e, [hl]                                    ; $4D11: $5E
    ld d, c                                       ; $4D12: $51
    ld l, $3E                                     ; $4D13: $2E $3E
    nop                                           ; $4D15: $00
    jr c, jr_00C_4D28                             ; $4D16: $38 $10

    ld e, h                                       ; $4D18: $5C
    jr nz, @-$02                                  ; $4D19: $20 $FC

    ld h, b                                       ; $4D1B: $60
    cp $64                                        ; $4D1C: $FE $64
    ld a, h                                       ; $4D1E: $7C
    nop                                           ; $4D1F: $00
    rlca                                          ; $4D20: $07
    inc bc                                        ; $4D21: $03
    inc bc                                        ; $4D22: $03
    ld bc, $030F                                  ; $4D23: $01 $0F $03
    ccf                                           ; $4D26: $3F
    rrca                                          ; $4D27: $0F

jr_00C_4D28:
    ld a, a                                       ; $4D28: $7F
    jr nz, jr_00C_4DAA                            ; $4D29: $20 $7F

    ld [hl], $7F                                  ; $4D2B: $36 $7F
    ld e, $7F                                     ; $4D2D: $1E $7F
    nop                                           ; $4D2F: $00
    add b                                         ; $4D30: $80
    nop                                           ; $4D31: $00
    add b                                         ; $4D32: $80

jr_00C_4D33:
    nop                                           ; $4D33: $00
    ldh a, [$80]                                  ; $4D34: $F0 $80
    ld hl, sp-$50                                 ; $4D36: $F8 $B0

jr_00C_4D38:
    ld hl, sp+$70                                 ; $4D38: $F8 $70
    ldh a, [$E0]                                  ; $4D3A: $F0 $E0
    ldh a, [$C0]                                  ; $4D3C: $F0 $C0
    ldh [rP1], a                                  ; $4D3E: $E0 $00
    ldh a, [$60]                                  ; $4D40: $F0 $60
    ld [hl], b                                    ; $4D42: $70

jr_00C_4D43:
    jr nz, @-$0E                                  ; $4D43: $20 $F0

    ld h, b                                       ; $4D45: $60
    ldh a, [$60]                                  ; $4D46: $F0 $60
    ld hl, sp+$00                                 ; $4D48: $F8 $00
    db $FC                                        ; $4D4A: $FC
    ld a, b                                       ; $4D4B: $78
    cp $7C                                        ; $4D4C: $FE $7C
    cp $00                                        ; $4D4E: $FE $00
    rlca                                          ; $4D50: $07
    inc bc                                        ; $4D51: $03
    inc bc                                        ; $4D52: $03
    ld bc, $0307                                  ; $4D53: $01 $07 $03
    rrca                                          ; $4D56: $0F
    rlca                                          ; $4D57: $07
    rra                                           ; $4D58: $1F
    nop                                           ; $4D59: $00
    ccf                                           ; $4D5A: $3F
    rla                                           ; $4D5B: $17
    ccf                                           ; $4D5C: $3F
    rrca                                          ; $4D5D: $0F
    rra                                           ; $4D5E: $1F
    nop                                           ; $4D5F: $00
    add b                                         ; $4D60: $80

jr_00C_4D61:
    nop                                           ; $4D61: $00
    ret nz                                        ; $4D62: $C0

jr_00C_4D63:
    add b                                         ; $4D63: $80
    ld hl, sp-$40                                 ; $4D64: $F8 $C0
    db $FC                                        ; $4D66: $FC
    ret c                                         ; $4D67: $D8

    db $FC                                        ; $4D68: $FC
    jr c, jr_00C_4D63                             ; $4D69: $38 $F8

    ld [hl], b                                    ; $4D6B: $70
    ld hl, sp+$60                                 ; $4D6C: $F8 $60
    ldh [rP1], a                                  ; $4D6E: $E0 $00
    ld e, $00                                     ; $4D70: $1E $00
    ccf                                           ; $4D72: $3F
    ld e, $1F                                     ; $4D73: $1E $1F
    rrca                                          ; $4D75: $0F
    ccf                                           ; $4D76: $3F
    rra                                           ; $4D77: $1F
    ccf                                           ; $4D78: $3F
    rra                                           ; $4D79: $1F
    ccf                                           ; $4D7A: $3F

jr_00C_4D7B:
    rra                                           ; $4D7B: $1F
    rra                                           ; $4D7C: $1F
    rrca                                          ; $4D7D: $0F
    ccf                                           ; $4D7E: $3F

jr_00C_4D7F:
    rlca                                          ; $4D7F: $07
    nop                                           ; $4D80: $00
    nop                                           ; $4D81: $00
    add b                                         ; $4D82: $80
    nop                                           ; $4D83: $00
    ldh a, [$80]                                  ; $4D84: $F0 $80
    ld hl, sp-$10                                 ; $4D86: $F8 $F0
    db $FC                                        ; $4D88: $FC
    ld hl, sp-$02                                 ; $4D89: $F8 $FE
    db $FC                                        ; $4D8B: $FC
    cp $FC                                        ; $4D8C: $FE $FC
    cp $B4                                        ; $4D8E: $FE $B4
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
    dec e                                         ; $4D9F: $1D
    add b                                         ; $4DA0: $80
    nop                                           ; $4DA1: $00
    ret nz                                        ; $4DA2: $C0

    add b                                         ; $4DA3: $80
    ldh [$80], a                                  ; $4DA4: $E0 $80
    ldh a, [$E0]                                  ; $4DA6: $F0 $E0
    ld hl, sp-$10                                 ; $4DA8: $F8 $F0

jr_00C_4DAA:
    ld hl, sp-$10                                 ; $4DAA: $F8 $F0
    db $FC                                        ; $4DAC: $FC
    ld hl, sp-$04                                 ; $4DAD: $F8 $FC
    cp b                                          ; $4DAF: $B8
    ld bc, $0300                                  ; $4DB0: $01 $00 $03
    ld bc, $0107                                  ; $4DB3: $01 $07 $01
    rrca                                          ; $4DB6: $0F
    inc b                                         ; $4DB7: $04
    rra                                           ; $4DB8: $1F
    rrca                                          ; $4DB9: $0F
    rra                                           ; $4DBA: $1F
    rrca                                          ; $4DBB: $0F
    ccf                                           ; $4DBC: $3F
    rra                                           ; $4DBD: $1F
    ccf                                           ; $4DBE: $3F
    rra                                           ; $4DBF: $1F
    add b                                         ; $4DC0: $80
    nop                                           ; $4DC1: $00
    ret nz                                        ; $4DC2: $C0

    add b                                         ; $4DC3: $80
    ldh [$80], a                                  ; $4DC4: $E0 $80
    ldh a, [$E0]                                  ; $4DC6: $F0 $E0
    ld hl, sp-$10                                 ; $4DC8: $F8 $F0
    ld hl, sp-$10                                 ; $4DCA: $F8 $F0
    db $FC                                        ; $4DCC: $FC
    ld hl, sp-$04                                 ; $4DCD: $F8 $FC
    ld hl, sp+$7F                                 ; $4DCF: $F8 $7F
    nop                                           ; $4DD1: $00
    rst $38                                       ; $4DD2: $FF
    ld a, a                                       ; $4DD3: $7F
    ld a, a                                       ; $4DD4: $7F
    ccf                                           ; $4DD5: $3F
    ccf                                           ; $4DD6: $3F
    dec de                                        ; $4DD7: $1B
    ccf                                           ; $4DD8: $3F
    rlca                                          ; $4DD9: $07
    ccf                                           ; $4DDA: $3F
    rra                                           ; $4DDB: $1F
    rra                                           ; $4DDC: $1F
    rrca                                          ; $4DDD: $0F
    ccf                                           ; $4DDE: $3F
    rrca                                          ; $4DDF: $0F
    nop                                           ; $4DE0: $00
    nop                                           ; $4DE1: $00
    ld hl, sp+$00                                 ; $4DE2: $F8 $00
    db $FC                                        ; $4DE4: $FC
    ld hl, sp-$02                                 ; $4DE5: $F8 $FE
    db $FC                                        ; $4DE7: $FC
    cp $FC                                        ; $4DE8: $FE $FC
    db $FC                                        ; $4DEA: $FC
    ld hl, sp-$08                                 ; $4DEB: $F8 $F8
    ldh a, [$F0]                                  ; $4DED: $F0 $F0
    nop                                           ; $4DEF: $00
    ld a, a                                       ; $4DF0: $7F
    dec sp                                        ; $4DF1: $3B
    rst $38                                       ; $4DF2: $FF
    ld a, l                                       ; $4DF3: $7D
    ld a, a                                       ; $4DF4: $7F
    ld e, $5E                                     ; $4DF5: $1E $5E
    ld hl, $337C                                  ; $4DF7: $21 $7C $33
    ld a, h                                       ; $4DFA: $7C
    dec sp                                        ; $4DFB: $3B
    ccf                                           ; $4DFC: $3F
    jr jr_00C_4E1E                                ; $4DFD: $18 $1F

    inc bc                                        ; $4DFF: $03
    cp $B4                                        ; $4E00: $FE $B4
    db $FC                                        ; $4E02: $FC
    ld hl, sp-$02                                 ; $4E03: $F8 $FE
    inc b                                         ; $4E05: $04
    inc e                                         ; $4E06: $1C

jr_00C_4E07:
    ldh [$38], a                                  ; $4E07: $E0 $38
    ret nc                                        ; $4E09: $D0

    inc a                                         ; $4E0A: $3C
    ret c                                         ; $4E0B: $D8

    db $FC                                        ; $4E0C: $FC
    jr jr_00C_4E07                                ; $4E0D: $18 $F8

    ret nz                                        ; $4E0F: $C0

    cp $B4                                        ; $4E10: $FE $B4
    rst $38                                       ; $4E12: $FF
    xor $FF                                       ; $4E13: $EE $FF
    ld c, $1E                                     ; $4E15: $0E $1E
    ldh [rNR34], a                                ; $4E17: $E0 $1E
    db $E4                                        ; $4E19: $E4
    ld a, $CC                                     ; $4E1A: $3E $CC
    cp $0C                                        ; $4E1C: $FE $0C

jr_00C_4E1E:
    db $FC                                        ; $4E1E: $FC
    ldh [$FE], a                                  ; $4E1F: $E0 $FE
    db $F4                                        ; $4E21: $F4
    rst $38                                       ; $4E22: $FF
    xor $FF                                       ; $4E23: $EE $FF
    ld c, $1E                                     ; $4E25: $0E $1E
    ldh [rIF], a                                  ; $4E27: $E0 $0F
    ld a, [c]                                     ; $4E29: $F2
    rra                                           ; $4E2A: $1F
    and $FF                                       ; $4E2B: $E6 $FF
    ld b, $F6                                     ; $4E2D: $06 $F6
    ldh [$7F], a                                  ; $4E2F: $E0 $7F
    ld [hl], $37                                  ; $4E31: $36 $37
    ld [$0F10], sp                                ; $4E33: $08 $10 $0F
    db $10                                        ; $4E36: $10
    rrca                                          ; $4E37: $0F
    ld [$0807], sp                                ; $4E38: $08 $07 $08
    rlca                                          ; $4E3B: $07

jr_00C_4E3C:
    rlca                                          ; $4E3C: $07
    nop                                           ; $4E3D: $00
    rlca                                          ; $4E3E: $07

jr_00C_4E3F:
    inc bc                                        ; $4E3F: $03
    ldh a, [$E0]                                  ; $4E40: $F0 $E0
    ld hl, sp-$10                                 ; $4E42: $F8 $F0
    ld hl, sp+$70                                 ; $4E44: $F8 $70
    ld [hl], b                                    ; $4E46: $70
    add b                                         ; $4E47: $80
    ld [hl], b                                    ; $4E48: $70
    and b                                         ; $4E49: $A0
    ld a, b                                       ; $4E4A: $78
    or b                                          ; $4E4B: $B0
    ld hl, sp+$30                                 ; $4E4C: $F8 $30
    ldh a, [$80]                                  ; $4E4E: $F0 $80
    ccf                                           ; $4E50: $3F
    dec e                                         ; $4E51: $1D
    ld a, a                                       ; $4E52: $7F
    dec l                                         ; $4E53: $2D
    rst $38                                       ; $4E54: $FF
    ld [hl], a                                    ; $4E55: $77
    rst $38                                       ; $4E56: $FF
    ld [hl], b                                    ; $4E57: $70
    ld a, h                                       ; $4E58: $7C
    inc bc                                        ; $4E59: $03
    inc e                                         ; $4E5A: $1C
    dec bc                                        ; $4E5B: $0B
    ld e, $0D                                     ; $4E5C: $1E $0D
    rra                                           ; $4E5E: $1F
    ld c, $FC                                     ; $4E5F: $0E $FC
    cp b                                          ; $4E61: $B8
    cp $B4                                        ; $4E62: $FE $B4
    rst $38                                       ; $4E64: $FF
    xor $FF                                       ; $4E65: $EE $FF
    ld c, $3E                                     ; $4E67: $0E $3E
    ret nz                                        ; $4E69: $C0

    jr c, jr_00C_4E3C                             ; $4E6A: $38 $D0

    inc a                                         ; $4E6C: $3C
    ret c                                         ; $4E6D: $D8

    db $FC                                        ; $4E6E: $FC
    jr jr_00C_4EB0                                ; $4E6F: $18 $3F

    rra                                           ; $4E71: $1F
    ld a, a                                       ; $4E72: $7F
    cpl                                           ; $4E73: $2F
    rst $38                                       ; $4E74: $FF
    ld [hl], a                                    ; $4E75: $77
    rst $38                                       ; $4E76: $FF
    ld [hl], b                                    ; $4E77: $70
    ld a, b                                       ; $4E78: $78
    rlca                                          ; $4E79: $07
    ld [hl], b                                    ; $4E7A: $70
    cpl                                           ; $4E7B: $2F
    ld a, a                                       ; $4E7C: $7F
    jr nz, @+$41                                  ; $4E7D: $20 $3F

    rlca                                          ; $4E7F: $07
    db $FC                                        ; $4E80: $FC
    ld hl, sp-$02                                 ; $4E81: $F8 $FE
    db $F4                                        ; $4E83: $F4
    rst $38                                       ; $4E84: $FF
    xor $FF                                       ; $4E85: $EE $FF
    ld c, $1E                                     ; $4E87: $0E $1E
    ldh [$0E], a                                  ; $4E89: $E0 $0E
    db $F4                                        ; $4E8B: $F4
    cp $0C                                        ; $4E8C: $FE $0C
    db $FC                                        ; $4E8E: $FC
    add sp, $0F                                   ; $4E8F: $E8 $0F
    nop                                           ; $4E91: $00
    rrca                                          ; $4E92: $0F
    nop                                           ; $4E93: $00
    rra                                           ; $4E94: $1F
    nop                                           ; $4E95: $00
    rra                                           ; $4E96: $1F
    nop                                           ; $4E97: $00
    ccf                                           ; $4E98: $3F
    nop                                           ; $4E99: $00
    add hl, sp                                    ; $4E9A: $39
    ld b, $21                                     ; $4E9B: $06 $21
    ld e, $1F                                     ; $4E9D: $1E $1F
    nop                                           ; $4E9F: $00
    ldh [rP1], a                                  ; $4EA0: $E0 $00
    ldh [rP1], a                                  ; $4EA2: $E0 $00
    ldh a, [rP1]                                  ; $4EA4: $F0 $00
    ldh a, [rP1]                                  ; $4EA6: $F0 $00
    ret z                                         ; $4EA8: $C8

    jr nc, @+$0A                                  ; $4EA9: $30 $08

    ldh a, [$F0]                                  ; $4EAB: $F0 $F0
    nop                                           ; $4EAD: $00
    nop                                           ; $4EAE: $00
    nop                                           ; $4EAF: $00

jr_00C_4EB0:
    ld hl, sp+$00                                 ; $4EB0: $F8 $00
    ldh a, [rP1]                                  ; $4EB2: $F0 $00
    ld hl, sp+$00                                 ; $4EB4: $F8 $00
    ld hl, sp+$00                                 ; $4EB6: $F8 $00
    ret z                                         ; $4EB8: $C8

    jr nc, jr_00C_4E3F                            ; $4EB9: $30 $84

    ld a, b                                       ; $4EBB: $78
    call nz, $F838                                ; $4EBC: $C4 $38 $F8
    nop                                           ; $4EBF: $00
    ldh a, [rP1]                                  ; $4EC0: $F0 $00
    ldh a, [rP1]                                  ; $4EC2: $F0 $00
    ldh a, [rP1]                                  ; $4EC4: $F0 $00
    ld hl, sp+$00                                 ; $4EC6: $F8 $00
    ld hl, sp+$00                                 ; $4EC8: $F8 $00
    db $F4                                        ; $4ECA: $F4
    ld [$708C], sp                                ; $4ECB: $08 $8C $70
    ld hl, sp+$00                                 ; $4ECE: $F8 $00
    rlca                                          ; $4ED0: $07
    nop                                           ; $4ED1: $00
    rlca                                          ; $4ED2: $07
    nop                                           ; $4ED3: $00
    rrca                                          ; $4ED4: $0F
    nop                                           ; $4ED5: $00
    rrca                                          ; $4ED6: $0F
    nop                                           ; $4ED7: $00
    rrca                                          ; $4ED8: $0F
    nop                                           ; $4ED9: $00
    add hl, bc                                    ; $4EDA: $09
    ld b, $0F                                     ; $4EDB: $06 $0F
    nop                                           ; $4EDD: $00

jr_00C_4EDE:
    nop                                           ; $4EDE: $00
    nop                                           ; $4EDF: $00
    ldh a, [rP1]                                  ; $4EE0: $F0 $00
    ldh a, [rP1]                                  ; $4EE2: $F0 $00
    ld hl, sp+$00                                 ; $4EE4: $F8 $00
    ld hl, sp+$00                                 ; $4EE6: $F8 $00
    ld hl, sp+$00                                 ; $4EE8: $F8 $00
    db $F4                                        ; $4EEA: $F4
    ld [$708C], sp                                ; $4EEB: $08 $8C $70
    ld hl, sp+$00                                 ; $4EEE: $F8 $00
    rst $38                                       ; $4EF0: $FF
    nop                                           ; $4EF1: $00
    ld a, a                                       ; $4EF2: $7F
    nop                                           ; $4EF3: $00
    rst $38                                       ; $4EF4: $FF
    nop                                           ; $4EF5: $00
    rst $38                                       ; $4EF6: $FF
    nop                                           ; $4EF7: $00
    ld sp, hl                                     ; $4EF8: $F9
    ld b, $71                                     ; $4EF9: $06 $71
    ld c, $52                                     ; $4EFB: $0E $52
    inc l                                         ; $4EFD: $2C
    ld a, $00                                     ; $4EFE: $3E $00
    rra                                           ; $4F00: $1F
    nop                                           ; $4F01: $00
    rrca                                          ; $4F02: $0F
    nop                                           ; $4F03: $00
    rra                                           ; $4F04: $1F
    nop                                           ; $4F05: $00
    rra                                           ; $4F06: $1F
    nop                                           ; $4F07: $00
    rra                                           ; $4F08: $1F
    nop                                           ; $4F09: $00
    rrca                                          ; $4F0A: $0F
    nop                                           ; $4F0B: $00
    add hl, bc                                    ; $4F0C: $09
    ld b, $0F                                     ; $4F0D: $06 $0F
    nop                                           ; $4F0F: $00
    ld hl, sp+$00                                 ; $4F10: $F8 $00
    ldh a, [rP1]                                  ; $4F12: $F0 $00
    ldh a, [rP1]                                  ; $4F14: $F0 $00
    ldh a, [rP1]                                  ; $4F16: $F0 $00
    ldh [rP1], a                                  ; $4F18: $E0 $00
    jr nz, @-$3E                                  ; $4F1A: $20 $C0

    jr nz, jr_00C_4EDE                            ; $4F1C: $20 $C0

    ldh [rP1], a                                  ; $4F1E: $E0 $00
    jr c, jr_00C_4F22                             ; $4F20: $38 $00

jr_00C_4F22:
    ld a, a                                       ; $4F22: $7F
    jr c, jr_00C_4FA4                             ; $4F23: $38 $7F

    ccf                                           ; $4F25: $3F
    ccf                                           ; $4F26: $3F
    rra                                           ; $4F27: $1F
    ccf                                           ; $4F28: $3F
    rra                                           ; $4F29: $1F
    ccf                                           ; $4F2A: $3F
    rra                                           ; $4F2B: $1F
    rra                                           ; $4F2C: $1F
    rrca                                          ; $4F2D: $0F
    rrca                                          ; $4F2E: $0F
    rlca                                          ; $4F2F: $07
    nop                                           ; $4F30: $00
    nop                                           ; $4F31: $00
    ldh a, [rP1]                                  ; $4F32: $F0 $00
    ld hl, sp-$10                                 ; $4F34: $F8 $F0
    db $FC                                        ; $4F36: $FC
    ld hl, sp-$04                                 ; $4F37: $F8 $FC
    ld hl, sp-$08                                 ; $4F39: $F8 $F8
    ldh a, [$F0]                                  ; $4F3B: $F0 $F0
    ldh [$E0], a                                  ; $4F3D: $E0 $E0
    ret nz                                        ; $4F3F: $C0

    rrca                                          ; $4F40: $0F
    rlca                                          ; $4F41: $07
    rlca                                          ; $4F42: $07
    nop                                           ; $4F43: $00
    rrca                                          ; $4F44: $0F
    inc bc                                        ; $4F45: $03
    rrca                                          ; $4F46: $0F
    ld [bc], a                                    ; $4F47: $02
    dec bc                                        ; $4F48: $0B
    dec b                                         ; $4F49: $05
    add hl, bc                                    ; $4F4A: $09
    ld b, $0F                                     ; $4F4B: $06 $0F
    nop                                           ; $4F4D: $00
    rrca                                          ; $4F4E: $0F
    rlca                                          ; $4F4F: $07
    ldh [$C0], a                                  ; $4F50: $E0 $C0
    ret nz                                        ; $4F52: $C0

    nop                                           ; $4F53: $00
    ret nz                                        ; $4F54: $C0

    add b                                         ; $4F55: $80
    ret nz                                        ; $4F56: $C0

    nop                                           ; $4F57: $00
    ret nz                                        ; $4F58: $C0

    nop                                           ; $4F59: $00
    ldh [$C0], a                                  ; $4F5A: $E0 $C0
    ldh a, [$E0]                                  ; $4F5C: $F0 $E0
    ldh a, [$60]                                  ; $4F5E: $F0 $60
    ld a, h                                       ; $4F60: $7C
    jr c, @-$02                                   ; $4F61: $38 $FC

    nop                                           ; $4F63: $00
    db $F4                                        ; $4F64: $F4

jr_00C_4F65:
    ld l, b                                       ; $4F65: $68
    ld a, [$F254]                                 ; $4F66: $FA $54 $F2
    inc l                                         ; $4F69: $2C
    ld a, [$FE34]                                 ; $4F6A: $FA $34 $FE

jr_00C_4F6D:
    jr c, jr_00C_4F6D                             ; $4F6D: $38 $FE

    ld e, b                                       ; $4F6F: $58
    rrca                                          ; $4F70: $0F
    rlca                                          ; $4F71: $07
    rlca                                          ; $4F72: $07

jr_00C_4F73:
    nop                                           ; $4F73: $00
    rrca                                          ; $4F74: $0F
    rlca                                          ; $4F75: $07
    rla                                           ; $4F76: $17
    add hl, bc                                    ; $4F77: $09
    rra                                           ; $4F78: $1F
    ld [bc], a                                    ; $4F79: $02
    ld e, $0D                                     ; $4F7A: $1E $0D
    ccf                                           ; $4F7C: $3F
    inc e                                         ; $4F7D: $1C
    ccf                                           ; $4F7E: $3F
    dec de                                        ; $4F7F: $1B
    ldh [$C0], a                                  ; $4F80: $E0 $C0
    ret nz                                        ; $4F82: $C0

    add b                                         ; $4F83: $80
    ret nz                                        ; $4F84: $C0

    nop                                           ; $4F85: $00
    ret nz                                        ; $4F86: $C0

    nop                                           ; $4F87: $00
    ld b, b                                       ; $4F88: $40
    add b                                         ; $4F89: $80
    ld h, b                                       ; $4F8A: $60
    add b                                         ; $4F8B: $80
    ldh a, [rNR41]                                ; $4F8C: $F0 $20
    ldh a, [$A0]                                  ; $4F8E: $F0 $A0
    rrca                                          ; $4F90: $0F
    nop                                           ; $4F91: $00
    rrca                                          ; $4F92: $0F
    nop                                           ; $4F93: $00
    rra                                           ; $4F94: $1F
    nop                                           ; $4F95: $00
    ccf                                           ; $4F96: $3F
    nop                                           ; $4F97: $00
    ld e, a                                       ; $4F98: $5F
    jr nz, @+$4F                                  ; $4F99: $20 $4D

    ld [hl-], a                                   ; $4F9B: $32
    ld h, c                                       ; $4F9C: $61
    ld e, $7F                                     ; $4F9D: $1E $7F
    nop                                           ; $4F9F: $00
    ldh [rP1], a                                  ; $4FA0: $E0 $00
    ldh [rP1], a                                  ; $4FA2: $E0 $00

jr_00C_4FA4:
    ld hl, sp+$00                                 ; $4FA4: $F8 $00
    db $E4                                        ; $4FA6: $E4
    jr jr_00C_4F6D                                ; $4FA7: $18 $C4

    jr c, jr_00C_4F73                             ; $4FA9: $38 $C8

    jr nc, jr_00C_4F65                            ; $4FAB: $30 $B8

jr_00C_4FAD:
    ld b, b                                       ; $4FAD: $40
    ldh [rP1], a                                  ; $4FAE: $E0 $00
    rlca                                          ; $4FB0: $07
    nop                                           ; $4FB1: $00
    rrca                                          ; $4FB2: $0F

jr_00C_4FB3:
    nop                                           ; $4FB3: $00
    rra                                           ; $4FB4: $1F
    nop                                           ; $4FB5: $00
    rra                                           ; $4FB6: $1F
    nop                                           ; $4FB7: $00
    ccf                                           ; $4FB8: $3F
    nop                                           ; $4FB9: $00
    jr c, @+$09                                   ; $4FBA: $38 $07

    jr nc, jr_00C_4FCD                            ; $4FBC: $30 $0F

    rra                                           ; $4FBE: $1F
    nop                                           ; $4FBF: $00
    ldh [rP1], a                                  ; $4FC0: $E0 $00
    ldh [rP1], a                                  ; $4FC2: $E0 $00
    ldh [rP1], a                                  ; $4FC4: $E0 $00
    ldh [rP1], a                                  ; $4FC6: $E0 $00
    ret nc                                        ; $4FC8: $D0

    jr nz, jr_00C_501B                            ; $4FC9: $20 $50

    and b                                         ; $4FCB: $A0
    ld [hl], b                                    ; $4FCC: $70

jr_00C_4FCD:
    add b                                         ; $4FCD: $80
    ret nz                                        ; $4FCE: $C0

    nop                                           ; $4FCF: $00
    rra                                           ; $4FD0: $1F
    nop                                           ; $4FD1: $00
    rrca                                          ; $4FD2: $0F
    nop                                           ; $4FD3: $00
    rra                                           ; $4FD4: $1F
    nop                                           ; $4FD5: $00
    ccf                                           ; $4FD6: $3F
    nop                                           ; $4FD7: $00
    ld e, a                                       ; $4FD8: $5F
    jr nz, jr_00C_501E                            ; $4FD9: $20 $43

    inc a                                         ; $4FDB: $3C
    ld h, c                                       ; $4FDC: $61
    ld e, $7F                                     ; $4FDD: $1E $7F
    nop                                           ; $4FDF: $00
    ldh [rP1], a                                  ; $4FE0: $E0 $00
    ret nz                                        ; $4FE2: $C0

    nop                                           ; $4FE3: $00
    ld hl, sp+$00                                 ; $4FE4: $F8 $00
    db $E4                                        ; $4FE6: $E4
    jr jr_00C_4FAD                                ; $4FE7: $18 $C4

    jr c, jr_00C_4FB3                             ; $4FE9: $38 $C8

    jr nc, @-$46                                  ; $4FEB: $30 $B8

    ld b, b                                       ; $4FED: $40
    ldh [rP1], a                                  ; $4FEE: $E0 $00
    rlca                                          ; $4FF0: $07
    nop                                           ; $4FF1: $00
    rrca                                          ; $4FF2: $0F
    rlca                                          ; $4FF3: $07
    rra                                           ; $4FF4: $1F
    rrca                                          ; $4FF5: $0F
    ccf                                           ; $4FF6: $3F
    rra                                           ; $4FF7: $1F
    ccf                                           ; $4FF8: $3F
    inc e                                         ; $4FF9: $1C
    ld a, a                                       ; $4FFA: $7F
    jr nc, jr_00C_5071                            ; $4FFB: $30 $74

    dec hl                                        ; $4FFD: $2B
    ld a, c                                       ; $4FFE: $79
    scf                                           ; $4FFF: $37
    ldh a, [rP1]                                  ; $5000: $F0 $00
    ld hl, sp-$10                                 ; $5002: $F8 $F0
    db $FC                                        ; $5004: $FC
    ld hl, sp-$04                                 ; $5005: $F8 $FC
    ld [$00F8], sp                                ; $5007: $08 $F8 $00
    ld hl, sp+$00                                 ; $500A: $F8 $00
    db $10                                        ; $500C: $10
    ldh [$30], a                                  ; $500D: $E0 $30
    ldh [rTAC], a                                 ; $500F: $E0 $07
    nop                                           ; $5011: $00
    rrca                                          ; $5012: $0F
    rlca                                          ; $5013: $07
    rra                                           ; $5014: $1F
    rrca                                          ; $5015: $0F
    ccf                                           ; $5016: $3F
    rra                                           ; $5017: $1F
    ccf                                           ; $5018: $3F
    jr jr_00C_505A                                ; $5019: $18 $3F

jr_00C_501B:
    db $10                                        ; $501B: $10
    rra                                           ; $501C: $1F
    nop                                           ; $501D: $00

jr_00C_501E:
    jr z, jr_00C_5037                             ; $501E: $28 $17

    ret nz                                        ; $5020: $C0

    nop                                           ; $5021: $00
    ldh a, [$C0]                                  ; $5022: $F0 $C0
    ld hl, sp-$10                                 ; $5024: $F8 $F0
    db $FC                                        ; $5026: $FC

jr_00C_5027:
    ld hl, sp-$04                                 ; $5027: $F8 $FC
    jr jr_00C_5027                                ; $5029: $18 $FC

    ld [$00F8], sp                                ; $502B: $08 $F8 $00
    inc d                                         ; $502E: $14
    add sp, $06                                   ; $502F: $E8 $06
    nop                                           ; $5031: $00
    rrca                                          ; $5032: $0F
    ld b, $0F                                     ; $5033: $06 $0F
    rlca                                          ; $5035: $07
    rra                                           ; $5036: $1F

jr_00C_5037:
    dec c                                         ; $5037: $0D
    rra                                           ; $5038: $1F
    rrca                                          ; $5039: $0F
    rra                                           ; $503A: $1F
    rrca                                          ; $503B: $0F
    rrca                                          ; $503C: $0F
    rla                                           ; $503D: $17
    rra                                           ; $503E: $1F
    rlca                                          ; $503F: $07
    ldh [rP1], a                                  ; $5040: $E0 $00
    ldh a, [$E0]                                  ; $5042: $F0 $E0
    ld hl, sp-$10                                 ; $5044: $F8 $F0
    db $FC                                        ; $5046: $FC
    ld hl, sp-$04                                 ; $5047: $F8 $FC
    ld hl, sp-$08                                 ; $5049: $F8 $F8
    ldh a, [$F4]                                  ; $504B: $F0 $F4
    add sp, -$08                                  ; $504D: $E8 $F8
    ldh [$03], a                                  ; $504F: $E0 $03
    nop                                           ; $5051: $00
    rlca                                          ; $5052: $07
    inc bc                                        ; $5053: $03
    rrca                                          ; $5054: $0F
    rlca                                          ; $5055: $07
    rra                                           ; $5056: $1F
    dec c                                         ; $5057: $0D
    rra                                           ; $5058: $1F
    rrca                                          ; $5059: $0F

jr_00C_505A:
    rra                                           ; $505A: $1F
    rrca                                          ; $505B: $0F
    rra                                           ; $505C: $1F
    rrca                                          ; $505D: $0F
    rra                                           ; $505E: $1F
    rlca                                          ; $505F: $07
    ldh a, [rP1]                                  ; $5060: $F0 $00
    ld hl, sp+$70                                 ; $5062: $F8 $70
    db $FC                                        ; $5064: $FC
    ld hl, sp-$04                                 ; $5065: $F8 $FC
    ld hl, sp-$08                                 ; $5067: $F8 $F8
    ldh a, [$F8]                                  ; $5069: $F0 $F8
    ldh [$E8], a                                  ; $506B: $E0 $E8
    ret nc                                        ; $506D: $D0

    ret z                                         ; $506E: $C8

    or b                                          ; $506F: $B0
    ld a, h                                       ; $5070: $7C

jr_00C_5071:
    inc hl                                        ; $5071: $23
    inc sp                                        ; $5072: $33
    inc c                                         ; $5073: $0C
    jr nz, @+$21                                  ; $5074: $20 $1F

    ld a, b                                       ; $5076: $78
    scf                                           ; $5077: $37
    ld c, b                                       ; $5078: $48
    scf                                           ; $5079: $37
    dec a                                         ; $507A: $3D
    ld a, [de]                                    ; $507B: $1A
    ccf                                           ; $507C: $3F
    dec e                                         ; $507D: $1D
    rra                                           ; $507E: $1F
    dec c                                         ; $507F: $0D
    db $10                                        ; $5080: $10
    ldh [$E0], a                                  ; $5081: $E0 $E0
    nop                                           ; $5083: $00
    db $10                                        ; $5084: $10
    ldh [$30], a                                  ; $5085: $E0 $30
    ret nz                                        ; $5087: $C0

    jr nc, @-$3E                                  ; $5088: $30 $C0

    ld hl, sp+$00                                 ; $508A: $F8 $00
    ld hl, sp-$30                                 ; $508C: $F8 $D0
    ldh a, [$C0]                                  ; $508E: $F0 $C0
    ld e, b                                       ; $5090: $58
    ldh [$38], a                                  ; $5091: $E0 $38
    ret nc                                        ; $5093: $D0

    ld hl, sp+$00                                 ; $5094: $F8 $00
    inc c                                         ; $5096: $0C
    ld hl, sp+$14                                 ; $5097: $F8 $14
    add sp, -$04                                  ; $5099: $E8 $FC
    ld [$D8FC], sp                                ; $509B: $08 $FC $D8
    db $FC                                        ; $509E: $FC
    ret c                                         ; $509F: $D8

    ldh a, [$C0]                                  ; $50A0: $F0 $C0
    ret z                                         ; $50A2: $C8

    or b                                          ; $50A3: $B0
    add h                                         ; $50A4: $84
    ld a, b                                       ; $50A5: $78
    inc c                                         ; $50A6: $0C
    ld hl, sp+$14                                 ; $50A7: $F8 $14
    add sp, -$04                                  ; $50A9: $E8 $FC
    ld [$E8FC], sp                                ; $50AB: $08 $FC $E8
    ld hl, sp-$20                                 ; $50AE: $F8 $E0
    rrca                                          ; $50B0: $0F
    rlca                                          ; $50B1: $07
    rrca                                          ; $50B2: $0F
    rlca                                          ; $50B3: $07
    inc de                                        ; $50B4: $13
    inc c                                         ; $50B5: $0C
    db $10                                        ; $50B6: $10
    rrca                                          ; $50B7: $0F
    db $10                                        ; $50B8: $10
    rrca                                          ; $50B9: $0F
    rra                                           ; $50BA: $1F
    nop                                           ; $50BB: $00
    rrca                                          ; $50BC: $0F
    rlca                                          ; $50BD: $07
    rrca                                          ; $50BE: $0F
    rlca                                          ; $50BF: $07
    sub b                                         ; $50C0: $90
    ld h, b                                       ; $50C1: $60
    ldh [rP1], a                                  ; $50C2: $E0 $00
    jr nz, @-$3E                                  ; $50C4: $20 $C0

    jr nc, @-$1E                                  ; $50C6: $30 $E0

    ld d, b                                       ; $50C8: $50
    ldh [$98], a                                  ; $50C9: $E0 $98
    ld [hl], b                                    ; $50CB: $70
    db $FC                                        ; $50CC: $FC
    cp b                                          ; $50CD: $B8
    db $FC                                        ; $50CE: $FC
    sbc b                                         ; $50CF: $98
    jr z, @+$19                                   ; $50D0: $28 $17

    ld a, [de]                                    ; $50D2: $1A
    rlca                                          ; $50D3: $07
    inc e                                         ; $50D4: $1C
    dec bc                                        ; $50D5: $0B
    rrca                                          ; $50D6: $0F
    nop                                           ; $50D7: $00
    jr @+$11                                      ; $50D8: $18 $0F

    ld d, $09                                     ; $50DA: $16 $09
    rra                                           ; $50DC: $1F
    ld c, $0F                                     ; $50DD: $0E $0F
    ld b, $14                                     ; $50DF: $06 $14
    add sp, $58                                   ; $50E1: $E8 $58
    ldh [$38], a                                  ; $50E3: $E0 $38
    ret nc                                        ; $50E5: $D0

    ldh a, [rP1]                                  ; $50E6: $F0 $00
    ld [$18F0], sp                                ; $50E8: $08 $F0 $18
    ldh a, [$E8]                                  ; $50EB: $F0 $E8
    db $10                                        ; $50ED: $10
    ld hl, sp-$30                                 ; $50EE: $F8 $D0
    rra                                           ; $50F0: $1F
    rlca                                          ; $50F1: $07
    rrca                                          ; $50F2: $0F
    rlca                                          ; $50F3: $07
    rla                                           ; $50F4: $17
    dec bc                                        ; $50F5: $0B
    dec de                                        ; $50F6: $1B
    inc c                                         ; $50F7: $0C
    inc d                                         ; $50F8: $14
    dec bc                                        ; $50F9: $0B
    inc d                                         ; $50FA: $14
    dec bc                                        ; $50FB: $0B
    rra                                           ; $50FC: $1F
    ld [$0B1F], sp                                ; $50FD: $08 $1F $0B
    ld hl, sp-$20                                 ; $5100: $F8 $E0
    ldh a, [$C0]                                  ; $5102: $F0 $C0
    ret z                                         ; $5104: $C8

    or b                                          ; $5105: $B0
    add h                                         ; $5106: $84
    ld a, b                                       ; $5107: $78
    inc c                                         ; $5108: $0C
    ld hl, sp+$14                                 ; $5109: $F8 $14
    add sp, -$08                                  ; $510B: $E8 $F8
    nop                                           ; $510D: $00
    ldh a, [$E0]                                  ; $510E: $F0 $E0
    jr z, @+$19                                   ; $5110: $28 $17

    ld a, [de]                                    ; $5112: $1A
    rlca                                          ; $5113: $07
    inc e                                         ; $5114: $1C
    dec bc                                        ; $5115: $0B
    rra                                           ; $5116: $1F
    nop                                           ; $5117: $00
    db $10                                        ; $5118: $10
    rrca                                          ; $5119: $0F

jr_00C_511A:
    jr jr_00C_512B                                ; $511A: $18 $0F

jr_00C_511C:
    rla                                           ; $511C: $17
    ld [$0B1F], sp                                ; $511D: $08 $1F $0B
    inc d                                         ; $5120: $14
    add sp, $58                                   ; $5121: $E8 $58
    ldh [$38], a                                  ; $5123: $E0 $38
    ret nc                                        ; $5125: $D0

    ld hl, sp+$00                                 ; $5126: $F8 $00
    jr jr_00C_511A                                ; $5128: $18 $F0

    ld l, b                                       ; $512A: $68

jr_00C_512B:
    sub b                                         ; $512B: $90
    ld hl, sp+$70                                 ; $512C: $F8 $70
    ldh a, [$60]                                  ; $512E: $F0 $60
    rra                                           ; $5130: $1F
    rlca                                          ; $5131: $07
    rrca                                          ; $5132: $0F
    rlca                                          ; $5133: $07
    rla                                           ; $5134: $17
    dec bc                                        ; $5135: $0B
    inc hl                                        ; $5136: $23
    inc e                                         ; $5137: $1C
    jr nc, jr_00C_5159                            ; $5138: $30 $1F

    jr z, jr_00C_5153                             ; $513A: $28 $17

    rra                                           ; $513C: $1F
    nop                                           ; $513D: $00
    rrca                                          ; $513E: $0F
    rlca                                          ; $513F: $07
    ld hl, sp-$20                                 ; $5140: $F8 $E0
    ldh a, [$C0]                                  ; $5142: $F0 $C0
    ret z                                         ; $5144: $C8

    or b                                          ; $5145: $B0
    sbc b                                         ; $5146: $98
    ld [hl], b                                    ; $5147: $70
    jr z, jr_00C_511A                             ; $5148: $28 $D0

    jr z, jr_00C_511C                             ; $514A: $28 $D0

    ld hl, sp+$10                                 ; $514C: $F8 $10
    ld hl, sp-$30                                 ; $514E: $F8 $D0
    rrca                                          ; $5150: $0F
    nop                                           ; $5151: $00
    rrca                                          ; $5152: $0F

jr_00C_5153:
    rlca                                          ; $5153: $07
    rra                                           ; $5154: $1F
    rrca                                          ; $5155: $0F
    rra                                           ; $5156: $1F
    rrca                                          ; $5157: $0F
    ccf                                           ; $5158: $3F

jr_00C_5159:
    db $10                                        ; $5159: $10
    add hl, sp                                    ; $515A: $39
    ld b, $21                                     ; $515B: $06 $21
    ld e, $1F                                     ; $515D: $1E $1F
    nop                                           ; $515F: $00
    ldh [rP1], a                                  ; $5160: $E0 $00
    ldh [$C0], a                                  ; $5162: $E0 $C0
    ldh a, [$E0]                                  ; $5164: $F0 $E0
    ldh a, [$C0]                                  ; $5166: $F0 $C0
    ret z                                         ; $5168: $C8

    jr nc, @+$0A                                  ; $5169: $30 $08

    ldh a, [$F0]                                  ; $516B: $F0 $F0
    nop                                           ; $516D: $00
    nop                                           ; $516E: $00
    nop                                           ; $516F: $00
    ld hl, sp+$00                                 ; $5170: $F8 $00
    ldh a, [$E0]                                  ; $5172: $F0 $E0
    ld hl, sp-$10                                 ; $5174: $F8 $F0
    ld hl, sp-$40                                 ; $5176: $F8 $C0
    ret z                                         ; $5178: $C8

    jr nc, @-$7A                                  ; $5179: $30 $84

    ld a, b                                       ; $517B: $78
    call nz, $F838                                ; $517C: $C4 $38 $F8
    nop                                           ; $517F: $00
    ldh a, [rP1]                                  ; $5180: $F0 $00
    ldh a, [$E0]                                  ; $5182: $F0 $E0
    ld hl, sp-$10                                 ; $5184: $F8 $F0
    ld hl, sp-$10                                 ; $5186: $F8 $F0
    ld hl, sp-$20                                 ; $5188: $F8 $E0
    db $F4                                        ; $518A: $F4
    ld [$708C], sp                                ; $518B: $08 $8C $70
    ld hl, sp+$00                                 ; $518E: $F8 $00
    rlca                                          ; $5190: $07
    nop                                           ; $5191: $00
    rlca                                          ; $5192: $07
    inc bc                                        ; $5193: $03
    rrca                                          ; $5194: $0F
    rlca                                          ; $5195: $07
    rrca                                          ; $5196: $0F
    rlca                                          ; $5197: $07
    rrca                                          ; $5198: $0F
    ld bc, $0609                                  ; $5199: $01 $09 $06
    rrca                                          ; $519C: $0F
    nop                                           ; $519D: $00
    nop                                           ; $519E: $00
    nop                                           ; $519F: $00
    db $FC                                        ; $51A0: $FC
    ld h, b                                       ; $51A1: $60
    ldh a, [$E0]                                  ; $51A2: $F0 $E0
    ld hl, sp-$10                                 ; $51A4: $F8 $F0
    ld hl, sp-$10                                 ; $51A6: $F8 $F0
    ld hl, sp-$20                                 ; $51A8: $F8 $E0
    db $F4                                        ; $51AA: $F4
    ld [$708C], sp                                ; $51AB: $08 $8C $70
    ld hl, sp+$00                                 ; $51AE: $F8 $00
    rst $38                                       ; $51B0: $FF
    nop                                           ; $51B1: $00
    rst $38                                       ; $51B2: $FF
    ld a, [hl]                                    ; $51B3: $7E
    cp $7C                                        ; $51B4: $FE $7C
    rst $38                                       ; $51B6: $FF
    ld a, b                                       ; $51B7: $78
    ld sp, hl                                     ; $51B8: $F9
    ld h, [hl]                                    ; $51B9: $66
    ld [hl], c                                    ; $51BA: $71
    ld c, $52                                     ; $51BB: $0E $52
    inc l                                         ; $51BD: $2C
    ld a, $00                                     ; $51BE: $3E $00
    rrca                                          ; $51C0: $0F
    nop                                           ; $51C1: $00
    rlca                                          ; $51C2: $07
    inc bc                                        ; $51C3: $03
    rrca                                          ; $51C4: $0F
    rlca                                          ; $51C5: $07
    rrca                                          ; $51C6: $0F
    rlca                                          ; $51C7: $07
    rrca                                          ; $51C8: $0F
    rlca                                          ; $51C9: $07
    rlca                                          ; $51CA: $07
    nop                                           ; $51CB: $00
    inc b                                         ; $51CC: $04
    inc bc                                        ; $51CD: $03
    rlca                                          ; $51CE: $07
    nop                                           ; $51CF: $00
    ldh a, [rP1]                                  ; $51D0: $F0 $00
    ld hl, sp-$10                                 ; $51D2: $F8 $F0
    ld hl, sp-$10                                 ; $51D4: $F8 $F0
    ld hl, sp-$10                                 ; $51D6: $F8 $F0
    ldh a, [$80]                                  ; $51D8: $F0 $80
    sub b                                         ; $51DA: $90
    ld h, b                                       ; $51DB: $60
    sub b                                         ; $51DC: $90
    ld h, b                                       ; $51DD: $60
    ldh a, [rP1]                                  ; $51DE: $F0 $00
    inc bc                                        ; $51E0: $03
    nop                                           ; $51E1: $00
    rrca                                          ; $51E2: $0F
    inc bc                                        ; $51E3: $03
    rra                                           ; $51E4: $1F
    rrca                                          ; $51E5: $0F
    ccf                                           ; $51E6: $3F
    rra                                           ; $51E7: $1F
    ccf                                           ; $51E8: $3F
    rra                                           ; $51E9: $1F
    ccf                                           ; $51EA: $3F
    rra                                           ; $51EB: $1F
    ccf                                           ; $51EC: $3F
    dec e                                         ; $51ED: $1D
    dec e                                         ; $51EE: $1D
    ld a, [bc]                                    ; $51EF: $0A
    ldh a, [rP1]                                  ; $51F0: $F0 $00
    ld hl, sp-$10                                 ; $51F2: $F8 $F0
    ld hl, sp-$10                                 ; $51F4: $F8 $F0
    ldh a, [$C0]                                  ; $51F6: $F0 $C0

jr_00C_51F8:
    ldh a, [$80]                                  ; $51F8: $F0 $80
    ldh a, [rP1]                                  ; $51FA: $F0 $00
    db $10                                        ; $51FC: $10
    ldh [$50], a                                  ; $51FD: $E0 $50
    ldh [rNR33], a                                ; $51FF: $E0 $1D
    ld a, [bc]                                    ; $5201: $0A
    ld a, $1D                                     ; $5202: $3E $1D
    ccf                                           ; $5204: $3F
    jr jr_00C_5220                                ; $5205: $18 $19

    rlca                                          ; $5207: $07
    dec bc                                        ; $5208: $0B
    rlca                                          ; $5209: $07
    ld e, $01                                     ; $520A: $1E $01
    ccf                                           ; $520C: $3F
    inc d                                         ; $520D: $14
    ccf                                           ; $520E: $3F
    rla                                           ; $520F: $17
    ld d, b                                       ; $5210: $50
    ldh [rNR10], a                                ; $5211: $E0 $10
    ldh [$E0], a                                  ; $5213: $E0 $E0
    nop                                           ; $5215: $00
    ret nz                                        ; $5216: $C0

    nop                                           ; $5217: $00
    ld b, b                                       ; $5218: $40
    add b                                         ; $5219: $80
    ld h, b                                       ; $521A: $60
    ret nz                                        ; $521B: $C0

    ldh a, [$E0]                                  ; $521C: $F0 $E0
    ldh a, [$60]                                  ; $521E: $F0 $60

jr_00C_5220:
    ld a, $1D                                     ; $5220: $3E $1D
    ccf                                           ; $5222: $3F
    jr @+$1A                                      ; $5223: $18 $18

    rlca                                          ; $5225: $07
    rrca                                          ; $5226: $0F
    rlca                                          ; $5227: $07
    ld [$0907], sp                                ; $5228: $08 $07 $09
    rlca                                          ; $522B: $07
    rlca                                          ; $522C: $07
    inc bc                                        ; $522D: $03
    rlca                                          ; $522E: $07
    ld bc, $E010                                  ; $522F: $01 $10 $E0
    ldh [rP1], a                                  ; $5232: $E0 $00
    ld b, b                                       ; $5234: $40
    add b                                         ; $5235: $80
    jr nz, jr_00C_51F8                            ; $5236: $20 $C0

    and b                                         ; $5238: $A0
    ld b, b                                       ; $5239: $40
    ldh [rP1], a                                  ; $523A: $E0 $00
    ldh [$80], a                                  ; $523C: $E0 $80
    ldh [$80], a                                  ; $523E: $E0 $80
    dec e                                         ; $5240: $1D
    ld a, [bc]                                    ; $5241: $0A
    ld a, $1D                                     ; $5242: $3E $1D
    ccf                                           ; $5244: $3F
    jr jr_00C_5265                                ; $5245: $18 $1E

    rlca                                          ; $5247: $07
    ld [de], a                                    ; $5248: $12
    rrca                                          ; $5249: $0F
    dec de                                        ; $524A: $1B
    inc c                                         ; $524B: $0C
    ccf                                           ; $524C: $3F
    dec e                                         ; $524D: $1D
    ccf                                           ; $524E: $3F
    dec de                                        ; $524F: $1B
    ld d, b                                       ; $5250: $50
    ldh [rNR10], a                                ; $5251: $E0 $10
    ldh [$E0], a                                  ; $5253: $E0 $E0
    nop                                           ; $5255: $00
    ld b, b                                       ; $5256: $40
    add b                                         ; $5257: $80
    ld b, b                                       ; $5258: $40
    add b                                         ; $5259: $80
    ldh [rP1], a                                  ; $525A: $E0 $00
    ldh a, [$A0]                                  ; $525C: $F0 $A0
    ldh a, [$A0]                                  ; $525E: $F0 $A0
    rra                                           ; $5260: $1F
    nop                                           ; $5261: $00
    rrca                                          ; $5262: $0F
    rlca                                          ; $5263: $07
    rra                                           ; $5264: $1F

jr_00C_5265:
    rrca                                          ; $5265: $0F
    ccf                                           ; $5266: $3F
    rra                                           ; $5267: $1F
    ld e, a                                       ; $5268: $5F
    dec l                                         ; $5269: $2D
    ld c, l                                       ; $526A: $4D
    ld [hl-], a                                   ; $526B: $32
    ld h, c                                       ; $526C: $61
    ld e, $7F                                     ; $526D: $1E $7F
    nop                                           ; $526F: $00
    ldh [rP1], a                                  ; $5270: $E0 $00
    ldh [$C0], a                                  ; $5272: $E0 $C0
    ld hl, sp-$20                                 ; $5274: $F8 $E0
    db $E4                                        ; $5276: $E4
    ret c                                         ; $5277: $D8

    call nz, $C8B8                                ; $5278: $C4 $B8 $C8
    or b                                          ; $527B: $B0
    cp b                                          ; $527C: $B8
    ld b, b                                       ; $527D: $40
    ldh [rP1], a                                  ; $527E: $E0 $00
    rlca                                          ; $5280: $07
    nop                                           ; $5281: $00
    rrca                                          ; $5282: $0F
    rlca                                          ; $5283: $07
    rra                                           ; $5284: $1F
    rrca                                          ; $5285: $0F
    rra                                           ; $5286: $1F
    rrca                                          ; $5287: $0F
    ccf                                           ; $5288: $3F
    db $10                                        ; $5289: $10
    jr c, @+$09                                   ; $528A: $38 $07

    jr nc, jr_00C_529D                            ; $528C: $30 $0F

    rra                                           ; $528E: $1F
    nop                                           ; $528F: $00
    ldh [rP1], a                                  ; $5290: $E0 $00
    ldh [$C0], a                                  ; $5292: $E0 $C0

jr_00C_5294:
    ldh [$C0], a                                  ; $5294: $E0 $C0
    ldh [$80], a                                  ; $5296: $E0 $80
    ret nc                                        ; $5298: $D0

    jr nz, jr_00C_52EB                            ; $5299: $20 $50

    and b                                         ; $529B: $A0
    ld [hl], b                                    ; $529C: $70

jr_00C_529D:
    add b                                         ; $529D: $80
    ret nz                                        ; $529E: $C0

    nop                                           ; $529F: $00
    rra                                           ; $52A0: $1F
    nop                                           ; $52A1: $00
    rrca                                          ; $52A2: $0F
    rlca                                          ; $52A3: $07
    rra                                           ; $52A4: $1F
    rrca                                          ; $52A5: $0F
    ccf                                           ; $52A6: $3F
    rrca                                          ; $52A7: $0F
    ld e, a                                       ; $52A8: $5F
    inc hl                                        ; $52A9: $23
    ld b, e                                       ; $52AA: $43
    dec a                                         ; $52AB: $3D
    ld h, c                                       ; $52AC: $61
    ld e, $7F                                     ; $52AD: $1E $7F
    nop                                           ; $52AF: $00
    ldh [rP1], a                                  ; $52B0: $E0 $00
    ret nz                                        ; $52B2: $C0

    add b                                         ; $52B3: $80
    ld hl, sp-$40                                 ; $52B4: $F8 $C0
    db $E4                                        ; $52B6: $E4
    ret c                                         ; $52B7: $D8

    call nz, $C8B8                                ; $52B8: $C4 $B8 $C8
    or b                                          ; $52BB: $B0
    cp b                                          ; $52BC: $B8
    ld b, b                                       ; $52BD: $40
    ldh [rP1], a                                  ; $52BE: $E0 $00

jr_00C_52C0:
    rrca                                          ; $52C0: $0F
    nop                                           ; $52C1: $00
    db $10                                        ; $52C2: $10
    rrca                                          ; $52C3: $0F
    jr nz, jr_00C_52E5                            ; $52C4: $20 $1F

    jr nz, jr_00C_52E7                            ; $52C6: $20 $1F

    ld [hl+], a                                   ; $52C8: $22
    rra                                           ; $52C9: $1F
    jr nz, jr_00C_52EB                            ; $52CA: $20 $1F

    inc de                                        ; $52CC: $13
    inc c                                         ; $52CD: $0C
    ld a, c                                       ; $52CE: $79
    rlca                                          ; $52CF: $07
    ret nz                                        ; $52D0: $C0

    nop                                           ; $52D1: $00
    jr nz, jr_00C_5294                            ; $52D2: $20 $C0

    db $10                                        ; $52D4: $10
    ldh [$D0], a                                  ; $52D5: $E0 $D0
    ldh [$D0], a                                  ; $52D7: $E0 $D0
    ldh [rNR10], a                                ; $52D9: $E0 $10
    ldh [$F0], a                                  ; $52DB: $E0 $F0
    nop                                           ; $52DD: $00
    jr c, jr_00C_52C0                             ; $52DE: $38 $E0

    ldh [rP1], a                                  ; $52E0: $E0 $00
    db $10                                        ; $52E2: $10
    ldh [$08], a                                  ; $52E3: $E0 $08

jr_00C_52E5:
    ldh a, [$08]                                  ; $52E5: $F0 $08

jr_00C_52E7:
    ldh a, [$88]                                  ; $52E7: $F0 $88
    ldh a, [$A8]                                  ; $52E9: $F0 $A8

jr_00C_52EB:
    ldh a, [$08]                                  ; $52EB: $F0 $08
    ldh a, [$EE]                                  ; $52ED: $F0 $EE
    db $10                                        ; $52EF: $10
    ldh [rP1], a                                  ; $52F0: $E0 $00
    db $10                                        ; $52F2: $10
    ldh [$08], a                                  ; $52F3: $E0 $08
    ldh a, [$08]                                  ; $52F5: $F0 $08
    ldh a, [$08]                                  ; $52F7: $F0 $08
    ldh a, [$08]                                  ; $52F9: $F0 $08
    ldh a, [$E8]                                  ; $52FB: $F0 $E8
    db $10                                        ; $52FD: $10
    db $FC                                        ; $52FE: $FC
    nop                                           ; $52FF: $00
    inc bc                                        ; $5300: $03
    nop                                           ; $5301: $00
    inc b                                         ; $5302: $04
    inc bc                                        ; $5303: $03
    ld [$0807], sp                                ; $5304: $08 $07 $08
    rlca                                          ; $5307: $07
    ld [$0807], sp                                ; $5308: $08 $07 $08
    rlca                                          ; $530B: $07
    ccf                                           ; $530C: $3F
    nop                                           ; $530D: $00
    rra                                           ; $530E: $1F
    nop                                           ; $530F: $00
    ldh a, [rP1]                                  ; $5310: $F0 $00
    ld [$04F0], sp                                ; $5312: $08 $F0 $04
    ld hl, sp+$04                                 ; $5315: $F8 $04
    ld hl, sp+$04                                 ; $5317: $F8 $04
    ld hl, sp+$04                                 ; $5319: $F8 $04
    ld hl, sp-$1C                                 ; $531B: $F8 $E4
    jr jr_00C_52EB                                ; $531D: $18 $CC

    jr nc, @+$3E                                  ; $531F: $30 $3C

    inc bc                                        ; $5321: $03
    rra                                           ; $5322: $1F
    nop                                           ; $5323: $00
    ccf                                           ; $5324: $3F
    inc b                                         ; $5325: $04
    ld a, a                                       ; $5326: $7F
    inc bc                                        ; $5327: $03
    ld a, a                                       ; $5328: $7F
    ld bc, $017F                                  ; $5329: $01 $7F $01
    ld c, a                                       ; $532C: $4F
    ld sp, $718F                                  ; $532D: $31 $8F $71
    db $10                                        ; $5330: $10
    ldh [$E0], a                                  ; $5331: $E0 $E0
    nop                                           ; $5333: $00
    ldh a, [rLCDC]                                ; $5334: $F0 $40
    ldh a, [$C0]                                  ; $5336: $F0 $C0
    ldh a, [$80]                                  ; $5338: $F0 $80
    ld hl, sp-$80                                 ; $533A: $F8 $80
    db $EC                                        ; $533C: $EC
    sub b                                         ; $533D: $90
    db $EC                                        ; $533E: $EC
    sbc b                                         ; $533F: $98
    ld e, h                                       ; $5340: $5C
    ldh [$38], a                                  ; $5341: $E0 $38
    ret nz                                        ; $5343: $C0

    ld hl, sp+$00                                 ; $5344: $F8 $00
    db $FC                                        ; $5346: $FC
    ld h, b                                       ; $5347: $60
    db $FC                                        ; $5348: $FC
    ret nz                                        ; $5349: $C0

    db $FC                                        ; $534A: $FC
    ret nz                                        ; $534B: $C0

    and $D8                                       ; $534C: $E6 $D8
    and $DC                                       ; $534E: $E6 $DC
    ld hl, sp+$00                                 ; $5350: $F8 $00
    ld hl, sp+$10                                 ; $5352: $F8 $10
    db $FC                                        ; $5354: $FC
    jr nc, @-$02                                  ; $5355: $30 $FC

    ld [hl], b                                    ; $5357: $70
    db $FC                                        ; $5358: $FC
    ldh [$F6], a                                  ; $5359: $E0 $F6
    ret z                                         ; $535B: $C8

    or $0C                                        ; $535C: $F6 $0C
    cp $04                                        ; $535E: $FE $04
    rrca                                          ; $5360: $0F
    nop                                           ; $5361: $00
    rrca                                          ; $5362: $0F

jr_00C_5363:
    nop                                           ; $5363: $00
    rra                                           ; $5364: $1F
    ld [$0F1F], sp                                ; $5365: $08 $1F $0F
    rra                                           ; $5368: $1F
    ld b, $1F                                     ; $5369: $06 $1F
    nop                                           ; $536B: $00
    rrca                                          ; $536C: $0F
    nop                                           ; $536D: $00
    rrca                                          ; $536E: $0F
    nop                                           ; $536F: $00
    ret c                                         ; $5370: $D8

    jr nz, jr_00C_5363                            ; $5371: $20 $F0

    nop                                           ; $5373: $00
    ldh a, [$C0]                                  ; $5374: $F0 $C0
    ldh a, [$80]                                  ; $5376: $F0 $80
    ldh a, [rP1]                                  ; $5378: $F0 $00
    ld hl, sp+$00                                 ; $537A: $F8 $00
    db $F4                                        ; $537C: $F4
    ld [$1CE6], sp                                ; $537D: $08 $E6 $1C
    ld [hl], a                                    ; $5380: $77
    ld [$073A], sp                                ; $5381: $08 $3A $07
    inc e                                         ; $5384: $1C
    inc bc                                        ; $5385: $03
    rra                                           ; $5386: $1F
    nop                                           ; $5387: $00
    rra                                           ; $5388: $1F
    ld [bc], a                                    ; $5389: $02
    rra                                           ; $538A: $1F
    ld bc, $0917                                  ; $538B: $01 $17 $09
    dec de                                        ; $538E: $1B
    dec c                                         ; $538F: $0D
    xor $10                                       ; $5390: $EE $10
    ld e, h                                       ; $5392: $5C
    ldh [$38], a                                  ; $5393: $E0 $38
    ret nz                                        ; $5395: $C0

    ld hl, sp+$00                                 ; $5396: $F8 $00
    ld hl, sp+$60                                 ; $5398: $F8 $60
    ld hl, sp-$40                                 ; $539A: $F8 $C0
    ld hl, sp-$40                                 ; $539C: $F8 $C0
    db $EC                                        ; $539E: $EC
    ret nc                                        ; $539F: $D0

    ccf                                           ; $53A0: $3F
    nop                                           ; $53A1: $00
    rra                                           ; $53A2: $1F
    nop                                           ; $53A3: $00
    rra                                           ; $53A4: $1F
    nop                                           ; $53A5: $00
    rra                                           ; $53A6: $1F
    inc b                                         ; $53A7: $04
    rra                                           ; $53A8: $1F
    inc bc                                        ; $53A9: $03
    rra                                           ; $53AA: $1F
    ld bc, $0837                                  ; $53AB: $01 $37 $08
    scf                                           ; $53AE: $37
    jr @-$02                                      ; $53AF: $18 $FC

    nop                                           ; $53B1: $00
    ld hl, sp+$00                                 ; $53B2: $F8 $00
    ld hl, sp+$10                                 ; $53B4: $F8 $10
    db $FC                                        ; $53B6: $FC
    jr nc, @-$02                                  ; $53B7: $30 $FC

    ldh [$FC], a                                  ; $53B9: $E0 $FC
    ret nz                                        ; $53BB: $C0

    db $FC                                        ; $53BC: $FC
    nop                                           ; $53BD: $00
    ld hl, sp+$00                                 ; $53BE: $F8 $00
    rst $38                                       ; $53C0: $FF
    ld d, c                                       ; $53C1: $51
    rst $38                                       ; $53C2: $FF
    add hl, hl                                    ; $53C3: $29
    rst $38                                       ; $53C4: $FF
    dec d                                         ; $53C5: $15
    rst $38                                       ; $53C6: $FF
    inc bc                                        ; $53C7: $03
    ld a, a                                       ; $53C8: $7F
    inc bc                                        ; $53C9: $03
    ccf                                           ; $53CA: $3F
    inc bc                                        ; $53CB: $03
    ccf                                           ; $53CC: $3F
    nop                                           ; $53CD: $00
    rra                                           ; $53CE: $1F
    nop                                           ; $53CF: $00
    db $FC                                        ; $53D0: $FC
    adc b                                         ; $53D1: $88
    db $FC                                        ; $53D2: $FC
    adc b                                         ; $53D3: $88
    ld hl, sp-$80                                 ; $53D4: $F8 $80
    ldh a, [$80]                                  ; $53D6: $F0 $80
    ld hl, sp-$80                                 ; $53D8: $F8 $80
    ld hl, sp+$00                                 ; $53DA: $F8 $00
    ldh a, [rP1]                                  ; $53DC: $F0 $00
    add b                                         ; $53DE: $80
    nop                                           ; $53DF: $00
    cp $C4                                        ; $53E0: $FE $C4
    cp $C4                                        ; $53E2: $FE $C4
    cp $C4                                        ; $53E4: $FE $C4
    db $FC                                        ; $53E6: $FC
    ret nz                                        ; $53E7: $C0

    ld hl, sp-$40                                 ; $53E8: $F8 $C0
    db $FC                                        ; $53EA: $FC
    ret nz                                        ; $53EB: $C0

    db $FC                                        ; $53EC: $FC
    add b                                         ; $53ED: $80
    ld hl, sp+$00                                 ; $53EE: $F8 $00
    cp $04                                        ; $53F0: $FE $04
    cp $04                                        ; $53F2: $FE $04
    db $FC                                        ; $53F4: $FC
    nop                                           ; $53F5: $00
    ld hl, sp+$00                                 ; $53F6: $F8 $00
    ld hl, sp+$00                                 ; $53F8: $F8 $00
    db $FC                                        ; $53FA: $FC
    nop                                           ; $53FB: $00
    db $FC                                        ; $53FC: $FC
    nop                                           ; $53FD: $00
    ld hl, sp+$00                                 ; $53FE: $F8 $00
    rlca                                          ; $5400: $07
    nop                                           ; $5401: $00
    rlca                                          ; $5402: $07
    nop                                           ; $5403: $00
    rrca                                          ; $5404: $0F
    nop                                           ; $5405: $00
    rrca                                          ; $5406: $0F
    nop                                           ; $5407: $00
    rrca                                          ; $5408: $0F
    nop                                           ; $5409: $00
    rrca                                          ; $540A: $0F
    nop                                           ; $540B: $00
    rrca                                          ; $540C: $0F
    nop                                           ; $540D: $00
    nop                                           ; $540E: $00
    nop                                           ; $540F: $00
    rst $38                                       ; $5410: $FF
    ld a, [bc]                                    ; $5411: $0A
    rst $38                                       ; $5412: $FF
    dec b                                         ; $5413: $05
    rst $38                                       ; $5414: $FF
    ld [bc], a                                    ; $5415: $02
    ld a, [$F800]                                 ; $5416: $FA $00 $F8
    nop                                           ; $5419: $00
    db $FC                                        ; $541A: $FC
    nop                                           ; $541B: $00
    db $FC                                        ; $541C: $FC
    nop                                           ; $541D: $00
    ld hl, sp+$00                                 ; $541E: $F8 $00
    rra                                           ; $5420: $1F
    dec c                                         ; $5421: $0D
    rra                                           ; $5422: $1F
    dec c                                         ; $5423: $0D
    rrca                                          ; $5424: $0F
    dec b                                         ; $5425: $05
    rrca                                          ; $5426: $0F
    ld bc, $031F                                  ; $5427: $01 $1F $03
    ccf                                           ; $542A: $3F
    inc bc                                        ; $542B: $03
    ccf                                           ; $542C: $3F
    ld bc, $001F                                  ; $542D: $01 $1F $00
    db $FC                                        ; $5430: $FC
    ret z                                         ; $5431: $C8

    ld hl, sp-$40                                 ; $5432: $F8 $C0

jr_00C_5434:
    ldh [$C0], a                                  ; $5434: $E0 $C0
    ldh a, [$C0]                                  ; $5436: $F0 $C0
    ldh a, [$C0]                                  ; $5438: $F0 $C0
    ld hl, sp-$40                                 ; $543A: $F8 $C0
    ld hl, sp-$80                                 ; $543C: $F8 $80
    ldh a, [rP1]                                  ; $543E: $F0 $00
    ccf                                           ; $5440: $3F
    db $10                                        ; $5441: $10
    ccf                                           ; $5442: $3F
    db $10                                        ; $5443: $10
    rra                                           ; $5444: $1F
    nop                                           ; $5445: $00
    rrca                                          ; $5446: $0F
    nop                                           ; $5447: $00
    rrca                                          ; $5448: $0F
    nop                                           ; $5449: $00
    rra                                           ; $544A: $1F
    nop                                           ; $544B: $00
    rra                                           ; $544C: $1F
    nop                                           ; $544D: $00
    rrca                                          ; $544E: $0F
    nop                                           ; $544F: $00
    ld hl, sp+$00                                 ; $5450: $F8 $00
    ld hl, sp+$00                                 ; $5452: $F8 $00
    ld hl, sp+$00                                 ; $5454: $F8 $00
    ld hl, sp+$00                                 ; $5456: $F8 $00
    ld hl, sp+$00                                 ; $5458: $F8 $00
    db $FC                                        ; $545A: $FC
    nop                                           ; $545B: $00
    db $FC                                        ; $545C: $FC
    nop                                           ; $545D: $00
    ld hl, sp+$00                                 ; $545E: $F8 $00
    rrca                                          ; $5460: $0F
    nop                                           ; $5461: $00
    db $10                                        ; $5462: $10
    rrca                                          ; $5463: $0F
    jr nz, jr_00C_5485                            ; $5464: $20 $1F

    jr nz, jr_00C_5487                            ; $5466: $20 $1F

    jr nz, jr_00C_5489                            ; $5468: $20 $1F

    jr nz, jr_00C_548B                            ; $546A: $20 $1F

    db $10                                        ; $546C: $10
    rrca                                          ; $546D: $0F
    ld a, h                                       ; $546E: $7C
    inc bc                                        ; $546F: $03
    ret nz                                        ; $5470: $C0

    nop                                           ; $5471: $00
    jr nz, jr_00C_5434                            ; $5472: $20 $C0

    db $10                                        ; $5474: $10
    ldh [$30], a                                  ; $5475: $E0 $30
    ldh [$B0], a                                  ; $5477: $E0 $B0
    ldh [rNR10], a                                ; $5479: $E0 $10
    ldh [$F0], a                                  ; $547B: $E0 $F0
    nop                                           ; $547D: $00
    ld d, b                                       ; $547E: $50
    ldh [$7C], a                                  ; $547F: $E0 $7C
    inc bc                                        ; $5481: $03
    ld a, $01                                     ; $5482: $3E $01
    rra                                           ; $5484: $1F

jr_00C_5485:
    nop                                           ; $5485: $00
    rrca                                          ; $5486: $0F

jr_00C_5487:
    inc bc                                        ; $5487: $03
    rrca                                          ; $5488: $0F

jr_00C_5489:
    ld b, $1F                                     ; $5489: $06 $1F

jr_00C_548B:
    inc b                                         ; $548B: $04
    ccf                                           ; $548C: $3F
    nop                                           ; $548D: $00
    ld a, a                                       ; $548E: $7F
    nop                                           ; $548F: $00
    ld d, b                                       ; $5490: $50
    ldh [rNR10], a                                ; $5491: $E0 $10
    ldh [$E0], a                                  ; $5493: $E0 $E0
    nop                                           ; $5495: $00
    ret nz                                        ; $5496: $C0

    add b                                         ; $5497: $80
    ret nz                                        ; $5498: $C0

    nop                                           ; $5499: $00
    ldh [rP1], a                                  ; $549A: $E0 $00
    sub b                                         ; $549C: $90
    ld h, b                                       ; $549D: $60
    sbc b                                         ; $549E: $98
    ld [hl], b                                    ; $549F: $70
    ld a, $01                                     ; $54A0: $3E $01
    rra                                           ; $54A2: $1F
    nop                                           ; $54A3: $00
    rra                                           ; $54A4: $1F
    ld bc, $060F                                  ; $54A5: $01 $0F $06
    rrca                                          ; $54A8: $0F
    nop                                           ; $54A9: $00
    rrca                                          ; $54AA: $0F
    nop                                           ; $54AB: $00
    ld b, $01                                     ; $54AC: $06 $01
    ld b, $01                                     ; $54AE: $06 $01
    db $10                                        ; $54B0: $10
    ldh [$E0], a                                  ; $54B1: $E0 $E0
    nop                                           ; $54B3: $00
    ret nz                                        ; $54B4: $C0

    add b                                         ; $54B5: $80
    ldh [rLCDC], a                                ; $54B6: $E0 $40
    ldh [rLCDC], a                                ; $54B8: $E0 $40
    ldh [rP1], a                                  ; $54BA: $E0 $00
    ld h, b                                       ; $54BC: $60
    add b                                         ; $54BD: $80
    ld h, b                                       ; $54BE: $60
    add b                                         ; $54BF: $80
    ld a, h                                       ; $54C0: $7C
    inc bc                                        ; $54C1: $03
    ld a, $01                                     ; $54C2: $3E $01
    rra                                           ; $54C4: $1F
    nop                                           ; $54C5: $00
    rra                                           ; $54C6: $1F
    inc bc                                        ; $54C7: $03
    rra                                           ; $54C8: $1F
    ld bc, $001F                                  ; $54C9: $01 $1F $00
    daa                                           ; $54CC: $27
    jr jr_00C_5536                                ; $54CD: $18 $67

    jr jr_00C_5521                                ; $54CF: $18 $50

    ldh [rNR10], a                                ; $54D1: $E0 $10
    ldh [$E0], a                                  ; $54D3: $E0 $E0
    nop                                           ; $54D5: $00
    ret nz                                        ; $54D6: $C0

    nop                                           ; $54D7: $00
    ret nz                                        ; $54D8: $C0

    add b                                         ; $54D9: $80
    ldh a, [$80]                                  ; $54DA: $F0 $80
    ret c                                         ; $54DC: $D8

    or b                                          ; $54DD: $B0
    call c, $FFA8                                 ; $54DE: $DC $A8 $FF
    ld b, b                                       ; $54E1: $40
    ld a, a                                       ; $54E2: $7F
    jr nz, @+$41                                  ; $54E3: $20 $3F

    nop                                           ; $54E5: $00
    rra                                           ; $54E6: $1F
    nop                                           ; $54E7: $00
    ccf                                           ; $54E8: $3F
    nop                                           ; $54E9: $00
    ld a, a                                       ; $54EA: $7F
    nop                                           ; $54EB: $00
    ld a, a                                       ; $54EC: $7F
    nop                                           ; $54ED: $00
    ld a, a                                       ; $54EE: $7F
    nop                                           ; $54EF: $00
    db $FC                                        ; $54F0: $FC

jr_00C_54F1:
    jr z, jr_00C_54F1                             ; $54F1: $28 $FE

    inc d                                         ; $54F3: $14
    db $FC                                        ; $54F4: $FC
    ld [$00F8], sp                                ; $54F5: $08 $F8 $00
    db $FC                                        ; $54F8: $FC
    nop                                           ; $54F9: $00
    db $FC                                        ; $54FA: $FC
    nop                                           ; $54FB: $00
    ld hl, sp+$00                                 ; $54FC: $F8 $00
    ldh [rP1], a                                  ; $54FE: $E0 $00
    rlca                                          ; $5500: $07
    ld [bc], a                                    ; $5501: $02
    rrca                                          ; $5502: $0F
    ld [bc], a                                    ; $5503: $02
    rra                                           ; $5504: $1F
    ld [bc], a                                    ; $5505: $02
    rra                                           ; $5506: $1F
    nop                                           ; $5507: $00
    ccf                                           ; $5508: $3F
    nop                                           ; $5509: $00
    ccf                                           ; $550A: $3F
    nop                                           ; $550B: $00
    ccf                                           ; $550C: $3F
    nop                                           ; $550D: $00
    rra                                           ; $550E: $1F
    nop                                           ; $550F: $00
    ldh [$80], a                                  ; $5510: $E0 $80
    ldh [$80], a                                  ; $5512: $E0 $80
    ldh [$80], a                                  ; $5514: $E0 $80
    ldh [rP1], a                                  ; $5516: $E0 $00
    ldh a, [rP1]                                  ; $5518: $F0 $00
    ldh a, [rP1]                                  ; $551A: $F0 $00
    ldh a, [rP1]                                  ; $551C: $F0 $00
    ret nz                                        ; $551E: $C0

    nop                                           ; $551F: $00
    rst $38                                       ; $5520: $FF

jr_00C_5521:
    ld d, b                                       ; $5521: $50
    ld a, a                                       ; $5522: $7F
    jr nz, @+$01                                  ; $5523: $20 $FF

    ld b, b                                       ; $5525: $40
    ld a, a                                       ; $5526: $7F
    nop                                           ; $5527: $00
    rra                                           ; $5528: $1F
    nop                                           ; $5529: $00
    ccf                                           ; $552A: $3F
    nop                                           ; $552B: $00
    ld a, a                                       ; $552C: $7F
    nop                                           ; $552D: $00
    ld a, a                                       ; $552E: $7F
    nop                                           ; $552F: $00
    cp $94                                        ; $5530: $FE $94
    call c, $F888                                 ; $5532: $DC $88 $F8
    add b                                         ; $5535: $80

jr_00C_5536:
    db $FC                                        ; $5536: $FC
    ret nz                                        ; $5537: $C0

    db $FC                                        ; $5538: $FC
    ldh [$F8], a                                  ; $5539: $E0 $F8
    ret nz                                        ; $553B: $C0

    ld hl, sp+$00                                 ; $553C: $F8 $00
    ldh [rP1], a                                  ; $553E: $E0 $00
    nop                                           ; $5540: $00
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    nop                                           ; $5543: $00
    rrca                                          ; $5544: $0F
    nop                                           ; $5545: $00
    rra                                           ; $5546: $1F
    rrca                                          ; $5547: $0F
    ccf                                           ; $5548: $3F
    rra                                           ; $5549: $1F
    ld a, a                                       ; $554A: $7F
    ccf                                           ; $554B: $3F
    rst $38                                       ; $554C: $FF
    ld a, h                                       ; $554D: $7C
    db $FC                                        ; $554E: $FC
    ld l, e                                       ; $554F: $6B
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    nop                                           ; $5552: $00
    nop                                           ; $5553: $00
    ldh [rP1], a                                  ; $5554: $E0 $00
    ldh a, [$E0]                                  ; $5556: $F0 $E0
    ld hl, sp-$10                                 ; $5558: $F8 $F0
    ld hl, sp-$10                                 ; $555A: $F8 $F0
    db $FC                                        ; $555C: $FC
    cp b                                          ; $555D: $B8
    cp h                                          ; $555E: $BC

jr_00C_555F:
    ld e, b                                       ; $555F: $58
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    nop                                           ; $5563: $00
    rlca                                          ; $5564: $07
    nop                                           ; $5565: $00

jr_00C_5566:
    rrca                                          ; $5566: $0F
    rlca                                          ; $5567: $07
    rra                                           ; $5568: $1F
    rrca                                          ; $5569: $0F
    ccf                                           ; $556A: $3F
    rra                                           ; $556B: $1F
    ccf                                           ; $556C: $3F
    dec e                                         ; $556D: $1D
    dec a                                         ; $556E: $3D
    ld a, [bc]                                    ; $556F: $0A
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    ldh [rP1], a                                  ; $5574: $E0 $00
    ldh a, [$E0]                                  ; $5576: $F0 $E0
    ld hl, sp-$50                                 ; $5578: $F8 $B0
    db $FC                                        ; $557A: $FC

jr_00C_557B:
    ld a, b                                       ; $557B: $78
    db $FC                                        ; $557C: $FC

jr_00C_557D:
    jr c, @+$3E                                   ; $557D: $38 $3C

    ret c                                         ; $557F: $D8

    ld [$7A55], a                                 ; $5580: $EA $55 $7A
    dec h                                         ; $5583: $25
    ld a, h                                       ; $5584: $7C
    dec sp                                        ; $5585: $3B
    ccf                                           ; $5586: $3F
    db $10                                        ; $5587: $10
    dec de                                        ; $5588: $1B
    inc b                                         ; $5589: $04
    inc de                                        ; $558A: $13
    inc c                                         ; $558B: $0C
    inc de                                        ; $558C: $13
    inc c                                         ; $558D: $0C
    rrca                                          ; $558E: $0F
    nop                                           ; $558F: $00
    ld e, h                                       ; $5590: $5C
    xor b                                         ; $5591: $A8
    ld e, b                                       ; $5592: $58
    and b                                         ; $5593: $A0

jr_00C_5594:
    jr c, jr_00C_5566                             ; $5594: $38 $D0

    ldh a, [rP1]                                  ; $5596: $F0 $00
    ldh [rP1], a                                  ; $5598: $E0 $00
    ret nc                                        ; $559A: $D0

    jr nz, jr_00C_557D                            ; $559B: $20 $E0

    nop                                           ; $559D: $00
    ret nz                                        ; $559E: $C0

    nop                                           ; $559F: $00
    ld e, h                                       ; $55A0: $5C
    xor b                                         ; $55A1: $A8
    ld e, h                                       ; $55A2: $5C
    and b                                         ; $55A3: $A0
    inc a                                         ; $55A4: $3C
    ret z                                         ; $55A5: $C8

    ld hl, sp+$00                                 ; $55A6: $F8 $00
    ret nc                                        ; $55A8: $D0

    jr nz, jr_00C_557B                            ; $55A9: $20 $D0

    jr nz, @-$36                                  ; $55AB: $20 $C8

    jr nc, @-$36                                  ; $55AD: $30 $C8

    jr nc, jr_00C_55BD                            ; $55AF: $30 $0C

    inc bc                                        ; $55B1: $03
    inc b                                         ; $55B2: $04
    inc bc                                        ; $55B3: $03
    rlca                                          ; $55B4: $07
    nop                                           ; $55B5: $00
    rlca                                          ; $55B6: $07
    ld [bc], a                                    ; $55B7: $02
    rrca                                          ; $55B8: $0F
    inc b                                         ; $55B9: $04
    ld c, $01                                     ; $55BA: $0E $01
    db $10                                        ; $55BC: $10

jr_00C_55BD:
    rrca                                          ; $55BD: $0F
    rrca                                          ; $55BE: $0F
    nop                                           ; $55BF: $00
    ld b, b                                       ; $55C0: $40
    add b                                         ; $55C1: $80
    ret nz                                        ; $55C2: $C0

    nop                                           ; $55C3: $00
    ret nz                                        ; $55C4: $C0

    add b                                         ; $55C5: $80
    ldh a, [$80]                                  ; $55C6: $F0 $80
    ret z                                         ; $55C8: $C8

    jr nc, jr_00C_5613                            ; $55C9: $30 $48

    or b                                          ; $55CB: $B0
    ld [hl], b                                    ; $55CC: $70
    add b                                         ; $55CD: $80
    ret nz                                        ; $55CE: $C0

    nop                                           ; $55CF: $00
    ld [hl], b                                    ; $55D0: $70
    add b                                         ; $55D1: $80
    jr nz, jr_00C_5594                            ; $55D2: $20 $C0

    ldh [rP1], a                                  ; $55D4: $E0 $00
    ldh a, [rLCDC]                                ; $55D6: $F0 $40
    ret z                                         ; $55D8: $C8

jr_00C_55D9:
    jr nc, jr_00C_555F                            ; $55D9: $30 $84

    ld a, b                                       ; $55DB: $78
    call nz, $F838                                ; $55DC: $C4 $38 $F8
    nop                                           ; $55DF: $00
    nop                                           ; $55E0: $00
    nop                                           ; $55E1: $00
    nop                                           ; $55E2: $00
    nop                                           ; $55E3: $00
    ldh [rP1], a                                  ; $55E4: $E0 $00
    ldh a, [$E0]                                  ; $55E6: $F0 $E0
    ld hl, sp-$10                                 ; $55E8: $F8 $F0
    db $FC                                        ; $55EA: $FC
    ld hl, sp-$04                                 ; $55EB: $F8 $FC
    ld hl, sp-$04                                 ; $55ED: $F8 $FC
    ld hl, sp+$00                                 ; $55EF: $F8 $00
    nop                                           ; $55F1: $00
    nop                                           ; $55F2: $00
    nop                                           ; $55F3: $00
    inc bc                                        ; $55F4: $03
    nop                                           ; $55F5: $00
    rlca                                          ; $55F6: $07
    inc bc                                        ; $55F7: $03
    rrca                                          ; $55F8: $0F
    rlca                                          ; $55F9: $07
    rrca                                          ; $55FA: $0F
    rlca                                          ; $55FB: $07
    rra                                           ; $55FC: $1F
    rrca                                          ; $55FD: $0F
    rra                                           ; $55FE: $1F
    rrca                                          ; $55FF: $0F
    nop                                           ; $5600: $00
    nop                                           ; $5601: $00

jr_00C_5602:
    nop                                           ; $5602: $00
    nop                                           ; $5603: $00

jr_00C_5604:
    ld hl, sp+$00                                 ; $5604: $F8 $00
    db $FC                                        ; $5606: $FC
    ld hl, sp-$02                                 ; $5607: $F8 $FE
    db $FC                                        ; $5609: $FC
    cp $FC                                        ; $560A: $FE $FC
    cp $F4                                        ; $560C: $FE $F4
    cp $E4                                        ; $560E: $FE $E4
    db $FC                                        ; $5610: $FC
    ld hl, sp-$04                                 ; $5611: $F8 $FC

jr_00C_5613:
    ld hl, sp-$08                                 ; $5613: $F8 $F8
    ldh a, [$F0]                                  ; $5615: $F0 $F0
    ldh [$F0], a                                  ; $5617: $E0 $F0
    ret nz                                        ; $5619: $C0

    ret nc                                        ; $561A: $D0

    and b                                         ; $561B: $A0
    ret z                                         ; $561C: $C8

    jr nc, @-$36                                  ; $561D: $30 $C8

    jr nc, jr_00C_5640                            ; $561F: $30 $1F

    rrca                                          ; $5621: $0F
    rrca                                          ; $5622: $0F
    rlca                                          ; $5623: $07
    rrca                                          ; $5624: $0F
    rlca                                          ; $5625: $07
    rlca                                          ; $5626: $07
    inc bc                                        ; $5627: $03
    inc bc                                        ; $5628: $03
    ld bc, $0001                                  ; $5629: $01 $01 $00
    inc bc                                        ; $562C: $03
    nop                                           ; $562D: $00
    inc bc                                        ; $562E: $03
    nop                                           ; $562F: $00
    db $EC                                        ; $5630: $EC
    ret nc                                        ; $5631: $D0

    ld hl, sp-$20                                 ; $5632: $F8 $E0
    ld hl, sp-$10                                 ; $5634: $F8 $F0
    ldh a, [$80]                                  ; $5636: $F0 $80
    and b                                         ; $5638: $A0
    ld b, b                                       ; $5639: $40
    sub b                                         ; $563A: $90
    ld h, b                                       ; $563B: $60
    sub b                                         ; $563C: $90
    ld h, b                                       ; $563D: $60
    ldh [rP1], a                                  ; $563E: $E0 $00

jr_00C_5640:
    jr nc, jr_00C_5602                            ; $5640: $30 $C0

    jr nz, jr_00C_5604                            ; $5642: $20 $C0

    ldh [rP1], a                                  ; $5644: $E0 $00
    ldh [rLCDC], a                                ; $5646: $E0 $40
    ld hl, sp+$40                                 ; $5648: $F8 $40
    db $E4                                        ; $564A: $E4
    jr jr_00C_55D9                                ; $564B: $18 $8C

jr_00C_564D:
    ld [hl], b                                    ; $564D: $70
    ld hl, sp+$00                                 ; $564E: $F8 $00
    adc b                                         ; $5650: $88
    ld [hl], b                                    ; $5651: $70
    add sp, $10                                   ; $5652: $E8 $10
    ld hl, sp+$40                                 ; $5654: $F8 $40
    ld hl, sp+$50                                 ; $5656: $F8 $50
    cp $10                                        ; $5658: $FE $10
    cp c                                          ; $565A: $B9
    ld b, [hl]                                    ; $565B: $46
    db $E3                                        ; $565C: $E3
    inc e                                         ; $565D: $1C
    ld a, $00                                     ; $565E: $3E $00
    dec a                                         ; $5660: $3D
    ld a, [bc]                                    ; $5661: $0A
    ld a, [hl+]                                   ; $5662: $2A

jr_00C_5663:
    dec d                                         ; $5663: $15
    ld a, [hl-]                                   ; $5664: $3A
    dec b                                         ; $5665: $05
    inc a                                         ; $5666: $3C
    inc de                                        ; $5667: $13
    rra                                           ; $5668: $1F
    nop                                           ; $5669: $00
    dec bc                                        ; $566A: $0B
    inc b                                         ; $566B: $04
    add hl, bc                                    ; $566C: $09
    ld b, $09                                     ; $566D: $06 $09
    ld b, $3C                                     ; $566F: $06 $3C
    ret c                                         ; $5671: $D8

    ld e, h                                       ; $5672: $5C

jr_00C_5673:
    xor b                                         ; $5673: $A8
    ld e, h                                       ; $5674: $5C
    and b                                         ; $5675: $A0
    inc a                                         ; $5676: $3C
    ret z                                         ; $5677: $C8

    ld hl, sp+$00                                 ; $5678: $F8 $00
    ret nc                                        ; $567A: $D0

    jr nz, jr_00C_564D                            ; $567B: $20 $D0

    jr nz, @-$2E                                  ; $567D: $20 $D0

    jr nz, jr_00C_5663                            ; $567F: $20 $E2

    inc e                                         ; $5681: $1C
    ld b, d                                       ; $5682: $42
    inc a                                         ; $5683: $3C
    ld a, d                                       ; $5684: $7A
    inc b                                         ; $5685: $04
    ld a, [hl]                                    ; $5686: $7E
    jr z, @+$7B                                   ; $5687: $28 $79

    ld h, $71                                     ; $5689: $26 $71
    ld c, $52                                     ; $568B: $0E $52
    inc l                                         ; $568D: $2C
    ld a, $00                                     ; $568E: $3E $00
    ccf                                           ; $5690: $3F
    rra                                           ; $5691: $1F
    ccf                                           ; $5692: $3F
    rra                                           ; $5693: $1F
    ccf                                           ; $5694: $3F
    rra                                           ; $5695: $1F
    rra                                           ; $5696: $1F
    rrca                                          ; $5697: $0F
    rrca                                          ; $5698: $0F
    rlca                                          ; $5699: $07
    rrca                                          ; $569A: $0F
    inc bc                                        ; $569B: $03
    dec bc                                        ; $569C: $0B
    dec b                                         ; $569D: $05
    add hl, bc                                    ; $569E: $09
    ld b, $FC                                     ; $569F: $06 $FC
    ld hl, sp-$04                                 ; $56A1: $F8 $FC
    ld hl, sp-$04                                 ; $56A3: $F8 $FC
    ld hl, sp-$08                                 ; $56A5: $F8 $F8
    ldh a, [$F0]                                  ; $56A7: $F0 $F0
    ldh [$F0], a                                  ; $56A9: $E0 $F0
    ret nz                                        ; $56AB: $C0

    ret nc                                        ; $56AC: $D0

    and b                                         ; $56AD: $A0
    ret nc                                        ; $56AE: $D0

    jr nz, jr_00C_5673                            ; $56AF: $20 $C2

    inc a                                         ; $56B1: $3C
    ld c, [hl]                                    ; $56B2: $4E
    jr nc, jr_00C_5731                            ; $56B3: $30 $7C

    ld [$207C], sp                                ; $56B5: $08 $7C $20
    inc h                                         ; $56B8: $24
    jr jr_00C_56DD                                ; $56B9: $18 $22

    inc e                                         ; $56BB: $1C
    ld d, d                                       ; $56BC: $52
    inc l                                         ; $56BD: $2C

jr_00C_56BE:
    ld a, [hl]                                    ; $56BE: $7E
    nop                                           ; $56BF: $00

jr_00C_56C0:
    nop                                           ; $56C0: $00
    nop                                           ; $56C1: $00
    nop                                           ; $56C2: $00
    nop                                           ; $56C3: $00
    rrca                                          ; $56C4: $0F
    nop                                           ; $56C5: $00
    rra                                           ; $56C6: $1F
    rrca                                          ; $56C7: $0F
    ccf                                           ; $56C8: $3F
    rra                                           ; $56C9: $1F
    ld a, a                                       ; $56CA: $7F
    ccf                                           ; $56CB: $3F
    ld a, a                                       ; $56CC: $7F
    ccf                                           ; $56CD: $3F
    ld a, a                                       ; $56CE: $7F
    add hl, sp                                    ; $56CF: $39
    nop                                           ; $56D0: $00
    nop                                           ; $56D1: $00
    nop                                           ; $56D2: $00
    nop                                           ; $56D3: $00
    ldh [rP1], a                                  ; $56D4: $E0 $00
    ldh a, [$E0]                                  ; $56D6: $F0 $E0
    ld hl, sp-$10                                 ; $56D8: $F8 $F0
    db $FC                                        ; $56DA: $FC
    ld hl, sp-$04                                 ; $56DB: $F8 $FC

jr_00C_56DD:
    xor b                                         ; $56DD: $A8
    cp b                                          ; $56DE: $B8
    ld b, b                                       ; $56DF: $40
    ld a, a                                       ; $56E0: $7F
    add hl, sp                                    ; $56E1: $39
    ld a, c                                       ; $56E2: $79
    ld [hl], $7E                                  ; $56E3: $36 $7E
    add hl, sp                                    ; $56E5: $39
    ld a, a                                       ; $56E6: $7F
    ld a, $3F                                     ; $56E7: $3E $3F
    inc e                                         ; $56E9: $1C
    ld a, $19                                     ; $56EA: $3E $19
    rra                                           ; $56EC: $1F
    ld [$0007], sp                                ; $56ED: $08 $07 $00
    cp b                                          ; $56F0: $B8
    ld b, b                                       ; $56F1: $40
    ld d, b                                       ; $56F2: $50
    and b                                         ; $56F3: $A0
    ld d, b                                       ; $56F4: $50
    and b                                         ; $56F5: $A0
    db $10                                        ; $56F6: $10
    ldh [$E0], a                                  ; $56F7: $E0 $E0
    nop                                           ; $56F9: $00
    ret nz                                        ; $56FA: $C0

    nop                                           ; $56FB: $00
    jr nz, jr_00C_56BE                            ; $56FC: $20 $C0

    jr nz, jr_00C_56C0                            ; $56FE: $20 $C0

    ld a, c                                       ; $5700: $79
    ld [hl], $7E                                  ; $5701: $36 $7E
    add hl, sp                                    ; $5703: $39
    ld a, a                                       ; $5704: $7F
    ld a, $3F                                     ; $5705: $3E $3F
    jr jr_00C_5727                                ; $5707: $18 $1E

    dec c                                         ; $5709: $0D
    ld c, $05                                     ; $570A: $0E $05
    inc b                                         ; $570C: $04
    inc bc                                        ; $570D: $03
    inc b                                         ; $570E: $04
    inc bc                                        ; $570F: $03
    ld d, b                                       ; $5710: $50
    and b                                         ; $5711: $A0
    ld d, b                                       ; $5712: $50
    and b                                         ; $5713: $A0
    db $10                                        ; $5714: $10
    ldh [$E0], a                                  ; $5715: $E0 $E0
    nop                                           ; $5717: $00
    add b                                         ; $5718: $80
    nop                                           ; $5719: $00
    add b                                         ; $571A: $80
    nop                                           ; $571B: $00
    add b                                         ; $571C: $80
    nop                                           ; $571D: $00
    add b                                         ; $571E: $80
    nop                                           ; $571F: $00
    ld a, a                                       ; $5720: $7F
    add hl, sp                                    ; $5721: $39
    ld a, c                                       ; $5722: $79
    ld [hl], $7E                                  ; $5723: $36 $7E
    add hl, sp                                    ; $5725: $39
    ld a, a                                       ; $5726: $7F

jr_00C_5727:
    ld a, $3F                                     ; $5727: $3E $3F
    inc e                                         ; $5729: $1C
    ld a, $19                                     ; $572A: $3E $19
    add hl, de                                    ; $572C: $19
    ld b, $09                                     ; $572D: $06 $09
    ld b, $B8                                     ; $572F: $06 $B8

jr_00C_5731:
    ld b, b                                       ; $5731: $40
    ld d, b                                       ; $5732: $50
    and b                                         ; $5733: $A0
    ld d, b                                       ; $5734: $50
    and b                                         ; $5735: $A0
    db $10                                        ; $5736: $10
    ldh [$E0], a                                  ; $5737: $E0 $E0
    nop                                           ; $5739: $00
    ret nz                                        ; $573A: $C0

    nop                                           ; $573B: $00
    and b                                         ; $573C: $A0

jr_00C_573D:
    ld b, b                                       ; $573D: $40
    and b                                         ; $573E: $A0
    ld b, b                                       ; $573F: $40
    inc b                                         ; $5740: $04
    inc bc                                        ; $5741: $03
    ld [bc], a                                    ; $5742: $02
    ld bc, $000F                                  ; $5743: $01 $0F $00
    ccf                                           ; $5746: $3F
    inc b                                         ; $5747: $04
    ld e, a                                       ; $5748: $5F
    jr z, jr_00C_5794                             ; $5749: $28 $49

    ld [hl], $61                                  ; $574B: $36 $61
    ld e, $7F                                     ; $574D: $1E $7F
    nop                                           ; $574F: $00
    ret nz                                        ; $5750: $C0

    nop                                           ; $5751: $00
    add b                                         ; $5752: $80
    nop                                           ; $5753: $00
    ldh a, [rP1]                                  ; $5754: $F0 $00
    ret z                                         ; $5756: $C8

    or b                                          ; $5757: $B0
    adc b                                         ; $5758: $88
    ld [hl], b                                    ; $5759: $70
    db $10                                        ; $575A: $10
    ldh [$30], a                                  ; $575B: $E0 $30
    ret nz                                        ; $575D: $C0

    ldh [rP1], a                                  ; $575E: $E0 $00
    ld a, b                                       ; $5760: $78
    nop                                           ; $5761: $00
    jr z, @+$12                                   ; $5762: $28 $10

    jr c, jr_00C_5766                             ; $5764: $38 $00

jr_00C_5766:
    inc a                                         ; $5766: $3C
    db $10                                        ; $5767: $10
    ld a, $00                                     ; $5768: $3E $00
    ld b, e                                       ; $576A: $43
    inc a                                         ; $576B: $3C
    pop bc                                        ; $576C: $C1
    ld a, $7F                                     ; $576D: $3E $7F
    nop                                           ; $576F: $00
    rlca                                          ; $5770: $07
    nop                                           ; $5771: $00
    ld [bc], a                                    ; $5772: $02
    ld bc, $0007                                  ; $5773: $01 $07 $00
    rrca                                          ; $5776: $0F
    ld [bc], a                                    ; $5777: $02
    rra                                           ; $5778: $1F
    nop                                           ; $5779: $00
    jr z, jr_00C_5793                             ; $577A: $28 $17

    jr nc, jr_00C_578D                            ; $577C: $30 $0F

    rra                                           ; $577E: $1F
    nop                                           ; $577F: $00
    ret nz                                        ; $5780: $C0

    nop                                           ; $5781: $00
    ret nz                                        ; $5782: $C0

    nop                                           ; $5783: $00
    ld hl, sp+$00                                 ; $5784: $F8 $00
    db $E4                                        ; $5786: $E4
    ld e, b                                       ; $5787: $58
    call nz, $8838                                ; $5788: $C4 $38 $88
    ld [hl], b                                    ; $578B: $70
    sbc b                                         ; $578C: $98

jr_00C_578D:
    ld h, b                                       ; $578D: $60
    ldh [rP1], a                                  ; $578E: $E0 $00
    dec a                                         ; $5790: $3D
    ld a, [bc]                                    ; $5791: $0A
    ld a, [hl+]                                   ; $5792: $2A

jr_00C_5793:
    dec d                                         ; $5793: $15

jr_00C_5794:
    ld a, [hl-]                                   ; $5794: $3A
    dec b                                         ; $5795: $05
    inc a                                         ; $5796: $3C
    inc de                                        ; $5797: $13
    rra                                           ; $5798: $1F
    nop                                           ; $5799: $00
    dec bc                                        ; $579A: $0B
    inc b                                         ; $579B: $04
    dec bc                                        ; $579C: $0B
    inc b                                         ; $579D: $04
    dec bc                                        ; $579E: $0B
    inc b                                         ; $579F: $04
    inc a                                         ; $57A0: $3C
    ret c                                         ; $57A1: $D8

    ld e, h                                       ; $57A2: $5C
    xor b                                         ; $57A3: $A8
    ld e, h                                       ; $57A4: $5C
    and b                                         ; $57A5: $A0
    inc a                                         ; $57A6: $3C
    ret z                                         ; $57A7: $C8

    ld hl, sp+$00                                 ; $57A8: $F8 $00
    ret nc                                        ; $57AA: $D0

    jr nz, jr_00C_573D                            ; $57AB: $20 $90

    ld h, b                                       ; $57AD: $60
    sub b                                         ; $57AE: $90
    ld h, b                                       ; $57AF: $60
    nop                                           ; $57B0: $00
    nop                                           ; $57B1: $00
    nop                                           ; $57B2: $00
    nop                                           ; $57B3: $00
    ccf                                           ; $57B4: $3F
    nop                                           ; $57B5: $00
    rst $38                                       ; $57B6: $FF
    nop                                           ; $57B7: $00
    ld a, a                                       ; $57B8: $7F
    inc bc                                        ; $57B9: $03
    ld a, a                                       ; $57BA: $7F
    rlca                                          ; $57BB: $07
    rst $38                                       ; $57BC: $FF
    inc c                                         ; $57BD: $0C
    db $FC                                        ; $57BE: $FC
    ld c, e                                       ; $57BF: $4B
    nop                                           ; $57C0: $00
    nop                                           ; $57C1: $00
    nop                                           ; $57C2: $00
    nop                                           ; $57C3: $00
    ret nz                                        ; $57C4: $C0

    nop                                           ; $57C5: $00
    ldh a, [rP1]                                  ; $57C6: $F0 $00
    ld hl, sp-$20                                 ; $57C8: $F8 $E0
    ld hl, sp-$10                                 ; $57CA: $F8 $F0
    db $FC                                        ; $57CC: $FC
    cp b                                          ; $57CD: $B8
    cp h                                          ; $57CE: $BC
    ld e, b                                       ; $57CF: $58
    nop                                           ; $57D0: $00
    nop                                           ; $57D1: $00
    nop                                           ; $57D2: $00
    nop                                           ; $57D3: $00
    rlca                                          ; $57D4: $07
    nop                                           ; $57D5: $00

jr_00C_57D6:
    rrca                                          ; $57D6: $0F
    inc bc                                        ; $57D7: $03
    rra                                           ; $57D8: $1F
    rlca                                          ; $57D9: $07
    ccf                                           ; $57DA: $3F
    rrca                                          ; $57DB: $0F
    ccf                                           ; $57DC: $3F
    dec c                                         ; $57DD: $0D
    dec a                                         ; $57DE: $3D
    ld a, [bc]                                    ; $57DF: $0A
    nop                                           ; $57E0: $00
    nop                                           ; $57E1: $00
    nop                                           ; $57E2: $00
    nop                                           ; $57E3: $00
    ldh [rP1], a                                  ; $57E4: $E0 $00
    ldh a, [$C0]                                  ; $57E6: $F0 $C0
    ld hl, sp-$20                                 ; $57E8: $F8 $E0
    db $FC                                        ; $57EA: $FC

jr_00C_57EB:
    ld [hl], b                                    ; $57EB: $70
    db $FC                                        ; $57EC: $FC

jr_00C_57ED:
    jr nc, jr_00C_582B                            ; $57ED: $30 $3C

    ret nc                                        ; $57EF: $D0

    ld [$7A55], a                                 ; $57F0: $EA $55 $7A
    dec h                                         ; $57F3: $25
    ld a, h                                       ; $57F4: $7C
    dec sp                                        ; $57F5: $3B
    ccf                                           ; $57F6: $3F
    nop                                           ; $57F7: $00
    dec bc                                        ; $57F8: $0B
    inc b                                         ; $57F9: $04
    inc de                                        ; $57FA: $13
    inc c                                         ; $57FB: $0C
    inc de                                        ; $57FC: $13
    inc c                                         ; $57FD: $0C
    rrca                                          ; $57FE: $0F
    nop                                           ; $57FF: $00
    ld e, h                                       ; $5800: $5C
    xor b                                         ; $5801: $A8
    ld e, b                                       ; $5802: $58
    and b                                         ; $5803: $A0
    jr c, jr_00C_57D6                             ; $5804: $38 $D0

    ldh a, [rP1]                                  ; $5806: $F0 $00
    ldh [rP1], a                                  ; $5808: $E0 $00
    ret nc                                        ; $580A: $D0

    jr nz, jr_00C_57ED                            ; $580B: $20 $E0

    nop                                           ; $580D: $00
    ret nz                                        ; $580E: $C0

    nop                                           ; $580F: $00
    ld d, h                                       ; $5810: $54
    xor b                                         ; $5811: $A8
    ld e, h                                       ; $5812: $5C
    and b                                         ; $5813: $A0
    inc a                                         ; $5814: $3C
    ret z                                         ; $5815: $C8

    ld hl, sp+$00                                 ; $5816: $F8 $00
    ret nc                                        ; $5818: $D0

    jr nz, jr_00C_57EB                            ; $5819: $20 $D0

    jr nz, @-$36                                  ; $581B: $20 $C8

    jr nc, @-$36                                  ; $581D: $30 $C8

    jr nc, jr_00C_5830                            ; $581F: $30 $0F

    rlca                                          ; $5821: $07
    rlca                                          ; $5822: $07
    inc bc                                        ; $5823: $03
    rlca                                          ; $5824: $07
    inc bc                                        ; $5825: $03
    rlca                                          ; $5826: $07
    inc bc                                        ; $5827: $03
    rrca                                          ; $5828: $0F
    ld b, $0F                                     ; $5829: $06 $0F

jr_00C_582B:
    ld bc, $0F1F                                  ; $582B: $01 $1F $0F
    rrca                                          ; $582E: $0F
    nop                                           ; $582F: $00

jr_00C_5830:
    ret nz                                        ; $5830: $C0

    add b                                         ; $5831: $80
    ret nz                                        ; $5832: $C0

    add b                                         ; $5833: $80
    ret nz                                        ; $5834: $C0

    add b                                         ; $5835: $80
    ldh a, [$80]                                  ; $5836: $F0 $80
    ld hl, sp+$30                                 ; $5838: $F8 $30
    ld hl, sp-$50                                 ; $583A: $F8 $B0
    ldh a, [$80]                                  ; $583C: $F0 $80
    ret nz                                        ; $583E: $C0

    nop                                           ; $583F: $00
    ldh a, [$C0]                                  ; $5840: $F0 $C0
    ldh [$C0], a                                  ; $5842: $E0 $C0
    ldh [$C0], a                                  ; $5844: $E0 $C0
    ldh a, [$C0]                                  ; $5846: $F0 $C0
    ld hl, sp+$30                                 ; $5848: $F8 $30
    db $FC                                        ; $584A: $FC
    ld a, b                                       ; $584B: $78
    db $FC                                        ; $584C: $FC
    jr c, @-$06                                   ; $584D: $38 $F8

    nop                                           ; $584F: $00
    nop                                           ; $5850: $00
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00
    rlca                                          ; $5854: $07
    nop                                           ; $5855: $00
    rrca                                          ; $5856: $0F
    nop                                           ; $5857: $00
    rra                                           ; $5858: $1F
    ld [bc], a                                    ; $5859: $02
    ccf                                           ; $585A: $3F
    rlca                                          ; $585B: $07
    ccf                                           ; $585C: $3F
    rrca                                          ; $585D: $0F
    rra                                           ; $585E: $1F
    rrca                                          ; $585F: $0F
    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
    nop                                           ; $5863: $00
    ldh [rP1], a                                  ; $5864: $E0 $00
    ldh a, [rP1]                                  ; $5866: $F0 $00
    ld hl, sp+$40                                 ; $5868: $F8 $40
    db $FC                                        ; $586A: $FC

jr_00C_586B:
    ld h, b                                       ; $586B: $60
    db $FC                                        ; $586C: $FC
    ldh a, [$F8]                                  ; $586D: $F0 $F8
    ldh a, [rP1]                                  ; $586F: $F0 $00
    nop                                           ; $5871: $00
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    rrca                                          ; $5874: $0F
    nop                                           ; $5875: $00
    rlca                                          ; $5876: $07
    nop                                           ; $5877: $00
    rrca                                          ; $5878: $0F
    inc bc                                        ; $5879: $03
    rrca                                          ; $587A: $0F
    rlca                                          ; $587B: $07
    rrca                                          ; $587C: $0F
    rlca                                          ; $587D: $07
    rra                                           ; $587E: $1F
    rrca                                          ; $587F: $0F
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
    nop                                           ; $5883: $00
    ld hl, sp+$00                                 ; $5884: $F8 $00
    db $FC                                        ; $5886: $FC
    ld [$84FE], sp                                ; $5887: $08 $FE $84
    cp $C4                                        ; $588A: $FE $C4
    cp $E4                                        ; $588C: $FE $E4
    cp $E4                                        ; $588E: $FE $E4
    db $F4                                        ; $5890: $F4
    add sp, -$04                                  ; $5891: $E8 $FC
    ldh a, [$F8]                                  ; $5893: $F0 $F8
    ldh [$F0], a                                  ; $5895: $E0 $F0
    nop                                           ; $5897: $00
    ret nc                                        ; $5898: $D0

    jr nz, jr_00C_586B                            ; $5899: $20 $D0

    jr nz, @-$36                                  ; $589B: $20 $C8

    jr nc, @-$36                                  ; $589D: $30 $C8

    jr nc, jr_00C_58C0                            ; $589F: $30 $1F

    rrca                                          ; $58A1: $0F
    rrca                                          ; $58A2: $0F
    rlca                                          ; $58A3: $07
    rlca                                          ; $58A4: $07
    inc bc                                        ; $58A5: $03
    inc bc                                        ; $58A6: $03
    nop                                           ; $58A7: $00
    ld bc, $0100                                  ; $58A8: $01 $00 $01
    nop                                           ; $58AB: $00
    inc bc                                        ; $58AC: $03
    nop                                           ; $58AD: $00
    inc bc                                        ; $58AE: $03
    nop                                           ; $58AF: $00
    db $EC                                        ; $58B0: $EC
    ret nc                                        ; $58B1: $D0

    ld hl, sp-$20                                 ; $58B2: $F8 $E0
    ld hl, sp-$10                                 ; $58B4: $F8 $F0
    ldh a, [rP1]                                  ; $58B6: $F0 $00
    or b                                          ; $58B8: $B0
    ld b, b                                       ; $58B9: $40
    sub b                                         ; $58BA: $90
    ld h, b                                       ; $58BB: $60
    sub b                                         ; $58BC: $90

jr_00C_58BD:
    ld h, b                                       ; $58BD: $60
    ldh [rP1], a                                  ; $58BE: $E0 $00

jr_00C_58C0:
    ldh a, [$C0]                                  ; $58C0: $F0 $C0
    ldh [$C0], a                                  ; $58C2: $E0 $C0
    ldh [$C0], a                                  ; $58C4: $E0 $C0
    ldh [$C0], a                                  ; $58C6: $E0 $C0
    ld hl, sp-$40                                 ; $58C8: $F8 $C0
    db $FC                                        ; $58CA: $FC
    jr @-$02                                      ; $58CB: $18 $FC

    ld [hl], b                                    ; $58CD: $70
    ld hl, sp+$00                                 ; $58CE: $F8 $00
    dec a                                         ; $58D0: $3D
    ld a, [bc]                                    ; $58D1: $0A
    ld a, [hl+]                                   ; $58D2: $2A
    dec d                                         ; $58D3: $15
    ld a, [hl-]                                   ; $58D4: $3A
    dec b                                         ; $58D5: $05
    inc a                                         ; $58D6: $3C
    inc de                                        ; $58D7: $13
    rra                                           ; $58D8: $1F
    nop                                           ; $58D9: $00
    dec bc                                        ; $58DA: $0B
    inc b                                         ; $58DB: $04
    add hl, bc                                    ; $58DC: $09
    ld b, $09                                     ; $58DD: $06 $09
    ld b, $3C                                     ; $58DF: $06 $3C
    ret nc                                        ; $58E1: $D0

    ld d, h                                       ; $58E2: $54
    xor b                                         ; $58E3: $A8
    ld e, h                                       ; $58E4: $5C
    and b                                         ; $58E5: $A0
    inc a                                         ; $58E6: $3C
    ret z                                         ; $58E7: $C8

    ld hl, sp+$00                                 ; $58E8: $F8 $00
    ret nc                                        ; $58EA: $D0

    jr nz, jr_00C_58BD                            ; $58EB: $20 $D0

    jr nz, @-$2E                                  ; $58ED: $20 $D0

jr_00C_58EF:
    jr nz, jr_00C_58EF                            ; $58EF: $20 $FE

    nop                                           ; $58F1: $00
    ld a, [hl]                                    ; $58F2: $7E
    inc e                                         ; $58F3: $1C
    ld a, [hl]                                    ; $58F4: $7E
    jr c, @+$80                                   ; $58F5: $38 $7E

    jr c, jr_00C_5978                             ; $58F7: $38 $7F

    ld [hl], $7F                                  ; $58F9: $36 $7F
    ld c, $7E                                     ; $58FB: $0E $7E
    inc l                                         ; $58FD: $2C
    ld a, $00                                     ; $58FE: $3E $00
    rra                                           ; $5900: $1F
    rrca                                          ; $5901: $0F
    cpl                                           ; $5902: $2F
    rla                                           ; $5903: $17
    ccf                                           ; $5904: $3F
    rrca                                          ; $5905: $0F
    rra                                           ; $5906: $1F

jr_00C_5907:
    rlca                                          ; $5907: $07
    rrca                                          ; $5908: $0F
    nop                                           ; $5909: $00
    dec bc                                        ; $590A: $0B
    inc b                                         ; $590B: $04
    add hl, bc                                    ; $590C: $09
    ld b, $09                                     ; $590D: $06 $09
    ld b, $F8                                     ; $590F: $06 $F8
    ldh a, [$F4]                                  ; $5911: $F0 $F4
    add sp, -$04                                  ; $5913: $E8 $FC
    ldh a, [$F8]                                  ; $5915: $F0 $F8
    ldh [$F0], a                                  ; $5917: $E0 $F0
    nop                                           ; $5919: $00
    ldh [rP1], a                                  ; $591A: $E0 $00
    ret nc                                        ; $591C: $D0

    jr nz, jr_00C_58EF                            ; $591D: $20 $D0

    jr nz, @+$81                                  ; $591F: $20 $7F

    ld c, $3F                                     ; $5921: $0E $3F
    inc e                                         ; $5923: $1C
    ld a, $1C                                     ; $5924: $3E $1C
    ld a, $10                                     ; $5926: $3E $10
    ld e, $0C                                     ; $5928: $1E $0C
    rra                                           ; $592A: $1F
    ld c, $3F                                     ; $592B: $0E $3F
    ld d, $3F                                     ; $592D: $16 $3F
    nop                                           ; $592F: $00
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    nop                                           ; $5932: $00
    nop                                           ; $5933: $00
    rst $38                                       ; $5934: $FF
    nop                                           ; $5935: $00
    ld a, a                                       ; $5936: $7F
    nop                                           ; $5937: $00
    ccf                                           ; $5938: $3F
    db $10                                        ; $5939: $10
    ccf                                           ; $593A: $3F
    db $10                                        ; $593B: $10
    ld a, a                                       ; $593C: $7F
    jr c, @+$81                                   ; $593D: $38 $7F

    jr c, jr_00C_5941                             ; $593F: $38 $00

jr_00C_5941:
    nop                                           ; $5941: $00
    nop                                           ; $5942: $00
    nop                                           ; $5943: $00
    ldh [rP1], a                                  ; $5944: $E0 $00
    ldh a, [rP1]                                  ; $5946: $F0 $00
    ld hl, sp+$30                                 ; $5948: $F8 $30
    db $FC                                        ; $594A: $FC
    ld a, b                                       ; $594B: $78
    db $FC                                        ; $594C: $FC
    jr z, jr_00C_5907                             ; $594D: $28 $B8

    ld b, b                                       ; $594F: $40
    ld a, a                                       ; $5950: $7F
    jr c, jr_00C_598C                             ; $5951: $38 $39

    ld d, $1E                                     ; $5953: $16 $1E
    add hl, bc                                    ; $5955: $09
    rrca                                          ; $5956: $0F
    ld b, $0F                                     ; $5957: $06 $0F
    nop                                           ; $5959: $00
    rrca                                          ; $595A: $0F
    nop                                           ; $595B: $00
    dec bc                                        ; $595C: $0B
    inc b                                         ; $595D: $04
    dec bc                                        ; $595E: $0B
    inc b                                         ; $595F: $04
    cp b                                          ; $5960: $B8
    ld b, b                                       ; $5961: $40
    ld d, b                                       ; $5962: $50
    and b                                         ; $5963: $A0
    ld d, b                                       ; $5964: $50
    and b                                         ; $5965: $A0
    db $10                                        ; $5966: $10
    ldh [$E0], a                                  ; $5967: $E0 $E0
    nop                                           ; $5969: $00
    ld [hl], b                                    ; $596A: $70
    add b                                         ; $596B: $80
    sub b                                         ; $596C: $90
    ld h, b                                       ; $596D: $60
    sub b                                         ; $596E: $90
    ld h, b                                       ; $596F: $60
    add hl, sp                                    ; $5970: $39
    ld d, $1E                                     ; $5971: $16 $1E
    ld bc, $0E1F                                  ; $5973: $01 $1F $0E
    rrca                                          ; $5976: $0F
    nop                                           ; $5977: $00

jr_00C_5978:
    ld [bc], a                                    ; $5978: $02
    ld bc, $0102                                  ; $5979: $01 $02 $01
    inc b                                         ; $597C: $04
    inc bc                                        ; $597D: $03
    inc b                                         ; $597E: $04
    inc bc                                        ; $597F: $03
    ld d, b                                       ; $5980: $50
    and b                                         ; $5981: $A0
    ld d, b                                       ; $5982: $50
    and b                                         ; $5983: $A0
    db $10                                        ; $5984: $10
    ldh [$E0], a                                  ; $5985: $E0 $E0
    nop                                           ; $5987: $00
    ret nz                                        ; $5988: $C0

    nop                                           ; $5989: $00
    add b                                         ; $598A: $80
    nop                                           ; $598B: $00

jr_00C_598C:
    add b                                         ; $598C: $80
    nop                                           ; $598D: $00
    add b                                         ; $598E: $80
    nop                                           ; $598F: $00
    ld a, a                                       ; $5990: $7F
    jr c, jr_00C_59CC                             ; $5991: $38 $39

    ld d, $1E                                     ; $5993: $16 $1E
    add hl, bc                                    ; $5995: $09
    rrca                                          ; $5996: $0F
    ld b, $0F                                     ; $5997: $06 $0F
    nop                                           ; $5999: $00
    ld c, $01                                     ; $599A: $0E $01
    add hl, bc                                    ; $599C: $09
    ld b, $09                                     ; $599D: $06 $09
    ld b, $B8                                     ; $599F: $06 $B8
    ld b, b                                       ; $59A1: $40
    ld d, b                                       ; $59A2: $50
    and b                                         ; $59A3: $A0
    ld d, b                                       ; $59A4: $50
    and b                                         ; $59A5: $A0
    db $10                                        ; $59A6: $10
    ldh [$E0], a                                  ; $59A7: $E0 $E0
    nop                                           ; $59A9: $00
    ret nz                                        ; $59AA: $C0

    nop                                           ; $59AB: $00
    and b                                         ; $59AC: $A0

jr_00C_59AD:
    ld b, b                                       ; $59AD: $40
    and b                                         ; $59AE: $A0
    ld b, b                                       ; $59AF: $40
    rlca                                          ; $59B0: $07
    inc bc                                        ; $59B1: $03
    inc bc                                        ; $59B2: $03
    ld bc, $030F                                  ; $59B3: $01 $0F $03
    ccf                                           ; $59B6: $3F
    rrca                                          ; $59B7: $0F
    ld a, a                                       ; $59B8: $7F
    jr z, jr_00C_5A3A                             ; $59B9: $28 $7F

    ld [hl], $7F                                  ; $59BB: $36 $7F
    ld e, $7F                                     ; $59BD: $1E $7F
    nop                                           ; $59BF: $00
    ldh [rP1], a                                  ; $59C0: $E0 $00
    add b                                         ; $59C2: $80
    nop                                           ; $59C3: $00
    ldh a, [$80]                                  ; $59C4: $F0 $80
    ld hl, sp-$50                                 ; $59C6: $F8 $B0
    ld hl, sp+$70                                 ; $59C8: $F8 $70
    ldh a, [$E0]                                  ; $59CA: $F0 $E0

jr_00C_59CC:
    ldh a, [$C0]                                  ; $59CC: $F0 $C0
    ldh [rP1], a                                  ; $59CE: $E0 $00
    ld a, b                                       ; $59D0: $78
    nop                                           ; $59D1: $00
    jr c, jr_00C_59E4                             ; $59D2: $38 $10

    ld a, b                                       ; $59D4: $78
    jr nc, @+$7E                                  ; $59D5: $30 $7C

    jr nc, @+$80                                  ; $59D7: $30 $7E

    nop                                           ; $59D9: $00
    ld a, a                                       ; $59DA: $7F
    inc a                                         ; $59DB: $3C
    rst $38                                       ; $59DC: $FF
    ld a, $7F                                     ; $59DD: $3E $7F
    nop                                           ; $59DF: $00
    rlca                                          ; $59E0: $07
    ld bc, $0103                                  ; $59E1: $01 $03 $01

jr_00C_59E4:
    rlca                                          ; $59E4: $07
    inc bc                                        ; $59E5: $03
    rrca                                          ; $59E6: $0F
    rlca                                          ; $59E7: $07
    rra                                           ; $59E8: $1F
    nop                                           ; $59E9: $00
    ccf                                           ; $59EA: $3F
    rla                                           ; $59EB: $17
    ccf                                           ; $59EC: $3F
    rrca                                          ; $59ED: $0F
    rra                                           ; $59EE: $1F
    nop                                           ; $59EF: $00
    ret nz                                        ; $59F0: $C0

    nop                                           ; $59F1: $00
    ret nz                                        ; $59F2: $C0

jr_00C_59F3:
    add b                                         ; $59F3: $80
    ld hl, sp-$40                                 ; $59F4: $F8 $C0
    db $FC                                        ; $59F6: $FC
    ret c                                         ; $59F7: $D8

    db $FC                                        ; $59F8: $FC
    jr c, jr_00C_59F3                             ; $59F9: $38 $F8

    ld [hl], b                                    ; $59FB: $70
    ld hl, sp+$60                                 ; $59FC: $F8 $60
    ldh [rP1], a                                  ; $59FE: $E0 $00
    dec a                                         ; $5A00: $3D
    ld a, [bc]                                    ; $5A01: $0A
    ld a, [hl+]                                   ; $5A02: $2A
    dec d                                         ; $5A03: $15
    ld a, [hl-]                                   ; $5A04: $3A
    dec b                                         ; $5A05: $05
    inc a                                         ; $5A06: $3C
    inc de                                        ; $5A07: $13
    rra                                           ; $5A08: $1F
    nop                                           ; $5A09: $00
    dec bc                                        ; $5A0A: $0B
    inc b                                         ; $5A0B: $04
    dec bc                                        ; $5A0C: $0B
    inc b                                         ; $5A0D: $04
    dec bc                                        ; $5A0E: $0B
    inc b                                         ; $5A0F: $04
    inc a                                         ; $5A10: $3C
    ret nc                                        ; $5A11: $D0

    ld d, h                                       ; $5A12: $54
    xor b                                         ; $5A13: $A8
    ld e, h                                       ; $5A14: $5C
    and b                                         ; $5A15: $A0
    inc a                                         ; $5A16: $3C
    ret z                                         ; $5A17: $C8

    ld hl, sp+$00                                 ; $5A18: $F8 $00
    ret nc                                        ; $5A1A: $D0

    jr nz, jr_00C_59AD                            ; $5A1B: $20 $90

    ld h, b                                       ; $5A1D: $60
    sub b                                         ; $5A1E: $90
    ld h, b                                       ; $5A1F: $60
    ld hl, sp+$70                                 ; $5A20: $F8 $70
    ld hl, sp+$70                                 ; $5A22: $F8 $70
    ld hl, sp+$70                                 ; $5A24: $F8 $70
    ld hl, sp+$70                                 ; $5A26: $F8 $70
    cp $30                                        ; $5A28: $FE $30
    rst $38                                       ; $5A2A: $FF
    ld b, [hl]                                    ; $5A2B: $46
    rst $38                                       ; $5A2C: $FF
    inc e                                         ; $5A2D: $1C
    ld a, $00                                     ; $5A2E: $3E $00
    nop                                           ; $5A30: $00
    nop                                           ; $5A31: $00
    nop                                           ; $5A32: $00
    nop                                           ; $5A33: $00
    ld [hl], b                                    ; $5A34: $70
    nop                                           ; $5A35: $00
    rst $38                                       ; $5A36: $FF
    ld [hl], b                                    ; $5A37: $70
    rst $38                                       ; $5A38: $FF
    ld l, a                                       ; $5A39: $6F

jr_00C_5A3A:
    rst $38                                       ; $5A3A: $FF
    ld e, a                                       ; $5A3B: $5F
    ld a, a                                       ; $5A3C: $7F
    ccf                                           ; $5A3D: $3F
    rst $38                                       ; $5A3E: $FF
    ld e, h                                       ; $5A3F: $5C
    nop                                           ; $5A40: $00
    nop                                           ; $5A41: $00
    nop                                           ; $5A42: $00
    nop                                           ; $5A43: $00
    nop                                           ; $5A44: $00
    nop                                           ; $5A45: $00
    ldh [rP1], a                                  ; $5A46: $E0 $00

jr_00C_5A48:
    ldh a, [$E0]                                  ; $5A48: $F0 $E0
    ld hl, sp-$10                                 ; $5A4A: $F8 $F0
    ld hl, sp-$10                                 ; $5A4C: $F8 $F0
    db $FC                                        ; $5A4E: $FC
    cp b                                          ; $5A4F: $B8
    nop                                           ; $5A50: $00
    nop                                           ; $5A51: $00
    ld bc, $0300                                  ; $5A52: $01 $00 $03
    ld bc, $0007                                  ; $5A55: $01 $07 $00
    rrca                                          ; $5A58: $0F
    rlca                                          ; $5A59: $07
    rra                                           ; $5A5A: $1F
    ld c, $1F                                     ; $5A5B: $0E $1F
    rrca                                          ; $5A5D: $0F
    rra                                           ; $5A5E: $1F
    dec c                                         ; $5A5F: $0D
    nop                                           ; $5A60: $00
    nop                                           ; $5A61: $00
    ret nz                                        ; $5A62: $C0

    nop                                           ; $5A63: $00
    ldh [$C0], a                                  ; $5A64: $E0 $C0
    ldh a, [rNR41]                                ; $5A66: $F0 $20

jr_00C_5A68:
    ldh a, [$E0]                                  ; $5A68: $F0 $E0
    ld hl, sp-$10                                 ; $5A6A: $F8 $F0
    ld hl, sp+$70                                 ; $5A6C: $F8 $70
    ld hl, sp+$30                                 ; $5A6E: $F8 $30
    ld a, h                                       ; $5A70: $7C
    dec bc                                        ; $5A71: $0B

jr_00C_5A72:
    ld a, [hl+]                                   ; $5A72: $2A
    dec d                                         ; $5A73: $15
    ld a, [de]                                    ; $5A74: $1A

jr_00C_5A75:
    dec b                                         ; $5A75: $05
    inc b                                         ; $5A76: $04

jr_00C_5A77:
    inc bc                                        ; $5A77: $03
    dec bc                                        ; $5A78: $0B
    inc b                                         ; $5A79: $04
    inc de                                        ; $5A7A: $13
    inc c                                         ; $5A7B: $0C
    inc de                                        ; $5A7C: $13
    inc c                                         ; $5A7D: $0C
    rrca                                          ; $5A7E: $0F
    nop                                           ; $5A7F: $00
    cp h                                          ; $5A80: $BC
    ld e, b                                       ; $5A81: $58
    ld e, h                                       ; $5A82: $5C
    xor b                                         ; $5A83: $A8
    ld e, b                                       ; $5A84: $58
    and b                                         ; $5A85: $A0
    jr nz, jr_00C_5A48                            ; $5A86: $20 $C0

    ldh [rP1], a                                  ; $5A88: $E0 $00
    ret nc                                        ; $5A8A: $D0

    jr nz, @-$1E                                  ; $5A8B: $20 $E0

    nop                                           ; $5A8D: $00
    ret nz                                        ; $5A8E: $C0

    nop                                           ; $5A8F: $00
    dec e                                         ; $5A90: $1D
    ld a, [bc]                                    ; $5A91: $0A
    ld a, [hl+]                                   ; $5A92: $2A
    dec d                                         ; $5A93: $15
    ld a, [de]                                    ; $5A94: $1A
    dec b                                         ; $5A95: $05
    inc c                                         ; $5A96: $0C
    inc bc                                        ; $5A97: $03
    rlca                                          ; $5A98: $07
    nop                                           ; $5A99: $00
    dec bc                                        ; $5A9A: $0B
    inc b                                         ; $5A9B: $04
    inc de                                        ; $5A9C: $13
    inc c                                         ; $5A9D: $0C
    inc de                                        ; $5A9E: $13
    inc c                                         ; $5A9F: $0C
    jr c, jr_00C_5A72                             ; $5AA0: $38 $D0

    ld d, h                                       ; $5AA2: $54
    xor b                                         ; $5AA3: $A8
    ld e, b                                       ; $5AA4: $58
    and b                                         ; $5AA5: $A0
    jr nc, jr_00C_5A68                            ; $5AA6: $30 $C0

    ldh [rP1], a                                  ; $5AA8: $E0 $00
    ret nc                                        ; $5AAA: $D0

    jr nz, jr_00C_5A75                            ; $5AAB: $20 $C8

    jr nc, jr_00C_5A77                            ; $5AAD: $30 $C8

    jr nc, jr_00C_5AC0                            ; $5AAF: $30 $0F

    rlca                                          ; $5AB1: $07
    rlca                                          ; $5AB2: $07
    inc bc                                        ; $5AB3: $03
    rlca                                          ; $5AB4: $07
    inc bc                                        ; $5AB5: $03
    rlca                                          ; $5AB6: $07
    inc bc                                        ; $5AB7: $03
    rrca                                          ; $5AB8: $0F
    ld b, $0F                                     ; $5AB9: $06 $0F
    ld bc, $0F1F                                  ; $5ABB: $01 $1F $0F
    rrca                                          ; $5ABE: $0F
    nop                                           ; $5ABF: $00

jr_00C_5AC0:
    ret nz                                        ; $5AC0: $C0

    add b                                         ; $5AC1: $80
    ret nz                                        ; $5AC2: $C0

    add b                                         ; $5AC3: $80
    ret nz                                        ; $5AC4: $C0

    add b                                         ; $5AC5: $80
    ldh a, [$80]                                  ; $5AC6: $F0 $80
    ld hl, sp+$30                                 ; $5AC8: $F8 $30
    ld hl, sp-$50                                 ; $5ACA: $F8 $B0
    ldh a, [$80]                                  ; $5ACC: $F0 $80
    ret nz                                        ; $5ACE: $C0

    nop                                           ; $5ACF: $00
    ldh a, [$C0]                                  ; $5AD0: $F0 $C0
    ldh [$C0], a                                  ; $5AD2: $E0 $C0
    ldh [$C0], a                                  ; $5AD4: $E0 $C0
    ldh a, [$C0]                                  ; $5AD6: $F0 $C0
    ld hl, sp+$30                                 ; $5AD8: $F8 $30
    db $FC                                        ; $5ADA: $FC
    ld a, b                                       ; $5ADB: $78
    db $FC                                        ; $5ADC: $FC
    jr c, @-$06                                   ; $5ADD: $38 $F8

    nop                                           ; $5ADF: $00
    nop                                           ; $5AE0: $00
    nop                                           ; $5AE1: $00
    nop                                           ; $5AE2: $00
    nop                                           ; $5AE3: $00
    ld bc, $0700                                  ; $5AE4: $01 $00 $07
    ld bc, $050F                                  ; $5AE7: $01 $0F $05
    rra                                           ; $5AEA: $1F
    dec c                                         ; $5AEB: $0D
    rra                                           ; $5AEC: $1F
    dec c                                         ; $5AED: $0D
    rra                                           ; $5AEE: $1F
    ld c, $00                                     ; $5AEF: $0E $00
    nop                                           ; $5AF1: $00
    nop                                           ; $5AF2: $00
    nop                                           ; $5AF3: $00
    ret nz                                        ; $5AF4: $C0

    nop                                           ; $5AF5: $00
    ldh a, [$C0]                                  ; $5AF6: $F0 $C0
    ldh a, [$C0]                                  ; $5AF8: $F0 $C0
    ld hl, sp-$30                                 ; $5AFA: $F8 $D0
    ld hl, sp-$30                                 ; $5AFC: $F8 $D0
    ld hl, sp-$50                                 ; $5AFE: $F8 $B0
    nop                                           ; $5B00: $00
    nop                                           ; $5B01: $00
    nop                                           ; $5B02: $00
    nop                                           ; $5B03: $00
    dec e                                         ; $5B04: $1D
    nop                                           ; $5B05: $00
    ccf                                           ; $5B06: $3F
    dec e                                         ; $5B07: $1D
    ccf                                           ; $5B08: $3F
    dec e                                         ; $5B09: $1D
    ccf                                           ; $5B0A: $3F
    dec de                                        ; $5B0B: $1B
    ccf                                           ; $5B0C: $3F
    dec de                                        ; $5B0D: $1B
    rra                                           ; $5B0E: $1F
    dec bc                                        ; $5B0F: $0B
    nop                                           ; $5B10: $00
    nop                                           ; $5B11: $00
    nop                                           ; $5B12: $00
    nop                                           ; $5B13: $00
    ld hl, sp+$00                                 ; $5B14: $F8 $00
    db $FC                                        ; $5B16: $FC
    ld hl, sp-$02                                 ; $5B17: $F8 $FE
    db $FC                                        ; $5B19: $FC
    cp $FC                                        ; $5B1A: $FE $FC
    cp $F4                                        ; $5B1C: $FE $F4
    cp $E4                                        ; $5B1E: $FE $E4
    rra                                           ; $5B20: $1F
    ld c, $2F                                     ; $5B21: $0E $2F
    ld d, $1F                                     ; $5B23: $16 $1F
    rlca                                          ; $5B25: $07
    rrca                                          ; $5B26: $0F
    inc bc                                        ; $5B27: $03
    rlca                                          ; $5B28: $07
    nop                                           ; $5B29: $00
    dec bc                                        ; $5B2A: $0B
    inc b                                         ; $5B2B: $04
    inc de                                        ; $5B2C: $13
    inc c                                         ; $5B2D: $0C
    inc de                                        ; $5B2E: $13
    inc c                                         ; $5B2F: $0C
    rra                                           ; $5B30: $1F
    dec bc                                        ; $5B31: $0B
    rra                                           ; $5B32: $1F
    rlca                                          ; $5B33: $07
    rlca                                          ; $5B34: $07
    inc bc                                        ; $5B35: $03
    inc bc                                        ; $5B36: $03
    nop                                           ; $5B37: $00
    ld bc, $0100                                  ; $5B38: $01 $00 $01
    nop                                           ; $5B3B: $00
    inc bc                                        ; $5B3C: $03
    nop                                           ; $5B3D: $00
    inc bc                                        ; $5B3E: $03
    nop                                           ; $5B3F: $00
    db $EC                                        ; $5B40: $EC
    ret nc                                        ; $5B41: $D0

    ret z                                         ; $5B42: $C8

    or b                                          ; $5B43: $B0
    ret nc                                        ; $5B44: $D0

    jr nz, @-$4E                                  ; $5B45: $20 $B0

    ld b, b                                       ; $5B47: $40
    or b                                          ; $5B48: $B0
    ld b, b                                       ; $5B49: $40

jr_00C_5B4A:
    sub b                                         ; $5B4A: $90
    ld h, b                                       ; $5B4B: $60
    sub b                                         ; $5B4C: $90
    ld h, b                                       ; $5B4D: $60
    ldh [rP1], a                                  ; $5B4E: $E0 $00
    ldh a, [$C0]                                  ; $5B50: $F0 $C0
    ldh [$C0], a                                  ; $5B52: $E0 $C0
    ldh [$C0], a                                  ; $5B54: $E0 $C0
    ldh [$C0], a                                  ; $5B56: $E0 $C0
    ld hl, sp-$40                                 ; $5B58: $F8 $C0
    db $FC                                        ; $5B5A: $FC
    jr @-$02                                      ; $5B5B: $18 $FC

    ld [hl], b                                    ; $5B5D: $70
    ld hl, sp+$00                                 ; $5B5E: $F8 $00
    ld hl, sp+$70                                 ; $5B60: $F8 $70
    ld hl, sp+$70                                 ; $5B62: $F8 $70
    ld hl, sp+$70                                 ; $5B64: $F8 $70
    ld hl, sp+$70                                 ; $5B66: $F8 $70
    cp $30                                        ; $5B68: $FE $30
    rst $38                                       ; $5B6A: $FF
    ld b, [hl]                                    ; $5B6B: $46
    rst $38                                       ; $5B6C: $FF
    inc e                                         ; $5B6D: $1C
    ld a, $00                                     ; $5B6E: $3E $00
    rra                                           ; $5B70: $1F
    dec c                                         ; $5B71: $0D
    dec e                                         ; $5B72: $1D
    ld a, [bc]                                    ; $5B73: $0A
    ld a, [hl+]                                   ; $5B74: $2A
    dec d                                         ; $5B75: $15
    ld a, [de]                                    ; $5B76: $1A
    dec b                                         ; $5B77: $05
    inc c                                         ; $5B78: $0C
    inc bc                                        ; $5B79: $03
    rlca                                          ; $5B7A: $07
    nop                                           ; $5B7B: $00
    add hl, bc                                    ; $5B7C: $09
    ld b, $09                                     ; $5B7D: $06 $09
    ld b, $F8                                     ; $5B7F: $06 $F8
    jr nc, @+$3A                                  ; $5B81: $30 $38

    ret nc                                        ; $5B83: $D0

    ld d, h                                       ; $5B84: $54
    xor b                                         ; $5B85: $A8
    ld e, b                                       ; $5B86: $58
    and b                                         ; $5B87: $A0
    jr nc, jr_00C_5B4A                            ; $5B88: $30 $C0

    ldh [rP1], a                                  ; $5B8A: $E0 $00
    ret nc                                        ; $5B8C: $D0

    jr nz, @-$2E                                  ; $5B8D: $20 $D0

jr_00C_5B8F:
    jr nz, jr_00C_5B8F                            ; $5B8F: $20 $FE

    nop                                           ; $5B91: $00
    ld a, [hl]                                    ; $5B92: $7E
    inc e                                         ; $5B93: $1C
    ld a, [hl]                                    ; $5B94: $7E
    jr c, jr_00C_5C15                             ; $5B95: $38 $7E

    jr c, jr_00C_5C18                             ; $5B97: $38 $7F

    ld [hl], $7F                                  ; $5B99: $36 $7F
    ld c, $7E                                     ; $5B9B: $0E $7E
    inc l                                         ; $5B9D: $2C
    ld a, $00                                     ; $5B9E: $3E $00
    nop                                           ; $5BA0: $00
    nop                                           ; $5BA1: $00
    nop                                           ; $5BA2: $00
    nop                                           ; $5BA3: $00
    nop                                           ; $5BA4: $00
    nop                                           ; $5BA5: $00
    ld bc, $0700                                  ; $5BA6: $01 $00 $07
    ld bc, $050F                                  ; $5BA9: $01 $0F $05
    rra                                           ; $5BAC: $1F
    dec c                                         ; $5BAD: $0D
    rra                                           ; $5BAE: $1F

jr_00C_5BAF:
    ld c, $00                                     ; $5BAF: $0E $00
    nop                                           ; $5BB1: $00
    nop                                           ; $5BB2: $00
    nop                                           ; $5BB3: $00
    nop                                           ; $5BB4: $00
    nop                                           ; $5BB5: $00
    ret nz                                        ; $5BB6: $C0

    nop                                           ; $5BB7: $00
    ldh [$C0], a                                  ; $5BB8: $E0 $C0
    ldh a, [$C0]                                  ; $5BBA: $F0 $C0
    ld hl, sp-$30                                 ; $5BBC: $F8 $D0
    ld hl, sp-$30                                 ; $5BBE: $F8 $D0
    rra                                           ; $5BC0: $1F
    ld c, $1F                                     ; $5BC1: $0E $1F
    dec c                                         ; $5BC3: $0D
    cpl                                           ; $5BC4: $2F
    ld d, $1F                                     ; $5BC5: $16 $1F
    rlca                                          ; $5BC7: $07
    rrca                                          ; $5BC8: $0F
    inc bc                                        ; $5BC9: $03
    rlca                                          ; $5BCA: $07
    nop                                           ; $5BCB: $00
    add hl, bc                                    ; $5BCC: $09
    ld b, $09                                     ; $5BCD: $06 $09
    ld b, $F8                                     ; $5BCF: $06 $F8
    or b                                          ; $5BD1: $B0
    ld hl, sp+$70                                 ; $5BD2: $F8 $70
    db $F4                                        ; $5BD4: $F4
    add sp, -$08                                  ; $5BD5: $E8 $F8
    ldh [$F0], a                                  ; $5BD7: $E0 $F0
    ret nz                                        ; $5BD9: $C0

    ldh [rP1], a                                  ; $5BDA: $E0 $00
    ret nc                                        ; $5BDC: $D0

    jr nz, jr_00C_5BAF                            ; $5BDD: $20 $D0

jr_00C_5BDF:
    jr nz, jr_00C_5BDF                            ; $5BDF: $20 $FE

    inc e                                         ; $5BE1: $1C
    ld a, [hl]                                    ; $5BE2: $7E
    jr c, jr_00C_5C61                             ; $5BE3: $38 $7C

    jr c, jr_00C_5C63                             ; $5BE5: $38 $7C

    jr nz, jr_00C_5C25                            ; $5BE7: $20 $3C

    jr @+$40                                      ; $5BE9: $18 $3E

    inc e                                         ; $5BEB: $1C
    ld a, [hl]                                    ; $5BEC: $7E
    inc l                                         ; $5BED: $2C
    ld a, [hl]                                    ; $5BEE: $7E
    nop                                           ; $5BEF: $00
    nop                                           ; $5BF0: $00
    nop                                           ; $5BF1: $00
    nop                                           ; $5BF2: $00
    nop                                           ; $5BF3: $00
    nop                                           ; $5BF4: $00
    nop                                           ; $5BF5: $00
    ld bc, $0700                                  ; $5BF6: $01 $00 $07
    ld bc, $050F                                  ; $5BF9: $01 $0F $05
    rra                                           ; $5BFC: $1F
    dec c                                         ; $5BFD: $0D
    rra                                           ; $5BFE: $1F
    dec c                                         ; $5BFF: $0D
    nop                                           ; $5C00: $00
    nop                                           ; $5C01: $00
    nop                                           ; $5C02: $00
    nop                                           ; $5C03: $00
    nop                                           ; $5C04: $00
    nop                                           ; $5C05: $00
    ret nz                                        ; $5C06: $C0

    nop                                           ; $5C07: $00
    ldh a, [$C0]                                  ; $5C08: $F0 $C0
    ldh a, [$C0]                                  ; $5C0A: $F0 $C0
    ld hl, sp-$30                                 ; $5C0C: $F8 $D0
    ld hl, sp-$50                                 ; $5C0E: $F8 $B0
    rra                                           ; $5C10: $1F
    ld c, $1F                                     ; $5C11: $0E $1F
    rrca                                          ; $5C13: $0F
    cpl                                           ; $5C14: $2F

jr_00C_5C15:
    rla                                           ; $5C15: $17
    rra                                           ; $5C16: $1F
    rlca                                          ; $5C17: $07

jr_00C_5C18:
    rrca                                          ; $5C18: $0F
    inc bc                                        ; $5C19: $03
    rlca                                          ; $5C1A: $07
    nop                                           ; $5C1B: $00
    dec bc                                        ; $5C1C: $0B
    inc b                                         ; $5C1D: $04
    dec bc                                        ; $5C1E: $0B
    inc b                                         ; $5C1F: $04
    ld hl, sp-$50                                 ; $5C20: $F8 $B0
    ld hl, sp+$50                                 ; $5C22: $F8 $50
    db $F4                                        ; $5C24: $F4

jr_00C_5C25:
    xor b                                         ; $5C25: $A8
    ld hl, sp-$20                                 ; $5C26: $F8 $E0
    ldh a, [$C0]                                  ; $5C28: $F0 $C0
    ldh [rP1], a                                  ; $5C2A: $E0 $00
    sub b                                         ; $5C2C: $90
    ld h, b                                       ; $5C2D: $60
    sub b                                         ; $5C2E: $90
    ld h, b                                       ; $5C2F: $60
    nop                                           ; $5C30: $00
    nop                                           ; $5C31: $00
    nop                                           ; $5C32: $00
    nop                                           ; $5C33: $00
    dec de                                        ; $5C34: $1B
    nop                                           ; $5C35: $00
    ld a, a                                       ; $5C36: $7F
    add hl, de                                    ; $5C37: $19
    rst $38                                       ; $5C38: $FF
    ld [hl], a                                    ; $5C39: $77
    rst $38                                       ; $5C3A: $FF
    ld [hl], a                                    ; $5C3B: $77
    rst $38                                       ; $5C3C: $FF
    ld l, a                                       ; $5C3D: $6F
    rst $38                                       ; $5C3E: $FF
    ld c, c                                       ; $5C3F: $49
    nop                                           ; $5C40: $00
    nop                                           ; $5C41: $00
    nop                                           ; $5C42: $00
    nop                                           ; $5C43: $00
    ldh a, [rP1]                                  ; $5C44: $F0 $00
    ld hl, sp-$10                                 ; $5C46: $F8 $F0
    db $FC                                        ; $5C48: $FC
    ldh a, [$FC]                                  ; $5C49: $F0 $FC
    ld hl, sp-$04                                 ; $5C4B: $F8 $FC
    xor b                                         ; $5C4D: $A8
    cp b                                          ; $5C4E: $B8
    ld b, b                                       ; $5C4F: $40
    rst $38                                       ; $5C50: $FF
    ret                                           ; $5C51: $C9


    ret                                           ; $5C52: $C9


    ld b, $04                                     ; $5C53: $06 $04
    inc bc                                        ; $5C55: $03
    ld [bc], a                                    ; $5C56: $02
    ld bc, $0003                                  ; $5C57: $01 $03 $00
    rlca                                          ; $5C5A: $07
    nop                                           ; $5C5B: $00
    dec bc                                        ; $5C5C: $0B
    inc b                                         ; $5C5D: $04
    dec bc                                        ; $5C5E: $0B
    inc b                                         ; $5C5F: $04
    cp b                                          ; $5C60: $B8

jr_00C_5C61:
    ld b, b                                       ; $5C61: $40
    ld d, b                                       ; $5C62: $50

jr_00C_5C63:
    and b                                         ; $5C63: $A0
    ld d, b                                       ; $5C64: $50
    and b                                         ; $5C65: $A0
    db $10                                        ; $5C66: $10
    ldh [$E0], a                                  ; $5C67: $E0 $E0
    nop                                           ; $5C69: $00
    ld h, b                                       ; $5C6A: $60
    add b                                         ; $5C6B: $80
    sub b                                         ; $5C6C: $90
    ld h, b                                       ; $5C6D: $60
    sub b                                         ; $5C6E: $90
    ld h, b                                       ; $5C6F: $60
    jp hl                                         ; $5C70: $E9


    ld b, [hl]                                    ; $5C71: $46
    ld b, h                                       ; $5C72: $44
    inc bc                                        ; $5C73: $03
    ld [bc], a                                    ; $5C74: $02
    ld bc, $0003                                  ; $5C75: $01 $03 $00
    ld [bc], a                                    ; $5C78: $02
    ld bc, $0102                                  ; $5C79: $01 $02 $01
    inc b                                         ; $5C7C: $04
    inc bc                                        ; $5C7D: $03
    inc b                                         ; $5C7E: $04
    inc bc                                        ; $5C7F: $03
    ld d, b                                       ; $5C80: $50
    and b                                         ; $5C81: $A0
    ld d, b                                       ; $5C82: $50
    and b                                         ; $5C83: $A0
    db $10                                        ; $5C84: $10
    ldh [$E0], a                                  ; $5C85: $E0 $E0
    nop                                           ; $5C87: $00
    add b                                         ; $5C88: $80
    nop                                           ; $5C89: $00
    add b                                         ; $5C8A: $80
    nop                                           ; $5C8B: $00
    add b                                         ; $5C8C: $80
    nop                                           ; $5C8D: $00
    add b                                         ; $5C8E: $80
    nop                                           ; $5C8F: $00
    rst $38                                       ; $5C90: $FF
    ret                                           ; $5C91: $C9


    ret                                           ; $5C92: $C9


    ld b, $04                                     ; $5C93: $06 $04
    inc bc                                        ; $5C95: $03
    ld [bc], a                                    ; $5C96: $02
    ld bc, $0007                                  ; $5C97: $01 $07 $00
    ld c, $01                                     ; $5C9A: $0E $01
    add hl, bc                                    ; $5C9C: $09
    ld b, $09                                     ; $5C9D: $06 $09
    ld b, $B8                                     ; $5C9F: $06 $B8
    ld b, b                                       ; $5CA1: $40
    ld d, b                                       ; $5CA2: $50
    and b                                         ; $5CA3: $A0
    ld d, b                                       ; $5CA4: $50
    and b                                         ; $5CA5: $A0
    db $10                                        ; $5CA6: $10
    ldh [$E0], a                                  ; $5CA7: $E0 $E0
    nop                                           ; $5CA9: $00
    ret nz                                        ; $5CAA: $C0

    nop                                           ; $5CAB: $00
    and b                                         ; $5CAC: $A0
    ld b, b                                       ; $5CAD: $40
    and b                                         ; $5CAE: $A0
    ld b, b                                       ; $5CAF: $40
    rlca                                          ; $5CB0: $07
    inc bc                                        ; $5CB1: $03
    inc bc                                        ; $5CB2: $03
    ld bc, $030F                                  ; $5CB3: $01 $0F $03
    ccf                                           ; $5CB6: $3F
    rrca                                          ; $5CB7: $0F
    ld a, a                                       ; $5CB8: $7F
    jr z, jr_00C_5D3A                             ; $5CB9: $28 $7F

    ld [hl], $7F                                  ; $5CBB: $36 $7F
    ld e, $7F                                     ; $5CBD: $1E $7F
    nop                                           ; $5CBF: $00
    ldh [rP1], a                                  ; $5CC0: $E0 $00
    add b                                         ; $5CC2: $80
    nop                                           ; $5CC3: $00
    ldh a, [$80]                                  ; $5CC4: $F0 $80
    ld hl, sp-$50                                 ; $5CC6: $F8 $B0
    ld hl, sp+$70                                 ; $5CC8: $F8 $70
    ldh a, [$E0]                                  ; $5CCA: $F0 $E0
    ldh a, [$C0]                                  ; $5CCC: $F0 $C0
    ldh [rP1], a                                  ; $5CCE: $E0 $00
    ld a, b                                       ; $5CD0: $78
    nop                                           ; $5CD1: $00
    jr c, jr_00C_5CE4                             ; $5CD2: $38 $10

    ld a, b                                       ; $5CD4: $78

jr_00C_5CD5:
    jr nc, jr_00C_5D53                            ; $5CD5: $30 $7C

jr_00C_5CD7:
    jr nc, jr_00C_5D57                            ; $5CD7: $30 $7E

    nop                                           ; $5CD9: $00
    ld a, a                                       ; $5CDA: $7F
    inc a                                         ; $5CDB: $3C
    rst $38                                       ; $5CDC: $FF
    ld a, $7F                                     ; $5CDD: $3E $7F
    nop                                           ; $5CDF: $00
    rlca                                          ; $5CE0: $07
    ld bc, $0103                                  ; $5CE1: $01 $03 $01

jr_00C_5CE4:
    rlca                                          ; $5CE4: $07
    inc bc                                        ; $5CE5: $03
    rrca                                          ; $5CE6: $0F
    rlca                                          ; $5CE7: $07
    rra                                           ; $5CE8: $1F
    nop                                           ; $5CE9: $00

jr_00C_5CEA:
    ccf                                           ; $5CEA: $3F
    rla                                           ; $5CEB: $17
    ccf                                           ; $5CEC: $3F
    rrca                                          ; $5CED: $0F
    rra                                           ; $5CEE: $1F
    nop                                           ; $5CEF: $00
    ret nz                                        ; $5CF0: $C0

    nop                                           ; $5CF1: $00
    ret nz                                        ; $5CF2: $C0

jr_00C_5CF3:
    add b                                         ; $5CF3: $80

jr_00C_5CF4:
    ld hl, sp-$40                                 ; $5CF4: $F8 $C0
    db $FC                                        ; $5CF6: $FC
    ret c                                         ; $5CF7: $D8

    db $FC                                        ; $5CF8: $FC
    jr c, jr_00C_5CF3                             ; $5CF9: $38 $F8

    ld [hl], b                                    ; $5CFB: $70
    ld hl, sp+$60                                 ; $5CFC: $F8 $60
    ldh [rP1], a                                  ; $5CFE: $E0 $00
    ld hl, sp-$50                                 ; $5D00: $F8 $B0
    db $F4                                        ; $5D02: $F4
    xor b                                         ; $5D03: $A8
    ld hl, sp+$60                                 ; $5D04: $F8 $60
    ldh a, [$C0]                                  ; $5D06: $F0 $C0
    ldh [rP1], a                                  ; $5D08: $E0 $00
    ret nc                                        ; $5D0A: $D0

    jr nz, jr_00C_5CD5                            ; $5D0B: $20 $C8

    jr nc, jr_00C_5CD7                            ; $5D0D: $30 $C8

    jr nc, jr_00C_5D30                            ; $5D0F: $30 $1F

    dec c                                         ; $5D11: $0D
    dec e                                         ; $5D12: $1D
    ld a, [bc]                                    ; $5D13: $0A
    ld a, [hl+]                                   ; $5D14: $2A
    dec d                                         ; $5D15: $15
    ld a, [de]                                    ; $5D16: $1A
    dec b                                         ; $5D17: $05
    inc c                                         ; $5D18: $0C
    inc bc                                        ; $5D19: $03
    rlca                                          ; $5D1A: $07
    nop                                           ; $5D1B: $00
    dec bc                                        ; $5D1C: $0B
    inc b                                         ; $5D1D: $04
    dec bc                                        ; $5D1E: $0B
    inc b                                         ; $5D1F: $04
    ld hl, sp+$30                                 ; $5D20: $F8 $30
    jr c, jr_00C_5CF4                             ; $5D22: $38 $D0

    ld d, h                                       ; $5D24: $54
    xor b                                         ; $5D25: $A8
    ld e, b                                       ; $5D26: $58
    and b                                         ; $5D27: $A0
    jr nc, jr_00C_5CEA                            ; $5D28: $30 $C0

    ldh [rP1], a                                  ; $5D2A: $E0 $00
    sub b                                         ; $5D2C: $90
    ld h, b                                       ; $5D2D: $60
    sub b                                         ; $5D2E: $90
    ld h, b                                       ; $5D2F: $60

jr_00C_5D30:
    nop                                           ; $5D30: $00
    nop                                           ; $5D31: $00
    nop                                           ; $5D32: $00
    nop                                           ; $5D33: $00
    nop                                           ; $5D34: $00
    nop                                           ; $5D35: $00
    rrca                                          ; $5D36: $0F
    nop                                           ; $5D37: $00
    rra                                           ; $5D38: $1F
    rrca                                          ; $5D39: $0F

jr_00C_5D3A:
    ccf                                           ; $5D3A: $3F
    rra                                           ; $5D3B: $1F
    ld a, a                                       ; $5D3C: $7F
    ccf                                           ; $5D3D: $3F
    ld a, a                                       ; $5D3E: $7F
    inc a                                         ; $5D3F: $3C
    nop                                           ; $5D40: $00
    nop                                           ; $5D41: $00
    nop                                           ; $5D42: $00
    nop                                           ; $5D43: $00
    nop                                           ; $5D44: $00
    nop                                           ; $5D45: $00
    ldh [rP1], a                                  ; $5D46: $E0 $00

jr_00C_5D48:
    ldh a, [$E0]                                  ; $5D48: $F0 $E0
    ld hl, sp-$10                                 ; $5D4A: $F8 $F0
    ld hl, sp-$10                                 ; $5D4C: $F8 $F0
    db $FC                                        ; $5D4E: $FC
    cp b                                          ; $5D4F: $B8
    nop                                           ; $5D50: $00
    nop                                           ; $5D51: $00
    nop                                           ; $5D52: $00

jr_00C_5D53:
    nop                                           ; $5D53: $00
    nop                                           ; $5D54: $00
    nop                                           ; $5D55: $00
    rlca                                          ; $5D56: $07

jr_00C_5D57:
    nop                                           ; $5D57: $00
    rrca                                          ; $5D58: $0F
    rlca                                          ; $5D59: $07
    rra                                           ; $5D5A: $1F
    ld c, $3F                                     ; $5D5B: $0E $3F
    rra                                           ; $5D5D: $1F
    ccf                                           ; $5D5E: $3F
    dec e                                         ; $5D5F: $1D
    nop                                           ; $5D60: $00
    nop                                           ; $5D61: $00
    nop                                           ; $5D62: $00
    nop                                           ; $5D63: $00
    nop                                           ; $5D64: $00
    nop                                           ; $5D65: $00
    ldh [rP1], a                                  ; $5D66: $E0 $00

jr_00C_5D68:
    ldh a, [$E0]                                  ; $5D68: $F0 $E0
    ld hl, sp-$10                                 ; $5D6A: $F8 $F0
    db $FC                                        ; $5D6C: $FC

jr_00C_5D6D:
    ld a, b                                       ; $5D6D: $78
    db $FC                                        ; $5D6E: $FC
    jr c, jr_00C_5DAD                             ; $5D6F: $38 $3C

    dec bc                                        ; $5D71: $0B

jr_00C_5D72:
    ld a, [hl+]                                   ; $5D72: $2A
    dec d                                         ; $5D73: $15
    ld a, [de]                                    ; $5D74: $1A

jr_00C_5D75:
    dec b                                         ; $5D75: $05
    inc b                                         ; $5D76: $04

jr_00C_5D77:
    inc bc                                        ; $5D77: $03
    dec bc                                        ; $5D78: $0B
    inc b                                         ; $5D79: $04
    inc de                                        ; $5D7A: $13
    inc c                                         ; $5D7B: $0C
    inc de                                        ; $5D7C: $13
    inc c                                         ; $5D7D: $0C
    rrca                                          ; $5D7E: $0F
    nop                                           ; $5D7F: $00
    cp h                                          ; $5D80: $BC
    ld e, b                                       ; $5D81: $58
    ld e, h                                       ; $5D82: $5C
    xor b                                         ; $5D83: $A8
    ld e, b                                       ; $5D84: $58
    and b                                         ; $5D85: $A0
    jr nz, jr_00C_5D48                            ; $5D86: $20 $C0

    ldh [rP1], a                                  ; $5D88: $E0 $00
    ret nc                                        ; $5D8A: $D0

    jr nz, jr_00C_5D6D                            ; $5D8B: $20 $E0

    nop                                           ; $5D8D: $00
    ret nz                                        ; $5D8E: $C0

    nop                                           ; $5D8F: $00
    dec e                                         ; $5D90: $1D
    ld a, [bc]                                    ; $5D91: $0A
    ld a, [hl+]                                   ; $5D92: $2A
    dec d                                         ; $5D93: $15
    ld a, [de]                                    ; $5D94: $1A
    dec b                                         ; $5D95: $05
    inc c                                         ; $5D96: $0C
    inc bc                                        ; $5D97: $03
    rlca                                          ; $5D98: $07
    nop                                           ; $5D99: $00
    dec bc                                        ; $5D9A: $0B
    inc b                                         ; $5D9B: $04
    inc de                                        ; $5D9C: $13
    inc c                                         ; $5D9D: $0C
    inc de                                        ; $5D9E: $13
    inc c                                         ; $5D9F: $0C
    jr c, jr_00C_5D72                             ; $5DA0: $38 $D0

    ld d, h                                       ; $5DA2: $54
    xor b                                         ; $5DA3: $A8
    ld e, b                                       ; $5DA4: $58
    and b                                         ; $5DA5: $A0
    jr nc, jr_00C_5D68                            ; $5DA6: $30 $C0

    ldh [rP1], a                                  ; $5DA8: $E0 $00
    ret nc                                        ; $5DAA: $D0

    jr nz, jr_00C_5D75                            ; $5DAB: $20 $C8

jr_00C_5DAD:
    jr nc, jr_00C_5D77                            ; $5DAD: $30 $C8

    jr nc, jr_00C_5DC0                            ; $5DAF: $30 $0F

    rlca                                          ; $5DB1: $07
    rlca                                          ; $5DB2: $07
    nop                                           ; $5DB3: $00
    dec b                                         ; $5DB4: $05
    ld [bc], a                                    ; $5DB5: $02
    dec b                                         ; $5DB6: $05
    ld [bc], a                                    ; $5DB7: $02
    dec bc                                        ; $5DB8: $0B
    inc b                                         ; $5DB9: $04
    rrca                                          ; $5DBA: $0F
    ld bc, $0F1F                                  ; $5DBB: $01 $1F $0F
    rrca                                          ; $5DBE: $0F
    nop                                           ; $5DBF: $00

jr_00C_5DC0:
    ret nz                                        ; $5DC0: $C0

    add b                                         ; $5DC1: $80
    ret nz                                        ; $5DC2: $C0

    nop                                           ; $5DC3: $00
    ld b, b                                       ; $5DC4: $40
    add b                                         ; $5DC5: $80
    ld [hl], b                                    ; $5DC6: $70
    add b                                         ; $5DC7: $80
    ld hl, sp+$30                                 ; $5DC8: $F8 $30
    ld hl, sp-$50                                 ; $5DCA: $F8 $B0
    ldh a, [$80]                                  ; $5DCC: $F0 $80
    ret nz                                        ; $5DCE: $C0

    nop                                           ; $5DCF: $00
    ldh a, [$C0]                                  ; $5DD0: $F0 $C0
    ldh [rP1], a                                  ; $5DD2: $E0 $00
    and b                                         ; $5DD4: $A0
    ld b, b                                       ; $5DD5: $40
    or b                                          ; $5DD6: $B0

jr_00C_5DD7:
    ld b, b                                       ; $5DD7: $40
    ld hl, sp+$30                                 ; $5DD8: $F8 $30
    db $FC                                        ; $5DDA: $FC
    ld a, b                                       ; $5DDB: $78
    db $FC                                        ; $5DDC: $FC
    jr c, jr_00C_5DD7                             ; $5DDD: $38 $F8

    nop                                           ; $5DDF: $00
    nop                                           ; $5DE0: $00
    nop                                           ; $5DE1: $00
    nop                                           ; $5DE2: $00
    nop                                           ; $5DE3: $00
    nop                                           ; $5DE4: $00
    nop                                           ; $5DE5: $00
    rlca                                          ; $5DE6: $07
    nop                                           ; $5DE7: $00
    rrca                                          ; $5DE8: $0F
    rlca                                          ; $5DE9: $07
    rra                                           ; $5DEA: $1F
    rrca                                          ; $5DEB: $0F
    ccf                                           ; $5DEC: $3F
    rra                                           ; $5DED: $1F
    ccf                                           ; $5DEE: $3F
    rra                                           ; $5DEF: $1F
    nop                                           ; $5DF0: $00
    nop                                           ; $5DF1: $00
    nop                                           ; $5DF2: $00
    nop                                           ; $5DF3: $00
    nop                                           ; $5DF4: $00

jr_00C_5DF5:
    nop                                           ; $5DF5: $00
    ldh [rP1], a                                  ; $5DF6: $E0 $00
    ldh a, [$E0]                                  ; $5DF8: $F0 $E0
    ld hl, sp-$10                                 ; $5DFA: $F8 $F0
    db $FC                                        ; $5DFC: $FC
    ld a, b                                       ; $5DFD: $78
    db $FC                                        ; $5DFE: $FC
    ld hl, sp+$00                                 ; $5DFF: $F8 $00
    nop                                           ; $5E01: $00
    nop                                           ; $5E02: $00
    nop                                           ; $5E03: $00
    inc bc                                        ; $5E04: $03
    nop                                           ; $5E05: $00
    rlca                                          ; $5E06: $07
    inc bc                                        ; $5E07: $03
    rrca                                          ; $5E08: $0F
    rlca                                          ; $5E09: $07
    rra                                           ; $5E0A: $1F
    dec bc                                        ; $5E0B: $0B
    rra                                           ; $5E0C: $1F
    rrca                                          ; $5E0D: $0F
    rra                                           ; $5E0E: $1F
    rrca                                          ; $5E0F: $0F
    nop                                           ; $5E10: $00
    nop                                           ; $5E11: $00
    nop                                           ; $5E12: $00
    nop                                           ; $5E13: $00
    ld hl, sp+$00                                 ; $5E14: $F8 $00
    db $FC                                        ; $5E16: $FC
    ld hl, sp-$02                                 ; $5E17: $F8 $FE
    db $FC                                        ; $5E19: $FC
    cp $FC                                        ; $5E1A: $FE $FC
    cp $F4                                        ; $5E1C: $FE $F4
    cp $E4                                        ; $5E1E: $FE $E4
    ld hl, sp-$10                                 ; $5E20: $F8 $F0
    db $F4                                        ; $5E22: $F4
    add sp, -$08                                  ; $5E23: $E8 $F8
    ldh [$F0], a                                  ; $5E25: $E0 $F0
    ret nz                                        ; $5E27: $C0

    ldh [rP1], a                                  ; $5E28: $E0 $00
    ret nc                                        ; $5E2A: $D0

    jr nz, jr_00C_5DF5                            ; $5E2B: $20 $C8

    jr nc, @-$36                                  ; $5E2D: $30 $C8

    jr nc, @-$12                                  ; $5E2F: $30 $EC

    ret nc                                        ; $5E31: $D0

    ret z                                         ; $5E32: $C8

    or b                                          ; $5E33: $B0
    sub b                                         ; $5E34: $90
    ld h, b                                       ; $5E35: $60
    ldh a, [rP1]                                  ; $5E36: $F0 $00
    or b                                          ; $5E38: $B0
    ld b, b                                       ; $5E39: $40

jr_00C_5E3A:
    sub b                                         ; $5E3A: $90
    ld h, b                                       ; $5E3B: $60
    sub b                                         ; $5E3C: $90
    ld h, b                                       ; $5E3D: $60
    ldh [rP1], a                                  ; $5E3E: $E0 $00
    ldh a, [$C0]                                  ; $5E40: $F0 $C0
    ldh [rP1], a                                  ; $5E42: $E0 $00
    and b                                         ; $5E44: $A0
    ld b, b                                       ; $5E45: $40
    and b                                         ; $5E46: $A0
    ld b, b                                       ; $5E47: $40
    cp b                                          ; $5E48: $B8

jr_00C_5E49:
    ld b, b                                       ; $5E49: $40
    db $FC                                        ; $5E4A: $FC
    jr jr_00C_5E49                                ; $5E4B: $18 $FC

    ld [hl], b                                    ; $5E4D: $70
    ld hl, sp+$00                                 ; $5E4E: $F8 $00
    ld hl, sp+$30                                 ; $5E50: $F8 $30
    cp b                                          ; $5E52: $B8
    ld b, b                                       ; $5E53: $40
    xor b                                         ; $5E54: $A8
    ld d, b                                       ; $5E55: $50
    xor b                                         ; $5E56: $A8
    ld d, b                                       ; $5E57: $50
    xor $10                                       ; $5E58: $EE $10
    rst $38                                       ; $5E5A: $FF
    ld b, [hl]                                    ; $5E5B: $46
    rst $38                                       ; $5E5C: $FF
    inc e                                         ; $5E5D: $1C
    ld a, $00                                     ; $5E5E: $3E $00
    ccf                                           ; $5E60: $3F
    dec e                                         ; $5E61: $1D
    dec e                                         ; $5E62: $1D
    ld a, [bc]                                    ; $5E63: $0A
    ld a, [hl+]                                   ; $5E64: $2A
    dec d                                         ; $5E65: $15
    ld a, [de]                                    ; $5E66: $1A
    dec b                                         ; $5E67: $05
    inc c                                         ; $5E68: $0C
    inc bc                                        ; $5E69: $03
    rlca                                          ; $5E6A: $07
    nop                                           ; $5E6B: $00
    add hl, bc                                    ; $5E6C: $09
    ld b, $09                                     ; $5E6D: $06 $09
    ld b, $FC                                     ; $5E6F: $06 $FC
    jr c, @+$3A                                   ; $5E71: $38 $38

    ret nc                                        ; $5E73: $D0

    ld d, h                                       ; $5E74: $54
    xor b                                         ; $5E75: $A8
    ld e, b                                       ; $5E76: $58
    and b                                         ; $5E77: $A0
    jr nc, jr_00C_5E3A                            ; $5E78: $30 $C0

    ldh [rP1], a                                  ; $5E7A: $E0 $00
    ret nc                                        ; $5E7C: $D0

    jr nz, @-$2E                                  ; $5E7D: $20 $D0

jr_00C_5E7F:
    jr nz, jr_00C_5E7F                            ; $5E7F: $20 $FE

    nop                                           ; $5E81: $00
    ld a, [hl]                                    ; $5E82: $7E
    inc e                                         ; $5E83: $1C
    ld a, [hl]                                    ; $5E84: $7E
    nop                                           ; $5E85: $00
    ld d, [hl]                                    ; $5E86: $56
    jr z, @+$61                                   ; $5E87: $28 $5F

    ld h, $7F                                     ; $5E89: $26 $7F
    ld c, $7E                                     ; $5E8B: $0E $7E
    inc l                                         ; $5E8D: $2C
    ld a, $00                                     ; $5E8E: $3E $00
    ccf                                           ; $5E90: $3F
    rra                                           ; $5E91: $1F
    rra                                           ; $5E92: $1F
    rrca                                          ; $5E93: $0F
    cpl                                           ; $5E94: $2F
    rla                                           ; $5E95: $17
    rra                                           ; $5E96: $1F
    rlca                                          ; $5E97: $07
    rrca                                          ; $5E98: $0F
    inc bc                                        ; $5E99: $03
    rlca                                          ; $5E9A: $07
    nop                                           ; $5E9B: $00
    add hl, bc                                    ; $5E9C: $09
    ld b, $09                                     ; $5E9D: $06 $09
    ld b, $FC                                     ; $5E9F: $06 $FC
    ld hl, sp-$08                                 ; $5EA1: $F8 $F8
    ldh a, [$F4]                                  ; $5EA3: $F0 $F4
    add sp, -$08                                  ; $5EA5: $E8 $F8
    ldh [$F0], a                                  ; $5EA7: $E0 $F0
    ret nz                                        ; $5EA9: $C0

    ldh [rP1], a                                  ; $5EAA: $E0 $00
    ret nc                                        ; $5EAC: $D0

    jr nz, jr_00C_5E7F                            ; $5EAD: $20 $D0

    jr nz, jr_00C_5F30                            ; $5EAF: $20 $7F

    ld c, $3F                                     ; $5EB1: $0E $3F
    jr jr_00C_5EEF                                ; $5EB3: $18 $3A

    inc b                                         ; $5EB5: $04
    ld l, $10                                     ; $5EB6: $2E $10
    ld e, $0C                                     ; $5EB8: $1E $0C
    rra                                           ; $5EBA: $1F
    ld c, $3F                                     ; $5EBB: $0E $3F
    ld d, $3F                                     ; $5EBD: $16 $3F
    nop                                           ; $5EBF: $00
    nop                                           ; $5EC0: $00
    nop                                           ; $5EC1: $00
    nop                                           ; $5EC2: $00
    nop                                           ; $5EC3: $00
    rlca                                          ; $5EC4: $07
    nop                                           ; $5EC5: $00
    rrca                                          ; $5EC6: $0F
    rlca                                          ; $5EC7: $07
    rra                                           ; $5EC8: $1F
    rrca                                          ; $5EC9: $0F
    ccf                                           ; $5ECA: $3F
    rra                                           ; $5ECB: $1F
    ccf                                           ; $5ECC: $3F
    rra                                           ; $5ECD: $1F
    rra                                           ; $5ECE: $1F
    add hl, bc                                    ; $5ECF: $09
    nop                                           ; $5ED0: $00
    nop                                           ; $5ED1: $00
    nop                                           ; $5ED2: $00
    nop                                           ; $5ED3: $00
    ldh a, [rP1]                                  ; $5ED4: $F0 $00
    ld hl, sp-$10                                 ; $5ED6: $F8 $F0
    db $FC                                        ; $5ED8: $FC
    ldh a, [$FC]                                  ; $5ED9: $F0 $FC
    ld hl, sp-$04                                 ; $5EDB: $F8 $FC
    xor b                                         ; $5EDD: $A8
    cp b                                          ; $5EDE: $B8
    ld b, b                                       ; $5EDF: $40
    rra                                           ; $5EE0: $1F
    add hl, bc                                    ; $5EE1: $09
    add hl, bc                                    ; $5EE2: $09
    ld b, $04                                     ; $5EE3: $06 $04
    inc bc                                        ; $5EE5: $03
    ld [bc], a                                    ; $5EE6: $02
    ld bc, $0003                                  ; $5EE7: $01 $03 $00
    dec bc                                        ; $5EEA: $0B
    inc b                                         ; $5EEB: $04
    dec bc                                        ; $5EEC: $0B
    inc b                                         ; $5EED: $04
    rlca                                          ; $5EEE: $07

jr_00C_5EEF:
    nop                                           ; $5EEF: $00
    cp b                                          ; $5EF0: $B8
    ld b, b                                       ; $5EF1: $40
    ld d, b                                       ; $5EF2: $50
    and b                                         ; $5EF3: $A0
    ld d, b                                       ; $5EF4: $50
    and b                                         ; $5EF5: $A0
    db $10                                        ; $5EF6: $10
    ldh [$E0], a                                  ; $5EF7: $E0 $E0
    nop                                           ; $5EF9: $00
    sub b                                         ; $5EFA: $90
    ld h, b                                       ; $5EFB: $60
    sub b                                         ; $5EFC: $90
    ld h, b                                       ; $5EFD: $60
    ldh [rP1], a                                  ; $5EFE: $E0 $00
    sub l                                         ; $5F00: $95
    ld l, d                                       ; $5F01: $6A
    ld b, l                                       ; $5F02: $45
    ld a, [hl-]                                   ; $5F03: $3A
    ld hl, $3E1E                                  ; $5F04: $21 $1E $3E
    nop                                           ; $5F07: $00
    inc l                                         ; $5F08: $2C
    db $10                                        ; $5F09: $10
    ld [$4830], sp                                ; $5F0A: $08 $30 $48
    jr nc, jr_00C_5F87                            ; $5F0D: $30 $78

    nop                                           ; $5F0F: $00
    rra                                           ; $5F10: $1F
    add hl, bc                                    ; $5F11: $09
    add hl, bc                                    ; $5F12: $09
    ld b, $04                                     ; $5F13: $06 $04
    inc bc                                        ; $5F15: $03
    ld [bc], a                                    ; $5F16: $02
    ld bc, $0003                                  ; $5F17: $01 $03 $00
    add hl, bc                                    ; $5F1A: $09
    ld b, $09                                     ; $5F1B: $06 $09
    ld b, $07                                     ; $5F1D: $06 $07
    nop                                           ; $5F1F: $00
    cp b                                          ; $5F20: $B8
    ld b, b                                       ; $5F21: $40
    ld d, b                                       ; $5F22: $50
    and b                                         ; $5F23: $A0
    ld d, b                                       ; $5F24: $50
    and b                                         ; $5F25: $A0
    db $10                                        ; $5F26: $10
    ldh [$E0], a                                  ; $5F27: $E0 $E0
    nop                                           ; $5F29: $00
    ret nz                                        ; $5F2A: $C0

    nop                                           ; $5F2B: $00
    and b                                         ; $5F2C: $A0
    ld b, b                                       ; $5F2D: $40
    ret nz                                        ; $5F2E: $C0

    nop                                           ; $5F2F: $00

jr_00C_5F30:
    add b                                         ; $5F30: $80
    nop                                           ; $5F31: $00
    add b                                         ; $5F32: $80
    nop                                           ; $5F33: $00
    ldh a, [rP1]                                  ; $5F34: $F0 $00
    ld a, b                                       ; $5F36: $78
    or b                                          ; $5F37: $B0
    ld hl, sp+$70                                 ; $5F38: $F8 $70
    ldh a, [$E0]                                  ; $5F3A: $F0 $E0
    ldh a, [$C0]                                  ; $5F3C: $F0 $C0
    ldh [rP1], a                                  ; $5F3E: $E0 $00
    ld a, b                                       ; $5F40: $78
    jr nc, jr_00C_5F7B                            ; $5F41: $30 $38

    nop                                           ; $5F43: $00
    jr z, jr_00C_5F56                             ; $5F44: $28 $10

    inc l                                         ; $5F46: $2C
    db $10                                        ; $5F47: $10
    ld a, $00                                     ; $5F48: $3E $00
    ld a, a                                       ; $5F4A: $7F
    inc a                                         ; $5F4B: $3C
    rst $38                                       ; $5F4C: $FF
    ld a, $7F                                     ; $5F4D: $3E $7F
    nop                                           ; $5F4F: $00
    rlca                                          ; $5F50: $07
    ld [bc], a                                    ; $5F51: $02
    ld [bc], a                                    ; $5F52: $02
    ld bc, $0007                                  ; $5F53: $01 $07 $00

jr_00C_5F56:
    dec c                                         ; $5F56: $0D
    ld [bc], a                                    ; $5F57: $02
    rra                                           ; $5F58: $1F
    nop                                           ; $5F59: $00
    ccf                                           ; $5F5A: $3F
    rla                                           ; $5F5B: $17
    ccf                                           ; $5F5C: $3F
    rrca                                          ; $5F5D: $0F
    rra                                           ; $5F5E: $1F
    nop                                           ; $5F5F: $00
    add b                                         ; $5F60: $80
    nop                                           ; $5F61: $00
    ret nz                                        ; $5F62: $C0

jr_00C_5F63:
    nop                                           ; $5F63: $00
    ld a, b                                       ; $5F64: $78
    add b                                         ; $5F65: $80
    cp h                                          ; $5F66: $BC
    ld e, b                                       ; $5F67: $58
    db $FC                                        ; $5F68: $FC
    jr c, jr_00C_5F63                             ; $5F69: $38 $F8

    ld [hl], b                                    ; $5F6B: $70
    ld hl, sp+$60                                 ; $5F6C: $F8 $60
    ldh [rP1], a                                  ; $5F6E: $E0 $00
    rrca                                          ; $5F70: $0F
    rlca                                          ; $5F71: $07
    rlca                                          ; $5F72: $07
    inc bc                                        ; $5F73: $03
    inc bc                                        ; $5F74: $03
    ld bc, $0003                                  ; $5F75: $01 $03 $00
    ld bc, $0100                                  ; $5F78: $01 $00 $01

jr_00C_5F7B:
    nop                                           ; $5F7B: $00
    inc bc                                        ; $5F7C: $03
    nop                                           ; $5F7D: $00
    inc bc                                        ; $5F7E: $03
    nop                                           ; $5F7F: $00
    rlca                                          ; $5F80: $07
    inc bc                                        ; $5F81: $03
    inc bc                                        ; $5F82: $03
    ld bc, $020D                                  ; $5F83: $01 $0D $02
    dec sp                                        ; $5F86: $3B

jr_00C_5F87:
    inc b                                         ; $5F87: $04
    ld [hl], a                                    ; $5F88: $77
    jr z, jr_00C_600A                             ; $5F89: $28 $7F

    ld [hl], $7F                                  ; $5F8B: $36 $7F
    ld e, $7F                                     ; $5F8D: $1E $7F
    nop                                           ; $5F8F: $00
    ccf                                           ; $5F90: $3F
    dec e                                         ; $5F91: $1D
    dec e                                         ; $5F92: $1D
    ld a, [bc]                                    ; $5F93: $0A
    ld a, [hl+]                                   ; $5F94: $2A
    dec d                                         ; $5F95: $15
    ld a, [de]                                    ; $5F96: $1A
    dec b                                         ; $5F97: $05
    inc c                                         ; $5F98: $0C
    inc bc                                        ; $5F99: $03
    rlca                                          ; $5F9A: $07
    nop                                           ; $5F9B: $00
    dec bc                                        ; $5F9C: $0B
    inc b                                         ; $5F9D: $04
    dec bc                                        ; $5F9E: $0B
    inc b                                         ; $5F9F: $04
    db $FC                                        ; $5FA0: $FC
    jr c, jr_00C_5FDB                             ; $5FA1: $38 $38

    ret nc                                        ; $5FA3: $D0

    ld d, h                                       ; $5FA4: $54
    xor b                                         ; $5FA5: $A8
    ld e, b                                       ; $5FA6: $58
    and b                                         ; $5FA7: $A0
    jr nc, @-$3E                                  ; $5FA8: $30 $C0

    ldh [rP1], a                                  ; $5FAA: $E0 $00
    sub b                                         ; $5FAC: $90
    ld h, b                                       ; $5FAD: $60
    sub b                                         ; $5FAE: $90
    ld h, b                                       ; $5FAF: $60
    ld a, b                                       ; $5FB0: $78
    nop                                           ; $5FB1: $00
    rst $38                                       ; $5FB2: $FF
    ld [hl], b                                    ; $5FB3: $70

jr_00C_5FB4:
    rst $38                                       ; $5FB4: $FF
    ld l, a                                       ; $5FB5: $6F
    rst $38                                       ; $5FB6: $FF
    ld e, a                                       ; $5FB7: $5F
    rst $38                                       ; $5FB8: $FF
    ld e, a                                       ; $5FB9: $5F
    rst $38                                       ; $5FBA: $FF
    ld e, h                                       ; $5FBB: $5C
    db $FC                                        ; $5FBC: $FC
    ld c, e                                       ; $5FBD: $4B
    xor $57                                       ; $5FBE: $EE $57
    nop                                           ; $5FC0: $00
    nop                                           ; $5FC1: $00
    ldh [rP1], a                                  ; $5FC2: $E0 $00

jr_00C_5FC4:
    ldh a, [$E0]                                  ; $5FC4: $F0 $E0
    ld hl, sp-$10                                 ; $5FC6: $F8 $F0
    ld hl, sp-$10                                 ; $5FC8: $F8 $F0
    ld hl, sp+$30                                 ; $5FCA: $F8 $30
    jr nc, @-$3E                                  ; $5FCC: $30 $C0

    ld [hl], b                                    ; $5FCE: $70
    ldh [$03], a                                  ; $5FCF: $E0 $03
    ld bc, $0007                                  ; $5FD1: $01 $07 $00
    rrca                                          ; $5FD4: $0F
    rlca                                          ; $5FD5: $07
    rra                                           ; $5FD6: $1F
    rrca                                          ; $5FD7: $0F
    rra                                           ; $5FD8: $1F
    rrca                                          ; $5FD9: $0F
    rra                                           ; $5FDA: $1F

jr_00C_5FDB:
    inc c                                         ; $5FDB: $0C
    inc e                                         ; $5FDC: $1C
    dec bc                                        ; $5FDD: $0B
    ld l, $17                                     ; $5FDE: $2E $17
    ld e, d                                       ; $5FE0: $5A
    dec b                                         ; $5FE1: $05
    inc b                                         ; $5FE2: $04
    inc bc                                        ; $5FE3: $03
    rrca                                          ; $5FE4: $0F
    inc b                                         ; $5FE5: $04
    rra                                           ; $5FE6: $1F
    ld c, $1F                                     ; $5FE7: $0E $1F
    rrca                                          ; $5FE9: $0F
    rra                                           ; $5FEA: $1F
    rrca                                          ; $5FEB: $0F
    rra                                           ; $5FEC: $1F
    dec c                                         ; $5FED: $0D
    rra                                           ; $5FEE: $1F
    dec bc                                        ; $5FEF: $0B
    ld d, b                                       ; $5FF0: $50
    and b                                         ; $5FF1: $A0
    jr nz, jr_00C_5FB4                            ; $5FF2: $20 $C0

    ret nz                                        ; $5FF4: $C0

    nop                                           ; $5FF5: $00
    ldh [rLCDC], a                                ; $5FF6: $E0 $40
    ldh [rLCDC], a                                ; $5FF8: $E0 $40
    ldh [$C0], a                                  ; $5FFA: $E0 $C0
    ldh [$C0], a                                  ; $5FFC: $E0 $C0
    ret nz                                        ; $5FFE: $C0

    nop                                           ; $5FFF: $00
    ld e, b                                       ; $6000: $58
    and b                                         ; $6001: $A0
    jr nc, jr_00C_5FC4                            ; $6002: $30 $C0

    ldh [rP1], a                                  ; $6004: $E0 $00
    ldh a, [$E0]                                  ; $6006: $F0 $E0
    ld hl, sp-$10                                 ; $6008: $F8 $F0

jr_00C_600A:
    ld hl, sp-$10                                 ; $600A: $F8 $F0
    ld hl, sp-$50                                 ; $600C: $F8 $B0
    ld hl, sp+$30                                 ; $600E: $F8 $30
    rrca                                          ; $6010: $0F
    nop                                           ; $6011: $00
    rrca                                          ; $6012: $0F
    rlca                                          ; $6013: $07
    rrca                                          ; $6014: $0F
    rlca                                          ; $6015: $07
    rra                                           ; $6016: $1F
    rrca                                          ; $6017: $0F
    rra                                           ; $6018: $1F
    inc c                                         ; $6019: $0C
    ld e, $01                                     ; $601A: $1E $01
    db $10                                        ; $601C: $10
    rrca                                          ; $601D: $0F
    rrca                                          ; $601E: $0F
    nop                                           ; $601F: $00
    ret nz                                        ; $6020: $C0

    add b                                         ; $6021: $80
    ldh [$C0], a                                  ; $6022: $E0 $C0
    ldh [$C0], a                                  ; $6024: $E0 $C0
    ldh a, [$80]                                  ; $6026: $F0 $80
    ret z                                         ; $6028: $C8

    jr nc, jr_00C_6073                            ; $6029: $30 $48

    or b                                          ; $602B: $B0
    ld [hl], b                                    ; $602C: $70
    add b                                         ; $602D: $80
    ret nz                                        ; $602E: $C0

    nop                                           ; $602F: $00
    ldh a, [$C0]                                  ; $6030: $F0 $C0
    ldh a, [$E0]                                  ; $6032: $F0 $E0
    ldh a, [$E0]                                  ; $6034: $F0 $E0
    ldh a, [$C0]                                  ; $6036: $F0 $C0
    ret z                                         ; $6038: $C8

    jr nc, @-$7A                                  ; $6039: $30 $84

    ld a, b                                       ; $603B: $78
    call nz, $F838                                ; $603C: $C4 $38 $F8
    nop                                           ; $603F: $00
    ld bc, $0700                                  ; $6040: $01 $00 $07
    ld bc, $050F                                  ; $6043: $01 $0F $05
    rra                                           ; $6046: $1F
    dec c                                         ; $6047: $0D
    rra                                           ; $6048: $1F
    dec c                                         ; $6049: $0D
    rra                                           ; $604A: $1F
    ld c, $1F                                     ; $604B: $0E $1F
    ld c, $2F                                     ; $604D: $0E $2F
    ld d, $C0                                     ; $604F: $16 $C0
    nop                                           ; $6051: $00
    ldh [$C0], a                                  ; $6052: $E0 $C0
    ldh a, [$C0]                                  ; $6054: $F0 $C0
    ld hl, sp-$30                                 ; $6056: $F8 $D0
    ld hl, sp-$30                                 ; $6058: $F8 $D0
    ld hl, sp-$50                                 ; $605A: $F8 $B0
    ld hl, sp-$50                                 ; $605C: $F8 $B0
    db $F4                                        ; $605E: $F4
    xor b                                         ; $605F: $A8
    dec e                                         ; $6060: $1D
    nop                                           ; $6061: $00
    ccf                                           ; $6062: $3F
    dec e                                         ; $6063: $1D
    ccf                                           ; $6064: $3F
    dec e                                         ; $6065: $1D
    ccf                                           ; $6066: $3F
    dec de                                        ; $6067: $1B
    ccf                                           ; $6068: $3F
    dec de                                        ; $6069: $1B
    rra                                           ; $606A: $1F
    dec bc                                        ; $606B: $0B
    rra                                           ; $606C: $1F
    dec bc                                        ; $606D: $0B
    rra                                           ; $606E: $1F
    rlca                                          ; $606F: $07
    ld hl, sp+$00                                 ; $6070: $F8 $00
    db $FC                                        ; $6072: $FC

jr_00C_6073:
    ld hl, sp-$02                                 ; $6073: $F8 $FE
    db $FC                                        ; $6075: $FC
    cp $FC                                        ; $6076: $FE $FC
    db $FC                                        ; $6078: $FC
    ldh a, [$F8]                                  ; $6079: $F0 $F8
    ldh [$E8], a                                  ; $607B: $E0 $E8
    ret nc                                        ; $607D: $D0

    ret z                                         ; $607E: $C8

    or b                                          ; $607F: $B0
    rra                                           ; $6080: $1F
    rlca                                          ; $6081: $07
    rrca                                          ; $6082: $0F
    inc bc                                        ; $6083: $03
    rlca                                          ; $6084: $07
    nop                                           ; $6085: $00
    rrca                                          ; $6086: $0F
    rlca                                          ; $6087: $07
    rra                                           ; $6088: $1F
    rrca                                          ; $6089: $0F
    rra                                           ; $608A: $1F
    rrca                                          ; $608B: $0F
    rra                                           ; $608C: $1F
    rrca                                          ; $608D: $0F
    rra                                           ; $608E: $1F
    ld c, $F8                                     ; $608F: $0E $F8
    ld h, b                                       ; $6091: $60
    ldh a, [$C0]                                  ; $6092: $F0 $C0
    ldh [rP1], a                                  ; $6094: $E0 $00
    ldh a, [$E0]                                  ; $6096: $F0 $E0
    ld hl, sp-$10                                 ; $6098: $F8 $F0
    ld hl, sp-$10                                 ; $609A: $F8 $F0
    ld hl, sp-$10                                 ; $609C: $F8 $F0
    ld hl, sp+$30                                 ; $609E: $F8 $30
    ld a, [c]                                     ; $60A0: $F2
    ld l, h                                       ; $60A1: $6C
    ld a, b                                       ; $60A2: $78
    nop                                           ; $60A3: $00
    ld a, h                                       ; $60A4: $7C
    jr c, @+$80                                   ; $60A5: $38 $7E

    inc a                                         ; $60A7: $3C
    ld a, [hl]                                    ; $60A8: $7E
    inc a                                         ; $60A9: $3C
    ld a, [hl]                                    ; $60AA: $7E
    inc l                                         ; $60AB: $2C
    ld a, $0C                                     ; $60AC: $3E $0C
    ld a, h                                       ; $60AE: $7C
    jr nc, @-$02                                  ; $60AF: $30 $FC

    ld a, b                                       ; $60B1: $78
    db $FC                                        ; $60B2: $FC
    ld a, b                                       ; $60B3: $78
    db $FC                                        ; $60B4: $FC
    ld a, b                                       ; $60B5: $78
    db $FC                                        ; $60B6: $FC
    ld a, b                                       ; $60B7: $78
    cp $38                                        ; $60B8: $FE $38
    cp c                                          ; $60BA: $B9
    ld b, [hl]                                    ; $60BB: $46
    db $E3                                        ; $60BC: $E3
    inc e                                         ; $60BD: $1C
    ld a, $00                                     ; $60BE: $3E $00
    ldh a, [$C0]                                  ; $60C0: $F0 $C0
    ldh a, [$E0]                                  ; $60C2: $F0 $E0
    ldh a, [$E0]                                  ; $60C4: $F0 $E0
    ldh a, [$E0]                                  ; $60C6: $F0 $E0
    ld hl, sp-$20                                 ; $60C8: $F8 $E0
    db $E4                                        ; $60CA: $E4
    jr @-$72                                      ; $60CB: $18 $8C

    ld [hl], b                                    ; $60CD: $70
    ld hl, sp+$00                                 ; $60CE: $F8 $00
    ld l, $17                                     ; $60D0: $2E $17
    ld a, [de]                                    ; $60D2: $1A
    dec b                                         ; $60D3: $05
    inc c                                         ; $60D4: $0C
    inc bc                                        ; $60D5: $03
    rlca                                          ; $60D6: $07
    nop                                           ; $60D7: $00
    rrca                                          ; $60D8: $0F
    rlca                                          ; $60D9: $07
    rrca                                          ; $60DA: $0F
    rlca                                          ; $60DB: $07
    rrca                                          ; $60DC: $0F
    dec b                                         ; $60DD: $05
    rrca                                          ; $60DE: $0F
    ld b, $74                                     ; $60DF: $06 $74
    add sp, $58                                   ; $60E1: $E8 $58
    and b                                         ; $60E3: $A0
    jr nc, @-$3E                                  ; $60E4: $30 $C0

    ldh [rP1], a                                  ; $60E6: $E0 $00
    ldh a, [$E0]                                  ; $60E8: $F0 $E0
    ldh a, [$E0]                                  ; $60EA: $F0 $E0
    ldh a, [$A0]                                  ; $60EC: $F0 $A0
    ldh a, [$A0]                                  ; $60EE: $F0 $A0
    cp $60                                        ; $60F0: $FE $60
    ld a, [hl]                                    ; $60F2: $7E
    inc e                                         ; $60F3: $1C
    ld a, [hl]                                    ; $60F4: $7E
    inc a                                         ; $60F5: $3C
    ld a, [hl]                                    ; $60F6: $7E
    jr c, jr_00C_6172                             ; $60F7: $38 $79

    ld [hl], $71                                  ; $60F9: $36 $71
    ld c, $52                                     ; $60FB: $0E $52
    inc l                                         ; $60FD: $2C
    ld a, $00                                     ; $60FE: $3E $00
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    ld bc, $0700                                  ; $6102: $01 $00 $07
    ld bc, $050F                                  ; $6105: $01 $0F $05
    rra                                           ; $6108: $1F
    dec c                                         ; $6109: $0D
    rra                                           ; $610A: $1F
    dec c                                         ; $610B: $0D
    rra                                           ; $610C: $1F
    ld c, $1F                                     ; $610D: $0E $1F
    rrca                                          ; $610F: $0F
    nop                                           ; $6110: $00
    nop                                           ; $6111: $00
    ret nz                                        ; $6112: $C0

    nop                                           ; $6113: $00
    ldh [$C0], a                                  ; $6114: $E0 $C0
    ldh a, [$C0]                                  ; $6116: $F0 $C0
    ld hl, sp-$30                                 ; $6118: $F8 $D0
    ld hl, sp-$50                                 ; $611A: $F8 $B0
    ld hl, sp-$50                                 ; $611C: $F8 $B0
    ld hl, sp+$50                                 ; $611E: $F8 $50
    ld bc, $0700                                  ; $6120: $01 $00 $07
    ld bc, $050F                                  ; $6123: $01 $0F $05
    rra                                           ; $6126: $1F
    dec c                                         ; $6127: $0D
    rra                                           ; $6128: $1F
    dec c                                         ; $6129: $0D
    rra                                           ; $612A: $1F
    ld c, $1F                                     ; $612B: $0E $1F
    ld c, $2F                                     ; $612D: $0E $2F
    ld d, $C0                                     ; $612F: $16 $C0
    nop                                           ; $6131: $00
    ldh [$C0], a                                  ; $6132: $E0 $C0
    ldh a, [$C0]                                  ; $6134: $F0 $C0
    ld hl, sp-$30                                 ; $6136: $F8 $D0
    ld hl, sp-$30                                 ; $6138: $F8 $D0
    ld hl, sp-$50                                 ; $613A: $F8 $B0
    ld hl, sp-$50                                 ; $613C: $F8 $B0
    db $F4                                        ; $613E: $F4
    xor b                                         ; $613F: $A8
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    ld bc, $0700                                  ; $6142: $01 $00 $07
    ld bc, $050F                                  ; $6145: $01 $0F $05
    rra                                           ; $6148: $1F
    dec c                                         ; $6149: $0D
    rra                                           ; $614A: $1F
    ld c, $1F                                     ; $614B: $0E $1F
    ld c, $1F                                     ; $614D: $0E $1F
    dec c                                         ; $614F: $0D
    nop                                           ; $6150: $00
    nop                                           ; $6151: $00
    ret nz                                        ; $6152: $C0

    nop                                           ; $6153: $00
    ldh [$C0], a                                  ; $6154: $E0 $C0
    ldh a, [$C0]                                  ; $6156: $F0 $C0
    ld hl, sp-$30                                 ; $6158: $F8 $D0
    ld hl, sp-$30                                 ; $615A: $F8 $D0
    ld hl, sp-$50                                 ; $615C: $F8 $B0
    ld hl, sp+$70                                 ; $615E: $F8 $70
    cpl                                           ; $6160: $2F
    rla                                           ; $6161: $17
    rra                                           ; $6162: $1F
    rlca                                          ; $6163: $07
    rrca                                          ; $6164: $0F
    inc bc                                        ; $6165: $03
    rlca                                          ; $6166: $07
    nop                                           ; $6167: $00
    rrca                                          ; $6168: $0F
    rlca                                          ; $6169: $07
    rrca                                          ; $616A: $0F
    rlca                                          ; $616B: $07
    rrca                                          ; $616C: $0F
    rlca                                          ; $616D: $07
    rrca                                          ; $616E: $0F
    rlca                                          ; $616F: $07
    db $F4                                        ; $6170: $F4
    xor b                                         ; $6171: $A8

jr_00C_6172:
    ld hl, sp-$20                                 ; $6172: $F8 $E0
    ldh a, [$C0]                                  ; $6174: $F0 $C0
    ldh [rP1], a                                  ; $6176: $E0 $00
    ldh a, [$E0]                                  ; $6178: $F0 $E0
    ldh a, [$E0]                                  ; $617A: $F0 $E0
    ldh a, [$E0]                                  ; $617C: $F0 $E0
    ldh a, [$A0]                                  ; $617E: $F0 $A0
    cpl                                           ; $6180: $2F
    ld d, $1F                                     ; $6181: $16 $1F
    rlca                                          ; $6183: $07
    rrca                                          ; $6184: $0F
    inc bc                                        ; $6185: $03
    rlca                                          ; $6186: $07
    nop                                           ; $6187: $00
    rrca                                          ; $6188: $0F
    rlca                                          ; $6189: $07
    rrca                                          ; $618A: $0F
    rlca                                          ; $618B: $07
    rrca                                          ; $618C: $0F
    rlca                                          ; $618D: $07
    rrca                                          ; $618E: $0F
    dec b                                         ; $618F: $05
    db $F4                                        ; $6190: $F4
    add sp, -$08                                  ; $6191: $E8 $F8
    ldh [$F0], a                                  ; $6193: $E0 $F0
    ret nz                                        ; $6195: $C0

    ldh [rP1], a                                  ; $6196: $E0 $00
    ldh a, [$E0]                                  ; $6198: $F0 $E0
    ldh a, [$E0]                                  ; $619A: $F0 $E0
    ldh a, [$E0]                                  ; $619C: $F0 $E0
    ldh a, [$E0]                                  ; $619E: $F0 $E0
    cp $3C                                        ; $61A0: $FE $3C
    ld a, [hl]                                    ; $61A2: $7E
    jr nc, jr_00C_6223                            ; $61A3: $30 $7E

    inc c                                         ; $61A5: $0C
    ld a, [hl]                                    ; $61A6: $7E
    jr nz, jr_00C_620D                            ; $61A7: $20 $64

    jr jr_00C_61CD                                ; $61A9: $18 $22

    inc e                                         ; $61AB: $1C
    ld d, d                                       ; $61AC: $52
    inc l                                         ; $61AD: $2C
    ld a, $00                                     ; $61AE: $3E $00
    dec de                                        ; $61B0: $1B
    nop                                           ; $61B1: $00
    ld a, a                                       ; $61B2: $7F
    add hl, de                                    ; $61B3: $19
    rst $38                                       ; $61B4: $FF
    ld [hl], a                                    ; $61B5: $77
    rst $38                                       ; $61B6: $FF
    ld [hl], a                                    ; $61B7: $77
    rst $38                                       ; $61B8: $FF
    ld l, a                                       ; $61B9: $6F
    rst $38                                       ; $61BA: $FF
    ld c, c                                       ; $61BB: $49
    jp hl                                         ; $61BC: $E9


    ld b, [hl]                                    ; $61BD: $46
    ld b, h                                       ; $61BE: $44
    inc bc                                        ; $61BF: $03
    ldh [rP1], a                                  ; $61C0: $E0 $00
    ldh a, [$E0]                                  ; $61C2: $F0 $E0
    ld hl, sp-$10                                 ; $61C4: $F8 $F0
    ld hl, sp-$10                                 ; $61C6: $F8 $F0
    ld hl, sp-$50                                 ; $61C8: $F8 $B0
    or b                                          ; $61CA: $B0
    ld b, b                                       ; $61CB: $40
    ret nc                                        ; $61CC: $D0

jr_00C_61CD:
    ldh [$50], a                                  ; $61CD: $E0 $50
    and b                                         ; $61CF: $A0
    ld b, h                                       ; $61D0: $44
    inc bc                                        ; $61D1: $03
    ld [bc], a                                    ; $61D2: $02
    ld bc, $0003                                  ; $61D3: $01 $03 $00
    rlca                                          ; $61D6: $07
    inc bc                                        ; $61D7: $03
    rrca                                          ; $61D8: $0F
    rlca                                          ; $61D9: $07
    rrca                                          ; $61DA: $0F
    rlca                                          ; $61DB: $07
    rrca                                          ; $61DC: $0F
    dec b                                         ; $61DD: $05
    rlca                                          ; $61DE: $07
    nop                                           ; $61DF: $00
    ld d, b                                       ; $61E0: $50
    and b                                         ; $61E1: $A0
    db $10                                        ; $61E2: $10
    ldh [$E0], a                                  ; $61E3: $E0 $E0
    nop                                           ; $61E5: $00
    add b                                         ; $61E6: $80
    nop                                           ; $61E7: $00
    ret nz                                        ; $61E8: $C0

    add b                                         ; $61E9: $80
    ldh [$C0], a                                  ; $61EA: $E0 $C0
    ldh [$C0], a                                  ; $61EC: $E0 $C0
    ret nz                                        ; $61EE: $C0

    add b                                         ; $61EF: $80
    ld hl, $3E1E                                  ; $61F0: $21 $1E $3E
    nop                                           ; $61F3: $00
    ld a, b                                       ; $61F4: $78
    jr nc, jr_00C_6273                            ; $61F5: $30 $7C

    jr c, @+$7E                                   ; $61F7: $38 $7C

    jr nc, jr_00C_6277                            ; $61F9: $30 $7C

    jr c, @+$7E                                   ; $61FB: $38 $7C

    jr c, jr_00C_6277                             ; $61FD: $38 $78

    nop                                           ; $61FF: $00
    ld b, h                                       ; $6200: $44
    inc bc                                        ; $6201: $03
    ld [bc], a                                    ; $6202: $02
    ld bc, $0003                                  ; $6203: $01 $03 $00
    rlca                                          ; $6206: $07
    inc bc                                        ; $6207: $03
    rrca                                          ; $6208: $0F
    rlca                                          ; $6209: $07
    rrca                                          ; $620A: $0F
    rlca                                          ; $620B: $07
    rrca                                          ; $620C: $0F

jr_00C_620D:
    rlca                                          ; $620D: $07
    rrca                                          ; $620E: $0F
    ld b, $50                                     ; $620F: $06 $50
    and b                                         ; $6211: $A0
    db $10                                        ; $6212: $10
    ldh [$E0], a                                  ; $6213: $E0 $E0
    nop                                           ; $6215: $00
    add b                                         ; $6216: $80
    nop                                           ; $6217: $00
    ret nz                                        ; $6218: $C0

    add b                                         ; $6219: $80
    ldh [$80], a                                  ; $621A: $E0 $80

jr_00C_621C:
    ldh [$80], a                                  ; $621C: $E0 $80
    ldh [$80], a                                  ; $621E: $E0 $80
    rlca                                          ; $6220: $07
    inc bc                                        ; $6221: $03
    rrca                                          ; $6222: $0F

jr_00C_6223:
    rlca                                          ; $6223: $07
    rra                                           ; $6224: $1F
    rrca                                          ; $6225: $0F
    ccf                                           ; $6226: $3F
    rra                                           ; $6227: $1F
    ld e, a                                       ; $6228: $5F
    jr z, jr_00C_6274                             ; $6229: $28 $49

    ld [hl], $61                                  ; $622B: $36 $61
    ld e, $7F                                     ; $622D: $1E $7F
    nop                                           ; $622F: $00
    add b                                         ; $6230: $80
    nop                                           ; $6231: $00
    add b                                         ; $6232: $80
    nop                                           ; $6233: $00
    ldh a, [$80]                                  ; $6234: $F0 $80
    ret z                                         ; $6236: $C8

    or b                                          ; $6237: $B0
    adc b                                         ; $6238: $88
    ld [hl], b                                    ; $6239: $70
    db $10                                        ; $623A: $10
    ldh [$30], a                                  ; $623B: $E0 $30
    ret nz                                        ; $623D: $C0

    ldh [rP1], a                                  ; $623E: $E0 $00
    rlca                                          ; $6240: $07
    inc bc                                        ; $6241: $03
    rrca                                          ; $6242: $0F
    rlca                                          ; $6243: $07
    rrca                                          ; $6244: $0F
    rlca                                          ; $6245: $07
    rra                                           ; $6246: $1F
    rrca                                          ; $6247: $0F
    rra                                           ; $6248: $1F
    inc c                                         ; $6249: $0C
    inc c                                         ; $624A: $0C
    inc bc                                        ; $624B: $03
    inc c                                         ; $624C: $0C
    inc bc                                        ; $624D: $03
    rlca                                          ; $624E: $07
    nop                                           ; $624F: $00
    add b                                         ; $6250: $80
    nop                                           ; $6251: $00
    add b                                         ; $6252: $80
    nop                                           ; $6253: $00
    add b                                         ; $6254: $80
    nop                                           ; $6255: $00
    ret nz                                        ; $6256: $C0

    nop                                           ; $6257: $00
    ldh [rP1], a                                  ; $6258: $E0 $00
    jr nc, jr_00C_621C                            ; $625A: $30 $C0

    db $10                                        ; $625C: $10
    ldh [$F0], a                                  ; $625D: $E0 $F0
    nop                                           ; $625F: $00
    rrca                                          ; $6260: $0F
    inc b                                         ; $6261: $04
    rlca                                          ; $6262: $07
    inc bc                                        ; $6263: $03
    rrca                                          ; $6264: $0F
    rlca                                          ; $6265: $07
    rra                                           ; $6266: $1F
    rrca                                          ; $6267: $0F
    rra                                           ; $6268: $1F
    ld [$1738], sp                                ; $6269: $08 $38 $17
    jr nc, jr_00C_627D                            ; $626C: $30 $0F

    rra                                           ; $626E: $1F
    nop                                           ; $626F: $00
    ret nz                                        ; $6270: $C0

    nop                                           ; $6271: $00
    ret nz                                        ; $6272: $C0

jr_00C_6273:
    add b                                         ; $6273: $80

jr_00C_6274:
    ld hl, sp-$40                                 ; $6274: $F8 $C0
    db $E4                                        ; $6276: $E4

jr_00C_6277:
    ret c                                         ; $6277: $D8

    call nz, $8838                                ; $6278: $C4 $38 $88
    ld [hl], b                                    ; $627B: $70
    sbc b                                         ; $627C: $98

jr_00C_627D:
    ld h, b                                       ; $627D: $60
    ldh [rP1], a                                  ; $627E: $E0 $00
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    ld e, $00                                     ; $6284: $1E $00
    ccf                                           ; $6286: $3F
    inc e                                         ; $6287: $1C
    ccf                                           ; $6288: $3F
    dec de                                        ; $6289: $1B
    ccf                                           ; $628A: $3F
    rla                                           ; $628B: $17
    rra                                           ; $628C: $1F
    rlca                                          ; $628D: $07
    rrca                                          ; $628E: $0F
    rlca                                          ; $628F: $07
    nop                                           ; $6290: $00
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    nop                                           ; $6293: $00
    nop                                           ; $6294: $00
    nop                                           ; $6295: $00
    ld hl, sp+$00                                 ; $6296: $F8 $00
    db $FC                                        ; $6298: $FC
    ld hl, sp-$02                                 ; $6299: $F8 $FE
    ld a, h                                       ; $629B: $7C
    cp $BC                                        ; $629C: $FE $BC
    rst $38                                       ; $629E: $FF
    ld l, $00                                     ; $629F: $2E $00
    nop                                           ; $62A1: $00
    ld bc, $0300                                  ; $62A2: $01 $00 $03
    ld bc, $0007                                  ; $62A5: $01 $07 $00
    rrca                                          ; $62A8: $0F
    rlca                                          ; $62A9: $07
    rra                                           ; $62AA: $1F
    rrca                                          ; $62AB: $0F
    rra                                           ; $62AC: $1F
    rrca                                          ; $62AD: $0F
    rra                                           ; $62AE: $1F

jr_00C_62AF:
    dec c                                         ; $62AF: $0D
    nop                                           ; $62B0: $00
    nop                                           ; $62B1: $00
    ret nz                                        ; $62B2: $C0

    nop                                           ; $62B3: $00
    ldh [$C0], a                                  ; $62B4: $E0 $C0
    ldh a, [rNR41]                                ; $62B6: $F0 $20

jr_00C_62B8:
    ldh a, [$E0]                                  ; $62B8: $F0 $E0
    ld hl, sp-$10                                 ; $62BA: $F8 $F0
    ld hl, sp-$10                                 ; $62BC: $F8 $F0
    ld hl, sp+$30                                 ; $62BE: $F8 $30
    rrca                                          ; $62C0: $0F
    ld [bc], a                                    ; $62C1: $02

jr_00C_62C2:
    ld a, [bc]                                    ; $62C2: $0A
    dec b                                         ; $62C3: $05
    ld b, $01                                     ; $62C4: $06 $01
    rlca                                          ; $62C6: $07
    ld [bc], a                                    ; $62C7: $02
    rrca                                          ; $62C8: $0F
    rlca                                          ; $62C9: $07
    rra                                           ; $62CA: $1F
    rrca                                          ; $62CB: $0F
    rra                                           ; $62CC: $1F
    dec c                                         ; $62CD: $0D
    rra                                           ; $62CE: $1F
    dec bc                                        ; $62CF: $0B
    cpl                                           ; $62D0: $2F
    sub $DF                                       ; $62D1: $D6 $DF
    ld a, [$A856]                                 ; $62D3: $FA $56 $A8
    ld [$F0F0], sp                                ; $62D6: $08 $F0 $F0
    nop                                           ; $62D9: $00
    ldh [$C0], a                                  ; $62DA: $E0 $C0
    ldh [$C0], a                                  ; $62DC: $E0 $C0
    ret nz                                        ; $62DE: $C0

    add b                                         ; $62DF: $80
    dec e                                         ; $62E0: $1D
    ld a, [bc]                                    ; $62E1: $0A
    ld l, $17                                     ; $62E2: $2E $17
    ld a, [de]                                    ; $62E4: $1A
    dec b                                         ; $62E5: $05
    inc c                                         ; $62E6: $0C
    inc bc                                        ; $62E7: $03
    rrca                                          ; $62E8: $0F
    nop                                           ; $62E9: $00
    rra                                           ; $62EA: $1F
    rrca                                          ; $62EB: $0F
    rra                                           ; $62EC: $1F
    dec c                                         ; $62ED: $0D
    rra                                           ; $62EE: $1F
    dec bc                                        ; $62EF: $0B
    jr c, jr_00C_62C2                             ; $62F0: $38 $D0

    ld [hl], h                                    ; $62F2: $74
    add sp, $58                                   ; $62F3: $E8 $58
    and b                                         ; $62F5: $A0
    jr nc, jr_00C_62B8                            ; $62F6: $30 $C0

    ldh a, [rP1]                                  ; $62F8: $F0 $00
    ld hl, sp-$10                                 ; $62FA: $F8 $F0
    ld hl, sp-$50                                 ; $62FC: $F8 $B0
    ld hl, sp-$30                                 ; $62FE: $F8 $D0
    rrca                                          ; $6300: $0F
    rlca                                          ; $6301: $07
    rrca                                          ; $6302: $0F
    rlca                                          ; $6303: $07
    rrca                                          ; $6304: $0F
    rlca                                          ; $6305: $07
    rra                                           ; $6306: $1F
    rrca                                          ; $6307: $0F
    rra                                           ; $6308: $1F
    inc c                                         ; $6309: $0C
    ld e, $01                                     ; $630A: $1E $01
    db $10                                        ; $630C: $10
    rrca                                          ; $630D: $0F
    rrca                                          ; $630E: $0F
    nop                                           ; $630F: $00
    ret nz                                        ; $6310: $C0

    add b                                         ; $6311: $80
    ldh [$C0], a                                  ; $6312: $E0 $C0
    ldh [$C0], a                                  ; $6314: $E0 $C0
    ldh a, [$80]                                  ; $6316: $F0 $80
    ret z                                         ; $6318: $C8

    jr nc, jr_00C_6363                            ; $6319: $30 $48

    or b                                          ; $631B: $B0
    ld [hl], b                                    ; $631C: $70
    add b                                         ; $631D: $80
    ret nz                                        ; $631E: $C0

    nop                                           ; $631F: $00
    ldh a, [$E0]                                  ; $6320: $F0 $E0
    ldh a, [$E0]                                  ; $6322: $F0 $E0
    ldh a, [$E0]                                  ; $6324: $F0 $E0
    ldh a, [$C0]                                  ; $6326: $F0 $C0
    ret z                                         ; $6328: $C8

jr_00C_6329:
    jr nc, jr_00C_62AF                            ; $6329: $30 $84

    ld a, b                                       ; $632B: $78
    call nz, $F838                                ; $632C: $C4 $38 $F8
    nop                                           ; $632F: $00
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    ret nz                                        ; $6332: $C0

    nop                                           ; $6333: $00
    ldh [$C0], a                                  ; $6334: $E0 $C0
    ldh a, [$C0]                                  ; $6336: $F0 $C0
    ld hl, sp-$30                                 ; $6338: $F8 $D0
    ld hl, sp+$30                                 ; $633A: $F8 $30
    ld hl, sp-$10                                 ; $633C: $F8 $F0
    ld hl, sp-$10                                 ; $633E: $F8 $F0
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    ld c, $00                                     ; $6342: $0E $00
    rra                                           ; $6344: $1F
    ld c, $1F                                     ; $6345: $0E $1F
    ld c, $1F                                     ; $6347: $0E $1F
    dec c                                         ; $6349: $0D
    rrca                                          ; $634A: $0F
    inc bc                                        ; $634B: $03
    rrca                                          ; $634C: $0F
    rlca                                          ; $634D: $07
    rrca                                          ; $634E: $0F
    rlca                                          ; $634F: $07
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    db $FC                                        ; $6352: $FC
    nop                                           ; $6353: $00
    cp $FC                                        ; $6354: $FE $FC
    rst $38                                       ; $6356: $FF
    cp $FF                                        ; $6357: $FE $FF
    cp $FF                                        ; $6359: $FE $FF
    ld a, [$F2FF]                                 ; $635B: $FA $FF $F2
    or $E8                                        ; $635E: $F6 $E8
    db $F4                                        ; $6360: $F4
    add sp, -$08                                  ; $6361: $E8 $F8

jr_00C_6363:
    ldh [$F0], a                                  ; $6363: $E0 $F0
    nop                                           ; $6365: $00
    ldh a, [$E0]                                  ; $6366: $F0 $E0
    ld hl, sp-$10                                 ; $6368: $F8 $F0
    ld hl, sp-$10                                 ; $636A: $F8 $F0
    ld hl, sp-$10                                 ; $636C: $F8 $F0
    ld hl, sp-$10                                 ; $636E: $F8 $F0
    rlca                                          ; $6370: $07
    inc bc                                        ; $6371: $03
    inc bc                                        ; $6372: $03
    nop                                           ; $6373: $00
    rlca                                          ; $6374: $07

jr_00C_6375:
    inc bc                                        ; $6375: $03
    rlca                                          ; $6376: $07
    inc bc                                        ; $6377: $03
    rlca                                          ; $6378: $07
    inc bc                                        ; $6379: $03
    inc bc                                        ; $637A: $03
    ld bc, $0103                                  ; $637B: $01 $03 $01
    inc bc                                        ; $637E: $03
    ld bc, $D8E4                                  ; $637F: $01 $E4 $D8
    ret z                                         ; $6382: $C8

    jr nc, jr_00C_6375                            ; $6383: $30 $F0

    ret nz                                        ; $6385: $C0

    ldh a, [$E0]                                  ; $6386: $F0 $E0
    ldh a, [$E0]                                  ; $6388: $F0 $E0

jr_00C_638A:
    ldh a, [$60]                                  ; $638A: $F0 $60
    ldh a, [$60]                                  ; $638C: $F0 $60
    ldh [$80], a                                  ; $638E: $E0 $80
    ldh a, [$E0]                                  ; $6390: $F0 $E0
    ldh a, [$E0]                                  ; $6392: $F0 $E0

jr_00C_6394:
    ldh a, [$E0]                                  ; $6394: $F0 $E0
    ldh a, [$E0]                                  ; $6396: $F0 $E0
    ld hl, sp-$20                                 ; $6398: $F8 $E0
    db $E4                                        ; $639A: $E4
    jr jr_00C_6329                                ; $639B: $18 $8C

    ld [hl], b                                    ; $639D: $70
    ld hl, sp+$00                                 ; $639E: $F8 $00
    db $FC                                        ; $63A0: $FC
    ld a, b                                       ; $63A1: $78
    db $FC                                        ; $63A2: $FC
    ld a, b                                       ; $63A3: $78
    db $FC                                        ; $63A4: $FC
    ld a, b                                       ; $63A5: $78
    db $FC                                        ; $63A6: $FC
    ld a, b                                       ; $63A7: $78
    cp $38                                        ; $63A8: $FE $38

jr_00C_63AA:
    cp c                                          ; $63AA: $B9
    ld b, [hl]                                    ; $63AB: $46
    db $E3                                        ; $63AC: $E3
    inc e                                         ; $63AD: $1C
    ld a, $00                                     ; $63AE: $3E $00
    rra                                           ; $63B0: $1F
    dec c                                         ; $63B1: $0D
    dec e                                         ; $63B2: $1D
    ld a, [bc]                                    ; $63B3: $0A
    ld l, $17                                     ; $63B4: $2E $17
    ld a, [de]                                    ; $63B6: $1A
    dec b                                         ; $63B7: $05
    inc c                                         ; $63B8: $0C
    inc bc                                        ; $63B9: $03
    rlca                                          ; $63BA: $07
    nop                                           ; $63BB: $00
    rrca                                          ; $63BC: $0F
    rlca                                          ; $63BD: $07
    rrca                                          ; $63BE: $0F
    dec b                                         ; $63BF: $05
    ld hl, sp+$30                                 ; $63C0: $F8 $30
    jr c, jr_00C_6394                             ; $63C2: $38 $D0

    ld [hl], h                                    ; $63C4: $74
    add sp, $58                                   ; $63C5: $E8 $58
    and b                                         ; $63C7: $A0
    jr nc, jr_00C_638A                            ; $63C8: $30 $C0

    ldh [rP1], a                                  ; $63CA: $E0 $00
    ldh a, [$A0]                                  ; $63CC: $F0 $A0
    ldh a, [$60]                                  ; $63CE: $F0 $60
    rra                                           ; $63D0: $1F
    dec c                                         ; $63D1: $0D
    dec e                                         ; $63D2: $1D
    ld a, [bc]                                    ; $63D3: $0A
    ld l, $17                                     ; $63D4: $2E $17
    ld a, [de]                                    ; $63D6: $1A
    dec b                                         ; $63D7: $05
    inc c                                         ; $63D8: $0C
    inc bc                                        ; $63D9: $03
    rlca                                          ; $63DA: $07
    nop                                           ; $63DB: $00
    rrca                                          ; $63DC: $0F
    dec b                                         ; $63DD: $05
    rrca                                          ; $63DE: $0F
    ld b, $F8                                     ; $63DF: $06 $F8
    jr nc, @+$3A                                  ; $63E1: $30 $38

    ret nc                                        ; $63E3: $D0

    ld [hl], h                                    ; $63E4: $74
    add sp, $58                                   ; $63E5: $E8 $58
    and b                                         ; $63E7: $A0
    jr nc, jr_00C_63AA                            ; $63E8: $30 $C0

    ldh [rP1], a                                  ; $63EA: $E0 $00
    ldh a, [$E0]                                  ; $63EC: $F0 $E0
    ldh a, [$A0]                                  ; $63EE: $F0 $A0
    cp $6C                                        ; $63F0: $FE $6C
    ld a, [hl]                                    ; $63F2: $7E
    inc e                                         ; $63F3: $1C
    ld a, [hl]                                    ; $63F4: $7E
    inc a                                         ; $63F5: $3C
    ld a, [hl]                                    ; $63F6: $7E
    jr c, jr_00C_6472                             ; $63F7: $38 $79

    ld [hl], $71                                  ; $63F9: $36 $71
    ld c, $52                                     ; $63FB: $0E $52
    inc l                                         ; $63FD: $2C
    ld a, $00                                     ; $63FE: $3E $00
    rra                                           ; $6400: $1F
    rrca                                          ; $6401: $0F
    cpl                                           ; $6402: $2F
    rla                                           ; $6403: $17
    rra                                           ; $6404: $1F
    rlca                                          ; $6405: $07
    rlca                                          ; $6406: $07
    nop                                           ; $6407: $00
    rrca                                          ; $6408: $0F
    rlca                                          ; $6409: $07
    rrca                                          ; $640A: $0F
    rlca                                          ; $640B: $07
    rrca                                          ; $640C: $0F
    rlca                                          ; $640D: $07
    rrca                                          ; $640E: $0F
    rlca                                          ; $640F: $07
    ld hl, sp-$10                                 ; $6410: $F8 $F0
    db $F4                                        ; $6412: $F4
    add sp, -$08                                  ; $6413: $E8 $F8
    ldh [$E0], a                                  ; $6415: $E0 $E0
    nop                                           ; $6417: $00
    ldh a, [$E0]                                  ; $6418: $F0 $E0
    ldh a, [$E0]                                  ; $641A: $F0 $E0
    ldh a, [$E0]                                  ; $641C: $F0 $E0
    ldh a, [$E0]                                  ; $641E: $F0 $E0
    ld a, [hl]                                    ; $6420: $7E
    inc l                                         ; $6421: $2C
    ld a, [hl]                                    ; $6422: $7E
    inc e                                         ; $6423: $1C
    ld a, [hl]                                    ; $6424: $7E
    inc a                                         ; $6425: $3C
    ld a, [hl]                                    ; $6426: $7E
    jr nz, jr_00C_648D                            ; $6427: $20 $64

    jr @+$24                                      ; $6429: $18 $22

    inc e                                         ; $642B: $1C
    ld d, d                                       ; $642C: $52
    inc l                                         ; $642D: $2C
    ld a, $00                                     ; $642E: $3E $00
    nop                                           ; $6430: $00
    nop                                           ; $6431: $00
    dec c                                         ; $6432: $0D
    nop                                           ; $6433: $00

jr_00C_6434:
    rra                                           ; $6434: $1F
    inc c                                         ; $6435: $0C
    ccf                                           ; $6436: $3F
    dec de                                        ; $6437: $1B
    rra                                           ; $6438: $1F
    dec bc                                        ; $6439: $0B
    rrca                                          ; $643A: $0F
    rlca                                          ; $643B: $07
    rrca                                          ; $643C: $0F
    inc b                                         ; $643D: $04
    inc b                                         ; $643E: $04
    inc bc                                        ; $643F: $03
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    ld hl, sp+$00                                 ; $6442: $F8 $00
    db $FC                                        ; $6444: $FC
    ld hl, sp-$02                                 ; $6445: $F8 $FE
    ld hl, sp-$02                                 ; $6447: $F8 $FE
    db $FC                                        ; $6449: $FC
    cp $D4                                        ; $644A: $FE $D4
    call c, $E8A0                                 ; $644C: $DC $A0 $E8
    ld [hl], b                                    ; $644F: $70
    inc b                                         ; $6450: $04
    inc bc                                        ; $6451: $03
    ld [bc], a                                    ; $6452: $02
    ld bc, $0003                                  ; $6453: $01 $03 $00
    rlca                                          ; $6456: $07
    inc bc                                        ; $6457: $03
    rrca                                          ; $6458: $0F
    rlca                                          ; $6459: $07
    rrca                                          ; $645A: $0F
    rlca                                          ; $645B: $07
    rrca                                          ; $645C: $0F
    dec b                                         ; $645D: $05
    rlca                                          ; $645E: $07
    inc bc                                        ; $645F: $03
    add sp, $70                                   ; $6460: $E8 $70
    jr z, jr_00C_6434                             ; $6462: $28 $D0

Call_00C_6464:
jr_00C_6464:
    ld [$F0F0], sp                                ; $6464: $08 $F0 $F0
    nop                                           ; $6467: $00
    ret nz                                        ; $6468: $C0

    add b                                         ; $6469: $80
    ldh [$C0], a                                  ; $646A: $E0 $C0
    ldh [$C0], a                                  ; $646C: $E0 $C0
    ret nz                                        ; $646E: $C0

    add b                                         ; $646F: $80
    ld b, l                                       ; $6470: $45
    ld a, [hl-]                                   ; $6471: $3A

jr_00C_6472:
    ld h, c                                       ; $6472: $61
    ld e, $FE                                     ; $6473: $1E $FE
    ld h, b                                       ; $6475: $60
    ld hl, sp+$70                                 ; $6476: $F8 $70
    ld hl, sp+$70                                 ; $6478: $F8 $70
    ld hl, sp+$70                                 ; $647A: $F8 $70
    ld hl, sp+$50                                 ; $647C: $F8 $50
    ldh a, [$60]                                  ; $647E: $F0 $60
    inc b                                         ; $6480: $04
    inc bc                                        ; $6481: $03
    ld [bc], a                                    ; $6482: $02
    ld bc, $0003                                  ; $6483: $01 $03 $00
    rlca                                          ; $6486: $07
    inc bc                                        ; $6487: $03
    rrca                                          ; $6488: $0F
    rlca                                          ; $6489: $07
    rrca                                          ; $648A: $0F
    rlca                                          ; $648B: $07
    rrca                                          ; $648C: $0F

jr_00C_648D:
    rlca                                          ; $648D: $07
    rrca                                          ; $648E: $0F
    ld b, $E8                                     ; $648F: $06 $E8
    ld [hl], b                                    ; $6491: $70
    jr z, jr_00C_6464                             ; $6492: $28 $D0

    ld [$F0F0], sp                                ; $6494: $08 $F0 $F0
    nop                                           ; $6497: $00
    ret nz                                        ; $6498: $C0

    add b                                         ; $6499: $80
    ldh [$80], a                                  ; $649A: $E0 $80

jr_00C_649C:
    ldh [$80], a                                  ; $649C: $E0 $80
    ldh [$80], a                                  ; $649E: $E0 $80
    rlca                                          ; $64A0: $07
    inc bc                                        ; $64A1: $03
    rrca                                          ; $64A2: $0F
    rlca                                          ; $64A3: $07
    rra                                           ; $64A4: $1F
    rrca                                          ; $64A5: $0F
    ccf                                           ; $64A6: $3F
    rra                                           ; $64A7: $1F
    ld e, a                                       ; $64A8: $5F
    jr z, jr_00C_64F4                             ; $64A9: $28 $49

    ld [hl], $61                                  ; $64AB: $36 $61
    ld e, $7F                                     ; $64AD: $1E $7F
    nop                                           ; $64AF: $00
    add b                                         ; $64B0: $80
    nop                                           ; $64B1: $00
    add b                                         ; $64B2: $80
    nop                                           ; $64B3: $00
    ldh a, [$80]                                  ; $64B4: $F0 $80
    ret z                                         ; $64B6: $C8

    or b                                          ; $64B7: $B0
    adc b                                         ; $64B8: $88
    ld [hl], b                                    ; $64B9: $70
    db $10                                        ; $64BA: $10
    ldh [$30], a                                  ; $64BB: $E0 $30
    ret nz                                        ; $64BD: $C0

    ldh [rP1], a                                  ; $64BE: $E0 $00
    rlca                                          ; $64C0: $07
    inc bc                                        ; $64C1: $03
    rrca                                          ; $64C2: $0F
    rlca                                          ; $64C3: $07
    rrca                                          ; $64C4: $0F
    rlca                                          ; $64C5: $07
    rra                                           ; $64C6: $1F
    rrca                                          ; $64C7: $0F
    rra                                           ; $64C8: $1F
    inc c                                         ; $64C9: $0C
    inc c                                         ; $64CA: $0C
    inc bc                                        ; $64CB: $03
    inc c                                         ; $64CC: $0C
    inc bc                                        ; $64CD: $03
    rlca                                          ; $64CE: $07
    nop                                           ; $64CF: $00
    add b                                         ; $64D0: $80
    nop                                           ; $64D1: $00
    add b                                         ; $64D2: $80
    nop                                           ; $64D3: $00
    add b                                         ; $64D4: $80
    nop                                           ; $64D5: $00
    ret nz                                        ; $64D6: $C0

    nop                                           ; $64D7: $00
    ldh [rP1], a                                  ; $64D8: $E0 $00
    jr nc, jr_00C_649C                            ; $64DA: $30 $C0

    db $10                                        ; $64DC: $10
    ldh [$F0], a                                  ; $64DD: $E0 $F0
    nop                                           ; $64DF: $00
    rrca                                          ; $64E0: $0F
    rlca                                          ; $64E1: $07
    rlca                                          ; $64E2: $07
    inc bc                                        ; $64E3: $03
    rrca                                          ; $64E4: $0F
    rlca                                          ; $64E5: $07
    rra                                           ; $64E6: $1F
    rrca                                          ; $64E7: $0F
    rra                                           ; $64E8: $1F
    ld [$1738], sp                                ; $64E9: $08 $38 $17
    jr nc, jr_00C_64FD                            ; $64EC: $30 $0F

    rra                                           ; $64EE: $1F
    nop                                           ; $64EF: $00
    ret nz                                        ; $64F0: $C0

    nop                                           ; $64F1: $00
    ret nz                                        ; $64F2: $C0

    add b                                         ; $64F3: $80

jr_00C_64F4:
    ld hl, sp-$40                                 ; $64F4: $F8 $C0
    db $E4                                        ; $64F6: $E4
    ret c                                         ; $64F7: $D8

    call nz, $8838                                ; $64F8: $C4 $38 $88
    ld [hl], b                                    ; $64FB: $70
    sbc b                                         ; $64FC: $98

jr_00C_64FD:
    ld h, b                                       ; $64FD: $60
    ldh [rP1], a                                  ; $64FE: $E0 $00
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    rrca                                          ; $6506: $0F
    nop                                           ; $6507: $00
    rra                                           ; $6508: $1F
    rrca                                          ; $6509: $0F
    ccf                                           ; $650A: $3F
    rra                                           ; $650B: $1F
    ld a, a                                       ; $650C: $7F
    ccf                                           ; $650D: $3F
    ld a, a                                       ; $650E: $7F
    inc a                                         ; $650F: $3C
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    nop                                           ; $6515: $00
    ldh [rP1], a                                  ; $6516: $E0 $00

jr_00C_6518:
    ldh a, [$E0]                                  ; $6518: $F0 $E0
    ld hl, sp-$10                                 ; $651A: $F8 $F0
    ld hl, sp-$10                                 ; $651C: $F8 $F0
    db $FC                                        ; $651E: $FC
    cp b                                          ; $651F: $B8
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    rlca                                          ; $6526: $07
    nop                                           ; $6527: $00
    rrca                                          ; $6528: $0F
    rlca                                          ; $6529: $07
    rra                                           ; $652A: $1F
    ld c, $3F                                     ; $652B: $0E $3F
    rra                                           ; $652D: $1F
    ccf                                           ; $652E: $3F
    dec e                                         ; $652F: $1D
    nop                                           ; $6530: $00
    nop                                           ; $6531: $00
    nop                                           ; $6532: $00
    nop                                           ; $6533: $00
    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    ldh [rP1], a                                  ; $6536: $E0 $00

jr_00C_6538:
    ldh a, [$E0]                                  ; $6538: $F0 $E0
    ld hl, sp-$10                                 ; $653A: $F8 $F0
    db $FC                                        ; $653C: $FC
    ld a, b                                       ; $653D: $78
    db $FC                                        ; $653E: $FC
    jr c, jr_00C_657D                             ; $653F: $38 $3C

    dec bc                                        ; $6541: $0B

jr_00C_6542:
    ld l, $17                                     ; $6542: $2E $17
    ld a, [de]                                    ; $6544: $1A
    dec b                                         ; $6545: $05
    inc b                                         ; $6546: $04
    inc bc                                        ; $6547: $03
    rrca                                          ; $6548: $0F
    inc b                                         ; $6549: $04
    inc de                                        ; $654A: $13
    dec c                                         ; $654B: $0D
    inc de                                        ; $654C: $13
    dec c                                         ; $654D: $0D
    rrca                                          ; $654E: $0F
    ld bc, $58BC                                  ; $654F: $01 $BC $58
    ld a, h                                       ; $6552: $7C
    add sp, $58                                   ; $6553: $E8 $58
    and b                                         ; $6555: $A0
    jr nz, jr_00C_6518                            ; $6556: $20 $C0

    ldh [rP1], a                                  ; $6558: $E0 $00
    ret nc                                        ; $655A: $D0

    and b                                         ; $655B: $A0
    ldh [$80], a                                  ; $655C: $E0 $80
    ret nz                                        ; $655E: $C0

    add b                                         ; $655F: $80
    dec e                                         ; $6560: $1D
    ld a, [bc]                                    ; $6561: $0A
    ld l, $17                                     ; $6562: $2E $17
    ld a, [de]                                    ; $6564: $1A
    dec b                                         ; $6565: $05
    inc c                                         ; $6566: $0C
    inc bc                                        ; $6567: $03
    rlca                                          ; $6568: $07
    nop                                           ; $6569: $00
    rrca                                          ; $656A: $0F
    rlca                                          ; $656B: $07
    inc de                                        ; $656C: $13
    dec c                                         ; $656D: $0D
    inc de                                        ; $656E: $13
    dec c                                         ; $656F: $0D
    jr c, jr_00C_6542                             ; $6570: $38 $D0

    ld [hl], h                                    ; $6572: $74
    add sp, $58                                   ; $6573: $E8 $58
    and b                                         ; $6575: $A0
    jr nc, jr_00C_6538                            ; $6576: $30 $C0

    ldh [rP1], a                                  ; $6578: $E0 $00
    ldh a, [$E0]                                  ; $657A: $F0 $E0
    ret z                                         ; $657C: $C8

jr_00C_657D:
    or b                                          ; $657D: $B0
    ret z                                         ; $657E: $C8

    or b                                          ; $657F: $B0
    rrca                                          ; $6580: $0F
    rlca                                          ; $6581: $07
    rlca                                          ; $6582: $07
    inc bc                                        ; $6583: $03
    rlca                                          ; $6584: $07
    inc bc                                        ; $6585: $03
    rlca                                          ; $6586: $07
    inc bc                                        ; $6587: $03
    rrca                                          ; $6588: $0F
    inc b                                         ; $6589: $04
    rrca                                          ; $658A: $0F
    ld bc, $0F1F                                  ; $658B: $01 $1F $0F
    rrca                                          ; $658E: $0F
    nop                                           ; $658F: $00
    ret nz                                        ; $6590: $C0

    add b                                         ; $6591: $80
    ret nz                                        ; $6592: $C0

    add b                                         ; $6593: $80
    ret nz                                        ; $6594: $C0

    add b                                         ; $6595: $80
    ldh a, [$80]                                  ; $6596: $F0 $80
    ld hl, sp+$30                                 ; $6598: $F8 $30
    ld hl, sp-$50                                 ; $659A: $F8 $B0
    ldh a, [$80]                                  ; $659C: $F0 $80
    ret nz                                        ; $659E: $C0

    nop                                           ; $659F: $00
    ldh a, [$C0]                                  ; $65A0: $F0 $C0
    ldh [$C0], a                                  ; $65A2: $E0 $C0
    ldh [$C0], a                                  ; $65A4: $E0 $C0
    ldh a, [$C0]                                  ; $65A6: $F0 $C0
    ld hl, sp+$30                                 ; $65A8: $F8 $30
    db $FC                                        ; $65AA: $FC
    ld a, b                                       ; $65AB: $78
    db $FC                                        ; $65AC: $FC
    jr c, @-$06                                   ; $65AD: $38 $F8

    nop                                           ; $65AF: $00
    nop                                           ; $65B0: $00
    nop                                           ; $65B1: $00
    nop                                           ; $65B2: $00
    nop                                           ; $65B3: $00
    nop                                           ; $65B4: $00
    nop                                           ; $65B5: $00
    rlca                                          ; $65B6: $07
    nop                                           ; $65B7: $00
    rrca                                          ; $65B8: $0F
    rlca                                          ; $65B9: $07
    rra                                           ; $65BA: $1F
    rrca                                          ; $65BB: $0F
    ccf                                           ; $65BC: $3F
    rra                                           ; $65BD: $1F
    ccf                                           ; $65BE: $3F
    rra                                           ; $65BF: $1F
    nop                                           ; $65C0: $00
    nop                                           ; $65C1: $00
    nop                                           ; $65C2: $00
    nop                                           ; $65C3: $00
    nop                                           ; $65C4: $00
    nop                                           ; $65C5: $00
    ldh [rP1], a                                  ; $65C6: $E0 $00
    ldh a, [$E0]                                  ; $65C8: $F0 $E0
    ld hl, sp-$10                                 ; $65CA: $F8 $F0
    db $FC                                        ; $65CC: $FC
    ld a, b                                       ; $65CD: $78
    db $FC                                        ; $65CE: $FC
    ld hl, sp+$00                                 ; $65CF: $F8 $00
    nop                                           ; $65D1: $00
    nop                                           ; $65D2: $00
    nop                                           ; $65D3: $00
    inc bc                                        ; $65D4: $03
    nop                                           ; $65D5: $00
    rlca                                          ; $65D6: $07
    inc bc                                        ; $65D7: $03
    rrca                                          ; $65D8: $0F
    rlca                                          ; $65D9: $07
    rra                                           ; $65DA: $1F
    dec bc                                        ; $65DB: $0B
    rra                                           ; $65DC: $1F
    rrca                                          ; $65DD: $0F
    rra                                           ; $65DE: $1F
    rrca                                          ; $65DF: $0F
    nop                                           ; $65E0: $00
    nop                                           ; $65E1: $00
    nop                                           ; $65E2: $00
    nop                                           ; $65E3: $00
    ld hl, sp+$00                                 ; $65E4: $F8 $00
    db $FC                                        ; $65E6: $FC
    ld hl, sp-$02                                 ; $65E7: $F8 $FE
    db $FC                                        ; $65E9: $FC
    cp $FC                                        ; $65EA: $FE $FC
    cp $F4                                        ; $65EC: $FE $F4
    cp $E4                                        ; $65EE: $FE $E4
    ld hl, sp-$10                                 ; $65F0: $F8 $F0
    db $F4                                        ; $65F2: $F4
    add sp, -$08                                  ; $65F3: $E8 $F8
    ldh [$F0], a                                  ; $65F5: $E0 $F0
    ret nz                                        ; $65F7: $C0

    ldh [rP1], a                                  ; $65F8: $E0 $00
    ldh a, [$E0]                                  ; $65FA: $F0 $E0
    ret z                                         ; $65FC: $C8

    or b                                          ; $65FD: $B0
    ret z                                         ; $65FE: $C8

    or b                                          ; $65FF: $B0
    rrca                                          ; $6600: $0F
    rlca                                          ; $6601: $07
    rlca                                          ; $6602: $07
    inc bc                                        ; $6603: $03
    inc bc                                        ; $6604: $03
    ld bc, $0003                                  ; $6605: $01 $03 $00
    ld bc, $0100                                  ; $6608: $01 $00 $01
    nop                                           ; $660B: $00
    inc bc                                        ; $660C: $03
    ld bc, $0103                                  ; $660D: $01 $03 $01
    db $EC                                        ; $6610: $EC
    ret nc                                        ; $6611: $D0

    ret z                                         ; $6612: $C8

    or b                                          ; $6613: $B0
    sub b                                         ; $6614: $90
    ld h, b                                       ; $6615: $60
    ldh a, [rP1]                                  ; $6616: $F0 $00
    ldh a, [$C0]                                  ; $6618: $F0 $C0
    sub b                                         ; $661A: $90
    ld h, b                                       ; $661B: $60
    sub b                                         ; $661C: $90
    ld h, b                                       ; $661D: $60
    ldh [$80], a                                  ; $661E: $E0 $80
    ldh a, [$C0]                                  ; $6620: $F0 $C0
    ldh [$C0], a                                  ; $6622: $E0 $C0
    ldh [$C0], a                                  ; $6624: $E0 $C0
    ldh [$C0], a                                  ; $6626: $E0 $C0
    ld hl, sp-$40                                 ; $6628: $F8 $C0
    db $FC                                        ; $662A: $FC
    jr @-$02                                      ; $662B: $18 $FC

    ld [hl], b                                    ; $662D: $70
    ld hl, sp+$00                                 ; $662E: $F8 $00
    ld hl, sp+$70                                 ; $6630: $F8 $70
    ld hl, sp+$70                                 ; $6632: $F8 $70
    ld hl, sp+$70                                 ; $6634: $F8 $70
    ld hl, sp+$70                                 ; $6636: $F8 $70
    cp $30                                        ; $6638: $FE $30

jr_00C_663A:
    rst $38                                       ; $663A: $FF
    ld b, [hl]                                    ; $663B: $46
    rst $38                                       ; $663C: $FF
    inc e                                         ; $663D: $1C
    ld a, $00                                     ; $663E: $3E $00
    nop                                           ; $6640: $00
    nop                                           ; $6641: $00
    nop                                           ; $6642: $00
    nop                                           ; $6643: $00
    nop                                           ; $6644: $00
    nop                                           ; $6645: $00
    nop                                           ; $6646: $00
    nop                                           ; $6647: $00
    rlca                                          ; $6648: $07
    nop                                           ; $6649: $00
    rrca                                          ; $664A: $0F
    rlca                                          ; $664B: $07
    rra                                           ; $664C: $1F
    ld c, $3F                                     ; $664D: $0E $3F
    rra                                           ; $664F: $1F
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    nop                                           ; $6653: $00
    nop                                           ; $6654: $00
    nop                                           ; $6655: $00
    nop                                           ; $6656: $00
    nop                                           ; $6657: $00
    ldh [rP1], a                                  ; $6658: $E0 $00
    ldh a, [$E0]                                  ; $665A: $F0 $E0
    ld hl, sp-$10                                 ; $665C: $F8 $F0
    db $FC                                        ; $665E: $FC
    ld a, b                                       ; $665F: $78
    ccf                                           ; $6660: $3F
    dec e                                         ; $6661: $1D
    dec e                                         ; $6662: $1D
    ld a, [bc]                                    ; $6663: $0A
    ld l, $17                                     ; $6664: $2E $17
    ld a, [de]                                    ; $6666: $1A
    dec b                                         ; $6667: $05
    inc c                                         ; $6668: $0C
    inc bc                                        ; $6669: $03

jr_00C_666A:
    rlca                                          ; $666A: $07
    nop                                           ; $666B: $00
    add hl, bc                                    ; $666C: $09
    ld b, $09                                     ; $666D: $06 $09
    ld b, $FC                                     ; $666F: $06 $FC
    jr c, @+$3A                                   ; $6671: $38 $38

    ret nc                                        ; $6673: $D0

    ld [hl], h                                    ; $6674: $74
    add sp, $58                                   ; $6675: $E8 $58
    and b                                         ; $6677: $A0
    jr nc, jr_00C_663A                            ; $6678: $30 $C0

    ldh [rP1], a                                  ; $667A: $E0 $00
    ldh a, [$E0]                                  ; $667C: $F0 $E0
    ret nc                                        ; $667E: $D0

    ldh [$FE], a                                  ; $667F: $E0 $FE
    inc e                                         ; $6681: $1C
    ld a, [hl]                                    ; $6682: $7E
    inc a                                         ; $6683: $3C
    ld a, [hl]                                    ; $6684: $7E
    inc a                                         ; $6685: $3C
    ld a, [hl]                                    ; $6686: $7E
    jr c, @+$81                                   ; $6687: $38 $7F

    ld [hl], $7F                                  ; $6689: $36 $7F
    ld c, $7E                                     ; $668B: $0E $7E
    inc l                                         ; $668D: $2C
    ld a, $00                                     ; $668E: $3E $00
    ccf                                           ; $6690: $3F
    dec e                                         ; $6691: $1D
    dec e                                         ; $6692: $1D
    ld a, [bc]                                    ; $6693: $0A
    ld l, $17                                     ; $6694: $2E $17
    ld a, [de]                                    ; $6696: $1A
    dec b                                         ; $6697: $05
    inc c                                         ; $6698: $0C
    inc bc                                        ; $6699: $03
    rlca                                          ; $669A: $07
    nop                                           ; $669B: $00
    rrca                                          ; $669C: $0F
    rlca                                          ; $669D: $07
    dec bc                                        ; $669E: $0B
    rlca                                          ; $669F: $07
    db $FC                                        ; $66A0: $FC
    jr c, jr_00C_66DB                             ; $66A1: $38 $38

    ret nc                                        ; $66A3: $D0

    ld [hl], h                                    ; $66A4: $74
    add sp, $58                                   ; $66A5: $E8 $58
    and b                                         ; $66A7: $A0
    jr nc, jr_00C_666A                            ; $66A8: $30 $C0

    ldh [rP1], a                                  ; $66AA: $E0 $00
    sub b                                         ; $66AC: $90
    ld h, b                                       ; $66AD: $60
    sub b                                         ; $66AE: $90
    ld h, b                                       ; $66AF: $60
    ccf                                           ; $66B0: $3F
    rra                                           ; $66B1: $1F
    rra                                           ; $66B2: $1F
    rrca                                          ; $66B3: $0F
    cpl                                           ; $66B4: $2F
    rla                                           ; $66B5: $17
    rra                                           ; $66B6: $1F
    rlca                                          ; $66B7: $07
    rrca                                          ; $66B8: $0F
    inc bc                                        ; $66B9: $03
    rlca                                          ; $66BA: $07
    nop                                           ; $66BB: $00
    add hl, bc                                    ; $66BC: $09
    ld b, $09                                     ; $66BD: $06 $09
    ld b, $FC                                     ; $66BF: $06 $FC
    ld hl, sp-$08                                 ; $66C1: $F8 $F8
    ldh a, [$F4]                                  ; $66C3: $F0 $F4
    add sp, -$08                                  ; $66C5: $E8 $F8
    ldh [$F0], a                                  ; $66C7: $E0 $F0
    ret nz                                        ; $66C9: $C0

    ldh [rP1], a                                  ; $66CA: $E0 $00
    ret nc                                        ; $66CC: $D0

    and b                                         ; $66CD: $A0
    ret nc                                        ; $66CE: $D0

    and b                                         ; $66CF: $A0
    cp $1C                                        ; $66D0: $FE $1C
    ld a, [hl]                                    ; $66D2: $7E
    inc a                                         ; $66D3: $3C
    ld a, h                                       ; $66D4: $7C
    jr c, jr_00C_6753                             ; $66D5: $38 $7C

    jr nz, jr_00C_6715                            ; $66D7: $20 $3C

    jr jr_00C_6719                                ; $66D9: $18 $3E

jr_00C_66DB:
    inc e                                         ; $66DB: $1C
    ld a, [hl]                                    ; $66DC: $7E
    inc l                                         ; $66DD: $2C
    ld a, [hl]                                    ; $66DE: $7E
    nop                                           ; $66DF: $00
    nop                                           ; $66E0: $00
    nop                                           ; $66E1: $00
    nop                                           ; $66E2: $00
    nop                                           ; $66E3: $00
    rlca                                          ; $66E4: $07
    nop                                           ; $66E5: $00
    rrca                                          ; $66E6: $0F
    rlca                                          ; $66E7: $07
    rra                                           ; $66E8: $1F
    rrca                                          ; $66E9: $0F
    ccf                                           ; $66EA: $3F
    rra                                           ; $66EB: $1F
    ccf                                           ; $66EC: $3F
    rra                                           ; $66ED: $1F
    rra                                           ; $66EE: $1F
    add hl, bc                                    ; $66EF: $09
    nop                                           ; $66F0: $00
    nop                                           ; $66F1: $00
    nop                                           ; $66F2: $00
    nop                                           ; $66F3: $00
    ldh a, [rP1]                                  ; $66F4: $F0 $00
    ld hl, sp-$10                                 ; $66F6: $F8 $F0
    db $FC                                        ; $66F8: $FC
    ldh a, [$FC]                                  ; $66F9: $F0 $FC
    ld hl, sp-$04                                 ; $66FB: $F8 $FC
    xor b                                         ; $66FD: $A8
    cp b                                          ; $66FE: $B8
    ld b, b                                       ; $66FF: $40
    rra                                           ; $6700: $1F
    add hl, bc                                    ; $6701: $09
    add hl, bc                                    ; $6702: $09
    ld b, $04                                     ; $6703: $06 $04
    inc bc                                        ; $6705: $03
    ld [bc], a                                    ; $6706: $02
    ld bc, $0003                                  ; $6707: $01 $03 $00
    rlca                                          ; $670A: $07
    nop                                           ; $670B: $00
    dec bc                                        ; $670C: $0B
    dec b                                         ; $670D: $05
    dec bc                                        ; $670E: $0B
    dec b                                         ; $670F: $05
    cp b                                          ; $6710: $B8
    ld b, b                                       ; $6711: $40
    ret nc                                        ; $6712: $D0

    ldh [$50], a                                  ; $6713: $E0 $50

jr_00C_6715:
    and b                                         ; $6715: $A0
    db $10                                        ; $6716: $10
    ldh [$E0], a                                  ; $6717: $E0 $E0

jr_00C_6719:
    nop                                           ; $6719: $00
    ldh [$80], a                                  ; $671A: $E0 $80
    sub b                                         ; $671C: $90
    ld h, b                                       ; $671D: $60
    sub b                                         ; $671E: $90
    ld h, b                                       ; $671F: $60
    sbc l                                         ; $6720: $9D
    ld l, [hl]                                    ; $6721: $6E
    ld b, l                                       ; $6722: $45
    ld a, [hl-]                                   ; $6723: $3A
    ld hl, $3E1E                                  ; $6724: $21 $1E $3E
    nop                                           ; $6727: $00
    inc a                                         ; $6728: $3C
    db $10                                        ; $6729: $10
    jr c, @+$12                                   ; $672A: $38 $10

    ld c, b                                       ; $672C: $48
    jr nc, jr_00C_6777                            ; $672D: $30 $48

    jr nc, jr_00C_6750                            ; $672F: $30 $1F

    add hl, bc                                    ; $6731: $09
    add hl, bc                                    ; $6732: $09
    ld b, $04                                     ; $6733: $06 $04
    inc bc                                        ; $6735: $03
    ld [bc], a                                    ; $6736: $02
    ld bc, $0003                                  ; $6737: $01 $03 $00
    rlca                                          ; $673A: $07
    ld bc, $0609                                  ; $673B: $01 $09 $06
    add hl, bc                                    ; $673E: $09
    ld b, $B8                                     ; $673F: $06 $B8
    ld b, b                                       ; $6741: $40
    ret nc                                        ; $6742: $D0

    ldh [$50], a                                  ; $6743: $E0 $50
    and b                                         ; $6745: $A0
    db $10                                        ; $6746: $10
    ldh [$E0], a                                  ; $6747: $E0 $E0
    nop                                           ; $6749: $00
    ret nz                                        ; $674A: $C0

    nop                                           ; $674B: $00
    ret nz                                        ; $674C: $C0

    nop                                           ; $674D: $00
    and b                                         ; $674E: $A0
    ld b, b                                       ; $674F: $40

jr_00C_6750:
    rlca                                          ; $6750: $07
    inc bc                                        ; $6751: $03
    inc bc                                        ; $6752: $03

jr_00C_6753:
    ld bc, $030F                                  ; $6753: $01 $0F $03
    ccf                                           ; $6756: $3F
    rrca                                          ; $6757: $0F
    ld a, a                                       ; $6758: $7F
    jr z, @+$81                                   ; $6759: $28 $7F

    ld [hl], $7F                                  ; $675B: $36 $7F
    ld e, $7F                                     ; $675D: $1E $7F
    nop                                           ; $675F: $00
    ldh [$80], a                                  ; $6760: $E0 $80
    add b                                         ; $6762: $80
    nop                                           ; $6763: $00
    ldh a, [$80]                                  ; $6764: $F0 $80
    ld hl, sp-$50                                 ; $6766: $F8 $B0
    ld hl, sp+$70                                 ; $6768: $F8 $70
    ldh a, [$E0]                                  ; $676A: $F0 $E0
    ldh a, [$C0]                                  ; $676C: $F0 $C0
    ldh [rP1], a                                  ; $676E: $E0 $00
    ld a, b                                       ; $6770: $78
    nop                                           ; $6771: $00
    jr c, jr_00C_6784                             ; $6772: $38 $10

    jr c, jr_00C_6786                             ; $6774: $38 $10

    inc a                                         ; $6776: $3C

jr_00C_6777:
    db $10                                        ; $6777: $10
    ld a, $00                                     ; $6778: $3E $00
    ld a, a                                       ; $677A: $7F
    inc a                                         ; $677B: $3C
    rst $38                                       ; $677C: $FF
    ld a, $7F                                     ; $677D: $3E $7F
    nop                                           ; $677F: $00
    rlca                                          ; $6780: $07
    ld bc, $0103                                  ; $6781: $01 $03 $01

jr_00C_6784:
    rlca                                          ; $6784: $07
    inc bc                                        ; $6785: $03

jr_00C_6786:
    rrca                                          ; $6786: $0F
    rlca                                          ; $6787: $07
    rra                                           ; $6788: $1F
    nop                                           ; $6789: $00
    ccf                                           ; $678A: $3F
    rla                                           ; $678B: $17
    ccf                                           ; $678C: $3F
    rrca                                          ; $678D: $0F
    rra                                           ; $678E: $1F
    nop                                           ; $678F: $00
    ret nz                                        ; $6790: $C0

    nop                                           ; $6791: $00
    ret nz                                        ; $6792: $C0

jr_00C_6793:
    add b                                         ; $6793: $80
    ld hl, sp-$40                                 ; $6794: $F8 $C0
    db $FC                                        ; $6796: $FC
    ret c                                         ; $6797: $D8

    db $FC                                        ; $6798: $FC
    jr c, jr_00C_6793                             ; $6799: $38 $F8

    ld [hl], b                                    ; $679B: $70
    ld hl, sp+$60                                 ; $679C: $F8 $60
    ldh [rP1], a                                  ; $679E: $E0 $00
    ccf                                           ; $67A0: $3F
    nop                                           ; $67A1: $00
    rst $38                                       ; $67A2: $FF
    nop                                           ; $67A3: $00
    ld a, a                                       ; $67A4: $7F
    inc bc                                        ; $67A5: $03
    ld a, a                                       ; $67A6: $7F
    rlca                                          ; $67A7: $07
    rst $38                                       ; $67A8: $FF
    inc c                                         ; $67A9: $0C
    db $FC                                        ; $67AA: $FC
    ld c, e                                       ; $67AB: $4B
    xor $57                                       ; $67AC: $EE $57
    ld a, d                                       ; $67AE: $7A
    dec h                                         ; $67AF: $25
    ret nz                                        ; $67B0: $C0

    nop                                           ; $67B1: $00
    ldh a, [rP1]                                  ; $67B2: $F0 $00
    ld hl, sp-$20                                 ; $67B4: $F8 $E0
    ld hl, sp-$10                                 ; $67B6: $F8 $F0
    db $FC                                        ; $67B8: $FC
    cp b                                          ; $67B9: $B8
    cp h                                          ; $67BA: $BC
    ld e, b                                       ; $67BB: $58
    ld a, h                                       ; $67BC: $7C
    add sp, $58                                   ; $67BD: $E8 $58
    and b                                         ; $67BF: $A0
    rlca                                          ; $67C0: $07
    nop                                           ; $67C1: $00

jr_00C_67C2:
    rrca                                          ; $67C2: $0F
    inc bc                                        ; $67C3: $03
    rra                                           ; $67C4: $1F
    rlca                                          ; $67C5: $07
    ccf                                           ; $67C6: $3F
    rrca                                          ; $67C7: $0F
    ccf                                           ; $67C8: $3F
    dec c                                         ; $67C9: $0D
    dec a                                         ; $67CA: $3D
    ld a, [bc]                                    ; $67CB: $0A
    ld l, $17                                     ; $67CC: $2E $17
    ld a, [hl-]                                   ; $67CE: $3A
    dec b                                         ; $67CF: $05
    ldh [rP1], a                                  ; $67D0: $E0 $00
    ldh a, [$C0]                                  ; $67D2: $F0 $C0
    ld hl, sp-$20                                 ; $67D4: $F8 $E0
    db $FC                                        ; $67D6: $FC
    ld [hl], b                                    ; $67D7: $70
    db $FC                                        ; $67D8: $FC
    jr nc, @+$3E                                  ; $67D9: $30 $3C

    ret nc                                        ; $67DB: $D0

    ld [hl], h                                    ; $67DC: $74
    add sp, $5C                                   ; $67DD: $E8 $5C
    and b                                         ; $67DF: $A0
    ld a, h                                       ; $67E0: $7C
    dec sp                                        ; $67E1: $3B
    ccf                                           ; $67E2: $3F
    nop                                           ; $67E3: $00
    dec bc                                        ; $67E4: $0B
    dec b                                         ; $67E5: $05
    dec bc                                        ; $67E6: $0B
    dec b                                         ; $67E7: $05
    dec bc                                        ; $67E8: $0B
    dec b                                         ; $67E9: $05
    inc de                                        ; $67EA: $13
    dec c                                         ; $67EB: $0D
    inc de                                        ; $67EC: $13
    dec c                                         ; $67ED: $0D
    rrca                                          ; $67EE: $0F
    inc bc                                        ; $67EF: $03
    jr c, jr_00C_67C2                             ; $67F0: $38 $D0

    ldh a, [rP1]                                  ; $67F2: $F0 $00
    ret nz                                        ; $67F4: $C0

    add b                                         ; $67F5: $80
    ldh [$80], a                                  ; $67F6: $E0 $80
    ldh [$80], a                                  ; $67F8: $E0 $80
    ret nc                                        ; $67FA: $D0

    and b                                         ; $67FB: $A0
    ldh [$80], a                                  ; $67FC: $E0 $80
    ret nz                                        ; $67FE: $C0

    add b                                         ; $67FF: $80
    rrca                                          ; $6800: $0F
    rlca                                          ; $6801: $07
    rlca                                          ; $6802: $07
    inc bc                                        ; $6803: $03
    rlca                                          ; $6804: $07
    inc bc                                        ; $6805: $03
    rlca                                          ; $6806: $07
    inc bc                                        ; $6807: $03
    rrca                                          ; $6808: $0F
    ld b, $0F                                     ; $6809: $06 $0F
    ld bc, $0F1F                                  ; $680B: $01 $1F $0F
    rrca                                          ; $680E: $0F
    nop                                           ; $680F: $00
    ret nz                                        ; $6810: $C0

    add b                                         ; $6811: $80
    ret nz                                        ; $6812: $C0

    add b                                         ; $6813: $80
    ret nz                                        ; $6814: $C0

    add b                                         ; $6815: $80
    ldh a, [$80]                                  ; $6816: $F0 $80
    ld hl, sp+$30                                 ; $6818: $F8 $30
    ld hl, sp-$50                                 ; $681A: $F8 $B0
    ldh a, [$80]                                  ; $681C: $F0 $80
    ret nz                                        ; $681E: $C0

    nop                                           ; $681F: $00
    inc a                                         ; $6820: $3C
    ret z                                         ; $6821: $C8

    ld hl, sp+$00                                 ; $6822: $F8 $00
    ret nc                                        ; $6824: $D0

    and b                                         ; $6825: $A0
    ret nc                                        ; $6826: $D0

    and b                                         ; $6827: $A0
    ret nc                                        ; $6828: $D0

    and b                                         ; $6829: $A0
    ret nc                                        ; $682A: $D0

    and b                                         ; $682B: $A0
    ret z                                         ; $682C: $C8

    or b                                          ; $682D: $B0
    ret z                                         ; $682E: $C8

    or b                                          ; $682F: $B0
    ldh a, [$C0]                                  ; $6830: $F0 $C0
    ldh [$C0], a                                  ; $6832: $E0 $C0
    ldh [$C0], a                                  ; $6834: $E0 $C0
    ldh a, [$C0]                                  ; $6836: $F0 $C0
    ld hl, sp+$30                                 ; $6838: $F8 $30
    db $FC                                        ; $683A: $FC
    ld a, b                                       ; $683B: $78
    db $FC                                        ; $683C: $FC
    jr c, @-$06                                   ; $683D: $38 $F8

    nop                                           ; $683F: $00
    rlca                                          ; $6840: $07
    nop                                           ; $6841: $00
    rrca                                          ; $6842: $0F
    nop                                           ; $6843: $00
    rra                                           ; $6844: $1F
    ld [bc], a                                    ; $6845: $02
    ccf                                           ; $6846: $3F
    rlca                                          ; $6847: $07
    ccf                                           ; $6848: $3F
    rrca                                          ; $6849: $0F
    rra                                           ; $684A: $1F
    rrca                                          ; $684B: $0F
    cpl                                           ; $684C: $2F
    rla                                           ; $684D: $17
    ccf                                           ; $684E: $3F
    rrca                                          ; $684F: $0F
    ldh [rP1], a                                  ; $6850: $E0 $00
    ldh a, [rP1]                                  ; $6852: $F0 $00
    ld hl, sp+$40                                 ; $6854: $F8 $40
    db $FC                                        ; $6856: $FC
    ld h, b                                       ; $6857: $60
    db $FC                                        ; $6858: $FC
    ldh a, [$F8]                                  ; $6859: $F0 $F8
    ldh a, [$F4]                                  ; $685B: $F0 $F4
    add sp, -$04                                  ; $685D: $E8 $FC
    ldh a, [rIF]                                  ; $685F: $F0 $0F
    nop                                           ; $6861: $00
    rlca                                          ; $6862: $07
    nop                                           ; $6863: $00
    rrca                                          ; $6864: $0F
    inc bc                                        ; $6865: $03
    rrca                                          ; $6866: $0F
    rlca                                          ; $6867: $07
    rrca                                          ; $6868: $0F
    rlca                                          ; $6869: $07
    rra                                           ; $686A: $1F
    rrca                                          ; $686B: $0F
    rra                                           ; $686C: $1F
    rrca                                          ; $686D: $0F
    rrca                                          ; $686E: $0F
    rlca                                          ; $686F: $07
    ld hl, sp+$00                                 ; $6870: $F8 $00
    db $FC                                        ; $6872: $FC
    ld [$84FE], sp                                ; $6873: $08 $FE $84
    cp $C4                                        ; $6876: $FE $C4
    cp $E4                                        ; $6878: $FE $E4
    cp $E4                                        ; $687A: $FE $E4
    db $EC                                        ; $687C: $EC
    ret nc                                        ; $687D: $D0

    ld hl, sp-$20                                 ; $687E: $F8 $E0
    ld hl, sp-$20                                 ; $6880: $F8 $E0
    ldh a, [rP1]                                  ; $6882: $F0 $00
    ret nc                                        ; $6884: $D0

    and b                                         ; $6885: $A0
    ret nc                                        ; $6886: $D0

    and b                                         ; $6887: $A0
    ret nc                                        ; $6888: $D0

    and b                                         ; $6889: $A0
    ret nc                                        ; $688A: $D0

    and b                                         ; $688B: $A0
    ret z                                         ; $688C: $C8

    or b                                          ; $688D: $B0
    ret z                                         ; $688E: $C8

    or b                                          ; $688F: $B0
    rst $38                                       ; $6890: $FF

jr_00C_6891:
    ld a, [hl]                                    ; $6891: $7E
    ld a, [hl]                                    ; $6892: $7E
    nop                                           ; $6893: $00
    ld [hl], h                                    ; $6894: $74
    jr z, jr_00C_690D                             ; $6895: $28 $76

    jr z, jr_00C_690F                             ; $6897: $28 $76

    jr z, jr_00C_690D                             ; $6899: $28 $72

    inc l                                         ; $689B: $2C
    ld [hl], d                                    ; $689C: $72
    inc l                                         ; $689D: $2C
    ld a, h                                       ; $689E: $7C
    jr nc, jr_00C_6891                            ; $689F: $30 $F0

    ret nz                                        ; $68A1: $C0

    ldh [$C0], a                                  ; $68A2: $E0 $C0
    ldh [$C0], a                                  ; $68A4: $E0 $C0
    ldh [$C0], a                                  ; $68A6: $E0 $C0
    ld hl, sp-$40                                 ; $68A8: $F8 $C0
    db $FC                                        ; $68AA: $FC
    jr @-$02                                      ; $68AB: $18 $FC

    ld [hl], b                                    ; $68AD: $70
    ld hl, sp+$00                                 ; $68AE: $F8 $00
    ld hl, sp+$70                                 ; $68B0: $F8 $70
    ld hl, sp+$70                                 ; $68B2: $F8 $70
    ld hl, sp+$70                                 ; $68B4: $F8 $70
    ld hl, sp+$70                                 ; $68B6: $F8 $70
    cp $30                                        ; $68B8: $FE $30
    rst $38                                       ; $68BA: $FF
    ld b, [hl]                                    ; $68BB: $46
    rst $38                                       ; $68BC: $FF
    inc e                                         ; $68BD: $1C
    ld a, $00                                     ; $68BE: $3E $00
    ld a, [hl-]                                   ; $68C0: $3A
    dec b                                         ; $68C1: $05
    inc a                                         ; $68C2: $3C
    inc de                                        ; $68C3: $13
    rra                                           ; $68C4: $1F
    nop                                           ; $68C5: $00
    rrca                                          ; $68C6: $0F
    ld bc, $050B                                  ; $68C7: $01 $0B $05
    dec bc                                        ; $68CA: $0B
    dec b                                         ; $68CB: $05
    add hl, bc                                    ; $68CC: $09
    ld b, $09                                     ; $68CD: $06 $09
    ld b, $5C                                     ; $68CF: $06 $5C
    and b                                         ; $68D1: $A0
    inc a                                         ; $68D2: $3C
    ret z                                         ; $68D3: $C8

    ld hl, sp+$00                                 ; $68D4: $F8 $00
    ldh a, [$80]                                  ; $68D6: $F0 $80
    ret nc                                        ; $68D8: $D0

    and b                                         ; $68D9: $A0
    ret nc                                        ; $68DA: $D0

    and b                                         ; $68DB: $A0
    ret nc                                        ; $68DC: $D0

    and b                                         ; $68DD: $A0
    ret nc                                        ; $68DE: $D0

    and b                                         ; $68DF: $A0
    cp $1C                                        ; $68E0: $FE $1C
    ld a, [hl]                                    ; $68E2: $7E
    inc a                                         ; $68E3: $3C
    ld a, [hl]                                    ; $68E4: $7E
    inc a                                         ; $68E5: $3C
    ld a, [hl]                                    ; $68E6: $7E
    jr c, jr_00C_6968                             ; $68E7: $38 $7F

    ld [hl], $7F                                  ; $68E9: $36 $7F
    ld c, $7E                                     ; $68EB: $0E $7E
    inc l                                         ; $68ED: $2C
    ld a, $00                                     ; $68EE: $3E $00
    ccf                                           ; $68F0: $3F
    rrca                                          ; $68F1: $0F
    rra                                           ; $68F2: $1F

jr_00C_68F3:
    rlca                                          ; $68F3: $07
    rrca                                          ; $68F4: $0F
    nop                                           ; $68F5: $00
    rlca                                          ; $68F6: $07
    inc bc                                        ; $68F7: $03
    dec bc                                        ; $68F8: $0B
    dec b                                         ; $68F9: $05
    dec bc                                        ; $68FA: $0B
    dec b                                         ; $68FB: $05
    add hl, bc                                    ; $68FC: $09
    ld b, $09                                     ; $68FD: $06 $09
    ld b, $FC                                     ; $68FF: $06 $FC
    ldh a, [$F8]                                  ; $6901: $F0 $F8
    ldh [$F0], a                                  ; $6903: $E0 $F0
    nop                                           ; $6905: $00
    ldh [$C0], a                                  ; $6906: $E0 $C0
    ret nc                                        ; $6908: $D0

    and b                                         ; $6909: $A0
    ret nc                                        ; $690A: $D0

    and b                                         ; $690B: $A0
    ret nc                                        ; $690C: $D0

jr_00C_690D:
    and b                                         ; $690D: $A0
    ret nc                                        ; $690E: $D0

jr_00C_690F:
    and b                                         ; $690F: $A0
    cp $1C                                        ; $6910: $FE $1C
    ld a, [hl]                                    ; $6912: $7E
    jr c, @+$7E                                   ; $6913: $38 $7C

    jr c, jr_00C_6993                             ; $6915: $38 $7C

    jr nz, jr_00C_6955                            ; $6917: $20 $3C

    jr jr_00C_6959                                ; $6919: $18 $3E

    inc e                                         ; $691B: $1C
    ld a, [hl]                                    ; $691C: $7E
    inc l                                         ; $691D: $2C
    ld a, [hl]                                    ; $691E: $7E
    nop                                           ; $691F: $00
    rst $38                                       ; $6920: $FF
    nop                                           ; $6921: $00
    ld a, a                                       ; $6922: $7F
    nop                                           ; $6923: $00
    ccf                                           ; $6924: $3F
    db $10                                        ; $6925: $10
    ccf                                           ; $6926: $3F
    db $10                                        ; $6927: $10
    ld a, a                                       ; $6928: $7F
    jr c, @+$81                                   ; $6929: $38 $7F

    jr c, @+$3B                                   ; $692B: $38 $39

    ld d, $1E                                     ; $692D: $16 $1E
    ld bc, $00E0                                  ; $692F: $01 $E0 $00
    ldh a, [rP1]                                  ; $6932: $F0 $00
    ld hl, sp+$30                                 ; $6934: $F8 $30
    db $FC                                        ; $6936: $FC
    ld a, b                                       ; $6937: $78
    db $FC                                        ; $6938: $FC
    jr z, jr_00C_68F3                             ; $6939: $28 $B8

    ld b, b                                       ; $693B: $40
    ret nc                                        ; $693C: $D0

    ldh [$50], a                                  ; $693D: $E0 $50
    and b                                         ; $693F: $A0
    ld e, $09                                     ; $6940: $1E $09
    rrca                                          ; $6942: $0F
    ld b, $0F                                     ; $6943: $06 $0F
    nop                                           ; $6945: $00
    ld b, $01                                     ; $6946: $06 $01
    rlca                                          ; $6948: $07
    ld [bc], a                                    ; $6949: $02
    dec bc                                        ; $694A: $0B
    dec b                                         ; $694B: $05
    dec bc                                        ; $694C: $0B
    dec b                                         ; $694D: $05
    rlca                                          ; $694E: $07
    inc bc                                        ; $694F: $03
    ld d, b                                       ; $6950: $50
    and b                                         ; $6951: $A0
    db $10                                        ; $6952: $10
    ldh [$E0], a                                  ; $6953: $E0 $E0

jr_00C_6955:
    nop                                           ; $6955: $00
    add b                                         ; $6956: $80
    nop                                           ; $6957: $00
    ld h, b                                       ; $6958: $60

jr_00C_6959:
    add b                                         ; $6959: $80
    sub b                                         ; $695A: $90
    ld h, b                                       ; $695B: $60
    sub b                                         ; $695C: $90
    ld h, b                                       ; $695D: $60
    ldh [rP1], a                                  ; $695E: $E0 $00
    rra                                           ; $6960: $1F
    ld c, $0F                                     ; $6961: $0E $0F
    nop                                           ; $6963: $00
    ld [bc], a                                    ; $6964: $02
    ld bc, $0102                                  ; $6965: $01 $02 $01

jr_00C_6968:
    ld [bc], a                                    ; $6968: $02
    ld bc, $0300                                  ; $6969: $01 $00 $03
    inc b                                         ; $696C: $04
    inc bc                                        ; $696D: $03
    rlca                                          ; $696E: $07
    nop                                           ; $696F: $00
    db $10                                        ; $6970: $10
    ldh [$E0], a                                  ; $6971: $E0 $E0
    nop                                           ; $6973: $00
    add b                                         ; $6974: $80
    nop                                           ; $6975: $00
    ret nz                                        ; $6976: $C0

    nop                                           ; $6977: $00
    ret nz                                        ; $6978: $C0

    nop                                           ; $6979: $00
    add b                                         ; $697A: $80
    nop                                           ; $697B: $00
    add b                                         ; $697C: $80
    nop                                           ; $697D: $00
    add b                                         ; $697E: $80
    nop                                           ; $697F: $00
    ld e, $09                                     ; $6980: $1E $09
    rrca                                          ; $6982: $0F
    ld b, $0F                                     ; $6983: $06 $0F
    nop                                           ; $6985: $00
    ld b, $01                                     ; $6986: $06 $01
    dec b                                         ; $6988: $05
    ld [bc], a                                    ; $6989: $02
    add hl, bc                                    ; $698A: $09
    ld b, $09                                     ; $698B: $06 $09
    ld b, $07                                     ; $698D: $06 $07
    ld bc, $A050                                  ; $698F: $01 $50 $A0
    db $10                                        ; $6992: $10

jr_00C_6993:
    ldh [$E0], a                                  ; $6993: $E0 $E0
    nop                                           ; $6995: $00
    add b                                         ; $6996: $80
    nop                                           ; $6997: $00
    ret nz                                        ; $6998: $C0

    nop                                           ; $6999: $00
    ret nz                                        ; $699A: $C0

    add b                                         ; $699B: $80
    and b                                         ; $699C: $A0
    ld b, b                                       ; $699D: $40
    ret nz                                        ; $699E: $C0

    nop                                           ; $699F: $00
    rlca                                          ; $69A0: $07
    inc bc                                        ; $69A1: $03
    inc bc                                        ; $69A2: $03
    ld bc, $030F                                  ; $69A3: $01 $0F $03
    ccf                                           ; $69A6: $3F
    rrca                                          ; $69A7: $0F
    ld a, a                                       ; $69A8: $7F
    jr z, @+$81                                   ; $69A9: $28 $7F

    ld [hl], $7F                                  ; $69AB: $36 $7F
    ld e, $7F                                     ; $69AD: $1E $7F
    nop                                           ; $69AF: $00
    add b                                         ; $69B0: $80
    nop                                           ; $69B1: $00
    add b                                         ; $69B2: $80
    nop                                           ; $69B3: $00
    ldh a, [$80]                                  ; $69B4: $F0 $80
    ld hl, sp-$50                                 ; $69B6: $F8 $B0
    ld hl, sp+$70                                 ; $69B8: $F8 $70
    ldh a, [$E0]                                  ; $69BA: $F0 $E0
    ldh a, [$C0]                                  ; $69BC: $F0 $C0
    ldh [rP1], a                                  ; $69BE: $E0 $00
    ld a, b                                       ; $69C0: $78
    jr nc, @+$3A                                  ; $69C1: $30 $38

    db $10                                        ; $69C3: $10
    ld a, b                                       ; $69C4: $78
    jr nc, jr_00C_6A43                            ; $69C5: $30 $7C

    jr nc, @+$80                                  ; $69C7: $30 $7E

    nop                                           ; $69C9: $00
    ld a, a                                       ; $69CA: $7F
    inc a                                         ; $69CB: $3C
    rst $38                                       ; $69CC: $FF
    ld a, $7F                                     ; $69CD: $3E $7F
    nop                                           ; $69CF: $00
    rlca                                          ; $69D0: $07
    inc bc                                        ; $69D1: $03
    inc bc                                        ; $69D2: $03
    ld bc, $0307                                  ; $69D3: $01 $07 $03
    rrca                                          ; $69D6: $0F
    rlca                                          ; $69D7: $07
    rra                                           ; $69D8: $1F
    nop                                           ; $69D9: $00
    ccf                                           ; $69DA: $3F
    rla                                           ; $69DB: $17
    ccf                                           ; $69DC: $3F
    rrca                                          ; $69DD: $0F
    rra                                           ; $69DE: $1F
    nop                                           ; $69DF: $00
    add b                                         ; $69E0: $80
    nop                                           ; $69E1: $00
    ret nz                                        ; $69E2: $C0

jr_00C_69E3:
    add b                                         ; $69E3: $80
    ld hl, sp-$40                                 ; $69E4: $F8 $C0
    db $FC                                        ; $69E6: $FC
    ret c                                         ; $69E7: $D8

    db $FC                                        ; $69E8: $FC
    jr c, jr_00C_69E3                             ; $69E9: $38 $F8

    ld [hl], b                                    ; $69EB: $70
    ld hl, sp+$60                                 ; $69EC: $F8 $60
    ldh [rP1], a                                  ; $69EE: $E0 $00
    nop                                           ; $69F0: $00
    nop                                           ; $69F1: $00
    rrca                                          ; $69F2: $0F
    nop                                           ; $69F3: $00
    ld de, $200F                                  ; $69F4: $11 $0F $20
    rra                                           ; $69F7: $1F
    jr nz, jr_00C_6A19                            ; $69F8: $20 $1F

    jr nz, jr_00C_6A1B                            ; $69FA: $20 $1F

    jr nc, jr_00C_6A0D                            ; $69FC: $30 $0F

    daa                                           ; $69FE: $27
    rra                                           ; $69FF: $1F
    nop                                           ; $6A00: $00
    nop                                           ; $6A01: $00
    ret nz                                        ; $6A02: $C0

    nop                                           ; $6A03: $00
    and b                                         ; $6A04: $A0
    ret nz                                        ; $6A05: $C0

    sub b                                         ; $6A06: $90
    ldh [rNR10], a                                ; $6A07: $E0 $10
    ldh [rNR10], a                                ; $6A09: $E0 $10
    ldh [rNR10], a                                ; $6A0B: $E0 $10

jr_00C_6A0D:
    ldh [$78], a                                  ; $6A0D: $E0 $78
    ldh a, [rP1]                                  ; $6A0F: $F0 $00
    nop                                           ; $6A11: $00
    rlca                                          ; $6A12: $07
    nop                                           ; $6A13: $00
    add hl, bc                                    ; $6A14: $09
    rlca                                          ; $6A15: $07
    ld de, $110F                                  ; $6A16: $11 $0F $11

jr_00C_6A19:
    rrca                                          ; $6A19: $0F
    db $10                                        ; $6A1A: $10

jr_00C_6A1B:
    rrca                                          ; $6A1B: $0F
    db $10                                        ; $6A1C: $10
    rrca                                          ; $6A1D: $0F
    ld e, $0F                                     ; $6A1E: $1E $0F
    rra                                           ; $6A20: $1F
    rrca                                          ; $6A21: $0F
    inc a                                         ; $6A22: $3C
    inc de                                        ; $6A23: $13
    ld a, a                                       ; $6A24: $7F
    inc bc                                        ; $6A25: $03
    ld a, a                                       ; $6A26: $7F
    inc bc                                        ; $6A27: $03
    ld a, a                                       ; $6A28: $7F
    ld bc, $017F                                  ; $6A29: $01 $7F $01
    ccf                                           ; $6A2C: $3F
    nop                                           ; $6A2D: $00
    rra                                           ; $6A2E: $1F
    nop                                           ; $6A2F: $00
    ld a, h                                       ; $6A30: $7C
    ld hl, sp+$1C                                 ; $6A31: $F8 $1C
    add sp, -$18                                  ; $6A33: $E8 $E8
    ret nz                                        ; $6A35: $C0

    ldh a, [$E0]                                  ; $6A36: $F0 $E0
    ldh a, [$E0]                                  ; $6A38: $F0 $E0
    ldh a, [$C0]                                  ; $6A3A: $F0 $C0
    ldh [rP1], a                                  ; $6A3C: $E0 $00
    ldh [rP1], a                                  ; $6A3E: $E0 $00
    ld a, h                                       ; $6A40: $7C
    ld hl, sp+$1E                                 ; $6A41: $F8 $1E

jr_00C_6A43:
    db $E4                                        ; $6A43: $E4
    db $F4                                        ; $6A44: $F4
    ret nz                                        ; $6A45: $C0

    ld hl, sp-$40                                 ; $6A46: $F8 $C0
    ld hl, sp-$40                                 ; $6A48: $F8 $C0
    ld hl, sp-$80                                 ; $6A4A: $F8 $80
    ld hl, sp+$00                                 ; $6A4C: $F8 $00
    ld hl, sp+$00                                 ; $6A4E: $F8 $00
    rra                                           ; $6A50: $1F
    nop                                           ; $6A51: $00
    rra                                           ; $6A52: $1F
    nop                                           ; $6A53: $00
    rra                                           ; $6A54: $1F
    nop                                           ; $6A55: $00
    rra                                           ; $6A56: $1F
    nop                                           ; $6A57: $00
    ccf                                           ; $6A58: $3F
    nop                                           ; $6A59: $00
    ccf                                           ; $6A5A: $3F
    ld b, $3F                                     ; $6A5B: $06 $3F
    ld e, $1F                                     ; $6A5D: $1E $1F
    nop                                           ; $6A5F: $00
    ldh [rP1], a                                  ; $6A60: $E0 $00
    ldh [rP1], a                                  ; $6A62: $E0 $00
    ldh a, [rP1]                                  ; $6A64: $F0 $00
    ldh a, [rP1]                                  ; $6A66: $F0 $00
    ld hl, sp+$30                                 ; $6A68: $F8 $30
    ld hl, sp-$10                                 ; $6A6A: $F8 $F0
    ldh a, [rP1]                                  ; $6A6C: $F0 $00
    nop                                           ; $6A6E: $00
    nop                                           ; $6A6F: $00
    rra                                           ; $6A70: $1F
    nop                                           ; $6A71: $00
    rra                                           ; $6A72: $1F
    nop                                           ; $6A73: $00
    rra                                           ; $6A74: $1F
    nop                                           ; $6A75: $00
    ccf                                           ; $6A76: $3F
    nop                                           ; $6A77: $00
    ccf                                           ; $6A78: $3F
    inc c                                         ; $6A79: $0C
    ccf                                           ; $6A7A: $3F
    ld e, $3F                                     ; $6A7B: $1E $3F
    inc e                                         ; $6A7D: $1C
    rra                                           ; $6A7E: $1F
    nop                                           ; $6A7F: $00
    nop                                           ; $6A80: $00
    nop                                           ; $6A81: $00
    ldh [rP1], a                                  ; $6A82: $E0 $00
    sub b                                         ; $6A84: $90
    ldh [$88], a                                  ; $6A85: $E0 $88
    ldh a, [$08]                                  ; $6A87: $F0 $08
    ldh a, [$08]                                  ; $6A89: $F0 $08
    ldh a, [$08]                                  ; $6A8B: $F0 $08
    ldh a, [$08]                                  ; $6A8D: $F0 $08
    ldh a, [rP1]                                  ; $6A8F: $F0 $00
    nop                                           ; $6A91: $00
    rlca                                          ; $6A92: $07
    nop                                           ; $6A93: $00
    dec bc                                        ; $6A94: $0B
    rlca                                          ; $6A95: $07
    db $10                                        ; $6A96: $10
    rrca                                          ; $6A97: $0F
    db $10                                        ; $6A98: $10
    rrca                                          ; $6A99: $0F
    db $10                                        ; $6A9A: $10
    rrca                                          ; $6A9B: $0F
    db $10                                        ; $6A9C: $10
    rrca                                          ; $6A9D: $0F
    db $10                                        ; $6A9E: $10
    rrca                                          ; $6A9F: $0F
    nop                                           ; $6AA0: $00
    nop                                           ; $6AA1: $00
    ldh a, [rP1]                                  ; $6AA2: $F0 $00
    ld [$08F0], sp                                ; $6AA4: $08 $F0 $08
    ldh a, [$08]                                  ; $6AA7: $F0 $08
    ldh a, [$0C]                                  ; $6AA9: $F0 $0C
    ldh a, [$0E]                                  ; $6AAB: $F0 $0E
    db $F4                                        ; $6AAD: $F4
    ld c, $F4                                     ; $6AAE: $0E $F4
    inc e                                         ; $6AB0: $1C
    add sp, -$02                                  ; $6AB1: $E8 $FE
    inc b                                         ; $6AB3: $04
    db $F4                                        ; $6AB4: $F4
    nop                                           ; $6AB5: $00
    ld hl, sp+$00                                 ; $6AB6: $F8 $00
    ld hl, sp+$00                                 ; $6AB8: $F8 $00
    ld hl, sp+$00                                 ; $6ABA: $F8 $00
    ld hl, sp+$00                                 ; $6ABC: $F8 $00
    ld hl, sp+$00                                 ; $6ABE: $F8 $00
    jr jr_00C_6AC9                                ; $6AC0: $18 $07

    rra                                           ; $6AC2: $1F
    nop                                           ; $6AC3: $00
    rra                                           ; $6AC4: $1F
    nop                                           ; $6AC5: $00
    rra                                           ; $6AC6: $1F
    nop                                           ; $6AC7: $00
    rrca                                          ; $6AC8: $0F

jr_00C_6AC9:
    nop                                           ; $6AC9: $00
    rrca                                          ; $6ACA: $0F
    nop                                           ; $6ACB: $00
    rrca                                          ; $6ACC: $0F
    nop                                           ; $6ACD: $00
    rrca                                          ; $6ACE: $0F
    nop                                           ; $6ACF: $00
    inc e                                         ; $6AD0: $1C
    add sp, -$04                                  ; $6AD1: $E8 $FC
    ld [$08FC], sp                                ; $6AD3: $08 $FC $08
    db $FC                                        ; $6AD6: $FC
    nop                                           ; $6AD7: $00
    ld hl, sp+$00                                 ; $6AD8: $F8 $00
    ld hl, sp+$00                                 ; $6ADA: $F8 $00
    ld hl, sp+$00                                 ; $6ADC: $F8 $00
    ld hl, sp+$00                                 ; $6ADE: $F8 $00
    ld hl, sp+$00                                 ; $6AE0: $F8 $00
    ld hl, sp+$00                                 ; $6AE2: $F8 $00
    ld hl, sp+$00                                 ; $6AE4: $F8 $00
    ld hl, sp+$00                                 ; $6AE6: $F8 $00
    ld hl, sp+$00                                 ; $6AE8: $F8 $00
    db $FC                                        ; $6AEA: $FC
    ld [$70FC], sp                                ; $6AEB: $08 $FC $70
    ld hl, sp+$00                                 ; $6AEE: $F8 $00
    rrca                                          ; $6AF0: $0F
    nop                                           ; $6AF1: $00
    rra                                           ; $6AF2: $1F
    nop                                           ; $6AF3: $00
    rra                                           ; $6AF4: $1F
    nop                                           ; $6AF5: $00
    rra                                           ; $6AF6: $1F
    nop                                           ; $6AF7: $00
    rra                                           ; $6AF8: $1F
    nop                                           ; $6AF9: $00
    rrca                                          ; $6AFA: $0F
    ld b, $0F                                     ; $6AFB: $06 $0F
    nop                                           ; $6AFD: $00
    nop                                           ; $6AFE: $00
    nop                                           ; $6AFF: $00
    db $FC                                        ; $6B00: $FC
    nop                                           ; $6B01: $00
    db $FC                                        ; $6B02: $FC
    nop                                           ; $6B03: $00
    db $FC                                        ; $6B04: $FC
    nop                                           ; $6B05: $00
    db $FC                                        ; $6B06: $FC
    nop                                           ; $6B07: $00
    db $FC                                        ; $6B08: $FC
    nop                                           ; $6B09: $00
    db $FC                                        ; $6B0A: $FC
    ld [$70FC], sp                                ; $6B0B: $08 $FC $70
    ld hl, sp+$00                                 ; $6B0E: $F8 $00
    ccf                                           ; $6B10: $3F
    nop                                           ; $6B11: $00
    ccf                                           ; $6B12: $3F
    nop                                           ; $6B13: $00
    ccf                                           ; $6B14: $3F
    nop                                           ; $6B15: $00
    ccf                                           ; $6B16: $3F
    nop                                           ; $6B17: $00
    rra                                           ; $6B18: $1F
    nop                                           ; $6B19: $00
    rrca                                          ; $6B1A: $0F
    ld bc, $050F                                  ; $6B1B: $01 $0F $05
    rlca                                          ; $6B1E: $07
    nop                                           ; $6B1F: $00
    ldh a, [rP1]                                  ; $6B20: $F0 $00
    ldh a, [rP1]                                  ; $6B22: $F0 $00
    ldh a, [rP1]                                  ; $6B24: $F0 $00
    ldh a, [rP1]                                  ; $6B26: $F0 $00
    ldh [$C0], a                                  ; $6B28: $E0 $C0
    ldh [$C0], a                                  ; $6B2A: $E0 $C0
    ret nz                                        ; $6B2C: $C0

    add b                                         ; $6B2D: $80
    ret nz                                        ; $6B2E: $C0

    nop                                           ; $6B2F: $00
    rrca                                          ; $6B30: $0F
    nop                                           ; $6B31: $00
    rrca                                          ; $6B32: $0F
    nop                                           ; $6B33: $00
    rrca                                          ; $6B34: $0F
    nop                                           ; $6B35: $00
    rrca                                          ; $6B36: $0F
    nop                                           ; $6B37: $00
    rrca                                          ; $6B38: $0F
    nop                                           ; $6B39: $00
    rlca                                          ; $6B3A: $07
    nop                                           ; $6B3B: $00
    rlca                                          ; $6B3C: $07
    inc bc                                        ; $6B3D: $03
    rlca                                          ; $6B3E: $07
    nop                                           ; $6B3F: $00
    ld hl, sp+$00                                 ; $6B40: $F8 $00
    ld hl, sp+$00                                 ; $6B42: $F8 $00
    ld hl, sp+$00                                 ; $6B44: $F8 $00
    ld hl, sp+$00                                 ; $6B46: $F8 $00
    ld hl, sp+$00                                 ; $6B48: $F8 $00
    ldh a, [$60]                                  ; $6B4A: $F0 $60
    ldh a, [$60]                                  ; $6B4C: $F0 $60
    ldh a, [rP1]                                  ; $6B4E: $F0 $00
    nop                                           ; $6B50: $00
    nop                                           ; $6B51: $00
    rlca                                          ; $6B52: $07
    nop                                           ; $6B53: $00
    ld [$1007], sp                                ; $6B54: $08 $07 $10
    rrca                                          ; $6B57: $0F
    db $10                                        ; $6B58: $10
    rrca                                          ; $6B59: $0F
    db $10                                        ; $6B5A: $10
    rrca                                          ; $6B5B: $0F
    db $10                                        ; $6B5C: $10
    rrca                                          ; $6B5D: $0F
    ld [de], a                                    ; $6B5E: $12
    dec c                                         ; $6B5F: $0D
    nop                                           ; $6B60: $00
    nop                                           ; $6B61: $00
    ldh [rP1], a                                  ; $6B62: $E0 $00
    ld [hl], b                                    ; $6B64: $70
    ldh [rNR23], a                                ; $6B65: $E0 $18
    ldh a, [$08]                                  ; $6B67: $F0 $08
    ldh a, [$08]                                  ; $6B69: $F0 $08
    ldh a, [$78]                                  ; $6B6B: $F0 $78
    ldh a, [$F8]                                  ; $6B6D: $F0 $F8
    ldh a, [rNR14]                                ; $6B6F: $F0 $14
    dec bc                                        ; $6B71: $0B
    ld a, [bc]                                    ; $6B72: $0A
    dec b                                         ; $6B73: $05
    rra                                           ; $6B74: $1F
    nop                                           ; $6B75: $00
    rra                                           ; $6B76: $1F
    nop                                           ; $6B77: $00
    rra                                           ; $6B78: $1F
    nop                                           ; $6B79: $00
    rra                                           ; $6B7A: $1F
    nop                                           ; $6B7B: $00
    rra                                           ; $6B7C: $1F
    nop                                           ; $6B7D: $00
    rra                                           ; $6B7E: $1F
    nop                                           ; $6B7F: $00
    adc b                                         ; $6B80: $88
    ldh a, [rNR23]                                ; $6B81: $F0 $18

jr_00C_6B83:
    ldh a, [$FC]                                  ; $6B83: $F0 $FC

jr_00C_6B85:
    jr c, jr_00C_6B83                             ; $6B85: $38 $FC

jr_00C_6B87:
    jr jr_00C_6B85                                ; $6B87: $18 $FC

    jr jr_00C_6B87                                ; $6B89: $18 $FC

    ld [$00FC], sp                                ; $6B8B: $08 $FC $00
    ldh a, [rP1]                                  ; $6B8E: $F0 $00
    rra                                           ; $6B90: $1F
    nop                                           ; $6B91: $00
    rra                                           ; $6B92: $1F
    nop                                           ; $6B93: $00
    rra                                           ; $6B94: $1F
    nop                                           ; $6B95: $00
    ccf                                           ; $6B96: $3F
    nop                                           ; $6B97: $00
    ld a, a                                       ; $6B98: $7F
    jr nz, jr_00C_6C1A                            ; $6B99: $20 $7F

    jr nc, @+$81                                  ; $6B9B: $30 $7F

    inc e                                         ; $6B9D: $1C
    ld a, a                                       ; $6B9E: $7F
    nop                                           ; $6B9F: $00
    ldh a, [rP1]                                  ; $6BA0: $F0 $00
    ldh a, [rP1]                                  ; $6BA2: $F0 $00
    ld hl, sp+$00                                 ; $6BA4: $F8 $00
    db $FC                                        ; $6BA6: $FC
    jr @-$02                                      ; $6BA7: $18 $FC

    jr c, @-$06                                   ; $6BA9: $38 $F8

    jr nc, @-$06                                  ; $6BAB: $30 $F8

    ld b, b                                       ; $6BAD: $40
    ldh [rP1], a                                  ; $6BAE: $E0 $00
    rra                                           ; $6BB0: $1F
    nop                                           ; $6BB1: $00
    rrca                                          ; $6BB2: $0F
    nop                                           ; $6BB3: $00
    rrca                                          ; $6BB4: $0F
    nop                                           ; $6BB5: $00
    rrca                                          ; $6BB6: $0F
    nop                                           ; $6BB7: $00
    rra                                           ; $6BB8: $1F
    nop                                           ; $6BB9: $00
    rra                                           ; $6BBA: $1F
    inc bc                                        ; $6BBB: $03
    rra                                           ; $6BBC: $1F
    rlca                                          ; $6BBD: $07
    rrca                                          ; $6BBE: $0F
    nop                                           ; $6BBF: $00
    ldh a, [rP1]                                  ; $6BC0: $F0 $00
    ldh a, [rP1]                                  ; $6BC2: $F0 $00
    ldh a, [rP1]                                  ; $6BC4: $F0 $00
    ldh a, [rP1]                                  ; $6BC6: $F0 $00
    ld hl, sp+$10                                 ; $6BC8: $F8 $10
    ld hl, sp-$30                                 ; $6BCA: $F8 $D0
    ld hl, sp-$40                                 ; $6BCC: $F8 $C0
    ldh [rP1], a                                  ; $6BCE: $E0 $00
    rra                                           ; $6BD0: $1F
    nop                                           ; $6BD1: $00
    rra                                           ; $6BD2: $1F
    nop                                           ; $6BD3: $00
    rrca                                          ; $6BD4: $0F
    nop                                           ; $6BD5: $00
    rra                                           ; $6BD6: $1F
    nop                                           ; $6BD7: $00
    ccf                                           ; $6BD8: $3F
    db $10                                        ; $6BD9: $10
    ccf                                           ; $6BDA: $3F
    ld e, $3F                                     ; $6BDB: $1E $3F
    rrca                                          ; $6BDD: $0F
    ccf                                           ; $6BDE: $3F

jr_00C_6BDF:
    nop                                           ; $6BDF: $00
    ldh a, [rP1]                                  ; $6BE0: $F0 $00
    ldh a, [rP1]                                  ; $6BE2: $F0 $00
    db $FC                                        ; $6BE4: $FC
    nop                                           ; $6BE5: $00
    cp $0C                                        ; $6BE6: $FE $0C
    cp $1C                                        ; $6BE8: $FE $1C
    db $FC                                        ; $6BEA: $FC
    jr @-$02                                      ; $6BEB: $18 $FC

    jr nz, jr_00C_6BDF                            ; $6BED: $20 $F0

    nop                                           ; $6BEF: $00
    rlca                                          ; $6BF0: $07
    nop                                           ; $6BF1: $00
    ld [$1007], sp                                ; $6BF2: $08 $07 $10
    rrca                                          ; $6BF5: $0F
    rla                                           ; $6BF6: $17
    ld [$001F], sp                                ; $6BF7: $08 $1F $00
    add hl, de                                    ; $6BFA: $19
    rlca                                          ; $6BFB: $07
    ld a, [de]                                    ; $6BFC: $1A
    rlca                                          ; $6BFD: $07
    ld d, $0B                                     ; $6BFE: $16 $0B
    ldh a, [rP1]                                  ; $6C00: $F0 $00
    ld [$04F0], sp                                ; $6C02: $08 $F0 $04
    ld hl, sp-$04                                 ; $6C05: $F8 $FC
    nop                                           ; $6C07: $00
    db $FC                                        ; $6C08: $FC
    nop                                           ; $6C09: $00
    sbc h                                         ; $6C0A: $9C
    ld hl, sp-$6C                                 ; $6C0B: $F8 $94
    ld l, b                                       ; $6C0D: $68
    ld h, h                                       ; $6C0E: $64
    ld hl, sp-$20                                 ; $6C0F: $F8 $E0
    nop                                           ; $6C11: $00
    db $10                                        ; $6C12: $10
    ldh [$08], a                                  ; $6C13: $E0 $08
    ldh a, [$E8]                                  ; $6C15: $F0 $E8
    db $10                                        ; $6C17: $10
    ld hl, sp+$00                                 ; $6C18: $F8 $00

jr_00C_6C1A:
    ld a, b                                       ; $6C1A: $78
    ldh [$58], a                                  ; $6C1B: $E0 $58
    or b                                          ; $6C1D: $B0
    sub h                                         ; $6C1E: $94
    add sp, $3F                                   ; $6C1F: $E8 $3F
    inc de                                        ; $6C21: $13
    ccf                                           ; $6C22: $3F
    add hl, bc                                    ; $6C23: $09
    ccf                                           ; $6C24: $3F
    inc c                                         ; $6C25: $0C
    ccf                                           ; $6C26: $3F
    inc e                                         ; $6C27: $1C
    ccf                                           ; $6C28: $3F
    ld e, $3F                                     ; $6C29: $1E $3F
    ld e, $3F                                     ; $6C2B: $1E $3F
    ld e, $3F                                     ; $6C2D: $1E $3F
    ld e, $FC                                     ; $6C2F: $1E $FC
    ld hl, sp-$04                                 ; $6C31: $F8 $FC
    ld hl, sp-$04                                 ; $6C33: $F8 $FC
    ld hl, sp-$08                                 ; $6C35: $F8 $F8
    ldh a, [$F8]                                  ; $6C37: $F0 $F8
    ldh a, [$F8]                                  ; $6C39: $F0 $F8
    ldh a, [$F8]                                  ; $6C3B: $F0 $F8
    ldh a, [$F8]                                  ; $6C3D: $F0 $F8
    ldh [$F8], a                                  ; $6C3F: $E0 $F8
    ldh [$F8], a                                  ; $6C41: $E0 $F8
    ldh [$FC], a                                  ; $6C43: $E0 $FC
    add sp, -$04                                  ; $6C45: $E8 $FC
    add sp, -$04                                  ; $6C47: $E8 $FC
    add sp, -$04                                  ; $6C49: $E8 $FC
    ret c                                         ; $6C4B: $D8

    db $FC                                        ; $6C4C: $FC
    ret c                                         ; $6C4D: $D8

    db $FC                                        ; $6C4E: $FC
    cp b                                          ; $6C4F: $B8
    ccf                                           ; $6C50: $3F
    dec e                                         ; $6C51: $1D
    ccf                                           ; $6C52: $3F
    dec de                                        ; $6C53: $1B
    rra                                           ; $6C54: $1F
    rrca                                          ; $6C55: $0F
    rra                                           ; $6C56: $1F
    rrca                                          ; $6C57: $0F
    rla                                           ; $6C58: $17
    rrca                                          ; $6C59: $0F
    jr c, @+$21                                   ; $6C5A: $38 $1F

    ld a, a                                       ; $6C5C: $7F
    ccf                                           ; $6C5D: $3F
    ccf                                           ; $6C5E: $3F
    nop                                           ; $6C5F: $00
    ld hl, sp+$60                                 ; $6C60: $F8 $60
    ld hl, sp+$60                                 ; $6C62: $F8 $60
    ld hl, sp-$80                                 ; $6C64: $F8 $80
    ld hl, sp-$10                                 ; $6C66: $F8 $F0
    add h                                         ; $6C68: $84
    ld hl, sp+$7C                                 ; $6C69: $F8 $7C
    ld hl, sp-$04                                 ; $6C6B: $F8 $FC
    ret nz                                        ; $6C6D: $C0

    ldh [rP1], a                                  ; $6C6E: $E0 $00
    db $FC                                        ; $6C70: $FC
    cp b                                          ; $6C71: $B8
    db $FC                                        ; $6C72: $FC
    cp b                                          ; $6C73: $B8
    db $FC                                        ; $6C74: $FC
    ld a, b                                       ; $6C75: $78
    cp $FC                                        ; $6C76: $FE $FC
    ld a, [c]                                     ; $6C78: $F2
    db $FC                                        ; $6C79: $FC
    ld c, $FC                                     ; $6C7A: $0E $FC
    db $FC                                        ; $6C7C: $FC
    ld hl, sp-$08                                 ; $6C7D: $F8 $F8
    nop                                           ; $6C7F: $00
    ldh [rP1], a                                  ; $6C80: $E0 $00
    db $10                                        ; $6C82: $10
    ldh [$08], a                                  ; $6C83: $E0 $08
    ldh a, [rNR23]                                ; $6C85: $F0 $18
    ldh [$F8], a                                  ; $6C87: $E0 $F8
    nop                                           ; $6C89: $00
    add sp, $10                                   ; $6C8A: $E8 $10
    jr @-$0E                                      ; $6C8C: $18 $F0

    inc [hl]                                      ; $6C8E: $34
    add sp, $07                                   ; $6C8F: $E8 $07
    nop                                           ; $6C91: $00
    ld [$1007], sp                                ; $6C92: $08 $07 $10
    rrca                                          ; $6C95: $0F
    db $10                                        ; $6C96: $10
    rrca                                          ; $6C97: $0F
    rra                                           ; $6C98: $1F
    nop                                           ; $6C99: $00
    rra                                           ; $6C9A: $1F
    nop                                           ; $6C9B: $00
    db $10                                        ; $6C9C: $10
    rrca                                          ; $6C9D: $0F
    rrca                                          ; $6C9E: $0F
    rlca                                          ; $6C9F: $07
    ldh a, [rP1]                                  ; $6CA0: $F0 $00
    ld [$04F0], sp                                ; $6CA2: $08 $F0 $04
    ld hl, sp+$7C                                 ; $6CA5: $F8 $7C
    add b                                         ; $6CA7: $80
    db $FC                                        ; $6CA8: $FC
    nop                                           ; $6CA9: $00
    or h                                          ; $6CAA: $B4
    ld l, b                                       ; $6CAB: $68
    and $D8                                       ; $6CAC: $E6 $D8
    xor $D4                                       ; $6CAE: $EE $D4
    rra                                           ; $6CB0: $1F
    rrca                                          ; $6CB1: $0F
    rra                                           ; $6CB2: $1F
    rrca                                          ; $6CB3: $0F
    rra                                           ; $6CB4: $1F
    rrca                                          ; $6CB5: $0F
    rra                                           ; $6CB6: $1F
    rrca                                          ; $6CB7: $0F
    rra                                           ; $6CB8: $1F
    rrca                                          ; $6CB9: $0F
    rra                                           ; $6CBA: $1F
    rrca                                          ; $6CBB: $0F
    rra                                           ; $6CBC: $1F
    rrca                                          ; $6CBD: $0F
    rra                                           ; $6CBE: $1F
    rlca                                          ; $6CBF: $07
    cp $CC                                        ; $6CC0: $FE $CC
    cp $94                                        ; $6CC2: $FE $94
    cp $34                                        ; $6CC4: $FE $34
    db $FC                                        ; $6CC6: $FC
    jr c, @-$02                                   ; $6CC7: $38 $FC

    ld a, b                                       ; $6CC9: $78
    db $FC                                        ; $6CCA: $FC
    ld a, b                                       ; $6CCB: $78
    db $FC                                        ; $6CCC: $FC
    ld a, b                                       ; $6CCD: $78
    db $FC                                        ; $6CCE: $FC
    ld a, b                                       ; $6CCF: $78
    rra                                           ; $6CD0: $1F
    ld b, $1F                                     ; $6CD1: $06 $1F
    ld b, $1F                                     ; $6CD3: $06 $1F
    ld bc, $0F1F                                  ; $6CD5: $01 $1F $0F
    rla                                           ; $6CD8: $17
    rrca                                          ; $6CD9: $0F
    jr c, jr_00C_6CFB                             ; $6CDA: $38 $1F

    ld a, a                                       ; $6CDC: $7F
    ccf                                           ; $6CDD: $3F
    ccf                                           ; $6CDE: $3F
    nop                                           ; $6CDF: $00
    db $FC                                        ; $6CE0: $FC
    cp b                                          ; $6CE1: $B8
    db $FC                                        ; $6CE2: $FC
    ret c                                         ; $6CE3: $D8

    ld hl, sp-$10                                 ; $6CE4: $F8 $F0
    ld hl, sp-$10                                 ; $6CE6: $F8 $F0
    add h                                         ; $6CE8: $84
    ld hl, sp+$7C                                 ; $6CE9: $F8 $7C
    ld hl, sp-$08                                 ; $6CEB: $F8 $F8
    ret nz                                        ; $6CED: $C0

    ldh [rP1], a                                  ; $6CEE: $E0 $00
    rra                                           ; $6CF0: $1F
    rlca                                          ; $6CF1: $07
    rra                                           ; $6CF2: $1F
    rlca                                          ; $6CF3: $07
    ccf                                           ; $6CF4: $3F
    rla                                           ; $6CF5: $17
    ccf                                           ; $6CF6: $3F
    rla                                           ; $6CF7: $17
    ccf                                           ; $6CF8: $3F
    dec de                                        ; $6CF9: $1B
    ccf                                           ; $6CFA: $3F

jr_00C_6CFB:
    dec de                                        ; $6CFB: $1B
    ccf                                           ; $6CFC: $3F
    dec de                                        ; $6CFD: $1B
    ccf                                           ; $6CFE: $3F
    dec e                                         ; $6CFF: $1D
    ccf                                           ; $6D00: $3F
    dec de                                        ; $6D01: $1B
    rra                                           ; $6D02: $1F
    dec bc                                        ; $6D03: $0B
    rra                                           ; $6D04: $1F
    inc c                                         ; $6D05: $0C
    ccf                                           ; $6D06: $3F
    rra                                           ; $6D07: $1F
    daa                                           ; $6D08: $27
    rra                                           ; $6D09: $1F
    jr c, jr_00C_6D2B                             ; $6D0A: $38 $1F

    rra                                           ; $6D0C: $1F
    rrca                                          ; $6D0D: $0F
    rrca                                          ; $6D0E: $0F
    nop                                           ; $6D0F: $00
    inc bc                                        ; $6D10: $03
    nop                                           ; $6D11: $00
    inc b                                         ; $6D12: $04
    inc bc                                        ; $6D13: $03
    ld [$0907], sp                                ; $6D14: $08 $07 $09
    ld b, $0F                                     ; $6D17: $06 $0F
    nop                                           ; $6D19: $00
    rrca                                          ; $6D1A: $0F
    nop                                           ; $6D1B: $00
    inc b                                         ; $6D1C: $04
    inc bc                                        ; $6D1D: $03
    rrca                                          ; $6D1E: $0F
    rlca                                          ; $6D1F: $07
    ldh a, [rP1]                                  ; $6D20: $F0 $00
    ld [$04F0], sp                                ; $6D22: $08 $F0 $04
    ld hl, sp-$04                                 ; $6D25: $F8 $FC
    nop                                           ; $6D27: $00
    db $FC                                        ; $6D28: $FC
    nop                                           ; $6D29: $00
    inc [hl]                                      ; $6D2A: $34

jr_00C_6D2B:
    ld hl, sp+$54                                 ; $6D2B: $F8 $54
    add sp, -$7C                                  ; $6D2D: $E8 $84
    ld hl, sp+$1F                                 ; $6D2F: $F8 $1F
    ld c, $1F                                     ; $6D31: $0E $1F
    dec c                                         ; $6D33: $0D
    ccf                                           ; $6D34: $3F
    dec de                                        ; $6D35: $1B
    ccf                                           ; $6D36: $3F
    rla                                           ; $6D37: $17
    ccf                                           ; $6D38: $3F
    rla                                           ; $6D39: $17
    ccf                                           ; $6D3A: $3F
    rla                                           ; $6D3B: $17
    ccf                                           ; $6D3C: $3F
    rla                                           ; $6D3D: $17
    rra                                           ; $6D3E: $1F
    dec b                                         ; $6D3F: $05
    db $FC                                        ; $6D40: $FC
    ld a, b                                       ; $6D41: $78
    db $FC                                        ; $6D42: $FC
    cp b                                          ; $6D43: $B8
    db $FC                                        ; $6D44: $FC
    ret c                                         ; $6D45: $D8

    db $FC                                        ; $6D46: $FC
    ret c                                         ; $6D47: $D8

    db $FC                                        ; $6D48: $FC
    ret c                                         ; $6D49: $D8

    db $FC                                        ; $6D4A: $FC
    ret c                                         ; $6D4B: $D8

    cp $EC                                        ; $6D4C: $FE $EC
    cp $EC                                        ; $6D4E: $FE $EC
    rra                                           ; $6D50: $1F
    dec b                                         ; $6D51: $05
    rrca                                          ; $6D52: $0F
    ld b, $1F                                     ; $6D53: $06 $1F
    rrca                                          ; $6D55: $0F
    rra                                           ; $6D56: $1F
    rrca                                          ; $6D57: $0F
    daa                                           ; $6D58: $27
    rra                                           ; $6D59: $1F
    jr c, @+$21                                   ; $6D5A: $38 $1F

    rra                                           ; $6D5C: $1F
    rrca                                          ; $6D5D: $0F
    rrca                                          ; $6D5E: $0F
    nop                                           ; $6D5F: $00
    cp $EC                                        ; $6D60: $FE $EC
    cp $CC                                        ; $6D62: $FE $CC
    cp $34                                        ; $6D64: $FE $34
    cp $F8                                        ; $6D66: $FE $F8
    ld a, [c]                                     ; $6D68: $F2
    db $FC                                        ; $6D69: $FC
    ld c, $FC                                     ; $6D6A: $0E $FC
    db $FC                                        ; $6D6C: $FC
    ld hl, sp-$08                                 ; $6D6D: $F8 $F8
    nop                                           ; $6D6F: $00
    rrca                                          ; $6D70: $0F
    ld b, $0F                                     ; $6D71: $06 $0F
    rlca                                          ; $6D73: $07
    rrca                                          ; $6D74: $0F
    rlca                                          ; $6D75: $07
    rra                                           ; $6D76: $1F
    rrca                                          ; $6D77: $0F
    rla                                           ; $6D78: $17
    rrca                                          ; $6D79: $0F
    jr @+$11                                      ; $6D7A: $18 $0F

    rrca                                          ; $6D7C: $0F
    rlca                                          ; $6D7D: $07
    rlca                                          ; $6D7E: $07
    nop                                           ; $6D7F: $00
    cp $CC                                        ; $6D80: $FE $CC
    cp $34                                        ; $6D82: $FE $34
    cp $F8                                        ; $6D84: $FE $F8
    cp $FC                                        ; $6D86: $FE $FC
    ld a, [c]                                     ; $6D88: $F2
    db $FC                                        ; $6D89: $FC
    ld c, $FC                                     ; $6D8A: $0E $FC
    db $FC                                        ; $6D8C: $FC
    ld hl, sp-$08                                 ; $6D8D: $F8 $F8
    nop                                           ; $6D8F: $00
    inc bc                                        ; $6D90: $03
    nop                                           ; $6D91: $00
    rlca                                          ; $6D92: $07
    inc bc                                        ; $6D93: $03
    rrca                                          ; $6D94: $0F
    rlca                                          ; $6D95: $07
    ld e, $0F                                     ; $6D96: $1E $0F
    inc a                                         ; $6D98: $3C
    rra                                           ; $6D99: $1F
    dec a                                         ; $6D9A: $3D
    rra                                           ; $6D9B: $1F
    ld a, $17                                     ; $6D9C: $3E $17
    ld d, $0B                                     ; $6D9E: $16 $0B
    ldh a, [rP1]                                  ; $6DA0: $F0 $00
    ld hl, sp-$10                                 ; $6DA2: $F8 $F0
    db $FC                                        ; $6DA4: $FC
    ld hl, sp-$14                                 ; $6DA5: $F8 $EC
    ld hl, sp+$04                                 ; $6DA7: $F8 $04
    ld hl, sp-$64                                 ; $6DA9: $F8 $9C
    ld hl, sp-$6C                                 ; $6DAB: $F8 $94
    ld l, b                                       ; $6DAD: $68
    ld h, h                                       ; $6DAE: $64
    ld hl, sp-$20                                 ; $6DAF: $F8 $E0
    nop                                           ; $6DB1: $00
    ldh a, [$E0]                                  ; $6DB2: $F0 $E0
    ld hl, sp-$10                                 ; $6DB4: $F8 $F0
    ret c                                         ; $6DB6: $D8

    ldh a, [rNR23]                                ; $6DB7: $F0 $18
    ldh a, [$78]                                  ; $6DB9: $F0 $78
    ldh [$58], a                                  ; $6DBB: $E0 $58
    or b                                          ; $6DBD: $B0
    sub h                                         ; $6DBE: $94
    add sp, $3F                                   ; $6DBF: $E8 $3F
    inc de                                        ; $6DC1: $13
    ccf                                           ; $6DC2: $3F
    add hl, bc                                    ; $6DC3: $09
    rra                                           ; $6DC4: $1F
    ld [$081F], sp                                ; $6DC5: $08 $1F $08
    inc de                                        ; $6DC8: $13
    inc c                                         ; $6DC9: $0C
    inc de                                        ; $6DCA: $13
    inc c                                         ; $6DCB: $0C
    rra                                           ; $6DCC: $1F
    nop                                           ; $6DCD: $00
    rrca                                          ; $6DCE: $0F
    nop                                           ; $6DCF: $00
    db $FC                                        ; $6DD0: $FC
    ld hl, sp-$04                                 ; $6DD1: $F8 $FC
    ld hl, sp-$04                                 ; $6DD3: $F8 $FC
    ld hl, sp-$04                                 ; $6DD5: $F8 $FC
    ldh a, [$FA]                                  ; $6DD7: $F0 $FA
    db $F4                                        ; $6DD9: $F4
    ld a, [$FCF4]                                 ; $6DDA: $FA $F4 $FC
    ldh a, [$F8]                                  ; $6DDD: $F0 $F8
    ldh [$F8], a                                  ; $6DDF: $E0 $F8
    ldh [$FC], a                                  ; $6DE1: $E0 $FC
    add sp, -$04                                  ; $6DE3: $E8 $FC
    add sp, -$04                                  ; $6DE5: $E8 $FC
    add sp, -$1C                                  ; $6DE7: $E8 $E4
    ret c                                         ; $6DE9: $D8

    db $E4                                        ; $6DEA: $E4
    ret c                                         ; $6DEB: $D8

    ld hl, sp-$40                                 ; $6DEC: $F8 $C0
    ld hl, sp-$80                                 ; $6DEE: $F8 $80
    rrca                                          ; $6DF0: $0F
    nop                                           ; $6DF1: $00
    rrca                                          ; $6DF2: $0F
    nop                                           ; $6DF3: $00
    rra                                           ; $6DF4: $1F
    nop                                           ; $6DF5: $00
    rra                                           ; $6DF6: $1F
    nop                                           ; $6DF7: $00
    rra                                           ; $6DF8: $1F
    nop                                           ; $6DF9: $00
    ccf                                           ; $6DFA: $3F
    nop                                           ; $6DFB: $00
    ld a, a                                       ; $6DFC: $7F
    nop                                           ; $6DFD: $00
    ccf                                           ; $6DFE: $3F
    nop                                           ; $6DFF: $00
    ld hl, sp+$60                                 ; $6E00: $F8 $60
    ld hl, sp+$60                                 ; $6E02: $F8 $60
    ld hl, sp+$00                                 ; $6E04: $F8 $00
    ld hl, sp+$00                                 ; $6E06: $F8 $00
    db $FC                                        ; $6E08: $FC
    nop                                           ; $6E09: $00
    db $FC                                        ; $6E0A: $FC
    nop                                           ; $6E0B: $00
    db $FC                                        ; $6E0C: $FC
    nop                                           ; $6E0D: $00
    ldh [rP1], a                                  ; $6E0E: $E0 $00
    ld hl, sp-$80                                 ; $6E10: $F8 $80
    ld hl, sp-$80                                 ; $6E12: $F8 $80
    ld hl, sp+$00                                 ; $6E14: $F8 $00
    db $FC                                        ; $6E16: $FC
    nop                                           ; $6E17: $00
    db $FC                                        ; $6E18: $FC
    nop                                           ; $6E19: $00
    db $FC                                        ; $6E1A: $FC
    nop                                           ; $6E1B: $00
    ld hl, sp+$00                                 ; $6E1C: $F8 $00
    ldh a, [rP1]                                  ; $6E1E: $F0 $00
    ldh [rP1], a                                  ; $6E20: $E0 $00
    ldh a, [$E0]                                  ; $6E22: $F0 $E0
    ld hl, sp-$10                                 ; $6E24: $F8 $F0
    ld hl, sp-$10                                 ; $6E26: $F8 $F0
    ld hl, sp-$10                                 ; $6E28: $F8 $F0
    ld hl, sp-$10                                 ; $6E2A: $F8 $F0
    ld hl, sp-$10                                 ; $6E2C: $F8 $F0
    db $F4                                        ; $6E2E: $F4
    add sp, $03                                   ; $6E2F: $E8 $03
    nop                                           ; $6E31: $00
    rlca                                          ; $6E32: $07
    inc bc                                        ; $6E33: $03
    rrca                                          ; $6E34: $0F
    rlca                                          ; $6E35: $07
    rra                                           ; $6E36: $1F
    rrca                                          ; $6E37: $0F
    rra                                           ; $6E38: $1F
    rrca                                          ; $6E39: $0F
    rra                                           ; $6E3A: $1F
    rrca                                          ; $6E3B: $0F
    rra                                           ; $6E3C: $1F
    rrca                                          ; $6E3D: $0F
    rrca                                          ; $6E3E: $0F
    rlca                                          ; $6E3F: $07
    ldh a, [rP1]                                  ; $6E40: $F0 $00
    ld hl, sp-$10                                 ; $6E42: $F8 $F0
    db $FC                                        ; $6E44: $FC
    ld hl, sp-$04                                 ; $6E45: $F8 $FC
    ld hl, sp-$04                                 ; $6E47: $F8 $FC
    ldh a, [$F4]                                  ; $6E49: $F0 $F4
    add sp, -$0A                                  ; $6E4B: $E8 $F6
    db $EC                                        ; $6E4D: $EC
    xor $D4                                       ; $6E4E: $EE $D4
    ld hl, sp-$20                                 ; $6E50: $F8 $E0
    db $FC                                        ; $6E52: $FC
    add sp, -$04                                  ; $6E53: $E8 $FC
    add sp, -$04                                  ; $6E55: $E8 $FC
    add sp, -$1C                                  ; $6E57: $E8 $E4
    ret c                                         ; $6E59: $D8

    db $E4                                        ; $6E5A: $E4
    ret c                                         ; $6E5B: $D8

    ld hl, sp-$40                                 ; $6E5C: $F8 $C0
    ld hl, sp-$80                                 ; $6E5E: $F8 $80
    rra                                           ; $6E60: $1F
    rrca                                          ; $6E61: $0F
    rra                                           ; $6E62: $1F
    rrca                                          ; $6E63: $0F
    rra                                           ; $6E64: $1F
    rrca                                          ; $6E65: $0F
    rra                                           ; $6E66: $1F
    rrca                                          ; $6E67: $0F
    rra                                           ; $6E68: $1F
    rrca                                          ; $6E69: $0F
    rra                                           ; $6E6A: $1F
    rrca                                          ; $6E6B: $0F
    rra                                           ; $6E6C: $1F
    rrca                                          ; $6E6D: $0F
    rra                                           ; $6E6E: $1F
    rlca                                          ; $6E6F: $07
    cp $CC                                        ; $6E70: $FE $CC
    cp $94                                        ; $6E72: $FE $94
    cp $14                                        ; $6E74: $FE $14
    db $FC                                        ; $6E76: $FC
    db $10                                        ; $6E77: $10
    ret z                                         ; $6E78: $C8

    jr nc, @-$36                                  ; $6E79: $30 $C8

    jr nc, @-$06                                  ; $6E7B: $30 $F8

    nop                                           ; $6E7D: $00
    ld hl, sp+$00                                 ; $6E7E: $F8 $00
    ld hl, sp-$80                                 ; $6E80: $F8 $80
    ld hl, sp-$80                                 ; $6E82: $F8 $80
    ld hl, sp+$00                                 ; $6E84: $F8 $00
    db $FC                                        ; $6E86: $FC
    nop                                           ; $6E87: $00
    db $FC                                        ; $6E88: $FC
    nop                                           ; $6E89: $00
    db $FC                                        ; $6E8A: $FC
    nop                                           ; $6E8B: $00
    ld hl, sp+$00                                 ; $6E8C: $F8 $00
    ldh a, [rP1]                                  ; $6E8E: $F0 $00
    rrca                                          ; $6E90: $0F
    ld b, $0F                                     ; $6E91: $06 $0F
    ld b, $0F                                     ; $6E93: $06 $0F
    nop                                           ; $6E95: $00
    rrca                                          ; $6E96: $0F
    nop                                           ; $6E97: $00
    rrca                                          ; $6E98: $0F
    nop                                           ; $6E99: $00
    rra                                           ; $6E9A: $1F
    nop                                           ; $6E9B: $00
    ccf                                           ; $6E9C: $3F
    nop                                           ; $6E9D: $00
    rra                                           ; $6E9E: $1F
    nop                                           ; $6E9F: $00
    ld hl, sp+$00                                 ; $6EA0: $F8 $00
    ld hl, sp+$00                                 ; $6EA2: $F8 $00
    ld hl, sp+$00                                 ; $6EA4: $F8 $00
    ld hl, sp+$00                                 ; $6EA6: $F8 $00
    db $FC                                        ; $6EA8: $FC
    nop                                           ; $6EA9: $00
    db $FC                                        ; $6EAA: $FC
    nop                                           ; $6EAB: $00
    ld hl, sp+$00                                 ; $6EAC: $F8 $00
    ldh [rP1], a                                  ; $6EAE: $E0 $00
    add hl, hl                                    ; $6EB0: $29
    rla                                           ; $6EB1: $17
    rra                                           ; $6EB2: $1F
    rlca                                          ; $6EB3: $07
    ccf                                           ; $6EB4: $3F
    rla                                           ; $6EB5: $17
    ccf                                           ; $6EB6: $3F
    rla                                           ; $6EB7: $17
    ccf                                           ; $6EB8: $3F
    inc de                                        ; $6EB9: $13
    inc sp                                        ; $6EBA: $33
    dec c                                         ; $6EBB: $0D
    inc de                                        ; $6EBC: $13
    dec c                                         ; $6EBD: $0D
    rra                                           ; $6EBE: $1F
    inc bc                                        ; $6EBF: $03
    sub h                                         ; $6EC0: $94
    add sp, -$08                                  ; $6EC1: $E8 $F8
    ldh [$FC], a                                  ; $6EC3: $E0 $FC
    add sp, -$04                                  ; $6EC5: $E8 $FC
    add sp, -$04                                  ; $6EC7: $E8 $FC
    add sp, -$04                                  ; $6EC9: $E8 $FC
    ldh [$F8], a                                  ; $6ECB: $E0 $F8
    ret nz                                        ; $6ECD: $C0

    ld hl, sp-$40                                 ; $6ECE: $F8 $C0
    rra                                           ; $6ED0: $1F
    inc bc                                        ; $6ED1: $03
    rra                                           ; $6ED2: $1F
    inc bc                                        ; $6ED3: $03
    rra                                           ; $6ED4: $1F
    nop                                           ; $6ED5: $00
    ccf                                           ; $6ED6: $3F
    nop                                           ; $6ED7: $00
    ccf                                           ; $6ED8: $3F
    nop                                           ; $6ED9: $00
    ccf                                           ; $6EDA: $3F
    nop                                           ; $6EDB: $00
    rra                                           ; $6EDC: $1F
    nop                                           ; $6EDD: $00
    rrca                                          ; $6EDE: $0F
    nop                                           ; $6EDF: $00
    ld hl, sp-$80                                 ; $6EE0: $F8 $80
    ld hl, sp+$00                                 ; $6EE2: $F8 $00
    ld hl, sp+$00                                 ; $6EE4: $F8 $00
    db $FC                                        ; $6EE6: $FC
    nop                                           ; $6EE7: $00
    db $FC                                        ; $6EE8: $FC
    nop                                           ; $6EE9: $00
    db $FC                                        ; $6EEA: $FC
    nop                                           ; $6EEB: $00
    ld hl, sp+$00                                 ; $6EEC: $F8 $00
    ldh a, [rP1]                                  ; $6EEE: $F0 $00
    cpl                                           ; $6EF0: $2F
    rla                                           ; $6EF1: $17
    rra                                           ; $6EF2: $1F
    rlca                                          ; $6EF3: $07
    ccf                                           ; $6EF4: $3F
    rla                                           ; $6EF5: $17
    ccf                                           ; $6EF6: $3F
    rla                                           ; $6EF7: $17
    ccf                                           ; $6EF8: $3F
    rla                                           ; $6EF9: $17
    daa                                           ; $6EFA: $27
    dec de                                        ; $6EFB: $1B
    daa                                           ; $6EFC: $27
    dec de                                        ; $6EFD: $1B
    rra                                           ; $6EFE: $1F
    inc bc                                        ; $6EFF: $03
    db $F4                                        ; $6F00: $F4
    add sp, -$08                                  ; $6F01: $E8 $F8
    ldh [$FC], a                                  ; $6F03: $E0 $FC
    add sp, -$04                                  ; $6F05: $E8 $FC
    add sp, -$04                                  ; $6F07: $E8 $FC
    add sp, -$0C                                  ; $6F09: $E8 $F4
    ret z                                         ; $6F0B: $C8

    db $FC                                        ; $6F0C: $FC
    ret nz                                        ; $6F0D: $C0

    ld hl, sp-$40                                 ; $6F0E: $F8 $C0
    rra                                           ; $6F10: $1F
    inc bc                                        ; $6F11: $03
    rra                                           ; $6F12: $1F
    inc bc                                        ; $6F13: $03
    rra                                           ; $6F14: $1F
    nop                                           ; $6F15: $00
    ccf                                           ; $6F16: $3F
    nop                                           ; $6F17: $00
    ccf                                           ; $6F18: $3F
    nop                                           ; $6F19: $00
    ccf                                           ; $6F1A: $3F
    nop                                           ; $6F1B: $00
    rra                                           ; $6F1C: $1F
    nop                                           ; $6F1D: $00
    rrca                                          ; $6F1E: $0F
    nop                                           ; $6F1F: $00
    ld hl, sp-$80                                 ; $6F20: $F8 $80
    ld hl, sp+$00                                 ; $6F22: $F8 $00
    ld hl, sp+$00                                 ; $6F24: $F8 $00
    db $FC                                        ; $6F26: $FC
    nop                                           ; $6F27: $00
    db $FC                                        ; $6F28: $FC
    nop                                           ; $6F29: $00
    db $FC                                        ; $6F2A: $FC
    nop                                           ; $6F2B: $00
    ld hl, sp+$00                                 ; $6F2C: $F8 $00
    ldh a, [rP1]                                  ; $6F2E: $F0 $00
    ld bc, $0300                                  ; $6F30: $01 $00 $03
    ld bc, $0307                                  ; $6F33: $01 $07 $03
    rrca                                          ; $6F36: $0F
    rlca                                          ; $6F37: $07
    rra                                           ; $6F38: $1F
    rrca                                          ; $6F39: $0F
    rra                                           ; $6F3A: $1F
    rrca                                          ; $6F3B: $0F
    rra                                           ; $6F3C: $1F
    rrca                                          ; $6F3D: $0F
    rrca                                          ; $6F3E: $0F
    rlca                                          ; $6F3F: $07
    ldh a, [rP1]                                  ; $6F40: $F0 $00
    ld hl, sp-$10                                 ; $6F42: $F8 $F0
    db $FC                                        ; $6F44: $FC
    ld hl, sp-$64                                 ; $6F45: $F8 $9C
    ld hl, sp+$04                                 ; $6F47: $F8 $04
    ld hl, sp-$4C                                 ; $6F49: $F8 $B4
    ld hl, sp-$6C                                 ; $6F4B: $F8 $94
    add sp, -$1C                                  ; $6F4D: $E8 $E4
    ld hl, sp+$0F                                 ; $6F4F: $F8 $0F
    rlca                                          ; $6F51: $07
    rra                                           ; $6F52: $1F
    ld c, $1F                                     ; $6F53: $0E $1F
    inc c                                         ; $6F55: $0C
    ccf                                           ; $6F56: $3F
    add hl, de                                    ; $6F57: $19
    ccf                                           ; $6F58: $3F
    ld [de], a                                    ; $6F59: $12
    add hl, sp                                    ; $6F5A: $39
    ld d, $39                                     ; $6F5B: $16 $39
    ld d, $3F                                     ; $6F5D: $16 $3F
    db $10                                        ; $6F5F: $10
    db $E4                                        ; $6F60: $E4
    ld hl, sp-$04                                 ; $6F61: $F8 $FC
    ld a, b                                       ; $6F63: $78
    db $FC                                        ; $6F64: $FC

jr_00C_6F65:
    cp b                                          ; $6F65: $B8
    db $FC                                        ; $6F66: $FC

jr_00C_6F67:
    jr jr_00C_6F65                                ; $6F67: $18 $FC

jr_00C_6F69:
    jr jr_00C_6F67                                ; $6F69: $18 $FC

    jr jr_00C_6F69                                ; $6F6B: $18 $FC

jr_00C_6F6D:
    jr jr_00C_6F6D                                ; $6F6D: $18 $FE

    inc c                                         ; $6F6F: $0C
    rra                                           ; $6F70: $1F
    ld c, $1F                                     ; $6F71: $0E $1F
    inc c                                         ; $6F73: $0C
    ccf                                           ; $6F74: $3F
    jr jr_00C_6FB6                                ; $6F75: $18 $3F

jr_00C_6F77:
    db $10                                        ; $6F77: $10
    ccf                                           ; $6F78: $3F

jr_00C_6F79:
    db $10                                        ; $6F79: $10
    ld a, $11                                     ; $6F7A: $3E $11
    ld a, $11                                     ; $6F7C: $3E $11
    rra                                           ; $6F7E: $1F
    nop                                           ; $6F7F: $00
    db $FC                                        ; $6F80: $FC

jr_00C_6F81:
    ld a, b                                       ; $6F81: $78
    db $FC                                        ; $6F82: $FC
    jr c, jr_00C_6F81                             ; $6F83: $38 $FC

    sbc b                                         ; $6F85: $98
    db $FC                                        ; $6F86: $FC
    sbc b                                         ; $6F87: $98
    db $FC                                        ; $6F88: $FC
    sbc b                                         ; $6F89: $98
    ld a, h                                       ; $6F8A: $7C
    sbc b                                         ; $6F8B: $98
    ld a, [hl]                                    ; $6F8C: $7E
    adc h                                         ; $6F8D: $8C
    cp $0C                                        ; $6F8E: $FE $0C
    rrca                                          ; $6F90: $0F
    rlca                                          ; $6F91: $07
    rra                                           ; $6F92: $1F
    ld c, $1F                                     ; $6F93: $0E $1F
    inc c                                         ; $6F95: $0C
    ccf                                           ; $6F96: $3F
    jr jr_00C_6FD8                                ; $6F97: $18 $3F

    db $10                                        ; $6F99: $10
    ccf                                           ; $6F9A: $3F
    db $10                                        ; $6F9B: $10
    ccf                                           ; $6F9C: $3F
    db $10                                        ; $6F9D: $10
    ccf                                           ; $6F9E: $3F
    db $10                                        ; $6F9F: $10
    db $E4                                        ; $6FA0: $E4
    ld hl, sp-$04                                 ; $6FA1: $F8 $FC
    ld a, b                                       ; $6FA3: $78
    db $FC                                        ; $6FA4: $FC
    cp b                                          ; $6FA5: $B8
    db $FC                                        ; $6FA6: $FC
    ld e, b                                       ; $6FA7: $58
    db $FC                                        ; $6FA8: $FC
    jr z, jr_00C_6F77                             ; $6FA9: $28 $CC

    jr nc, jr_00C_6F79                            ; $6FAB: $30 $CC

jr_00C_6FAD:
    jr nc, jr_00C_6FAD                            ; $6FAD: $30 $FE

    inc c                                         ; $6FAF: $0C
    rlca                                          ; $6FB0: $07
    nop                                           ; $6FB1: $00
    rlca                                          ; $6FB2: $07
    nop                                           ; $6FB3: $00
    rlca                                          ; $6FB4: $07
    nop                                           ; $6FB5: $00

jr_00C_6FB6:
    rrca                                          ; $6FB6: $0F
    nop                                           ; $6FB7: $00
    rrca                                          ; $6FB8: $0F
    nop                                           ; $6FB9: $00
    rrca                                          ; $6FBA: $0F
    nop                                           ; $6FBB: $00
    rlca                                          ; $6FBC: $07
    nop                                           ; $6FBD: $00
    inc bc                                        ; $6FBE: $03
    nop                                           ; $6FBF: $00
    cp $0C                                        ; $6FC0: $FE $0C
    cp $04                                        ; $6FC2: $FE $04
    db $FC                                        ; $6FC4: $FC
    nop                                           ; $6FC5: $00
    db $FC                                        ; $6FC6: $FC
    nop                                           ; $6FC7: $00
    db $FC                                        ; $6FC8: $FC
    nop                                           ; $6FC9: $00

jr_00C_6FCA:
    db $FC                                        ; $6FCA: $FC
    nop                                           ; $6FCB: $00
    ld hl, sp+$00                                 ; $6FCC: $F8 $00
    ldh a, [rP1]                                  ; $6FCE: $F0 $00
    rra                                           ; $6FD0: $1F
    nop                                           ; $6FD1: $00
    rlca                                          ; $6FD2: $07
    nop                                           ; $6FD3: $00
    rrca                                          ; $6FD4: $0F
    nop                                           ; $6FD5: $00
    rrca                                          ; $6FD6: $0F
    nop                                           ; $6FD7: $00

jr_00C_6FD8:
    rra                                           ; $6FD8: $1F
    nop                                           ; $6FD9: $00
    rra                                           ; $6FDA: $1F
    nop                                           ; $6FDB: $00
    rrca                                          ; $6FDC: $0F
    nop                                           ; $6FDD: $00
    rlca                                          ; $6FDE: $07
    nop                                           ; $6FDF: $00
    cp $0C                                        ; $6FE0: $FE $0C
    cp $0C                                        ; $6FE2: $FE $0C
    cp $04                                        ; $6FE4: $FE $04
    db $FC                                        ; $6FE6: $FC
    nop                                           ; $6FE7: $00
    db $FC                                        ; $6FE8: $FC
    nop                                           ; $6FE9: $00
    db $FC                                        ; $6FEA: $FC
    nop                                           ; $6FEB: $00
    ld hl, sp+$00                                 ; $6FEC: $F8 $00
    ldh a, [rP1]                                  ; $6FEE: $F0 $00
    nop                                           ; $6FF0: $00
    nop                                           ; $6FF1: $00
    nop                                           ; $6FF2: $00
    nop                                           ; $6FF3: $00
    nop                                           ; $6FF4: $00
    nop                                           ; $6FF5: $00
    rlca                                          ; $6FF6: $07
    nop                                           ; $6FF7: $00
    ld [$1007], sp                                ; $6FF8: $08 $07 $10
    rrca                                          ; $6FFB: $0F
    jr c, jr_00C_701D                             ; $6FFC: $38 $1F

    ld a, b                                       ; $6FFE: $78
    ccf                                           ; $6FFF: $3F
    nop                                           ; $7000: $00
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    nop                                           ; $7005: $00
    ret nz                                        ; $7006: $C0

    nop                                           ; $7007: $00
    jr nz, jr_00C_6FCA                            ; $7008: $20 $C0

    db $10                                        ; $700A: $10
    ldh [rNR23], a                                ; $700B: $E0 $18
    ldh a, [rNR23]                                ; $700D: $F0 $18
    ldh a, [rP1]                                  ; $700F: $F0 $00
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    nop                                           ; $7013: $00
    nop                                           ; $7014: $00
    nop                                           ; $7015: $00
    ldh [rP1], a                                  ; $7016: $E0 $00
    db $10                                        ; $7018: $10
    ldh [$0C], a                                  ; $7019: $E0 $0C
    ldh a, [$0E]                                  ; $701B: $F0 $0E

jr_00C_701D:
    db $F4                                        ; $701D: $F4
    rrca                                          ; $701E: $0F
    cp $78                                        ; $701F: $FE $78
    scf                                           ; $7021: $37
    scf                                           ; $7022: $37
    rra                                           ; $7023: $1F
    rra                                           ; $7024: $1F
    rrca                                          ; $7025: $0F
    inc a                                         ; $7026: $3C
    inc de                                        ; $7027: $13
    ccf                                           ; $7028: $3F
    ld bc, HeaderManufacturerCode                 ; $7029: $01 $3F $01
    ld a, a                                       ; $702C: $7F
    ld bc, $003F                                  ; $702D: $01 $3F $00
    db $10                                        ; $7030: $10
    ldh [$38], a                                  ; $7031: $E0 $38
    ldh a, [$3C]                                  ; $7033: $F0 $3C
    ld hl, sp+$1C                                 ; $7035: $F8 $1C
    add sp, -$18                                  ; $7037: $E8 $E8
    ret nz                                        ; $7039: $C0

    ldh a, [$C0]                                  ; $703A: $F0 $C0
    ldh a, [$C0]                                  ; $703C: $F0 $C0
    ldh a, [$C0]                                  ; $703E: $F0 $C0
    rrca                                          ; $7040: $0F
    cp $7E                                        ; $7041: $FE $7E
    db $F4                                        ; $7043: $F4
    ld a, h                                       ; $7044: $7C
    ld hl, sp+$1E                                 ; $7045: $F8 $1E
    db $E4                                        ; $7047: $E4
    db $F4                                        ; $7048: $F4
    ret nz                                        ; $7049: $C0

    ld hl, sp-$40                                 ; $704A: $F8 $C0
    ld hl, sp-$40                                 ; $704C: $F8 $C0
    ld hl, sp-$80                                 ; $704E: $F8 $80
    rra                                           ; $7050: $1F
    nop                                           ; $7051: $00
    rra                                           ; $7052: $1F
    nop                                           ; $7053: $00
    rra                                           ; $7054: $1F
    nop                                           ; $7055: $00
    rra                                           ; $7056: $1F
    nop                                           ; $7057: $00
    ccf                                           ; $7058: $3F
    nop                                           ; $7059: $00
    ccf                                           ; $705A: $3F
    ld b, $3F                                     ; $705B: $06 $3F
    ld e, $1F                                     ; $705D: $1E $1F
    nop                                           ; $705F: $00
    ldh [$C0], a                                  ; $7060: $E0 $C0
    ldh [$80], a                                  ; $7062: $E0 $80
    ldh a, [$C0]                                  ; $7064: $F0 $C0
    ldh a, [rP1]                                  ; $7066: $F0 $00
    ld hl, sp+$30                                 ; $7068: $F8 $30
    ld hl, sp-$10                                 ; $706A: $F8 $F0
    ldh a, [rP1]                                  ; $706C: $F0 $00
    nop                                           ; $706E: $00
    nop                                           ; $706F: $00
    ld hl, sp-$80                                 ; $7070: $F8 $80
    ld hl, sp-$80                                 ; $7072: $F8 $80
    ld hl, sp-$80                                 ; $7074: $F8 $80
    ld hl, sp+$00                                 ; $7076: $F8 $00
    ld hl, sp+$60                                 ; $7078: $F8 $60
    ld hl, sp-$10                                 ; $707A: $F8 $F0
    ld hl, sp+$70                                 ; $707C: $F8 $70
    ldh a, [rP1]                                  ; $707E: $F0 $00
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    ldh a, [rP1]                                  ; $7086: $F0 $00
    ld [$06F0], sp                                ; $7088: $08 $F0 $06
    ld hl, sp+$07                                 ; $708B: $F8 $07
    cp $FF                                        ; $708D: $FE $FF
    cp $00                                        ; $708F: $FE $00
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    nop                                           ; $7093: $00
    nop                                           ; $7094: $00
    nop                                           ; $7095: $00
    rlca                                          ; $7096: $07
    nop                                           ; $7097: $00
    ld [$1007], sp                                ; $7098: $08 $07 $10
    rrca                                          ; $709B: $0F
    db $10                                        ; $709C: $10
    rrca                                          ; $709D: $0F
    ccf                                           ; $709E: $3F
    rra                                           ; $709F: $1F
    nop                                           ; $70A0: $00
    nop                                           ; $70A1: $00
    nop                                           ; $70A2: $00
    nop                                           ; $70A3: $00
    nop                                           ; $70A4: $00
    nop                                           ; $70A5: $00
    ldh a, [rP1]                                  ; $70A6: $F0 $00
    ld [$68F0], sp                                ; $70A8: $08 $F0 $68
    ldh a, [$F8]                                  ; $70AB: $F0 $F8
    ldh a, [$BC]                                  ; $70AD: $F0 $BC
    ret nc                                        ; $70AF: $D0

    cp $FC                                        ; $70B0: $FE $FC
    ld a, [bc]                                    ; $70B2: $0A
    db $F4                                        ; $70B3: $F4
    db $FC                                        ; $70B4: $FC
    nop                                           ; $70B5: $00
    ld hl, sp+$00                                 ; $70B6: $F8 $00
    db $FC                                        ; $70B8: $FC
    nop                                           ; $70B9: $00
    db $FC                                        ; $70BA: $FC
    nop                                           ; $70BB: $00
    db $FC                                        ; $70BC: $FC
    nop                                           ; $70BD: $00
    ld hl, sp+$00                                 ; $70BE: $F8 $00
    ccf                                           ; $70C0: $3F
    rra                                           ; $70C1: $1F
    ld e, $0F                                     ; $70C2: $1E $0F
    rrca                                          ; $70C4: $0F
    nop                                           ; $70C5: $00
    rrca                                          ; $70C6: $0F
    nop                                           ; $70C7: $00
    rra                                           ; $70C8: $1F
    nop                                           ; $70C9: $00
    rra                                           ; $70CA: $1F
    nop                                           ; $70CB: $00
    rrca                                          ; $70CC: $0F
    nop                                           ; $70CD: $00
    rrca                                          ; $70CE: $0F
    nop                                           ; $70CF: $00
    ld c, [hl]                                    ; $70D0: $4E
    or h                                          ; $70D1: $B4
    ld l, $D4                                     ; $70D2: $2E $D4
    sbc h                                         ; $70D4: $9C
    ld l, b                                       ; $70D5: $68
    db $FC                                        ; $70D6: $FC
    ld [$08FC], sp                                ; $70D7: $08 $FC $08
    db $FC                                        ; $70DA: $FC
    nop                                           ; $70DB: $00
    db $FC                                        ; $70DC: $FC
    nop                                           ; $70DD: $00
    db $FC                                        ; $70DE: $FC
    nop                                           ; $70DF: $00
    ld hl, sp+$00                                 ; $70E0: $F8 $00
    ld hl, sp+$00                                 ; $70E2: $F8 $00
    ld hl, sp+$00                                 ; $70E4: $F8 $00
    ld hl, sp+$00                                 ; $70E6: $F8 $00
    ld hl, sp+$00                                 ; $70E8: $F8 $00
    db $FC                                        ; $70EA: $FC
    ld [$70FC], sp                                ; $70EB: $08 $FC $70
    ld hl, sp+$00                                 ; $70EE: $F8 $00
    rrca                                          ; $70F0: $0F
    nop                                           ; $70F1: $00
    rrca                                          ; $70F2: $0F
    nop                                           ; $70F3: $00
    rrca                                          ; $70F4: $0F
    nop                                           ; $70F5: $00
    rrca                                          ; $70F6: $0F
    nop                                           ; $70F7: $00
    rrca                                          ; $70F8: $0F
    nop                                           ; $70F9: $00
    rrca                                          ; $70FA: $0F
    ld b, $0F                                     ; $70FB: $06 $0F
    nop                                           ; $70FD: $00
    nop                                           ; $70FE: $00
    nop                                           ; $70FF: $00
    ld hl, sp+$00                                 ; $7100: $F8 $00
    ld hl, sp+$00                                 ; $7102: $F8 $00
    ld hl, sp+$00                                 ; $7104: $F8 $00
    ld hl, sp+$00                                 ; $7106: $F8 $00
    ld hl, sp+$00                                 ; $7108: $F8 $00
    db $FC                                        ; $710A: $FC
    ld [$70FC], sp                                ; $710B: $08 $FC $70
    ld hl, sp+$00                                 ; $710E: $F8 $00
    ccf                                           ; $7110: $3F
    inc bc                                        ; $7111: $03
    ccf                                           ; $7112: $3F
    ld bc, HeaderManufacturerCode                 ; $7113: $01 $3F $01
    ccf                                           ; $7116: $3F
    ld [bc], a                                    ; $7117: $02
    rra                                           ; $7118: $1F
    nop                                           ; $7119: $00
    rrca                                          ; $711A: $0F
    ld bc, $050F                                  ; $711B: $01 $0F $05
    rlca                                          ; $711E: $07
    nop                                           ; $711F: $00
    ldh a, [$80]                                  ; $7120: $F0 $80
    ldh a, [$80]                                  ; $7122: $F0 $80
    ldh a, [rP1]                                  ; $7124: $F0 $00
    ldh a, [rP1]                                  ; $7126: $F0 $00

jr_00C_7128:
    ldh [$C0], a                                  ; $7128: $E0 $C0
    ldh [$C0], a                                  ; $712A: $E0 $C0
    ret nz                                        ; $712C: $C0

    add b                                         ; $712D: $80
    ret nz                                        ; $712E: $C0

    nop                                           ; $712F: $00
    rrca                                          ; $7130: $0F
    nop                                           ; $7131: $00
    rrca                                          ; $7132: $0F
    nop                                           ; $7133: $00
    rrca                                          ; $7134: $0F
    nop                                           ; $7135: $00
    rrca                                          ; $7136: $0F
    nop                                           ; $7137: $00
    rrca                                          ; $7138: $0F
    nop                                           ; $7139: $00
    rlca                                          ; $713A: $07
    nop                                           ; $713B: $00
    rlca                                          ; $713C: $07
    inc bc                                        ; $713D: $03
    rlca                                          ; $713E: $07
    nop                                           ; $713F: $00
    ld hl, sp+$00                                 ; $7140: $F8 $00
    ld hl, sp+$00                                 ; $7142: $F8 $00
    ld hl, sp+$00                                 ; $7144: $F8 $00
    ld hl, sp+$00                                 ; $7146: $F8 $00
    ld hl, sp+$00                                 ; $7148: $F8 $00
    ldh a, [$60]                                  ; $714A: $F0 $60
    ldh a, [$60]                                  ; $714C: $F0 $60
    ldh a, [rP1]                                  ; $714E: $F0 $00
    nop                                           ; $7150: $00
    nop                                           ; $7151: $00
    nop                                           ; $7152: $00
    nop                                           ; $7153: $00
    rrca                                          ; $7154: $0F
    nop                                           ; $7155: $00
    db $10                                        ; $7156: $10
    rrca                                          ; $7157: $0F
    jr nz, jr_00C_7179                            ; $7158: $20 $1F

    ld l, $1F                                     ; $715A: $2E $1F
    ld a, a                                       ; $715C: $7F
    ccf                                           ; $715D: $3F
    halt                                          ; $715E: $76
    ccf                                           ; $715F: $3F
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
    ret nz                                        ; $7164: $C0

    nop                                           ; $7165: $00
    jr nz, jr_00C_7128                            ; $7166: $20 $C0

    db $10                                        ; $7168: $10
    ldh [rNR10], a                                ; $7169: $E0 $10
    ldh [rNR10], a                                ; $716B: $E0 $10
    ldh [$F0], a                                  ; $716D: $E0 $F0
    ldh [$35], a                                  ; $716F: $E0 $35
    dec bc                                        ; $7171: $0B
    add hl, bc                                    ; $7172: $09
    rlca                                          ; $7173: $07
    inc b                                         ; $7174: $04
    inc bc                                        ; $7175: $03
    rrca                                          ; $7176: $0F
    nop                                           ; $7177: $00
    rra                                           ; $7178: $1F

jr_00C_7179:
    nop                                           ; $7179: $00
    ccf                                           ; $717A: $3F
    nop                                           ; $717B: $00
    ccf                                           ; $717C: $3F
    nop                                           ; $717D: $00
    rra                                           ; $717E: $1F
    nop                                           ; $717F: $00
    ldh a, [$E0]                                  ; $7180: $F0 $E0
    db $10                                        ; $7182: $10

jr_00C_7183:
    ldh [$30], a                                  ; $7183: $E0 $30

jr_00C_7185:
    ldh [$F8], a                                  ; $7185: $E0 $F8
    jr nc, @-$06                                  ; $7187: $30 $F8

    jr nc, jr_00C_7183                            ; $7189: $30 $F8

    jr nc, jr_00C_7185                            ; $718B: $30 $F8

    db $10                                        ; $718D: $10
    ld hl, sp+$10                                 ; $718E: $F8 $10
    rra                                           ; $7190: $1F
    nop                                           ; $7191: $00
    rrca                                          ; $7192: $0F
    nop                                           ; $7193: $00
    rrca                                          ; $7194: $0F
    nop                                           ; $7195: $00
    rrca                                          ; $7196: $0F
    nop                                           ; $7197: $00
    rra                                           ; $7198: $1F
    nop                                           ; $7199: $00
    rra                                           ; $719A: $1F
    inc bc                                        ; $719B: $03
    rra                                           ; $719C: $1F
    rlca                                          ; $719D: $07
    rrca                                          ; $719E: $0F
    nop                                           ; $719F: $00
    ldh a, [rNR41]                                ; $71A0: $F0 $20
    ldh a, [rP1]                                  ; $71A2: $F0 $00
    ldh a, [rP1]                                  ; $71A4: $F0 $00
    ldh a, [rP1]                                  ; $71A6: $F0 $00
    ld hl, sp+$10                                 ; $71A8: $F8 $10
    ld hl, sp-$30                                 ; $71AA: $F8 $D0
    ld hl, sp-$40                                 ; $71AC: $F8 $C0
    ldh [rP1], a                                  ; $71AE: $E0 $00
    rra                                           ; $71B0: $1F
    nop                                           ; $71B1: $00
    rra                                           ; $71B2: $1F
    nop                                           ; $71B3: $00
    rrca                                          ; $71B4: $0F
    nop                                           ; $71B5: $00
    rra                                           ; $71B6: $1F
    nop                                           ; $71B7: $00
    ccf                                           ; $71B8: $3F
    db $10                                        ; $71B9: $10
    ccf                                           ; $71BA: $3F
    ld e, $3F                                     ; $71BB: $1E $3F
    rrca                                          ; $71BD: $0F
    ccf                                           ; $71BE: $3F

jr_00C_71BF:
    nop                                           ; $71BF: $00
    ld hl, sp+$30                                 ; $71C0: $F8 $30
    ldh a, [rP1]                                  ; $71C2: $F0 $00
    db $FC                                        ; $71C4: $FC
    nop                                           ; $71C5: $00
    cp $0C                                        ; $71C6: $FE $0C
    cp $1C                                        ; $71C8: $FE $1C
    db $FC                                        ; $71CA: $FC
    jr @-$02                                      ; $71CB: $18 $FC

    jr nz, jr_00C_71BF                            ; $71CD: $20 $F0

    nop                                           ; $71CF: $00
    rra                                           ; $71D0: $1F
    nop                                           ; $71D1: $00
    rra                                           ; $71D2: $1F
    nop                                           ; $71D3: $00
    rrca                                          ; $71D4: $0F
    nop                                           ; $71D5: $00
    rra                                           ; $71D6: $1F
    nop                                           ; $71D7: $00
    ccf                                           ; $71D8: $3F
    db $10                                        ; $71D9: $10
    ccf                                           ; $71DA: $3F
    inc e                                         ; $71DB: $1C
    ccf                                           ; $71DC: $3F
    ld c, $3F                                     ; $71DD: $0E $3F
    nop                                           ; $71DF: $00
    ld hl, sp+$30                                 ; $71E0: $F8 $30
    ldh a, [rP1]                                  ; $71E2: $F0 $00
    db $FC                                        ; $71E4: $FC
    nop                                           ; $71E5: $00
    cp $0C                                        ; $71E6: $FE $0C
    cp $1C                                        ; $71E8: $FE $1C
    db $FC                                        ; $71EA: $FC
    jr c, @-$02                                   ; $71EB: $38 $FC

    ld h, b                                       ; $71ED: $60
    ldh a, [rP1]                                  ; $71EE: $F0 $00
    inc bc                                        ; $71F0: $03
    nop                                           ; $71F1: $00
    rrca                                          ; $71F2: $0F
    inc bc                                        ; $71F3: $03
    dec de                                        ; $71F4: $1B
    dec c                                         ; $71F5: $0D
    ld l, $1F                                     ; $71F6: $2E $1F
    ld l, a                                       ; $71F8: $6F
    ccf                                           ; $71F9: $3F
    adc a                                         ; $71FA: $8F
    ld a, a                                       ; $71FB: $7F
    rst $00                                       ; $71FC: $C7
    ccf                                           ; $71FD: $3F
    db $E3                                        ; $71FE: $E3
    rra                                           ; $71FF: $1F
    ldh [rP1], a                                  ; $7200: $E0 $00
    ldh a, [$E0]                                  ; $7202: $F0 $E0
    ld hl, sp-$10                                 ; $7204: $F8 $F0
    db $F4                                        ; $7206: $F4
    add sp, $7A                                   ; $7207: $E8 $7A
    cp h                                          ; $7209: $BC
    cp [hl]                                       ; $720A: $BE
    db $FC                                        ; $720B: $FC
    sbc l                                         ; $720C: $9D
    cp $1F                                        ; $720D: $FE $1F
    cp $B0                                        ; $720F: $FE $B0
    ld c, a                                       ; $7211: $4F
    ldh [$1F], a                                  ; $7212: $E0 $1F
    or b                                          ; $7214: $B0
    ld c, a                                       ; $7215: $4F
    ld a, h                                       ; $7216: $7C
    inc bc                                        ; $7217: $03
    ld [hl], a                                    ; $7218: $77
    ld [$0679], sp                                ; $7219: $08 $79 $06
    jr c, jr_00C_7225                             ; $721C: $38 $07

    rra                                           ; $721E: $1F
    nop                                           ; $721F: $00
    rla                                           ; $7220: $17
    db $FC                                        ; $7221: $FC
    dec b                                         ; $7222: $05
    cp $47                                        ; $7223: $FE $47

jr_00C_7225:
    cp $03                                        ; $7225: $FE $03

jr_00C_7227:
    cp $13                                        ; $7227: $FE $13
    cp $86                                        ; $7229: $FE $86
    ld a, h                                       ; $722B: $7C
    db $E4                                        ; $722C: $E4
    jr jr_00C_7227                                ; $722D: $18 $F8

    nop                                           ; $722F: $00
    rlca                                          ; $7230: $07
    nop                                           ; $7231: $00
    jr c, jr_00C_723B                             ; $7232: $38 $07

    ld h, b                                       ; $7234: $60
    rra                                           ; $7235: $1F
    pop bc                                        ; $7236: $C1
    ccf                                           ; $7237: $3F
    jp $973F                                      ; $7238: $C3 $3F $97


jr_00C_723B:
    ld l, a                                       ; $723B: $6F
    sub a                                         ; $723C: $97
    ld l, a                                       ; $723D: $6F
    cp [hl]                                       ; $723E: $BE
    ld c, a                                       ; $723F: $4F
    ldh [rP1], a                                  ; $7240: $E0 $00
    ld d, b                                       ; $7242: $50
    ldh [$F8], a                                  ; $7243: $E0 $F8
    ldh a, [$FC]                                  ; $7245: $F0 $FC
    ld hl, sp-$02                                 ; $7247: $F8 $FE
    db $FC                                        ; $7249: $FC
    ld a, [$FFFC]                                 ; $724A: $FA $FC $FF
    ld a, [$FEF7]                                 ; $724D: $FA $F7 $FE
    ldh a, [rIF]                                  ; $7250: $F0 $0F
    db $E4                                        ; $7252: $E4
    rra                                           ; $7253: $1F
    ldh a, [rIF]                                  ; $7254: $F0 $0F
    pop af                                        ; $7256: $F1
    ld c, $FF                                     ; $7257: $0E $FF
    nop                                           ; $7259: $00
    ld a, a                                       ; $725A: $7F
    ld bc, $023D                                  ; $725B: $01 $3D $02
    rra                                           ; $725E: $1F
    nop                                           ; $725F: $00
    ld l, a                                       ; $7260: $6F
    cp $1F                                        ; $7261: $FE $1F
    xor $3B                                       ; $7263: $EE $3B
    cp $EE                                        ; $7265: $FE $EE
    inc [hl]                                      ; $7267: $34
    sub h                                         ; $7268: $94
    ld a, b                                       ; $7269: $78
    jr z, @-$0E                                   ; $726A: $28 $F0

    jr nc, @-$3E                                  ; $726C: $30 $C0

    ret nz                                        ; $726E: $C0

    nop                                           ; $726F: $00
    rra                                           ; $7270: $1F
    nop                                           ; $7271: $00
    ccf                                           ; $7272: $3F
    rlca                                          ; $7273: $07
    ld h, a                                       ; $7274: $67
    add hl, de                                    ; $7275: $19
    pop hl                                        ; $7276: $E1
    ld e, $F0                                     ; $7277: $1E $F0
    rrca                                          ; $7279: $0F
    ld a, [c]                                     ; $727A: $F2
    rrca                                          ; $727B: $0F
    or b                                          ; $727C: $B0
    ld c, a                                       ; $727D: $4F
    ld hl, sp+$07                                 ; $727E: $F8 $07
    ld hl, sp+$00                                 ; $7280: $F8 $00
    db $FC                                        ; $7282: $FC
    ld hl, sp-$02                                 ; $7283: $F8 $FE
    db $FC                                        ; $7285: $FC
    cp $FC                                        ; $7286: $FE $FC
    adc d                                         ; $7288: $8A
    db $FC                                        ; $7289: $FC
    pop hl                                        ; $728A: $E1
    cp $71                                        ; $728B: $FE $71
    cp $39                                        ; $728D: $FE $39
    cp $B8                                        ; $728F: $FE $B8
    ld b, a                                       ; $7291: $47
    cp c                                          ; $7292: $B9
    ld b, [hl]                                    ; $7293: $46
    ld a, l                                       ; $7294: $7D
    ld [bc], a                                    ; $7295: $02
    ld h, a                                       ; $7296: $67
    jr @+$25                                      ; $7297: $18 $23

    inc e                                         ; $7299: $1C
    dec e                                         ; $729A: $1D
    ld [bc], a                                    ; $729B: $02
    rrca                                          ; $729C: $0F

jr_00C_729D:
    nop                                           ; $729D: $00
    rlca                                          ; $729E: $07
    nop                                           ; $729F: $00
    db $FD                                        ; $72A0: $FD
    ld a, [hl]                                    ; $72A1: $7E
    cp a                                          ; $72A2: $BF
    ld a, [hl]                                    ; $72A3: $7E
    cp l                                          ; $72A4: $BD
    ld a, [hl]                                    ; $72A5: $7E
    cp d                                          ; $72A6: $BA
    ld a, h                                       ; $72A7: $7C
    or h                                          ; $72A8: $B4
    ld a, b                                       ; $72A9: $78
    ret c                                         ; $72AA: $D8

    jr nc, jr_00C_729D                            ; $72AB: $30 $F0

    nop                                           ; $72AD: $00
    ret nz                                        ; $72AE: $C0

    nop                                           ; $72AF: $00
    nop                                           ; $72B0: $00
    nop                                           ; $72B1: $00
    nop                                           ; $72B2: $00
    ld b, b                                       ; $72B3: $40
    jr nz, jr_00C_72DA                            ; $72B4: $20 $24

    jr jr_00C_72F0                                ; $72B6: $18 $38

    inc d                                         ; $72B8: $14
    inc e                                         ; $72B9: $1C
    nop                                           ; $72BA: $00
    jr nz, jr_00C_72BD                            ; $72BB: $20 $00

jr_00C_72BD:
    inc b                                         ; $72BD: $04
    nop                                           ; $72BE: $00
    nop                                           ; $72BF: $00
    nop                                           ; $72C0: $00
    nop                                           ; $72C1: $00
    nop                                           ; $72C2: $00
    nop                                           ; $72C3: $00
    db $10                                        ; $72C4: $10
    db $10                                        ; $72C5: $10
    ld [bc], a                                    ; $72C6: $02
    ld a, [bc]                                    ; $72C7: $0A
    inc c                                         ; $72C8: $0C
    inc e                                         ; $72C9: $1C
    ld b, b                                       ; $72CA: $40
    ld b, d                                       ; $72CB: $42
    nop                                           ; $72CC: $00
    ld [rRAMG], sp                                ; $72CD: $08 $00 $00
    nop                                           ; $72D0: $00
    nop                                           ; $72D1: $00
    ld b, b                                       ; $72D2: $40
    ld b, b                                       ; $72D3: $40
    nop                                           ; $72D4: $00
    inc d                                         ; $72D5: $14
    db $10                                        ; $72D6: $10
    add hl, de                                    ; $72D7: $19
    inc c                                         ; $72D8: $0C
    inc c                                         ; $72D9: $0C

jr_00C_72DA:
    ld [$0028], sp                                ; $72DA: $08 $28 $00
    nop                                           ; $72DD: $00
    nop                                           ; $72DE: $00
    nop                                           ; $72DF: $00
    nop                                           ; $72E0: $00
    nop                                           ; $72E1: $00

jr_00C_72E2:
    nop                                           ; $72E2: $00
    nop                                           ; $72E3: $00
    nop                                           ; $72E4: $00
    nop                                           ; $72E5: $00
    ld b, b                                       ; $72E6: $40
    ld b, b                                       ; $72E7: $40
    nop                                           ; $72E8: $00
    nop                                           ; $72E9: $00
    ld b, b                                       ; $72EA: $40
    ld b, b                                       ; $72EB: $40
    ld b, b                                       ; $72EC: $40
    ld h, b                                       ; $72ED: $60
    nop                                           ; $72EE: $00
    ld c, b                                       ; $72EF: $48

jr_00C_72F0:
    nop                                           ; $72F0: $00
    inc b                                         ; $72F1: $04
    ld bc, $0001                                  ; $72F2: $01 $01 $00
    ld bc, $3312                                  ; $72F5: $01 $12 $33
    ld b, l                                       ; $72F8: $45
    ld b, l                                       ; $72F9: $45
    add hl, hl                                    ; $72FA: $29
    add hl, sp                                    ; $72FB: $39
    inc bc                                        ; $72FC: $03
    add e                                         ; $72FD: $83
    nop                                           ; $72FE: $00
    nop                                           ; $72FF: $00
    jr nz, jr_00C_72E2                            ; $7300: $20 $E0

    nop                                           ; $7302: $00
    ldh a, [$80]                                  ; $7303: $F0 $80
    ldh [rNR10], a                                ; $7305: $E0 $10
    ldh a, [rNR23]                                ; $7307: $F0 $18
    ld a, [$F939]                                 ; $7309: $FA $39 $F9
    ld h, $A7                                     ; $730C: $26 $A7
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
    ld b, b                                       ; $7318: $40
    ld b, b                                       ; $7319: $40
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
    ld bc, $0101                                  ; $7326: $01 $01 $01
    ld bc, $0101                                  ; $7329: $01 $01 $01
    nop                                           ; $732C: $00
    ld [bc], a                                    ; $732D: $02
    ld bc, $4001                                  ; $732E: $01 $01 $40
    ld b, b                                       ; $7331: $40
    add b                                         ; $7332: $80
    ret nc                                        ; $7333: $D0

    add b                                         ; $7334: $80
    ret nz                                        ; $7335: $C0

    add h                                         ; $7336: $84
    call nz, Call_00C_6464                        ; $7337: $C4 $64 $64
    and [hl]                                      ; $733A: $A6
    and $9E                                       ; $733B: $E6 $9E
    cp $0C                                        ; $733D: $FE $0C
    call c, $0707                                 ; $733F: $DC $07 $07
    ld [$0F0F], sp                                ; $7342: $08 $0F $0F
    rrca                                          ; $7345: $0F
    dec c                                         ; $7346: $0D
    rrca                                          ; $7347: $0F
    db $10                                        ; $7348: $10
    ld d, l                                       ; $7349: $55
    ld e, $1F                                     ; $734A: $1E $1F
    jp $00C3                                      ; $734C: $C3 $C3 $00


    nop                                           ; $734F: $00
    ld l, h                                       ; $7350: $6C
    db $FC                                        ; $7351: $FC
    jr z, @-$14                                   ; $7352: $28 $EA

    inc e                                         ; $7354: $1C
    db $FC                                        ; $7355: $FC
    inc c                                         ; $7356: $0C
    db $FC                                        ; $7357: $FC
    jr @-$05                                      ; $7358: $18 $F9

    sbc h                                         ; $735A: $9C
    cp $29                                        ; $735B: $FE $29
    xor c                                         ; $735D: $A9
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
    ld b, b                                       ; $736A: $40
    ld b, b                                       ; $736B: $40
    add b                                         ; $736C: $80
    add b                                         ; $736D: $80
    nop                                           ; $736E: $00
    nop                                           ; $736F: $00
    nop                                           ; $7370: $00
    nop                                           ; $7371: $00
    jr nc, jr_00C_73AC                            ; $7372: $30 $38

    pop bc                                        ; $7374: $C1
    pop bc                                        ; $7375: $C1
    ld b, $07                                     ; $7376: $06 $07
    nop                                           ; $7378: $00
    add b                                         ; $7379: $80
    inc de                                        ; $737A: $13
    rla                                           ; $737B: $17
    nop                                           ; $737C: $00
    nop                                           ; $737D: $00
    nop                                           ; $737E: $00
    nop                                           ; $737F: $00
    nop                                           ; $7380: $00
    nop                                           ; $7381: $00
    ld b, [hl]                                    ; $7382: $46
    add $80                                       ; $7383: $C6 $80
    ldh a, [$4C]                                  ; $7385: $F0 $4C
    call z, Call_00C_7838                         ; $7387: $CC $38 $78
    adc d                                         ; $738A: $8A
    adc d                                         ; $738B: $8A
    nop                                           ; $738C: $00
    nop                                           ; $738D: $00
    nop                                           ; $738E: $00
    nop                                           ; $738F: $00
    nop                                           ; $7390: $00
    nop                                           ; $7391: $00
    nop                                           ; $7392: $00
    nop                                           ; $7393: $00
    ret nz                                        ; $7394: $C0

    ldh [rNR10], a                                ; $7395: $E0 $10
    db $10                                        ; $7397: $10
    jr nz, @+$22                                  ; $7398: $20 $20

    add b                                         ; $739A: $80
    ret nz                                        ; $739B: $C0

    nop                                           ; $739C: $00
    nop                                           ; $739D: $00
    nop                                           ; $739E: $00
    nop                                           ; $739F: $00
    rlca                                          ; $73A0: $07
    nop                                           ; $73A1: $00
    rrca                                          ; $73A2: $0F
    rlca                                          ; $73A3: $07
    rra                                           ; $73A4: $1F
    rrca                                          ; $73A5: $0F
    ccf                                           ; $73A6: $3F
    rra                                           ; $73A7: $1F
    ccf                                           ; $73A8: $3F
    ld e, $3F                                     ; $73A9: $1E $3F
    db $10                                        ; $73AB: $10

jr_00C_73AC:
    rra                                           ; $73AC: $1F
    nop                                           ; $73AD: $00
    ld a, [hl+]                                   ; $73AE: $2A
    dec d                                         ; $73AF: $15
    ret nz                                        ; $73B0: $C0

    nop                                           ; $73B1: $00
    ldh a, [$C0]                                  ; $73B2: $F0 $C0
    ld hl, sp-$10                                 ; $73B4: $F8 $F0
    db $FD                                        ; $73B6: $FD
    ld a, b                                       ; $73B7: $78
    db $FD                                        ; $73B8: $FD
    ld hl, sp-$04                                 ; $73B9: $F8 $FC
    ld [$00F8], sp                                ; $73BB: $08 $F8 $00
    ld d, h                                       ; $73BE: $54
    xor b                                         ; $73BF: $A8
    nop                                           ; $73C0: $00
    nop                                           ; $73C1: $00
    ld b, $00                                     ; $73C2: $06 $00
    push bc                                       ; $73C4: $C5
    ld [bc], a                                    ; $73C5: $02
    and l                                         ; $73C6: $A5
    jp $E355                                      ; $73C7: $C3 $55 $E3


    or l                                          ; $73CA: $B5
    ld h, e                                       ; $73CB: $63
    ld a, l                                       ; $73CC: $7D
    inc bc                                        ; $73CD: $03

jr_00C_73CE:
    dec e                                         ; $73CE: $1D
    inc bc                                        ; $73CF: $03

jr_00C_73D0:
    rlca                                          ; $73D0: $07
    nop                                           ; $73D1: $00
    rrca                                          ; $73D2: $0F
    rlca                                          ; $73D3: $07
    rra                                           ; $73D4: $1F
    rrca                                          ; $73D5: $0F
    ccf                                           ; $73D6: $3F
    rra                                           ; $73D7: $1F
    ccf                                           ; $73D8: $3F
    inc e                                         ; $73D9: $1C
    ld a, a                                       ; $73DA: $7F
    jr nc, jr_00C_7452                            ; $73DB: $30 $75

    ld a, [hl+]                                   ; $73DD: $2A
    ld a, c                                       ; $73DE: $79
    ld [hl], $E0                                  ; $73DF: $36 $E0
    nop                                           ; $73E1: $00
    ldh a, [$E0]                                  ; $73E2: $F0 $E0
    ld hl, sp-$50                                 ; $73E4: $F8 $B0
    ld sp, hl                                     ; $73E6: $F9
    ret nc                                        ; $73E7: $D0

    pop af                                        ; $73E8: $F1
    nop                                           ; $73E9: $00
    di                                            ; $73EA: $F3
    ld bc, $C133                                  ; $73EB: $01 $33 $C1
    scf                                           ; $73EE: $37
    pop bc                                        ; $73EF: $C1
    nop                                           ; $73F0: $00
    nop                                           ; $73F1: $00
    ld b, $00                                     ; $73F2: $06 $00
    push bc                                       ; $73F4: $C5
    ld [bc], a                                    ; $73F5: $02
    and l                                         ; $73F6: $A5
    jp $E355                                      ; $73F7: $C3 $55 $E3


    or l                                          ; $73FA: $B5
    ld h, e                                       ; $73FB: $63
    db $FD                                        ; $73FC: $FD
    inc bc                                        ; $73FD: $03
    sbc l                                         ; $73FE: $9D
    inc bc                                        ; $73FF: $03
    ldh [rP1], a                                  ; $7400: $E0 $00
    ldh a, [$E0]                                  ; $7402: $F0 $E0
    ld hl, sp-$50                                 ; $7404: $F8 $B0
    ld sp, hl                                     ; $7406: $F9
    ret nc                                        ; $7407: $D0

    pop af                                        ; $7408: $F1
    nop                                           ; $7409: $00
    ldh a, [rP1]                                  ; $740A: $F0 $00
    jr nc, jr_00C_73CE                            ; $740C: $30 $C0

    jr nc, jr_00C_73D0                            ; $740E: $30 $C0

    ld bc, $0700                                  ; $7410: $01 $00 $07
    ld bc, $070F                                  ; $7413: $01 $0F $07
    rra                                           ; $7416: $1F
    rrca                                          ; $7417: $0F
    rra                                           ; $7418: $1F
    rrca                                          ; $7419: $0F
    rra                                           ; $741A: $1F
    rrca                                          ; $741B: $0F
    rra                                           ; $741C: $1F
    ld c, $0E                                     ; $741D: $0E $0E
    dec b                                         ; $741F: $05
    ldh a, [rP1]                                  ; $7420: $F0 $00
    ld hl, sp-$10                                 ; $7422: $F8 $F0
    db $FC                                        ; $7424: $FC
    ld hl, sp-$01                                 ; $7425: $F8 $FF
    db $FC                                        ; $7427: $FC
    rst $38                                       ; $7428: $FF
    call nz, $80FC                                ; $7429: $C4 $FC $80
    xor b                                         ; $742C: $A8
    ret nc                                        ; $742D: $D0

    xor b                                         ; $742E: $A8
    ld d, b                                       ; $742F: $50
    nop                                           ; $7430: $00
    nop                                           ; $7431: $00
    ld b, $00                                     ; $7432: $06 $00
    push bc                                       ; $7434: $C5
    ld [bc], a                                    ; $7435: $02
    and l                                         ; $7436: $A5
    jp $E355                                      ; $7437: $C3 $55 $E3


    or l                                          ; $743A: $B5
    ld h, e                                       ; $743B: $63
    ld a, l                                       ; $743C: $7D
    inc bc                                        ; $743D: $03
    dec e                                         ; $743E: $1D
    inc bc                                        ; $743F: $03
    nop                                           ; $7440: $00
    nop                                           ; $7441: $00
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    nop                                           ; $7444: $00
    nop                                           ; $7445: $00
    add b                                         ; $7446: $80
    nop                                           ; $7447: $00
    ret nz                                        ; $7448: $C0

    add b                                         ; $7449: $80
    ldh [$C0], a                                  ; $744A: $E0 $C0
    ldh a, [$E0]                                  ; $744C: $F0 $E0
    ld hl, sp-$10                                 ; $744E: $F8 $F0
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00

jr_00C_7452:
    ld b, $00                                     ; $7452: $06 $00
    push bc                                       ; $7454: $C5
    ld [bc], a                                    ; $7455: $02
    and l                                         ; $7456: $A5
    jp $E355                                      ; $7457: $C3 $55 $E3


    or l                                          ; $745A: $B5
    ld h, e                                       ; $745B: $63
    ld a, l                                       ; $745C: $7D
    inc bc                                        ; $745D: $03
    ld a, l                                       ; $745E: $7D
    inc hl                                        ; $745F: $23
    ldh a, [rP1]                                  ; $7460: $F0 $00
    ld hl, sp-$10                                 ; $7462: $F8 $F0
    db $FC                                        ; $7464: $FC
    ld hl, sp-$02                                 ; $7465: $F8 $FE
    db $FC                                        ; $7467: $FC
    cp $C4                                        ; $7468: $FE $C4
    db $FD                                        ; $746A: $FD
    add b                                         ; $746B: $80
    xor c                                         ; $746C: $A9
    ret nc                                        ; $746D: $D0

    xor e                                         ; $746E: $AB
    ld d, b                                       ; $746F: $50
    nop                                           ; $7470: $00
    nop                                           ; $7471: $00
    ld e, $00                                     ; $7472: $1E $00
    dec a                                         ; $7474: $3D
    ld [de], a                                    ; $7475: $12
    ld a, l                                       ; $7476: $7D
    dec hl                                        ; $7477: $2B
    db $FD                                        ; $7478: $FD
    ld d, e                                       ; $7479: $53
    dec a                                         ; $747A: $3D
    db $E3                                        ; $747B: $E3
    dec a                                         ; $747C: $3D
    jp $03FD                                      ; $747D: $C3 $FD $03


    ldh a, [rP1]                                  ; $7480: $F0 $00
    ld hl, sp-$10                                 ; $7482: $F8 $F0
    db $FC                                        ; $7484: $FC
    ld hl, sp-$02                                 ; $7485: $F8 $FE
    db $FC                                        ; $7487: $FC
    cp $C4                                        ; $7488: $FE $C4
    db $FC                                        ; $748A: $FC
    add b                                         ; $748B: $80
    xor b                                         ; $748C: $A8
    ret nc                                        ; $748D: $D0

    xor b                                         ; $748E: $A8
    ld d, b                                       ; $748F: $50
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00
    nop                                           ; $7493: $00
    nop                                           ; $7494: $00
    nop                                           ; $7495: $00
    nop                                           ; $7496: $00
    nop                                           ; $7497: $00
    jr nc, jr_00C_749A                            ; $7498: $30 $00

jr_00C_749A:
    ld l, h                                       ; $749A: $6C
    db $10                                        ; $749B: $10
    rst $28                                       ; $749C: $EF
    inc e                                         ; $749D: $1C
    rst $28                                       ; $749E: $EF
    ld e, a                                       ; $749F: $5F
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
    ret nz                                        ; $74AE: $C0

    nop                                           ; $74AF: $00
    ret nz                                        ; $74B0: $C0

    nop                                           ; $74B1: $00
    ldh a, [$C0]                                  ; $74B2: $F0 $C0
    ld hl, sp-$10                                 ; $74B4: $F8 $F0
    db $FD                                        ; $74B6: $FD
    ld a, b                                       ; $74B7: $78
    db $FD                                        ; $74B8: $FD
    ld hl, sp-$01                                 ; $74B9: $F8 $FF
    add hl, bc                                    ; $74BB: $09
    ei                                            ; $74BC: $FB
    ld bc, $A957                                  ; $74BD: $01 $57 $A9
    nop                                           ; $74C0: $00
    nop                                           ; $74C1: $00
    ld b, $00                                     ; $74C2: $06 $00

jr_00C_74C4:
    push bc                                       ; $74C4: $C5
    ld [bc], a                                    ; $74C5: $02
    and l                                         ; $74C6: $A5
    jp $E355                                      ; $74C7: $C3 $55 $E3


    or l                                          ; $74CA: $B5
    ld h, e                                       ; $74CB: $63
    db $FD                                        ; $74CC: $FD
    inc bc                                        ; $74CD: $03
    sbc l                                         ; $74CE: $9D
    inc bc                                        ; $74CF: $03
    ld bc, $0700                                  ; $74D0: $01 $00 $07
    ld bc, $070F                                  ; $74D3: $01 $0F $07
    rra                                           ; $74D6: $1F
    rrca                                          ; $74D7: $0F
    rra                                           ; $74D8: $1F
    rrca                                          ; $74D9: $0F
    rra                                           ; $74DA: $1F
    rrca                                          ; $74DB: $0F
    rra                                           ; $74DC: $1F
    ld c, $0E                                     ; $74DD: $0E $0E
    dec b                                         ; $74DF: $05
    ld a, [de]                                    ; $74E0: $1A
    dec b                                         ; $74E1: $05
    inc e                                         ; $74E2: $1C
    dec bc                                        ; $74E3: $0B
    rra                                           ; $74E4: $1F
    nop                                           ; $74E5: $00
    ccf                                           ; $74E6: $3F
    ld b, $3F                                     ; $74E7: $06 $3F
    inc bc                                        ; $74E9: $03
    ccf                                           ; $74EA: $3F
    inc bc                                        ; $74EB: $03
    ld h, a                                       ; $74EC: $67
    add hl, de                                    ; $74ED: $19
    ld h, a                                       ; $74EE: $67
    add hl, sp                                    ; $74EF: $39
    ld e, b                                       ; $74F0: $58
    and b                                         ; $74F1: $A0
    jr c, jr_00C_74C4                             ; $74F2: $38 $D0

    ld hl, sp+$00                                 ; $74F4: $F8 $00
    db $FC                                        ; $74F6: $FC
    ld h, b                                       ; $74F7: $60
    db $FC                                        ; $74F8: $FC
    ret nz                                        ; $74F9: $C0

    db $FC                                        ; $74FA: $FC
    ret nz                                        ; $74FB: $C0

    rst $20                                       ; $74FC: $E7
    sbc b                                         ; $74FD: $98
    rst $20                                       ; $74FE: $E7
    sbc h                                         ; $74FF: $9C
    dec c                                         ; $7500: $0D
    inc bc                                        ; $7501: $03
    ld e, $01                                     ; $7502: $1E $01
    rst $38                                       ; $7504: $FF
    nop                                           ; $7505: $00
    rst $38                                       ; $7506: $FF
    ld a, $E0                                     ; $7507: $3E $E0
    ccf                                           ; $7509: $3F
    ldh [$3F], a                                  ; $750A: $E0 $3F
    ldh [$3F], a                                  ; $750C: $E0 $3F
    ldh [$3F], a                                  ; $750E: $E0 $3F
    ld a, h                                       ; $7510: $7C
    inc hl                                        ; $7511: $23
    ccf                                           ; $7512: $3F
    nop                                           ; $7513: $00
    rra                                           ; $7514: $1F
    ld [$063F], sp                                ; $7515: $08 $3F $06
    ccf                                           ; $7518: $3F
    inc bc                                        ; $7519: $03
    ccf                                           ; $751A: $3F
    inc bc                                        ; $751B: $03
    ld h, a                                       ; $751C: $67
    add hl, de                                    ; $751D: $19
    ld h, a                                       ; $751E: $67
    add hl, sp                                    ; $751F: $39
    add hl, de                                    ; $7520: $19
    rst $20                                       ; $7521: $E7
    ld sp, hl                                     ; $7522: $F9
    ld b, $FF                                     ; $7523: $06 $FF
    db $10                                        ; $7525: $10
    cp $60                                        ; $7526: $FE $60
    cp $C0                                        ; $7528: $FE $C0
    cp $C0                                        ; $752A: $FE $C0
    db $FD                                        ; $752C: $FD
    add b                                         ; $752D: $80
    ld sp, hl                                     ; $752E: $F9
    add b                                         ; $752F: $80
    adc l                                         ; $7530: $8D
    inc bc                                        ; $7531: $03
    ld e, $01                                     ; $7532: $1E $01
    rst $38                                       ; $7534: $FF
    nop                                           ; $7535: $00
    rst $38                                       ; $7536: $FF
    ld a, $E0                                     ; $7537: $3E $E0
    ccf                                           ; $7539: $3F
    ldh [$3F], a                                  ; $753A: $E0 $3F
    ldh [$3F], a                                  ; $753C: $E0 $3F
    ldh [$3F], a                                  ; $753E: $E0 $3F
    db $10                                        ; $7540: $10
    ldh [$F0], a                                  ; $7541: $E0 $F0
    nop                                           ; $7543: $00
    ld hl, sp+$10                                 ; $7544: $F8 $10
    db $FC                                        ; $7546: $FC
    ld h, b                                       ; $7547: $60
    rst $38                                       ; $7548: $FF
    ret nz                                        ; $7549: $C0

    cp $C1                                        ; $754A: $FE $C1
    cp $81                                        ; $754C: $FE $81
    rst $30                                       ; $754E: $F7
    add b                                         ; $754F: $80
    dec c                                         ; $7550: $0D
    inc bc                                        ; $7551: $03
    ld e, $01                                     ; $7552: $1E $01
    rst $38                                       ; $7554: $FF
    nop                                           ; $7555: $00
    rst $38                                       ; $7556: $FF
    ld a, $E0                                     ; $7557: $3E $E0
    ccf                                           ; $7559: $3F
    ld h, b                                       ; $755A: $60
    cp a                                          ; $755B: $BF
    ld h, b                                       ; $755C: $60
    cp a                                          ; $755D: $BF
    ldh [$3F], a                                  ; $755E: $E0 $3F
    inc a                                         ; $7560: $3C
    inc bc                                        ; $7561: $03
    rra                                           ; $7562: $1F
    nop                                           ; $7563: $00
    ccf                                           ; $7564: $3F
    inc b                                         ; $7565: $04
    ld a, a                                       ; $7566: $7F
    inc bc                                        ; $7567: $03
    ld a, a                                       ; $7568: $7F
    ld bc, $017F                                  ; $7569: $01 $7F $01
    ld c, a                                       ; $756C: $4F
    ld sp, $718F                                  ; $756D: $31 $8F $71
    db $10                                        ; $7570: $10
    ldh [$E0], a                                  ; $7571: $E0 $E0
    nop                                           ; $7573: $00
    ldh a, [rLCDC]                                ; $7574: $F0 $40
    ldh a, [$C0]                                  ; $7576: $F0 $C0
    ldh a, [$80]                                  ; $7578: $F0 $80
    ld hl, sp-$80                                 ; $757A: $F8 $80
    db $ED                                        ; $757C: $ED
    sub b                                         ; $757D: $90
    db $ED                                        ; $757E: $ED
    sbc b                                         ; $757F: $98
    rra                                           ; $7580: $1F
    ld c, $0F                                     ; $7581: $0E $0F
    inc b                                         ; $7583: $04
    rrca                                          ; $7584: $0F
    nop                                           ; $7585: $00
    rlca                                          ; $7586: $07
    ld bc, $0207                                  ; $7587: $01 $07 $02
    rlca                                          ; $758A: $07
    nop                                           ; $758B: $00
    inc bc                                        ; $758C: $03
    nop                                           ; $758D: $00
    inc bc                                        ; $758E: $03
    nop                                           ; $758F: $00
    ld [$F0F0], sp                                ; $7590: $08 $F0 $F0
    nop                                           ; $7593: $00
    ldh [$C0], a                                  ; $7594: $E0 $C0
    ldh a, [rNR41]                                ; $7596: $F0 $20
    ldh a, [rNR41]                                ; $7598: $F0 $20
    ldh a, [rP1]                                  ; $759A: $F0 $00
    ld sp, $31C0                                  ; $759C: $31 $C0 $31
    ret nz                                        ; $759F: $C0

    ld [$F1F0], sp                                ; $75A0: $08 $F0 $F1
    nop                                           ; $75A3: $00
    ld [c], a                                     ; $75A4: $E2
    pop bc                                        ; $75A5: $C1
    cp $21                                        ; $75A6: $FE $21
    rst $38                                       ; $75A8: $FF
    nop                                           ; $75A9: $00
    cp $00                                        ; $75AA: $FE $00
    ld sp, hl                                     ; $75AC: $F9
    nop                                           ; $75AD: $00
    pop af                                        ; $75AE: $F1
    nop                                           ; $75AF: $00
    db $FD                                        ; $75B0: $FD
    ld d, e                                       ; $75B1: $53
    cp $A1                                        ; $75B2: $FE $A1
    ld a, a                                       ; $75B4: $7F
    ret nz                                        ; $75B5: $C0

    ld a, a                                       ; $75B6: $7F
    cp [hl]                                       ; $75B7: $BE
    ldh [$3F], a                                  ; $75B8: $E0 $3F
    ldh [$3F], a                                  ; $75BA: $E0 $3F
    ldh [$3F], a                                  ; $75BC: $E0 $3F
    ldh [$3F], a                                  ; $75BE: $E0 $3F
    rrca                                          ; $75C0: $0F
    ldh a, [rIE]                                  ; $75C1: $F0 $FF
    nop                                           ; $75C3: $00
    rst $38                                       ; $75C4: $FF
    ret nz                                        ; $75C5: $C0

    db $FC                                        ; $75C6: $FC
    nop                                           ; $75C7: $00
    db $FC                                        ; $75C8: $FC
    nop                                           ; $75C9: $00
    ld hl, sp+$00                                 ; $75CA: $F8 $00
    ld sp, hl                                     ; $75CC: $F9
    nop                                           ; $75CD: $00
    pop af                                        ; $75CE: $F1
    nop                                           ; $75CF: $00
    call $8E03                                    ; $75D0: $CD $03 $8E
    ld bc, $00FF                                  ; $75D3: $01 $FF $00
    rst $38                                       ; $75D6: $FF
    ld a, $E0                                     ; $75D7: $3E $E0
    ccf                                           ; $75D9: $3F
    ldh [$3F], a                                  ; $75DA: $E0 $3F
    ldh [$3F], a                                  ; $75DC: $E0 $3F
    ldh [$3F], a                                  ; $75DE: $E0 $3F
    ld a, a                                       ; $75E0: $7F
    ld hl, $2177                                  ; $75E1: $21 $77 $21
    ld a, a                                       ; $75E4: $7F
    ld hl, $032F                                  ; $75E5: $21 $2F $03
    rrca                                          ; $75E8: $0F
    inc bc                                        ; $75E9: $03
    rra                                           ; $75EA: $1F
    inc bc                                        ; $75EB: $03
    rra                                           ; $75EC: $1F
    ld bc, $000F                                  ; $75ED: $01 $0F $00
    rst $38                                       ; $75F0: $FF
    add h                                         ; $75F1: $84
    rst $38                                       ; $75F2: $FF
    add h                                         ; $75F3: $84
    rst $38                                       ; $75F4: $FF
    add h                                         ; $75F5: $84
    db $FD                                        ; $75F6: $FD
    ret nz                                        ; $75F7: $C0

    ld sp, hl                                     ; $75F8: $F9
    ret nz                                        ; $75F9: $C0

    db $FD                                        ; $75FA: $FD
    ret nz                                        ; $75FB: $C0

    db $FD                                        ; $75FC: $FD
    add b                                         ; $75FD: $80
    ld hl, sp+$00                                 ; $75FE: $F8 $00
    cp a                                          ; $7600: $BF
    ld b, b                                       ; $7601: $40
    add b                                         ; $7602: $80
    ld a, a                                       ; $7603: $7F
    rst $18                                       ; $7604: $DF
    ccf                                           ; $7605: $3F
    ld a, a                                       ; $7606: $7F
    sbc a                                         ; $7607: $9F
    ccf                                           ; $7608: $3F
    ret nz                                        ; $7609: $C0

    ccf                                           ; $760A: $3F
    ldh [$7F], a                                  ; $760B: $E0 $7F
    rst $38                                       ; $760D: $FF
    rst $38                                       ; $760E: $FF
    nop                                           ; $760F: $00
    ei                                            ; $7610: $FB
    inc b                                         ; $7611: $04
    rlca                                          ; $7612: $07
    db $FC                                        ; $7613: $FC
    rst $38                                       ; $7614: $FF
    ld hl, sp-$01                                 ; $7615: $F8 $FF
    ldh a, [rIE]                                  ; $7617: $F0 $FF
    nop                                           ; $7619: $00
    rst $38                                       ; $761A: $FF
    nop                                           ; $761B: $00
    rst $38                                       ; $761C: $FF
    ld hl, sp-$02                                 ; $761D: $F8 $FE
    nop                                           ; $761F: $00
    pop af                                        ; $7620: $F1
    add b                                         ; $7621: $80
    pop af                                        ; $7622: $F1
    add b                                         ; $7623: $80
    ld sp, hl                                     ; $7624: $F9
    add b                                         ; $7625: $80
    ld sp, hl                                     ; $7626: $F9
    ret nz                                        ; $7627: $C0

    ld sp, hl                                     ; $7628: $F9
    ret nz                                        ; $7629: $C0

    db $FD                                        ; $762A: $FD
    ret nz                                        ; $762B: $C0

    db $FD                                        ; $762C: $FD
    add b                                         ; $762D: $80
    ld hl, sp+$00                                 ; $762E: $F8 $00
    rst $38                                       ; $7630: $FF
    ld d, c                                       ; $7631: $51
    rst $38                                       ; $7632: $FF
    add hl, hl                                    ; $7633: $29
    rst $38                                       ; $7634: $FF
    dec d                                         ; $7635: $15
    rst $38                                       ; $7636: $FF
    inc bc                                        ; $7637: $03
    ld a, a                                       ; $7638: $7F
    inc bc                                        ; $7639: $03
    ccf                                           ; $763A: $3F
    inc bc                                        ; $763B: $03
    ccf                                           ; $763C: $3F
    nop                                           ; $763D: $00
    rra                                           ; $763E: $1F
    nop                                           ; $763F: $00
    db $FD                                        ; $7640: $FD
    adc b                                         ; $7641: $88
    db $FD                                        ; $7642: $FD
    adc b                                         ; $7643: $88
    ld sp, hl                                     ; $7644: $F9
    add b                                         ; $7645: $80
    pop af                                        ; $7646: $F1
    add b                                         ; $7647: $80
    ld sp, hl                                     ; $7648: $F9
    add b                                         ; $7649: $80
    ld sp, hl                                     ; $764A: $F9
    nop                                           ; $764B: $00
    pop af                                        ; $764C: $F1
    nop                                           ; $764D: $00
    add b                                         ; $764E: $80
    nop                                           ; $764F: $00
    inc bc                                        ; $7650: $03
    ld bc, $0107                                  ; $7651: $01 $07 $01
    rrca                                          ; $7654: $0F
    ld bc, $000F                                  ; $7655: $01 $0F $00
    rra                                           ; $7658: $1F
    nop                                           ; $7659: $00
    rra                                           ; $765A: $1F
    nop                                           ; $765B: $00
    rra                                           ; $765C: $1F
    nop                                           ; $765D: $00
    rrca                                          ; $765E: $0F
    nop                                           ; $765F: $00
    pop af                                        ; $7660: $F1
    ld b, b                                       ; $7661: $40
    pop af                                        ; $7662: $F1
    ld b, b                                       ; $7663: $40
    pop af                                        ; $7664: $F1
    ld b, b                                       ; $7665: $40
    pop af                                        ; $7666: $F1
    nop                                           ; $7667: $00
    ld sp, hl                                     ; $7668: $F9
    nop                                           ; $7669: $00
    ld sp, hl                                     ; $766A: $F9
    nop                                           ; $766B: $00
    ld sp, hl                                     ; $766C: $F9
    nop                                           ; $766D: $00
    ldh [rP1], a                                  ; $766E: $E0 $00
    inc bc                                        ; $7670: $03
    nop                                           ; $7671: $00
    rlca                                          ; $7672: $07
    nop                                           ; $7673: $00
    rrca                                          ; $7674: $0F
    nop                                           ; $7675: $00
    rrca                                          ; $7676: $0F
    nop                                           ; $7677: $00
    rra                                           ; $7678: $1F
    nop                                           ; $7679: $00
    rra                                           ; $767A: $1F
    nop                                           ; $767B: $00
    rra                                           ; $767C: $1F
    nop                                           ; $767D: $00
    rrca                                          ; $767E: $0F
    nop                                           ; $767F: $00
    pop af                                        ; $7680: $F1
    nop                                           ; $7681: $00
    pop af                                        ; $7682: $F1
    nop                                           ; $7683: $00
    pop af                                        ; $7684: $F1
    nop                                           ; $7685: $00
    pop af                                        ; $7686: $F1
    nop                                           ; $7687: $00
    ld sp, hl                                     ; $7688: $F9
    nop                                           ; $7689: $00
    ld sp, hl                                     ; $768A: $F9
    nop                                           ; $768B: $00
    ld sp, hl                                     ; $768C: $F9
    nop                                           ; $768D: $00
    ldh [rP1], a                                  ; $768E: $E0 $00
    ld [$F1F0], sp                                ; $7690: $08 $F0 $F1
    nop                                           ; $7693: $00
    ld [c], a                                     ; $7694: $E2
    pop bc                                        ; $7695: $C1
    cp $21                                        ; $7696: $FE $21
    rst $38                                       ; $7698: $FF
    nop                                           ; $7699: $00
    cp $00                                        ; $769A: $FE $00
    ld sp, hl                                     ; $769C: $F9
    nop                                           ; $769D: $00
    pop af                                        ; $769E: $F1
    nop                                           ; $769F: $00
    rst $38                                       ; $76A0: $FF
    ld l, a                                       ; $76A1: $6F
    rst $30                                       ; $76A2: $F7
    xor a                                         ; $76A3: $AF
    ld a, c                                       ; $76A4: $79
    rst $00                                       ; $76A5: $C7
    ld a, [hl]                                    ; $76A6: $7E
    or c                                          ; $76A7: $B1
    db $E3                                        ; $76A8: $E3
    inc a                                         ; $76A9: $3C
    ldh [$3F], a                                  ; $76AA: $E0 $3F
    ldh [$3F], a                                  ; $76AC: $E0 $3F
    ldh [$3F], a                                  ; $76AE: $E0 $3F
    ldh a, [$C0]                                  ; $76B0: $F0 $C0
    db $FC                                        ; $76B2: $FC
    ldh a, [$FE]                                  ; $76B3: $F0 $FE
    db $FC                                        ; $76B5: $FC
    ld a, [hl]                                    ; $76B6: $7E
    db $FC                                        ; $76B7: $FC
    sbc [hl]                                      ; $76B8: $9E
    ld a, h                                       ; $76B9: $7C
    and $1C                                       ; $76BA: $E6 $1C
    dec sp                                        ; $76BC: $3B
    call nz, $F00F                                ; $76BD: $C4 $0F $F0
    ld [$F0F0], sp                                ; $76C0: $08 $F0 $F0
    nop                                           ; $76C3: $00
    ldh [$C0], a                                  ; $76C4: $E0 $C0
    ldh a, [rNR41]                                ; $76C6: $F0 $20
    cp $00                                        ; $76C8: $FE $00
    rst $38                                       ; $76CA: $FF
    nop                                           ; $76CB: $00
    di                                            ; $76CC: $F3
    inc c                                         ; $76CD: $0C
    di                                            ; $76CE: $F3
    ld c, $3F                                     ; $76CF: $0E $3F
    nop                                           ; $76D1: $00
    ld a, a                                       ; $76D2: $7F
    ccf                                           ; $76D3: $3F
    rst $18                                       ; $76D4: $DF
    ccf                                           ; $76D5: $3F
    rst $18                                       ; $76D6: $DF
    ccf                                           ; $76D7: $3F
    rst $18                                       ; $76D8: $DF
    ccf                                           ; $76D9: $3F
    rst $18                                       ; $76DA: $DF
    ccf                                           ; $76DB: $3F
    rst $18                                       ; $76DC: $DF
    ccf                                           ; $76DD: $3F
    ret nz                                        ; $76DE: $C0

    ccf                                           ; $76DF: $3F
    db $FC                                        ; $76E0: $FC
    nop                                           ; $76E1: $00
    db $FC                                        ; $76E2: $FC
    ld hl, sp-$0A                                 ; $76E3: $F8 $F6
    ld hl, sp-$0A                                 ; $76E5: $F8 $F6
    ld hl, sp-$0A                                 ; $76E7: $F8 $F6
    ld hl, sp-$0A                                 ; $76E9: $F8 $F6
    ld hl, sp-$09                                 ; $76EB: $F8 $F7
    ld hl, sp+$07                                 ; $76ED: $F8 $07
    ld hl, sp+$59                                 ; $76EF: $F8 $59
    and a                                         ; $76F1: $A7
    add hl, sp                                    ; $76F2: $39
    sub $FF                                       ; $76F3: $D6 $FF
    db $10                                        ; $76F5: $10
    cp $60                                        ; $76F6: $FE $60
    cp $C0                                        ; $76F8: $FE $C0
    cp $C0                                        ; $76FA: $FE $C0
    db $FD                                        ; $76FC: $FD
    add b                                         ; $76FD: $80
    ld sp, hl                                     ; $76FE: $F9
    add b                                         ; $76FF: $80
    db $FC                                        ; $7700: $FC
    ld hl, sp-$04                                 ; $7701: $F8 $FC
    ld hl, sp+$7E                                 ; $7703: $F8 $7E
    ld hl, sp-$42                                 ; $7705: $F8 $BE
    ld a, b                                       ; $7707: $78
    sbc $38                                       ; $7708: $DE $38
    ld l, [hl]                                    ; $770A: $6E
    sbc b                                         ; $770B: $98
    scf                                           ; $770C: $37
    ret z                                         ; $770D: $C8

    rra                                           ; $770E: $1F
    ldh [rIE], a                                  ; $770F: $E0 $FF
    dec b                                         ; $7711: $05
    rst $30                                       ; $7712: $F7
    inc bc                                        ; $7713: $03
    pop af                                        ; $7714: $F1
    nop                                           ; $7715: $00
    pop af                                        ; $7716: $F1
    nop                                           ; $7717: $00
    ld sp, hl                                     ; $7718: $F9
    nop                                           ; $7719: $00
    ld sp, hl                                     ; $771A: $F9
    nop                                           ; $771B: $00
    ld sp, hl                                     ; $771C: $F9
    nop                                           ; $771D: $00
    ldh [rP1], a                                  ; $771E: $E0 $00
    rst $38                                       ; $7720: $FF
    add b                                         ; $7721: $80
    add b                                         ; $7722: $80
    ld a, a                                       ; $7723: $7F
    rst $18                                       ; $7724: $DF
    ccf                                           ; $7725: $3F
    ld a, a                                       ; $7726: $7F
    sbc a                                         ; $7727: $9F
    ccf                                           ; $7728: $3F
    ret nz                                        ; $7729: $C0

    ccf                                           ; $772A: $3F
    ldh [$7F], a                                  ; $772B: $E0 $7F
    rst $38                                       ; $772D: $FF
    rst $38                                       ; $772E: $FF
    nop                                           ; $772F: $00
    rlca                                          ; $7730: $07
    nop                                           ; $7731: $00
    rrca                                          ; $7732: $0F
    rlca                                          ; $7733: $07
    rra                                           ; $7734: $1F
    dec c                                         ; $7735: $0D
    rra                                           ; $7736: $1F
    dec bc                                        ; $7737: $0B
    rrca                                          ; $7738: $0F
    nop                                           ; $7739: $00
    rrca                                          ; $773A: $0F
    nop                                           ; $773B: $00
    inc c                                         ; $773C: $0C
    inc bc                                        ; $773D: $03
    inc c                                         ; $773E: $0C
    inc bc                                        ; $773F: $03
    ldh [rP1], a                                  ; $7740: $E0 $00
    ldh a, [$E0]                                  ; $7742: $F0 $E0
    ld hl, sp-$10                                 ; $7744: $F8 $F0
    db $FC                                        ; $7746: $FC
    ld hl, sp-$04                                 ; $7747: $F8 $FC

jr_00C_7749:
    jr c, jr_00C_7749                             ; $7749: $38 $FE

    inc c                                         ; $774B: $0C
    xor [hl]                                      ; $774C: $AE
    ld d, h                                       ; $774D: $54
    sbc [hl]                                      ; $774E: $9E
    ld l, h                                       ; $774F: $6C
    ld [$0707], sp                                ; $7750: $08 $07 $07
    nop                                           ; $7753: $00
    rrca                                          ; $7754: $0F
    ld [bc], a                                    ; $7755: $02
    rrca                                          ; $7756: $0F
    inc bc                                        ; $7757: $03
    rrca                                          ; $7758: $0F
    ld bc, $011F                                  ; $7759: $01 $1F $01
    scf                                           ; $775C: $37
    add hl, bc                                    ; $775D: $09
    scf                                           ; $775E: $37
    add hl, de                                    ; $775F: $19
    inc a                                         ; $7760: $3C
    ret nz                                        ; $7761: $C0

    ld hl, sp+$00                                 ; $7762: $F8 $00
    db $FC                                        ; $7764: $FC

jr_00C_7765:
    jr nz, jr_00C_7765                            ; $7765: $20 $FE

    ret nz                                        ; $7767: $C0

    cp $80                                        ; $7768: $FE $80
    cp $80                                        ; $776A: $FE $80
    ld a, [c]                                     ; $776C: $F2
    adc h                                         ; $776D: $8C
    pop af                                        ; $776E: $F1
    adc [hl]                                      ; $776F: $8E
    ccf                                           ; $7770: $3F
    ld de, $113F                                  ; $7771: $11 $3F $11

jr_00C_7774:
    rra                                           ; $7774: $1F
    ld bc, $010F                                  ; $7775: $01 $0F $01
    rra                                           ; $7778: $1F
    ld bc, $001F                                  ; $7779: $01 $1F $00
    rrca                                          ; $777C: $0F
    nop                                           ; $777D: $00
    ld bc, $FF00                                  ; $777E: $01 $00 $FF
    adc d                                         ; $7781: $8A
    rst $38                                       ; $7782: $FF
    sub h                                         ; $7783: $94

jr_00C_7784:
    rst $38                                       ; $7784: $FF
    xor b                                         ; $7785: $A8
    rst $38                                       ; $7786: $FF
    ret nz                                        ; $7787: $C0

    cp $C0                                        ; $7788: $FE $C0
    db $FC                                        ; $778A: $FC
    ret nz                                        ; $778B: $C0

    db $FC                                        ; $778C: $FC
    nop                                           ; $778D: $00
    ld hl, sp+$00                                 ; $778E: $F8 $00
    ld b, $00                                     ; $7790: $06 $00
    rrca                                          ; $7792: $0F
    ld b, $1F                                     ; $7793: $06 $1F
    rrca                                          ; $7795: $0F
    ccf                                           ; $7796: $3F
    rra                                           ; $7797: $1F
    ccf                                           ; $7798: $3F
    ld e, $3E                                     ; $7799: $1E $3E
    dec e                                         ; $779B: $1D
    inc a                                         ; $779C: $3C
    dec bc                                        ; $779D: $0B
    ld a, [hl+]                                   ; $779E: $2A

jr_00C_779F:
    dec d                                         ; $779F: $15
    ret nz                                        ; $77A0: $C0

    nop                                           ; $77A1: $00
    ldh a, [$C0]                                  ; $77A2: $F0 $C0

jr_00C_77A4:
    ld hl, sp-$10                                 ; $77A4: $F8 $F0
    db $FC                                        ; $77A6: $FC
    ld a, b                                       ; $77A7: $78
    db $FC                                        ; $77A8: $FC
    ld hl, sp-$04                                 ; $77A9: $F8 $FC
    jr c, jr_00C_77E9                             ; $77AB: $38 $3C

    ret nc                                        ; $77AD: $D0

    ld d, h                                       ; $77AE: $54
    xor b                                         ; $77AF: $A8
    ld e, b                                       ; $77B0: $58
    and b                                         ; $77B1: $A0
    jr nc, jr_00C_7774                            ; $77B2: $30 $C0

    ld hl, sp+$00                                 ; $77B4: $F8 $00
    db $FC                                        ; $77B6: $FC
    ld [$08FC], sp                                ; $77B7: $08 $FC $08
    db $FC                                        ; $77BA: $FC
    ld [$18E4], sp                                ; $77BB: $08 $E4 $18
    db $E4                                        ; $77BE: $E4
    ret c                                         ; $77BF: $D8

    ld e, b                                       ; $77C0: $58
    and b                                         ; $77C1: $A0
    jr nc, jr_00C_7784                            ; $77C2: $30 $C0

jr_00C_77C4:
    ld hl, sp+$00                                 ; $77C4: $F8 $00
    db $FC                                        ; $77C6: $FC
    ld [$04FE], sp                                ; $77C7: $08 $FE $04
    ld a, [c]                                     ; $77CA: $F2
    inc c                                         ; $77CB: $0C
    ld a, [c]                                     ; $77CC: $F2
    inc c                                         ; $77CD: $0C
    db $FC                                        ; $77CE: $FC
    ret nz                                        ; $77CF: $C0

    ld e, b                                       ; $77D0: $58
    and b                                         ; $77D1: $A0
    jr nc, @-$3E                                  ; $77D2: $30 $C0

    db $FC                                        ; $77D4: $FC
    db $10                                        ; $77D5: $10
    ld a, [c]                                     ; $77D6: $F2
    inc c                                         ; $77D7: $0C
    ld a, [c]                                     ; $77D8: $F2
    inc c                                         ; $77D9: $0C

jr_00C_77DA:
    db $FC                                        ; $77DA: $FC
    nop                                           ; $77DB: $00
    ld hl, sp+$00                                 ; $77DC: $F8 $00
    ldh a, [$E0]                                  ; $77DE: $F0 $E0
    ld e, b                                       ; $77E0: $58
    and b                                         ; $77E1: $A0
    jr nc, jr_00C_77A4                            ; $77E2: $30 $C0

    ld hl, sp+$10                                 ; $77E4: $F8 $10
    sbc h                                         ; $77E6: $9C
    ld l, b                                       ; $77E7: $68
    sbc h                                         ; $77E8: $9C

jr_00C_77E9:
    ld l, b                                       ; $77E9: $68
    ld hl, sp+$10                                 ; $77EA: $F8 $10
    ldh a, [rP1]                                  ; $77EC: $F0 $00
    ldh a, [$E0]                                  ; $77EE: $F0 $E0
    ld a, [de]                                    ; $77F0: $1A
    dec b                                         ; $77F1: $05
    inc c                                         ; $77F2: $0C
    inc bc                                        ; $77F3: $03
    rrca                                          ; $77F4: $0F
    inc b                                         ; $77F5: $04
    inc e                                         ; $77F6: $1C
    dec bc                                        ; $77F7: $0B
    dec e                                         ; $77F8: $1D
    ld a, [bc]                                    ; $77F9: $0A
    rrca                                          ; $77FA: $0F
    inc b                                         ; $77FB: $04
    rrca                                          ; $77FC: $0F
    nop                                           ; $77FD: $00
    rrca                                          ; $77FE: $0F
    rlca                                          ; $77FF: $07
    ld e, b                                       ; $7800: $58
    and b                                         ; $7801: $A0
    jr nc, jr_00C_77C4                            ; $7802: $30 $C0

    ldh a, [rNR41]                                ; $7804: $F0 $20
    cp b                                          ; $7806: $B8
    ld d, b                                       ; $7807: $50
    jr c, jr_00C_77DA                             ; $7808: $38 $D0

    ldh a, [rNR41]                                ; $780A: $F0 $20
    ldh a, [rP1]                                  ; $780C: $F0 $00
    ldh a, [$E0]                                  ; $780E: $F0 $E0
    ldh a, [rP1]                                  ; $7810: $F0 $00
    ldh a, [$E0]                                  ; $7812: $F0 $E0
    ld hl, sp+$70                                 ; $7814: $F8 $70
    ld hl, sp+$40                                 ; $7816: $F8 $40
    ret z                                         ; $7818: $C8

    jr nc, jr_00C_779F                            ; $7819: $30 $84

    ld a, b                                       ; $781B: $78
    call nz, $F838                                ; $781C: $C4 $38 $F8
    nop                                           ; $781F: $00
    ld b, $00                                     ; $7820: $06 $00
    rrca                                          ; $7822: $0F
    ld b, $1F                                     ; $7823: $06 $1F
    rrca                                          ; $7825: $0F
    ccf                                           ; $7826: $3F
    rra                                           ; $7827: $1F
    ccf                                           ; $7828: $3F
    ld e, $3E                                     ; $7829: $1E $3E
    dec e                                         ; $782B: $1D
    inc a                                         ; $782C: $3C
    dec bc                                        ; $782D: $0B
    ld a, [hl+]                                   ; $782E: $2A
    dec d                                         ; $782F: $15
    ret nz                                        ; $7830: $C0

    nop                                           ; $7831: $00
    ldh a, [$C0]                                  ; $7832: $F0 $C0
    ld hl, sp-$10                                 ; $7834: $F8 $F0
    db $FC                                        ; $7836: $FC
    ld a, b                                       ; $7837: $78

Call_00C_7838:
    db $FC                                        ; $7838: $FC
    ld hl, sp-$04                                 ; $7839: $F8 $FC
    jr c, jr_00C_7879                             ; $783B: $38 $3C

    ret nc                                        ; $783D: $D0

    ld e, [hl]                                    ; $783E: $5E
    and b                                         ; $783F: $A0
    ld e, c                                       ; $7840: $59
    and [hl]                                      ; $7841: $A6
    add hl, sp                                    ; $7842: $39
    add $FE                                       ; $7843: $C6 $FE
    ld [$18FC], sp                                ; $7845: $08 $FC $18
    ld hl, sp+$10                                 ; $7848: $F8 $10
    ldh a, [rP1]                                  ; $784A: $F0 $00
    ldh a, [rP1]                                  ; $784C: $F0 $00
    ldh a, [$E0]                                  ; $784E: $F0 $E0
    rlca                                          ; $7850: $07
    nop                                           ; $7851: $00
    rrca                                          ; $7852: $0F
    rlca                                          ; $7853: $07
    inc de                                        ; $7854: $13
    rrca                                          ; $7855: $0F
    add hl, sp                                    ; $7856: $39
    rra                                           ; $7857: $1F
    dec sp                                        ; $7858: $3B
    inc e                                         ; $7859: $1C
    ccf                                           ; $785A: $3F
    ld [$152A], sp                                ; $785B: $08 $2A $15
    ld a, [hl-]                                   ; $785E: $3A
    dec b                                         ; $785F: $05
    ldh [rP1], a                                  ; $7860: $E0 $00
    ldh a, [$E0]                                  ; $7862: $F0 $E0
    ld hl, sp-$50                                 ; $7864: $F8 $B0
    call c, $DC78                                 ; $7866: $DC $78 $DC
    jr c, @-$02                                   ; $7869: $38 $FC

    jr jr_00C_78C9                                ; $786B: $18 $5C

    xor b                                         ; $786D: $A8
    ld e, h                                       ; $786E: $5C
    and b                                         ; $786F: $A0
    rrca                                          ; $7870: $0F
    nop                                           ; $7871: $00
    rra                                           ; $7872: $1F
    rrca                                          ; $7873: $0F
    ccf                                           ; $7874: $3F
    ld e, $3F                                     ; $7875: $1E $3F
    dec e                                         ; $7877: $1D
    ld a, a                                       ; $7878: $7F

jr_00C_7879:
    jr c, @+$81                                   ; $7879: $38 $7F

    jr nc, jr_00C_78F9                            ; $787B: $30 $7C

    inc bc                                        ; $787D: $03
    ld c, h                                       ; $787E: $4C
    inc sp                                        ; $787F: $33
    rrca                                          ; $7880: $0F
    nop                                           ; $7881: $00
    rra                                           ; $7882: $1F
    rrca                                          ; $7883: $0F
    ccf                                           ; $7884: $3F
    ld e, $3F                                     ; $7885: $1E $3F
    dec e                                         ; $7887: $1D
    ld a, a                                       ; $7888: $7F
    jr c, jr_00C_790A                             ; $7889: $38 $7F

    jr nc, jr_00C_7901                            ; $788B: $30 $74

    dec hl                                        ; $788D: $2B
    inc [hl]                                      ; $788E: $34
    dec bc                                        ; $788F: $0B
    ldh [rP1], a                                  ; $7890: $E0 $00
    ret nc                                        ; $7892: $D0

    ldh [rNR23], a                                ; $7893: $E0 $18
    ldh a, [$3C]                                  ; $7895: $F0 $3C
    ld hl, sp-$42                                 ; $7897: $F8 $BE
    ld a, h                                       ; $7899: $7C
    cp $2C                                        ; $789A: $FE $2C
    xor [hl]                                      ; $789C: $AE
    ld d, h                                       ; $789D: $54
    cp [hl]                                       ; $789E: $BE
    ld c, h                                       ; $789F: $4C
    rlca                                          ; $78A0: $07
    nop                                           ; $78A1: $00
    rrca                                          ; $78A2: $0F
    rlca                                          ; $78A3: $07
    ld e, $0F                                     ; $78A4: $1E $0F
    ccf                                           ; $78A6: $3F
    rra                                           ; $78A7: $1F
    ccf                                           ; $78A8: $3F
    ld de, $001F                                  ; $78A9: $11 $1F $00
    ld a, [bc]                                    ; $78AC: $0A
    dec b                                         ; $78AD: $05
    ld a, [bc]                                    ; $78AE: $0A
    dec b                                         ; $78AF: $05
    ld hl, sp+$00                                 ; $78B0: $F8 $00
    db $E4                                        ; $78B2: $E4
    ld hl, sp+$02                                 ; $78B3: $F8 $02
    db $FC                                        ; $78B5: $FC
    adc [hl]                                      ; $78B6: $8E
    db $FC                                        ; $78B7: $FC
    cp $FC                                        ; $78B8: $FE $FC
    cp $9C                                        ; $78BA: $FE $9C
    sbc [hl]                                      ; $78BC: $9E
    ld l, h                                       ; $78BD: $6C
    ld a, h                                       ; $78BE: $7C
    sbc b                                         ; $78BF: $98
    rra                                           ; $78C0: $1F
    nop                                           ; $78C1: $00
    ccf                                           ; $78C2: $3F
    rra                                           ; $78C3: $1F
    ld a, a                                       ; $78C4: $7F
    ccf                                           ; $78C5: $3F
    ld a, a                                       ; $78C6: $7F
    ccf                                           ; $78C7: $3F
    ld a, a                                       ; $78C8: $7F

jr_00C_78C9:
    cpl                                           ; $78C9: $2F
    ld a, a                                       ; $78CA: $7F
    daa                                           ; $78CB: $27
    inc h                                         ; $78CC: $24
    dec de                                        ; $78CD: $1B
    cpl                                           ; $78CE: $2F
    rla                                           ; $78CF: $17
    ret nz                                        ; $78D0: $C0

    nop                                           ; $78D1: $00
    ldh [$C0], a                                  ; $78D2: $E0 $C0
    ldh a, [$E0]                                  ; $78D4: $F0 $E0
    ldh a, [$E0]                                  ; $78D6: $F0 $E0
    sub b                                         ; $78D8: $90
    ldh [$08], a                                  ; $78D9: $E0 $08
    ldh a, [$38]                                  ; $78DB: $F0 $38
    ldh a, [$F0]                                  ; $78DD: $F0 $F0
    ldh [rTAC], a                                 ; $78DF: $E0 $07
    nop                                           ; $78E1: $00
    rrca                                          ; $78E2: $0F
    rlca                                          ; $78E3: $07
    rra                                           ; $78E4: $1F
    rrca                                          ; $78E5: $0F
    ccf                                           ; $78E6: $3F
    rra                                           ; $78E7: $1F
    cpl                                           ; $78E8: $2F
    rra                                           ; $78E9: $1F
    inc hl                                        ; $78EA: $23
    rra                                           ; $78EB: $1F
    jr nc, @+$21                                  ; $78EC: $30 $1F

    inc a                                         ; $78EE: $3C
    rra                                           ; $78EF: $1F
    ldh [rP1], a                                  ; $78F0: $E0 $00
    ldh a, [$E0]                                  ; $78F2: $F0 $E0
    ld hl, sp-$10                                 ; $78F4: $F8 $F0
    db $FC                                        ; $78F6: $FC
    ld hl, sp-$0C                                 ; $78F7: $F8 $F4

jr_00C_78F9:
    ld hl, sp-$3C                                 ; $78F9: $F8 $C4
    ld hl, sp+$0C                                 ; $78FB: $F8 $0C
    ld hl, sp+$38                                 ; $78FD: $F8 $38
    ldh [rTAC], a                                 ; $78FF: $E0 $07

jr_00C_7901:
    nop                                           ; $7901: $00
    rrca                                          ; $7902: $0F
    rlca                                          ; $7903: $07
    inc de                                        ; $7904: $13
    rrca                                          ; $7905: $0F
    add hl, sp                                    ; $7906: $39
    rra                                           ; $7907: $1F
    dec sp                                        ; $7908: $3B
    inc e                                         ; $7909: $1C

jr_00C_790A:
    ccf                                           ; $790A: $3F
    ld [$053A], sp                                ; $790B: $08 $3A $05
    ld c, d                                       ; $790E: $4A
    dec [hl]                                      ; $790F: $35
    inc a                                         ; $7910: $3C
    inc bc                                        ; $7911: $03
    ccf                                           ; $7912: $3F
    jr jr_00C_7933                                ; $7913: $18 $1E

    dec c                                         ; $7915: $0D
    rrca                                          ; $7916: $0F
    nop                                           ; $7917: $00
    dec bc                                        ; $7918: $0B

jr_00C_7919:
    inc b                                         ; $7919: $04
    ld a, [bc]                                    ; $791A: $0A
    dec b                                         ; $791B: $05
    ld [de], a                                    ; $791C: $12
    dec c                                         ; $791D: $0D
    inc de                                        ; $791E: $13
    inc c                                         ; $791F: $0C
    inc a                                         ; $7920: $3C
    ret z                                         ; $7921: $C8

    ld hl, sp+$00                                 ; $7922: $F8 $00
    ld d, b                                       ; $7924: $50
    and b                                         ; $7925: $A0
    ret nc                                        ; $7926: $D0

    jr nz, jr_00C_78F9                            ; $7927: $20 $D0

    jr nz, jr_00C_797B                            ; $7929: $20 $50

    and b                                         ; $792B: $A0
    ld c, b                                       ; $792C: $48
    or b                                          ; $792D: $B0
    ret z                                         ; $792E: $C8

    jr nc, jr_00C_7979                            ; $792F: $30 $48

    scf                                           ; $7931: $37
    cpl                                           ; $7932: $2F

jr_00C_7933:
    db $10                                        ; $7933: $10
    ld d, $09                                     ; $7934: $16 $09
    dec bc                                        ; $7936: $0B
    inc b                                         ; $7937: $04
    rlca                                          ; $7938: $07

jr_00C_7939:
    nop                                           ; $7939: $00
    ld [bc], a                                    ; $793A: $02
    ld bc, $0102                                  ; $793B: $01 $02 $01
    inc bc                                        ; $793E: $03
    nop                                           ; $793F: $00
    ld a, h                                       ; $7940: $7C
    adc b                                         ; $7941: $88
    ld hl, sp+$00                                 ; $7942: $F8 $00
    ld d, b                                       ; $7944: $50
    and b                                         ; $7945: $A0
    ret nc                                        ; $7946: $D0

    jr nz, jr_00C_7919                            ; $7947: $20 $D0

    jr nz, jr_00C_799B                            ; $7949: $20 $50

    and b                                         ; $794B: $A0
    ld c, b                                       ; $794C: $48
    or b                                          ; $794D: $B0
    ret z                                         ; $794E: $C8

    jr nc, jr_00C_7989                            ; $794F: $30 $38

    rlca                                          ; $7951: $07
    ccf                                           ; $7952: $3F
    jr jr_00C_7973                                ; $7953: $18 $1E

    dec c                                         ; $7955: $0D
    rrca                                          ; $7956: $0F
    nop                                           ; $7957: $00
    dec bc                                        ; $7958: $0B

jr_00C_7959:
    inc b                                         ; $7959: $04
    ld a, [bc]                                    ; $795A: $0A
    dec b                                         ; $795B: $05
    ld [de], a                                    ; $795C: $12
    dec c                                         ; $795D: $0D
    inc de                                        ; $795E: $13
    inc c                                         ; $795F: $0C
    ld a, h                                       ; $7960: $7C
    adc b                                         ; $7961: $88
    ld hl, sp+$00                                 ; $7962: $F8 $00
    ld d, b                                       ; $7964: $50
    and b                                         ; $7965: $A0
    ret nc                                        ; $7966: $D0

    jr nz, jr_00C_7939                            ; $7967: $20 $D0

    jr nz, jr_00C_79BB                            ; $7969: $20 $50

jr_00C_796B:
    and b                                         ; $796B: $A0
    ld c, b                                       ; $796C: $48
    or b                                          ; $796D: $B0
    ret z                                         ; $796E: $C8

    jr nc, jr_00C_798D                            ; $796F: $30 $1C

    inc bc                                        ; $7971: $03
    rra                                           ; $7972: $1F

jr_00C_7973:
    inc c                                         ; $7973: $0C
    rrca                                          ; $7974: $0F
    nop                                           ; $7975: $00
    ld b, $01                                     ; $7976: $06 $01
    rlca                                          ; $7978: $07

jr_00C_7979:
    nop                                           ; $7979: $00
    ld a, [bc]                                    ; $797A: $0A

jr_00C_797B:
    dec b                                         ; $797B: $05
    ld b, $01                                     ; $797C: $06 $01
    inc bc                                        ; $797E: $03
    nop                                           ; $797F: $00
    ccf                                           ; $7980: $3F
    adc $FF                                       ; $7981: $CE $FF
    ld [bc], a                                    ; $7983: $02
    sbc $20                                       ; $7984: $DE $20
    ret c                                         ; $7986: $D8

    jr nz, jr_00C_7959                            ; $7987: $20 $D0

jr_00C_7989:
    jr nz, @+$4A                                  ; $7989: $20 $48

    or b                                          ; $798B: $B0
    ld c, b                                       ; $798C: $48

jr_00C_798D:
    or b                                          ; $798D: $B0
    ldh a, [rP1]                                  ; $798E: $F0 $00
    ld [$0707], sp                                ; $7990: $08 $07 $07
    nop                                           ; $7993: $00
    inc bc                                        ; $7994: $03
    nop                                           ; $7995: $00
    inc bc                                        ; $7996: $03
    nop                                           ; $7997: $00
    inc bc                                        ; $7998: $03
    nop                                           ; $7999: $00
    inc b                                         ; $799A: $04

jr_00C_799B:
    inc bc                                        ; $799B: $03
    inc b                                         ; $799C: $04
    inc bc                                        ; $799D: $03
    inc bc                                        ; $799E: $03
    nop                                           ; $799F: $00
    db $FC                                        ; $79A0: $FC
    ld a, b                                       ; $79A1: $78
    ld hl, sp+$30                                 ; $79A2: $F8 $30
    ld [hl], b                                    ; $79A4: $70
    add b                                         ; $79A5: $80
    ld b, b                                       ; $79A6: $40
    add b                                         ; $79A7: $80
    ld b, b                                       ; $79A8: $40

jr_00C_79A9:
    add b                                         ; $79A9: $80
    ldh [rP1], a                                  ; $79AA: $E0 $00
    ldh [rP1], a                                  ; $79AC: $E0 $00
    ldh [rP1], a                                  ; $79AE: $E0 $00
    rst $38                                       ; $79B0: $FF
    ld a, [hl]                                    ; $79B1: $7E
    ld a, [hl]                                    ; $79B2: $7E
    inc e                                         ; $79B3: $1C
    call c, $DC20                                 ; $79B4: $DC $20 $DC
    jr nz, @+$52                                  ; $79B7: $20 $50

    jr z, jr_00C_796B                             ; $79B9: $28 $B0

jr_00C_79BB:
    ld c, b                                       ; $79BB: $48
    cp h                                          ; $79BC: $BC
    ld b, b                                       ; $79BD: $40
    ld a, h                                       ; $79BE: $7C
    nop                                           ; $79BF: $00
    rra                                           ; $79C0: $1F
    rrca                                          ; $79C1: $0F
    rrca                                          ; $79C2: $0F
    rlca                                          ; $79C3: $07
    rrca                                          ; $79C4: $0F
    inc bc                                        ; $79C5: $03
    rrca                                          ; $79C6: $0F
    nop                                           ; $79C7: $00
    dec bc                                        ; $79C8: $0B
    inc b                                         ; $79C9: $04
    ld a, [bc]                                    ; $79CA: $0A
    dec b                                         ; $79CB: $05
    ld b, $01                                     ; $79CC: $06 $01
    inc bc                                        ; $79CE: $03
    nop                                           ; $79CF: $00
    db $FC                                        ; $79D0: $FC
    ret c                                         ; $79D1: $D8

    ld hl, sp-$50                                 ; $79D2: $F8 $B0
    ldh a, [$80]                                  ; $79D4: $F0 $80
    ret nc                                        ; $79D6: $D0

    jr nz, jr_00C_79A9                            ; $79D7: $20 $D0

    jr nz, jr_00C_7A3B                            ; $79D9: $20 $60

    add b                                         ; $79DB: $80
    ld h, b                                       ; $79DC: $60
    add b                                         ; $79DD: $80
    ldh [rP1], a                                  ; $79DE: $E0 $00
    ld hl, sp-$20                                 ; $79E0: $F8 $E0
    db $FC                                        ; $79E2: $FC
    ret c                                         ; $79E3: $D8

    ld hl, sp-$50                                 ; $79E4: $F8 $B0
    ldh a, [rP1]                                  ; $79E6: $F0 $00
    ret nc                                        ; $79E8: $D0

    jr nz, jr_00C_7A3B                            ; $79E9: $20 $50

    and b                                         ; $79EB: $A0
    ld h, b                                       ; $79EC: $60
    add b                                         ; $79ED: $80
    ldh [rP1], a                                  ; $79EE: $E0 $00
    rra                                           ; $79F0: $1F
    rrca                                          ; $79F1: $0F
    rrca                                          ; $79F2: $0F
    rlca                                          ; $79F3: $07
    rrca                                          ; $79F4: $0F
    inc bc                                        ; $79F5: $03
    dec bc                                        ; $79F6: $0B
    inc b                                         ; $79F7: $04
    dec bc                                        ; $79F8: $0B

jr_00C_79F9:
    inc b                                         ; $79F9: $04
    ld b, $01                                     ; $79FA: $06 $01
    ld [bc], a                                    ; $79FC: $02
    ld bc, $0003                                  ; $79FD: $01 $03 $00
    db $FC                                        ; $7A00: $FC
    ld hl, sp-$08                                 ; $7A01: $F8 $F8
    ldh [$FC], a                                  ; $7A03: $E0 $FC
    ret c                                         ; $7A05: $D8

    ld hl, sp+$30                                 ; $7A06: $F8 $30
    ldh a, [rP1]                                  ; $7A08: $F0 $00
    ld d, b                                       ; $7A0A: $50
    and b                                         ; $7A0B: $A0
    ld d, b                                       ; $7A0C: $50
    and b                                         ; $7A0D: $A0
    ldh [rP1], a                                  ; $7A0E: $E0 $00
    ld c, h                                       ; $7A10: $4C
    inc sp                                        ; $7A11: $33
    cpl                                           ; $7A12: $2F
    inc d                                         ; $7A13: $14
    ld d, $09                                     ; $7A14: $16 $09
    dec bc                                        ; $7A16: $0B
    inc b                                         ; $7A17: $04
    rlca                                          ; $7A18: $07
    nop                                           ; $7A19: $00
    ld [bc], a                                    ; $7A1A: $02
    ld bc, $0102                                  ; $7A1B: $01 $02 $01
    inc bc                                        ; $7A1E: $03
    nop                                           ; $7A1F: $00
    inc a                                         ; $7A20: $3C
    ret z                                         ; $7A21: $C8

jr_00C_7A22:
    ld hl, sp+$00                                 ; $7A22: $F8 $00
    ld d, b                                       ; $7A24: $50
    and b                                         ; $7A25: $A0
    ret nc                                        ; $7A26: $D0

    jr nz, jr_00C_79F9                            ; $7A27: $20 $D0

    jr nz, @+$52                                  ; $7A29: $20 $50

    and b                                         ; $7A2B: $A0
    ld c, b                                       ; $7A2C: $48
    or b                                          ; $7A2D: $B0
    ret z                                         ; $7A2E: $C8

    jr nc, @+$32                                  ; $7A2F: $30 $30

    ret nz                                        ; $7A31: $C0

    and b                                         ; $7A32: $A0
    ld b, b                                       ; $7A33: $40
    sub b                                         ; $7A34: $90
    ld h, b                                       ; $7A35: $60
    sub b                                         ; $7A36: $90

jr_00C_7A37:
    ld h, b                                       ; $7A37: $60
    ld hl, sp+$10                                 ; $7A38: $F8 $10
    db $FC                                        ; $7A3A: $FC

jr_00C_7A3B:
    ld a, b                                       ; $7A3B: $78
    db $FC                                        ; $7A3C: $FC
    jr c, jr_00C_7A37                             ; $7A3D: $38 $F8

    nop                                           ; $7A3F: $00
    jr nz, @-$3E                                  ; $7A40: $20 $C0

    and b                                         ; $7A42: $A0
    ld b, b                                       ; $7A43: $40
    and b                                         ; $7A44: $A0
    ld b, b                                       ; $7A45: $40
    sub b                                         ; $7A46: $90
    ld h, b                                       ; $7A47: $60
    sbc b                                         ; $7A48: $98

jr_00C_7A49:
    ld h, b                                       ; $7A49: $60
    db $FC                                        ; $7A4A: $FC
    jr jr_00C_7A49                                ; $7A4B: $18 $FC

    ld [hl], b                                    ; $7A4D: $70
    ld hl, sp+$00                                 ; $7A4E: $F8 $00
    ld [bc], a                                    ; $7A50: $02
    ld bc, $0102                                  ; $7A51: $01 $02 $01
    inc b                                         ; $7A54: $04
    inc bc                                        ; $7A55: $03
    inc c                                         ; $7A56: $0C
    inc bc                                        ; $7A57: $03
    rra                                           ; $7A58: $1F
    inc c                                         ; $7A59: $0C
    rra                                           ; $7A5A: $1F

jr_00C_7A5B:
    dec c                                         ; $7A5B: $0D
    rrca                                          ; $7A5C: $0F
    ld bc, $0003                                  ; $7A5D: $01 $03 $00
    jr nc, jr_00C_7A22                            ; $7A60: $30 $C0

    and b                                         ; $7A62: $A0
    ld b, b                                       ; $7A63: $40
    sub b                                         ; $7A64: $90
    ld h, b                                       ; $7A65: $60
    adc b                                         ; $7A66: $88
    ld [hl], b                                    ; $7A67: $70
    ret z                                         ; $7A68: $C8

    jr nc, jr_00C_7A5B                            ; $7A69: $30 $F0

    add b                                         ; $7A6B: $80
    ld hl, sp-$10                                 ; $7A6C: $F8 $F0
    ldh a, [rP1]                                  ; $7A6E: $F0 $00
    ld [de], a                                    ; $7A70: $12
    inc c                                         ; $7A71: $0C
    inc d                                         ; $7A72: $14
    ld [$0C12], sp                                ; $7A73: $08 $12 $0C
    ld [hl-], a                                   ; $7A76: $32
    inc c                                         ; $7A77: $0C
    ld a, h                                       ; $7A78: $7C
    nop                                           ; $7A79: $00
    cp $3C                                        ; $7A7A: $FE $3C
    rst $38                                       ; $7A7C: $FF
    ld a, h                                       ; $7A7D: $7C
    cp $00                                        ; $7A7E: $FE $00
    add hl, bc                                    ; $7A80: $09
    ld b, $0A                                     ; $7A81: $06 $0A
    dec b                                         ; $7A83: $05
    ld [de], a                                    ; $7A84: $12
    dec c                                         ; $7A85: $0D
    ld [de], a                                    ; $7A86: $12
    dec c                                         ; $7A87: $0D
    dec sp                                        ; $7A88: $3B
    inc b                                         ; $7A89: $04
    ld a, a                                       ; $7A8A: $7F
    ld sp, $1C7F                                  ; $7A8B: $31 $7F $1C
    ld a, $00                                     ; $7A8E: $3E $00
    add b                                         ; $7A90: $80
    nop                                           ; $7A91: $00
    add b                                         ; $7A92: $80
    nop                                           ; $7A93: $00
    ld b, b                                       ; $7A94: $40
    add b                                         ; $7A95: $80
    ld b, b                                       ; $7A96: $40
    add b                                         ; $7A97: $80
    add b                                         ; $7A98: $80
    nop                                           ; $7A99: $00
    add b                                         ; $7A9A: $80
    nop                                           ; $7A9B: $00
    add b                                         ; $7A9C: $80
    nop                                           ; $7A9D: $00
    nop                                           ; $7A9E: $00
    nop                                           ; $7A9F: $00
    rra                                           ; $7AA0: $1F
    rrca                                          ; $7AA1: $0F
    rrca                                          ; $7AA2: $0F
    rlca                                          ; $7AA3: $07
    rrca                                          ; $7AA4: $0F
    inc bc                                        ; $7AA5: $03
    dec bc                                        ; $7AA6: $0B
    inc b                                         ; $7AA7: $04
    dec bc                                        ; $7AA8: $0B
    inc b                                         ; $7AA9: $04
    ld a, [bc]                                    ; $7AAA: $0A
    dec b                                         ; $7AAB: $05
    ld b, $01                                     ; $7AAC: $06 $01

jr_00C_7AAE:
    inc bc                                        ; $7AAE: $03
    nop                                           ; $7AAF: $00
    ld b, $00                                     ; $7AB0: $06 $00
    rrca                                          ; $7AB2: $0F
    ld b, $1F                                     ; $7AB3: $06 $1F
    rrca                                          ; $7AB5: $0F
    ccf                                           ; $7AB6: $3F
    rra                                           ; $7AB7: $1F
    ccf                                           ; $7AB8: $3F
    ld e, $3F                                     ; $7AB9: $1E $3F
    jr jr_00C_7AD9                                ; $7ABB: $18 $1C

    inc bc                                        ; $7ABD: $03
    ld a, [hl+]                                   ; $7ABE: $2A
    dec d                                         ; $7ABF: $15
    ret nz                                        ; $7AC0: $C0

    nop                                           ; $7AC1: $00
    ldh a, [$C0]                                  ; $7AC2: $F0 $C0
    ld hl, sp-$10                                 ; $7AC4: $F8 $F0
    db $FC                                        ; $7AC6: $FC
    ld a, b                                       ; $7AC7: $78
    db $FC                                        ; $7AC8: $FC
    ld hl, sp-$04                                 ; $7AC9: $F8 $FC
    sbc b                                         ; $7ACB: $98
    cp b                                          ; $7ACC: $B8
    ld b, b                                       ; $7ACD: $40

jr_00C_7ACE:
    ld d, h                                       ; $7ACE: $54
    xor b                                         ; $7ACF: $A8

jr_00C_7AD0:
    rra                                           ; $7AD0: $1F
    nop                                           ; $7AD1: $00
    ccf                                           ; $7AD2: $3F
    rra                                           ; $7AD3: $1F
    ccf                                           ; $7AD4: $3F
    rrca                                          ; $7AD5: $0F
    ld a, a                                       ; $7AD6: $7F
    ccf                                           ; $7AD7: $3F
    ccf                                           ; $7AD8: $3F

jr_00C_7AD9:
    ld e, $7E                                     ; $7AD9: $1E $7E
    dec [hl]                                      ; $7ADB: $35
    ld [hl], l                                    ; $7ADC: $75
    ld a, [hl+]                                   ; $7ADD: $2A
    add hl, sp                                    ; $7ADE: $39
    ld d, $F0                                     ; $7ADF: $16 $F0
    nop                                           ; $7AE1: $00
    ld hl, sp-$10                                 ; $7AE2: $F8 $F0
    db $FC                                        ; $7AE4: $FC
    cp b                                          ; $7AE5: $B8
    db $FC                                        ; $7AE6: $FC
    ret c                                         ; $7AE7: $D8

    ld hl, sp+$40                                 ; $7AE8: $F8 $40
    ld e, b                                       ; $7AEA: $58
    and b                                         ; $7AEB: $A0
    jr nc, jr_00C_7AAE                            ; $7AEC: $30 $C0

    ld [hl], $C0                                  ; $7AEE: $36 $C0
    ret nz                                        ; $7AF0: $C0

    nop                                           ; $7AF1: $00
    ldh a, [$C0]                                  ; $7AF2: $F0 $C0
    ld hl, sp-$10                                 ; $7AF4: $F8 $F0
    db $FC                                        ; $7AF6: $FC
    ld a, b                                       ; $7AF7: $78
    db $FC                                        ; $7AF8: $FC
    ld hl, sp-$04                                 ; $7AF9: $F8 $FC
    sbc b                                         ; $7AFB: $98
    cp b                                          ; $7AFC: $B8
    ld b, b                                       ; $7AFD: $40
    ld d, [hl]                                    ; $7AFE: $56
    xor b                                         ; $7AFF: $A8
    ldh a, [rP1]                                  ; $7B00: $F0 $00
    ld hl, sp-$10                                 ; $7B02: $F8 $F0

jr_00C_7B04:
    db $FC                                        ; $7B04: $FC
    cp b                                          ; $7B05: $B8
    db $FC                                        ; $7B06: $FC
    ret c                                         ; $7B07: $D8

    ld hl, sp+$40                                 ; $7B08: $F8 $40

jr_00C_7B0A:
    ld e, b                                       ; $7B0A: $58
    and b                                         ; $7B0B: $A0
    jr nc, jr_00C_7ACE                            ; $7B0C: $30 $C0

jr_00C_7B0E:
    jr nc, jr_00C_7AD0                            ; $7B0E: $30 $C0

jr_00C_7B10:
    ld b, $00                                     ; $7B10: $06 $00
    rrca                                          ; $7B12: $0F
    ld b, $1F                                     ; $7B13: $06 $1F
    rrca                                          ; $7B15: $0F
    ccf                                           ; $7B16: $3F
    rra                                           ; $7B17: $1F
    ccf                                           ; $7B18: $3F
    ld e, $3F                                     ; $7B19: $1E $3F
    jr @+$1E                                      ; $7B1B: $18 $1C

    inc bc                                        ; $7B1D: $03

jr_00C_7B1E:
    ld a, [hl+]                                   ; $7B1E: $2A
    dec d                                         ; $7B1F: $15

jr_00C_7B20:
    pop bc                                        ; $7B20: $C1
    nop                                           ; $7B21: $00
    ld a, [c]                                     ; $7B22: $F2
    pop bc                                        ; $7B23: $C1
    db $FC                                        ; $7B24: $FC
    di                                            ; $7B25: $F3
    db $FC                                        ; $7B26: $FC
    ld a, e                                       ; $7B27: $7B
    cp $F9                                        ; $7B28: $FE $F9
    db $FD                                        ; $7B2A: $FD
    sbc b                                         ; $7B2B: $98
    cp b                                          ; $7B2C: $B8
    ld b, b                                       ; $7B2D: $40
    ld d, h                                       ; $7B2E: $54
    xor b                                         ; $7B2F: $A8
    ldh a, [rP1]                                  ; $7B30: $F0 $00
    jr z, jr_00C_7B04                             ; $7B32: $28 $D0

    ld b, h                                       ; $7B34: $44
    cp b                                          ; $7B35: $B8
    ld b, h                                       ; $7B36: $44
    cp b                                          ; $7B37: $B8
    jr z, jr_00C_7B0A                             ; $7B38: $28 $D0

    ldh a, [rP1]                                  ; $7B3A: $F0 $00
    ret nz                                        ; $7B3C: $C0

    nop                                           ; $7B3D: $00
    ret nz                                        ; $7B3E: $C0

    nop                                           ; $7B3F: $00
    pop af                                        ; $7B40: $F1
    nop                                           ; $7B41: $00
    ld a, [$FCF1]                                 ; $7B42: $FA $F1 $FC
    cp e                                          ; $7B45: $BB
    db $FC                                        ; $7B46: $FC
    db $DB                                        ; $7B47: $DB
    cp $41                                        ; $7B48: $FE $41
    ld e, l                                       ; $7B4A: $5D
    and b                                         ; $7B4B: $A0
    jr nc, jr_00C_7B0E                            ; $7B4C: $30 $C0

jr_00C_7B4E:
    jr nc, jr_00C_7B10                            ; $7B4E: $30 $C0

jr_00C_7B50:
    cp $00                                        ; $7B50: $FE $00
    ret                                           ; $7B52: $C9


    or [hl]                                       ; $7B53: $B6
    sub b                                         ; $7B54: $90
    ld l, a                                       ; $7B55: $6F
    sub b                                         ; $7B56: $90
    ld l, a                                       ; $7B57: $6F
    ret                                           ; $7B58: $C9


    ld [hl], $FE                                  ; $7B59: $36 $FE
    nop                                           ; $7B5B: $00
    jr c, jr_00C_7B1E                             ; $7B5C: $38 $C0

    jr c, jr_00C_7B20                             ; $7B5E: $38 $C0

    nop                                           ; $7B60: $00
    nop                                           ; $7B61: $00
    nop                                           ; $7B62: $00
    nop                                           ; $7B63: $00
    add b                                         ; $7B64: $80
    nop                                           ; $7B65: $00
    add b                                         ; $7B66: $80
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
    jr jr_00C_7B7C                                ; $7B7A: $18 $00

jr_00C_7B7C:
    inc h                                         ; $7B7C: $24
    jr jr_00C_7BC1                                ; $7B7D: $18 $42

    inc a                                         ; $7B7F: $3C
    ldh a, [rP1]                                  ; $7B80: $F0 $00
    ld hl, sp-$10                                 ; $7B82: $F8 $F0
    db $FC                                        ; $7B84: $FC
    cp b                                          ; $7B85: $B8
    db $FC                                        ; $7B86: $FC
    ret c                                         ; $7B87: $D8

    ld hl, sp+$40                                 ; $7B88: $F8 $40
    ld e, b                                       ; $7B8A: $58
    and b                                         ; $7B8B: $A0
    jr nc, jr_00C_7B4E                            ; $7B8C: $30 $C0

    jr c, jr_00C_7B50                             ; $7B8E: $38 $C0

    ld e, h                                       ; $7B90: $5C
    and b                                         ; $7B91: $A0
    ld a, $DC                                     ; $7B92: $3E $DC
    db $FC                                        ; $7B94: $FC
    jr jr_00C_7BB3                                ; $7B95: $18 $1C

    ldh [rNR14], a                                ; $7B97: $E0 $14
    add sp, $14                                   ; $7B99: $E8 $14
    add sp, $2C                                   ; $7B9B: $E8 $2C
    ret c                                         ; $7B9D: $D8

    db $E4                                        ; $7B9E: $E4
    jr jr_00C_7BDD                                ; $7B9F: $18 $3C

    ret nz                                        ; $7BA1: $C0

    cp $1C                                        ; $7BA2: $FE $1C
    inc a                                         ; $7BA4: $3C
    ret c                                         ; $7BA5: $D8

    inc e                                         ; $7BA6: $1C
    ldh [rNR14], a                                ; $7BA7: $E0 $14
    add sp, $14                                   ; $7BA9: $E8 $14
    add sp, $2C                                   ; $7BAB: $E8 $2C
    ret c                                         ; $7BAD: $D8

    db $E4                                        ; $7BAE: $E4
    jr @+$1B                                      ; $7BAF: $18 $19

    and $F9                                       ; $7BB1: $E6 $F9

jr_00C_7BB3:
    ld d, $3F                                     ; $7BB3: $16 $3F
    jp c, $E41A                                   ; $7BB5: $DA $1A $E4

    inc e                                         ; $7BB8: $1C
    ldh [rNR10], a                                ; $7BB9: $E0 $10
    ldh [rNR10], a                                ; $7BBB: $E0 $10
    ldh [$F0], a                                  ; $7BBD: $E0 $F0
    nop                                           ; $7BBF: $00
    ld e, c                                       ; $7BC0: $59

jr_00C_7BC1:
    and [hl]                                      ; $7BC1: $A6
    add hl, sp                                    ; $7BC2: $39
    sub $FF                                       ; $7BC3: $D6 $FF
    ld a, [de]                                    ; $7BC5: $1A
    ld a, [de]                                    ; $7BC6: $1A
    db $E4                                        ; $7BC7: $E4
    inc e                                         ; $7BC8: $1C
    ldh [rNR10], a                                ; $7BC9: $E0 $10
    ldh [rNR10], a                                ; $7BCB: $E0 $10
    ldh [$F0], a                                  ; $7BCD: $E0 $F0
    nop                                           ; $7BCF: $00
    add hl, de                                    ; $7BD0: $19
    and $F9                                       ; $7BD1: $E6 $F9
    ld d, $3F                                     ; $7BD3: $16 $3F
    jp c, $E41A                                   ; $7BD5: $DA $1A $E4

    inc e                                         ; $7BD8: $1C
    ldh [rNR10], a                                ; $7BD9: $E0 $10
    ldh [rNR10], a                                ; $7BDB: $E0 $10

jr_00C_7BDD:
    ldh [$F0], a                                  ; $7BDD: $E0 $F0
    nop                                           ; $7BDF: $00
    inc e                                         ; $7BE0: $1C
    ldh [$FE], a                                  ; $7BE1: $E0 $FE
    inc e                                         ; $7BE3: $1C
    ld a, $D8                                     ; $7BE4: $3E $D8
    add hl, de                                    ; $7BE6: $19
    and $1F                                       ; $7BE7: $E6 $1F
    pop hl                                        ; $7BE9: $E1
    ld [de], a                                    ; $7BEA: $12
    pop hl                                        ; $7BEB: $E1
    ld de, $F0E0                                  ; $7BEC: $11 $E0 $F0
    nop                                           ; $7BEF: $00
    nop                                           ; $7BF0: $00
    nop                                           ; $7BF1: $00
    nop                                           ; $7BF2: $00
    nop                                           ; $7BF3: $00
    nop                                           ; $7BF4: $00
    nop                                           ; $7BF5: $00
    add b                                         ; $7BF6: $80
    nop                                           ; $7BF7: $00
    ld b, b                                       ; $7BF8: $40
    add b                                         ; $7BF9: $80
    ld b, b                                       ; $7BFA: $40
    add b                                         ; $7BFB: $80
    add b                                         ; $7BFC: $80
    nop                                           ; $7BFD: $00
    nop                                           ; $7BFE: $00
    nop                                           ; $7BFF: $00
    ld e, h                                       ; $7C00: $5C
    and b                                         ; $7C01: $A0
    ld a, $DC                                     ; $7C02: $3E $DC
    db $FC                                        ; $7C04: $FC
    jr jr_00C_7C23                                ; $7C05: $18 $1C

    ldh [rNR14], a                                ; $7C07: $E0 $14
    add sp, $18                                   ; $7C09: $E8 $18
    ldh [rNR10], a                                ; $7C0B: $E0 $10
    ldh [$F0], a                                  ; $7C0D: $E0 $F0
    nop                                           ; $7C0F: $00
    ld e, h                                       ; $7C10: $5C
    and b                                         ; $7C11: $A0
    ld a, $DC                                     ; $7C12: $3E $DC
    rst $38                                       ; $7C14: $FF
    jr jr_00C_7C35                                ; $7C15: $18 $1E

    pop hl                                        ; $7C17: $E1
    db $10                                        ; $7C18: $10
    rst $28                                       ; $7C19: $EF
    rra                                           ; $7C1A: $1F
    ldh [rNR10], a                                ; $7C1B: $E0 $10
    ldh [$F0], a                                  ; $7C1D: $E0 $F0
    nop                                           ; $7C1F: $00
    ret nz                                        ; $7C20: $C0

    nop                                           ; $7C21: $00

jr_00C_7C22:
    ret nz                                        ; $7C22: $C0

jr_00C_7C23:
    nop                                           ; $7C23: $00
    ret nz                                        ; $7C24: $C0

    nop                                           ; $7C25: $00
    ld b, b                                       ; $7C26: $40
    add b                                         ; $7C27: $80
    ld b, b                                       ; $7C28: $40
    add b                                         ; $7C29: $80
    add b                                         ; $7C2A: $80
    nop                                           ; $7C2B: $00
    nop                                           ; $7C2C: $00
    nop                                           ; $7C2D: $00
    nop                                           ; $7C2E: $00
    nop                                           ; $7C2F: $00
    inc a                                         ; $7C30: $3C
    inc bc                                        ; $7C31: $03
    ld a, a                                       ; $7C32: $7F
    jr c, jr_00C_7C73                             ; $7C33: $38 $3E

jr_00C_7C35:
    dec e                                         ; $7C35: $1D
    ld e, [hl]                                    ; $7C36: $5E
    ld hl, $3649                                  ; $7C37: $21 $49 $36
    inc l                                         ; $7C3A: $2C
    dec de                                        ; $7C3B: $1B

Jump_00C_7C3C:
jr_00C_7C3C:
    ld [hl-], a                                   ; $7C3C: $32
    dec e                                         ; $7C3D: $1D

jr_00C_7C3E:
    inc de                                        ; $7C3E: $13
    inc c                                         ; $7C3F: $0C
    jr jr_00C_7C22                                ; $7C40: $18 $E0

    db $FD                                        ; $7C42: $FD
    jr jr_00C_7C63                                ; $7C43: $18 $1E

    pop hl                                        ; $7C45: $E1
    ld d, b                                       ; $7C46: $50
    xor a                                         ; $7C47: $AF
    rst $38                                       ; $7C48: $FF
    nop                                           ; $7C49: $00
    jr nz, @-$3E                                  ; $7C4A: $20 $C0

    jr nz, @-$3E                                  ; $7C4C: $20 $C0

    ldh [rP1], a                                  ; $7C4E: $E0 $00
    ret nz                                        ; $7C50: $C0

    nop                                           ; $7C51: $00

jr_00C_7C52:
    ret nz                                        ; $7C52: $C0

    nop                                           ; $7C53: $00
    ld b, b                                       ; $7C54: $40
    add b                                         ; $7C55: $80
    ld b, b                                       ; $7C56: $40
    add b                                         ; $7C57: $80
    add b                                         ; $7C58: $80
    nop                                           ; $7C59: $00
    nop                                           ; $7C5A: $00
    nop                                           ; $7C5B: $00

jr_00C_7C5C:
    nop                                           ; $7C5C: $00
    nop                                           ; $7C5D: $00

jr_00C_7C5E:
    nop                                           ; $7C5E: $00
    nop                                           ; $7C5F: $00
    inc e                                         ; $7C60: $1C
    inc bc                                        ; $7C61: $03
    rra                                           ; $7C62: $1F

jr_00C_7C63:
    inc c                                         ; $7C63: $0C
    rra                                           ; $7C64: $1F
    ld c, $1E                                     ; $7C65: $0E $1E
    add hl, bc                                    ; $7C67: $09
    ld [$0807], sp                                ; $7C68: $08 $07 $08
    rlca                                          ; $7C6B: $07
    ld [$0F07], sp                                ; $7C6C: $08 $07 $0F

jr_00C_7C6F:
    nop                                           ; $7C6F: $00
    jr jr_00C_7C52                                ; $7C70: $18 $E0

    db $FC                                        ; $7C72: $FC

jr_00C_7C73:
    nop                                           ; $7C73: $00
    jp z, Jump_00C_4A34                           ; $7C74: $CA $34 $4A

    db $F4                                        ; $7C77: $F4
    db $FC                                        ; $7C78: $FC
    nop                                           ; $7C79: $00
    jr nz, jr_00C_7C3C                            ; $7C7A: $20 $C0

    jr nz, jr_00C_7C3E                            ; $7C7C: $20 $C0

    ldh [rP1], a                                  ; $7C7E: $E0 $00
    ld a, $01                                     ; $7C80: $3E $01
    rrca                                          ; $7C82: $0F
    ld b, $0F                                     ; $7C83: $06 $0F
    rlca                                          ; $7C85: $07
    rrca                                          ; $7C86: $0F
    inc b                                         ; $7C87: $04
    inc c                                         ; $7C88: $0C
    inc bc                                        ; $7C89: $03
    ld [$0807], sp                                ; $7C8A: $08 $07 $08
    rlca                                          ; $7C8D: $07
    rrca                                          ; $7C8E: $0F
    nop                                           ; $7C8F: $00
    inc d                                         ; $7C90: $14
    add sp, -$04                                  ; $7C91: $E8 $FC
    nop                                           ; $7C93: $00
    db $E4                                        ; $7C94: $E4
    jr jr_00C_7CBB                                ; $7C95: $18 $24

    ld hl, sp-$08                                 ; $7C97: $F8 $F8
    nop                                           ; $7C99: $00
    jr nz, jr_00C_7C5C                            ; $7C9A: $20 $C0

    jr nz, jr_00C_7C5E                            ; $7C9C: $20 $C0

    ldh [rP1], a                                  ; $7C9E: $E0 $00
    ld c, $05                                     ; $7CA0: $0E $05
    rrca                                          ; $7CA2: $0F
    nop                                           ; $7CA3: $00
    rra                                           ; $7CA4: $1F
    inc c                                         ; $7CA5: $0C
    ld e, $09                                     ; $7CA6: $1E $09
    add hl, bc                                    ; $7CA8: $09
    ld b, $08                                     ; $7CA9: $06 $08
    rlca                                          ; $7CAB: $07
    ld [$0F07], sp                                ; $7CAC: $08 $07 $0F
    nop                                           ; $7CAF: $00
    ld c, h                                       ; $7CB0: $4C
    or b                                          ; $7CB1: $B0
    inc b                                         ; $7CB2: $04
    ld hl, sp-$08                                 ; $7CB3: $F8 $F8
    nop                                           ; $7CB5: $00
    ld a, h                                       ; $7CB6: $7C
    add b                                         ; $7CB7: $80
    ld c, e                                       ; $7CB8: $4B
    db $F4                                        ; $7CB9: $F4
    rst $08                                       ; $7CBA: $CF

jr_00C_7CBB:
    jr nc, jr_00C_7D3B                            ; $7CBB: $30 $7E

    add b                                         ; $7CBD: $80
    ldh [rP1], a                                  ; $7CBE: $E0 $00
    jr jr_00C_7CC2                                ; $7CC0: $18 $00

jr_00C_7CC2:
    inc h                                         ; $7CC2: $24
    jr jr_00C_7D1F                                ; $7CC3: $18 $5A

    inc h                                         ; $7CC5: $24
    jp nz, $C23C                                  ; $7CC6: $C2 $3C $C2

    inc a                                         ; $7CC9: $3C
    ld b, d                                       ; $7CCA: $42
    inc a                                         ; $7CCB: $3C
    inc h                                         ; $7CCC: $24
    jr @+$1A                                      ; $7CCD: $18 $18

    nop                                           ; $7CCF: $00
    rra                                           ; $7CD0: $1F
    nop                                           ; $7CD1: $00
    rlca                                          ; $7CD2: $07
    inc bc                                        ; $7CD3: $03
    rrca                                          ; $7CD4: $0F
    rlca                                          ; $7CD5: $07
    rrca                                          ; $7CD6: $0F
    ld bc, $0609                                  ; $7CD7: $01 $09 $06
    db $10                                        ; $7CDA: $10
    rrca                                          ; $7CDB: $0F
    ld de, $0F0E                                  ; $7CDC: $11 $0E $0F
    nop                                           ; $7CDF: $00
    ldh a, [rP1]                                  ; $7CE0: $F0 $00
    ldh a, [$E0]                                  ; $7CE2: $F0 $E0
    ld hl, sp+$70                                 ; $7CE4: $F8 $70
    ld hl, sp+$40                                 ; $7CE6: $F8 $40
    ret z                                         ; $7CE8: $C8

    jr nc, jr_00C_7C6F                            ; $7CE9: $30 $84

    ld a, b                                       ; $7CEB: $78
    call nz, $F838                                ; $7CEC: $C4 $38 $F8
    nop                                           ; $7CEF: $00
    rrca                                          ; $7CF0: $0F
    nop                                           ; $7CF1: $00
    rrca                                          ; $7CF2: $0F
    rlca                                          ; $7CF3: $07
    rra                                           ; $7CF4: $1F
    rrca                                          ; $7CF5: $0F
    rra                                           ; $7CF6: $1F
    ld c, $3F                                     ; $7CF7: $0E $3F
    db $10                                        ; $7CF9: $10
    add hl, sp                                    ; $7CFA: $39
    ld b, $21                                     ; $7CFB: $06 $21
    ld e, $1F                                     ; $7CFD: $1E $1F
    nop                                           ; $7CFF: $00
    ldh [rP1], a                                  ; $7D00: $E0 $00
    ldh [$C0], a                                  ; $7D02: $E0 $C0
    ldh a, [$60]                                  ; $7D04: $F0 $60
    ldh a, [$C0]                                  ; $7D06: $F0 $C0
    ret z                                         ; $7D08: $C8

    jr nc, jr_00C_7D13                            ; $7D09: $30 $08

    ldh a, [$F0]                                  ; $7D0B: $F0 $F0
    nop                                           ; $7D0D: $00
    nop                                           ; $7D0E: $00
    nop                                           ; $7D0F: $00
    rrca                                          ; $7D10: $0F
    inc bc                                        ; $7D11: $03
    rrca                                          ; $7D12: $0F

jr_00C_7D13:
    ld b, $0E                                     ; $7D13: $06 $0E
    dec b                                         ; $7D15: $05
    inc c                                         ; $7D16: $0C
    inc bc                                        ; $7D17: $03
    inc c                                         ; $7D18: $0C
    inc bc                                        ; $7D19: $03
    inc b                                         ; $7D1A: $04
    inc bc                                        ; $7D1B: $03
    inc bc                                        ; $7D1C: $03
    nop                                           ; $7D1D: $00
    nop                                           ; $7D1E: $00

jr_00C_7D1F:
    nop                                           ; $7D1F: $00
    ldh [$80], a                                  ; $7D20: $E0 $80
    ldh a, [$60]                                  ; $7D22: $F0 $60
    ld a, h                                       ; $7D24: $7C
    or b                                          ; $7D25: $B0
    ld [hl], d                                    ; $7D26: $72
    xor h                                         ; $7D27: $AC
    ld h, d                                       ; $7D28: $62
    sbc h                                         ; $7D29: $9C
    and h                                         ; $7D2A: $A4
    jr jr_00C_7D55                                ; $7D2B: $18 $28

    db $10                                        ; $7D2D: $10
    stop                                          ; $7D2E: $10 $00
    rlca                                          ; $7D30: $07
    nop                                           ; $7D31: $00
    rrca                                          ; $7D32: $0F
    rlca                                          ; $7D33: $07
    inc de                                        ; $7D34: $13
    rrca                                          ; $7D35: $0F
    add hl, sp                                    ; $7D36: $39
    rra                                           ; $7D37: $1F
    add hl, sp                                    ; $7D38: $39
    rra                                           ; $7D39: $1F
    dec sp                                        ; $7D3A: $3B

jr_00C_7D3B:
    dec e                                         ; $7D3B: $1D
    dec a                                         ; $7D3C: $3D
    ld a, [bc]                                    ; $7D3D: $0A
    ld a, [hl+]                                   ; $7D3E: $2A
    dec d                                         ; $7D3F: $15
    ldh [rP1], a                                  ; $7D40: $E0 $00
    ldh a, [$E0]                                  ; $7D42: $F0 $E0
    ld hl, sp-$10                                 ; $7D44: $F8 $F0
    call c, $DCB8                                 ; $7D46: $DC $B8 $DC
    ld a, b                                       ; $7D49: $78
    call c, $3C38                                 ; $7D4A: $DC $38 $3C
    ret c                                         ; $7D4D: $D8

    ld e, h                                       ; $7D4E: $5C
    xor b                                         ; $7D4F: $A8
    rlca                                          ; $7D50: $07
    nop                                           ; $7D51: $00
    rrca                                          ; $7D52: $0F
    rlca                                          ; $7D53: $07
    inc de                                        ; $7D54: $13

jr_00C_7D55:
    rrca                                          ; $7D55: $0F
    add hl, sp                                    ; $7D56: $39
    rra                                           ; $7D57: $1F
    add hl, sp                                    ; $7D58: $39
    rra                                           ; $7D59: $1F
    dec sp                                        ; $7D5A: $3B
    dec e                                         ; $7D5B: $1D
    dec a                                         ; $7D5C: $3D
    ld a, [bc]                                    ; $7D5D: $0A
    ld a, [hl+]                                   ; $7D5E: $2A
    dec d                                         ; $7D5F: $15
    ldh [rP1], a                                  ; $7D60: $E0 $00
    ldh a, [$E0]                                  ; $7D62: $F0 $E0
    ld hl, sp-$10                                 ; $7D64: $F8 $F0
    call c, $DCB8                                 ; $7D66: $DC $B8 $DC
    ld a, b                                       ; $7D69: $78
    call c, $3C38                                 ; $7D6A: $DC $38 $3C
    ret c                                         ; $7D6D: $D8

    ld e, h                                       ; $7D6E: $5C
    xor b                                         ; $7D6F: $A8
    rrca                                          ; $7D70: $0F
    nop                                           ; $7D71: $00
    rla                                           ; $7D72: $17
    rrca                                          ; $7D73: $0F
    ld sp, $791F                                  ; $7D74: $31 $1F $79
    ccf                                           ; $7D77: $3F
    ei                                            ; $7D78: $FB
    ld a, h                                       ; $7D79: $7C
    db $FC                                        ; $7D7A: $FC
    ld l, e                                       ; $7D7B: $6B
    ld [$7A55], a                                 ; $7D7C: $EA $55 $7A
    dec h                                         ; $7D7F: $25
    ldh [rP1], a                                  ; $7D80: $E0 $00
    ldh a, [$E0]                                  ; $7D82: $F0 $E0
    ld hl, sp-$10                                 ; $7D84: $F8 $F0
    ld hl, sp-$10                                 ; $7D86: $F8 $F0
    db $FC                                        ; $7D88: $FC
    cp b                                          ; $7D89: $B8
    cp h                                          ; $7D8A: $BC
    ld e, b                                       ; $7D8B: $58
    ld e, h                                       ; $7D8C: $5C
    xor b                                         ; $7D8D: $A8
    ld e, b                                       ; $7D8E: $58
    and b                                         ; $7D8F: $A0
    ldh [rP1], a                                  ; $7D90: $E0 $00
    ldh a, [$E0]                                  ; $7D92: $F0 $E0
    ld hl, sp-$10                                 ; $7D94: $F8 $F0
    ld hl, sp-$10                                 ; $7D96: $F8 $F0
    db $FC                                        ; $7D98: $FC
    cp b                                          ; $7D99: $B8
    cp h                                          ; $7D9A: $BC
    ld e, b                                       ; $7D9B: $58
    ld e, [hl]                                    ; $7D9C: $5E
    xor b                                         ; $7D9D: $A8
    ld e, l                                       ; $7D9E: $5D
    and d                                         ; $7D9F: $A2
    rra                                           ; $7DA0: $1F
    nop                                           ; $7DA1: $00
    daa                                           ; $7DA2: $27
    rra                                           ; $7DA3: $1F
    ld b, b                                       ; $7DA4: $40
    ccf                                           ; $7DA5: $3F
    ld [hl], c                                    ; $7DA6: $71
    ccf                                           ; $7DA7: $3F
    ld a, a                                       ; $7DA8: $7F
    ccf                                           ; $7DA9: $3F
    ld a, a                                       ; $7DAA: $7F

jr_00C_7DAB:
    add hl, sp                                    ; $7DAB: $39
    ld a, c                                       ; $7DAC: $79
    ld [hl], $3E                                  ; $7DAD: $36 $3E
    add hl, de                                    ; $7DAF: $19
    ldh [rP1], a                                  ; $7DB0: $E0 $00
    ldh a, [$E0]                                  ; $7DB2: $F0 $E0
    ld a, b                                       ; $7DB4: $78
    ldh a, [$FC]                                  ; $7DB5: $F0 $FC
    ld hl, sp-$04                                 ; $7DB7: $F8 $FC

jr_00C_7DB9:
    xor b                                         ; $7DB9: $A8
    cp b                                          ; $7DBA: $B8
    ld b, b                                       ; $7DBB: $40
    ld d, d                                       ; $7DBC: $52
    and b                                         ; $7DBD: $A0
    ld d, l                                       ; $7DBE: $55
    and d                                         ; $7DBF: $A2
    ldh [rP1], a                                  ; $7DC0: $E0 $00
    ldh a, [$E0]                                  ; $7DC2: $F0 $E0
    ld a, b                                       ; $7DC4: $78
    ldh a, [$FC]                                  ; $7DC5: $F0 $FC
    ld hl, sp-$04                                 ; $7DC7: $F8 $FC
    xor b                                         ; $7DC9: $A8
    cp b                                          ; $7DCA: $B8
    ld b, b                                       ; $7DCB: $40
    ld d, b                                       ; $7DCC: $50
    and b                                         ; $7DCD: $A0

jr_00C_7DCE:
    ld d, b                                       ; $7DCE: $50
    and b                                         ; $7DCF: $A0
    ld a, [hl-]                                   ; $7DD0: $3A
    dec b                                         ; $7DD1: $05
    inc a                                         ; $7DD2: $3C
    inc de                                        ; $7DD3: $13
    rra                                           ; $7DD4: $1F
    nop                                           ; $7DD5: $00
    dec bc                                        ; $7DD6: $0B

jr_00C_7DD7:
    inc b                                         ; $7DD7: $04
    dec bc                                        ; $7DD8: $0B

jr_00C_7DD9:
    inc b                                         ; $7DD9: $04
    dec b                                         ; $7DDA: $05
    ld [bc], a                                    ; $7DDB: $02
    inc b                                         ; $7DDC: $04
    inc bc                                        ; $7DDD: $03
    inc bc                                        ; $7DDE: $03
    nop                                           ; $7DDF: $00
    ld e, h                                       ; $7DE0: $5C
    and b                                         ; $7DE1: $A0
    inc a                                         ; $7DE2: $3C
    ret z                                         ; $7DE3: $C8

    ld hl, sp+$00                                 ; $7DE4: $F8 $00
    ret nc                                        ; $7DE6: $D0

    jr nz, jr_00C_7DB9                            ; $7DE7: $20 $D0

    jr nz, jr_00C_7E0B                            ; $7DE9: $20 $20

    ret nz                                        ; $7DEB: $C0

    and b                                         ; $7DEC: $A0
    ld b, b                                       ; $7DED: $40
    ldh [rP1], a                                  ; $7DEE: $E0 $00
    ld e, $09                                     ; $7DF0: $1E $09
    rrca                                          ; $7DF2: $0F
    nop                                           ; $7DF3: $00
    dec bc                                        ; $7DF4: $0B
    inc b                                         ; $7DF5: $04
    dec bc                                        ; $7DF6: $0B
    inc b                                         ; $7DF7: $04
    dec bc                                        ; $7DF8: $0B
    inc b                                         ; $7DF9: $04
    inc b                                         ; $7DFA: $04
    inc bc                                        ; $7DFB: $03
    dec b                                         ; $7DFC: $05
    ld [bc], a                                    ; $7DFD: $02
    inc bc                                        ; $7DFE: $03
    nop                                           ; $7DFF: $00
    ld e, $E4                                     ; $7E00: $1E $E4
    db $FC                                        ; $7E02: $FC
    nop                                           ; $7E03: $00
    ret nc                                        ; $7E04: $D0

    jr nz, jr_00C_7DD7                            ; $7E05: $20 $D0

    jr nz, jr_00C_7DD9                            ; $7E07: $20 $D0

    jr nz, jr_00C_7DAB                            ; $7E09: $20 $A0

jr_00C_7E0B:
    ld b, b                                       ; $7E0B: $40
    jr nz, jr_00C_7DCE                            ; $7E0C: $20 $C0

    ldh [rP1], a                                  ; $7E0E: $E0 $00
    dec a                                         ; $7E10: $3D
    ld [de], a                                    ; $7E11: $12

jr_00C_7E12:
    ld a, $1D                                     ; $7E12: $3E $1D
    rra                                           ; $7E14: $1F

jr_00C_7E15:
    nop                                           ; $7E15: $00
    dec b                                         ; $7E16: $05
    ld [bc], a                                    ; $7E17: $02
    dec b                                         ; $7E18: $05
    ld [bc], a                                    ; $7E19: $02
    add hl, bc                                    ; $7E1A: $09
    ld b, $09                                     ; $7E1B: $06 $09
    ld b, $07                                     ; $7E1D: $06 $07
    nop                                           ; $7E1F: $00
    inc l                                         ; $7E20: $2C
    ret nc                                        ; $7E21: $D0

jr_00C_7E22:
    inc e                                         ; $7E22: $1C
    add sp, -$08                                  ; $7E23: $E8 $F8
    nop                                           ; $7E25: $00
    ret nc                                        ; $7E26: $D0

    jr nz, jr_00C_7E15                            ; $7E27: $20 $EC

    db $10                                        ; $7E29: $10
    ld a, [c]                                     ; $7E2A: $F2

jr_00C_7E2B:
    inc c                                         ; $7E2B: $0C
    ld d, d                                       ; $7E2C: $52
    adc h                                         ; $7E2D: $8C
    adc h                                         ; $7E2E: $8C
    nop                                           ; $7E2F: $00
    ld a, h                                       ; $7E30: $7C
    dec sp                                        ; $7E31: $3B
    ccf                                           ; $7E32: $3F
    nop                                           ; $7E33: $00
    dec bc                                        ; $7E34: $0B
    inc b                                         ; $7E35: $04
    dec bc                                        ; $7E36: $0B
    inc b                                         ; $7E37: $04
    dec bc                                        ; $7E38: $0B
    inc b                                         ; $7E39: $04
    ld [de], a                                    ; $7E3A: $12
    dec c                                         ; $7E3B: $0D
    ld [de], a                                    ; $7E3C: $12
    dec c                                         ; $7E3D: $0D
    rrca                                          ; $7E3E: $0F
    nop                                           ; $7E3F: $00
    jr c, jr_00C_7E12                             ; $7E40: $38 $D0

    ldh a, [rP1]                                  ; $7E42: $F0 $00
    add b                                         ; $7E44: $80
    nop                                           ; $7E45: $00
    ret nz                                        ; $7E46: $C0

    nop                                           ; $7E47: $00
    ret nz                                        ; $7E48: $C0

    nop                                           ; $7E49: $00
    and b                                         ; $7E4A: $A0
    ld b, b                                       ; $7E4B: $40
    and b                                         ; $7E4C: $A0
    ld b, b                                       ; $7E4D: $40
    ret nz                                        ; $7E4E: $C0

    nop                                           ; $7E4F: $00
    jr c, jr_00C_7E22                             ; $7E50: $38 $D0

    ldh a, [rP1]                                  ; $7E52: $F0 $00
    add b                                         ; $7E54: $80
    nop                                           ; $7E55: $00
    ret nz                                        ; $7E56: $C0

    nop                                           ; $7E57: $00
    ret nz                                        ; $7E58: $C0

    nop                                           ; $7E59: $00
    add b                                         ; $7E5A: $80

jr_00C_7E5B:
    nop                                           ; $7E5B: $00
    add b                                         ; $7E5C: $80
    nop                                           ; $7E5D: $00
    add b                                         ; $7E5E: $80
    nop                                           ; $7E5F: $00
    ld a, h                                       ; $7E60: $7C
    dec sp                                        ; $7E61: $3B
    ccf                                           ; $7E62: $3F
    nop                                           ; $7E63: $00
    dec bc                                        ; $7E64: $0B
    inc b                                         ; $7E65: $04
    dec bc                                        ; $7E66: $0B
    inc b                                         ; $7E67: $04
    dec bc                                        ; $7E68: $0B
    inc b                                         ; $7E69: $04
    ld [de], a                                    ; $7E6A: $12
    dec c                                         ; $7E6B: $0D
    ld [de], a                                    ; $7E6C: $12
    dec c                                         ; $7E6D: $0D
    rrca                                          ; $7E6E: $0F
    nop                                           ; $7E6F: $00
    ld e, $E7                                     ; $7E70: $1E $E7
    rst $30                                       ; $7E72: $F7
    rrca                                          ; $7E73: $0F
    cp e                                          ; $7E74: $BB
    ld b, a                                       ; $7E75: $47
    call $CA32                                    ; $7E76: $CD $32 $CA
    jr nc, jr_00C_7E2B                            ; $7E79: $30 $B0

    nop                                           ; $7E7B: $00
    add b                                         ; $7E7C: $80
    nop                                           ; $7E7D: $00
    add b                                         ; $7E7E: $80
    nop                                           ; $7E7F: $00
    add b                                         ; $7E80: $80
    nop                                           ; $7E81: $00
    ld b, b                                       ; $7E82: $40
    add b                                         ; $7E83: $80
    add b                                         ; $7E84: $80
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
    rra                                           ; $7E90: $1F
    ld c, $0F                                     ; $7E91: $0E $0F
    nop                                           ; $7E93: $00
    dec b                                         ; $7E94: $05
    ld [bc], a                                    ; $7E95: $02
    dec b                                         ; $7E96: $05
    ld [bc], a                                    ; $7E97: $02
    dec b                                         ; $7E98: $05
    ld [bc], a                                    ; $7E99: $02
    add hl, bc                                    ; $7E9A: $09
    ld b, $09                                     ; $7E9B: $06 $09
    ld b, $07                                     ; $7E9D: $06 $07
    nop                                           ; $7E9F: $00
    ld e, $E7                                     ; $7EA0: $1E $E7
    rst $30                                       ; $7EA2: $F7
    rrca                                          ; $7EA3: $0F
    cp e                                          ; $7EA4: $BB
    ld b, a                                       ; $7EA5: $47
    call $CE32                                    ; $7EA6: $CD $32 $CE
    jr nc, jr_00C_7E5B                            ; $7EA9: $30 $B0

    nop                                           ; $7EAB: $00
    add b                                         ; $7EAC: $80
    nop                                           ; $7EAD: $00
    add b                                         ; $7EAE: $80
    nop                                           ; $7EAF: $00
    db $10                                        ; $7EB0: $10
    ldh [$E0], a                                  ; $7EB1: $E0 $E0
    nop                                           ; $7EB3: $00
    jp $F500                                      ; $7EB4: $C3 $00 $F5


    inc bc                                        ; $7EB7: $03
    call $CD33                                    ; $7EB8: $CD $33 $CD

jr_00C_7EBB:
    inc sp                                        ; $7EBB: $33
    or l                                          ; $7EBC: $B5
    inc bc                                        ; $7EBD: $03
    add e                                         ; $7EBE: $83
    nop                                           ; $7EBF: $00
    nop                                           ; $7EC0: $00
    nop                                           ; $7EC1: $00
    nop                                           ; $7EC2: $00
    nop                                           ; $7EC3: $00
    ret nz                                        ; $7EC4: $C0

    nop                                           ; $7EC5: $00
    and b                                         ; $7EC6: $A0
    ret nz                                        ; $7EC7: $C0

    and b                                         ; $7EC8: $A0
    ret nz                                        ; $7EC9: $C0

    and b                                         ; $7ECA: $A0
    ret nz                                        ; $7ECB: $C0

    and b                                         ; $7ECC: $A0
    ret nz                                        ; $7ECD: $C0

    ret nz                                        ; $7ECE: $C0

    nop                                           ; $7ECF: $00
    jr nz, @-$3E                                  ; $7ED0: $20 $C0

    and b                                         ; $7ED2: $A0
    ld b, b                                       ; $7ED3: $40
    and b                                         ; $7ED4: $A0
    ld b, b                                       ; $7ED5: $40
    or b                                          ; $7ED6: $B0

jr_00C_7ED7:
    ld b, b                                       ; $7ED7: $40
    ld hl, sp+$30                                 ; $7ED8: $F8 $30
    db $FC                                        ; $7EDA: $FC
    ld a, b                                       ; $7EDB: $78
    db $FC                                        ; $7EDC: $FC
    jr c, jr_00C_7ED7                             ; $7EDD: $38 $F8

    nop                                           ; $7EDF: $00
    inc b                                         ; $7EE0: $04
    inc bc                                        ; $7EE1: $03
    dec b                                         ; $7EE2: $05
    ld [bc], a                                    ; $7EE3: $02
    dec b                                         ; $7EE4: $05
    ld [bc], a                                    ; $7EE5: $02
    dec b                                         ; $7EE6: $05
    ld [bc], a                                    ; $7EE7: $02
    dec bc                                        ; $7EE8: $0B

jr_00C_7EE9:
    inc b                                         ; $7EE9: $04
    rrca                                          ; $7EEA: $0F
    ld bc, $0F1F                                  ; $7EEB: $01 $1F $0F
    rrca                                          ; $7EEE: $0F
    nop                                           ; $7EEF: $00
    add b                                         ; $7EF0: $80
    nop                                           ; $7EF1: $00
    ld b, b                                       ; $7EF2: $40
    add b                                         ; $7EF3: $80
    ld b, b                                       ; $7EF4: $40
    add b                                         ; $7EF5: $80
    ld [hl], b                                    ; $7EF6: $70
    add b                                         ; $7EF7: $80
    ld hl, sp+$30                                 ; $7EF8: $F8 $30
    ld hl, sp-$50                                 ; $7EFA: $F8 $B0
    ldh a, [$80]                                  ; $7EFC: $F0 $80
    ret nz                                        ; $7EFE: $C0

    nop                                           ; $7EFF: $00
    ld a, [hl-]                                   ; $7F00: $3A
    dec b                                         ; $7F01: $05
    inc a                                         ; $7F02: $3C
    inc de                                        ; $7F03: $13
    rra                                           ; $7F04: $1F
    nop                                           ; $7F05: $00
    dec bc                                        ; $7F06: $0B
    inc b                                         ; $7F07: $04
    dec bc                                        ; $7F08: $0B
    inc b                                         ; $7F09: $04
    inc b                                         ; $7F0A: $04
    inc bc                                        ; $7F0B: $03
    dec b                                         ; $7F0C: $05
    ld [bc], a                                    ; $7F0D: $02
    inc bc                                        ; $7F0E: $03
    nop                                           ; $7F0F: $00
    ld e, h                                       ; $7F10: $5C
    and b                                         ; $7F11: $A0
    inc a                                         ; $7F12: $3C
    ret z                                         ; $7F13: $C8

    ld hl, sp+$00                                 ; $7F14: $F8 $00
    ret nc                                        ; $7F16: $D0

    jr nz, jr_00C_7EE9                            ; $7F17: $20 $D0

    jr nz, jr_00C_7EBB                            ; $7F19: $20 $A0

    ld b, b                                       ; $7F1B: $40
    jr nz, @-$3E                                  ; $7F1C: $20 $C0

    ldh [rP1], a                                  ; $7F1E: $E0 $00
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
