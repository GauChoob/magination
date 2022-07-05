SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

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
    stop                                          ; $400A: $10 $00
    jr c, jr_00A_401E                             ; $400C: $38 $10

    ld a, c                                       ; $400E: $79
    jr nc, jr_00A_4011                            ; $400F: $30 $00

jr_00A_4011:
    nop                                           ; $4011: $00
    nop                                           ; $4012: $00
    nop                                           ; $4013: $00
    inc a                                         ; $4014: $3C
    nop                                           ; $4015: $00
    ld b, d                                       ; $4016: $42
    inc a                                         ; $4017: $3C
    add c                                         ; $4018: $81
    ld a, [hl]                                    ; $4019: $7E
    jp $FF3C                                      ; $401A: $C3 $3C $FF


    ld b, d                                       ; $401D: $42

jr_00A_401E:
    rst $38                                       ; $401E: $FF
    ld a, [hl]                                    ; $401F: $7E
    ld a, a                                       ; $4020: $7F
    jr c, @+$01                                   ; $4021: $38 $FF

    ld a, [hl]                                    ; $4023: $7E
    rst $38                                       ; $4024: $FF
    ld a, [hl]                                    ; $4025: $7E
    rst $38                                       ; $4026: $FF
    ld a, [hl]                                    ; $4027: $7E
    ld a, a                                       ; $4028: $7F
    ld a, $7F                                     ; $4029: $3E $7F
    ld a, $7F                                     ; $402B: $3E $7F
    ld e, $3F                                     ; $402D: $1E $3F
    inc c                                         ; $402F: $0C
    rst $38                                       ; $4030: $FF
    inc a                                         ; $4031: $3C
    cp l                                          ; $4032: $BD
    ld b, d                                       ; $4033: $42
    jp $FF3C                                      ; $4034: $C3 $3C $FF


    nop                                           ; $4037: $00
    rst $20                                       ; $4038: $E7
    ld a, [hl]                                    ; $4039: $7E
    db $DB                                        ; $403A: $DB
    rst $20                                       ; $403B: $E7
    db $DB                                        ; $403C: $DB
    ld h, [hl]                                    ; $403D: $66
    rst $20                                       ; $403E: $E7
    inc a                                         ; $403F: $3C
    ld a, a                                       ; $4040: $7F
    jr nz, jr_00A_40C0                            ; $4041: $20 $7D

    ld a, [hl-]                                   ; $4043: $3A
    ld a, l                                       ; $4044: $7D
    ld a, [hl-]                                   ; $4045: $3A
    inc a                                         ; $4046: $3C
    dec de                                        ; $4047: $1B
    ld a, $19                                     ; $4048: $3E $19
    ld a, a                                       ; $404A: $7F
    ld a, $7F                                     ; $404B: $3E $7F
    inc a                                         ; $404D: $3C
    ld a, a                                       ; $404E: $7F
    ld a, $FF                                     ; $404F: $3E $FF
    nop                                           ; $4051: $00
    rst $38                                       ; $4052: $FF
    nop                                           ; $4053: $00
    rst $38                                       ; $4054: $FF
    nop                                           ; $4055: $00
    rst $38                                       ; $4056: $FF
    ld a, [hl]                                    ; $4057: $7E
    rst $38                                       ; $4058: $FF
    nop                                           ; $4059: $00
    rst $38                                       ; $405A: $FF
    ld a, [hl]                                    ; $405B: $7E
    rst $38                                       ; $405C: $FF
    ld a, [hl]                                    ; $405D: $7E
    rst $38                                       ; $405E: $FF
    inc a                                         ; $405F: $3C
    ld a, a                                       ; $4060: $7F
    inc a                                         ; $4061: $3C
    ccf                                           ; $4062: $3F
    nop                                           ; $4063: $00
    ccf                                           ; $4064: $3F
    ld bc, $003F                                  ; $4065: $01 $3F $00
    daa                                           ; $4068: $27
    add hl, de                                    ; $4069: $19
    daa                                           ; $406A: $27
    dec de                                        ; $406B: $1B
    daa                                           ; $406C: $27
    dec de                                        ; $406D: $1B
    ld b, e                                       ; $406E: $43
    inc a                                         ; $406F: $3C
    rst $38                                       ; $4070: $FF
    cp l                                          ; $4071: $BD
    rst $38                                       ; $4072: $FF
    cp l                                          ; $4073: $BD
    rst $38                                       ; $4074: $FF
    db $DB                                        ; $4075: $DB
    rst $38                                       ; $4076: $FF
    jr @+$01                                      ; $4077: $18 $FF

    db $DB                                        ; $4079: $DB

jr_00A_407A:
    rst $38                                       ; $407A: $FF
    rst $20                                       ; $407B: $E7
    rst $38                                       ; $407C: $FF
    jp $18E7                                      ; $407D: $C3 $E7 $18


    ld b, a                                       ; $4080: $47
    jr c, @+$41                                   ; $4081: $38 $3F

    nop                                           ; $4083: $00
    rlca                                          ; $4084: $07
    nop                                           ; $4085: $00
    rrca                                          ; $4086: $0F
    inc bc                                        ; $4087: $03
    rra                                           ; $4088: $1F
    rrca                                          ; $4089: $0F
    ccf                                           ; $408A: $3F
    rra                                           ; $408B: $1F
    ccf                                           ; $408C: $3F
    rra                                           ; $408D: $1F
    rra                                           ; $408E: $1F
    nop                                           ; $408F: $00
    rst $20                                       ; $4090: $E7
    jr jr_00A_407A                                ; $4091: $18 $E7

    jr @+$01                                      ; $4093: $18 $FF

    nop                                           ; $4095: $00
    rst $20                                       ; $4096: $E7
    add c                                         ; $4097: $81
    rst $20                                       ; $4098: $E7
    jp $81C3                                      ; $4099: $C3 $C3 $81


    add c                                         ; $409C: $81
    nop                                           ; $409D: $00
    nop                                           ; $409E: $00
    nop                                           ; $409F: $00
    ccf                                           ; $40A0: $3F
    inc c                                         ; $40A1: $0C
    ccf                                           ; $40A2: $3F
    nop                                           ; $40A3: $00
    ccf                                           ; $40A4: $3F
    inc b                                         ; $40A5: $04
    cpl                                           ; $40A6: $2F
    ld d, $2F                                     ; $40A7: $16 $2F
    rla                                           ; $40A9: $17
    cpl                                           ; $40AA: $2F
    rla                                           ; $40AB: $17
    cpl                                           ; $40AC: $2F
    inc de                                        ; $40AD: $13
    cpl                                           ; $40AE: $2F
    inc de                                        ; $40AF: $13
    rst $20                                       ; $40B0: $E7
    inc a                                         ; $40B1: $3C
    rst $38                                       ; $40B2: $FF
    nop                                           ; $40B3: $00
    rst $38                                       ; $40B4: $FF
    nop                                           ; $40B5: $00
    rst $38                                       ; $40B6: $FF
    ld a, $FF                                     ; $40B7: $3E $FF
    add b                                         ; $40B9: $80
    rst $38                                       ; $40BA: $FF
    xor $FF                                       ; $40BB: $EE $FF
    adc $FF                                       ; $40BD: $CE $FF

jr_00A_40BF:
    db $EC                                        ; $40BF: $EC

jr_00A_40C0:
    db $FC                                        ; $40C0: $FC
    jr nc, jr_00A_40BF                            ; $40C1: $30 $FC

    ld [$18FC], sp                                ; $40C3: $08 $FC $18
    db $FC                                        ; $40C6: $FC

jr_00A_40C7:
    jr c, @-$02                                   ; $40C7: $38 $FC

    jr c, jr_00A_40C7                             ; $40C9: $38 $FC

    ld [hl], b                                    ; $40CB: $70
    db $FC                                        ; $40CC: $FC
    ld h, b                                       ; $40CD: $60
    db $FC                                        ; $40CE: $FC
    ld h, b                                       ; $40CF: $60
    daa                                           ; $40D0: $27
    add hl, de                                    ; $40D1: $19
    daa                                           ; $40D2: $27
    jr jr_00A_40FC                                ; $40D3: $18 $27

    add hl, de                                    ; $40D5: $19
    daa                                           ; $40D6: $27
    jr @+$29                                      ; $40D7: $18 $27

jr_00A_40D9:
    add hl, de                                    ; $40D9: $19
    daa                                           ; $40DA: $27
    dec de                                        ; $40DB: $1B
    daa                                           ; $40DC: $27

jr_00A_40DD:
    dec de                                        ; $40DD: $1B
    ld b, e                                       ; $40DE: $43

jr_00A_40DF:
    inc a                                         ; $40DF: $3C
    rst $38                                       ; $40E0: $FF
    call $1DFF                                    ; $40E1: $CD $FF $1D
    rst $38                                       ; $40E4: $FF

jr_00A_40E5:
    sbc e                                         ; $40E5: $9B
    rst $38                                       ; $40E6: $FF
    jr nc, @+$01                                  ; $40E7: $30 $FF

    xor a                                         ; $40E9: $AF
    rst $38                                       ; $40EA: $FF
    rst $08                                       ; $40EB: $CF
    rst $38                                       ; $40EC: $FF
    rst $00                                       ; $40ED: $C7

jr_00A_40EE:
    rst $20                                       ; $40EE: $E7
    jr jr_00A_40E5                                ; $40EF: $18 $F4

    ld c, b                                       ; $40F1: $48
    db $E4                                        ; $40F2: $E4
    jr jr_00A_40D9                                ; $40F3: $18 $E4

    sbc b                                         ; $40F5: $98
    db $E4                                        ; $40F6: $E4
    jr jr_00A_40DD                                ; $40F7: $18 $E4

    jr jr_00A_40DF                                ; $40F9: $18 $E4

    sbc b                                         ; $40FB: $98

jr_00A_40FC:
    db $E4                                        ; $40FC: $E4
    sbc b                                         ; $40FD: $98
    jp nz, $3D3C                                  ; $40FE: $C2 $3C $3D

    nop                                           ; $4101: $00
    ld bc, $0100                                  ; $4102: $01 $00 $01
    nop                                           ; $4105: $00
    nop                                           ; $4106: $00
    nop                                           ; $4107: $00
    nop                                           ; $4108: $00
    nop                                           ; $4109: $00
    nop                                           ; $410A: $00
    nop                                           ; $410B: $00
    nop                                           ; $410C: $00
    nop                                           ; $410D: $00
    nop                                           ; $410E: $00
    nop                                           ; $410F: $00
    rst $38                                       ; $4110: $FF
    nop                                           ; $4111: $00
    rst $38                                       ; $4112: $FF
    ret nz                                        ; $4113: $C0

    rst $38                                       ; $4114: $FF
    ldh [rIE], a                                  ; $4115: $E0 $FF
    ld c, b                                       ; $4117: $48
    ld a, a                                       ; $4118: $7F
    rrca                                          ; $4119: $0F
    rra                                           ; $411A: $1F
    rrca                                          ; $411B: $0F
    rrca                                          ; $411C: $0F
    rlca                                          ; $411D: $07
    rlca                                          ; $411E: $07
    nop                                           ; $411F: $00
    db $FC                                        ; $4120: $FC
    nop                                           ; $4121: $00
    ret nz                                        ; $4122: $C0

    nop                                           ; $4123: $00
    add b                                         ; $4124: $80
    nop                                           ; $4125: $00
    add b                                         ; $4126: $80
    nop                                           ; $4127: $00
    ret nz                                        ; $4128: $C0

    add b                                         ; $4129: $80
    ret nz                                        ; $412A: $C0

    add b                                         ; $412B: $80
    add b                                         ; $412C: $80
    nop                                           ; $412D: $00
    nop                                           ; $412E: $00
    nop                                           ; $412F: $00
    nop                                           ; $4130: $00
    nop                                           ; $4131: $00
    nop                                           ; $4132: $00
    nop                                           ; $4133: $00
    nop                                           ; $4134: $00
    nop                                           ; $4135: $00
    nop                                           ; $4136: $00
    nop                                           ; $4137: $00
    nop                                           ; $4138: $00
    nop                                           ; $4139: $00
    stop                                          ; $413A: $10 $00
    jr c, jr_00A_414E                             ; $413C: $38 $10

    ld a, c                                       ; $413E: $79
    jr nc, jr_00A_4141                            ; $413F: $30 $00

jr_00A_4141:
    nop                                           ; $4141: $00
    nop                                           ; $4142: $00
    nop                                           ; $4143: $00
    inc a                                         ; $4144: $3C
    nop                                           ; $4145: $00
    ld b, d                                       ; $4146: $42
    inc a                                         ; $4147: $3C
    add c                                         ; $4148: $81
    ld a, [hl]                                    ; $4149: $7E
    rst $38                                       ; $414A: $FF
    nop                                           ; $414B: $00
    rst $38                                       ; $414C: $FF
    ld a, [hl]                                    ; $414D: $7E

jr_00A_414E:
    rst $38                                       ; $414E: $FF
    nop                                           ; $414F: $00
    ld a, a                                       ; $4150: $7F
    jr c, @+$01                                   ; $4151: $38 $FF

    ld a, a                                       ; $4153: $7F
    rst $38                                       ; $4154: $FF
    ld a, a                                       ; $4155: $7F
    rst $38                                       ; $4156: $FF
    ld a, a                                       ; $4157: $7F
    ld a, a                                       ; $4158: $7F
    ccf                                           ; $4159: $3F
    ld a, a                                       ; $415A: $7F
    ld a, $7F                                     ; $415B: $3E $7F
    ld e, $3F                                     ; $415D: $1E $3F
    inc c                                         ; $415F: $0C
    rst $38                                       ; $4160: $FF
    rst $38                                       ; $4161: $FF
    rst $38                                       ; $4162: $FF
    rst $38                                       ; $4163: $FF
    rst $38                                       ; $4164: $FF
    rst $38                                       ; $4165: $FF
    rst $38                                       ; $4166: $FF
    rst $38                                       ; $4167: $FF
    rst $38                                       ; $4168: $FF
    nop                                           ; $4169: $00
    rst $20                                       ; $416A: $E7
    jr jr_00A_40EE                                ; $416B: $18 $81

    ld a, [hl]                                    ; $416D: $7E
    nop                                           ; $416E: $00
    rst $38                                       ; $416F: $FF
    ld a, $01                                     ; $4170: $3E $01
    jr c, @+$09                                   ; $4172: $38 $07

    jr nc, jr_00A_4185                            ; $4174: $30 $0F

    jr nc, jr_00A_4187                            ; $4176: $30 $0F

    jr nz, @+$21                                  ; $4178: $20 $1F

    jr nz, @+$21                                  ; $417A: $20 $1F

    jr nz, jr_00A_419D                            ; $417C: $20 $1F

    jr nz, jr_00A_419F                            ; $417E: $20 $1F

    nop                                           ; $4180: $00
    rst $38                                       ; $4181: $FF
    nop                                           ; $4182: $00
    rst $38                                       ; $4183: $FF
    nop                                           ; $4184: $00

jr_00A_4185:
    rst $38                                       ; $4185: $FF
    nop                                           ; $4186: $00

jr_00A_4187:
    rst $38                                       ; $4187: $FF
    nop                                           ; $4188: $00
    rst $38                                       ; $4189: $FF
    nop                                           ; $418A: $00
    rst $38                                       ; $418B: $FF
    nop                                           ; $418C: $00
    rst $38                                       ; $418D: $FF
    nop                                           ; $418E: $00
    rst $38                                       ; $418F: $FF
    jr nz, jr_00A_41B1                            ; $4190: $20 $1F

    jr nz, jr_00A_41B3                            ; $4192: $20 $1F

    jr nz, jr_00A_41B5                            ; $4194: $20 $1F

    jr nz, jr_00A_41B7                            ; $4196: $20 $1F

    jr nz, jr_00A_41B9                            ; $4198: $20 $1F

    jr nz, jr_00A_41BB                            ; $419A: $20 $1F

    ld h, b                                       ; $419C: $60

jr_00A_419D:
    rra                                           ; $419D: $1F
    ld b, b                                       ; $419E: $40

jr_00A_419F:
    ccf                                           ; $419F: $3F
    ld b, e                                       ; $41A0: $43
    inc a                                         ; $41A1: $3C
    ccf                                           ; $41A2: $3F
    nop                                           ; $41A3: $00
    rra                                           ; $41A4: $1F
    nop                                           ; $41A5: $00
    ccf                                           ; $41A6: $3F
    jr @+$41                                      ; $41A7: $18 $3F

    rra                                           ; $41A9: $1F
    ccf                                           ; $41AA: $3F
    rrca                                          ; $41AB: $0F
    rra                                           ; $41AC: $1F
    inc bc                                        ; $41AD: $03
    rlca                                          ; $41AE: $07
    nop                                           ; $41AF: $00
    rst $38                                       ; $41B0: $FF

jr_00A_41B1:
    nop                                           ; $41B1: $00
    rst $38                                       ; $41B2: $FF

jr_00A_41B3:
    nop                                           ; $41B3: $00
    rst $38                                       ; $41B4: $FF

jr_00A_41B5:
    nop                                           ; $41B5: $00
    rst $38                                       ; $41B6: $FF

jr_00A_41B7:
    nop                                           ; $41B7: $00
    rst $38                                       ; $41B8: $FF

jr_00A_41B9:
    add c                                         ; $41B9: $81
    rst $20                                       ; $41BA: $E7

jr_00A_41BB:
    jp $C3E7                                      ; $41BB: $C3 $E7 $C3


    jp $2000                                      ; $41BE: $C3 $00 $20


    rra                                           ; $41C1: $1F
    jr nz, jr_00A_41E3                            ; $41C2: $20 $1F

    jr nz, jr_00A_41E5                            ; $41C4: $20 $1F

    jr nz, jr_00A_41E7                            ; $41C6: $20 $1F

    jr nz, jr_00A_41E9                            ; $41C8: $20 $1F

jr_00A_41CA:
    jr nz, jr_00A_41EB                            ; $41CA: $20 $1F

    ld b, b                                       ; $41CC: $40
    ccf                                           ; $41CD: $3F
    ld b, b                                       ; $41CE: $40
    ccf                                           ; $41CF: $3F
    nop                                           ; $41D0: $00
    rst $38                                       ; $41D1: $FF
    nop                                           ; $41D2: $00
    rst $38                                       ; $41D3: $FF
    nop                                           ; $41D4: $00
    rst $38                                       ; $41D5: $FF
    nop                                           ; $41D6: $00
    rst $38                                       ; $41D7: $FF
    nop                                           ; $41D8: $00
    rst $38                                       ; $41D9: $FF
    nop                                           ; $41DA: $00
    rst $38                                       ; $41DB: $FF
    nop                                           ; $41DC: $00
    rst $38                                       ; $41DD: $FF
    rlca                                          ; $41DE: $07
    ld hl, sp+$04                                 ; $41DF: $F8 $04
    ld hl, sp+$04                                 ; $41E1: $F8 $04

jr_00A_41E3:
    ld hl, sp+$04                                 ; $41E3: $F8 $04

jr_00A_41E5:
    ld hl, sp+$04                                 ; $41E5: $F8 $04

jr_00A_41E7:
    ld hl, sp+$04                                 ; $41E7: $F8 $04

jr_00A_41E9:
    ld hl, sp+$04                                 ; $41E9: $F8 $04

jr_00A_41EB:
    ld hl, sp+$02                                 ; $41EB: $F8 $02
    db $FC                                        ; $41ED: $FC
    add d                                         ; $41EE: $82
    ld a, h                                       ; $41EF: $7C
    ld h, b                                       ; $41F0: $60
    rra                                           ; $41F1: $1F
    ccf                                           ; $41F2: $3F
    nop                                           ; $41F3: $00
    ld bc, $0100                                  ; $41F4: $01 $00 $01
    nop                                           ; $41F7: $00
    ld bc, $0000                                  ; $41F8: $01 $00 $00
    nop                                           ; $41FB: $00
    nop                                           ; $41FC: $00
    nop                                           ; $41FD: $00
    nop                                           ; $41FE: $00
    nop                                           ; $41FF: $00
    rst $38                                       ; $4200: $FF
    nop                                           ; $4201: $00
    rst $38                                       ; $4202: $FF
    nop                                           ; $4203: $00
    rst $38                                       ; $4204: $FF
    nop                                           ; $4205: $00
    rst $38                                       ; $4206: $FF
    ldh [rIE], a                                  ; $4207: $E0 $FF
    ld b, a                                       ; $4209: $47
    rst $38                                       ; $420A: $FF
    rrca                                          ; $420B: $0F
    ccf                                           ; $420C: $3F
    ld bc, $001F                                  ; $420D: $01 $1F $00
    and $18                                       ; $4210: $E6 $18
    db $FC                                        ; $4212: $FC
    nop                                           ; $4213: $00
    ret nz                                        ; $4214: $C0

    nop                                           ; $4215: $00
    add b                                         ; $4216: $80
    nop                                           ; $4217: $00
    ret nz                                        ; $4218: $C0

    nop                                           ; $4219: $00
    ret nz                                        ; $421A: $C0

    add b                                         ; $421B: $80
    ret nz                                        ; $421C: $C0

    add b                                         ; $421D: $80
    add b                                         ; $421E: $80
    nop                                           ; $421F: $00
    ccf                                           ; $4220: $3F
    ld [$003F], sp                                ; $4221: $08 $3F $00
    ccf                                           ; $4224: $3F
    nop                                           ; $4225: $00
    cpl                                           ; $4226: $2F
    db $10                                        ; $4227: $10
    ld l, a                                       ; $4228: $6F
    db $10                                        ; $4229: $10
    ld c, a                                       ; $422A: $4F
    jr nc, @+$51                                  ; $422B: $30 $4F

    jr nc, jr_00A_4276                            ; $422D: $30 $47

jr_00A_422F:
    jr c, jr_00A_422F                             ; $422F: $38 $FE

jr_00A_4231:
    jr jr_00A_4231                                ; $4231: $18 $FE

    inc b                                         ; $4233: $04
    cp $0C                                        ; $4234: $FE $0C
    cp $64                                        ; $4236: $FE $64
    db $FC                                        ; $4238: $FC
    ld [hl], b                                    ; $4239: $70
    cp $78                                        ; $423A: $FE $78
    rst $38                                       ; $423C: $FF
    ld [hl], $FF                                  ; $423D: $36 $FF
    ld c, $C7                                     ; $423F: $0E $C7
    jr c, jr_00A_41CA                             ; $4241: $38 $87

    ld a, b                                       ; $4243: $78
    add a                                         ; $4244: $87
    ld a, c                                       ; $4245: $79
    add a                                         ; $4246: $87
    ld a, c                                       ; $4247: $79
    add e                                         ; $4248: $83
    ld a, h                                       ; $4249: $7C
    add e                                         ; $424A: $83
    ld a, l                                       ; $424B: $7D
    add e                                         ; $424C: $83
    ld a, l                                       ; $424D: $7D
    add e                                         ; $424E: $83
    ld a, h                                       ; $424F: $7C
    rst $38                                       ; $4250: $FF
    ld e, $FF                                     ; $4251: $1E $FF
    ld c, $FE                                     ; $4253: $0E $FE
    ret nz                                        ; $4255: $C0

    db $FC                                        ; $4256: $FC
    ldh [$F8], a                                  ; $4257: $E0 $F8
    nop                                           ; $4259: $00
    ld hl, sp-$20                                 ; $425A: $F8 $E0
    ld hl, sp-$20                                 ; $425C: $F8 $E0
    ld hl, sp-$40                                 ; $425E: $F8 $C0
    ld h, c                                       ; $4260: $61
    ld e, $3F                                     ; $4261: $1E $3F
    nop                                           ; $4263: $00
    ld a, a                                       ; $4264: $7F
    nop                                           ; $4265: $00
    rst $38                                       ; $4266: $FF
    jr c, @+$01                                   ; $4267: $38 $FF

    ld a, a                                       ; $4269: $7F
    rst $38                                       ; $426A: $FF
    ld a, a                                       ; $426B: $7F
    rst $38                                       ; $426C: $FF
    rrca                                          ; $426D: $0F
    rra                                           ; $426E: $1F
    nop                                           ; $426F: $00
    ldh a, [rP1]                                  ; $4270: $F0 $00
    ldh a, [rP1]                                  ; $4272: $F0 $00
    ld hl, sp+$00                                 ; $4274: $F8 $00

jr_00A_4276:
    cp $00                                        ; $4276: $FE $00
    rst $38                                       ; $4278: $FF
    ld c, $FF                                     ; $4279: $0E $FF
    add $FF                                       ; $427B: $C6 $FF
    ret nz                                        ; $427D: $C0

    db $FC                                        ; $427E: $FC
    nop                                           ; $427F: $00
    nop                                           ; $4280: $00
    nop                                           ; $4281: $00
    nop                                           ; $4282: $00
    nop                                           ; $4283: $00
    ld bc, $0200                                  ; $4284: $01 $00 $02
    ld bc, $0304                                  ; $4287: $01 $04 $03
    ld [$0F07], sp                                ; $428A: $08 $07 $0F
    nop                                           ; $428D: $00
    rrca                                          ; $428E: $0F
    inc bc                                        ; $428F: $03
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    nop                                           ; $4292: $00
    nop                                           ; $4293: $00
    ret nz                                        ; $4294: $C0

    nop                                           ; $4295: $00
    jr nc, @-$3E                                  ; $4296: $30 $C0

    ld [$04F0], sp                                ; $4298: $08 $F0 $04
    ld hl, sp-$04                                 ; $429B: $F8 $FC
    nop                                           ; $429D: $00
    db $FC                                        ; $429E: $FC
    ld hl, sp+$0F                                 ; $429F: $F8 $0F
    inc b                                         ; $42A1: $04
    rrca                                          ; $42A2: $0F
    ld b, $1F                                     ; $42A3: $06 $1F
    rrca                                          ; $42A5: $0F
    ccf                                           ; $42A6: $3F
    rrca                                          ; $42A7: $0F
    ccf                                           ; $42A8: $3F
    rra                                           ; $42A9: $1F
    ccf                                           ; $42AA: $3F
    rra                                           ; $42AB: $1F
    ld a, a                                       ; $42AC: $7F
    inc e                                         ; $42AD: $1C
    ld a, a                                       ; $42AE: $7F
    ld [$78FC], sp                                ; $42AF: $08 $FC $78
    db $FC                                        ; $42B2: $FC
    nop                                           ; $42B3: $00
    db $E4                                        ; $42B4: $E4
    sbc b                                         ; $42B5: $98
    db $F4                                        ; $42B6: $F4
    add sp, -$08                                  ; $42B7: $E8 $F8
    ldh a, [$FC]                                  ; $42B9: $F0 $FC
    ldh a, [$FE]                                  ; $42BB: $F0 $FE

jr_00A_42BD:
    jr c, jr_00A_42BD                             ; $42BD: $38 $FE

    jr @+$81                                      ; $42BF: $18 $7F

    nop                                           ; $42C1: $00
    ld a, a                                       ; $42C2: $7F
    db $10                                        ; $42C3: $10
    rst $38                                       ; $42C4: $FF
    ld c, $BF                                     ; $42C5: $0E $BF
    ld c, [hl]                                    ; $42C7: $4E
    cp a                                          ; $42C8: $BF
    ld c, [hl]                                    ; $42C9: $4E
    sbc a                                         ; $42CA: $9F
    ld h, b                                       ; $42CB: $60
    sbc a                                         ; $42CC: $9F
    ld l, a                                       ; $42CD: $6F
    sbc a                                         ; $42CE: $9F
    ld l, a                                       ; $42CF: $6F
    cp $04                                        ; $42D0: $FE $04
    cp $0C                                        ; $42D2: $FE $0C
    cp $1C                                        ; $42D4: $FE $1C
    db $FC                                        ; $42D6: $FC
    jr @-$06                                      ; $42D7: $18 $F8

    jr nc, @-$06                                  ; $42D9: $30 $F8

    db $10                                        ; $42DB: $10
    ld hl, sp-$80                                 ; $42DC: $F8 $80
    ld hl, sp+$00                                 ; $42DE: $F8 $00
    sbc a                                         ; $42E0: $9F
    ld l, a                                       ; $42E1: $6F
    sbc a                                         ; $42E2: $9F
    ld l, a                                       ; $42E3: $6F
    sbc a                                         ; $42E4: $9F
    ld h, b                                       ; $42E5: $60
    adc a                                         ; $42E6: $8F
    ld [hl], e                                    ; $42E7: $73
    adc a                                         ; $42E8: $8F
    ld [hl], c                                    ; $42E9: $71
    adc a                                         ; $42EA: $8F
    ld [hl], b                                    ; $42EB: $70
    add a                                         ; $42EC: $87
    ld a, b                                       ; $42ED: $78
    add a                                         ; $42EE: $87
    ld a, b                                       ; $42EF: $78
    ld hl, sp-$50                                 ; $42F0: $F8 $B0
    ld hl, sp+$30                                 ; $42F2: $F8 $30
    ld hl, sp+$30                                 ; $42F4: $F8 $30
    ld hl, sp-$30                                 ; $42F6: $F8 $D0
    ld hl, sp-$80                                 ; $42F8: $F8 $80
    db $FC                                        ; $42FA: $FC
    ld a, b                                       ; $42FB: $78
    db $FC                                        ; $42FC: $FC
    ld hl, sp-$04                                 ; $42FD: $F8 $FC
    jr c, jr_00A_4364                             ; $42FF: $38 $63

    inc e                                         ; $4301: $1C
    rra                                           ; $4302: $1F
    nop                                           ; $4303: $00
    rra                                           ; $4304: $1F
    nop                                           ; $4305: $00
    rra                                           ; $4306: $1F
    nop                                           ; $4307: $00
    rra                                           ; $4308: $1F
    rlca                                          ; $4309: $07
    rra                                           ; $430A: $1F
    rrca                                          ; $430B: $0F
    rra                                           ; $430C: $1F
    rrca                                          ; $430D: $0F
    rra                                           ; $430E: $1F
    nop                                           ; $430F: $00
    ld hl, sp+$00                                 ; $4310: $F8 $00
    ldh a, [rP1]                                  ; $4312: $F0 $00
    ldh [rP1], a                                  ; $4314: $E0 $00
    ldh [rP1], a                                  ; $4316: $E0 $00
    ld hl, sp-$20                                 ; $4318: $F8 $E0
    db $FC                                        ; $431A: $FC
    ld hl, sp-$04                                 ; $431B: $F8 $FC
    ld hl, sp-$04                                 ; $431D: $F8 $FC
    nop                                           ; $431F: $00
    ld a, a                                       ; $4320: $7F
    ld [$007F], sp                                ; $4321: $08 $7F $00
    rst $38                                       ; $4324: $FF
    nop                                           ; $4325: $00
    cp a                                          ; $4326: $BF
    ld e, [hl]                                    ; $4327: $5E
    cp a                                          ; $4328: $BF
    ld e, h                                       ; $4329: $5C
    cp a                                          ; $432A: $BF
    ld b, b                                       ; $432B: $40
    rst $38                                       ; $432C: $FF
    ld a, $FF                                     ; $432D: $3E $FF
    inc a                                         ; $432F: $3C
    cp $18                                        ; $4330: $FE $18
    cp $04                                        ; $4332: $FE $04
    cp $1C                                        ; $4334: $FE $1C
    cp $38                                        ; $4336: $FE $38
    cp $70                                        ; $4338: $FE $70
    rst $38                                       ; $433A: $FF
    ld h, b                                       ; $433B: $60
    rst $38                                       ; $433C: $FF
    ld [hl+], a                                   ; $433D: $22
    rst $38                                       ; $433E: $FF
    ld b, $FF                                     ; $433F: $06 $FF
    ld a, $BF                                     ; $4341: $3E $BF
    ld e, h                                       ; $4343: $5C
    sbc a                                         ; $4344: $9F
    ld h, c                                       ; $4345: $61
    sbc a                                         ; $4346: $9F
    ld h, c                                       ; $4347: $61
    adc a                                         ; $4348: $8F
    ld [hl], b                                    ; $4349: $70
    adc a                                         ; $434A: $8F
    ld [hl], b                                    ; $434B: $70
    adc a                                         ; $434C: $8F
    ld [hl], b                                    ; $434D: $70
    adc a                                         ; $434E: $8F
    ld [hl], b                                    ; $434F: $70
    rst $38                                       ; $4350: $FF
    ld b, $FE                                     ; $4351: $06 $FE
    db $E4                                        ; $4353: $E4
    db $FC                                        ; $4354: $FC
    ldh a, [$F8]                                  ; $4355: $F0 $F8
    ldh a, [$FC]                                  ; $4357: $F0 $FC
    ret nz                                        ; $4359: $C0

    cp $3C                                        ; $435A: $FE $3C
    cp $7C                                        ; $435C: $FE $7C
    cp $1C                                        ; $435E: $FE $1C
    ld b, a                                       ; $4360: $47
    jr c, jr_00A_43A2                             ; $4361: $38 $3F

    nop                                           ; $4363: $00

jr_00A_4364:
    ld a, a                                       ; $4364: $7F
    nop                                           ; $4365: $00
    ld a, a                                       ; $4366: $7F
    nop                                           ; $4367: $00
    rst $38                                       ; $4368: $FF
    jr nc, @+$01                                  ; $4369: $30 $FF

    ld a, c                                       ; $436B: $79
    rst $38                                       ; $436C: $FF
    dec e                                         ; $436D: $1D
    ccf                                           ; $436E: $3F
    nop                                           ; $436F: $00
    db $FC                                        ; $4370: $FC
    nop                                           ; $4371: $00
    ld hl, sp+$00                                 ; $4372: $F8 $00
    ld hl, sp+$00                                 ; $4374: $F8 $00
    cp $18                                        ; $4376: $FE $18
    rst $38                                       ; $4378: $FF
    cp $FF                                        ; $4379: $FE $FF
    cp $FF                                        ; $437B: $FE $FF
    db $FC                                        ; $437D: $FC
    cp $00                                        ; $437E: $FE $00

jr_00A_4380:
    nop                                           ; $4380: $00
    nop                                           ; $4381: $00
    nop                                           ; $4382: $00
    nop                                           ; $4383: $00
    nop                                           ; $4384: $00
    nop                                           ; $4385: $00
    nop                                           ; $4386: $00
    nop                                           ; $4387: $00
    stop                                          ; $4388: $10 $00
    jr c, jr_00A_439C                             ; $438A: $38 $10

    ld a, b                                       ; $438C: $78
    jr nc, @+$80                                  ; $438D: $30 $7E

    jr c, jr_00A_4391                             ; $438F: $38 $00

jr_00A_4391:
    nop                                           ; $4391: $00
    nop                                           ; $4392: $00
    nop                                           ; $4393: $00
    ld a, $00                                     ; $4394: $3E $00
    ld b, c                                       ; $4396: $41
    ld a, $80                                     ; $4397: $3E $80
    ld a, a                                       ; $4399: $7F
    ldh [$1F], a                                  ; $439A: $E0 $1F

jr_00A_439C:
    rst $38                                       ; $439C: $FF
    ld h, b                                       ; $439D: $60
    rst $38                                       ; $439E: $FF
    ccf                                           ; $439F: $3F
    nop                                           ; $43A0: $00
    nop                                           ; $43A1: $00

jr_00A_43A2:
    nop                                           ; $43A2: $00
    nop                                           ; $43A3: $00

jr_00A_43A4:
    nop                                           ; $43A4: $00

jr_00A_43A5:
    nop                                           ; $43A5: $00
    nop                                           ; $43A6: $00
    nop                                           ; $43A7: $00
    sub b                                         ; $43A8: $90
    nop                                           ; $43A9: $00
    cp b                                          ; $43AA: $B8
    db $10                                        ; $43AB: $10
    cp h                                          ; $43AC: $BC

jr_00A_43AD:
    jr jr_00A_43AD                                ; $43AD: $18 $FE

    inc a                                         ; $43AF: $3C
    rst $38                                       ; $43B0: $FF
    ld a, [hl]                                    ; $43B1: $7E
    rst $38                                       ; $43B2: $FF
    ld a, a                                       ; $43B3: $7F
    rst $38                                       ; $43B4: $FF
    ld a, a                                       ; $43B5: $7F
    rst $38                                       ; $43B6: $FF
    ld a, a                                       ; $43B7: $7F
    rst $38                                       ; $43B8: $FF
    ld c, a                                       ; $43B9: $4F
    rst $38                                       ; $43BA: $FF
    ld b, a                                       ; $43BB: $47
    rst $38                                       ; $43BC: $FF
    inc bc                                        ; $43BD: $03
    rst $38                                       ; $43BE: $FF
    jr nz, jr_00A_4380                            ; $43BF: $20 $BF

    ld e, a                                       ; $43C1: $5F
    rst $18                                       ; $43C2: $DF
    jr nz, jr_00A_43A5                            ; $43C3: $20 $E0

    sbc a                                         ; $43C5: $9F
    rst $38                                       ; $43C6: $FF
    add b                                         ; $43C7: $80
    db $FC                                        ; $43C8: $FC
    adc a                                         ; $43C9: $8F
    ei                                            ; $43CA: $FB
    sbc h                                         ; $43CB: $9C
    ei                                            ; $43CC: $FB
    inc e                                         ; $43CD: $1C
    db $FC                                        ; $43CE: $FC
    rrca                                          ; $43CF: $0F
    cp $7C                                        ; $43D0: $FE $7C
    cp $7C                                        ; $43D2: $FE $7C
    cp $7C                                        ; $43D4: $FE $7C
    db $FC                                        ; $43D6: $FC
    ld a, b                                       ; $43D7: $78
    db $FC                                        ; $43D8: $FC
    jr c, jr_00A_4453                             ; $43D9: $38 $78

    sub b                                         ; $43DB: $90
    ld [hl], b                                    ; $43DC: $70
    add b                                         ; $43DD: $80
    ldh [rP1], a                                  ; $43DE: $E0 $00
    rst $38                                       ; $43E0: $FF
    jr c, @+$01                                   ; $43E1: $38 $FF

    jr c, jr_00A_43A4                             ; $43E3: $38 $BF

    ld e, b                                       ; $43E5: $58
    cp a                                          ; $43E6: $BF
    ld e, b                                       ; $43E7: $58
    rst $38                                       ; $43E8: $FF
    ld a, $FF                                     ; $43E9: $3E $FF
    inc a                                         ; $43EB: $3C
    rst $38                                       ; $43EC: $FF
    ld a, $FF                                     ; $43ED: $3E $FF
    inc a                                         ; $43EF: $3C
    rst $38                                       ; $43F0: $FF
    nop                                           ; $43F1: $00
    rst $38                                       ; $43F2: $FF
    nop                                           ; $43F3: $00
    rst $38                                       ; $43F4: $FF
    nop                                           ; $43F5: $00
    rst $38                                       ; $43F6: $FF
    ld e, $FF                                     ; $43F7: $1E $FF
    nop                                           ; $43F9: $00
    rst $38                                       ; $43FA: $FF
    ld e, $FF                                     ; $43FB: $1E $FF
    ld e, $FF                                     ; $43FD: $1E $FF
    ld e, $E0                                     ; $43FF: $1E $E0
    nop                                           ; $4401: $00
    ret nz                                        ; $4402: $C0

    nop                                           ; $4403: $00
    ret nz                                        ; $4404: $C0

    nop                                           ; $4405: $00
    ret nz                                        ; $4406: $C0

    nop                                           ; $4407: $00
    ret nz                                        ; $4408: $C0

    nop                                           ; $4409: $00
    ret nz                                        ; $440A: $C0

    nop                                           ; $440B: $00
    ldh [rLCDC], a                                ; $440C: $E0 $40
    ldh [rLCDC], a                                ; $440E: $E0 $40
    cp a                                          ; $4410: $BF
    ld b, b                                       ; $4411: $40
    cp a                                          ; $4412: $BF
    ld e, a                                       ; $4413: $5F
    cp a                                          ; $4414: $BF
    ld e, [hl]                                    ; $4415: $5E
    cp a                                          ; $4416: $BF
    ld b, b                                       ; $4417: $40
    add a                                         ; $4418: $87
    ld a, b                                       ; $4419: $78
    ld b, e                                       ; $441A: $43
    dec a                                         ; $441B: $3D
    ld b, a                                       ; $441C: $47
    dec sp                                        ; $441D: $3B
    ld b, a                                       ; $441E: $47
    add hl, sp                                    ; $441F: $39
    rst $38                                       ; $4420: $FF
    ld e, l                                       ; $4421: $5D
    rst $38                                       ; $4422: $FF
    ld l, l                                       ; $4423: $6D
    rst $38                                       ; $4424: $FF
    ld l, l                                       ; $4425: $6D
    rst $38                                       ; $4426: $FF
    db $EC                                        ; $4427: $EC
    rst $38                                       ; $4428: $FF
    dec hl                                        ; $4429: $2B
    rst $38                                       ; $442A: $FF
    jp $E1FF                                      ; $442B: $C3 $FF $E1


    rst $38                                       ; $442E: $FF
    ldh [$E0], a                                  ; $442F: $E0 $E0
    ld b, b                                       ; $4431: $40
    ret nz                                        ; $4432: $C0

    nop                                           ; $4433: $00
    add b                                         ; $4434: $80
    nop                                           ; $4435: $00
    add b                                         ; $4436: $80
    nop                                           ; $4437: $00
    add b                                         ; $4438: $80
    nop                                           ; $4439: $00
    ret nz                                        ; $443A: $C0

    add b                                         ; $443B: $80
    ret nz                                        ; $443C: $C0

    add b                                         ; $443D: $80
    ret nz                                        ; $443E: $C0

    nop                                           ; $443F: $00
    ld c, a                                       ; $4440: $4F
    jr nc, jr_00A_4482                            ; $4441: $30 $3F

    nop                                           ; $4443: $00
    rrca                                          ; $4444: $0F
    nop                                           ; $4445: $00
    rrca                                          ; $4446: $0F
    inc bc                                        ; $4447: $03
    rrca                                          ; $4448: $0F
    rlca                                          ; $4449: $07
    rlca                                          ; $444A: $07
    inc bc                                        ; $444B: $03
    inc bc                                        ; $444C: $03
    ld bc, $0001                                  ; $444D: $01 $01 $00
    rst $38                                       ; $4450: $FF
    nop                                           ; $4451: $00
    rst $38                                       ; $4452: $FF

jr_00A_4453:
    nop                                           ; $4453: $00
    rst $08                                       ; $4454: $CF
    inc bc                                        ; $4455: $03
    rst $28                                       ; $4456: $EF
    add a                                         ; $4457: $87
    rst $30                                       ; $4458: $F7
    db $E3                                        ; $4459: $E3
    ei                                            ; $445A: $FB
    pop af                                        ; $445B: $F1
    ld sp, hl                                     ; $445C: $F9
    ldh a, [$F0]                                  ; $445D: $F0 $F0
    nop                                           ; $445F: $00
    ret nz                                        ; $4460: $C0

    nop                                           ; $4461: $00
    ret nz                                        ; $4462: $C0

    nop                                           ; $4463: $00
    ldh [$80], a                                  ; $4464: $E0 $80
    ldh a, [$E0]                                  ; $4466: $F0 $E0
    ld hl, sp-$10                                 ; $4468: $F8 $F0
    ld hl, sp-$10                                 ; $446A: $F8 $F0
    ldh a, [rP1]                                  ; $446C: $F0 $00
    nop                                           ; $446E: $00
    nop                                           ; $446F: $00
    nop                                           ; $4470: $00
    nop                                           ; $4471: $00
    inc bc                                        ; $4472: $03
    nop                                           ; $4473: $00
    rlca                                          ; $4474: $07
    inc bc                                        ; $4475: $03
    rrca                                          ; $4476: $0F
    rlca                                          ; $4477: $07
    rrca                                          ; $4478: $0F
    rlca                                          ; $4479: $07
    rrca                                          ; $447A: $0F
    nop                                           ; $447B: $00
    ld a, [de]                                    ; $447C: $1A
    dec b                                         ; $447D: $05
    ld a, $01                                     ; $447E: $3E $01
    nop                                           ; $4480: $00
    nop                                           ; $4481: $00

jr_00A_4482:
    ldh [rP1], a                                  ; $4482: $E0 $00
    ldh a, [$E0]                                  ; $4484: $F0 $E0
    ld hl, sp-$10                                 ; $4486: $F8 $F0
    ld hl, sp-$10                                 ; $4488: $F8 $F0
    ld hl, sp+$00                                 ; $448A: $F8 $00
    cp b                                          ; $448C: $B8
    ld [hl], b                                    ; $448D: $70
    cp b                                          ; $448E: $B8
    ld [hl], b                                    ; $448F: $70
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    rlca                                          ; $4492: $07
    nop                                           ; $4493: $00
    rrca                                          ; $4494: $0F
    rlca                                          ; $4495: $07
    rra                                           ; $4496: $1F
    rrca                                          ; $4497: $0F
    rra                                           ; $4498: $1F
    rrca                                          ; $4499: $0F
    rra                                           ; $449A: $1F
    rrca                                          ; $449B: $0F
    rra                                           ; $449C: $1F
    nop                                           ; $449D: $00
    ld a, [hl+]                                   ; $449E: $2A
    dec d                                         ; $449F: $15
    nop                                           ; $44A0: $00
    nop                                           ; $44A1: $00
    ldh [rP1], a                                  ; $44A2: $E0 $00
    ldh a, [$E0]                                  ; $44A4: $F0 $E0
    ld hl, sp-$10                                 ; $44A6: $F8 $F0
    ld hl, sp-$10                                 ; $44A8: $F8 $F0
    ld hl, sp-$10                                 ; $44AA: $F8 $F0
    ld hl, sp+$00                                 ; $44AC: $F8 $00
    ld [hl], h                                    ; $44AE: $74
    add sp, $00                                   ; $44AF: $E8 $00
    nop                                           ; $44B1: $00
    ldh [rP1], a                                  ; $44B2: $E0 $00
    ldh a, [$E0]                                  ; $44B4: $F0 $E0
    ld hl, sp-$10                                 ; $44B6: $F8 $F0
    ld hl, sp-$10                                 ; $44B8: $F8 $F0
    ld hl, sp-$10                                 ; $44BA: $F8 $F0
    ld hl, sp-$10                                 ; $44BC: $F8 $F0
    db $F4                                        ; $44BE: $F4
    add sp, $00                                   ; $44BF: $E8 $00
    nop                                           ; $44C1: $00
    rlca                                          ; $44C2: $07
    nop                                           ; $44C3: $00
    rrca                                          ; $44C4: $0F
    rlca                                          ; $44C5: $07
    rra                                           ; $44C6: $1F
    rrca                                          ; $44C7: $0F
    rra                                           ; $44C8: $1F
    rrca                                          ; $44C9: $0F
    rra                                           ; $44CA: $1F
    rrca                                          ; $44CB: $0F
    rra                                           ; $44CC: $1F
    rrca                                          ; $44CD: $0F
    rrca                                          ; $44CE: $0F
    nop                                           ; $44CF: $00
    nop                                           ; $44D0: $00
    nop                                           ; $44D1: $00
    ldh a, [rP1]                                  ; $44D2: $F0 $00
    ld hl, sp-$10                                 ; $44D4: $F8 $F0
    ld hl, sp-$10                                 ; $44D6: $F8 $F0
    ld hl, sp-$20                                 ; $44D8: $F8 $E0
    add sp, -$30                                  ; $44DA: $E8 $D0
    ret z                                         ; $44DC: $C8

    jr nc, @+$2A                                  ; $44DD: $30 $28

    ret nc                                        ; $44DF: $D0

    nop                                           ; $44E0: $00
    nop                                           ; $44E1: $00
    nop                                           ; $44E2: $00
    nop                                           ; $44E3: $00
    ldh [rP1], a                                  ; $44E4: $E0 $00
    ldh a, [$E0]                                  ; $44E6: $F0 $E0
    ld hl, sp-$10                                 ; $44E8: $F8 $F0
    ld hl, sp-$10                                 ; $44EA: $F8 $F0
    ld hl, sp-$10                                 ; $44EC: $F8 $F0
    ld hl, sp-$10                                 ; $44EE: $F8 $F0
    cpl                                           ; $44F0: $2F
    nop                                           ; $44F1: $00
    add hl, bc                                    ; $44F2: $09
    ld b, $10                                     ; $44F3: $06 $10
    rrca                                          ; $44F5: $0F
    dec h                                         ; $44F6: $25
    ld a, [de]                                    ; $44F7: $1A
    inc a                                         ; $44F8: $3C
    dec de                                        ; $44F9: $1B
    ld e, $0D                                     ; $44FA: $1E $0D
    dec e                                         ; $44FC: $1D
    ld c, $09                                     ; $44FD: $0E $09
    ld b, $18                                     ; $44FF: $06 $18
    ldh [$F0], a                                  ; $4501: $E0 $F0
    nop                                           ; $4503: $00
    ld l, b                                       ; $4504: $68
    sub b                                         ; $4505: $90
    ld [$F8F0], sp                                ; $4506: $08 $F0 $F8
    nop                                           ; $4509: $00
    inc e                                         ; $450A: $1C
    ldh [rNR14], a                                ; $450B: $E0 $14
    add sp, -$08                                  ; $450D: $E8 $F8
    nop                                           ; $450F: $00
    ld a, [de]                                    ; $4510: $1A
    dec b                                         ; $4511: $05
    inc c                                         ; $4512: $0C
    inc bc                                        ; $4513: $03
    rla                                           ; $4514: $17
    ld [$1C23], sp                                ; $4515: $08 $23 $1C
    jr c, jr_00A_4531                             ; $4518: $38 $17

    jr c, jr_00A_4533                             ; $451A: $38 $17

    inc [hl]                                      ; $451C: $34
    dec de                                        ; $451D: $1B
    daa                                           ; $451E: $27
    jr jr_00A_4599                                ; $451F: $18 $78

    ldh [$30], a                                  ; $4521: $E0 $30
    ret nz                                        ; $4523: $C0

    add sp, $10                                   ; $4524: $E8 $10

jr_00A_4526:
    call nz, $1C38                                ; $4526: $C4 $38 $1C
    add sp, $1C                                   ; $4529: $E8 $1C
    add sp, $2C                                   ; $452B: $E8 $2C

jr_00A_452D:
    ret c                                         ; $452D: $D8

    db $E4                                        ; $452E: $E4
    jr jr_00A_4550                                ; $452F: $18 $1F

jr_00A_4531:
    inc bc                                        ; $4531: $03
    dec bc                                        ; $4532: $0B

jr_00A_4533:
    dec b                                         ; $4533: $05
    ld de, $210E                                  ; $4534: $11 $0E $21
    ld e, $39                                     ; $4537: $1E $39
    ld d, $38                                     ; $4539: $16 $38
    rla                                           ; $453B: $17
    jr z, jr_00A_4555                             ; $453C: $28 $17

    rra                                           ; $453E: $1F
    nop                                           ; $453F: $00
    ld hl, sp-$40                                 ; $4540: $F8 $C0
    ret nc                                        ; $4542: $D0

    and b                                         ; $4543: $A0
    adc b                                         ; $4544: $88
    ld [hl], b                                    ; $4545: $70
    call nz, Call_00A_5C38                        ; $4546: $C4 $38 $5C
    xor b                                         ; $4549: $A8
    ld e, h                                       ; $454A: $5C
    xor b                                         ; $454B: $A8
    inc d                                         ; $454C: $14
    add sp, -$08                                  ; $454D: $E8 $F8
    nop                                           ; $454F: $00

jr_00A_4550:
    rrca                                          ; $4550: $0F
    rlca                                          ; $4551: $07
    rrca                                          ; $4552: $0F
    ld b, $16                                     ; $4553: $06 $16

jr_00A_4555:
    add hl, bc                                    ; $4555: $09
    ld d, $09                                     ; $4556: $16 $09
    inc d                                         ; $4558: $14
    dec bc                                        ; $4559: $0B
    jr @+$09                                      ; $455A: $18 $07

    ld [$0F07], sp                                ; $455C: $08 $07 $0F
    nop                                           ; $455F: $00

jr_00A_4560:
    or b                                          ; $4560: $B0
    ld b, b                                       ; $4561: $40
    ldh [rP1], a                                  ; $4562: $E0 $00
    jr nz, jr_00A_4526                            ; $4564: $20 $C0

    db $10                                        ; $4566: $10
    ldh [$30], a                                  ; $4567: $E0 $30
    ldh [$F8], a                                  ; $4569: $E0 $F8
    ld [hl], b                                    ; $456B: $70
    ld [hl], h                                    ; $456C: $74
    cp b                                          ; $456D: $B8
    db $E4                                        ; $456E: $E4
    jr jr_00A_459B                                ; $456F: $18 $2A

    dec d                                         ; $4571: $15
    ld a, [de]                                    ; $4572: $1A
    dec b                                         ; $4573: $05
    inc c                                         ; $4574: $0C
    inc bc                                        ; $4575: $03
    rla                                           ; $4576: $17
    ld [$0C13], sp                                ; $4577: $08 $13 $0C
    ld e, $09                                     ; $457A: $1E $09
    add hl, de                                    ; $457C: $19
    ld c, $09                                     ; $457D: $0E $09
    ld b, $74                                     ; $457F: $06 $74
    add sp, $78                                   ; $4581: $E8 $78
    ldh [$30], a                                  ; $4583: $E0 $30
    ret nz                                        ; $4585: $C0

    add sp, $10                                   ; $4586: $E8 $10
    ret z                                         ; $4588: $C8

    jr nc, jr_00A_45A3                            ; $4589: $30 $18

    ldh a, [$38]                                  ; $458B: $F0 $38
    ret nc                                        ; $458D: $D0

    jr z, jr_00A_4560                             ; $458E: $28 $D0

    rra                                           ; $4590: $1F
    nop                                           ; $4591: $00
    dec bc                                        ; $4592: $0B
    inc b                                         ; $4593: $04
    ld de, $100E                                  ; $4594: $11 $0E $10
    rrca                                          ; $4597: $0F
    inc e                                         ; $4598: $1C

jr_00A_4599:
    dec bc                                        ; $4599: $0B
    inc e                                         ; $459A: $1C

jr_00A_459B:
    dec bc                                        ; $459B: $0B
    inc e                                         ; $459C: $1C

jr_00A_459D:
    dec bc                                        ; $459D: $0B
    rla                                           ; $459E: $17
    ld [$00F8], sp                                ; $459F: $08 $F8 $00
    ret nc                                        ; $45A2: $D0

jr_00A_45A3:
    jr nz, jr_00A_452D                            ; $45A3: $20 $88

    ld [hl], b                                    ; $45A5: $70
    call nz, $0C38                                ; $45A6: $C4 $38 $0C
    ld hl, sp+$1C                                 ; $45A9: $F8 $1C
    add sp, $18                                   ; $45AB: $E8 $18
    ldh [$F0], a                                  ; $45AD: $E0 $F0
    nop                                           ; $45AF: $00
    rlca                                          ; $45B0: $07
    nop                                           ; $45B1: $00
    inc b                                         ; $45B2: $04
    inc bc                                        ; $45B3: $03
    ld [$0807], sp                                ; $45B4: $08 $07 $08
    rlca                                          ; $45B7: $07
    rla                                           ; $45B8: $17
    ld [$031F], sp                                ; $45B9: $08 $1F $03
    rra                                           ; $45BC: $1F
    rrca                                          ; $45BD: $0F
    rrca                                          ; $45BE: $0F
    nop                                           ; $45BF: $00
    ldh a, [rP1]                                  ; $45C0: $F0 $00
    ldh a, [rP1]                                  ; $45C2: $F0 $00
    add sp, $10                                   ; $45C4: $E8 $10
    sbc b                                         ; $45C6: $98

jr_00A_45C7:
    ld h, b                                       ; $45C7: $60
    db $FC                                        ; $45C8: $FC
    jr jr_00A_45C7                                ; $45C9: $18 $FC

    ld a, b                                       ; $45CB: $78
    ld hl, sp+$00                                 ; $45CC: $F8 $00
    add b                                         ; $45CE: $80
    nop                                           ; $45CF: $00
    ld hl, sp+$00                                 ; $45D0: $F8 $00
    ret nc                                        ; $45D2: $D0

    jr nz, jr_00A_459D                            ; $45D3: $20 $C8

    jr nc, @-$46                                  ; $45D5: $30 $B8

jr_00A_45D7:
    ld b, b                                       ; $45D7: $40
    ld hl, sp+$30                                 ; $45D8: $F8 $30
    db $FC                                        ; $45DA: $FC
    ld a, b                                       ; $45DB: $78
    db $FC                                        ; $45DC: $FC
    jr c, jr_00A_45D7                             ; $45DD: $38 $F8

    nop                                           ; $45DF: $00
    ldh a, [rP1]                                  ; $45E0: $F0 $00
    sub b                                         ; $45E2: $90
    ld h, b                                       ; $45E3: $60
    adc b                                         ; $45E4: $88
    ld [hl], b                                    ; $45E5: $70
    adc b                                         ; $45E6: $88
    ld [hl], b                                    ; $45E7: $70
    sbc b                                         ; $45E8: $98
    ld h, b                                       ; $45E9: $60
    db $FC                                        ; $45EA: $FC
    ld [$70FC], sp                                ; $45EB: $08 $FC $70
    ld hl, sp+$00                                 ; $45EE: $F8 $00
    rlca                                          ; $45F0: $07
    nop                                           ; $45F1: $00
    inc b                                         ; $45F2: $04
    inc bc                                        ; $45F3: $03
    add hl, bc                                    ; $45F4: $09
    ld b, $08                                     ; $45F5: $06 $08
    rlca                                          ; $45F7: $07
    ld c, $01                                     ; $45F8: $0E $01
    rrca                                          ; $45FA: $0F
    ld b, $0F                                     ; $45FB: $06 $0F
    nop                                           ; $45FD: $00
    nop                                           ; $45FE: $00
    nop                                           ; $45FF: $00
    sbc h                                         ; $4600: $9C
    ld h, b                                       ; $4601: $60
    db $10                                        ; $4602: $10
    ldh [$08], a                                  ; $4603: $E0 $08
    ldh a, [$88]                                  ; $4605: $F0 $88
    ld [hl], b                                    ; $4607: $70
    sbc b                                         ; $4608: $98
    ld h, b                                       ; $4609: $60
    db $FC                                        ; $460A: $FC
    ld [$70FC], sp                                ; $460B: $08 $FC $70
    ld hl, sp+$00                                 ; $460E: $F8 $00
    rst $38                                       ; $4610: $FF
    nop                                           ; $4611: $00
    add c                                         ; $4612: $81
    ld a, [hl]                                    ; $4613: $7E
    add d                                         ; $4614: $82
    ld a, h                                       ; $4615: $7C
    and a                                         ; $4616: $A7
    ld e, b                                       ; $4617: $58
    sbc a                                         ; $4618: $9F
    ld h, [hl]                                    ; $4619: $66
    ld a, a                                       ; $461A: $7F
    ld c, $7E                                     ; $461B: $0E $7E
    inc l                                         ; $461D: $2C
    ld a, $00                                     ; $461E: $3E $00
    rrca                                          ; $4620: $0F
    nop                                           ; $4621: $00
    inc b                                         ; $4622: $04
    inc bc                                        ; $4623: $03
    add hl, bc                                    ; $4624: $09
    ld b, $08                                     ; $4625: $06 $08
    rlca                                          ; $4627: $07
    ld [$0707], sp                                ; $4628: $08 $07 $07
    nop                                           ; $462B: $00
    rlca                                          ; $462C: $07
    inc bc                                        ; $462D: $03
    rlca                                          ; $462E: $07
    nop                                           ; $462F: $00
    ldh a, [rP1]                                  ; $4630: $F0 $00
    ld [$08F0], sp                                ; $4632: $08 $F0 $08
    ldh a, [$C8]                                  ; $4635: $F0 $C8
    jr nc, @-$0E                                  ; $4637: $30 $F0

    nop                                           ; $4639: $00
    ldh a, [$60]                                  ; $463A: $F0 $60
    ldh a, [$60]                                  ; $463C: $F0 $60
    ldh a, [rP1]                                  ; $463E: $F0 $00
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    rlca                                          ; $4642: $07
    nop                                           ; $4643: $00
    rrca                                          ; $4644: $0F
    rlca                                          ; $4645: $07
    rra                                           ; $4646: $1F
    rrca                                          ; $4647: $0F
    rra                                           ; $4648: $1F
    rrca                                          ; $4649: $0F
    rra                                           ; $464A: $1F
    rrca                                          ; $464B: $0F
    rrca                                          ; $464C: $0F
    inc b                                         ; $464D: $04
    dec e                                         ; $464E: $1D
    ld a, [bc]                                    ; $464F: $0A
    nop                                           ; $4650: $00
    nop                                           ; $4651: $00
    ldh [rP1], a                                  ; $4652: $E0 $00
    ldh a, [$E0]                                  ; $4654: $F0 $E0
    ldh a, [$E0]                                  ; $4656: $F0 $E0

jr_00A_4658:
    ldh a, [$E0]                                  ; $4658: $F0 $E0
    ldh a, [rP1]                                  ; $465A: $F0 $00
    ld d, b                                       ; $465C: $50
    and b                                         ; $465D: $A0
    ld d, b                                       ; $465E: $50
    and b                                         ; $465F: $A0
    dec e                                         ; $4660: $1D
    ld [bc], a                                    ; $4661: $02
    scf                                           ; $4662: $37
    nop                                           ; $4663: $00
    rlca                                          ; $4664: $07
    nop                                           ; $4665: $00
    ld [$0807], sp                                ; $4666: $08 $07 $08
    rlca                                          ; $4669: $07
    ld a, [de]                                    ; $466A: $1A
    dec b                                         ; $466B: $05
    add hl, hl                                    ; $466C: $29
    ld d, $2F                                     ; $466D: $16 $2F
    db $10                                        ; $466F: $10
    ld d, b                                       ; $4670: $50
    and b                                         ; $4671: $A0
    sub b                                         ; $4672: $90
    ld h, b                                       ; $4673: $60
    ldh a, [rP1]                                  ; $4674: $F0 $00
    ldh [rP1], a                                  ; $4676: $E0 $00
    ld b, b                                       ; $4678: $40
    add b                                         ; $4679: $80
    ld h, b                                       ; $467A: $60
    ret nz                                        ; $467B: $C0

    ret nc                                        ; $467C: $D0

    ldh [$90], a                                  ; $467D: $E0 $90
    ld h, b                                       ; $467F: $60
    rla                                           ; $4680: $17
    nop                                           ; $4681: $00
    daa                                           ; $4682: $27
    nop                                           ; $4683: $00
    ld [$0807], sp                                ; $4684: $08 $07 $08
    rlca                                          ; $4687: $07
    dec bc                                        ; $4688: $0B
    rlca                                          ; $4689: $07
    rrca                                          ; $468A: $0F
    rlca                                          ; $468B: $07
    rlca                                          ; $468C: $07
    inc bc                                        ; $468D: $03
    ld b, $01                                     ; $468E: $06 $01
    sub b                                         ; $4690: $90
    ld h, b                                       ; $4691: $60
    ldh a, [rP1]                                  ; $4692: $F0 $00
    ld h, b                                       ; $4694: $60
    add b                                         ; $4695: $80
    jr nz, jr_00A_4658                            ; $4696: $20 $C0

    and b                                         ; $4698: $A0
    ld b, b                                       ; $4699: $40
    and b                                         ; $469A: $A0
    ld b, b                                       ; $469B: $40
    ld h, b                                       ; $469C: $60
    add b                                         ; $469D: $80
    ld h, b                                       ; $469E: $60
    add b                                         ; $469F: $80
    dec e                                         ; $46A0: $1D
    ld [bc], a                                    ; $46A1: $02
    scf                                           ; $46A2: $37
    nop                                           ; $46A3: $00
    rlca                                          ; $46A4: $07
    nop                                           ; $46A5: $00
    ld [$1007], sp                                ; $46A6: $08 $07 $10
    rrca                                          ; $46A9: $0F
    ld a, [de]                                    ; $46AA: $1A
    dec c                                         ; $46AB: $0D
    ld l, $1D                                     ; $46AC: $2E $1D
    daa                                           ; $46AE: $27
    jr jr_00A_4701                                ; $46AF: $18 $50

    and b                                         ; $46B1: $A0
    sub b                                         ; $46B2: $90
    ld h, b                                       ; $46B3: $60

jr_00A_46B4:
    ldh a, [rP1]                                  ; $46B4: $F0 $00

jr_00A_46B6:
    ld h, b                                       ; $46B6: $60
    add b                                         ; $46B7: $80
    ld b, b                                       ; $46B8: $40
    add b                                         ; $46B9: $80
    ld h, b                                       ; $46BA: $60
    add b                                         ; $46BB: $80
    ld d, b                                       ; $46BC: $50
    and b                                         ; $46BD: $A0
    ret nc                                        ; $46BE: $D0

    jr nz, jr_00A_46E0                            ; $46BF: $20 $1F

    nop                                           ; $46C1: $00
    ld [$1007], sp                                ; $46C2: $08 $07 $10
    rrca                                          ; $46C5: $0F
    jr nz, jr_00A_46E7                            ; $46C6: $20 $1F

    ld [hl], e                                    ; $46C8: $73
    inc l                                         ; $46C9: $2C
    ld a, a                                       ; $46CA: $7F
    ld [hl-], a                                   ; $46CB: $32
    ld a, a                                       ; $46CC: $7F
    ld e, $7F                                     ; $46CD: $1E $7F
    nop                                           ; $46CF: $00
    ldh [rP1], a                                  ; $46D0: $E0 $00
    ld h, b                                       ; $46D2: $60
    add b                                         ; $46D3: $80
    ld a, b                                       ; $46D4: $78
    add b                                         ; $46D5: $80

jr_00A_46D6:
    db $FC                                        ; $46D6: $FC
    jr jr_00A_4755                                ; $46D7: $18 $7C

    cp b                                          ; $46D9: $B8
    ld a, b                                       ; $46DA: $78
    or b                                          ; $46DB: $B0
    ld hl, sp+$40                                 ; $46DC: $F8 $40
    ldh [rP1], a                                  ; $46DE: $E0 $00

jr_00A_46E0:
    rlca                                          ; $46E0: $07
    nop                                           ; $46E1: $00
    ld [$1007], sp                                ; $46E2: $08 $07 $10
    rrca                                          ; $46E5: $0F
    db $10                                        ; $46E6: $10

jr_00A_46E7:
    rrca                                          ; $46E7: $0F
    cpl                                           ; $46E8: $2F
    db $10                                        ; $46E9: $10
    ccf                                           ; $46EA: $3F
    rlca                                          ; $46EB: $07
    ccf                                           ; $46EC: $3F
    rrca                                          ; $46ED: $0F
    rra                                           ; $46EE: $1F
    nop                                           ; $46EF: $00
    ldh [rP1], a                                  ; $46F0: $E0 $00
    jr nz, jr_00A_46B4                            ; $46F2: $20 $C0

    jr nz, jr_00A_46B6                            ; $46F4: $20 $C0

    ld h, b                                       ; $46F6: $60
    add b                                         ; $46F7: $80
    ldh a, [rNR41]                                ; $46F8: $F0 $20
    ldh a, [$A0]                                  ; $46FA: $F0 $A0
    ldh a, [$80]                                  ; $46FC: $F0 $80
    ret nz                                        ; $46FE: $C0

    nop                                           ; $46FF: $00
    rra                                           ; $4700: $1F

jr_00A_4701:
    nop                                           ; $4701: $00
    ld [$1007], sp                                ; $4702: $08 $07 $10
    rrca                                          ; $4705: $0F
    inc [hl]                                      ; $4706: $34
    dec bc                                        ; $4707: $0B
    ld a, [hl]                                    ; $4708: $7E
    ld hl, $3C7F                                  ; $4709: $21 $7F $3C
    ld a, a                                       ; $470C: $7F
    ld e, $7F                                     ; $470D: $1E $7F
    nop                                           ; $470F: $00
    ldh [rP1], a                                  ; $4710: $E0 $00
    ld b, b                                       ; $4712: $40
    add b                                         ; $4713: $80
    jr c, jr_00A_46D6                             ; $4714: $38 $C0

    inc a                                         ; $4716: $3C
    ret c                                         ; $4717: $D8

    ld a, h                                       ; $4718: $7C
    cp b                                          ; $4719: $B8
    ld a, b                                       ; $471A: $78
    or b                                          ; $471B: $B0
    ld hl, sp+$40                                 ; $471C: $F8 $40
    ldh [rP1], a                                  ; $471E: $E0 $00
    ld a, [hl+]                                   ; $4720: $2A
    dec d                                         ; $4721: $15
    ld a, [de]                                    ; $4722: $1A
    dec b                                         ; $4723: $05
    inc c                                         ; $4724: $0C
    inc bc                                        ; $4725: $03
    rla                                           ; $4726: $17
    ld [$0C13], sp                                ; $4727: $08 $13 $0C
    jr jr_00A_473B                                ; $472A: $18 $0F

    inc e                                         ; $472C: $1C
    dec bc                                        ; $472D: $0B
    inc d                                         ; $472E: $14
    dec bc                                        ; $472F: $0B
    ld [hl], h                                    ; $4730: $74
    add sp, $78                                   ; $4731: $E8 $78
    ldh [$30], a                                  ; $4733: $E0 $30
    ret nz                                        ; $4735: $C0

    add sp, $10                                   ; $4736: $E8 $10
    ret z                                         ; $4738: $C8

    jr nc, jr_00A_47B3                            ; $4739: $30 $78

jr_00A_473B:
    sub b                                         ; $473B: $90
    sbc b                                         ; $473C: $98
    ld [hl], b                                    ; $473D: $70
    sub b                                         ; $473E: $90
    ld h, b                                       ; $473F: $60
    nop                                           ; $4740: $00
    nop                                           ; $4741: $00
    rlca                                          ; $4742: $07
    nop                                           ; $4743: $00
    rrca                                          ; $4744: $0F
    rlca                                          ; $4745: $07
    rrca                                          ; $4746: $0F
    rlca                                          ; $4747: $07
    rrca                                          ; $4748: $0F
    rlca                                          ; $4749: $07
    rrca                                          ; $474A: $0F
    nop                                           ; $474B: $00
    ld c, $07                                     ; $474C: $0E $07
    ld c, $07                                     ; $474E: $0E $07
    nop                                           ; $4750: $00
    nop                                           ; $4751: $00
    rlca                                          ; $4752: $07
    nop                                           ; $4753: $00
    rrca                                          ; $4754: $0F

jr_00A_4755:
    rlca                                          ; $4755: $07
    rra                                           ; $4756: $1F
    rrca                                          ; $4757: $0F
    rra                                           ; $4758: $1F
    rrca                                          ; $4759: $0F
    rra                                           ; $475A: $1F
    nop                                           ; $475B: $00
    add hl, de                                    ; $475C: $19
    rlca                                          ; $475D: $07
    add hl, de                                    ; $475E: $19
    rlca                                          ; $475F: $07
    nop                                           ; $4760: $00
    nop                                           ; $4761: $00
    ret nz                                        ; $4762: $C0

    nop                                           ; $4763: $00
    ldh [$C0], a                                  ; $4764: $E0 $C0
    ldh a, [$E0]                                  ; $4766: $F0 $E0
    ldh a, [$E0]                                  ; $4768: $F0 $E0
    ldh a, [rP1]                                  ; $476A: $F0 $00
    ret c                                         ; $476C: $D8

    and b                                         ; $476D: $A0
    db $FC                                        ; $476E: $FC
    add b                                         ; $476F: $80
    nop                                           ; $4770: $00
    nop                                           ; $4771: $00
    rlca                                          ; $4772: $07
    nop                                           ; $4773: $00
    rrca                                          ; $4774: $0F
    rlca                                          ; $4775: $07
    rra                                           ; $4776: $1F
    rrca                                          ; $4777: $0F
    rra                                           ; $4778: $1F
    rrca                                          ; $4779: $0F
    rra                                           ; $477A: $1F
    rrca                                          ; $477B: $0F
    rra                                           ; $477C: $1F
    ld [$152A], sp                                ; $477D: $08 $2A $15
    nop                                           ; $4780: $00
    nop                                           ; $4781: $00
    ldh [rP1], a                                  ; $4782: $E0 $00
    ldh a, [$E0]                                  ; $4784: $F0 $E0
    ld hl, sp-$10                                 ; $4786: $F8 $F0
    ld hl, sp-$10                                 ; $4788: $F8 $F0
    ld hl, sp-$10                                 ; $478A: $F8 $F0
    ld hl, sp+$10                                 ; $478C: $F8 $10
    ld [hl], h                                    ; $478E: $74
    add sp, $00                                   ; $478F: $E8 $00
    nop                                           ; $4791: $00
    ldh [rP1], a                                  ; $4792: $E0 $00
    ldh a, [$E0]                                  ; $4794: $F0 $E0
    ld hl, sp-$10                                 ; $4796: $F8 $F0
    ld hl, sp-$10                                 ; $4798: $F8 $F0
    ld hl, sp-$10                                 ; $479A: $F8 $F0
    ld hl, sp-$10                                 ; $479C: $F8 $F0
    db $F4                                        ; $479E: $F4
    add sp, $00                                   ; $479F: $E8 $00
    nop                                           ; $47A1: $00
    nop                                           ; $47A2: $00
    nop                                           ; $47A3: $00
    ldh [rP1], a                                  ; $47A4: $E0 $00
    ldh a, [$E0]                                  ; $47A6: $F0 $E0
    ld hl, sp-$10                                 ; $47A8: $F8 $F0
    ld hl, sp-$10                                 ; $47AA: $F8 $F0
    ld hl, sp-$10                                 ; $47AC: $F8 $F0
    ld hl, sp-$10                                 ; $47AE: $F8 $F0
    nop                                           ; $47B0: $00
    nop                                           ; $47B1: $00
    rlca                                          ; $47B2: $07

jr_00A_47B3:
    nop                                           ; $47B3: $00
    rrca                                          ; $47B4: $0F
    rlca                                          ; $47B5: $07
    rra                                           ; $47B6: $1F
    rrca                                          ; $47B7: $0F
    rra                                           ; $47B8: $1F
    rrca                                          ; $47B9: $0F
    rra                                           ; $47BA: $1F
    rrca                                          ; $47BB: $0F
    rrca                                          ; $47BC: $0F
    inc b                                         ; $47BD: $04
    dec d                                         ; $47BE: $15
    ld [bc], a                                    ; $47BF: $02
    nop                                           ; $47C0: $00
    nop                                           ; $47C1: $00
    ldh [rP1], a                                  ; $47C2: $E0 $00
    ldh a, [$E0]                                  ; $47C4: $F0 $E0
    ldh a, [$E0]                                  ; $47C6: $F0 $E0
    ldh a, [$E0]                                  ; $47C8: $F0 $E0
    ldh a, [rP1]                                  ; $47CA: $F0 $00
    ld d, b                                       ; $47CC: $50
    and b                                         ; $47CD: $A0
    ld d, b                                       ; $47CE: $50
    and b                                         ; $47CF: $A0
    ld a, [de]                                    ; $47D0: $1A
    dec b                                         ; $47D1: $05
    inc c                                         ; $47D2: $0C
    inc bc                                        ; $47D3: $03
    inc de                                        ; $47D4: $13
    inc c                                         ; $47D5: $0C
    jr nz, jr_00A_47F7                            ; $47D6: $20 $1F

    inc l                                         ; $47D8: $2C
    inc de                                        ; $47D9: $13
    ld a, [hl-]                                   ; $47DA: $3A
    dec e                                         ; $47DB: $1D
    ld [de], a                                    ; $47DC: $12
    dec c                                         ; $47DD: $0D
    rrca                                          ; $47DE: $0F
    nop                                           ; $47DF: $00
    ld a, b                                       ; $47E0: $78
    ldh [$30], a                                  ; $47E1: $E0 $30
    ret nz                                        ; $47E3: $C0

    ret z                                         ; $47E4: $C8

    jr nc, jr_00A_47EB                            ; $47E5: $30 $04

    ld hl, sp+$34                                 ; $47E7: $F8 $34
    ret z                                         ; $47E9: $C8

    ld e, h                                       ; $47EA: $5C

jr_00A_47EB:
    cp b                                          ; $47EB: $B8
    ld c, b                                       ; $47EC: $48
    or b                                          ; $47ED: $B0
    ldh a, [rP1]                                  ; $47EE: $F0 $00
    ld a, [hl+]                                   ; $47F0: $2A
    dec d                                         ; $47F1: $15
    ld a, [de]                                    ; $47F2: $1A
    dec b                                         ; $47F3: $05
    inc e                                         ; $47F4: $1C
    inc bc                                        ; $47F5: $03
    inc hl                                        ; $47F6: $23

jr_00A_47F7:
    inc e                                         ; $47F7: $1C
    ld c, b                                       ; $47F8: $48
    scf                                           ; $47F9: $37
    cp b                                          ; $47FA: $B8
    ld h, a                                       ; $47FB: $67
    sub h                                         ; $47FC: $94
    ld h, e                                       ; $47FD: $63
    ld h, a                                       ; $47FE: $67
    nop                                           ; $47FF: $00
    ld [hl], h                                    ; $4800: $74
    add sp, $78                                   ; $4801: $E8 $78
    ldh [$38], a                                  ; $4803: $E0 $38
    ret nz                                        ; $4805: $C0

    call nz, $1238                                ; $4806: $C4 $38 $12
    db $EC                                        ; $4809: $EC
    dec e                                         ; $480A: $1D
    and $29                                       ; $480B: $E6 $29
    add $E6                                       ; $480D: $C6 $E6
    nop                                           ; $480F: $00
    rra                                           ; $4810: $1F
    inc bc                                        ; $4811: $03
    dec bc                                        ; $4812: $0B
    dec b                                         ; $4813: $05
    ld de, $210E                                  ; $4814: $11 $0E $21
    ld e, $39                                     ; $4817: $1E $39
    ld d, $18                                     ; $4819: $16 $18
    rlca                                          ; $481B: $07
    ld [$0707], sp                                ; $481C: $08 $07 $07
    nop                                           ; $481F: $00
    ld hl, sp-$40                                 ; $4820: $F8 $C0
    ret nc                                        ; $4822: $D0

    and b                                         ; $4823: $A0
    adc b                                         ; $4824: $88
    ld [hl], b                                    ; $4825: $70
    add h                                         ; $4826: $84
    ld a, b                                       ; $4827: $78
    inc e                                         ; $4828: $1C
    add sp, $18                                   ; $4829: $E8 $18
    ldh [rNR10], a                                ; $482B: $E0 $10
    ldh [$E0], a                                  ; $482D: $E0 $E0
    nop                                           ; $482F: $00
    cpl                                           ; $4830: $2F
    rla                                           ; $4831: $17
    rra                                           ; $4832: $1F
    inc bc                                        ; $4833: $03
    inc de                                        ; $4834: $13
    dec c                                         ; $4835: $0D
    ld h, c                                       ; $4836: $61
    ld e, $B9                                     ; $4837: $1E $B9
    halt                                          ; $4839: $76
    sbc c                                         ; $483A: $99
    ld h, [hl]                                    ; $483B: $66
    ld h, h                                       ; $483C: $64
    inc bc                                        ; $483D: $03
    inc bc                                        ; $483E: $03
    nop                                           ; $483F: $00
    db $F4                                        ; $4840: $F4
    add sp, -$08                                  ; $4841: $E8 $F8
    ret nz                                        ; $4843: $C0

    ret z                                         ; $4844: $C8

    or b                                          ; $4845: $B0
    add [hl]                                      ; $4846: $86
    ld a, b                                       ; $4847: $78
    sbc l                                         ; $4848: $9D
    ld l, [hl]                                    ; $4849: $6E
    add hl, de                                    ; $484A: $19
    and $26                                       ; $484B: $E6 $26
    ret nz                                        ; $484D: $C0

    ret nz                                        ; $484E: $C0

    nop                                           ; $484F: $00
    scf                                           ; $4850: $37
    nop                                           ; $4851: $00
    rlca                                          ; $4852: $07
    nop                                           ; $4853: $00
    ld [$1007], sp                                ; $4854: $08 $07 $10
    rrca                                          ; $4857: $0F
    jr nz, jr_00A_4879                            ; $4858: $20 $1F

    ld [hl+], a                                   ; $485A: $22
    dec e                                         ; $485B: $1D
    ld b, c                                       ; $485C: $41
    ld a, $7E                                     ; $485D: $3E $7E
    nop                                           ; $485F: $00
    sub b                                         ; $4860: $90
    ld h, b                                       ; $4861: $60
    ldh a, [rP1]                                  ; $4862: $F0 $00
    ld b, b                                       ; $4864: $40
    add b                                         ; $4865: $80
    ldh [rP1], a                                  ; $4866: $E0 $00
    ld a, b                                       ; $4868: $78
    add b                                         ; $4869: $80
    inc [hl]                                      ; $486A: $34
    ld hl, sp-$1C                                 ; $486B: $F8 $E4
    jr @+$1A                                      ; $486D: $18 $18

    nop                                           ; $486F: $00
    dec e                                         ; $4870: $1D
    ld [bc], a                                    ; $4871: $02
    scf                                           ; $4872: $37
    nop                                           ; $4873: $00
    rlca                                          ; $4874: $07
    nop                                           ; $4875: $00
    ld [$1607], sp                                ; $4876: $08 $07 $16

jr_00A_4879:
    add hl, bc                                    ; $4879: $09
    dec hl                                        ; $487A: $2B
    ld d, $49                                     ; $487B: $16 $49
    ld [hl], $7F                                  ; $487D: $36 $7F
    nop                                           ; $487F: $00
    ld d, b                                       ; $4880: $50
    and b                                         ; $4881: $A0
    sub b                                         ; $4882: $90
    ld h, b                                       ; $4883: $60
    ldh a, [rP1]                                  ; $4884: $F0 $00
    ldh [rP1], a                                  ; $4886: $E0 $00
    ld b, b                                       ; $4888: $40
    add b                                         ; $4889: $80
    ld b, b                                       ; $488A: $40
    add b                                         ; $488B: $80
    ret nz                                        ; $488C: $C0

    nop                                           ; $488D: $00
    add b                                         ; $488E: $80
    nop                                           ; $488F: $00
    ld c, $07                                     ; $4890: $0E $07
    add hl, bc                                    ; $4892: $09
    ld b, $0F                                     ; $4893: $06 $0F
    nop                                           ; $4895: $00
    rlca                                          ; $4896: $07
    nop                                           ; $4897: $00
    ld [bc], a                                    ; $4898: $02
    ld bc, $0102                                  ; $4899: $01 $02 $01
    inc bc                                        ; $489C: $03
    nop                                           ; $489D: $00
    ld bc, $0000                                  ; $489E: $01 $00 $00
    nop                                           ; $48A1: $00
    rlca                                          ; $48A2: $07
    nop                                           ; $48A3: $00
    rrca                                          ; $48A4: $0F
    rlca                                          ; $48A5: $07
    rrca                                          ; $48A6: $0F
    rlca                                          ; $48A7: $07
    rrca                                          ; $48A8: $0F
    rlca                                          ; $48A9: $07
    rrca                                          ; $48AA: $0F
    nop                                           ; $48AB: $00
    ld c, $07                                     ; $48AC: $0E $07
    ld c, $07                                     ; $48AE: $0E $07
    rlca                                          ; $48B0: $07
    nop                                           ; $48B1: $00
    ccf                                           ; $48B2: $3F
    rlca                                          ; $48B3: $07
    ld a, a                                       ; $48B4: $7F
    ccf                                           ; $48B5: $3F
    ccf                                           ; $48B6: $3F
    rra                                           ; $48B7: $1F
    inc a                                         ; $48B8: $3C
    rra                                           ; $48B9: $1F
    dec de                                        ; $48BA: $1B
    rlca                                          ; $48BB: $07
    dec d                                         ; $48BC: $15
    ld a, [bc]                                    ; $48BD: $0A
    inc a                                         ; $48BE: $3C
    rla                                           ; $48BF: $17
    ldh [rP1], a                                  ; $48C0: $E0 $00
    ldh a, [$E0]                                  ; $48C2: $F0 $E0
    ld hl, sp-$10                                 ; $48C4: $F8 $F0
    ld hl, sp-$10                                 ; $48C6: $F8 $F0
    ret c                                         ; $48C8: $D8

    ldh [$30], a                                  ; $48C9: $E0 $30
    ldh [$30], a                                  ; $48CB: $E0 $30
    ret nz                                        ; $48CD: $C0

    db $10                                        ; $48CE: $10
    ldh [$1F], a                                  ; $48CF: $E0 $1F
    nop                                           ; $48D1: $00
    ccf                                           ; $48D2: $3F
    rra                                           ; $48D3: $1F
    ld a, a                                       ; $48D4: $7F
    ccf                                           ; $48D5: $3F
    ccf                                           ; $48D6: $3F
    rra                                           ; $48D7: $1F
    add hl, de                                    ; $48D8: $19
    rrca                                          ; $48D9: $0F
    ld d, $0F                                     ; $48DA: $16 $0F
    ld a, [de]                                    ; $48DC: $1A
    dec c                                         ; $48DD: $0D
    add hl, hl                                    ; $48DE: $29
    rla                                           ; $48DF: $17
    ldh [rP1], a                                  ; $48E0: $E0 $00
    ldh a, [$E0]                                  ; $48E2: $F0 $E0
    ld hl, sp-$10                                 ; $48E4: $F8 $F0
    ld hl, sp-$10                                 ; $48E6: $F8 $F0
    sbc b                                         ; $48E8: $98
    ldh a, [rBCPS]                                ; $48E9: $F0 $68
    ldh a, [$58]                                  ; $48EB: $F0 $58
    or b                                          ; $48ED: $B0
    sub h                                         ; $48EE: $94
    add sp, $07                                   ; $48EF: $E8 $07
    nop                                           ; $48F1: $00
    rrca                                          ; $48F2: $0F
    rlca                                          ; $48F3: $07
    rra                                           ; $48F4: $1F
    rrca                                          ; $48F5: $0F
    rra                                           ; $48F6: $1F
    rrca                                          ; $48F7: $0F
    rra                                           ; $48F8: $1F
    rrca                                          ; $48F9: $0F
    rra                                           ; $48FA: $1F
    rrca                                          ; $48FB: $0F
    rra                                           ; $48FC: $1F
    rrca                                          ; $48FD: $0F
    ccf                                           ; $48FE: $3F
    nop                                           ; $48FF: $00
    ld hl, sp+$00                                 ; $4900: $F8 $00
    db $FC                                        ; $4902: $FC
    ld hl, sp-$02                                 ; $4903: $F8 $FE
    db $FC                                        ; $4905: $FC
    db $FC                                        ; $4906: $FC
    ld hl, sp-$08                                 ; $4907: $F8 $F8
    ldh a, [$F8]                                  ; $4909: $F0 $F8
    ldh a, [$F8]                                  ; $490B: $F0 $F8
    ldh a, [$FC]                                  ; $490D: $F0 $FC
    nop                                           ; $490F: $00
    rlca                                          ; $4910: $07
    nop                                           ; $4911: $00
    rrca                                          ; $4912: $0F
    rlca                                          ; $4913: $07
    ccf                                           ; $4914: $3F
    rrca                                          ; $4915: $0F
    ld a, a                                       ; $4916: $7F
    ccf                                           ; $4917: $3F
    ccf                                           ; $4918: $3F
    rra                                           ; $4919: $1F
    ccf                                           ; $491A: $3F
    rra                                           ; $491B: $1F
    rra                                           ; $491C: $1F
    rrca                                          ; $491D: $0F
    rra                                           ; $491E: $1F
    nop                                           ; $491F: $00
    ld hl, sp+$00                                 ; $4920: $F8 $00
    db $FC                                        ; $4922: $FC
    ld hl, sp-$02                                 ; $4923: $F8 $FE
    db $FC                                        ; $4925: $FC
    db $FC                                        ; $4926: $FC
    ld hl, sp-$04                                 ; $4927: $F8 $FC
    ld hl, sp-$18                                 ; $4929: $F8 $E8
    ldh a, [$A8]                                  ; $492B: $F0 $A8
    ldh a, [$A8]                                  ; $492D: $F0 $A8
    ld [hl], b                                    ; $492F: $70
    ld a, [hl]                                    ; $4930: $7E
    inc sp                                        ; $4931: $33
    ccf                                           ; $4932: $3F
    dec e                                         ; $4933: $1D
    ld a, a                                       ; $4934: $7F
    ld a, $7F                                     ; $4935: $3E $7F
    daa                                           ; $4937: $27
    ld a, a                                       ; $4938: $7F
    ld a, [de]                                    ; $4939: $1A
    ccf                                           ; $493A: $3F
    inc de                                        ; $493B: $13
    inc sp                                        ; $493C: $33
    dec c                                         ; $493D: $0D
    inc de                                        ; $493E: $13
    dec c                                         ; $493F: $0D
    ldh a, [$E0]                                  ; $4940: $F0 $E0
    ldh [$C0], a                                  ; $4942: $E0 $C0
    ldh a, [rNR41]                                ; $4944: $F0 $20
    ldh a, [$60]                                  ; $4946: $F0 $60
    ldh a, [rLCDC]                                ; $4948: $F0 $40
    ld hl, sp+$40                                 ; $494A: $F8 $40
    add sp, $50                                   ; $494C: $E8 $50
    ldh a, [rP1]                                  ; $494E: $F0 $00
    rra                                           ; $4950: $1F
    rlca                                          ; $4951: $07
    ccf                                           ; $4952: $3F
    inc de                                        ; $4953: $13
    rra                                           ; $4954: $1F
    inc c                                         ; $4955: $0C
    ccf                                           ; $4956: $3F
    ld e, $3F                                     ; $4957: $1E $3F
    ld [bc], a                                    ; $4959: $02
    ccf                                           ; $495A: $3F
    ld d, $27                                     ; $495B: $16 $27
    ld a, [de]                                    ; $495D: $1A
    daa                                           ; $495E: $27
    ld a, [de]                                    ; $495F: $1A
    ld hl, sp-$20                                 ; $4960: $F8 $E0
    db $FC                                        ; $4962: $FC
    ret z                                         ; $4963: $C8

    ld hl, sp+$30                                 ; $4964: $F8 $30
    db $FC                                        ; $4966: $FC
    ld a, b                                       ; $4967: $78
    db $FC                                        ; $4968: $FC
    ret nz                                        ; $4969: $C0

    db $FC                                        ; $496A: $FC
    ld l, b                                       ; $496B: $68
    db $E4                                        ; $496C: $E4
    ret c                                         ; $496D: $D8

    db $E4                                        ; $496E: $E4
    ret c                                         ; $496F: $D8

    db $FC                                        ; $4970: $FC
    ld hl, sp-$08                                 ; $4971: $F8 $F8
    ret nz                                        ; $4973: $C0

    ld hl, sp-$10                                 ; $4974: $F8 $F0
    db $FC                                        ; $4976: $FC
    ld hl, sp-$04                                 ; $4977: $F8 $FC
    or b                                          ; $4979: $B0
    db $FC                                        ; $497A: $FC
    add sp, -$04                                  ; $497B: $E8 $FC
    add sp, -$08                                  ; $497D: $E8 $F8
    ldh a, [$1F]                                  ; $497F: $F0 $1F
    rrca                                          ; $4981: $0F
    rrca                                          ; $4982: $0F
    inc bc                                        ; $4983: $03
    rrca                                          ; $4984: $0F
    rlca                                          ; $4985: $07
    rra                                           ; $4986: $1F
    rrca                                          ; $4987: $0F
    rra                                           ; $4988: $1F
    rrca                                          ; $4989: $0F
    rra                                           ; $498A: $1F
    rrca                                          ; $498B: $0F
    rrca                                          ; $498C: $0F
    rlca                                          ; $498D: $07
    rrca                                          ; $498E: $0F
    rlca                                          ; $498F: $07
    ldh a, [$A0]                                  ; $4990: $F0 $A0
    ldh [rP1], a                                  ; $4992: $E0 $00
    ldh a, [$E0]                                  ; $4994: $F0 $E0
    ldh a, [$E0]                                  ; $4996: $F0 $E0
    ldh a, [$60]                                  ; $4998: $F0 $60
    ld hl, sp-$30                                 ; $499A: $F8 $D0
    db $F4                                        ; $499C: $F4
    cp b                                          ; $499D: $B8
    db $E4                                        ; $499E: $E4
    ret c                                         ; $499F: $D8

    add hl, hl                                    ; $49A0: $29
    rla                                           ; $49A1: $17
    rra                                           ; $49A2: $1F
    rlca                                          ; $49A3: $07
    ccf                                           ; $49A4: $3F
    inc de                                        ; $49A5: $13
    rra                                           ; $49A6: $1F
    nop                                           ; $49A7: $00
    rra                                           ; $49A8: $1F
    ld c, $1F                                     ; $49A9: $0E $1F
    inc bc                                        ; $49AB: $03
    inc de                                        ; $49AC: $13
    dec c                                         ; $49AD: $0D
    inc de                                        ; $49AE: $13
    dec c                                         ; $49AF: $0D
    sub h                                         ; $49B0: $94
    add sp, -$08                                  ; $49B1: $E8 $F8
    ldh [$FC], a                                  ; $49B3: $E0 $FC
    ret z                                         ; $49B5: $C8

    ld hl, sp+$30                                 ; $49B6: $F8 $30

jr_00A_49B8:
    db $FC                                        ; $49B8: $FC
    ld a, b                                       ; $49B9: $78
    db $FC                                        ; $49BA: $FC
    ld c, b                                       ; $49BB: $48
    ld hl, sp+$10                                 ; $49BC: $F8 $10
    add sp, $50                                   ; $49BE: $E8 $50
    ccf                                           ; $49C0: $3F
    nop                                           ; $49C1: $00
    ccf                                           ; $49C2: $3F
    rra                                           ; $49C3: $1F
    rra                                           ; $49C4: $1F
    inc bc                                        ; $49C5: $03
    rra                                           ; $49C6: $1F
    rrca                                          ; $49C7: $0F
    rra                                           ; $49C8: $1F
    ld c, $1F                                     ; $49C9: $0E $1F
    rrca                                          ; $49CB: $0F
    rra                                           ; $49CC: $1F
    rlca                                          ; $49CD: $07
    rla                                           ; $49CE: $17
    dec bc                                        ; $49CF: $0B
    db $FC                                        ; $49D0: $FC
    nop                                           ; $49D1: $00
    db $FC                                        ; $49D2: $FC
    ld hl, sp-$08                                 ; $49D3: $F8 $F8
    ldh [$FC], a                                  ; $49D5: $E0 $FC
    ld hl, sp-$04                                 ; $49D7: $F8 $FC
    ret c                                         ; $49D9: $D8

    db $FC                                        ; $49DA: $FC
    ld hl, sp-$08                                 ; $49DB: $F8 $F8
    ldh a, [$F8]                                  ; $49DD: $F0 $F8
    ldh a, [$2F]                                  ; $49DF: $F0 $2F
    db $10                                        ; $49E1: $10
    inc l                                         ; $49E2: $2C
    inc de                                        ; $49E3: $13

jr_00A_49E4:
    db $10                                        ; $49E4: $10
    rrca                                          ; $49E5: $0F
    ld de, $2F0E                                  ; $49E6: $11 $0E $2F
    db $10                                        ; $49E9: $10
    ccf                                           ; $49EA: $3F
    ld b, $3F                                     ; $49EB: $06 $3F
    ld e, $1F                                     ; $49ED: $1E $1F
    nop                                           ; $49EF: $00
    and b                                         ; $49F0: $A0
    ld b, b                                       ; $49F1: $40
    jr nz, @-$3E                                  ; $49F2: $20 $C0

    sub b                                         ; $49F4: $90
    ld h, b                                       ; $49F5: $60
    jr nc, jr_00A_49B8                            ; $49F6: $30 $C0

    ld hl, sp+$30                                 ; $49F8: $F8 $30
    ld hl, sp-$10                                 ; $49FA: $F8 $F0
    ldh a, [rP1]                                  ; $49FC: $F0 $00
    nop                                           ; $49FE: $00
    nop                                           ; $49FF: $00
    ld hl, sp+$00                                 ; $4A00: $F8 $00
    jr jr_00A_49E4                                ; $4A02: $18 $E0

    adc b                                         ; $4A04: $88
    ld [hl], b                                    ; $4A05: $70
    cp b                                          ; $4A06: $B8

jr_00A_4A07:
    ld b, b                                       ; $4A07: $40
    ld hl, sp+$30                                 ; $4A08: $F8 $30
    db $FC                                        ; $4A0A: $FC
    ld a, b                                       ; $4A0B: $78
    db $FC                                        ; $4A0C: $FC
    jr c, jr_00A_4A07                             ; $4A0D: $38 $F8

    nop                                           ; $4A0F: $00
    ld [$18F0], sp                                ; $4A10: $08 $F0 $18
    ldh [$E8], a                                  ; $4A13: $E0 $E8
    db $10                                        ; $4A15: $10
    adc b                                         ; $4A16: $88
    ld [hl], b                                    ; $4A17: $70
    sbc b                                         ; $4A18: $98
    ld h, b                                       ; $4A19: $60
    db $FC                                        ; $4A1A: $FC
    ld [$70FC], sp                                ; $4A1B: $08 $FC $70
    ld hl, sp+$00                                 ; $4A1E: $F8 $00
    ld [$0707], sp                                ; $4A20: $08 $07 $07
    nop                                           ; $4A23: $00
    add hl, bc                                    ; $4A24: $09
    ld b, $08                                     ; $4A25: $06 $08
    rlca                                          ; $4A27: $07
    ld c, $01                                     ; $4A28: $0E $01
    rrca                                          ; $4A2A: $0F
    ld b, $0F                                     ; $4A2B: $06 $0F
    nop                                           ; $4A2D: $00
    nop                                           ; $4A2E: $00
    nop                                           ; $4A2F: $00
    ld e, h                                       ; $4A30: $5C
    and b                                         ; $4A31: $A0
    sub b                                         ; $4A32: $90
    ld h, b                                       ; $4A33: $60
    ld [$88F0], sp                                ; $4A34: $08 $F0 $88
    ld [hl], b                                    ; $4A37: $70
    sbc b                                         ; $4A38: $98
    ld h, b                                       ; $4A39: $60
    db $FC                                        ; $4A3A: $FC
    ld [$70FC], sp                                ; $4A3B: $08 $FC $70
    ld hl, sp+$00                                 ; $4A3E: $F8 $00
    adc e                                         ; $4A40: $8B
    ld [hl], h                                    ; $4A41: $74
    rst $38                                       ; $4A42: $FF
    nop                                           ; $4A43: $00
    add e                                         ; $4A44: $83
    ld a, h                                       ; $4A45: $7C
    and a                                         ; $4A46: $A7
    ld e, b                                       ; $4A47: $58
    sbc a                                         ; $4A48: $9F
    ld h, [hl]                                    ; $4A49: $66
    ld a, a                                       ; $4A4A: $7F
    ld c, $7E                                     ; $4A4B: $0E $7E
    inc l                                         ; $4A4D: $2C
    ld a, $00                                     ; $4A4E: $3E $00
    ld [$0C07], sp                                ; $4A50: $08 $07 $0C
    inc bc                                        ; $4A53: $03
    dec bc                                        ; $4A54: $0B
    inc b                                         ; $4A55: $04
    ld [$0807], sp                                ; $4A56: $08 $07 $08

jr_00A_4A59:
    rlca                                          ; $4A59: $07
    rlca                                          ; $4A5A: $07
    nop                                           ; $4A5B: $00
    rlca                                          ; $4A5C: $07
    inc bc                                        ; $4A5D: $03
    rlca                                          ; $4A5E: $07
    nop                                           ; $4A5F: $00
    ld [$18F0], sp                                ; $4A60: $08 $F0 $18
    ldh [$E8], a                                  ; $4A63: $E0 $E8
    db $10                                        ; $4A65: $10
    ret z                                         ; $4A66: $C8

    jr nc, jr_00A_4A59                            ; $4A67: $30 $F0

    nop                                           ; $4A69: $00
    ldh a, [$60]                                  ; $4A6A: $F0 $60
    ldh a, [$60]                                  ; $4A6C: $F0 $60
    ldh a, [rP1]                                  ; $4A6E: $F0 $00
    rlca                                          ; $4A70: $07
    nop                                           ; $4A71: $00
    rra                                           ; $4A72: $1F
    rlca                                          ; $4A73: $07
    ccf                                           ; $4A74: $3F
    rra                                           ; $4A75: $1F
    ld a, a                                       ; $4A76: $7F
    ccf                                           ; $4A77: $3F
    ccf                                           ; $4A78: $3F
    rra                                           ; $4A79: $1F
    ld e, $0F                                     ; $4A7A: $1E $0F
    add hl, de                                    ; $4A7C: $19
    rlca                                          ; $4A7D: $07
    dec a                                         ; $4A7E: $3D
    dec de                                        ; $4A7F: $1B
    ldh a, [rP1]                                  ; $4A80: $F0 $00
    ld hl, sp-$10                                 ; $4A82: $F8 $F0
    ld hl, sp-$10                                 ; $4A84: $F8 $F0
    db $FC                                        ; $4A86: $FC
    ld hl, sp+$18                                 ; $4A87: $F8 $18
    ldh [$D0], a                                  ; $4A89: $E0 $D0
    ldh [$50], a                                  ; $4A8B: $E0 $50
    and b                                         ; $4A8D: $A0
    sub b                                         ; $4A8E: $90
    ldh [$3D], a                                  ; $4A8F: $E0 $3D
    dec de                                        ; $4A91: $1B
    ld e, $0D                                     ; $4A92: $1E $0D
    rrca                                          ; $4A94: $0F
    ld b, $1F                                     ; $4A95: $06 $1F
    rlca                                          ; $4A97: $07
    rra                                           ; $4A98: $1F
    rlca                                          ; $4A99: $07
    rra                                           ; $4A9A: $1F
    ld b, $2F                                     ; $4A9B: $06 $2F
    ld d, $2F                                     ; $4A9D: $16 $2F
    rla                                           ; $4A9F: $17
    sub b                                         ; $4AA0: $90
    ldh [$F0], a                                  ; $4AA1: $E0 $F0
    ldh [$E0], a                                  ; $4AA3: $E0 $E0
    nop                                           ; $4AA5: $00
    ret nz                                        ; $4AA6: $C0

    nop                                           ; $4AA7: $00
    ret nz                                        ; $4AA8: $C0

    nop                                           ; $4AA9: $00
    ldh [$C0], a                                  ; $4AAA: $E0 $C0
    sub b                                         ; $4AAC: $90
    ldh [$90], a                                  ; $4AAD: $E0 $90
    ld h, b                                       ; $4AAF: $60
    ld e, $0D                                     ; $4AB0: $1E $0D
    rrca                                          ; $4AB2: $0F
    ld b, $0F                                     ; $4AB3: $06 $0F
    rlca                                          ; $4AB5: $07
    rrca                                          ; $4AB6: $0F
    rlca                                          ; $4AB7: $07
    rrca                                          ; $4AB8: $0F
    inc b                                         ; $4AB9: $04
    rrca                                          ; $4ABA: $0F
    inc bc                                        ; $4ABB: $03
    ld c, $03                                     ; $4ABC: $0E $03
    ld c, $05                                     ; $4ABE: $0E $05
    ldh a, [$E0]                                  ; $4AC0: $F0 $E0
    ldh [rP1], a                                  ; $4AC2: $E0 $00
    ret nz                                        ; $4AC4: $C0

    add b                                         ; $4AC5: $80
    ldh [$C0], a                                  ; $4AC6: $E0 $C0
    ldh [rLCDC], a                                ; $4AC8: $E0 $40
    ldh [rLCDC], a                                ; $4ACA: $E0 $40
    ld h, b                                       ; $4ACC: $60
    add b                                         ; $4ACD: $80
    ld h, b                                       ; $4ACE: $60
    add b                                         ; $4ACF: $80
    dec a                                         ; $4AD0: $3D
    dec de                                        ; $4AD1: $1B
    ld e, $0D                                     ; $4AD2: $1E $0D
    rrca                                          ; $4AD4: $0F
    ld b, $1F                                     ; $4AD5: $06 $1F
    rlca                                          ; $4AD7: $07
    rra                                           ; $4AD8: $1F
    ld [bc], a                                    ; $4AD9: $02
    rra                                           ; $4ADA: $1F
    dec c                                         ; $4ADB: $0D
    daa                                           ; $4ADC: $27
    dec e                                         ; $4ADD: $1D
    daa                                           ; $4ADE: $27
    dec de                                        ; $4ADF: $1B
    sub b                                         ; $4AE0: $90
    ldh [$F0], a                                  ; $4AE1: $E0 $F0
    ldh [$E0], a                                  ; $4AE3: $E0 $E0
    nop                                           ; $4AE5: $00

jr_00A_4AE6:
    ret nz                                        ; $4AE6: $C0

    add b                                         ; $4AE7: $80
    ret nz                                        ; $4AE8: $C0

    add b                                         ; $4AE9: $80
    ldh [$80], a                                  ; $4AEA: $E0 $80
    ret nc                                        ; $4AEC: $D0

    and b                                         ; $4AED: $A0
    ret nc                                        ; $4AEE: $D0

    and b                                         ; $4AEF: $A0
    inc de                                        ; $4AF0: $13
    inc c                                         ; $4AF1: $0C
    ld [de], a                                    ; $4AF2: $12
    dec c                                         ; $4AF3: $0D
    inc e                                         ; $4AF4: $1C
    inc bc                                        ; $4AF5: $03
    jr nz, jr_00A_4B17                            ; $4AF6: $20 $1F

    ld [hl], e                                    ; $4AF8: $73
    inc l                                         ; $4AF9: $2C
    ld a, a                                       ; $4AFA: $7F
    ld [hl-], a                                   ; $4AFB: $32
    ld a, a                                       ; $4AFC: $7F
    ld e, $7F                                     ; $4AFD: $1E $7F
    nop                                           ; $4AFF: $00
    ldh [rP1], a                                  ; $4B00: $E0 $00
    ld h, b                                       ; $4B02: $60
    add b                                         ; $4B03: $80
    ld a, b                                       ; $4B04: $78
    add b                                         ; $4B05: $80

jr_00A_4B06:
    db $FC                                        ; $4B06: $FC
    jr jr_00A_4B85                                ; $4B07: $18 $7C

    cp b                                          ; $4B09: $B8
    ld a, b                                       ; $4B0A: $78
    or b                                          ; $4B0B: $B0
    ld hl, sp+$40                                 ; $4B0C: $F8 $40
    ldh [rP1], a                                  ; $4B0E: $E0 $00
    inc de                                        ; $4B10: $13
    inc c                                         ; $4B11: $0C
    inc c                                         ; $4B12: $0C
    inc bc                                        ; $4B13: $03
    db $10                                        ; $4B14: $10
    rrca                                          ; $4B15: $0F
    db $10                                        ; $4B16: $10

jr_00A_4B17:
    rrca                                          ; $4B17: $0F
    cpl                                           ; $4B18: $2F
    db $10                                        ; $4B19: $10
    ccf                                           ; $4B1A: $3F
    rlca                                          ; $4B1B: $07
    ccf                                           ; $4B1C: $3F
    rrca                                          ; $4B1D: $0F
    rra                                           ; $4B1E: $1F
    nop                                           ; $4B1F: $00
    ldh [rP1], a                                  ; $4B20: $E0 $00
    jr nz, @-$3E                                  ; $4B22: $20 $C0

    jr nz, jr_00A_4AE6                            ; $4B24: $20 $C0

    ld h, b                                       ; $4B26: $60
    add b                                         ; $4B27: $80
    ldh a, [rNR41]                                ; $4B28: $F0 $20
    ldh a, [$A0]                                  ; $4B2A: $F0 $A0
    ldh a, [$80]                                  ; $4B2C: $F0 $80
    ret nz                                        ; $4B2E: $C0

    nop                                           ; $4B2F: $00
    dec de                                        ; $4B30: $1B
    inc b                                         ; $4B31: $04
    inc h                                         ; $4B32: $24
    dec de                                        ; $4B33: $1B
    jr jr_00A_4B3D                                ; $4B34: $18 $07

    inc [hl]                                      ; $4B36: $34
    dec bc                                        ; $4B37: $0B
    ld a, [hl]                                    ; $4B38: $7E
    ld hl, $3C7F                                  ; $4B39: $21 $7F $3C
    ld a, a                                       ; $4B3C: $7F

jr_00A_4B3D:
    ld e, $7F                                     ; $4B3D: $1E $7F
    nop                                           ; $4B3F: $00
    ldh [rP1], a                                  ; $4B40: $E0 $00
    ld b, b                                       ; $4B42: $40
    add b                                         ; $4B43: $80
    jr c, jr_00A_4B06                             ; $4B44: $38 $C0

    inc a                                         ; $4B46: $3C
    ret c                                         ; $4B47: $D8

    ld a, h                                       ; $4B48: $7C
    cp b                                          ; $4B49: $B8
    ld a, b                                       ; $4B4A: $78
    or b                                          ; $4B4B: $B0
    ld hl, sp+$40                                 ; $4B4C: $F8 $40
    ldh [rP1], a                                  ; $4B4E: $E0 $00
    rra                                           ; $4B50: $1F
    rlca                                          ; $4B51: $07
    ccf                                           ; $4B52: $3F
    inc de                                        ; $4B53: $13
    rra                                           ; $4B54: $1F
    inc c                                         ; $4B55: $0C
    ld a, a                                       ; $4B56: $7F
    ld d, $9F                                     ; $4B57: $16 $9F
    ld l, [hl]                                    ; $4B59: $6E
    sbc a                                         ; $4B5A: $9F
    ld h, [hl]                                    ; $4B5B: $66
    ld a, a                                       ; $4B5C: $7F
    ld c, $0F                                     ; $4B5D: $0E $0F
    ld b, $F8                                     ; $4B5F: $06 $F8
    ldh [$FC], a                                  ; $4B61: $E0 $FC
    ret z                                         ; $4B63: $C8

    ld hl, sp+$30                                 ; $4B64: $F8 $30
    cp $68                                        ; $4B66: $FE $68
    ld sp, hl                                     ; $4B68: $F9
    or $F9                                        ; $4B69: $F6 $F9
    ld h, [hl]                                    ; $4B6B: $66
    cp $F0                                        ; $4B6C: $FE $F0
    ld hl, sp-$10                                 ; $4B6E: $F8 $F0
    ld bc, $0200                                  ; $4B70: $01 $00 $02
    ld bc, $0102                                  ; $4B73: $01 $02 $01
    ld b, $03                                     ; $4B76: $06 $03
    dec b                                         ; $4B78: $05
    ld [bc], a                                    ; $4B79: $02
    ld [bc], a                                    ; $4B7A: $02
    ld bc, $0001                                  ; $4B7B: $01 $01 $00
    nop                                           ; $4B7E: $00
    nop                                           ; $4B7F: $00
    add a                                         ; $4B80: $87
    nop                                           ; $4B81: $00
    ld a, a                                       ; $4B82: $7F
    add a                                         ; $4B83: $87
    ccf                                           ; $4B84: $3F

jr_00A_4B85:
    rst $08                                       ; $4B85: $CF
    rra                                           ; $4B86: $1F
    rst $28                                       ; $4B87: $EF
    inc e                                         ; $4B88: $1C
    rst $28                                       ; $4B89: $EF
    ei                                            ; $4B8A: $FB
    add a                                         ; $4B8B: $87
    ld sp, hl                                     ; $4B8C: $F9
    ld b, [hl]                                    ; $4B8D: $46
    ld a, h                                       ; $4B8E: $7C
    inc hl                                        ; $4B8F: $23
    ldh [rP1], a                                  ; $4B90: $E0 $00

jr_00A_4B92:
    ldh a, [$E0]                                  ; $4B92: $F0 $E0

jr_00A_4B94:
    ld hl, sp-$10                                 ; $4B94: $F8 $F0
    ld hl, sp-$10                                 ; $4B96: $F8 $F0

jr_00A_4B98:
    ret c                                         ; $4B98: $D8

    ldh [$30], a                                  ; $4B99: $E0 $30
    ldh [$30], a                                  ; $4B9B: $E0 $30
    ret nz                                        ; $4B9D: $C0

    db $10                                        ; $4B9E: $10
    ldh [$72], a                                  ; $4B9F: $E0 $72
    dec c                                         ; $4BA1: $0D
    di                                            ; $4BA2: $F3
    ld l, h                                       ; $4BA3: $6C
    db $FC                                        ; $4BA4: $FC
    ld [hl], e                                    ; $4BA5: $73
    ld a, h                                       ; $4BA6: $7C
    inc sp                                        ; $4BA7: $33
    ccf                                           ; $4BA8: $3F
    nop                                           ; $4BA9: $00
    ccf                                           ; $4BAA: $3F
    ld e, $3F                                     ; $4BAB: $1E $3F
    ld e, $3F                                     ; $4BAD: $1E $3F
    inc e                                         ; $4BAF: $1C
    ldh a, [$E0]                                  ; $4BB0: $F0 $E0
    ldh a, [$C0]                                  ; $4BB2: $F0 $C0
    ldh a, [rNR41]                                ; $4BB4: $F0 $20
    ldh a, [$60]                                  ; $4BB6: $F0 $60
    ldh [rP1], a                                  ; $4BB8: $E0 $00
    ret nz                                        ; $4BBA: $C0

    nop                                           ; $4BBB: $00
    ret nz                                        ; $4BBC: $C0

    add b                                         ; $4BBD: $80
    ret nz                                        ; $4BBE: $C0

    nop                                           ; $4BBF: $00
    inc a                                         ; $4BC0: $3C
    inc bc                                        ; $4BC1: $03
    db $10                                        ; $4BC2: $10
    rrca                                          ; $4BC3: $0F
    db $10                                        ; $4BC4: $10
    rrca                                          ; $4BC5: $0F
    ld de, $2F0E                                  ; $4BC6: $11 $0E $2F
    db $10                                        ; $4BC9: $10
    ccf                                           ; $4BCA: $3F
    ld b, $3F                                     ; $4BCB: $06 $3F
    ld e, $1F                                     ; $4BCD: $1E $1F
    nop                                           ; $4BCF: $00
    jr nz, jr_00A_4B92                            ; $4BD0: $20 $C0

    jr nz, jr_00A_4B94                            ; $4BD2: $20 $C0

    sub b                                         ; $4BD4: $90
    ld h, b                                       ; $4BD5: $60
    jr nc, jr_00A_4B98                            ; $4BD6: $30 $C0

    ld hl, sp+$30                                 ; $4BD8: $F8 $30
    ld hl, sp-$10                                 ; $4BDA: $F8 $F0
    ldh a, [rP1]                                  ; $4BDC: $F0 $00
    nop                                           ; $4BDE: $00
    nop                                           ; $4BDF: $00
    rlca                                          ; $4BE0: $07
    nop                                           ; $4BE1: $00
    ccf                                           ; $4BE2: $3F
    rlca                                          ; $4BE3: $07
    ld a, a                                       ; $4BE4: $7F
    ccf                                           ; $4BE5: $3F
    ccf                                           ; $4BE6: $3F
    rra                                           ; $4BE7: $1F
    inc a                                         ; $4BE8: $3C
    rra                                           ; $4BE9: $1F
    dec de                                        ; $4BEA: $1B
    rlca                                          ; $4BEB: $07

jr_00A_4BEC:
    dec d                                         ; $4BEC: $15
    ld a, [bc]                                    ; $4BED: $0A

jr_00A_4BEE:
    inc a                                         ; $4BEE: $3C
    rla                                           ; $4BEF: $17
    ldh [rP1], a                                  ; $4BF0: $E0 $00
    ldh a, [$E0]                                  ; $4BF2: $F0 $E0
    ld hl, sp-$10                                 ; $4BF4: $F8 $F0
    ld hl, sp-$10                                 ; $4BF6: $F8 $F0
    ret c                                         ; $4BF8: $D8

    ldh [$30], a                                  ; $4BF9: $E0 $30
    ldh [$31], a                                  ; $4BFB: $E0 $31
    ret nz                                        ; $4BFD: $C0

    ld [de], a                                    ; $4BFE: $12
    pop hl                                        ; $4BFF: $E1
    nop                                           ; $4C00: $00
    nop                                           ; $4C01: $00
    nop                                           ; $4C02: $00
    nop                                           ; $4C03: $00
    nop                                           ; $4C04: $00
    nop                                           ; $4C05: $00
    nop                                           ; $4C06: $00
    nop                                           ; $4C07: $00

jr_00A_4C08:
    nop                                           ; $4C08: $00
    nop                                           ; $4C09: $00
    nop                                           ; $4C0A: $00
    nop                                           ; $4C0B: $00
    add b                                         ; $4C0C: $80
    nop                                           ; $4C0D: $00
    ldh [$80], a                                  ; $4C0E: $E0 $80
    ld a, [hl]                                    ; $4C10: $7E
    inc sp                                        ; $4C11: $33
    ccf                                           ; $4C12: $3F
    dec e                                         ; $4C13: $1D
    ld a, a                                       ; $4C14: $7F
    ld a, $7F                                     ; $4C15: $3E $7F
    dec l                                         ; $4C17: $2D
    ld a, a                                       ; $4C18: $7F
    dec bc                                        ; $4C19: $0B
    ccf                                           ; $4C1A: $3F
    ld [de], a                                    ; $4C1B: $12
    ccf                                           ; $4C1C: $3F
    inc e                                         ; $4C1D: $1C
    ccf                                           ; $4C1E: $3F
    dec e                                         ; $4C1F: $1D
    push af                                       ; $4C20: $F5
    ld [c], a                                     ; $4C21: $E2
    and $C3                                       ; $4C22: $E6 $C3
    cp $25                                        ; $4C24: $FE $25
    cp $69                                        ; $4C26: $FE $69
    jp hl                                         ; $4C28: $E9


    db $10                                        ; $4C29: $10
    jr nc, jr_00A_4BEC                            ; $4C2A: $30 $C0

    jr nz, jr_00A_4BEE                            ; $4C2C: $20 $C0

    ldh [rP1], a                                  ; $4C2E: $E0 $00
    db $10                                        ; $4C30: $10
    ldh [rNR10], a                                ; $4C31: $E0 $10
    ldh [rNR41], a                                ; $4C33: $E0 $20
    ret nz                                        ; $4C35: $C0

    ld b, b                                       ; $4C36: $40
    add b                                         ; $4C37: $80
    add b                                         ; $4C38: $80
    nop                                           ; $4C39: $00
    nop                                           ; $4C3A: $00
    nop                                           ; $4C3B: $00
    nop                                           ; $4C3C: $00
    nop                                           ; $4C3D: $00
    nop                                           ; $4C3E: $00
    nop                                           ; $4C3F: $00
    ld hl, $20C0                                  ; $4C40: $21 $C0 $20
    ret nz                                        ; $4C43: $C0

    sub b                                         ; $4C44: $90
    ld h, b                                       ; $4C45: $60
    jr nc, jr_00A_4C08                            ; $4C46: $30 $C0

    ld hl, sp+$30                                 ; $4C48: $F8 $30
    ld hl, sp-$10                                 ; $4C4A: $F8 $F0
    ldh a, [rP1]                                  ; $4C4C: $F0 $00
    nop                                           ; $4C4E: $00
    nop                                           ; $4C4F: $00
    ld [$F0F0], sp                                ; $4C50: $08 $F0 $F0
    nop                                           ; $4C53: $00
    nop                                           ; $4C54: $00
    nop                                           ; $4C55: $00
    nop                                           ; $4C56: $00
    nop                                           ; $4C57: $00
    nop                                           ; $4C58: $00
    nop                                           ; $4C59: $00
    nop                                           ; $4C5A: $00
    nop                                           ; $4C5B: $00
    nop                                           ; $4C5C: $00
    nop                                           ; $4C5D: $00
    nop                                           ; $4C5E: $00
    nop                                           ; $4C5F: $00
    ld a, [hl]                                    ; $4C60: $7E
    inc sp                                        ; $4C61: $33
    ccf                                           ; $4C62: $3F
    dec e                                         ; $4C63: $1D
    ld a, a                                       ; $4C64: $7F
    ld a, $7F                                     ; $4C65: $3E $7F
    ld h, $7E                                     ; $4C67: $26 $7E
    dec e                                         ; $4C69: $1D
    ld a, $0D                                     ; $4C6A: $3E $0D
    ccf                                           ; $4C6C: $3F
    ld [de], a                                    ; $4C6D: $12
    ccf                                           ; $4C6E: $3F
    inc e                                         ; $4C6F: $1C
    ldh a, [$E0]                                  ; $4C70: $F0 $E0
    ldh [$C0], a                                  ; $4C72: $E0 $C0
    ldh a, [rNR41]                                ; $4C74: $F0 $20
    ldh a, [$60]                                  ; $4C76: $F0 $60
    ld a, a                                       ; $4C78: $7F
    add b                                         ; $4C79: $80
    ld l, a                                       ; $4C7A: $6F
    sub a                                         ; $4C7B: $97
    rst $30                                       ; $4C7C: $F7
    ld b, b                                       ; $4C7D: $40
    ld [c], a                                     ; $4C7E: $E2
    ld bc, $0000                                  ; $4C7F: $01 $00 $00
    nop                                           ; $4C82: $00
    nop                                           ; $4C83: $00
    nop                                           ; $4C84: $00
    nop                                           ; $4C85: $00
    ld h, b                                       ; $4C86: $60
    nop                                           ; $4C87: $00
    sub b                                         ; $4C88: $90
    ld h, b                                       ; $4C89: $60
    ret c                                         ; $4C8A: $D8

    or b                                          ; $4C8B: $B0
    ld [$04F0], sp                                ; $4C8C: $08 $F0 $04
    ld hl, sp+$00                                 ; $4C8F: $F8 $00
    nop                                           ; $4C91: $00
    nop                                           ; $4C92: $00
    nop                                           ; $4C93: $00
    nop                                           ; $4C94: $00
    nop                                           ; $4C95: $00
    nop                                           ; $4C96: $00
    nop                                           ; $4C97: $00
    nop                                           ; $4C98: $00
    nop                                           ; $4C99: $00
    nop                                           ; $4C9A: $00
    nop                                           ; $4C9B: $00
    nop                                           ; $4C9C: $00
    nop                                           ; $4C9D: $00
    nop                                           ; $4C9E: $00
    nop                                           ; $4C9F: $00
    nop                                           ; $4CA0: $00
    nop                                           ; $4CA1: $00
    nop                                           ; $4CA2: $00
    nop                                           ; $4CA3: $00
    nop                                           ; $4CA4: $00
    nop                                           ; $4CA5: $00
    nop                                           ; $4CA6: $00
    nop                                           ; $4CA7: $00
    nop                                           ; $4CA8: $00
    nop                                           ; $4CA9: $00

jr_00A_4CAA:
    nop                                           ; $4CAA: $00
    nop                                           ; $4CAB: $00
    nop                                           ; $4CAC: $00
    nop                                           ; $4CAD: $00
    nop                                           ; $4CAE: $00
    nop                                           ; $4CAF: $00
    nop                                           ; $4CB0: $00
    nop                                           ; $4CB1: $00
    nop                                           ; $4CB2: $00
    nop                                           ; $4CB3: $00
    nop                                           ; $4CB4: $00
    nop                                           ; $4CB5: $00
    ldh a, [rP1]                                  ; $4CB6: $F0 $00
    ld [$04F0], sp                                ; $4CB8: $08 $F0 $04
    ld hl, sp+$04                                 ; $4CBB: $F8 $04
    ld hl, sp+$04                                 ; $4CBD: $F8 $04
    ld hl, sp+$00                                 ; $4CBF: $F8 $00
    nop                                           ; $4CC1: $00
    nop                                           ; $4CC2: $00
    nop                                           ; $4CC3: $00
    nop                                           ; $4CC4: $00
    nop                                           ; $4CC5: $00
    rlca                                          ; $4CC6: $07
    nop                                           ; $4CC7: $00

jr_00A_4CC8:
    ld [$1007], sp                                ; $4CC8: $08 $07 $10
    rrca                                          ; $4CCB: $0F
    db $10                                        ; $4CCC: $10
    rrca                                          ; $4CCD: $0F
    db $10                                        ; $4CCE: $10
    rrca                                          ; $4CCF: $0F
    nop                                           ; $4CD0: $00
    nop                                           ; $4CD1: $00
    nop                                           ; $4CD2: $00
    nop                                           ; $4CD3: $00
    nop                                           ; $4CD4: $00
    nop                                           ; $4CD5: $00
    ldh a, [rP1]                                  ; $4CD6: $F0 $00
    ld [$08F0], sp                                ; $4CD8: $08 $F0 $08
    ldh a, [$08]                                  ; $4CDB: $F0 $08
    ldh a, [$2C]                                  ; $4CDD: $F0 $2C
    ret nc                                        ; $4CDF: $D0

    nop                                           ; $4CE0: $00
    nop                                           ; $4CE1: $00
    nop                                           ; $4CE2: $00
    nop                                           ; $4CE3: $00
    nop                                           ; $4CE4: $00
    nop                                           ; $4CE5: $00
    ret nz                                        ; $4CE6: $C0

    nop                                           ; $4CE7: $00
    jr nz, jr_00A_4CAA                            ; $4CE8: $20 $C0

    db $10                                        ; $4CEA: $10
    ldh [rNR10], a                                ; $4CEB: $E0 $10
    ldh [rNR10], a                                ; $4CED: $E0 $10
    ldh [rP1], a                                  ; $4CEF: $E0 $00
    nop                                           ; $4CF1: $00
    nop                                           ; $4CF2: $00
    nop                                           ; $4CF3: $00
    rrca                                          ; $4CF4: $0F
    nop                                           ; $4CF5: $00
    db $10                                        ; $4CF6: $10
    rrca                                          ; $4CF7: $0F
    jr nz, jr_00A_4D19                            ; $4CF8: $20 $1F

    jr nz, @+$21                                  ; $4CFA: $20 $1F

    jr nz, jr_00A_4D1D                            ; $4CFC: $20 $1F

    jr nz, @+$21                                  ; $4CFE: $20 $1F

    nop                                           ; $4D00: $00
    nop                                           ; $4D01: $00
    nop                                           ; $4D02: $00
    nop                                           ; $4D03: $00
    ret nz                                        ; $4D04: $C0

    nop                                           ; $4D05: $00
    jr nz, jr_00A_4CC8                            ; $4D06: $20 $C0

    db $10                                        ; $4D08: $10
    ldh [rNR10], a                                ; $4D09: $E0 $10
    ldh [rNR10], a                                ; $4D0B: $E0 $10
    ldh [$F0], a                                  ; $4D0D: $E0 $F0
    ldh [rNR23], a                                ; $4D0F: $E0 $18
    rlca                                          ; $4D11: $07
    rla                                           ; $4D12: $17
    rrca                                          ; $4D13: $0F
    rrca                                          ; $4D14: $0F
    rrca                                          ; $4D15: $0F
    inc e                                         ; $4D16: $1C
    inc de                                        ; $4D17: $13
    ccf                                           ; $4D18: $3F

jr_00A_4D19:
    ld bc, HeaderManufacturerCode                 ; $4D19: $01 $3F $01
    ld a, a                                       ; $4D1C: $7F

jr_00A_4D1D:
    ld bc, $003F                                  ; $4D1D: $01 $3F $00
    db $10                                        ; $4D20: $10
    ldh [$30], a                                  ; $4D21: $E0 $30
    ldh a, [$38]                                  ; $4D23: $F0 $38
    ld hl, sp+$18                                 ; $4D25: $F8 $18
    add sp, -$20                                  ; $4D27: $E8 $E0
    ret nz                                        ; $4D29: $C0

    ldh a, [$C0]                                  ; $4D2A: $F0 $C0
    ldh a, [$C0]                                  ; $4D2C: $F0 $C0
    ldh a, [$C0]                                  ; $4D2E: $F0 $C0
    db $10                                        ; $4D30: $10
    rrca                                          ; $4D31: $0F
    ld e, $0F                                     ; $4D32: $1E $0F
    ld a, $1F                                     ; $4D34: $3E $1F
    ld a, b                                       ; $4D36: $78
    daa                                           ; $4D37: $27
    cpl                                           ; $4D38: $2F
    inc bc                                        ; $4D39: $03
    rra                                           ; $4D3A: $1F
    inc bc                                        ; $4D3B: $03
    rra                                           ; $4D3C: $1F
    inc bc                                        ; $4D3D: $03
    rra                                           ; $4D3E: $1F
    ld bc, $F008                                  ; $4D3F: $01 $08 $F0
    ld a, b                                       ; $4D42: $78
    ldh a, [$7C]                                  ; $4D43: $F0 $7C
    ld hl, sp+$1E                                 ; $4D45: $F8 $1E
    db $E4                                        ; $4D47: $E4
    db $F4                                        ; $4D48: $F4
    ret nz                                        ; $4D49: $C0

    ld hl, sp-$40                                 ; $4D4A: $F8 $C0
    ld hl, sp-$40                                 ; $4D4C: $F8 $C0
    ld hl, sp-$80                                 ; $4D4E: $F8 $80
    inc b                                         ; $4D50: $04
    ld hl, sp+$0A                                 ; $4D51: $F8 $0A
    db $F4                                        ; $4D53: $F4
    db $FC                                        ; $4D54: $FC
    nop                                           ; $4D55: $00
    ld hl, sp+$00                                 ; $4D56: $F8 $00
    db $FC                                        ; $4D58: $FC
    nop                                           ; $4D59: $00
    db $FC                                        ; $4D5A: $FC
    nop                                           ; $4D5B: $00
    db $FC                                        ; $4D5C: $FC
    nop                                           ; $4D5D: $00
    ld hl, sp+$00                                 ; $4D5E: $F8 $00
    db $10                                        ; $4D60: $10
    rrca                                          ; $4D61: $0F
    jr jr_00A_4D6B                                ; $4D62: $18 $07

    rrca                                          ; $4D64: $0F
    nop                                           ; $4D65: $00
    rrca                                          ; $4D66: $0F
    nop                                           ; $4D67: $00
    rra                                           ; $4D68: $1F
    nop                                           ; $4D69: $00
    rra                                           ; $4D6A: $1F

jr_00A_4D6B:
    nop                                           ; $4D6B: $00
    rrca                                          ; $4D6C: $0F
    nop                                           ; $4D6D: $00
    rrca                                          ; $4D6E: $0F
    nop                                           ; $4D6F: $00
    ld c, [hl]                                    ; $4D70: $4E
    or h                                          ; $4D71: $B4
    ld l, $D4                                     ; $4D72: $2E $D4
    sbc h                                         ; $4D74: $9C
    ld l, b                                       ; $4D75: $68
    db $FC                                        ; $4D76: $FC
    ld [$08FC], sp                                ; $4D77: $08 $FC $08
    db $FC                                        ; $4D7A: $FC
    nop                                           ; $4D7B: $00
    db $FC                                        ; $4D7C: $FC
    nop                                           ; $4D7D: $00
    db $FC                                        ; $4D7E: $FC
    nop                                           ; $4D7F: $00
    db $10                                        ; $4D80: $10
    rrca                                          ; $4D81: $0F
    db $10                                        ; $4D82: $10
    rrca                                          ; $4D83: $0F
    ld e, $0F                                     ; $4D84: $1E $0F
    ld a, $1F                                     ; $4D86: $3E $1F
    ld a, b                                       ; $4D88: $78
    daa                                           ; $4D89: $27
    cpl                                           ; $4D8A: $2F
    inc bc                                        ; $4D8B: $03
    rra                                           ; $4D8C: $1F
    inc bc                                        ; $4D8D: $03
    ccf                                           ; $4D8E: $3F
    ld bc, $F008                                  ; $4D8F: $01 $08 $F0
    ld [$78F0], sp                                ; $4D92: $08 $F0 $78
    ldh a, [$7C]                                  ; $4D95: $F0 $7C
    ld hl, sp+$1E                                 ; $4D97: $F8 $1E
    db $E4                                        ; $4D99: $E4
    add sp, -$40                                  ; $4D9A: $E8 $C0
    ldh a, [$C0]                                  ; $4D9C: $F0 $C0
    ldh a, [$C0]                                  ; $4D9E: $F0 $C0
    ld [$0807], sp                                ; $4DA0: $08 $07 $08
    rlca                                          ; $4DA3: $07
    inc d                                         ; $4DA4: $14
    dec bc                                        ; $4DA5: $0B
    rrca                                          ; $4DA6: $0F
    nop                                           ; $4DA7: $00
    rrca                                          ; $4DA8: $0F
    nop                                           ; $4DA9: $00
    rra                                           ; $4DAA: $1F
    nop                                           ; $4DAB: $00
    rra                                           ; $4DAC: $1F
    nop                                           ; $4DAD: $00
    rra                                           ; $4DAE: $1F
    nop                                           ; $4DAF: $00
    inc b                                         ; $4DB0: $04
    ld hl, sp+$04                                 ; $4DB1: $F8 $04
    ld hl, sp+$0A                                 ; $4DB3: $F8 $0A
    db $F4                                        ; $4DB5: $F4
    db $FC                                        ; $4DB6: $FC
    nop                                           ; $4DB7: $00
    ld hl, sp+$00                                 ; $4DB8: $F8 $00
    db $FC                                        ; $4DBA: $FC
    nop                                           ; $4DBB: $00
    db $FC                                        ; $4DBC: $FC
    nop                                           ; $4DBD: $00
    db $FC                                        ; $4DBE: $FC
    nop                                           ; $4DBF: $00
    rra                                           ; $4DC0: $1F
    nop                                           ; $4DC1: $00
    rra                                           ; $4DC2: $1F
    nop                                           ; $4DC3: $00
    rra                                           ; $4DC4: $1F
    nop                                           ; $4DC5: $00
    rra                                           ; $4DC6: $1F
    nop                                           ; $4DC7: $00
    ccf                                           ; $4DC8: $3F
    nop                                           ; $4DC9: $00
    ccf                                           ; $4DCA: $3F
    ld b, $3F                                     ; $4DCB: $06 $3F
    ld e, $1F                                     ; $4DCD: $1E $1F
    nop                                           ; $4DCF: $00
    ldh [$C0], a                                  ; $4DD0: $E0 $C0
    ldh [$80], a                                  ; $4DD2: $E0 $80
    ldh a, [$C0]                                  ; $4DD4: $F0 $C0
    ldh a, [rP1]                                  ; $4DD6: $F0 $00
    ld hl, sp+$30                                 ; $4DD8: $F8 $30
    ld hl, sp-$10                                 ; $4DDA: $F8 $F0
    ldh a, [rP1]                                  ; $4DDC: $F0 $00
    nop                                           ; $4DDE: $00
    nop                                           ; $4DDF: $00
    rlca                                          ; $4DE0: $07
    nop                                           ; $4DE1: $00
    rrca                                          ; $4DE2: $0F
    nop                                           ; $4DE3: $00
    rrca                                          ; $4DE4: $0F
    nop                                           ; $4DE5: $00
    rra                                           ; $4DE6: $1F
    nop                                           ; $4DE7: $00
    rra                                           ; $4DE8: $1F
    ld b, $1F                                     ; $4DE9: $06 $1F
    rrca                                          ; $4DEB: $0F
    rra                                           ; $4DEC: $1F
    ld c, $0F                                     ; $4DED: $0E $0F
    nop                                           ; $4DEF: $00
    ld hl, sp-$40                                 ; $4DF0: $F8 $C0
    ld hl, sp-$80                                 ; $4DF2: $F8 $80
    db $FC                                        ; $4DF4: $FC
    add b                                         ; $4DF5: $80
    db $FC                                        ; $4DF6: $FC

jr_00A_4DF7:
    add b                                         ; $4DF7: $80
    db $FC                                        ; $4DF8: $FC
    jr nc, jr_00A_4DF7                            ; $4DF9: $30 $FC

    ld a, b                                       ; $4DFB: $78
    db $FC                                        ; $4DFC: $FC
    jr c, jr_00A_4DF7                             ; $4DFD: $38 $F8

    nop                                           ; $4DFF: $00
    ld hl, sp+$00                                 ; $4E00: $F8 $00
    ld hl, sp+$00                                 ; $4E02: $F8 $00
    ld hl, sp+$00                                 ; $4E04: $F8 $00
    ld hl, sp+$00                                 ; $4E06: $F8 $00
    ld hl, sp+$00                                 ; $4E08: $F8 $00
    db $FC                                        ; $4E0A: $FC
    ld [$70FC], sp                                ; $4E0B: $08 $FC $70
    ld hl, sp+$00                                 ; $4E0E: $F8 $00
    rrca                                          ; $4E10: $0F
    nop                                           ; $4E11: $00
    rrca                                          ; $4E12: $0F
    nop                                           ; $4E13: $00
    rrca                                          ; $4E14: $0F
    nop                                           ; $4E15: $00
    rrca                                          ; $4E16: $0F
    nop                                           ; $4E17: $00
    rrca                                          ; $4E18: $0F
    nop                                           ; $4E19: $00
    rrca                                          ; $4E1A: $0F
    ld b, $0F                                     ; $4E1B: $06 $0F
    nop                                           ; $4E1D: $00
    nop                                           ; $4E1E: $00
    nop                                           ; $4E1F: $00
    ld hl, sp+$00                                 ; $4E20: $F8 $00
    ld hl, sp+$00                                 ; $4E22: $F8 $00
    ld hl, sp+$00                                 ; $4E24: $F8 $00
    ld hl, sp+$00                                 ; $4E26: $F8 $00
    ld hl, sp+$00                                 ; $4E28: $F8 $00
    db $FC                                        ; $4E2A: $FC
    ld [$70FC], sp                                ; $4E2B: $08 $FC $70
    ld hl, sp+$00                                 ; $4E2E: $F8 $00
    ccf                                           ; $4E30: $3F
    ld bc, HeaderManufacturerCode                 ; $4E31: $01 $3F $01
    ccf                                           ; $4E34: $3F
    ld bc, $023F                                  ; $4E35: $01 $3F $02
    rra                                           ; $4E38: $1F
    nop                                           ; $4E39: $00
    rrca                                          ; $4E3A: $0F
    ld bc, $050F                                  ; $4E3B: $01 $0F $05
    rlca                                          ; $4E3E: $07
    nop                                           ; $4E3F: $00
    ldh a, [$80]                                  ; $4E40: $F0 $80
    ldh a, [$80]                                  ; $4E42: $F0 $80
    ldh a, [rP1]                                  ; $4E44: $F0 $00
    ldh a, [rP1]                                  ; $4E46: $F0 $00
    ldh [$C0], a                                  ; $4E48: $E0 $C0
    ldh [$C0], a                                  ; $4E4A: $E0 $C0
    ret nz                                        ; $4E4C: $C0

    add b                                         ; $4E4D: $80
    ret nz                                        ; $4E4E: $C0

    nop                                           ; $4E4F: $00
    rrca                                          ; $4E50: $0F
    nop                                           ; $4E51: $00
    rrca                                          ; $4E52: $0F
    nop                                           ; $4E53: $00
    rrca                                          ; $4E54: $0F
    nop                                           ; $4E55: $00
    rrca                                          ; $4E56: $0F
    nop                                           ; $4E57: $00
    rrca                                          ; $4E58: $0F
    nop                                           ; $4E59: $00
    rlca                                          ; $4E5A: $07
    nop                                           ; $4E5B: $00
    rlca                                          ; $4E5C: $07
    inc bc                                        ; $4E5D: $03
    rlca                                          ; $4E5E: $07
    nop                                           ; $4E5F: $00
    ld hl, sp+$00                                 ; $4E60: $F8 $00
    ld hl, sp+$00                                 ; $4E62: $F8 $00
    ld hl, sp+$00                                 ; $4E64: $F8 $00
    ld hl, sp+$00                                 ; $4E66: $F8 $00
    ld hl, sp+$00                                 ; $4E68: $F8 $00
    ldh a, [$60]                                  ; $4E6A: $F0 $60
    ldh a, [$60]                                  ; $4E6C: $F0 $60
    ldh a, [rP1]                                  ; $4E6E: $F0 $00
    jr nz, jr_00A_4E91                            ; $4E70: $20 $1F

    dec d                                         ; $4E72: $15
    dec bc                                        ; $4E73: $0B
    add hl, bc                                    ; $4E74: $09
    rlca                                          ; $4E75: $07
    inc b                                         ; $4E76: $04
    inc bc                                        ; $4E77: $03
    rrca                                          ; $4E78: $0F
    nop                                           ; $4E79: $00
    rra                                           ; $4E7A: $1F
    nop                                           ; $4E7B: $00
    ccf                                           ; $4E7C: $3F
    nop                                           ; $4E7D: $00
    ccf                                           ; $4E7E: $3F
    nop                                           ; $4E7F: $00
    ldh a, [$E0]                                  ; $4E80: $F0 $E0
    ldh a, [$E0]                                  ; $4E82: $F0 $E0
    db $10                                        ; $4E84: $10

jr_00A_4E85:
    ldh [$30], a                                  ; $4E85: $E0 $30

jr_00A_4E87:
    ldh [$F8], a                                  ; $4E87: $E0 $F8
    jr nc, @-$06                                  ; $4E89: $30 $F8

    jr nc, jr_00A_4E85                            ; $4E8B: $30 $F8

    jr nc, jr_00A_4E87                            ; $4E8D: $30 $F8

    db $10                                        ; $4E8F: $10
    dec d                                         ; $4E90: $15

jr_00A_4E91:
    dec bc                                        ; $4E91: $0B
    add hl, bc                                    ; $4E92: $09
    rlca                                          ; $4E93: $07
    inc b                                         ; $4E94: $04
    inc bc                                        ; $4E95: $03
    rrca                                          ; $4E96: $0F
    nop                                           ; $4E97: $00
    rra                                           ; $4E98: $1F
    nop                                           ; $4E99: $00
    ccf                                           ; $4E9A: $3F
    nop                                           ; $4E9B: $00
    ccf                                           ; $4E9C: $3F
    nop                                           ; $4E9D: $00
    rra                                           ; $4E9E: $1F
    nop                                           ; $4E9F: $00
    ldh a, [$E0]                                  ; $4EA0: $F0 $E0
    db $10                                        ; $4EA2: $10

jr_00A_4EA3:
    ldh [$30], a                                  ; $4EA3: $E0 $30

jr_00A_4EA5:
    ldh [$F8], a                                  ; $4EA5: $E0 $F8
    jr nc, @-$06                                  ; $4EA7: $30 $F8

    jr nc, jr_00A_4EA3                            ; $4EA9: $30 $F8

    jr nc, jr_00A_4EA5                            ; $4EAB: $30 $F8

    db $10                                        ; $4EAD: $10
    ld hl, sp+$10                                 ; $4EAE: $F8 $10
    rra                                           ; $4EB0: $1F
    nop                                           ; $4EB1: $00
    rrca                                          ; $4EB2: $0F
    nop                                           ; $4EB3: $00
    rrca                                          ; $4EB4: $0F
    nop                                           ; $4EB5: $00
    rrca                                          ; $4EB6: $0F
    nop                                           ; $4EB7: $00
    rra                                           ; $4EB8: $1F
    nop                                           ; $4EB9: $00
    rra                                           ; $4EBA: $1F
    inc bc                                        ; $4EBB: $03
    rra                                           ; $4EBC: $1F
    rlca                                          ; $4EBD: $07
    rrca                                          ; $4EBE: $0F
    nop                                           ; $4EBF: $00
    ldh a, [rNR41]                                ; $4EC0: $F0 $20
    ldh a, [rP1]                                  ; $4EC2: $F0 $00
    ldh a, [rP1]                                  ; $4EC4: $F0 $00
    ldh a, [rP1]                                  ; $4EC6: $F0 $00
    ld hl, sp+$10                                 ; $4EC8: $F8 $10
    ld hl, sp-$30                                 ; $4ECA: $F8 $D0
    ld hl, sp-$40                                 ; $4ECC: $F8 $C0
    ldh [rP1], a                                  ; $4ECE: $E0 $00
    rra                                           ; $4ED0: $1F
    nop                                           ; $4ED1: $00
    rra                                           ; $4ED2: $1F
    nop                                           ; $4ED3: $00
    rrca                                          ; $4ED4: $0F
    nop                                           ; $4ED5: $00
    rra                                           ; $4ED6: $1F
    nop                                           ; $4ED7: $00
    ccf                                           ; $4ED8: $3F
    db $10                                        ; $4ED9: $10
    ccf                                           ; $4EDA: $3F
    ld e, $3F                                     ; $4EDB: $1E $3F
    rrca                                          ; $4EDD: $0F
    ccf                                           ; $4EDE: $3F

jr_00A_4EDF:
    nop                                           ; $4EDF: $00
    ld hl, sp+$30                                 ; $4EE0: $F8 $30
    ldh a, [rP1]                                  ; $4EE2: $F0 $00
    db $FC                                        ; $4EE4: $FC
    nop                                           ; $4EE5: $00
    cp $0C                                        ; $4EE6: $FE $0C
    cp $1C                                        ; $4EE8: $FE $1C
    db $FC                                        ; $4EEA: $FC
    jr @-$02                                      ; $4EEB: $18 $FC

    jr nz, jr_00A_4EDF                            ; $4EED: $20 $F0

    nop                                           ; $4EEF: $00
    ld a, b                                       ; $4EF0: $78
    nop                                           ; $4EF1: $00
    cp a                                          ; $4EF2: $BF
    ld [hl], b                                    ; $4EF3: $70
    rst $10                                       ; $4EF4: $D7
    ld l, a                                       ; $4EF5: $6F
    ld [hl], c                                    ; $4EF6: $71
    rra                                           ; $4EF7: $1F
    add hl, sp                                    ; $4EF8: $39
    rra                                           ; $4EF9: $1F
    dec sp                                        ; $4EFA: $3B
    inc e                                         ; $4EFB: $1C
    inc a                                         ; $4EFC: $3C
    dec bc                                        ; $4EFD: $0B
    ld l, $17                                     ; $4EFE: $2E $17
    nop                                           ; $4F00: $00
    nop                                           ; $4F01: $00
    ldh [rP1], a                                  ; $4F02: $E0 $00
    ldh a, [$E0]                                  ; $4F04: $F0 $E0
    ld hl, sp-$10                                 ; $4F06: $F8 $F0
    ld hl, sp-$10                                 ; $4F08: $F8 $F0
    db $FC                                        ; $4F0A: $FC
    cp b                                          ; $4F0B: $B8
    cp h                                          ; $4F0C: $BC
    ld e, b                                       ; $4F0D: $58
    ld a, h                                       ; $4F0E: $7C
    add sp, $02                                   ; $4F0F: $E8 $02
    ld bc, $0007                                  ; $4F11: $01 $07 $00
    dec bc                                        ; $4F14: $0B
    rlca                                          ; $4F15: $07
    dec de                                        ; $4F16: $1B
    rrca                                          ; $4F17: $0F
    add hl, de                                    ; $4F18: $19
    rrca                                          ; $4F19: $0F
    dec de                                        ; $4F1A: $1B
    dec c                                         ; $4F1B: $0D
    dec e                                         ; $4F1C: $1D
    ld a, [bc]                                    ; $4F1D: $0A
    ld l, $17                                     ; $4F1E: $2E $17
    ldh [$C0], a                                  ; $4F20: $E0 $C0
    ldh a, [rNR41]                                ; $4F22: $F0 $20
    ldh a, [$E0]                                  ; $4F24: $F0 $E0
    ld hl, sp-$10                                 ; $4F26: $F8 $F0
    ret c                                         ; $4F28: $D8

    ldh a, [$D8]                                  ; $4F29: $F0 $D8
    jr nc, jr_00A_4F65                            ; $4F2B: $30 $38

    ret nc                                        ; $4F2D: $D0

    ld [hl], h                                    ; $4F2E: $74
    add sp, $01                                   ; $4F2F: $E8 $01
    nop                                           ; $4F31: $00
    ld b, $01                                     ; $4F32: $06 $01
    ld a, [bc]                                    ; $4F34: $0A
    dec b                                         ; $4F35: $05
    ld [de], a                                    ; $4F36: $12
    dec c                                         ; $4F37: $0D
    rla                                           ; $4F38: $17
    ld c, $17                                     ; $4F39: $0E $17
    rrca                                          ; $4F3B: $0F
    rra                                           ; $4F3C: $1F
    rrca                                          ; $4F3D: $0F
    cpl                                           ; $4F3E: $2F
    rla                                           ; $4F3F: $17
    ret nz                                        ; $4F40: $C0

    nop                                           ; $4F41: $00
    ld [hl], b                                    ; $4F42: $70
    ret nz                                        ; $4F43: $C0

jr_00A_4F44:
    ldh a, [$C0]                                  ; $4F44: $F0 $C0
    add sp, -$30                                  ; $4F46: $E8 $D0
    ld hl, sp+$30                                 ; $4F48: $F8 $30
    ld hl, sp-$10                                 ; $4F4A: $F8 $F0
    ld hl, sp-$10                                 ; $4F4C: $F8 $F0
    db $F4                                        ; $4F4E: $F4
    add sp, $1D                                   ; $4F4F: $E8 $1D
    nop                                           ; $4F51: $00
    daa                                           ; $4F52: $27
    dec e                                         ; $4F53: $1D
    cpl                                           ; $4F54: $2F
    dec e                                         ; $4F55: $1D
    ccf                                           ; $4F56: $3F
    dec e                                         ; $4F57: $1D
    ld e, $03                                     ; $4F58: $1E $03
    inc e                                         ; $4F5A: $1C
    rrca                                          ; $4F5B: $0F
    rra                                           ; $4F5C: $1F
    rrca                                          ; $4F5D: $0F
    rrca                                          ; $4F5E: $0F
    rlca                                          ; $4F5F: $07
    ld hl, sp+$00                                 ; $4F60: $F8 $00
    inc e                                         ; $4F62: $1C
    ld hl, sp-$62                                 ; $4F63: $F8 $9E

jr_00A_4F65:
    db $FC                                        ; $4F65: $FC
    ld e, $FC                                     ; $4F66: $1E $FC
    ld a, [hl]                                    ; $4F68: $7E
    db $F4                                        ; $4F69: $F4
    cp $E4                                        ; $4F6A: $FE $E4
    db $EC                                        ; $4F6C: $EC
    ret nc                                        ; $4F6D: $D0

    ret z                                         ; $4F6E: $C8

    or b                                          ; $4F6F: $B0
    ld a, [de]                                    ; $4F70: $1A
    dec b                                         ; $4F71: $05
    inc b                                         ; $4F72: $04
    inc bc                                        ; $4F73: $03
    rrca                                          ; $4F74: $0F
    inc b                                         ; $4F75: $04
    rra                                           ; $4F76: $1F
    ld c, $1F                                     ; $4F77: $0E $1F
    rrca                                          ; $4F79: $0F
    rra                                           ; $4F7A: $1F
    rrca                                          ; $4F7B: $0F
    rra                                           ; $4F7C: $1F
    dec c                                         ; $4F7D: $0D
    rra                                           ; $4F7E: $1F
    dec bc                                        ; $4F7F: $0B
    ld e, b                                       ; $4F80: $58
    and b                                         ; $4F81: $A0
    jr nz, jr_00A_4F44                            ; $4F82: $20 $C0

    ret nz                                        ; $4F84: $C0

    nop                                           ; $4F85: $00
    ldh [rLCDC], a                                ; $4F86: $E0 $40
    ldh [rLCDC], a                                ; $4F88: $E0 $40
    ldh [$C0], a                                  ; $4F8A: $E0 $C0
    ldh [$C0], a                                  ; $4F8C: $E0 $C0
    ret nz                                        ; $4F8E: $C0

    nop                                           ; $4F8F: $00
    ld a, [de]                                    ; $4F90: $1A
    dec b                                         ; $4F91: $05
    inc c                                         ; $4F92: $0C
    inc bc                                        ; $4F93: $03
    rlca                                          ; $4F94: $07
    nop                                           ; $4F95: $00
    rrca                                          ; $4F96: $0F
    rlca                                          ; $4F97: $07
    rra                                           ; $4F98: $1F
    rrca                                          ; $4F99: $0F
    rra                                           ; $4F9A: $1F
    rrca                                          ; $4F9B: $0F
    rra                                           ; $4F9C: $1F
    dec c                                         ; $4F9D: $0D
    rra                                           ; $4F9E: $1F
    inc c                                         ; $4F9F: $0C
    rra                                           ; $4FA0: $1F
    rlca                                          ; $4FA1: $07
    rrca                                          ; $4FA2: $0F
    inc bc                                        ; $4FA3: $03
    rlca                                          ; $4FA4: $07
    nop                                           ; $4FA5: $00

jr_00A_4FA6:
    rrca                                          ; $4FA6: $0F
    rlca                                          ; $4FA7: $07
    rra                                           ; $4FA8: $1F
    rrca                                          ; $4FA9: $0F
    rra                                           ; $4FAA: $1F
    rrca                                          ; $4FAB: $0F
    rra                                           ; $4FAC: $1F
    rrca                                          ; $4FAD: $0F
    rra                                           ; $4FAE: $1F
    ld c, $F8                                     ; $4FAF: $0E $F8
    ldh [$F0], a                                  ; $4FB1: $E0 $F0
    ret nz                                        ; $4FB3: $C0

    ldh [rP1], a                                  ; $4FB4: $E0 $00
    ldh a, [$E0]                                  ; $4FB6: $F0 $E0
    ld hl, sp-$10                                 ; $4FB8: $F8 $F0
    ld hl, sp-$10                                 ; $4FBA: $F8 $F0
    ld hl, sp-$10                                 ; $4FBC: $F8 $F0
    ld hl, sp+$30                                 ; $4FBE: $F8 $30
    ld a, [c]                                     ; $4FC0: $F2
    ld l, h                                       ; $4FC1: $6C
    ld a, b                                       ; $4FC2: $78
    nop                                           ; $4FC3: $00
    ld a, h                                       ; $4FC4: $7C
    jr c, @+$80                                   ; $4FC5: $38 $7E

    inc a                                         ; $4FC7: $3C
    ld a, [hl]                                    ; $4FC8: $7E
    inc a                                         ; $4FC9: $3C
    ld a, [hl]                                    ; $4FCA: $7E
    inc l                                         ; $4FCB: $2C
    ld a, $0C                                     ; $4FCC: $3E $0C
    ld a, h                                       ; $4FCE: $7C
    jr nc, jr_00A_4FFF                            ; $4FCF: $30 $2E

    rla                                           ; $4FD1: $17
    ld a, [de]                                    ; $4FD2: $1A
    dec b                                         ; $4FD3: $05
    inc c                                         ; $4FD4: $0C
    inc bc                                        ; $4FD5: $03
    rlca                                          ; $4FD6: $07
    nop                                           ; $4FD7: $00
    rrca                                          ; $4FD8: $0F

jr_00A_4FD9:
    rlca                                          ; $4FD9: $07
    rrca                                          ; $4FDA: $0F
    rlca                                          ; $4FDB: $07
    rrca                                          ; $4FDC: $0F
    dec b                                         ; $4FDD: $05
    rrca                                          ; $4FDE: $0F
    ld b, $74                                     ; $4FDF: $06 $74
    add sp, $58                                   ; $4FE1: $E8 $58
    and b                                         ; $4FE3: $A0
    jr nc, jr_00A_4FA6                            ; $4FE4: $30 $C0

    ldh [rP1], a                                  ; $4FE6: $E0 $00
    ldh a, [$E0]                                  ; $4FE8: $F0 $E0
    ldh a, [$E0]                                  ; $4FEA: $F0 $E0
    ldh a, [$A0]                                  ; $4FEC: $F0 $A0
    ldh a, [$A0]                                  ; $4FEE: $F0 $A0
    cpl                                           ; $4FF0: $2F
    rla                                           ; $4FF1: $17
    rra                                           ; $4FF2: $1F
    rlca                                          ; $4FF3: $07
    rrca                                          ; $4FF4: $0F
    inc bc                                        ; $4FF5: $03
    rlca                                          ; $4FF6: $07
    nop                                           ; $4FF7: $00
    rrca                                          ; $4FF8: $0F
    rlca                                          ; $4FF9: $07
    rrca                                          ; $4FFA: $0F
    rlca                                          ; $4FFB: $07
    rrca                                          ; $4FFC: $0F
    rlca                                          ; $4FFD: $07
    rrca                                          ; $4FFE: $0F

jr_00A_4FFF:
    rlca                                          ; $4FFF: $07
    db $F4                                        ; $5000: $F4
    add sp, -$08                                  ; $5001: $E8 $F8
    ldh [$F0], a                                  ; $5003: $E0 $F0
    ret nz                                        ; $5005: $C0

    ldh [rP1], a                                  ; $5006: $E0 $00
    ldh a, [$E0]                                  ; $5008: $F0 $E0
    ldh a, [$E0]                                  ; $500A: $F0 $E0
    ldh a, [$E0]                                  ; $500C: $F0 $E0
    ldh a, [$A0]                                  ; $500E: $F0 $A0
    rrca                                          ; $5010: $0F
    nop                                           ; $5011: $00
    rrca                                          ; $5012: $0F
    rlca                                          ; $5013: $07
    rrca                                          ; $5014: $0F
    rlca                                          ; $5015: $07
    rra                                           ; $5016: $1F
    rrca                                          ; $5017: $0F
    rra                                           ; $5018: $1F
    inc c                                         ; $5019: $0C
    ld e, $01                                     ; $501A: $1E $01
    db $10                                        ; $501C: $10
    rrca                                          ; $501D: $0F
    rrca                                          ; $501E: $0F
    nop                                           ; $501F: $00
    ret nz                                        ; $5020: $C0

    add b                                         ; $5021: $80
    ldh [$C0], a                                  ; $5022: $E0 $C0
    ldh [$C0], a                                  ; $5024: $E0 $C0
    ldh a, [$80]                                  ; $5026: $F0 $80
    ret z                                         ; $5028: $C8

    jr nc, @+$4A                                  ; $5029: $30 $48

    or b                                          ; $502B: $B0
    ld [hl], b                                    ; $502C: $70
    add b                                         ; $502D: $80
    ret nz                                        ; $502E: $C0

    nop                                           ; $502F: $00
    rrca                                          ; $5030: $0F
    inc bc                                        ; $5031: $03
    rrca                                          ; $5032: $0F
    rlca                                          ; $5033: $07
    rrca                                          ; $5034: $0F
    rlca                                          ; $5035: $07
    rrca                                          ; $5036: $0F
    inc bc                                        ; $5037: $03
    inc de                                        ; $5038: $13
    inc c                                         ; $5039: $0C
    ld hl, $231E                                  ; $503A: $21 $1E $23
    inc e                                         ; $503D: $1C
    rra                                           ; $503E: $1F
    nop                                           ; $503F: $00
    ldh a, [$C0]                                  ; $5040: $F0 $C0
    ldh a, [rNR41]                                ; $5042: $F0 $20
    ldh a, [$E0]                                  ; $5044: $F0 $E0
    ldh a, [$E0]                                  ; $5046: $F0 $E0
    ld hl, sp-$20                                 ; $5048: $F8 $E0
    db $E4                                        ; $504A: $E4
    jr jr_00A_4FD9                                ; $504B: $18 $8C

    ld [hl], b                                    ; $504D: $70
    ld hl, sp+$00                                 ; $504E: $F8 $00
    db $FC                                        ; $5050: $FC
    ld a, b                                       ; $5051: $78
    db $FC                                        ; $5052: $FC
    ld a, b                                       ; $5053: $78
    db $FC                                        ; $5054: $FC
    ld a, b                                       ; $5055: $78
    db $FC                                        ; $5056: $FC
    ld a, b                                       ; $5057: $78
    cp $38                                        ; $5058: $FE $38
    cp c                                          ; $505A: $B9
    ld b, [hl]                                    ; $505B: $46
    db $E3                                        ; $505C: $E3
    inc e                                         ; $505D: $1C
    ld a, $00                                     ; $505E: $3E $00
    cp $60                                        ; $5060: $FE $60
    ld a, [hl]                                    ; $5062: $7E
    inc e                                         ; $5063: $1C
    ld a, [hl]                                    ; $5064: $7E
    inc a                                         ; $5065: $3C
    ld a, [hl]                                    ; $5066: $7E
    jr c, jr_00A_50E2                             ; $5067: $38 $79

    ld [hl], $71                                  ; $5069: $36 $71
    ld c, $52                                     ; $506B: $0E $52
    inc l                                         ; $506D: $2C
    ld a, $00                                     ; $506E: $3E $00
    cp $7C                                        ; $5070: $FE $7C
    cp $40                                        ; $5072: $FE $40
    cp $3C                                        ; $5074: $FE $3C
    ld a, h                                       ; $5076: $7C
    jr nz, jr_00A_50DD                            ; $5077: $20 $64

    jr jr_00A_509D                                ; $5079: $18 $22

    inc e                                         ; $507B: $1C
    ld d, d                                       ; $507C: $52
    inc l                                         ; $507D: $2C
    ld a, $00                                     ; $507E: $3E $00
    dec de                                        ; $5080: $1B
    nop                                           ; $5081: $00
    ld l, $19                                     ; $5082: $2E $19
    ld e, e                                       ; $5084: $5B
    scf                                           ; $5085: $37
    ccf                                           ; $5086: $3F
    rla                                           ; $5087: $17
    rra                                           ; $5088: $1F
    rrca                                          ; $5089: $0F
    rra                                           ; $508A: $1F
    add hl, bc                                    ; $508B: $09
    add hl, bc                                    ; $508C: $09
    ld b, $04                                     ; $508D: $06 $04
    inc bc                                        ; $508F: $03
    ldh a, [rP1]                                  ; $5090: $F0 $00
    ld a, b                                       ; $5092: $78
    ldh a, [$FC]                                  ; $5093: $F0 $FC
    ldh a, [$FC]                                  ; $5095: $F0 $FC
    ld hl, sp-$04                                 ; $5097: $F8 $FC
    xor b                                         ; $5099: $A8
    cp b                                          ; $509A: $B8
    ld b, b                                       ; $509B: $40
    ret nc                                        ; $509C: $D0

jr_00A_509D:
    ldh [$50], a                                  ; $509D: $E0 $50
    and b                                         ; $509F: $A0
    ld b, l                                       ; $50A0: $45
    ld a, [hl-]                                   ; $50A1: $3A
    ld hl, $3E1E                                  ; $50A2: $21 $1E $3E

jr_00A_50A5:
    nop                                           ; $50A5: $00
    ld a, b                                       ; $50A6: $78
    jr nc, jr_00A_50A5                            ; $50A7: $30 $FC

    ld a, b                                       ; $50A9: $78
    cp $7C                                        ; $50AA: $FE $7C
    cp $5C                                        ; $50AC: $FE $5C
    ld a, h                                       ; $50AE: $7C
    ld [$3C42], sp                                ; $50AF: $08 $42 $3C
    ld a, h                                       ; $50B2: $7C
    nop                                           ; $50B3: $00
    ldh a, [$60]                                  ; $50B4: $F0 $60
    ld hl, sp+$70                                 ; $50B6: $F8 $70
    ld hl, sp+$60                                 ; $50B8: $F8 $60
    ld hl, sp+$70                                 ; $50BA: $F8 $70
    ld hl, sp+$70                                 ; $50BC: $F8 $70
    ldh a, [rP1]                                  ; $50BE: $F0 $00
    ld b, l                                       ; $50C0: $45
    ld a, [hl-]                                   ; $50C1: $3A
    ld hl, $3E1E                                  ; $50C2: $21 $1E $3E

jr_00A_50C5:
    nop                                           ; $50C5: $00
    ld a, b                                       ; $50C6: $78
    jr nc, jr_00A_50C5                            ; $50C7: $30 $FC

    ld a, b                                       ; $50C9: $78
    cp $78                                        ; $50CA: $FE $78

jr_00A_50CC:
    cp $78                                        ; $50CC: $FE $78
    cp $68                                        ; $50CE: $FE $68
    rlca                                          ; $50D0: $07
    inc bc                                        ; $50D1: $03
    rrca                                          ; $50D2: $0F
    rlca                                          ; $50D3: $07
    rra                                           ; $50D4: $1F
    rrca                                          ; $50D5: $0F
    ccf                                           ; $50D6: $3F
    rra                                           ; $50D7: $1F
    ld e, a                                       ; $50D8: $5F
    jr z, jr_00A_5124                             ; $50D9: $28 $49

    ld [hl], $61                                  ; $50DB: $36 $61

jr_00A_50DD:
    ld e, $7F                                     ; $50DD: $1E $7F
    nop                                           ; $50DF: $00
    add b                                         ; $50E0: $80
    nop                                           ; $50E1: $00

jr_00A_50E2:
    add b                                         ; $50E2: $80
    nop                                           ; $50E3: $00
    ldh a, [$80]                                  ; $50E4: $F0 $80
    ret z                                         ; $50E6: $C8

    or b                                          ; $50E7: $B0
    adc b                                         ; $50E8: $88
    ld [hl], b                                    ; $50E9: $70
    db $10                                        ; $50EA: $10
    ldh [$30], a                                  ; $50EB: $E0 $30
    ret nz                                        ; $50ED: $C0

jr_00A_50EE:
    ldh [rP1], a                                  ; $50EE: $E0 $00

jr_00A_50F0:
    rlca                                          ; $50F0: $07
    inc bc                                        ; $50F1: $03
    rrca                                          ; $50F2: $0F
    rlca                                          ; $50F3: $07
    rrca                                          ; $50F4: $0F
    rlca                                          ; $50F5: $07
    rra                                           ; $50F6: $1F
    rrca                                          ; $50F7: $0F
    rra                                           ; $50F8: $1F
    inc c                                         ; $50F9: $0C
    inc c                                         ; $50FA: $0C
    inc bc                                        ; $50FB: $03
    inc c                                         ; $50FC: $0C
    inc bc                                        ; $50FD: $03
    rlca                                          ; $50FE: $07
    nop                                           ; $50FF: $00
    add b                                         ; $5100: $80
    nop                                           ; $5101: $00
    add b                                         ; $5102: $80
    nop                                           ; $5103: $00
    add b                                         ; $5104: $80
    nop                                           ; $5105: $00
    ret nz                                        ; $5106: $C0

    nop                                           ; $5107: $00
    ldh [rP1], a                                  ; $5108: $E0 $00
    jr nc, jr_00A_50CC                            ; $510A: $30 $C0

    db $10                                        ; $510C: $10
    ldh [$F0], a                                  ; $510D: $E0 $F0
    nop                                           ; $510F: $00
    rlca                                          ; $5110: $07
    nop                                           ; $5111: $00
    rrca                                          ; $5112: $0F
    rlca                                          ; $5113: $07
    rra                                           ; $5114: $1F
    rrca                                          ; $5115: $0F
    ccf                                           ; $5116: $3F
    rra                                           ; $5117: $1F
    ccf                                           ; $5118: $3F
    inc e                                         ; $5119: $1C
    ld a, a                                       ; $511A: $7F
    jr nc, jr_00A_5192                            ; $511B: $30 $75

    ld a, [hl+]                                   ; $511D: $2A
    ld a, c                                       ; $511E: $79
    ld [hl], $F0                                  ; $511F: $36 $F0
    nop                                           ; $5121: $00
    ld hl, sp-$10                                 ; $5122: $F8 $F0

jr_00A_5124:
    db $FC                                        ; $5124: $FC
    cp b                                          ; $5125: $B8
    db $FC                                        ; $5126: $FC
    ret c                                         ; $5127: $D8

    ld hl, sp+$40                                 ; $5128: $F8 $40
    ld hl, sp+$00                                 ; $512A: $F8 $00
    jr nc, jr_00A_50EE                            ; $512C: $30 $C0

    jr nc, jr_00A_50F0                            ; $512E: $30 $C0

    ld b, $00                                     ; $5130: $06 $00
    rrca                                          ; $5132: $0F
    ld b, $1F                                     ; $5133: $06 $1F
    rrca                                          ; $5135: $0F
    ccf                                           ; $5136: $3F
    rra                                           ; $5137: $1F
    ccf                                           ; $5138: $3F
    ld e, $3F                                     ; $5139: $1E $3F
    jr jr_00A_515C                                ; $513B: $18 $1F

    nop                                           ; $513D: $00
    ld a, [hl+]                                   ; $513E: $2A
    dec d                                         ; $513F: $15
    ret nz                                        ; $5140: $C0

    nop                                           ; $5141: $00
    ldh a, [$C0]                                  ; $5142: $F0 $C0
    ld hl, sp-$10                                 ; $5144: $F8 $F0
    db $FC                                        ; $5146: $FC
    ld a, b                                       ; $5147: $78
    db $FC                                        ; $5148: $FC
    ld hl, sp-$04                                 ; $5149: $F8 $FC
    sbc b                                         ; $514B: $98
    ld hl, sp+$00                                 ; $514C: $F8 $00
    ld d, h                                       ; $514E: $54
    xor b                                         ; $514F: $A8
    ld b, $00                                     ; $5150: $06 $00
    rrca                                          ; $5152: $0F
    ld b, $0F                                     ; $5153: $06 $0F
    rlca                                          ; $5155: $07
    rra                                           ; $5156: $1F
    dec c                                         ; $5157: $0D
    rra                                           ; $5158: $1F
    rrca                                          ; $5159: $0F
    rra                                           ; $515A: $1F
    rrca                                          ; $515B: $0F

jr_00A_515C:
    cpl                                           ; $515C: $2F
    rla                                           ; $515D: $17
    rra                                           ; $515E: $1F
    rlca                                          ; $515F: $07
    ldh [rP1], a                                  ; $5160: $E0 $00
    ldh a, [$E0]                                  ; $5162: $F0 $E0
    ld hl, sp-$10                                 ; $5164: $F8 $F0
    db $FC                                        ; $5166: $FC
    ld hl, sp-$04                                 ; $5167: $F8 $FC
    ld hl, sp-$08                                 ; $5169: $F8 $F8
    ldh a, [$F4]                                  ; $516B: $F0 $F4
    add sp, -$08                                  ; $516D: $E8 $F8
    ldh [$03], a                                  ; $516F: $E0 $03
    nop                                           ; $5171: $00
    rlca                                          ; $5172: $07
    inc bc                                        ; $5173: $03
    rrca                                          ; $5174: $0F
    rlca                                          ; $5175: $07
    rra                                           ; $5176: $1F
    dec c                                         ; $5177: $0D
    rra                                           ; $5178: $1F
    rrca                                          ; $5179: $0F
    rra                                           ; $517A: $1F
    rrca                                          ; $517B: $0F
    rra                                           ; $517C: $1F
    rrca                                          ; $517D: $0F
    rra                                           ; $517E: $1F
    rlca                                          ; $517F: $07
    ld hl, sp+$00                                 ; $5180: $F8 $00
    db $FC                                        ; $5182: $FC
    ld a, b                                       ; $5183: $78
    cp $FC                                        ; $5184: $FE $FC
    cp $FC                                        ; $5186: $FE $FC
    cp $FC                                        ; $5188: $FE $FC
    cp $E4                                        ; $518A: $FE $E4
    db $EC                                        ; $518C: $EC
    ret nc                                        ; $518D: $D0

    ret z                                         ; $518E: $C8

    or b                                          ; $518F: $B0
    ld a, h                                       ; $5190: $7C
    inc hl                                        ; $5191: $23

jr_00A_5192:
    inc sp                                        ; $5192: $33
    inc c                                         ; $5193: $0C
    jr nz, jr_00A_51B5                            ; $5194: $20 $1F

    ld c, d                                       ; $5196: $4A
    dec [hl]                                      ; $5197: $35
    ld c, c                                       ; $5198: $49
    ld [hl], $3C                                  ; $5199: $36 $3C
    dec de                                        ; $519B: $1B
    ccf                                           ; $519C: $3F
    inc e                                         ; $519D: $1C
    rra                                           ; $519E: $1F
    dec c                                         ; $519F: $0D
    db $10                                        ; $51A0: $10
    ldh [$E0], a                                  ; $51A1: $E0 $E0
    nop                                           ; $51A3: $00
    db $10                                        ; $51A4: $10
    ldh [$50], a                                  ; $51A5: $E0 $50
    and b                                         ; $51A7: $A0
    ldh a, [rP1]                                  ; $51A8: $F0 $00
    jr c, @-$3E                                   ; $51AA: $38 $C0

    ld hl, sp+$10                                 ; $51AC: $F8 $10
    ldh a, [$C0]                                  ; $51AE: $F0 $C0
    ld a, [de]                                    ; $51B0: $1A
    dec b                                         ; $51B1: $05
    inc e                                         ; $51B2: $1C
    dec bc                                        ; $51B3: $0B
    rra                                           ; $51B4: $1F

jr_00A_51B5:
    nop                                           ; $51B5: $00

jr_00A_51B6:
    jr nz, jr_00A_51D7                            ; $51B6: $20 $1F

    jr z, @+$19                                   ; $51B8: $28 $17

    inc a                                         ; $51BA: $3C
    inc de                                        ; $51BB: $13
    ccf                                           ; $51BC: $3F
    jr @+$41                                      ; $51BD: $18 $3F

    dec de                                        ; $51BF: $1B
    rrca                                          ; $51C0: $0F
    rlca                                          ; $51C1: $07
    rla                                           ; $51C2: $17
    dec bc                                        ; $51C3: $0B
    inc hl                                        ; $51C4: $23
    inc e                                         ; $51C5: $1C
    jr nz, jr_00A_51E7                            ; $51C6: $20 $1F

    jr z, jr_00A_51E1                             ; $51C8: $28 $17

    jr c, jr_00A_51E3                             ; $51CA: $38 $17

    ccf                                           ; $51CC: $3F
    db $10                                        ; $51CD: $10
    rra                                           ; $51CE: $1F
    rlca                                          ; $51CF: $07
    ldh a, [$C0]                                  ; $51D0: $F0 $C0
    ret z                                         ; $51D2: $C8

    or b                                          ; $51D3: $B0
    add h                                         ; $51D4: $84
    ld a, b                                       ; $51D5: $78
    inc b                                         ; $51D6: $04

jr_00A_51D7:
    ld hl, sp+$14                                 ; $51D7: $F8 $14
    add sp, $1C                                   ; $51D9: $E8 $1C
    add sp, -$04                                  ; $51DB: $E8 $FC
    ld [$E0F8], sp                                ; $51DD: $08 $F8 $E0
    rrca                                          ; $51E0: $0F

jr_00A_51E1:
    rlca                                          ; $51E1: $07
    rrca                                          ; $51E2: $0F

jr_00A_51E3:
    rlca                                          ; $51E3: $07
    inc de                                        ; $51E4: $13
    inc c                                         ; $51E5: $0C

jr_00A_51E6:
    db $10                                        ; $51E6: $10

jr_00A_51E7:
    rrca                                          ; $51E7: $0F
    db $10                                        ; $51E8: $10
    rrca                                          ; $51E9: $0F
    jr @+$09                                      ; $51EA: $18 $07

    rrca                                          ; $51EC: $0F
    nop                                           ; $51ED: $00
    rrca                                          ; $51EE: $0F

jr_00A_51EF:
    rlca                                          ; $51EF: $07
    sub b                                         ; $51F0: $90
    ld h, b                                       ; $51F1: $60
    ldh [rP1], a                                  ; $51F2: $E0 $00
    jr nz, jr_00A_51B6                            ; $51F4: $20 $C0

    db $10                                        ; $51F6: $10
    ldh [rNR10], a                                ; $51F7: $E0 $10
    ldh [$98], a                                  ; $51F9: $E0 $98

jr_00A_51FB:
    ld [hl], b                                    ; $51FB: $70
    db $FC                                        ; $51FC: $FC
    jr c, jr_00A_51FB                             ; $51FD: $38 $FC

    sbc b                                         ; $51FF: $98
    ld a, [hl+]                                   ; $5200: $2A
    dec d                                         ; $5201: $15
    ld a, [de]                                    ; $5202: $1A
    dec b                                         ; $5203: $05
    inc e                                         ; $5204: $1C
    dec bc                                        ; $5205: $0B
    dec bc                                        ; $5206: $0B
    inc b                                         ; $5207: $04
    db $10                                        ; $5208: $10
    rrca                                          ; $5209: $0F
    ld d, $09                                     ; $520A: $16 $09
    rra                                           ; $520C: $1F
    ld c, $0F                                     ; $520D: $0E $0F
    ld b, $54                                     ; $520F: $06 $54
    xor b                                         ; $5211: $A8
    ld e, b                                       ; $5212: $58
    and b                                         ; $5213: $A0
    jr c, jr_00A_51E6                             ; $5214: $38 $D0

    ret nc                                        ; $5216: $D0

    jr nz, jr_00A_5221                            ; $5217: $20 $08

    ldh a, [$08]                                  ; $5219: $F0 $08
    ldh a, [$E8]                                  ; $521B: $F0 $E8
    db $10                                        ; $521D: $10
    ld hl, sp-$30                                 ; $521E: $F8 $D0

Call_00A_5220:
    rra                                           ; $5220: $1F

jr_00A_5221:
    rlca                                          ; $5221: $07
    rrca                                          ; $5222: $0F
    rlca                                          ; $5223: $07
    rla                                           ; $5224: $17
    dec bc                                        ; $5225: $0B
    inc de                                        ; $5226: $13
    inc c                                         ; $5227: $0C
    inc d                                         ; $5228: $14
    dec bc                                        ; $5229: $0B
    inc d                                         ; $522A: $14
    dec bc                                        ; $522B: $0B
    rra                                           ; $522C: $1F
    ld [$0B1F], sp                                ; $522D: $08 $1F $0B
    ld hl, sp-$20                                 ; $5230: $F8 $E0
    ldh a, [$C0]                                  ; $5232: $F0 $C0
    ret z                                         ; $5234: $C8

    or b                                          ; $5235: $B0
    add h                                         ; $5236: $84
    ld a, b                                       ; $5237: $78
    inc b                                         ; $5238: $04
    ld hl, sp+$14                                 ; $5239: $F8 $14
    add sp, -$08                                  ; $523B: $E8 $F8
    nop                                           ; $523D: $00
    ldh a, [$E0]                                  ; $523E: $F0 $E0
    rrca                                          ; $5240: $0F
    nop                                           ; $5241: $00
    rrca                                          ; $5242: $0F
    rlca                                          ; $5243: $07
    rra                                           ; $5244: $1F
    rrca                                          ; $5245: $0F
    rra                                           ; $5246: $1F
    ld c, $3F                                     ; $5247: $0E $3F
    db $10                                        ; $5249: $10
    add hl, sp                                    ; $524A: $39
    ld b, $21                                     ; $524B: $06 $21
    ld e, $1F                                     ; $524D: $1E $1F
    nop                                           ; $524F: $00
    ldh [rP1], a                                  ; $5250: $E0 $00
    ldh [$C0], a                                  ; $5252: $E0 $C0
    ldh a, [$60]                                  ; $5254: $F0 $60
    ldh a, [$C0]                                  ; $5256: $F0 $C0
    ret z                                         ; $5258: $C8

    jr nc, @+$0A                                  ; $5259: $30 $08

    ldh a, [$F0]                                  ; $525B: $F0 $F0
    nop                                           ; $525D: $00
    nop                                           ; $525E: $00
    nop                                           ; $525F: $00
    ld hl, sp+$00                                 ; $5260: $F8 $00
    ldh a, [$E0]                                  ; $5262: $F0 $E0
    ld hl, sp+$70                                 ; $5264: $F8 $70
    ld hl, sp+$40                                 ; $5266: $F8 $40
    ret z                                         ; $5268: $C8

    jr nc, jr_00A_51EF                            ; $5269: $30 $84

    ld a, b                                       ; $526B: $78
    call nz, $F838                                ; $526C: $C4 $38 $F8
    nop                                           ; $526F: $00
    ldh a, [rP1]                                  ; $5270: $F0 $00
    ldh a, [$60]                                  ; $5272: $F0 $60
    ld hl, sp+$60                                 ; $5274: $F8 $60
    ld hl, sp+$70                                 ; $5276: $F8 $70
    ld hl, sp+$70                                 ; $5278: $F8 $70
    db $F4                                        ; $527A: $F4
    ld [$708C], sp                                ; $527B: $08 $8C $70
    ld hl, sp+$00                                 ; $527E: $F8 $00
    rlca                                          ; $5280: $07
    nop                                           ; $5281: $00
    rlca                                          ; $5282: $07
    inc bc                                        ; $5283: $03
    rrca                                          ; $5284: $0F
    ld b, $0F                                     ; $5285: $06 $0F
    rlca                                          ; $5287: $07
    rrca                                          ; $5288: $0F
    ld bc, $0609                                  ; $5289: $01 $09 $06
    rrca                                          ; $528C: $0F
    nop                                           ; $528D: $00
    nop                                           ; $528E: $00
    nop                                           ; $528F: $00
    db $FC                                        ; $5290: $FC
    ld h, b                                       ; $5291: $60
    ldh a, [$E0]                                  ; $5292: $F0 $E0
    ld hl, sp-$10                                 ; $5294: $F8 $F0
    ld hl, sp+$70                                 ; $5296: $F8 $70
    ld hl, sp+$60                                 ; $5298: $F8 $60
    db $F4                                        ; $529A: $F4
    ld [$708C], sp                                ; $529B: $08 $8C $70
    ld hl, sp+$00                                 ; $529E: $F8 $00
    rrca                                          ; $52A0: $0F
    nop                                           ; $52A1: $00
    rrca                                          ; $52A2: $0F
    rlca                                          ; $52A3: $07
    rrca                                          ; $52A4: $0F
    rlca                                          ; $52A5: $07
    rrca                                          ; $52A6: $0F
    dec b                                         ; $52A7: $05
    rrca                                          ; $52A8: $0F
    ld b, $07                                     ; $52A9: $06 $07
    nop                                           ; $52AB: $00
    dec b                                         ; $52AC: $05
    ld [bc], a                                    ; $52AD: $02
    inc bc                                        ; $52AE: $03
    nop                                           ; $52AF: $00
    ld hl, sp+$00                                 ; $52B0: $F8 $00
    ldh a, [$E0]                                  ; $52B2: $F0 $E0
    ldh [$C0], a                                  ; $52B4: $E0 $C0
    ldh a, [$80]                                  ; $52B6: $F0 $80
    sub b                                         ; $52B8: $90
    ld h, b                                       ; $52B9: $60
    db $10                                        ; $52BA: $10
    ldh [rNR41], a                                ; $52BB: $E0 $20
    ret nz                                        ; $52BD: $C0

    ldh [rP1], a                                  ; $52BE: $E0 $00
    rrca                                          ; $52C0: $0F
    nop                                           ; $52C1: $00
    rlca                                          ; $52C2: $07
    inc bc                                        ; $52C3: $03
    rrca                                          ; $52C4: $0F
    ld b, $0F                                     ; $52C5: $06 $0F
    rlca                                          ; $52C7: $07
    rrca                                          ; $52C8: $0F
    rlca                                          ; $52C9: $07
    rlca                                          ; $52CA: $07
    nop                                           ; $52CB: $00
    inc b                                         ; $52CC: $04
    inc bc                                        ; $52CD: $03
    rlca                                          ; $52CE: $07
    nop                                           ; $52CF: $00
    ldh a, [rP1]                                  ; $52D0: $F0 $00
    ld hl, sp-$10                                 ; $52D2: $F8 $F0
    ld hl, sp-$10                                 ; $52D4: $F8 $F0
    ld hl, sp+$30                                 ; $52D6: $F8 $30
    ldh a, [rP1]                                  ; $52D8: $F0 $00
    sub b                                         ; $52DA: $90
    ld h, b                                       ; $52DB: $60
    sub b                                         ; $52DC: $90
    ld h, b                                       ; $52DD: $60
    ldh a, [rP1]                                  ; $52DE: $F0 $00
    inc bc                                        ; $52E0: $03
    nop                                           ; $52E1: $00
    rrca                                          ; $52E2: $0F
    inc bc                                        ; $52E3: $03
    rra                                           ; $52E4: $1F
    rrca                                          ; $52E5: $0F
    ccf                                           ; $52E6: $3F
    rra                                           ; $52E7: $1F
    ccf                                           ; $52E8: $3F
    rra                                           ; $52E9: $1F
    ccf                                           ; $52EA: $3F
    rra                                           ; $52EB: $1F
    ccf                                           ; $52EC: $3F
    dec e                                         ; $52ED: $1D
    dec e                                         ; $52EE: $1D
    ld a, [bc]                                    ; $52EF: $0A
    ld hl, sp+$00                                 ; $52F0: $F8 $00
    db $FC                                        ; $52F2: $FC
    ld hl, sp-$08                                 ; $52F3: $F8 $F8
    ldh a, [$FC]                                  ; $52F5: $F0 $FC
    ld hl, sp-$04                                 ; $52F7: $F8 $FC
    sbc b                                         ; $52F9: $98
    db $FC                                        ; $52FA: $FC
    ld [$A058], sp                                ; $52FB: $08 $58 $A0
    ld d, b                                       ; $52FE: $50
    and b                                         ; $52FF: $A0
    dec e                                         ; $5300: $1D
    ld a, [bc]                                    ; $5301: $0A
    ld a, $1D                                     ; $5302: $3E $1D
    ccf                                           ; $5304: $3F
    jr @+$1A                                      ; $5305: $18 $18

    rlca                                          ; $5307: $07
    ld [$1A07], sp                                ; $5308: $08 $07 $1A
    dec b                                         ; $530B: $05
    ccf                                           ; $530C: $3F
    db $10                                        ; $530D: $10
    ccf                                           ; $530E: $3F
    rla                                           ; $530F: $17
    ld d, b                                       ; $5310: $50
    and b                                         ; $5311: $A0
    db $10                                        ; $5312: $10
    ldh [$E0], a                                  ; $5313: $E0 $E0
    nop                                           ; $5315: $00
    ret nz                                        ; $5316: $C0

    nop                                           ; $5317: $00
    ld b, b                                       ; $5318: $40
    add b                                         ; $5319: $80
    ld h, b                                       ; $531A: $60
    ret nz                                        ; $531B: $C0

    ldh a, [$E0]                                  ; $531C: $F0 $E0
    ldh a, [$60]                                  ; $531E: $F0 $60
    ld a, $1D                                     ; $5320: $3E $1D
    ccf                                           ; $5322: $3F
    jr @+$1A                                      ; $5323: $18 $18

    rlca                                          ; $5325: $07
    ld [$0807], sp                                ; $5326: $08 $07 $08
    rlca                                          ; $5329: $07
    add hl, bc                                    ; $532A: $09
    rlca                                          ; $532B: $07
    rlca                                          ; $532C: $07
    inc bc                                        ; $532D: $03
    rlca                                          ; $532E: $07
    ld bc, $E010                                  ; $532F: $01 $10 $E0
    ldh [rP1], a                                  ; $5332: $E0 $00
    ld b, b                                       ; $5334: $40
    add b                                         ; $5335: $80
    jr nz, @-$3E                                  ; $5336: $20 $C0

    and b                                         ; $5338: $A0
    ld b, b                                       ; $5339: $40
    and b                                         ; $533A: $A0
    ld b, b                                       ; $533B: $40
    ldh [$80], a                                  ; $533C: $E0 $80
    ldh [$80], a                                  ; $533E: $E0 $80
    dec e                                         ; $5340: $1D
    ld a, [bc]                                    ; $5341: $0A
    ld a, $1D                                     ; $5342: $3E $1D
    ccf                                           ; $5344: $3F
    jr @+$1A                                      ; $5345: $18 $18

    rlca                                          ; $5347: $07
    db $10                                        ; $5348: $10
    rrca                                          ; $5349: $0F
    ld a, [de]                                    ; $534A: $1A
    dec c                                         ; $534B: $0D
    ccf                                           ; $534C: $3F
    inc e                                         ; $534D: $1C
    ccf                                           ; $534E: $3F
    dec de                                        ; $534F: $1B
    ld d, b                                       ; $5350: $50
    and b                                         ; $5351: $A0
    db $10                                        ; $5352: $10
    ldh [$E0], a                                  ; $5353: $E0 $E0
    nop                                           ; $5355: $00
    ld b, b                                       ; $5356: $40
    add b                                         ; $5357: $80
    ld b, b                                       ; $5358: $40
    add b                                         ; $5359: $80
    ld h, b                                       ; $535A: $60
    add b                                         ; $535B: $80
    ldh a, [rNR41]                                ; $535C: $F0 $20
    ldh a, [$A0]                                  ; $535E: $F0 $A0
    rra                                           ; $5360: $1F
    nop                                           ; $5361: $00
    rrca                                          ; $5362: $0F
    rlca                                          ; $5363: $07
    rra                                           ; $5364: $1F
    rrca                                          ; $5365: $0F
    ccf                                           ; $5366: $3F
    rra                                           ; $5367: $1F
    ld e, a                                       ; $5368: $5F
    inc l                                         ; $5369: $2C
    ld c, l                                       ; $536A: $4D
    ld [hl-], a                                   ; $536B: $32
    ld h, c                                       ; $536C: $61
    ld e, $7F                                     ; $536D: $1E $7F
    nop                                           ; $536F: $00
    ldh [rP1], a                                  ; $5370: $E0 $00
    ldh [$80], a                                  ; $5372: $E0 $80
    ld hl, sp-$80                                 ; $5374: $F8 $80
    db $E4                                        ; $5376: $E4
    jr @-$3A                                      ; $5377: $18 $C4

    cp b                                          ; $5379: $B8
    ret z                                         ; $537A: $C8

    or b                                          ; $537B: $B0
    cp b                                          ; $537C: $B8
    ld b, b                                       ; $537D: $40
    ldh [rP1], a                                  ; $537E: $E0 $00
    rlca                                          ; $5380: $07
    nop                                           ; $5381: $00
    rrca                                          ; $5382: $0F
    rlca                                          ; $5383: $07
    rra                                           ; $5384: $1F
    rrca                                          ; $5385: $0F
    rra                                           ; $5386: $1F
    rrca                                          ; $5387: $0F
    ccf                                           ; $5388: $3F
    db $10                                        ; $5389: $10
    jr c, @+$09                                   ; $538A: $38 $07

    jr nc, jr_00A_539D                            ; $538C: $30 $0F

    rra                                           ; $538E: $1F
    nop                                           ; $538F: $00
    ldh [rP1], a                                  ; $5390: $E0 $00
    ldh [$C0], a                                  ; $5392: $E0 $C0
    ldh [$C0], a                                  ; $5394: $E0 $C0
    ldh [$80], a                                  ; $5396: $E0 $80
    ret nc                                        ; $5398: $D0

    jr nz, jr_00A_53EB                            ; $5399: $20 $50

    and b                                         ; $539B: $A0
    ld [hl], b                                    ; $539C: $70

jr_00A_539D:
    add b                                         ; $539D: $80
    ret nz                                        ; $539E: $C0

    nop                                           ; $539F: $00
    rra                                           ; $53A0: $1F
    nop                                           ; $53A1: $00
    rrca                                          ; $53A2: $0F
    rlca                                          ; $53A3: $07
    rra                                           ; $53A4: $1F
    rrca                                          ; $53A5: $0F
    ccf                                           ; $53A6: $3F
    dec bc                                        ; $53A7: $0B
    ld e, a                                       ; $53A8: $5F
    ld hl, $3C43                                  ; $53A9: $21 $43 $3C
    ld h, c                                       ; $53AC: $61
    ld e, $7F                                     ; $53AD: $1E $7F
    nop                                           ; $53AF: $00
    ldh [rP1], a                                  ; $53B0: $E0 $00
    ret nz                                        ; $53B2: $C0

    add b                                         ; $53B3: $80
    ld hl, sp-$40                                 ; $53B4: $F8 $C0
    db $E4                                        ; $53B6: $E4
    ret c                                         ; $53B7: $D8

    call nz, $C8B8                                ; $53B8: $C4 $B8 $C8
    or b                                          ; $53BB: $B0
    cp b                                          ; $53BC: $B8
    ld b, b                                       ; $53BD: $40
    ldh [rP1], a                                  ; $53BE: $E0 $00
    rra                                           ; $53C0: $1F
    nop                                           ; $53C1: $00
    ccf                                           ; $53C2: $3F
    rra                                           ; $53C3: $1F
    ld a, a                                       ; $53C4: $7F
    ld a, $7F                                     ; $53C5: $3E $7F
    dec a                                         ; $53C7: $3D
    ld a, a                                       ; $53C8: $7F
    ld sp, $003F                                  ; $53C9: $31 $3F $00
    ld d, h                                       ; $53CC: $54
    dec hl                                        ; $53CD: $2B
    inc [hl]                                      ; $53CE: $34
    dec bc                                        ; $53CF: $0B
    ldh [rP1], a                                  ; $53D0: $E0 $00
    ldh a, [$E0]                                  ; $53D2: $F0 $E0
    ld hl, sp-$10                                 ; $53D4: $F8 $F0
    ld hl, sp-$10                                 ; $53D6: $F8 $F0
    ld hl, sp+$30                                 ; $53D8: $F8 $30
    ldh a, [rP1]                                  ; $53DA: $F0 $00
    xor b                                         ; $53DC: $A8
    ld d, b                                       ; $53DD: $50
    or [hl]                                       ; $53DE: $B6
    ld b, b                                       ; $53DF: $40
    jr c, jr_00A_53F9                             ; $53E0: $38 $17

    ccf                                           ; $53E2: $3F
    nop                                           ; $53E3: $00
    jr nz, jr_00A_5405                            ; $53E4: $20 $1F

    ld [hl+], a                                   ; $53E6: $22
    dec e                                         ; $53E7: $1D
    rla                                           ; $53E8: $17
    ld c, $0F                                     ; $53E9: $0E $0F

jr_00A_53EB:
    rlca                                          ; $53EB: $07
    rrca                                          ; $53EC: $0F
    ld bc, $060F                                  ; $53ED: $01 $0F $06
    ld a, a                                       ; $53F0: $7F
    and [hl]                                      ; $53F1: $A6
    rst $28                                       ; $53F2: $EF
    ld b, $17                                     ; $53F3: $06 $17
    xor $12                                       ; $53F5: $EE $12
    db $EC                                        ; $53F7: $EC
    sub h                                         ; $53F8: $94

jr_00A_53F9:
    ld l, b                                       ; $53F9: $68
    ld hl, sp-$80                                 ; $53FA: $F8 $80
    ldh [$80], a                                  ; $53FC: $E0 $80
    ldh [rLCDC], a                                ; $53FE: $E0 $40
    ld b, $00                                     ; $5400: $06 $00
    rrca                                          ; $5402: $0F
    ld b, $0F                                     ; $5403: $06 $0F

jr_00A_5405:
    rlca                                          ; $5405: $07
    rra                                           ; $5406: $1F
    dec c                                         ; $5407: $0D
    rra                                           ; $5408: $1F
    rrca                                          ; $5409: $0F
    rra                                           ; $540A: $1F
    rrca                                          ; $540B: $0F
    cpl                                           ; $540C: $2F
    rla                                           ; $540D: $17
    rra                                           ; $540E: $1F
    rlca                                          ; $540F: $07
    ldh [rP1], a                                  ; $5410: $E0 $00
    ldh a, [$E0]                                  ; $5412: $F0 $E0
    ld hl, sp-$10                                 ; $5414: $F8 $F0
    db $FC                                        ; $5416: $FC
    ld hl, sp-$04                                 ; $5417: $F8 $FC
    ld hl, sp-$08                                 ; $5419: $F8 $F8
    ldh a, [$F4]                                  ; $541B: $F0 $F4
    add sp, -$02                                  ; $541D: $E8 $FE
    ldh [rIF], a                                  ; $541F: $E0 $0F
    rlca                                          ; $5421: $07
    rrca                                          ; $5422: $0F
    rlca                                          ; $5423: $07
    rla                                           ; $5424: $17
    ld [$0F10], sp                                ; $5425: $08 $10 $0F
    db $10                                        ; $5428: $10
    rrca                                          ; $5429: $0F
    ld a, [bc]                                    ; $542A: $0A
    dec b                                         ; $542B: $05
    rrca                                          ; $542C: $0F
    nop                                           ; $542D: $00
    rrca                                          ; $542E: $0F
    rlca                                          ; $542F: $07
    rst $38                                       ; $5430: $FF
    add $FF                                       ; $5431: $C6 $FF
    ld c, $0E                                     ; $5433: $0E $0E
    db $FC                                        ; $5435: $FC
    inc b                                         ; $5436: $04
    ld hl, sp+$18                                 ; $5437: $F8 $18
    ldh [rNR41], a                                ; $5439: $E0 $20
    ret nz                                        ; $543B: $C0

jr_00A_543C:
    ldh [rP1], a                                  ; $543C: $E0 $00
    ldh [$80], a                                  ; $543E: $E0 $80
    ldh a, [$60]                                  ; $5440: $F0 $60
    ldh a, [$E0]                                  ; $5442: $F0 $E0
    ld hl, sp-$10                                 ; $5444: $F8 $F0
    ld hl, sp+$70                                 ; $5446: $F8 $70
    ld hl, sp+$60                                 ; $5448: $F8 $60
    db $F4                                        ; $544A: $F4
    ld [$708C], sp                                ; $544B: $08 $8C $70
    ld hl, sp+$00                                 ; $544E: $F8 $00
    rra                                           ; $5450: $1F
    rlca                                          ; $5451: $07
    rrca                                          ; $5452: $0F
    rlca                                          ; $5453: $07
    rla                                           ; $5454: $17
    dec bc                                        ; $5455: $0B
    inc hl                                        ; $5456: $23
    inc e                                         ; $5457: $1C
    jr nz, jr_00A_5479                            ; $5458: $20 $1F

    jr z, jr_00A_5473                             ; $545A: $28 $17

    rra                                           ; $545C: $1F
    nop                                           ; $545D: $00
    rrca                                          ; $545E: $0F
    rlca                                          ; $545F: $07
    ld hl, sp-$20                                 ; $5460: $F8 $E0
    ldh a, [$C0]                                  ; $5462: $F0 $C0
    ret z                                         ; $5464: $C8

    or b                                          ; $5465: $B0
    adc b                                         ; $5466: $88
    ld [hl], b                                    ; $5467: $70
    jr z, @-$2E                                   ; $5468: $28 $D0

    jr z, jr_00A_543C                             ; $546A: $28 $D0

    ld hl, sp+$10                                 ; $546C: $F8 $10
    ld hl, sp-$30                                 ; $546E: $F8 $D0
    rra                                           ; $5470: $1F
    nop                                           ; $5471: $00
    ccf                                           ; $5472: $3F

jr_00A_5473:
    rra                                           ; $5473: $1F
    ld a, a                                       ; $5474: $7F
    ccf                                           ; $5475: $3F
    rst $38                                       ; $5476: $FF
    ld a, a                                       ; $5477: $7F
    rst $38                                       ; $5478: $FF

jr_00A_5479:
    ld a, c                                       ; $5479: $79
    ld sp, hl                                     ; $547A: $F9
    halt                                          ; $547B: $76
    ld a, d                                       ; $547C: $7A
    dec [hl]                                      ; $547D: $35
    ld a, [hl-]                                   ; $547E: $3A
    dec d                                         ; $547F: $15
    ldh [rP1], a                                  ; $5480: $E0 $00
    ldh a, [$E0]                                  ; $5482: $F0 $E0
    ld hl, sp-$10                                 ; $5484: $F8 $F0
    ld hl, sp-$10                                 ; $5486: $F8 $F0
    db $FC                                        ; $5488: $FC
    ld hl, sp-$04                                 ; $5489: $F8 $FC
    ld hl, sp-$04                                 ; $548B: $F8 $FC
    ld l, b                                       ; $548D: $68
    ld hl, sp+$50                                 ; $548E: $F8 $50
    rlca                                          ; $5490: $07
    nop                                           ; $5491: $00
    rrca                                          ; $5492: $0F
    rlca                                          ; $5493: $07
    rra                                           ; $5494: $1F
    rrca                                          ; $5495: $0F
    ccf                                           ; $5496: $3F
    rra                                           ; $5497: $1F
    ccf                                           ; $5498: $3F
    dec e                                         ; $5499: $1D
    dec a                                         ; $549A: $3D
    ld a, [bc]                                    ; $549B: $0A
    ld a, [hl+]                                   ; $549C: $2A
    dec d                                         ; $549D: $15
    ld a, [hl-]                                   ; $549E: $3A
    dec b                                         ; $549F: $05
    ldh [rP1], a                                  ; $54A0: $E0 $00
    ldh a, [$E0]                                  ; $54A2: $F0 $E0
    ld hl, sp-$10                                 ; $54A4: $F8 $F0
    db $FC                                        ; $54A6: $FC
    ld hl, sp-$04                                 ; $54A7: $F8 $FC
    ld hl, sp-$04                                 ; $54A9: $F8 $FC
    ld hl, sp-$04                                 ; $54AB: $F8 $FC
    ld l, b                                       ; $54AD: $68
    ld a, h                                       ; $54AE: $7C
    add b                                         ; $54AF: $80
    rlca                                          ; $54B0: $07
    nop                                           ; $54B1: $00
    rrca                                          ; $54B2: $0F
    rlca                                          ; $54B3: $07
    rra                                           ; $54B4: $1F
    rrca                                          ; $54B5: $0F
    ccf                                           ; $54B6: $3F
    rra                                           ; $54B7: $1F
    ccf                                           ; $54B8: $3F
    rra                                           ; $54B9: $1F
    ccf                                           ; $54BA: $3F
    rra                                           ; $54BB: $1F
    ccf                                           ; $54BC: $3F
    rra                                           ; $54BD: $1F
    rra                                           ; $54BE: $1F
    rrca                                          ; $54BF: $0F
    inc bc                                        ; $54C0: $03
    nop                                           ; $54C1: $00
    rlca                                          ; $54C2: $07
    inc bc                                        ; $54C3: $03
    rrca                                          ; $54C4: $0F
    rlca                                          ; $54C5: $07
    rra                                           ; $54C6: $1F
    rrca                                          ; $54C7: $0F
    rra                                           ; $54C8: $1F
    rrca                                          ; $54C9: $0F
    rra                                           ; $54CA: $1F
    rrca                                          ; $54CB: $0F
    rrca                                          ; $54CC: $0F
    rlca                                          ; $54CD: $07
    rlca                                          ; $54CE: $07
    inc bc                                        ; $54CF: $03
    ld hl, sp+$00                                 ; $54D0: $F8 $00
    db $FC                                        ; $54D2: $FC
    ld hl, sp-$02                                 ; $54D3: $F8 $FE
    db $FC                                        ; $54D5: $FC
    cp $FC                                        ; $54D6: $FE $FC
    cp $F4                                        ; $54D8: $FE $F4
    cp $E4                                        ; $54DA: $FE $E4
    db $EC                                        ; $54DC: $EC
    ret nc                                        ; $54DD: $D0

    ld hl, sp-$20                                 ; $54DE: $F8 $E0
    inc e                                         ; $54E0: $1C
    dec bc                                        ; $54E1: $0B
    rrca                                          ; $54E2: $0F
    nop                                           ; $54E3: $00
    dec bc                                        ; $54E4: $0B
    inc b                                         ; $54E5: $04
    rla                                           ; $54E6: $17
    ld [$0817], sp                                ; $54E7: $08 $17 $08
    inc de                                        ; $54EA: $13
    inc c                                         ; $54EB: $0C
    inc de                                        ; $54EC: $13
    inc c                                         ; $54ED: $0C
    rra                                           ; $54EE: $1F
    ld a, [bc]                                    ; $54EF: $0A
    ld d, b                                       ; $54F0: $50
    and b                                         ; $54F1: $A0

jr_00A_54F2:
    ldh [rP1], a                                  ; $54F2: $E0 $00
    ret nz                                        ; $54F4: $C0

    nop                                           ; $54F5: $00
    ld h, b                                       ; $54F6: $60
    add b                                         ; $54F7: $80
    ldh [rP1], a                                  ; $54F8: $E0 $00
    ret nc                                        ; $54FA: $D0

    jr nz, jr_00A_5575                            ; $54FB: $20 $78

    sub b                                         ; $54FD: $90
    ret nc                                        ; $54FE: $D0

    nop                                           ; $54FF: $00
    inc e                                         ; $5500: $1C
    inc bc                                        ; $5501: $03
    rrca                                          ; $5502: $0F
    nop                                           ; $5503: $00
    ld a, [bc]                                    ; $5504: $0A
    dec b                                         ; $5505: $05
    rla                                           ; $5506: $17
    ld [$0817], sp                                ; $5507: $08 $17 $08
    ld d, $09                                     ; $550A: $16 $09
    ld [hl-], a                                   ; $550C: $32
    dec c                                         ; $550D: $0D
    inc sp                                        ; $550E: $33
    inc e                                         ; $550F: $1C
    jr jr_00A_54F2                                ; $5510: $18 $E0

    ldh a, [rP1]                                  ; $5512: $F0 $00
    ld d, b                                       ; $5514: $50
    and b                                         ; $5515: $A0
    add sp, $10                                   ; $5516: $E8 $10
    add sp, $10                                   ; $5518: $E8 $10
    ld l, b                                       ; $551A: $68
    sub b                                         ; $551B: $90
    ld c, h                                       ; $551C: $4C
    or b                                          ; $551D: $B0
    call z, $0F38                                 ; $551E: $CC $38 $0F
    rlca                                          ; $5521: $07
    rlca                                          ; $5522: $07
    nop                                           ; $5523: $00
    dec bc                                        ; $5524: $0B
    inc b                                         ; $5525: $04
    rla                                           ; $5526: $17
    ld [$0817], sp                                ; $5527: $08 $17 $08
    ld d, $09                                     ; $552A: $16 $09
    ld [hl-], a                                   ; $552C: $32
    dec c                                         ; $552D: $0D
    inc sp                                        ; $552E: $33
    inc e                                         ; $552F: $1C
    cp $7C                                        ; $5530: $FE $7C
    db $FC                                        ; $5532: $FC
    nop                                           ; $5533: $00
    ld hl, sp+$00                                 ; $5534: $F8 $00
    db $EC                                        ; $5536: $EC
    db $10                                        ; $5537: $10
    inc l                                         ; $5538: $2C
    ld d, b                                       ; $5539: $50
    inc h                                         ; $553A: $24
    ld e, b                                       ; $553B: $58
    and $1C                                       ; $553C: $E6 $1C
    rst $38                                       ; $553E: $FF
    ld l, d                                       ; $553F: $6A
    ld a, [hl-]                                   ; $5540: $3A
    dec b                                         ; $5541: $05
    inc e                                         ; $5542: $1C
    inc bc                                        ; $5543: $03
    rrca                                          ; $5544: $0F
    nop                                           ; $5545: $00
    ld c, $01                                     ; $5546: $0E $01
    dec bc                                        ; $5548: $0B
    inc b                                         ; $5549: $04
    dec bc                                        ; $554A: $0B

jr_00A_554B:
    inc b                                         ; $554B: $04
    ld a, [bc]                                    ; $554C: $0A
    dec b                                         ; $554D: $05
    add hl, bc                                    ; $554E: $09
    ld b, $FC                                     ; $554F: $06 $FC
    ld b, b                                       ; $5551: $40
    ld e, b                                       ; $5552: $58
    and b                                         ; $5553: $A0
    ldh a, [rP1]                                  ; $5554: $F0 $00
    ld [hl], b                                    ; $5556: $70
    add b                                         ; $5557: $80
    ret nc                                        ; $5558: $D0

    jr nz, @-$2E                                  ; $5559: $20 $D0

    jr nz, jr_00A_55AD                            ; $555B: $20 $50

    and b                                         ; $555D: $A0
    ld d, b                                       ; $555E: $50
    and b                                         ; $555F: $A0
    rra                                           ; $5560: $1F
    rrca                                          ; $5561: $0F
    rrca                                          ; $5562: $0F
    rlca                                          ; $5563: $07
    rlca                                          ; $5564: $07
    nop                                           ; $5565: $00
    ld a, [bc]                                    ; $5566: $0A
    dec b                                         ; $5567: $05
    dec bc                                        ; $5568: $0B
    inc b                                         ; $5569: $04
    dec bc                                        ; $556A: $0B
    inc b                                         ; $556B: $04
    add hl, de                                    ; $556C: $19
    ld b, $19                                     ; $556D: $06 $19
    ld c, $F8                                     ; $556F: $0E $F8
    ldh a, [$F0]                                  ; $5571: $F0 $F0
    ldh [$E0], a                                  ; $5573: $E0 $E0

jr_00A_5575:
    nop                                           ; $5575: $00
    ld d, b                                       ; $5576: $50
    and b                                         ; $5577: $A0
    ret nc                                        ; $5578: $D0

    jr nz, jr_00A_554B                            ; $5579: $20 $D0

    jr nz, jr_00A_55CD                            ; $557B: $20 $50

    and b                                         ; $557D: $A0
    ret c                                         ; $557E: $D8

    jr nz, jr_00A_5590                            ; $557F: $20 $0F

    dec b                                         ; $5581: $05
    rlca                                          ; $5582: $07
    nop                                           ; $5583: $00
    rlca                                          ; $5584: $07
    ld [bc], a                                    ; $5585: $02
    rlca                                          ; $5586: $07
    ld [bc], a                                    ; $5587: $02
    rrca                                          ; $5588: $0F
    inc b                                         ; $5589: $04
    rrca                                          ; $558A: $0F
    ld bc, $0F1F                                  ; $558B: $01 $1F $0F
    rrca                                          ; $558E: $0F
    nop                                           ; $558F: $00

jr_00A_5590:
    ret nz                                        ; $5590: $C0

    nop                                           ; $5591: $00
    ret nz                                        ; $5592: $C0

    add b                                         ; $5593: $80
    ret nz                                        ; $5594: $C0

    add b                                         ; $5595: $80
    ldh a, [$80]                                  ; $5596: $F0 $80
    ld hl, sp+$30                                 ; $5598: $F8 $30
    ld hl, sp-$50                                 ; $559A: $F8 $B0
    ldh a, [$80]                                  ; $559C: $F0 $80
    ret nz                                        ; $559E: $C0

    nop                                           ; $559F: $00
    ccf                                           ; $55A0: $3F
    ld de, $103B                                  ; $55A1: $11 $3B $10
    inc de                                        ; $55A4: $13
    ld bc, $0107                                  ; $55A5: $01 $07 $01
    rrca                                          ; $55A8: $0F
    ld b, $1F                                     ; $55A9: $06 $1F
    rrca                                          ; $55AB: $0F
    rra                                           ; $55AC: $1F

jr_00A_55AD:
    ld c, $0F                                     ; $55AD: $0E $0F
    nop                                           ; $55AF: $00
    db $FC                                        ; $55B0: $FC
    ret z                                         ; $55B1: $C8

    db $FC                                        ; $55B2: $FC
    ld [$40E8], sp                                ; $55B3: $08 $E8 $40
    ldh a, [rLCDC]                                ; $55B6: $F0 $40
    ld hl, sp+$30                                 ; $55B8: $F8 $30
    db $FC                                        ; $55BA: $FC
    ld a, b                                       ; $55BB: $78
    db $FC                                        ; $55BC: $FC
    jr c, @-$06                                   ; $55BD: $38 $F8

    nop                                           ; $55BF: $00
    ccf                                           ; $55C0: $3F
    ld de, $103B                                  ; $55C1: $11 $3B $10
    inc de                                        ; $55C4: $13
    ld bc, $0103                                  ; $55C5: $01 $03 $01
    rrca                                          ; $55C8: $0F
    ld bc, $0C1F                                  ; $55C9: $01 $1F $0C
    rra                                           ; $55CC: $1F

jr_00A_55CD:
    rlca                                          ; $55CD: $07
    rrca                                          ; $55CE: $0F
    nop                                           ; $55CF: $00
    db $FC                                        ; $55D0: $FC
    ret z                                         ; $55D1: $C8

    db $FC                                        ; $55D2: $FC
    ld [$40E8], sp                                ; $55D3: $08 $E8 $40
    ldh [rLCDC], a                                ; $55D6: $E0 $40
    ld hl, sp+$40                                 ; $55D8: $F8 $40
    db $FC                                        ; $55DA: $FC
    jr @-$02                                      ; $55DB: $18 $FC

    ld [hl], b                                    ; $55DD: $70
    ld hl, sp+$00                                 ; $55DE: $F8 $00
    cp $34                                        ; $55E0: $FE $34
    db $FC                                        ; $55E2: $FC
    ld b, b                                       ; $55E3: $40
    ld hl, sp+$50                                 ; $55E4: $F8 $50
    ld hl, sp+$50                                 ; $55E6: $F8 $50
    cp $10                                        ; $55E8: $FE $10
    rst $38                                       ; $55EA: $FF
    ld b, [hl]                                    ; $55EB: $46
    rst $38                                       ; $55EC: $FF
    inc e                                         ; $55ED: $1C
    ld a, $00                                     ; $55EE: $3E $00
    sbc [hl]                                      ; $55F0: $9E
    ld [hl], b                                    ; $55F1: $70
    ld a, [hl]                                    ; $55F2: $7E
    jr z, jr_00A_5673                             ; $55F3: $28 $7E

    db $10                                        ; $55F5: $10
    ld a, [hl]                                    ; $55F6: $7E
    ld [$267F], sp                                ; $55F7: $08 $7F $26
    ld a, a                                       ; $55FA: $7F
    ld c, $7E                                     ; $55FB: $0E $7E
    inc l                                         ; $55FD: $2C
    ld a, $00                                     ; $55FE: $3E $00
    rra                                           ; $5600: $1F
    add hl, bc                                    ; $5601: $09
    rrca                                          ; $5602: $0F
    ld [bc], a                                    ; $5603: $02
    rlca                                          ; $5604: $07
    nop                                           ; $5605: $00
    rlca                                          ; $5606: $07
    ld [bc], a                                    ; $5607: $02
    inc bc                                        ; $5608: $03
    ld bc, $0103                                  ; $5609: $01 $03 $01
    rlca                                          ; $560C: $07
    ld [bc], a                                    ; $560D: $02
    rlca                                          ; $560E: $07
    nop                                           ; $560F: $00
    ld hl, sp-$70                                 ; $5610: $F8 $90
    ret nc                                        ; $5612: $D0

    nop                                           ; $5613: $00
    ret nz                                        ; $5614: $C0

    add b                                         ; $5615: $80
    ret nz                                        ; $5616: $C0

    nop                                           ; $5617: $00
    ret nz                                        ; $5618: $C0

    add b                                         ; $5619: $80
    ldh [$C0], a                                  ; $561A: $E0 $C0
    ldh [$C0], a                                  ; $561C: $E0 $C0
    ldh [rP1], a                                  ; $561E: $E0 $00
    rra                                           ; $5620: $1F
    nop                                           ; $5621: $00
    ccf                                           ; $5622: $3F
    rra                                           ; $5623: $1F
    ld a, a                                       ; $5624: $7F
    ccf                                           ; $5625: $3F
    ld a, a                                       ; $5626: $7F
    ccf                                           ; $5627: $3F
    ld a, a                                       ; $5628: $7F
    ccf                                           ; $5629: $3F
    ld a, a                                       ; $562A: $7F
    add hl, sp                                    ; $562B: $39
    add hl, sp                                    ; $562C: $39
    ld d, $1E                                     ; $562D: $16 $1E
    add hl, bc                                    ; $562F: $09
    ldh [rP1], a                                  ; $5630: $E0 $00
    ldh a, [$E0]                                  ; $5632: $F0 $E0
    ld hl, sp-$10                                 ; $5634: $F8 $F0
    db $FC                                        ; $5636: $FC
    ld hl, sp-$04                                 ; $5637: $F8 $FC
    cp b                                          ; $5639: $B8
    cp h                                          ; $563A: $BC
    ld e, b                                       ; $563B: $58
    ld e, h                                       ; $563C: $5C
    xor b                                         ; $563D: $A8
    ld e, b                                       ; $563E: $58
    and b                                         ; $563F: $A0
    ld e, $09                                     ; $5640: $1E $09
    rrca                                          ; $5642: $0F
    ld b, $07                                     ; $5643: $06 $07
    nop                                           ; $5645: $00
    ld b, $01                                     ; $5646: $06 $01
    rlca                                          ; $5648: $07
    nop                                           ; $5649: $00
    dec bc                                        ; $564A: $0B
    inc b                                         ; $564B: $04
    ld a, [bc]                                    ; $564C: $0A
    dec b                                         ; $564D: $05
    rra                                           ; $564E: $1F
    ld [$A058], sp                                ; $564F: $08 $58 $A0

jr_00A_5652:
    db $10                                        ; $5652: $10
    ldh [$E0], a                                  ; $5653: $E0 $E0
    nop                                           ; $5655: $00
    add b                                         ; $5656: $80
    nop                                           ; $5657: $00
    ld h, b                                       ; $5658: $60
    add b                                         ; $5659: $80
    sub b                                         ; $565A: $90
    ld h, b                                       ; $565B: $60
    sbc b                                         ; $565C: $98
    ld [hl], b                                    ; $565D: $70
    db $FC                                        ; $565E: $FC
    jr z, jr_00A_5652                             ; $565F: $28 $F1

    ld l, [hl]                                    ; $5661: $6E
    ld a, [hl]                                    ; $5662: $7E
    nop                                           ; $5663: $00
    jr z, jr_00A_5676                             ; $5664: $28 $10

    inc l                                         ; $5666: $2C
    db $10                                        ; $5667: $10
    inc l                                         ; $5668: $2C
    db $10                                        ; $5669: $10
    ld [$4830], sp                                ; $566A: $08 $30 $48
    jr nc, @+$7A                                  ; $566D: $30 $78

    jr nc, @+$20                                  ; $566F: $30 $1E

    add hl, bc                                    ; $5671: $09
    rrca                                          ; $5672: $0F

jr_00A_5673:
    ld b, $07                                     ; $5673: $06 $07
    nop                                           ; $5675: $00

jr_00A_5676:
    ld b, $01                                     ; $5676: $06 $01
    dec b                                         ; $5678: $05
    ld [bc], a                                    ; $5679: $02
    add hl, bc                                    ; $567A: $09
    ld b, $19                                     ; $567B: $06 $19
    ld c, $3F                                     ; $567D: $0E $3F
    inc d                                         ; $567F: $14
    ld e, b                                       ; $5680: $58
    and b                                         ; $5681: $A0
    db $10                                        ; $5682: $10
    ldh [$E0], a                                  ; $5683: $E0 $E0
    nop                                           ; $5685: $00
    add b                                         ; $5686: $80
    nop                                           ; $5687: $00
    ret nz                                        ; $5688: $C0

    nop                                           ; $5689: $00
    ret nz                                        ; $568A: $C0

    nop                                           ; $568B: $00
    and b                                         ; $568C: $A0
    ld b, b                                       ; $568D: $40
    ldh a, [rNR41]                                ; $568E: $F0 $20
    rrca                                          ; $5690: $0F
    inc bc                                        ; $5691: $03
    inc bc                                        ; $5692: $03
    nop                                           ; $5693: $00
    rrca                                          ; $5694: $0F
    ld [bc], a                                    ; $5695: $02
    ccf                                           ; $5696: $3F
    inc b                                         ; $5697: $04
    ld a, a                                       ; $5698: $7F
    jr z, @+$81                                   ; $5699: $28 $7F

    ld [hl], $7F                                  ; $569B: $36 $7F
    ld e, $7F                                     ; $569D: $1E $7F
    nop                                           ; $569F: $00
    cp b                                          ; $56A0: $B8
    db $10                                        ; $56A1: $10
    sub b                                         ; $56A2: $90
    nop                                           ; $56A3: $00
    ldh a, [rP1]                                  ; $56A4: $F0 $00
    ld hl, sp-$50                                 ; $56A6: $F8 $B0
    ld hl, sp+$70                                 ; $56A8: $F8 $70
    ldh a, [$E0]                                  ; $56AA: $F0 $E0
    ldh a, [$C0]                                  ; $56AC: $F0 $C0
    ldh [rP1], a                                  ; $56AE: $E0 $00
    ldh a, [$60]                                  ; $56B0: $F0 $60
    ld [hl], b                                    ; $56B2: $70
    jr nz, jr_00A_5725                            ; $56B3: $20 $70

    nop                                           ; $56B5: $00
    ld a, b                                       ; $56B6: $78
    jr nz, jr_00A_5735                            ; $56B7: $20 $7C

    nop                                           ; $56B9: $00
    cp $78                                        ; $56BA: $FE $78
    cp $7C                                        ; $56BC: $FE $7C
    cp $00                                        ; $56BE: $FE $00
    rra                                           ; $56C0: $1F
    dec bc                                        ; $56C1: $0B
    dec bc                                        ; $56C2: $0B
    nop                                           ; $56C3: $00
    rlca                                          ; $56C4: $07
    nop                                           ; $56C5: $00
    rrca                                          ; $56C6: $0F
    ld [bc], a                                    ; $56C7: $02
    rra                                           ; $56C8: $1F
    nop                                           ; $56C9: $00
    ccf                                           ; $56CA: $3F

jr_00A_56CB:
    rla                                           ; $56CB: $17
    ccf                                           ; $56CC: $3F
    rrca                                          ; $56CD: $0F
    rra                                           ; $56CE: $1F
    nop                                           ; $56CF: $00
    and b                                         ; $56D0: $A0
    nop                                           ; $56D1: $00
    ret nz                                        ; $56D2: $C0

jr_00A_56D3:
    nop                                           ; $56D3: $00
    ld hl, sp-$80                                 ; $56D4: $F8 $80
    db $FC                                        ; $56D6: $FC
    ld e, b                                       ; $56D7: $58
    db $FC                                        ; $56D8: $FC
    jr c, jr_00A_56D3                             ; $56D9: $38 $F8

    ld [hl], b                                    ; $56DB: $70
    ld hl, sp+$60                                 ; $56DC: $F8 $60
    ldh [rP1], a                                  ; $56DE: $E0 $00
    ld a, [hl-]                                   ; $56E0: $3A
    dec b                                         ; $56E1: $05
    inc e                                         ; $56E2: $1C
    inc bc                                        ; $56E3: $03
    rrca                                          ; $56E4: $0F
    nop                                           ; $56E5: $00
    ld c, $01                                     ; $56E6: $0E $01
    dec bc                                        ; $56E8: $0B
    inc b                                         ; $56E9: $04
    dec bc                                        ; $56EA: $0B
    inc b                                         ; $56EB: $04
    ld a, [bc]                                    ; $56EC: $0A
    dec b                                         ; $56ED: $05

jr_00A_56EE:
    ld a, [bc]                                    ; $56EE: $0A
    dec b                                         ; $56EF: $05

jr_00A_56F0:
    db $FC                                        ; $56F0: $FC
    ld b, b                                       ; $56F1: $40
    ld e, b                                       ; $56F2: $58
    and b                                         ; $56F3: $A0
    ldh a, [rP1]                                  ; $56F4: $F0 $00
    ld [hl], b                                    ; $56F6: $70
    add b                                         ; $56F7: $80
    ret nc                                        ; $56F8: $D0

    jr nz, jr_00A_56CB                            ; $56F9: $20 $D0

    jr nz, jr_00A_574D                            ; $56FB: $20 $50

    and b                                         ; $56FD: $A0
    sub b                                         ; $56FE: $90
    ld h, b                                       ; $56FF: $60
    jr c, jr_00A_5702                             ; $5700: $38 $00

jr_00A_5702:
    ld e, h                                       ; $5702: $5C
    jr z, jr_00A_5729                             ; $5703: $28 $24

    jr jr_00A_5725                                ; $5705: $18 $1E

    inc b                                         ; $5707: $04
    scf                                           ; $5708: $37
    ld e, $43                                     ; $5709: $1E $43
    ld a, $43                                     ; $570B: $3E $43
    ld a, $3E                                     ; $570D: $3E $3E
    nop                                           ; $570F: $00
    rlca                                          ; $5710: $07
    nop                                           ; $5711: $00
    rrca                                          ; $5712: $0F
    rlca                                          ; $5713: $07
    rra                                           ; $5714: $1F
    rrca                                          ; $5715: $0F
    rra                                           ; $5716: $1F
    rrca                                          ; $5717: $0F
    rra                                           ; $5718: $1F
    ld c, $1E                                     ; $5719: $0E $1E
    dec b                                         ; $571B: $05
    dec d                                         ; $571C: $15
    ld a, [bc]                                    ; $571D: $0A
    add hl, bc                                    ; $571E: $09
    ld b, $F8                                     ; $571F: $06 $F8
    nop                                           ; $5721: $00
    db $FC                                        ; $5722: $FC
    ld hl, sp-$02                                 ; $5723: $F8 $FE

jr_00A_5725:
    cp h                                          ; $5725: $BC
    cp $DC                                        ; $5726: $FE $DC
    db $FC                                        ; $5728: $FC

jr_00A_5729:
    adc b                                         ; $5729: $88
    sbc h                                         ; $572A: $9C
    ld l, b                                       ; $572B: $68
    jr c, jr_00A_56EE                             ; $572C: $38 $C0

    jr nc, jr_00A_56F0                            ; $572E: $30 $C0

    dec c                                         ; $5730: $0D
    nop                                           ; $5731: $00
    rra                                           ; $5732: $1F
    dec c                                         ; $5733: $0D
    ccf                                           ; $5734: $3F

jr_00A_5735:
    rra                                           ; $5735: $1F
    ccf                                           ; $5736: $3F
    ld e, $3F                                     ; $5737: $1E $3F
    ld e, $3F                                     ; $5739: $1E $3F
    inc e                                         ; $573B: $1C
    inc e                                         ; $573C: $1C
    dec bc                                        ; $573D: $0B
    ld a, [hl+]                                   ; $573E: $2A
    dec d                                         ; $573F: $15
    ldh [rP1], a                                  ; $5740: $E0 $00
    ld hl, sp-$20                                 ; $5742: $F8 $E0
    db $FC                                        ; $5744: $FC
    ld hl, sp-$04                                 ; $5745: $F8 $FC
    ld hl, sp-$04                                 ; $5747: $F8 $FC
    ld hl, sp-$04                                 ; $5749: $F8 $FC
    cp b                                          ; $574B: $B8
    cp b                                          ; $574C: $B8

jr_00A_574D:
    ld d, b                                       ; $574D: $50
    ld d, h                                       ; $574E: $54
    xor b                                         ; $574F: $A8
    inc bc                                        ; $5750: $03
    nop                                           ; $5751: $00
    rlca                                          ; $5752: $07
    inc bc                                        ; $5753: $03
    rrca                                          ; $5754: $0F
    rlca                                          ; $5755: $07
    rra                                           ; $5756: $1F
    ld c, $1F                                     ; $5757: $0E $1F
    rrca                                          ; $5759: $0F
    rra                                           ; $575A: $1F
    rrca                                          ; $575B: $0F
    cpl                                           ; $575C: $2F
    rla                                           ; $575D: $17
    rra                                           ; $575E: $1F
    rlca                                          ; $575F: $07
    ld [hl], b                                    ; $5760: $70
    nop                                           ; $5761: $00
    ld hl, sp+$70                                 ; $5762: $F8 $70
    db $FC                                        ; $5764: $FC
    ld hl, sp-$02                                 ; $5765: $F8 $FE
    db $FC                                        ; $5767: $FC
    cp $FC                                        ; $5768: $FE $FC
    db $FC                                        ; $576A: $FC
    ld hl, sp-$06                                 ; $576B: $F8 $FA
    db $F4                                        ; $576D: $F4
    db $FC                                        ; $576E: $FC
    ldh a, [$03]                                  ; $576F: $F0 $03
    nop                                           ; $5771: $00
    rlca                                          ; $5772: $07
    inc bc                                        ; $5773: $03
    rrca                                          ; $5774: $0F
    rlca                                          ; $5775: $07
    rra                                           ; $5776: $1F
    dec c                                         ; $5777: $0D
    rra                                           ; $5778: $1F
    rrca                                          ; $5779: $0F
    rra                                           ; $577A: $1F
    rrca                                          ; $577B: $0F
    rra                                           ; $577C: $1F
    rrca                                          ; $577D: $0F
    rra                                           ; $577E: $1F
    rlca                                          ; $577F: $07
    ld hl, sp+$00                                 ; $5780: $F8 $00
    db $FC                                        ; $5782: $FC
    ld a, b                                       ; $5783: $78
    cp $FC                                        ; $5784: $FE $FC
    cp $FC                                        ; $5786: $FE $FC
    cp $FC                                        ; $5788: $FE $FC
    cp $E4                                        ; $578A: $FE $E4
    db $EC                                        ; $578C: $EC
    ret nc                                        ; $578D: $D0

    ret z                                         ; $578E: $C8

    or b                                          ; $578F: $B0
    inc c                                         ; $5790: $0C
    inc bc                                        ; $5791: $03
    rra                                           ; $5792: $1F
    inc c                                         ; $5793: $0C
    ccf                                           ; $5794: $3F
    rra                                           ; $5795: $1F
    ccf                                           ; $5796: $3F
    rla                                           ; $5797: $17
    ccf                                           ; $5798: $3F
    rlca                                          ; $5799: $07
    cpl                                           ; $579A: $2F
    inc de                                        ; $579B: $13
    inc de                                        ; $579C: $13
    dec c                                         ; $579D: $0D
    inc de                                        ; $579E: $13
    dec c                                         ; $579F: $0D
    db $10                                        ; $57A0: $10
    ldh [$E0], a                                  ; $57A1: $E0 $E0
    nop                                           ; $57A3: $00
    ldh a, [$E0]                                  ; $57A4: $F0 $E0
    ldh a, [$E0]                                  ; $57A6: $F0 $E0
    ldh a, [$C0]                                  ; $57A8: $F0 $C0
    ld hl, sp-$40                                 ; $57AA: $F8 $C0
    add sp, -$30                                  ; $57AC: $E8 $D0
    ldh a, [$C0]                                  ; $57AE: $F0 $C0
    ld a, [de]                                    ; $57B0: $1A
    dec b                                         ; $57B1: $05
    inc b                                         ; $57B2: $04
    inc bc                                        ; $57B3: $03
    rrca                                          ; $57B4: $0F
    inc b                                         ; $57B5: $04
    rra                                           ; $57B6: $1F
    rrca                                          ; $57B7: $0F
    rra                                           ; $57B8: $1F
    rlca                                          ; $57B9: $07
    rla                                           ; $57BA: $17
    dec bc                                        ; $57BB: $0B
    inc de                                        ; $57BC: $13
    dec c                                         ; $57BD: $0D
    inc de                                        ; $57BE: $13
    dec c                                         ; $57BF: $0D
    ldh a, [$E0]                                  ; $57C0: $F0 $E0
    ldh a, [rP1]                                  ; $57C2: $F0 $00
    ld hl, sp-$10                                 ; $57C4: $F8 $F0

jr_00A_57C6:
    db $FC                                        ; $57C6: $FC
    ld hl, sp-$04                                 ; $57C7: $F8 $FC
    ldh a, [$F4]                                  ; $57C9: $F0 $F4
    add sp, -$0C                                  ; $57CB: $E8 $F4
    add sp, -$08                                  ; $57CD: $E8 $F8
    ldh [rIF], a                                  ; $57CF: $E0 $0F
    inc bc                                        ; $57D1: $03
    rlca                                          ; $57D2: $07
    nop                                           ; $57D3: $00
    rrca                                          ; $57D4: $0F
    rlca                                          ; $57D5: $07
    rra                                           ; $57D6: $1F
    rrca                                          ; $57D7: $0F
    rra                                           ; $57D8: $1F
    rrca                                          ; $57D9: $0F
    rra                                           ; $57DA: $1F
    rlca                                          ; $57DB: $07
    rrca                                          ; $57DC: $0F
    rlca                                          ; $57DD: $07
    rrca                                          ; $57DE: $0F

jr_00A_57DF:
    rlca                                          ; $57DF: $07
    sub b                                         ; $57E0: $90
    ld h, b                                       ; $57E1: $60
    ldh [rP1], a                                  ; $57E2: $E0 $00
    ldh [$C0], a                                  ; $57E4: $E0 $C0
    ldh a, [$E0]                                  ; $57E6: $F0 $E0
    ldh a, [$E0]                                  ; $57E8: $F0 $E0
    ld hl, sp+$40                                 ; $57EA: $F8 $40
    call nz, $E4B8                                ; $57EC: $C4 $B8 $E4
    sbc b                                         ; $57EF: $98
    ld a, [hl+]                                   ; $57F0: $2A
    dec d                                         ; $57F1: $15
    ld a, [de]                                    ; $57F2: $1A
    dec b                                         ; $57F3: $05
    inc c                                         ; $57F4: $0C
    inc bc                                        ; $57F5: $03
    rrca                                          ; $57F6: $0F
    inc b                                         ; $57F7: $04
    rra                                           ; $57F8: $1F
    rrca                                          ; $57F9: $0F
    rra                                           ; $57FA: $1F
    ld bc, $0E11                                  ; $57FB: $01 $11 $0E
    add hl, bc                                    ; $57FE: $09
    ld b, $54                                     ; $57FF: $06 $54
    xor b                                         ; $5801: $A8
    ld e, b                                       ; $5802: $58
    and b                                         ; $5803: $A0
    jr nc, jr_00A_57C6                            ; $5804: $30 $C0

    ldh a, [rNR41]                                ; $5806: $F0 $20
    ld hl, sp-$10                                 ; $5808: $F8 $F0
    ld hl, sp-$20                                 ; $580A: $F8 $E0
    add sp, -$30                                  ; $580C: $E8 $D0
    add sp, -$30                                  ; $580E: $E8 $D0
    rra                                           ; $5810: $1F
    rlca                                          ; $5811: $07
    rlca                                          ; $5812: $07
    inc bc                                        ; $5813: $03
    rlca                                          ; $5814: $07
    nop                                           ; $5815: $00
    rrca                                          ; $5816: $0F
    rlca                                          ; $5817: $07
    rra                                           ; $5818: $1F
    dec bc                                        ; $5819: $0B
    rra                                           ; $581A: $1F
    inc bc                                        ; $581B: $03
    rla                                           ; $581C: $17
    dec bc                                        ; $581D: $0B
    rla                                           ; $581E: $17
    dec bc                                        ; $581F: $0B
    db $FC                                        ; $5820: $FC
    ldh a, [$F0]                                  ; $5821: $F0 $F0
    ldh [$F0], a                                  ; $5823: $E0 $F0
    nop                                           ; $5825: $00
    ld hl, sp-$10                                 ; $5826: $F8 $F0
    db $FC                                        ; $5828: $FC
    add sp, -$04                                  ; $5829: $E8 $FC
    ldh [$F4], a                                  ; $582B: $E0 $F4
    add sp, -$08                                  ; $582D: $E8 $F8
    ldh [rIF], a                                  ; $582F: $E0 $0F
    nop                                           ; $5831: $00
    rrca                                          ; $5832: $0F
    rlca                                          ; $5833: $07
    rra                                           ; $5834: $1F
    rrca                                          ; $5835: $0F
    rra                                           ; $5836: $1F
    ld c, $3F                                     ; $5837: $0E $3F
    db $10                                        ; $5839: $10
    add hl, sp                                    ; $583A: $39
    ld b, $21                                     ; $583B: $06 $21
    ld e, $1F                                     ; $583D: $1E $1F
    nop                                           ; $583F: $00
    ldh [rP1], a                                  ; $5840: $E0 $00
    ldh [$C0], a                                  ; $5842: $E0 $C0
    ldh [rLCDC], a                                ; $5844: $E0 $40
    ldh a, [$C0]                                  ; $5846: $F0 $C0
    ret z                                         ; $5848: $C8

    jr nc, @+$0A                                  ; $5849: $30 $08

    ldh a, [$F0]                                  ; $584B: $F0 $F0
    nop                                           ; $584D: $00
    nop                                           ; $584E: $00
    nop                                           ; $584F: $00
    ld hl, sp+$00                                 ; $5850: $F8 $00
    ldh a, [$E0]                                  ; $5852: $F0 $E0
    ld hl, sp+$70                                 ; $5854: $F8 $70
    ld hl, sp+$40                                 ; $5856: $F8 $40
    ret z                                         ; $5858: $C8

    jr nc, jr_00A_57DF                            ; $5859: $30 $84

    ld a, b                                       ; $585B: $78
    call nz, $F838                                ; $585C: $C4 $38 $F8
    nop                                           ; $585F: $00
    ldh a, [rP1]                                  ; $5860: $F0 $00
    ldh a, [$60]                                  ; $5862: $F0 $60
    ld hl, sp+$60                                 ; $5864: $F8 $60
    ld hl, sp+$70                                 ; $5866: $F8 $70
    ld hl, sp+$70                                 ; $5868: $F8 $70
    db $F4                                        ; $586A: $F4
    ld [$708C], sp                                ; $586B: $08 $8C $70
    ld hl, sp+$00                                 ; $586E: $F8 $00
    rlca                                          ; $5870: $07
    nop                                           ; $5871: $00
    rlca                                          ; $5872: $07
    inc bc                                        ; $5873: $03
    rrca                                          ; $5874: $0F
    ld b, $0F                                     ; $5875: $06 $0F
    rlca                                          ; $5877: $07
    rrca                                          ; $5878: $0F
    ld bc, $0609                                  ; $5879: $01 $09 $06
    rrca                                          ; $587C: $0F
    nop                                           ; $587D: $00
    nop                                           ; $587E: $00
    nop                                           ; $587F: $00
    db $FC                                        ; $5880: $FC
    ld h, b                                       ; $5881: $60
    ldh a, [$E0]                                  ; $5882: $F0 $E0
    ld hl, sp-$10                                 ; $5884: $F8 $F0
    ld hl, sp+$70                                 ; $5886: $F8 $70
    ld hl, sp+$60                                 ; $5888: $F8 $60
    db $F4                                        ; $588A: $F4
    ld [$708C], sp                                ; $588B: $08 $8C $70
    ld hl, sp+$00                                 ; $588E: $F8 $00
    rst $38                                       ; $5890: $FF
    nop                                           ; $5891: $00
    ld a, a                                       ; $5892: $7F
    ld a, $FE                                     ; $5893: $3E $FE
    ld a, h                                       ; $5895: $7C
    rst $38                                       ; $5896: $FF
    ld e, b                                       ; $5897: $58
    ld sp, hl                                     ; $5898: $F9
    ld h, [hl]                                    ; $5899: $66
    ld [hl], c                                    ; $589A: $71
    ld c, $52                                     ; $589B: $0E $52
    inc l                                         ; $589D: $2C
    ld a, $00                                     ; $589E: $3E $00
    rrca                                          ; $58A0: $0F
    nop                                           ; $58A1: $00
    rlca                                          ; $58A2: $07
    inc bc                                        ; $58A3: $03
    rrca                                          ; $58A4: $0F
    ld b, $0F                                     ; $58A5: $06 $0F
    rlca                                          ; $58A7: $07
    rrca                                          ; $58A8: $0F
    rlca                                          ; $58A9: $07
    rlca                                          ; $58AA: $07
    nop                                           ; $58AB: $00
    inc b                                         ; $58AC: $04
    inc bc                                        ; $58AD: $03
    rlca                                          ; $58AE: $07
    nop                                           ; $58AF: $00
    ldh a, [rP1]                                  ; $58B0: $F0 $00
    ld hl, sp-$10                                 ; $58B2: $F8 $F0
    ld hl, sp-$10                                 ; $58B4: $F8 $F0
    ld hl, sp+$30                                 ; $58B6: $F8 $30
    ldh a, [rP1]                                  ; $58B8: $F0 $00
    sub b                                         ; $58BA: $90
    ld h, b                                       ; $58BB: $60
    sub b                                         ; $58BC: $90
    ld h, b                                       ; $58BD: $60
    ldh a, [rP1]                                  ; $58BE: $F0 $00
    inc bc                                        ; $58C0: $03
    nop                                           ; $58C1: $00
    rrca                                          ; $58C2: $0F
    inc bc                                        ; $58C3: $03
    rra                                           ; $58C4: $1F
    rrca                                          ; $58C5: $0F
    ccf                                           ; $58C6: $3F
    rra                                           ; $58C7: $1F
    ccf                                           ; $58C8: $3F
    rra                                           ; $58C9: $1F
    rra                                           ; $58CA: $1F
    rrca                                          ; $58CB: $0F
    rrca                                          ; $58CC: $0F
    dec b                                         ; $58CD: $05
    dec b                                         ; $58CE: $05
    ld [bc], a                                    ; $58CF: $02
    ld hl, sp+$00                                 ; $58D0: $F8 $00
    db $FC                                        ; $58D2: $FC
    ld hl, sp-$08                                 ; $58D3: $F8 $F8
    ldh a, [$FC]                                  ; $58D5: $F0 $FC
    ld hl, sp-$04                                 ; $58D7: $F8 $FC
    sbc b                                         ; $58D9: $98
    sbc h                                         ; $58DA: $9C
    ld l, b                                       ; $58DB: $68
    ld e, b                                       ; $58DC: $58
    and b                                         ; $58DD: $A0
    ld d, b                                       ; $58DE: $50
    and b                                         ; $58DF: $A0
    dec b                                         ; $58E0: $05
    ld [bc], a                                    ; $58E1: $02
    ld [bc], a                                    ; $58E2: $02
    ld bc, $0003                                  ; $58E3: $01 $03 $00
    rlca                                          ; $58E6: $07
    inc bc                                        ; $58E7: $03
    rrca                                          ; $58E8: $0F
    rlca                                          ; $58E9: $07
    rra                                           ; $58EA: $1F
    ld b, $2F                                     ; $58EB: $06 $2F
    rla                                           ; $58ED: $17
    cpl                                           ; $58EE: $2F
    rla                                           ; $58EF: $17
    ld d, b                                       ; $58F0: $50
    and b                                         ; $58F1: $A0
    db $10                                        ; $58F2: $10
    ldh [$E0], a                                  ; $58F3: $E0 $E0
    nop                                           ; $58F5: $00
    ret nz                                        ; $58F6: $C0

    add b                                         ; $58F7: $80
    ret nz                                        ; $58F8: $C0

    nop                                           ; $58F9: $00
    ld h, b                                       ; $58FA: $60
    add b                                         ; $58FB: $80
    sub b                                         ; $58FC: $90
    ld h, b                                       ; $58FD: $60
    sub b                                         ; $58FE: $90
    ld h, b                                       ; $58FF: $60
    ld hl, $7E1E                                  ; $5900: $21 $1E $7E

jr_00A_5903:
    nop                                           ; $5903: $00
    db $FC                                        ; $5904: $FC
    jr c, jr_00A_5903                             ; $5905: $38 $FC

    ld l, b                                       ; $5907: $68
    cp $0C                                        ; $5908: $FE $0C
    sbc $24                                       ; $590A: $DE $24
    and $58                                       ; $590C: $E6 $58
    ld h, [hl]                                    ; $590E: $66
    ld e, b                                       ; $590F: $58
    dec b                                         ; $5910: $05
    ld [bc], a                                    ; $5911: $02
    ld [bc], a                                    ; $5912: $02
    ld bc, $0007                                  ; $5913: $01 $07 $00
    rrca                                          ; $5916: $0F
    rlca                                          ; $5917: $07
    rrca                                          ; $5918: $0F
    inc bc                                        ; $5919: $03
    dec de                                        ; $591A: $1B
    dec b                                         ; $591B: $05
    daa                                           ; $591C: $27
    dec de                                        ; $591D: $1B
    daa                                           ; $591E: $27
    dec de                                        ; $591F: $1B
    ld d, b                                       ; $5920: $50
    and b                                         ; $5921: $A0
    db $10                                        ; $5922: $10
    ldh [$E0], a                                  ; $5923: $E0 $E0
    nop                                           ; $5925: $00
    ret nz                                        ; $5926: $C0

    add b                                         ; $5927: $80
    ret nz                                        ; $5928: $C0

    add b                                         ; $5929: $80
    ldh [$80], a                                  ; $592A: $E0 $80
    ret nc                                        ; $592C: $D0

    and b                                         ; $592D: $A0
    ret nc                                        ; $592E: $D0

    and b                                         ; $592F: $A0
    rra                                           ; $5930: $1F
    nop                                           ; $5931: $00
    rrca                                          ; $5932: $0F
    rlca                                          ; $5933: $07
    rra                                           ; $5934: $1F
    rrca                                          ; $5935: $0F
    ccf                                           ; $5936: $3F
    rra                                           ; $5937: $1F
    ld e, a                                       ; $5938: $5F
    inc l                                         ; $5939: $2C
    ld c, l                                       ; $593A: $4D
    ld [hl-], a                                   ; $593B: $32
    ld h, c                                       ; $593C: $61
    ld e, $7F                                     ; $593D: $1E $7F
    nop                                           ; $593F: $00
    ldh [rP1], a                                  ; $5940: $E0 $00
    ldh [$80], a                                  ; $5942: $E0 $80
    ld hl, sp-$80                                 ; $5944: $F8 $80
    db $E4                                        ; $5946: $E4
    jr @-$3A                                      ; $5947: $18 $C4

    cp b                                          ; $5949: $B8
    ret z                                         ; $594A: $C8

    or b                                          ; $594B: $B0
    cp b                                          ; $594C: $B8
    ld b, b                                       ; $594D: $40
    ldh [rP1], a                                  ; $594E: $E0 $00
    rlca                                          ; $5950: $07
    nop                                           ; $5951: $00
    rrca                                          ; $5952: $0F
    rlca                                          ; $5953: $07
    rra                                           ; $5954: $1F
    rrca                                          ; $5955: $0F
    rra                                           ; $5956: $1F
    rrca                                          ; $5957: $0F
    ccf                                           ; $5958: $3F
    db $10                                        ; $5959: $10
    jr c, @+$09                                   ; $595A: $38 $07

    jr nc, jr_00A_596D                            ; $595C: $30 $0F

    rra                                           ; $595E: $1F
    nop                                           ; $595F: $00
    ldh [rP1], a                                  ; $5960: $E0 $00
    ldh [$C0], a                                  ; $5962: $E0 $C0
    ldh [$C0], a                                  ; $5964: $E0 $C0
    ldh [$80], a                                  ; $5966: $E0 $80
    ret nc                                        ; $5968: $D0

    jr nz, @+$52                                  ; $5969: $20 $50

    and b                                         ; $596B: $A0
    ld [hl], b                                    ; $596C: $70

jr_00A_596D:
    add b                                         ; $596D: $80
    ret nz                                        ; $596E: $C0

    nop                                           ; $596F: $00
    rra                                           ; $5970: $1F
    nop                                           ; $5971: $00
    rrca                                          ; $5972: $0F
    rlca                                          ; $5973: $07
    rra                                           ; $5974: $1F
    rrca                                          ; $5975: $0F
    ccf                                           ; $5976: $3F
    dec bc                                        ; $5977: $0B
    ld e, a                                       ; $5978: $5F
    ld hl, $3C43                                  ; $5979: $21 $43 $3C
    ld h, c                                       ; $597C: $61
    ld e, $7F                                     ; $597D: $1E $7F
    nop                                           ; $597F: $00
    ldh [rP1], a                                  ; $5980: $E0 $00
    ret nz                                        ; $5982: $C0

    add b                                         ; $5983: $80
    ld hl, sp-$40                                 ; $5984: $F8 $C0
    db $E4                                        ; $5986: $E4
    ret c                                         ; $5987: $D8

    call nz, $C8B8                                ; $5988: $C4 $B8 $C8
    or b                                          ; $598B: $B0
    cp b                                          ; $598C: $B8
    ld b, b                                       ; $598D: $40
    ldh [rP1], a                                  ; $598E: $E0 $00
    nop                                           ; $5990: $00
    nop                                           ; $5991: $00
    rrca                                          ; $5992: $0F
    nop                                           ; $5993: $00
    rra                                           ; $5994: $1F
    nop                                           ; $5995: $00
    rra                                           ; $5996: $1F
    nop                                           ; $5997: $00
    rra                                           ; $5998: $1F
    inc bc                                        ; $5999: $03
    rra                                           ; $599A: $1F
    inc bc                                        ; $599B: $03
    rra                                           ; $599C: $1F
    ld c, $0F                                     ; $599D: $0E $0F
    ld b, $00                                     ; $599F: $06 $00
    nop                                           ; $59A1: $00
    ldh [rP1], a                                  ; $59A2: $E0 $00
    ldh a, [rP1]                                  ; $59A4: $F0 $00
    ldh a, [rP1]                                  ; $59A6: $F0 $00
    ldh a, [$E0]                                  ; $59A8: $F0 $E0
    ldh a, [$E0]                                  ; $59AA: $F0 $E0
    ldh a, [$C0]                                  ; $59AC: $F0 $C0
    ldh a, [$C0]                                  ; $59AE: $F0 $C0
    nop                                           ; $59B0: $00
    nop                                           ; $59B1: $00
    ldh [rP1], a                                  ; $59B2: $E0 $00
    ldh a, [rP1]                                  ; $59B4: $F0 $00
    ldh a, [rP1]                                  ; $59B6: $F0 $00
    ldh a, [rP1]                                  ; $59B8: $F0 $00
    ldh a, [$C0]                                  ; $59BA: $F0 $C0
    ld hl, sp-$20                                 ; $59BC: $F8 $E0
    db $FC                                        ; $59BE: $FC
    xor b                                         ; $59BF: $A8
    nop                                           ; $59C0: $00
    nop                                           ; $59C1: $00
    ldh [rP1], a                                  ; $59C2: $E0 $00
    ldh a, [rP1]                                  ; $59C4: $F0 $00
    ldh a, [rP1]                                  ; $59C6: $F0 $00
    ldh a, [rP1]                                  ; $59C8: $F0 $00
    ld hl, sp+$00                                 ; $59CA: $F8 $00
    db $FC                                        ; $59CC: $FC
    ld [$00F8], sp                                ; $59CD: $08 $F8 $00
    nop                                           ; $59D0: $00
    nop                                           ; $59D1: $00
    inc bc                                        ; $59D2: $03
    nop                                           ; $59D3: $00

jr_00A_59D4:
    rlca                                          ; $59D4: $07
    nop                                           ; $59D5: $00
    rrca                                          ; $59D6: $0F
    nop                                           ; $59D7: $00
    rrca                                          ; $59D8: $0F
    nop                                           ; $59D9: $00
    rrca                                          ; $59DA: $0F
    nop                                           ; $59DB: $00
    rrca                                          ; $59DC: $0F
    nop                                           ; $59DD: $00
    rrca                                          ; $59DE: $0F
    nop                                           ; $59DF: $00
    nop                                           ; $59E0: $00
    nop                                           ; $59E1: $00
    ldh a, [rP1]                                  ; $59E2: $F0 $00
    ld hl, sp+$00                                 ; $59E4: $F8 $00
    ld hl, sp+$00                                 ; $59E6: $F8 $00
    ld hl, sp+$00                                 ; $59E8: $F8 $00
    ld hl, sp+$10                                 ; $59EA: $F8 $10
    ld hl, sp+$30                                 ; $59EC: $F8 $30
    ld hl, sp+$70                                 ; $59EE: $F8 $70
    inc c                                         ; $59F0: $0C
    inc bc                                        ; $59F1: $03
    rra                                           ; $59F2: $1F
    inc c                                         ; $59F3: $0C
    ccf                                           ; $59F4: $3F
    rra                                           ; $59F5: $1F
    ccf                                           ; $59F6: $3F
    rla                                           ; $59F7: $17
    ccf                                           ; $59F8: $3F
    rlca                                          ; $59F9: $07
    cpl                                           ; $59FA: $2F
    inc de                                        ; $59FB: $13
    inc de                                        ; $59FC: $13
    dec c                                         ; $59FD: $0D
    inc de                                        ; $59FE: $13
    dec c                                         ; $59FF: $0D
    db $10                                        ; $5A00: $10
    ldh [$E0], a                                  ; $5A01: $E0 $E0
    nop                                           ; $5A03: $00
    ldh a, [$E0]                                  ; $5A04: $F0 $E0
    ldh a, [$E0]                                  ; $5A06: $F0 $E0
    ldh a, [$C0]                                  ; $5A08: $F0 $C0
    ld hl, sp-$40                                 ; $5A0A: $F8 $C0
    add sp, -$30                                  ; $5A0C: $E8 $D0
    ldh a, [$C0]                                  ; $5A0E: $F0 $C0
    ld e, b                                       ; $5A10: $58
    and b                                         ; $5A11: $A0
    jr nz, jr_00A_59D4                            ; $5A12: $20 $C0

    ldh a, [rNR41]                                ; $5A14: $F0 $20
    ld hl, sp-$10                                 ; $5A16: $F8 $F0
    ld hl, sp-$20                                 ; $5A18: $F8 $E0
    add sp, -$30                                  ; $5A1A: $E8 $D0
    ret z                                         ; $5A1C: $C8

    or b                                          ; $5A1D: $B0
    ret z                                         ; $5A1E: $C8

    or b                                          ; $5A1F: $B0
    ldh [rP1], a                                  ; $5A20: $E0 $00
    ldh a, [$E0]                                  ; $5A22: $F0 $E0
    ld hl, sp-$10                                 ; $5A24: $F8 $F0

jr_00A_5A26:
    db $FC                                        ; $5A26: $FC
    ld hl, sp-$04                                 ; $5A27: $F8 $FC
    ldh a, [$F4]                                  ; $5A29: $F0 $F4
    add sp, -$0C                                  ; $5A2B: $E8 $F4
    add sp, -$08                                  ; $5A2D: $E8 $F8
    ldh [rTAC], a                                 ; $5A2F: $E0 $07
    nop                                           ; $5A31: $00
    rlca                                          ; $5A32: $07
    inc bc                                        ; $5A33: $03
    rrca                                          ; $5A34: $0F
    rlca                                          ; $5A35: $07
    rra                                           ; $5A36: $1F
    rrca                                          ; $5A37: $0F
    rra                                           ; $5A38: $1F
    rrca                                          ; $5A39: $0F
    rra                                           ; $5A3A: $1F
    rlca                                          ; $5A3B: $07
    rrca                                          ; $5A3C: $0F
    rlca                                          ; $5A3D: $07
    rrca                                          ; $5A3E: $0F

jr_00A_5A3F:
    rlca                                          ; $5A3F: $07
    db $10                                        ; $5A40: $10
    ldh [$E0], a                                  ; $5A41: $E0 $E0
    nop                                           ; $5A43: $00
    ldh [$C0], a                                  ; $5A44: $E0 $C0
    ldh a, [$E0]                                  ; $5A46: $F0 $E0
    ldh a, [$E0]                                  ; $5A48: $F0 $E0
    ld hl, sp+$40                                 ; $5A4A: $F8 $40
    call nz, $E4B8                                ; $5A4C: $C4 $B8 $E4
    sbc b                                         ; $5A4F: $98
    ld a, [hl+]                                   ; $5A50: $2A
    dec d                                         ; $5A51: $15
    ld a, [de]                                    ; $5A52: $1A
    dec b                                         ; $5A53: $05
    inc b                                         ; $5A54: $04
    inc bc                                        ; $5A55: $03
    rrca                                          ; $5A56: $0F
    inc b                                         ; $5A57: $04
    rra                                           ; $5A58: $1F
    rrca                                          ; $5A59: $0F
    rra                                           ; $5A5A: $1F
    ld bc, $0E11                                  ; $5A5B: $01 $11 $0E
    add hl, bc                                    ; $5A5E: $09
    ld b, $54                                     ; $5A5F: $06 $54
    xor b                                         ; $5A61: $A8
    ld e, b                                       ; $5A62: $58
    and b                                         ; $5A63: $A0
    jr nz, jr_00A_5A26                            ; $5A64: $20 $C0

    ldh a, [rNR41]                                ; $5A66: $F0 $20
    ld hl, sp-$10                                 ; $5A68: $F8 $F0
    ld hl, sp-$20                                 ; $5A6A: $F8 $E0
    add sp, -$30                                  ; $5A6C: $E8 $D0
    add sp, -$30                                  ; $5A6E: $E8 $D0
    rrca                                          ; $5A70: $0F
    nop                                           ; $5A71: $00
    rlca                                          ; $5A72: $07
    nop                                           ; $5A73: $00
    rlca                                          ; $5A74: $07
    inc bc                                        ; $5A75: $03
    rrca                                          ; $5A76: $0F
    rlca                                          ; $5A77: $07
    rra                                           ; $5A78: $1F
    rrca                                          ; $5A79: $0F
    rra                                           ; $5A7A: $1F
    inc bc                                        ; $5A7B: $03
    rla                                           ; $5A7C: $17
    dec bc                                        ; $5A7D: $0B
    rla                                           ; $5A7E: $17
    dec bc                                        ; $5A7F: $0B
    ldh a, [rP1]                                  ; $5A80: $F0 $00
    ldh [rP1], a                                  ; $5A82: $E0 $00
    ldh a, [$E0]                                  ; $5A84: $F0 $E0
    ld hl, sp-$10                                 ; $5A86: $F8 $F0
    db $FC                                        ; $5A88: $FC
    ld hl, sp-$04                                 ; $5A89: $F8 $FC
    ldh [$F4], a                                  ; $5A8B: $E0 $F4
    add sp, -$08                                  ; $5A8D: $E8 $F8
    ldh [rIF], a                                  ; $5A8F: $E0 $0F
    nop                                           ; $5A91: $00
    rrca                                          ; $5A92: $0F
    rlca                                          ; $5A93: $07
    rra                                           ; $5A94: $1F
    rrca                                          ; $5A95: $0F
    rra                                           ; $5A96: $1F
    ld c, $3F                                     ; $5A97: $0E $3F
    db $10                                        ; $5A99: $10
    add hl, sp                                    ; $5A9A: $39
    ld b, $21                                     ; $5A9B: $06 $21
    ld e, $1F                                     ; $5A9D: $1E $1F
    nop                                           ; $5A9F: $00
    ldh [rP1], a                                  ; $5AA0: $E0 $00
    ldh [$C0], a                                  ; $5AA2: $E0 $C0
    ldh [rLCDC], a                                ; $5AA4: $E0 $40
    ldh a, [$C0]                                  ; $5AA6: $F0 $C0
    ret z                                         ; $5AA8: $C8

    jr nc, @+$0A                                  ; $5AA9: $30 $08

    ldh a, [$F0]                                  ; $5AAB: $F0 $F0
    nop                                           ; $5AAD: $00
    nop                                           ; $5AAE: $00
    nop                                           ; $5AAF: $00
    ld hl, sp+$00                                 ; $5AB0: $F8 $00
    ldh a, [$E0]                                  ; $5AB2: $F0 $E0
    ld hl, sp+$70                                 ; $5AB4: $F8 $70
    ld hl, sp+$40                                 ; $5AB6: $F8 $40
    ret z                                         ; $5AB8: $C8

    jr nc, jr_00A_5A3F                            ; $5AB9: $30 $84

    ld a, b                                       ; $5ABB: $78
    call nz, $F838                                ; $5ABC: $C4 $38 $F8
    nop                                           ; $5ABF: $00
    ldh a, [rP1]                                  ; $5AC0: $F0 $00
    ldh a, [$60]                                  ; $5AC2: $F0 $60
    ld hl, sp+$60                                 ; $5AC4: $F8 $60
    ld hl, sp+$70                                 ; $5AC6: $F8 $70
    ld hl, sp+$70                                 ; $5AC8: $F8 $70
    db $F4                                        ; $5ACA: $F4
    ld [$708C], sp                                ; $5ACB: $08 $8C $70
    ld hl, sp+$00                                 ; $5ACE: $F8 $00
    rlca                                          ; $5AD0: $07
    nop                                           ; $5AD1: $00
    rlca                                          ; $5AD2: $07
    inc bc                                        ; $5AD3: $03
    rrca                                          ; $5AD4: $0F
    ld b, $0F                                     ; $5AD5: $06 $0F
    rlca                                          ; $5AD7: $07
    rrca                                          ; $5AD8: $0F
    ld bc, $0609                                  ; $5AD9: $01 $09 $06
    rrca                                          ; $5ADC: $0F
    nop                                           ; $5ADD: $00
    nop                                           ; $5ADE: $00
    nop                                           ; $5ADF: $00
    db $FC                                        ; $5AE0: $FC
    ld h, b                                       ; $5AE1: $60
    ldh a, [$E0]                                  ; $5AE2: $F0 $E0
    ld hl, sp-$10                                 ; $5AE4: $F8 $F0
    ld hl, sp+$70                                 ; $5AE6: $F8 $70
    ld hl, sp+$60                                 ; $5AE8: $F8 $60
    db $F4                                        ; $5AEA: $F4
    ld [$708C], sp                                ; $5AEB: $08 $8C $70
    ld hl, sp+$00                                 ; $5AEE: $F8 $00
    rst $38                                       ; $5AF0: $FF
    nop                                           ; $5AF1: $00
    ld a, a                                       ; $5AF2: $7F
    ld a, $FE                                     ; $5AF3: $3E $FE
    ld a, h                                       ; $5AF5: $7C
    rst $38                                       ; $5AF6: $FF
    ld e, b                                       ; $5AF7: $58
    ld sp, hl                                     ; $5AF8: $F9
    ld h, [hl]                                    ; $5AF9: $66
    ld [hl], c                                    ; $5AFA: $71
    ld c, $52                                     ; $5AFB: $0E $52
    inc l                                         ; $5AFD: $2C
    ld a, $00                                     ; $5AFE: $3E $00
    rrca                                          ; $5B00: $0F
    nop                                           ; $5B01: $00
    rlca                                          ; $5B02: $07
    inc bc                                        ; $5B03: $03
    rrca                                          ; $5B04: $0F
    ld b, $0F                                     ; $5B05: $06 $0F
    rlca                                          ; $5B07: $07
    rrca                                          ; $5B08: $0F
    rlca                                          ; $5B09: $07
    rlca                                          ; $5B0A: $07
    nop                                           ; $5B0B: $00
    inc b                                         ; $5B0C: $04
    inc bc                                        ; $5B0D: $03
    rlca                                          ; $5B0E: $07
    nop                                           ; $5B0F: $00
    ldh a, [rP1]                                  ; $5B10: $F0 $00
    ld hl, sp-$10                                 ; $5B12: $F8 $F0
    ld hl, sp-$10                                 ; $5B14: $F8 $F0
    ld hl, sp+$30                                 ; $5B16: $F8 $30
    ldh a, [rP1]                                  ; $5B18: $F0 $00
    sub b                                         ; $5B1A: $90
    ld h, b                                       ; $5B1B: $60
    sub b                                         ; $5B1C: $90
    ld h, b                                       ; $5B1D: $60
    ldh a, [rP1]                                  ; $5B1E: $F0 $00
    nop                                           ; $5B20: $00
    nop                                           ; $5B21: $00
    rlca                                          ; $5B22: $07
    nop                                           ; $5B23: $00
    rrca                                          ; $5B24: $0F
    nop                                           ; $5B25: $00
    rra                                           ; $5B26: $1F
    nop                                           ; $5B27: $00
    rra                                           ; $5B28: $1F
    nop                                           ; $5B29: $00
    rra                                           ; $5B2A: $1F
    nop                                           ; $5B2B: $00
    rrca                                          ; $5B2C: $0F
    ld [bc], a                                    ; $5B2D: $02
    rlca                                          ; $5B2E: $07
    inc bc                                        ; $5B2F: $03
    nop                                           ; $5B30: $00
    nop                                           ; $5B31: $00
    ldh [rP1], a                                  ; $5B32: $E0 $00
    ldh a, [rP1]                                  ; $5B34: $F0 $00
    ldh a, [rP1]                                  ; $5B36: $F0 $00
    ldh a, [rNR41]                                ; $5B38: $F0 $20
    ldh a, [$E0]                                  ; $5B3A: $F0 $E0
    ldh a, [$A0]                                  ; $5B3C: $F0 $A0
    ldh a, [$A0]                                  ; $5B3E: $F0 $A0
    inc b                                         ; $5B40: $04
    inc bc                                        ; $5B41: $03
    ld [bc], a                                    ; $5B42: $02
    ld bc, $0007                                  ; $5B43: $01 $07 $00
    rlca                                          ; $5B46: $07
    inc bc                                        ; $5B47: $03
    rrca                                          ; $5B48: $0F
    rlca                                          ; $5B49: $07
    rra                                           ; $5B4A: $1F
    ld b, $2F                                     ; $5B4B: $06 $2F
    rla                                           ; $5B4D: $17
    cpl                                           ; $5B4E: $2F
    rla                                           ; $5B4F: $17
    ld d, b                                       ; $5B50: $50
    and b                                         ; $5B51: $A0
    db $10                                        ; $5B52: $10
    ldh [$E0], a                                  ; $5B53: $E0 $E0
    nop                                           ; $5B55: $00
    ret nz                                        ; $5B56: $C0

    add b                                         ; $5B57: $80
    ret nz                                        ; $5B58: $C0

    nop                                           ; $5B59: $00
    ld h, b                                       ; $5B5A: $60
    add b                                         ; $5B5B: $80
    sub b                                         ; $5B5C: $90
    ld h, b                                       ; $5B5D: $60
    sub b                                         ; $5B5E: $90
    ld h, b                                       ; $5B5F: $60
    ld hl, $7E1E                                  ; $5B60: $21 $1E $7E

jr_00A_5B63:
    nop                                           ; $5B63: $00
    db $FC                                        ; $5B64: $FC
    jr c, jr_00A_5B63                             ; $5B65: $38 $FC

    ld l, b                                       ; $5B67: $68
    cp $0C                                        ; $5B68: $FE $0C
    sbc $24                                       ; $5B6A: $DE $24
    and $58                                       ; $5B6C: $E6 $58
    ld h, [hl]                                    ; $5B6E: $66
    ld e, b                                       ; $5B6F: $58
    inc b                                         ; $5B70: $04
    inc bc                                        ; $5B71: $03
    ld [bc], a                                    ; $5B72: $02
    ld bc, $0007                                  ; $5B73: $01 $07 $00
    rrca                                          ; $5B76: $0F
    rlca                                          ; $5B77: $07
    rrca                                          ; $5B78: $0F
    inc bc                                        ; $5B79: $03
    dec de                                        ; $5B7A: $1B
    dec b                                         ; $5B7B: $05
    daa                                           ; $5B7C: $27
    dec de                                        ; $5B7D: $1B
    daa                                           ; $5B7E: $27
    dec de                                        ; $5B7F: $1B
    ld d, b                                       ; $5B80: $50
    and b                                         ; $5B81: $A0
    db $10                                        ; $5B82: $10
    ldh [$E0], a                                  ; $5B83: $E0 $E0
    nop                                           ; $5B85: $00
    ret nz                                        ; $5B86: $C0

    add b                                         ; $5B87: $80
    ret nz                                        ; $5B88: $C0

    add b                                         ; $5B89: $80
    ldh [$80], a                                  ; $5B8A: $E0 $80
    ret nc                                        ; $5B8C: $D0

    and b                                         ; $5B8D: $A0
    ret nc                                        ; $5B8E: $D0

    and b                                         ; $5B8F: $A0
    rra                                           ; $5B90: $1F
    nop                                           ; $5B91: $00
    rrca                                          ; $5B92: $0F
    rlca                                          ; $5B93: $07
    rra                                           ; $5B94: $1F
    rrca                                          ; $5B95: $0F
    ccf                                           ; $5B96: $3F
    rra                                           ; $5B97: $1F
    ld e, a                                       ; $5B98: $5F
    inc l                                         ; $5B99: $2C
    ld c, l                                       ; $5B9A: $4D
    ld [hl-], a                                   ; $5B9B: $32
    ld h, c                                       ; $5B9C: $61
    ld e, $7F                                     ; $5B9D: $1E $7F
    nop                                           ; $5B9F: $00
    ldh [rP1], a                                  ; $5BA0: $E0 $00
    ldh [$80], a                                  ; $5BA2: $E0 $80
    ld hl, sp-$80                                 ; $5BA4: $F8 $80
    db $E4                                        ; $5BA6: $E4
    jr @-$3A                                      ; $5BA7: $18 $C4

    cp b                                          ; $5BA9: $B8
    ret z                                         ; $5BAA: $C8

    or b                                          ; $5BAB: $B0
    cp b                                          ; $5BAC: $B8
    ld b, b                                       ; $5BAD: $40
    ldh [rP1], a                                  ; $5BAE: $E0 $00
    rlca                                          ; $5BB0: $07
    nop                                           ; $5BB1: $00
    rrca                                          ; $5BB2: $0F
    rlca                                          ; $5BB3: $07
    rra                                           ; $5BB4: $1F
    rrca                                          ; $5BB5: $0F
    rra                                           ; $5BB6: $1F
    rrca                                          ; $5BB7: $0F
    ccf                                           ; $5BB8: $3F
    db $10                                        ; $5BB9: $10
    jr c, @+$09                                   ; $5BBA: $38 $07

    jr nc, jr_00A_5BCD                            ; $5BBC: $30 $0F

    rra                                           ; $5BBE: $1F
    nop                                           ; $5BBF: $00
    ldh [rP1], a                                  ; $5BC0: $E0 $00
    ldh [$C0], a                                  ; $5BC2: $E0 $C0
    ldh [$C0], a                                  ; $5BC4: $E0 $C0
    ldh [$80], a                                  ; $5BC6: $E0 $80
    ret nc                                        ; $5BC8: $D0

    jr nz, jr_00A_5C1B                            ; $5BC9: $20 $50

    and b                                         ; $5BCB: $A0
    ld [hl], b                                    ; $5BCC: $70

jr_00A_5BCD:
    add b                                         ; $5BCD: $80
    ret nz                                        ; $5BCE: $C0

    nop                                           ; $5BCF: $00
    rra                                           ; $5BD0: $1F
    nop                                           ; $5BD1: $00
    rrca                                          ; $5BD2: $0F
    rlca                                          ; $5BD3: $07
    rra                                           ; $5BD4: $1F
    rrca                                          ; $5BD5: $0F
    ccf                                           ; $5BD6: $3F
    dec bc                                        ; $5BD7: $0B
    ld e, a                                       ; $5BD8: $5F
    ld hl, $3C43                                  ; $5BD9: $21 $43 $3C
    ld h, c                                       ; $5BDC: $61
    ld e, $7F                                     ; $5BDD: $1E $7F
    nop                                           ; $5BDF: $00
    ldh [rP1], a                                  ; $5BE0: $E0 $00
    ret nz                                        ; $5BE2: $C0

    add b                                         ; $5BE3: $80
    ld hl, sp-$40                                 ; $5BE4: $F8 $C0
    db $E4                                        ; $5BE6: $E4
    ret c                                         ; $5BE7: $D8

    call nz, $C8B8                                ; $5BE8: $C4 $B8 $C8
    or b                                          ; $5BEB: $B0
    cp b                                          ; $5BEC: $B8
    ld b, b                                       ; $5BED: $40
    ldh [rP1], a                                  ; $5BEE: $E0 $00
    nop                                           ; $5BF0: $00
    nop                                           ; $5BF1: $00
    nop                                           ; $5BF2: $00
    nop                                           ; $5BF3: $00
    nop                                           ; $5BF4: $00
    nop                                           ; $5BF5: $00
    rlca                                          ; $5BF6: $07
    nop                                           ; $5BF7: $00
    rrca                                          ; $5BF8: $0F
    rlca                                          ; $5BF9: $07
    rra                                           ; $5BFA: $1F
    rrca                                          ; $5BFB: $0F
    ccf                                           ; $5BFC: $3F
    rra                                           ; $5BFD: $1F
    ccf                                           ; $5BFE: $3F
    ld e, $00                                     ; $5BFF: $1E $00
    nop                                           ; $5C01: $00
    nop                                           ; $5C02: $00
    nop                                           ; $5C03: $00
    nop                                           ; $5C04: $00
    nop                                           ; $5C05: $00
    ldh [rP1], a                                  ; $5C06: $E0 $00
    ldh a, [$E0]                                  ; $5C08: $F0 $E0
    ld hl, sp-$10                                 ; $5C0A: $F8 $F0
    db $FC                                        ; $5C0C: $FC
    cp b                                          ; $5C0D: $B8
    cp h                                          ; $5C0E: $BC
    ld e, b                                       ; $5C0F: $58
    nop                                           ; $5C10: $00
    nop                                           ; $5C11: $00
    nop                                           ; $5C12: $00
    nop                                           ; $5C13: $00
    nop                                           ; $5C14: $00
    nop                                           ; $5C15: $00
    inc bc                                        ; $5C16: $03
    nop                                           ; $5C17: $00
    rlca                                          ; $5C18: $07
    inc bc                                        ; $5C19: $03
    rrca                                          ; $5C1A: $0F

jr_00A_5C1B:
    rlca                                          ; $5C1B: $07
    rra                                           ; $5C1C: $1F
    rrca                                          ; $5C1D: $0F
    rra                                           ; $5C1E: $1F
    ld c, $00                                     ; $5C1F: $0E $00
    nop                                           ; $5C21: $00
    nop                                           ; $5C22: $00
    nop                                           ; $5C23: $00
    nop                                           ; $5C24: $00
    nop                                           ; $5C25: $00
    ldh a, [rP1]                                  ; $5C26: $F0 $00
    ld hl, sp-$10                                 ; $5C28: $F8 $F0
    db $FC                                        ; $5C2A: $FC
    ld hl, sp-$02                                 ; $5C2B: $F8 $FE
    cp h                                          ; $5C2D: $BC
    cp [hl]                                       ; $5C2E: $BE
    ld e, h                                       ; $5C2F: $5C
    nop                                           ; $5C30: $00
    nop                                           ; $5C31: $00
    nop                                           ; $5C32: $00
    nop                                           ; $5C33: $00
    nop                                           ; $5C34: $00
    nop                                           ; $5C35: $00
    inc bc                                        ; $5C36: $03
    nop                                           ; $5C37: $00

Call_00A_5C38:
    rlca                                          ; $5C38: $07
    inc bc                                        ; $5C39: $03
    rrca                                          ; $5C3A: $0F
    ld b, $1F                                     ; $5C3B: $06 $1F
    rrca                                          ; $5C3D: $0F
    rra                                           ; $5C3E: $1F
    rrca                                          ; $5C3F: $0F
    nop                                           ; $5C40: $00
    nop                                           ; $5C41: $00
    nop                                           ; $5C42: $00
    nop                                           ; $5C43: $00
    nop                                           ; $5C44: $00
    nop                                           ; $5C45: $00

jr_00A_5C46:
    ldh a, [rP1]                                  ; $5C46: $F0 $00
    ld hl, sp-$10                                 ; $5C48: $F8 $F0
    db $FC                                        ; $5C4A: $FC
    ld hl, sp-$02                                 ; $5C4B: $F8 $FE
    db $FC                                        ; $5C4D: $FC
    cp $FC                                        ; $5C4E: $FE $FC
    nop                                           ; $5C50: $00
    nop                                           ; $5C51: $00
    nop                                           ; $5C52: $00
    nop                                           ; $5C53: $00
    nop                                           ; $5C54: $00
    nop                                           ; $5C55: $00
    rlca                                          ; $5C56: $07
    nop                                           ; $5C57: $00
    rrca                                          ; $5C58: $0F
    rlca                                          ; $5C59: $07
    rra                                           ; $5C5A: $1F
    dec c                                         ; $5C5B: $0D
    ccf                                           ; $5C5C: $3F
    rra                                           ; $5C5D: $1F
    ccf                                           ; $5C5E: $3F
    rra                                           ; $5C5F: $1F
    nop                                           ; $5C60: $00
    nop                                           ; $5C61: $00
    nop                                           ; $5C62: $00
    nop                                           ; $5C63: $00
    nop                                           ; $5C64: $00
    nop                                           ; $5C65: $00
    ldh a, [rP1]                                  ; $5C66: $F0 $00
    ld hl, sp-$10                                 ; $5C68: $F8 $F0
    db $FC                                        ; $5C6A: $FC
    ld hl, sp-$02                                 ; $5C6B: $F8 $FE
    db $F4                                        ; $5C6D: $F4
    db $FC                                        ; $5C6E: $FC
    ldh [rNR34], a                                ; $5C6F: $E0 $1E
    dec b                                         ; $5C71: $05
    dec d                                         ; $5C72: $15
    ld a, [bc]                                    ; $5C73: $0A
    add hl, bc                                    ; $5C74: $09
    ld b, $1C                                     ; $5C75: $06 $1C
    inc bc                                        ; $5C77: $03
    ccf                                           ; $5C78: $3F
    nop                                           ; $5C79: $00
    ccf                                           ; $5C7A: $3F
    nop                                           ; $5C7B: $00
    ld [hl], e                                    ; $5C7C: $73
    dec c                                         ; $5C7D: $0D
    inc sp                                        ; $5C7E: $33
    inc c                                         ; $5C7F: $0C
    inc e                                         ; $5C80: $1C
    add sp, $38                                   ; $5C81: $E8 $38
    ret nz                                        ; $5C83: $C0

    jr nc, jr_00A_5C46                            ; $5C84: $30 $C0

    db $10                                        ; $5C86: $10
    ldh [$E0], a                                  ; $5C87: $E0 $E0
    nop                                           ; $5C89: $00
    ldh a, [rP1]                                  ; $5C8A: $F0 $00
    ret nc                                        ; $5C8C: $D0

    and b                                         ; $5C8D: $A0
    ret nc                                        ; $5C8E: $D0

    jr nz, jr_00A_5C9F                            ; $5C8F: $20 $0E

    dec b                                         ; $5C91: $05
    dec d                                         ; $5C92: $15
    ld a, [bc]                                    ; $5C93: $0A
    dec c                                         ; $5C94: $0D
    ld [bc], a                                    ; $5C95: $02
    ld b, $01                                     ; $5C96: $06 $01
    rrca                                          ; $5C98: $0F
    nop                                           ; $5C99: $00
    rra                                           ; $5C9A: $1F
    nop                                           ; $5C9B: $00
    add hl, de                                    ; $5C9C: $19
    ld b, $19                                     ; $5C9D: $06 $19

jr_00A_5C9F:
    ld b, $1C                                     ; $5C9F: $06 $1C
    add sp, $2A                                   ; $5CA1: $E8 $2A
    call nc, $D02C                                ; $5CA3: $D4 $2C $D0
    db $10                                        ; $5CA6: $10
    ldh [$F8], a                                  ; $5CA7: $E0 $F8
    nop                                           ; $5CA9: $00
    db $FC                                        ; $5CAA: $FC
    nop                                           ; $5CAB: $00
    db $E4                                        ; $5CAC: $E4
    ret c                                         ; $5CAD: $D8

    db $E4                                        ; $5CAE: $E4
    jr jr_00A_5CC0                                ; $5CAF: $18 $0F

    rlca                                          ; $5CB1: $07
    rla                                           ; $5CB2: $17
    dec bc                                        ; $5CB3: $0B
    rrca                                          ; $5CB4: $0F
    ld bc, $0007                                  ; $5CB5: $01 $07 $00
    rrca                                          ; $5CB8: $0F
    nop                                           ; $5CB9: $00
    rra                                           ; $5CBA: $1F
    nop                                           ; $5CBB: $00
    rra                                           ; $5CBC: $1F
    inc bc                                        ; $5CBD: $03
    rrca                                          ; $5CBE: $0F
    nop                                           ; $5CBF: $00

jr_00A_5CC0:
    db $FC                                        ; $5CC0: $FC
    ld hl, sp-$06                                 ; $5CC1: $F8 $FA
    db $F4                                        ; $5CC3: $F4
    db $FC                                        ; $5CC4: $FC
    ldh [$F0], a                                  ; $5CC5: $E0 $F0
    nop                                           ; $5CC7: $00
    ld hl, sp+$00                                 ; $5CC8: $F8 $00
    db $FC                                        ; $5CCA: $FC
    nop                                           ; $5CCB: $00
    db $FC                                        ; $5CCC: $FC
    ldh [$F8], a                                  ; $5CCD: $E0 $F8
    nop                                           ; $5CCF: $00
    rra                                           ; $5CD0: $1F
    rrca                                          ; $5CD1: $0F
    rra                                           ; $5CD2: $1F
    rlca                                          ; $5CD3: $07
    rrca                                          ; $5CD4: $0F
    inc bc                                        ; $5CD5: $03
    rrca                                          ; $5CD6: $0F
    nop                                           ; $5CD7: $00
    rra                                           ; $5CD8: $1F
    nop                                           ; $5CD9: $00
    rra                                           ; $5CDA: $1F
    ld b, $0F                                     ; $5CDB: $06 $0F
    ld bc, $000F                                  ; $5CDD: $01 $0F $00
    add sp, -$30                                  ; $5CE0: $E8 $D0
    ret z                                         ; $5CE2: $C8

    or b                                          ; $5CE3: $B0
    sub b                                         ; $5CE4: $90
    ld h, b                                       ; $5CE5: $60
    ldh [rP1], a                                  ; $5CE6: $E0 $00
    ldh a, [rP1]                                  ; $5CE8: $F0 $00
    ld hl, sp+$00                                 ; $5CEA: $F8 $00
    db $F4                                        ; $5CEC: $F4
    adc b                                         ; $5CED: $88
    db $F4                                        ; $5CEE: $F4
    ld [$0E1F], sp                                ; $5CEF: $08 $1F $0E
    ld c, $05                                     ; $5CF2: $0E $05
    dec d                                         ; $5CF4: $15
    ld a, [bc]                                    ; $5CF5: $0A
    dec c                                         ; $5CF6: $0D
    ld [bc], a                                    ; $5CF7: $02
    ld b, $01                                     ; $5CF8: $06 $01
    rrca                                          ; $5CFA: $0F
    nop                                           ; $5CFB: $00
    inc e                                         ; $5CFC: $1C
    inc bc                                        ; $5CFD: $03
    inc e                                         ; $5CFE: $1C
    inc bc                                        ; $5CFF: $03
    cp [hl]                                       ; $5D00: $BE
    ld e, h                                       ; $5D01: $5C
    inc e                                         ; $5D02: $1C
    add sp, $2A                                   ; $5D03: $E8 $2A
    call nc, $D02C                                ; $5D05: $D4 $2C $D0
    db $10                                        ; $5D08: $10
    ldh [$F8], a                                  ; $5D09: $E0 $F8
    nop                                           ; $5D0B: $00
    ld hl, sp+$40                                 ; $5D0C: $F8 $40
    add sp, $10                                   ; $5D0E: $E8 $10
    rra                                           ; $5D10: $1F
    rrca                                          ; $5D11: $0F
    rrca                                          ; $5D12: $0F
    rlca                                          ; $5D13: $07
    rla                                           ; $5D14: $17
    dec bc                                        ; $5D15: $0B
    rrca                                          ; $5D16: $0F
    ld bc, $000F                                  ; $5D17: $01 $0F $00
    rra                                           ; $5D1A: $1F
    nop                                           ; $5D1B: $00
    rra                                           ; $5D1C: $1F
    ld bc, $0817                                  ; $5D1D: $01 $17 $08
    cp $FC                                        ; $5D20: $FE $FC
    db $FC                                        ; $5D22: $FC
    ld hl, sp-$06                                 ; $5D23: $F8 $FA
    db $F4                                        ; $5D25: $F4
    db $FC                                        ; $5D26: $FC
    ldh [$F0], a                                  ; $5D27: $E0 $F0
    nop                                           ; $5D29: $00
    ld hl, sp+$00                                 ; $5D2A: $F8 $00
    ld hl, sp-$20                                 ; $5D2C: $F8 $E0
    ld hl, sp+$00                                 ; $5D2E: $F8 $00
    rra                                           ; $5D30: $1F
    nop                                           ; $5D31: $00
    rrca                                          ; $5D32: $0F
    nop                                           ; $5D33: $00
    db $10                                        ; $5D34: $10
    rrca                                          ; $5D35: $0F
    ld de, $2F0E                                  ; $5D36: $11 $0E $2F
    db $10                                        ; $5D39: $10
    ccf                                           ; $5D3A: $3F
    ld b, $3F                                     ; $5D3B: $06 $3F
    ld e, $1F                                     ; $5D3D: $1E $1F
    nop                                           ; $5D3F: $00
    ldh [rP1], a                                  ; $5D40: $E0 $00
    ldh [rP1], a                                  ; $5D42: $E0 $00
    db $10                                        ; $5D44: $10
    ldh [$30], a                                  ; $5D45: $E0 $30
    ret nz                                        ; $5D47: $C0

    ld hl, sp+$30                                 ; $5D48: $F8 $30
    ld hl, sp-$10                                 ; $5D4A: $F8 $F0
    ldh a, [rP1]                                  ; $5D4C: $F0 $00
    nop                                           ; $5D4E: $00
    nop                                           ; $5D4F: $00
    ld hl, sp+$00                                 ; $5D50: $F8 $00
    ldh a, [rP1]                                  ; $5D52: $F0 $00
    ld [$B8F0], sp                                ; $5D54: $08 $F0 $B8

jr_00A_5D57:
    ld b, b                                       ; $5D57: $40
    ld hl, sp+$30                                 ; $5D58: $F8 $30
    db $FC                                        ; $5D5A: $FC
    ld a, b                                       ; $5D5B: $78
    db $FC                                        ; $5D5C: $FC
    jr c, jr_00A_5D57                             ; $5D5D: $38 $F8

    nop                                           ; $5D5F: $00
    ldh a, [rP1]                                  ; $5D60: $F0 $00
    ldh a, [rP1]                                  ; $5D62: $F0 $00
    sub b                                         ; $5D64: $90
    ld h, b                                       ; $5D65: $60

jr_00A_5D66:
    adc b                                         ; $5D66: $88
    ld [hl], b                                    ; $5D67: $70
    sbc b                                         ; $5D68: $98
    ld h, b                                       ; $5D69: $60
    db $FC                                        ; $5D6A: $FC
    ld [$70FC], sp                                ; $5D6B: $08 $FC $70
    ld hl, sp+$00                                 ; $5D6E: $F8 $00
    rlca                                          ; $5D70: $07
    nop                                           ; $5D71: $00
    dec b                                         ; $5D72: $05
    ld [bc], a                                    ; $5D73: $02
    ld [$0807], sp                                ; $5D74: $08 $07 $08
    rlca                                          ; $5D77: $07
    ld c, $01                                     ; $5D78: $0E $01
    rrca                                          ; $5D7A: $0F
    ld b, $0F                                     ; $5D7B: $06 $0F
    nop                                           ; $5D7D: $00
    nop                                           ; $5D7E: $00
    nop                                           ; $5D7F: $00
    ld hl, sp+$00                                 ; $5D80: $F8 $00
    ld hl, sp+$00                                 ; $5D82: $F8 $00
    ld [$88F0], sp                                ; $5D84: $08 $F0 $88
    ld [hl], b                                    ; $5D87: $70
    sbc b                                         ; $5D88: $98
    ld h, b                                       ; $5D89: $60
    db $FC                                        ; $5D8A: $FC
    ld [$70FC], sp                                ; $5D8B: $08 $FC $70
    ld hl, sp+$00                                 ; $5D8E: $F8 $00
    rra                                           ; $5D90: $1F
    nop                                           ; $5D91: $00
    rrca                                          ; $5D92: $0F
    nop                                           ; $5D93: $00
    ld [$0A07], sp                                ; $5D94: $08 $07 $0A
    dec b                                         ; $5D97: $05
    add hl, bc                                    ; $5D98: $09
    ld b, $07                                     ; $5D99: $06 $07
    nop                                           ; $5D9B: $00
    rlca                                          ; $5D9C: $07
    ld [bc], a                                    ; $5D9D: $02
    inc bc                                        ; $5D9E: $03
    nop                                           ; $5D9F: $00
    ld hl, sp+$00                                 ; $5DA0: $F8 $00
    ldh a, [rP1]                                  ; $5DA2: $F0 $00
    jr nc, jr_00A_5D66                            ; $5DA4: $30 $C0

    ld [hl], b                                    ; $5DA6: $70
    add b                                         ; $5DA7: $80
    ldh a, [$60]                                  ; $5DA8: $F0 $60
    ldh a, [$E0]                                  ; $5DAA: $F0 $E0
    ldh [$C0], a                                  ; $5DAC: $E0 $C0
    ldh [rP1], a                                  ; $5DAE: $E0 $00
    rrca                                          ; $5DB0: $0F
    nop                                           ; $5DB1: $00
    rlca                                          ; $5DB2: $07
    nop                                           ; $5DB3: $00
    ld [$0807], sp                                ; $5DB4: $08 $07 $08
    rlca                                          ; $5DB7: $07
    ld [$0707], sp                                ; $5DB8: $08 $07 $07
    nop                                           ; $5DBB: $00
    rlca                                          ; $5DBC: $07
    inc bc                                        ; $5DBD: $03
    rlca                                          ; $5DBE: $07
    nop                                           ; $5DBF: $00
    ldh a, [rP1]                                  ; $5DC0: $F0 $00
    ldh a, [rP1]                                  ; $5DC2: $F0 $00
    ld [$C8F0], sp                                ; $5DC4: $08 $F0 $C8
    jr nc, @-$0E                                  ; $5DC7: $30 $F0

    nop                                           ; $5DC9: $00
    ldh a, [$60]                                  ; $5DCA: $F0 $60
    ldh a, [$60]                                  ; $5DCC: $F0 $60
    ldh a, [rP1]                                  ; $5DCE: $F0 $00
    nop                                           ; $5DD0: $00
    nop                                           ; $5DD1: $00
    nop                                           ; $5DD2: $00
    nop                                           ; $5DD3: $00
    inc bc                                        ; $5DD4: $03
    nop                                           ; $5DD5: $00
    rrca                                          ; $5DD6: $0F
    inc bc                                        ; $5DD7: $03
    rra                                           ; $5DD8: $1F

jr_00A_5DD9:
    rrca                                          ; $5DD9: $0F
    ccf                                           ; $5DDA: $3F
    rra                                           ; $5DDB: $1F
    ccf                                           ; $5DDC: $3F
    rra                                           ; $5DDD: $1F
    ccf                                           ; $5DDE: $3F
    add hl, de                                    ; $5DDF: $19
    nop                                           ; $5DE0: $00
    nop                                           ; $5DE1: $00
    nop                                           ; $5DE2: $00
    nop                                           ; $5DE3: $00
    ldh [rP1], a                                  ; $5DE4: $E0 $00
    ldh a, [$E0]                                  ; $5DE6: $F0 $E0
    ld hl, sp-$10                                 ; $5DE8: $F8 $F0
    db $FC                                        ; $5DEA: $FC
    ld hl, sp-$04                                 ; $5DEB: $F8 $FC
    sbc b                                         ; $5DED: $98
    sbc b                                         ; $5DEE: $98
    ld h, b                                       ; $5DEF: $60
    ccf                                           ; $5DF0: $3F
    add hl, de                                    ; $5DF1: $19
    dec e                                         ; $5DF2: $1D
    ld a, [bc]                                    ; $5DF3: $0A
    inc c                                         ; $5DF4: $0C
    inc bc                                        ; $5DF5: $03
    ld b, $01                                     ; $5DF6: $06 $01
    rrca                                          ; $5DF8: $0F
    nop                                           ; $5DF9: $00
    rra                                           ; $5DFA: $1F
    nop                                           ; $5DFB: $00
    cpl                                           ; $5DFC: $2F
    ld d, $2F                                     ; $5DFD: $16 $2F
    db $10                                        ; $5DFF: $10
    sbc b                                         ; $5E00: $98
    ld h, b                                       ; $5E01: $60
    ld d, b                                       ; $5E02: $50
    and b                                         ; $5E03: $A0
    ld d, b                                       ; $5E04: $50
    and b                                         ; $5E05: $A0
    db $10                                        ; $5E06: $10
    ldh [$C0], a                                  ; $5E07: $E0 $C0
    nop                                           ; $5E09: $00
    ldh [rP1], a                                  ; $5E0A: $E0 $00
    sub b                                         ; $5E0C: $90
    ld h, b                                       ; $5E0D: $60
    sub b                                         ; $5E0E: $90
    ld h, b                                       ; $5E0F: $60
    dec e                                         ; $5E10: $1D
    ld a, [bc]                                    ; $5E11: $0A
    inc c                                         ; $5E12: $0C
    inc bc                                        ; $5E13: $03
    ld b, $01                                     ; $5E14: $06 $01
    rrca                                          ; $5E16: $0F
    nop                                           ; $5E17: $00
    rrca                                          ; $5E18: $0F
    nop                                           ; $5E19: $00
    rrca                                          ; $5E1A: $0F
    nop                                           ; $5E1B: $00
    ld c, $01                                     ; $5E1C: $0E $01
    ld b, $01                                     ; $5E1E: $06 $01
    ld d, b                                       ; $5E20: $50
    and b                                         ; $5E21: $A0
    ld d, b                                       ; $5E22: $50
    and b                                         ; $5E23: $A0
    db $10                                        ; $5E24: $10
    ldh [$E0], a                                  ; $5E25: $E0 $E0
    nop                                           ; $5E27: $00
    ldh [rP1], a                                  ; $5E28: $E0 $00
    ldh [rP1], a                                  ; $5E2A: $E0 $00
    ld h, b                                       ; $5E2C: $60
    add b                                         ; $5E2D: $80
    ld h, b                                       ; $5E2E: $60
    add b                                         ; $5E2F: $80
    ccf                                           ; $5E30: $3F
    add hl, de                                    ; $5E31: $19
    dec e                                         ; $5E32: $1D
    ld a, [bc]                                    ; $5E33: $0A
    inc c                                         ; $5E34: $0C
    inc bc                                        ; $5E35: $03
    ld b, $01                                     ; $5E36: $06 $01
    rrca                                          ; $5E38: $0F
    nop                                           ; $5E39: $00
    rra                                           ; $5E3A: $1F
    nop                                           ; $5E3B: $00
    daa                                           ; $5E3C: $27
    add hl, de                                    ; $5E3D: $19
    daa                                           ; $5E3E: $27
    jr jr_00A_5DD9                                ; $5E3F: $18 $98

    ld h, b                                       ; $5E41: $60
    ld d, b                                       ; $5E42: $50
    and b                                         ; $5E43: $A0
    ld d, b                                       ; $5E44: $50
    and b                                         ; $5E45: $A0

jr_00A_5E46:
    db $10                                        ; $5E46: $10
    ldh [$C0], a                                  ; $5E47: $E0 $C0
    nop                                           ; $5E49: $00
    ldh [rP1], a                                  ; $5E4A: $E0 $00
    ret nc                                        ; $5E4C: $D0

    and b                                         ; $5E4D: $A0
    ret nc                                        ; $5E4E: $D0

    jr nz, jr_00A_5E70                            ; $5E4F: $20 $1F

    nop                                           ; $5E51: $00
    rrca                                          ; $5E52: $0F
    nop                                           ; $5E53: $00
    db $10                                        ; $5E54: $10
    rrca                                          ; $5E55: $0F
    jr nz, jr_00A_5E77                            ; $5E56: $20 $1F

    ld [hl], e                                    ; $5E58: $73
    inc l                                         ; $5E59: $2C
    ld a, a                                       ; $5E5A: $7F
    ld [hl-], a                                   ; $5E5B: $32
    ld a, a                                       ; $5E5C: $7F
    ld e, $7F                                     ; $5E5D: $1E $7F
    nop                                           ; $5E5F: $00
    ldh [rP1], a                                  ; $5E60: $E0 $00
    ldh [rP1], a                                  ; $5E62: $E0 $00
    ld a, b                                       ; $5E64: $78
    add b                                         ; $5E65: $80

jr_00A_5E66:
    db $FC                                        ; $5E66: $FC
    jr jr_00A_5EE5                                ; $5E67: $18 $7C

    cp b                                          ; $5E69: $B8
    ld a, b                                       ; $5E6A: $78
    or b                                          ; $5E6B: $B0
    ld hl, sp+$40                                 ; $5E6C: $F8 $40
    ldh [rP1], a                                  ; $5E6E: $E0 $00

jr_00A_5E70:
    rlca                                          ; $5E70: $07
    nop                                           ; $5E71: $00
    rlca                                          ; $5E72: $07
    nop                                           ; $5E73: $00
    ld [$1007], sp                                ; $5E74: $08 $07 $10

jr_00A_5E77:
    rrca                                          ; $5E77: $0F
    rra                                           ; $5E78: $1F
    nop                                           ; $5E79: $00
    rra                                           ; $5E7A: $1F
    rlca                                          ; $5E7B: $07
    rra                                           ; $5E7C: $1F
    rrca                                          ; $5E7D: $0F
    rra                                           ; $5E7E: $1F
    nop                                           ; $5E7F: $00
    ldh [rP1], a                                  ; $5E80: $E0 $00
    ldh [rP1], a                                  ; $5E82: $E0 $00
    jr nz, jr_00A_5E46                            ; $5E84: $20 $C0

    ld h, b                                       ; $5E86: $60
    add b                                         ; $5E87: $80
    ldh a, [rNR41]                                ; $5E88: $F0 $20
    ldh a, [$A0]                                  ; $5E8A: $F0 $A0
    ldh a, [$80]                                  ; $5E8C: $F0 $80

jr_00A_5E8E:
    ret nz                                        ; $5E8E: $C0

    nop                                           ; $5E8F: $00

jr_00A_5E90:
    rra                                           ; $5E90: $1F
    nop                                           ; $5E91: $00
    rrca                                          ; $5E92: $0F
    nop                                           ; $5E93: $00
    db $10                                        ; $5E94: $10
    rrca                                          ; $5E95: $0F
    inc [hl]                                      ; $5E96: $34
    dec bc                                        ; $5E97: $0B
    ld a, [hl]                                    ; $5E98: $7E
    ld hl, $3C7F                                  ; $5E99: $21 $7F $3C
    ld a, a                                       ; $5E9C: $7F
    ld e, $7F                                     ; $5E9D: $1E $7F
    nop                                           ; $5E9F: $00
    ldh [rP1], a                                  ; $5EA0: $E0 $00
    ret nz                                        ; $5EA2: $C0

    nop                                           ; $5EA3: $00
    jr c, jr_00A_5E66                             ; $5EA4: $38 $C0

    inc a                                         ; $5EA6: $3C
    ret c                                         ; $5EA7: $D8

    ld a, h                                       ; $5EA8: $7C
    cp b                                          ; $5EA9: $B8
    ld a, b                                       ; $5EAA: $78
    or b                                          ; $5EAB: $B0
    ld hl, sp+$40                                 ; $5EAC: $F8 $40
    ldh [rP1], a                                  ; $5EAE: $E0 $00
    rra                                           ; $5EB0: $1F
    ld c, $0E                                     ; $5EB1: $0E $0E
    dec b                                         ; $5EB3: $05
    dec d                                         ; $5EB4: $15
    ld a, [bc]                                    ; $5EB5: $0A
    dec c                                         ; $5EB6: $0D
    ld [bc], a                                    ; $5EB7: $02
    ld b, $01                                     ; $5EB8: $06 $01
    rrca                                          ; $5EBA: $0F
    nop                                           ; $5EBB: $00
    rra                                           ; $5EBC: $1F
    ld [bc], a                                    ; $5EBD: $02
    rla                                           ; $5EBE: $17
    ld [$5CBE], sp                                ; $5EBF: $08 $BE $5C
    inc e                                         ; $5EC2: $1C
    add sp, $2A                                   ; $5EC3: $E8 $2A
    call nc, $D02C                                ; $5EC5: $D4 $2C $D0
    db $10                                        ; $5EC8: $10
    ldh [$F8], a                                  ; $5EC9: $E0 $F8
    nop                                           ; $5ECB: $00
    jr c, jr_00A_5E8E                             ; $5ECC: $38 $C0

    jr c, jr_00A_5E90                             ; $5ECE: $38 $C0

    rra                                           ; $5ED0: $1F
    rrca                                          ; $5ED1: $0F
    rrca                                          ; $5ED2: $0F
    rlca                                          ; $5ED3: $07
    rla                                           ; $5ED4: $17
    dec bc                                        ; $5ED5: $0B
    rrca                                          ; $5ED6: $0F
    ld bc, $0007                                  ; $5ED7: $01 $07 $00
    rra                                           ; $5EDA: $1F
    nop                                           ; $5EDB: $00
    rra                                           ; $5EDC: $1F
    inc bc                                        ; $5EDD: $03
    rrca                                          ; $5EDE: $0F
    nop                                           ; $5EDF: $00

jr_00A_5EE0:
    cp $FC                                        ; $5EE0: $FE $FC
    db $FC                                        ; $5EE2: $FC
    ld hl, sp-$06                                 ; $5EE3: $F8 $FA

jr_00A_5EE5:
    db $F4                                        ; $5EE5: $F4
    db $FC                                        ; $5EE6: $FC
    ldh [$F0], a                                  ; $5EE7: $E0 $F0
    nop                                           ; $5EE9: $00
    ld hl, sp+$00                                 ; $5EEA: $F8 $00
    db $FC                                        ; $5EEC: $FC
    ret nz                                        ; $5EED: $C0

    db $F4                                        ; $5EEE: $F4
    ld [$00E1], sp                                ; $5EEF: $08 $E1 $00
    ld [hl], a                                    ; $5EF2: $77
    nop                                           ; $5EF3: $00
    ld a, a                                       ; $5EF4: $7F
    ld [bc], a                                    ; $5EF5: $02
    ccf                                           ; $5EF6: $3F
    ld bc, $043B                                  ; $5EF7: $01 $3B $04
    ld c, d                                       ; $5EFA: $4A
    dec [hl]                                      ; $5EFB: $35
    ld l, d                                       ; $5EFC: $6A
    dec d                                         ; $5EFD: $15
    inc a                                         ; $5EFE: $3C
    dec bc                                        ; $5EFF: $0B
    rst $30                                       ; $5F00: $F7
    nop                                           ; $5F01: $00
    ld a, a                                       ; $5F02: $7F
    ld bc, $003F                                  ; $5F03: $01 $3F $00
    ccf                                           ; $5F06: $3F
    nop                                           ; $5F07: $00
    ld a, a                                       ; $5F08: $7F
    nop                                           ; $5F09: $00
    add a                                         ; $5F0A: $87
    ld a, b                                       ; $5F0B: $78
    ld h, l                                       ; $5F0C: $65
    ld a, [de]                                    ; $5F0D: $1A
    dec e                                         ; $5F0E: $1D
    ld b, $DC                                     ; $5F0F: $06 $DC
    nop                                           ; $5F11: $00
    ld hl, sp-$80                                 ; $5F12: $F8 $80
    ld hl, sp-$40                                 ; $5F14: $F8 $C0
    ldh a, [rLCDC]                                ; $5F16: $F0 $40
    db $FC                                        ; $5F18: $FC
    nop                                           ; $5F19: $00
    ld [de], a                                    ; $5F1A: $12
    db $EC                                        ; $5F1B: $EC
    or h                                          ; $5F1C: $B4
    ld c, b                                       ; $5F1D: $48
    jr c, jr_00A_5EE0                             ; $5F1E: $38 $C0

    pop hl                                        ; $5F20: $E1
    nop                                           ; $5F21: $00
    ld [hl], a                                    ; $5F22: $77
    nop                                           ; $5F23: $00
    ld a, a                                       ; $5F24: $7F
    ld [bc], a                                    ; $5F25: $02
    ccf                                           ; $5F26: $3F
    rlca                                          ; $5F27: $07
    ccf                                           ; $5F28: $3F
    rrca                                          ; $5F29: $0F
    ld e, a                                       ; $5F2A: $5F
    cpl                                           ; $5F2B: $2F
    ld a, a                                       ; $5F2C: $7F
    rrca                                          ; $5F2D: $0F
    ccf                                           ; $5F2E: $3F
    rrca                                          ; $5F2F: $0F
    inc e                                         ; $5F30: $1C
    nop                                           ; $5F31: $00
    rra                                           ; $5F32: $1F
    nop                                           ; $5F33: $00
    rrca                                          ; $5F34: $0F
    inc b                                         ; $5F35: $04
    rra                                           ; $5F36: $1F
    dec c                                         ; $5F37: $0D
    rra                                           ; $5F38: $1F
    rrca                                          ; $5F39: $0F
    rra                                           ; $5F3A: $1F
    rrca                                          ; $5F3B: $0F
    rra                                           ; $5F3C: $1F
    rrca                                          ; $5F3D: $0F
    rra                                           ; $5F3E: $1F
    rrca                                          ; $5F3F: $0F
    ldh a, [rP1]                                  ; $5F40: $F0 $00
    ld hl, sp+$00                                 ; $5F42: $F8 $00
    db $FC                                        ; $5F44: $FC
    adc b                                         ; $5F45: $88
    db $FC                                        ; $5F46: $FC
    ret nz                                        ; $5F47: $C0

    db $FC                                        ; $5F48: $FC
    ret nz                                        ; $5F49: $C0

    ld hl, sp-$20                                 ; $5F4A: $F8 $E0
    ld hl, sp-$40                                 ; $5F4C: $F8 $C0
    ld hl, sp-$10                                 ; $5F4E: $F8 $F0
    ld e, $0D                                     ; $5F50: $1E $0D
    rra                                           ; $5F52: $1F
    nop                                           ; $5F53: $00
    ld a, $01                                     ; $5F54: $3E $01
    ld l, [hl]                                    ; $5F56: $6E
    ld de, $31FE                                  ; $5F57: $11 $FE $31
    cp $71                                        ; $5F5A: $FE $71
    xor $71                                       ; $5F5C: $EE $71
    ld c, a                                       ; $5F5E: $4F
    jr nc, @+$20                                  ; $5F5F: $30 $1E

    dec b                                         ; $5F61: $05
    ld a, a                                       ; $5F62: $7F
    nop                                           ; $5F63: $00
    cp $01                                        ; $5F64: $FE $01
    ld e, [hl]                                    ; $5F66: $5E
    ld hl, $317E                                  ; $5F67: $21 $7E $31
    ld a, [hl]                                    ; $5F6A: $7E
    add hl, sp                                    ; $5F6B: $39
    ld a, [hl-]                                   ; $5F6C: $3A
    dec e                                         ; $5F6D: $1D
    inc de                                        ; $5F6E: $13
    inc c                                         ; $5F6F: $0C
    db $10                                        ; $5F70: $10
    ldh [$F0], a                                  ; $5F71: $E0 $F0
    nop                                           ; $5F73: $00
    ld a, b                                       ; $5F74: $78
    add b                                         ; $5F75: $80
    ld [hl], b                                    ; $5F76: $70
    add b                                         ; $5F77: $80
    ld [hl], b                                    ; $5F78: $70
    and b                                         ; $5F79: $A0
    ld a, b                                       ; $5F7A: $78
    or b                                          ; $5F7B: $B0
    ld l, b                                       ; $5F7C: $68

jr_00A_5F7D:
    sub b                                         ; $5F7D: $90
    ldh a, [rP1]                                  ; $5F7E: $F0 $00
    rra                                           ; $5F80: $1F
    rrca                                          ; $5F81: $0F
    rra                                           ; $5F82: $1F
    inc bc                                        ; $5F83: $03
    daa                                           ; $5F84: $27
    jr jr_00A_6006                                ; $5F85: $18 $7F

    inc bc                                        ; $5F87: $03
    rst $38                                       ; $5F88: $FF
    inc sp                                        ; $5F89: $33
    rst $38                                       ; $5F8A: $FF
    ld h, e                                       ; $5F8B: $63
    rst $28                                       ; $5F8C: $EF
    ld d, e                                       ; $5F8D: $53
    ld c, a                                       ; $5F8E: $4F
    jr nc, jr_00A_5FA0                            ; $5F8F: $30 $0F

    rlca                                          ; $5F91: $07
    ccf                                           ; $5F92: $3F
    nop                                           ; $5F93: $00
    ccf                                           ; $5F94: $3F
    inc bc                                        ; $5F95: $03
    rla                                           ; $5F96: $17
    dec bc                                        ; $5F97: $0B
    rra                                           ; $5F98: $1F
    dec bc                                        ; $5F99: $0B
    rra                                           ; $5F9A: $1F
    inc bc                                        ; $5F9B: $03
    rrca                                          ; $5F9C: $0F
    inc bc                                        ; $5F9D: $03
    rrca                                          ; $5F9E: $0F
    nop                                           ; $5F9F: $00

jr_00A_5FA0:
    ldh a, [$E0]                                  ; $5FA0: $F0 $E0
    ldh a, [rP1]                                  ; $5FA2: $F0 $00
    db $FC                                        ; $5FA4: $FC
    nop                                           ; $5FA5: $00
    cp b                                          ; $5FA6: $B8
    ld b, b                                       ; $5FA7: $40
    or b                                          ; $5FA8: $B0
    ld b, b                                       ; $5FA9: $40
    ld hl, sp+$30                                 ; $5FAA: $F8 $30
    db $FC                                        ; $5FAC: $FC
    jr c, @-$0A                                   ; $5FAD: $38 $F4

    jr @+$1E                                      ; $5FAF: $18 $1C

    dec bc                                        ; $5FB1: $0B
    ld e, $0D                                     ; $5FB2: $1E $0D
    rra                                           ; $5FB4: $1F
    ld [bc], a                                    ; $5FB5: $02
    ld a, a                                       ; $5FB6: $7F
    nop                                           ; $5FB7: $00
    scf                                           ; $5FB8: $37
    ld [$0E1D], sp                                ; $5FB9: $08 $1D $0E
    ld e, $0F                                     ; $5FBC: $1E $0F
    inc c                                         ; $5FBE: $0C
    rlca                                          ; $5FBF: $07
    inc a                                         ; $5FC0: $3C
    ret nc                                        ; $5FC1: $D0

    ld a, b                                       ; $5FC2: $78
    or b                                          ; $5FC3: $B0
    ld hl, sp+$40                                 ; $5FC4: $F8 $40
    cp $00                                        ; $5FC6: $FE $00
    db $FC                                        ; $5FC8: $FC
    add b                                         ; $5FC9: $80
    add sp, -$70                                  ; $5FCA: $E8 $90
    ld hl, sp-$70                                 ; $5FCC: $F8 $90
    ld hl, sp-$80                                 ; $5FCE: $F8 $80
    rra                                           ; $5FD0: $1F
    rrca                                          ; $5FD1: $0F
    rra                                           ; $5FD2: $1F
    rrca                                          ; $5FD3: $0F
    rra                                           ; $5FD4: $1F
    inc bc                                        ; $5FD5: $03
    ccf                                           ; $5FD6: $3F
    nop                                           ; $5FD7: $00
    scf                                           ; $5FD8: $37
    jr jr_00A_601A                                ; $5FD9: $18 $3F

    inc e                                         ; $5FDB: $1C
    ccf                                           ; $5FDC: $3F
    inc e                                         ; $5FDD: $1C
    dec de                                        ; $5FDE: $1B
    inc c                                         ; $5FDF: $0C
    db $FC                                        ; $5FE0: $FC
    ldh a, [$F8]                                  ; $5FE1: $F0 $F8
    ldh a, [$F8]                                  ; $5FE3: $F0 $F8
    ret nz                                        ; $5FE5: $C0

    db $FC                                        ; $5FE6: $FC
    nop                                           ; $5FE7: $00
    db $F4                                        ; $5FE8: $F4
    add sp, -$0C                                  ; $5FE9: $E8 $F4
    add sp, -$08                                  ; $5FEB: $E8 $F8
    ldh [$F0], a                                  ; $5FED: $E0 $F0
    nop                                           ; $5FEF: $00
    cp $C0                                        ; $5FF0: $FE $C0
    ret nc                                        ; $5FF2: $D0

    jr nz, jr_00A_5F7D                            ; $5FF3: $20 $88

    ld [hl], b                                    ; $5FF5: $70
    cp b                                          ; $5FF6: $B8

jr_00A_5FF7:
    ld b, b                                       ; $5FF7: $40
    ld hl, sp+$30                                 ; $5FF8: $F8 $30
    db $FC                                        ; $5FFA: $FC
    ld a, b                                       ; $5FFB: $78
    db $FC                                        ; $5FFC: $FC
    jr c, jr_00A_5FF7                             ; $5FFD: $38 $F8

    nop                                           ; $5FFF: $00
    rrca                                          ; $6000: $0F
    ld bc, $0609                                  ; $6001: $01 $09 $06
    db $10                                        ; $6004: $10
    rrca                                          ; $6005: $0F

jr_00A_6006:
    ld de, $1F0E                                  ; $6006: $11 $0E $1F
    nop                                           ; $6009: $00
    ccf                                           ; $600A: $3F
    ld b, $3F                                     ; $600B: $06 $3F
    ld e, $1F                                     ; $600D: $1E $1F
    nop                                           ; $600F: $00
    ldh [$C0], a                                  ; $6010: $E0 $C0
    ldh [rP1], a                                  ; $6012: $E0 $00
    db $10                                        ; $6014: $10
    ldh [$30], a                                  ; $6015: $E0 $30
    ret nz                                        ; $6017: $C0

    ld hl, sp+$30                                 ; $6018: $F8 $30

jr_00A_601A:
    ld hl, sp-$10                                 ; $601A: $F8 $F0
    ldh a, [rP1]                                  ; $601C: $F0 $00
    nop                                           ; $601E: $00
    nop                                           ; $601F: $00
    db $FC                                        ; $6020: $FC
    ret nz                                        ; $6021: $C0

    ldh a, [rP1]                                  ; $6022: $F0 $00
    sbc b                                         ; $6024: $98
    ld h, b                                       ; $6025: $60
    adc b                                         ; $6026: $88
    ld [hl], b                                    ; $6027: $70
    adc b                                         ; $6028: $88
    ld [hl], b                                    ; $6029: $70
    db $FC                                        ; $602A: $FC
    ld [$70FC], sp                                ; $602B: $08 $FC $70
    ld hl, sp+$00                                 ; $602E: $F8 $00
    rlca                                          ; $6030: $07
    inc bc                                        ; $6031: $03
    dec bc                                        ; $6032: $0B
    inc b                                         ; $6033: $04
    add hl, bc                                    ; $6034: $09
    ld b, $08                                     ; $6035: $06 $08
    rlca                                          ; $6037: $07
    ld c, $01                                     ; $6038: $0E $01
    rrca                                          ; $603A: $0F
    ld b, $0F                                     ; $603B: $06 $0F
    nop                                           ; $603D: $00
    nop                                           ; $603E: $00
    nop                                           ; $603F: $00
    sbc h                                         ; $6040: $9C
    ld h, b                                       ; $6041: $60
    db $10                                        ; $6042: $10
    ldh [$08], a                                  ; $6043: $E0 $08
    ldh a, [$88]                                  ; $6045: $F0 $88
    ld [hl], b                                    ; $6047: $70
    sbc b                                         ; $6048: $98
    ld h, b                                       ; $6049: $60
    db $FC                                        ; $604A: $FC
    ld [$70FC], sp                                ; $604B: $08 $FC $70
    ld hl, sp+$00                                 ; $604E: $F8 $00
    rst $38                                       ; $6050: $FF
    nop                                           ; $6051: $00
    ld b, e                                       ; $6052: $43
    inc a                                         ; $6053: $3C
    add d                                         ; $6054: $82
    ld a, h                                       ; $6055: $7C
    and a                                         ; $6056: $A7
    ld e, b                                       ; $6057: $58
    sbc a                                         ; $6058: $9F
    ld h, [hl]                                    ; $6059: $66
    ld a, a                                       ; $605A: $7F
    ld c, $7E                                     ; $605B: $0E $7E
    inc l                                         ; $605D: $2C
    ld a, $00                                     ; $605E: $3E $00
    rrca                                          ; $6060: $0F
    nop                                           ; $6061: $00
    inc b                                         ; $6062: $04
    inc bc                                        ; $6063: $03
    add hl, bc                                    ; $6064: $09
    ld b, $08                                     ; $6065: $06 $08
    rlca                                          ; $6067: $07
    ld [$0707], sp                                ; $6068: $08 $07 $07
    nop                                           ; $606B: $00
    rlca                                          ; $606C: $07
    inc bc                                        ; $606D: $03
    rlca                                          ; $606E: $07
    nop                                           ; $606F: $00
    ldh a, [$E0]                                  ; $6070: $F0 $E0
    add sp, $10                                   ; $6072: $E8 $10
    ld [$C8F0], sp                                ; $6074: $08 $F0 $C8
    jr nc, @-$0E                                  ; $6077: $30 $F0

    nop                                           ; $6079: $00
    ldh a, [$60]                                  ; $607A: $F0 $60
    ldh a, [$60]                                  ; $607C: $F0 $60
    ldh a, [rP1]                                  ; $607E: $F0 $00
    ld a, l                                       ; $6080: $7D
    nop                                           ; $6081: $00
    ccf                                           ; $6082: $3F
    nop                                           ; $6083: $00
    rra                                           ; $6084: $1F
    nop                                           ; $6085: $00
    ccf                                           ; $6086: $3F
    db $10                                        ; $6087: $10
    ccf                                           ; $6088: $3F
    jr jr_00A_60AA                                ; $6089: $18 $1F

    inc c                                         ; $608B: $0C
    rra                                           ; $608C: $1F
    ld b, $0F                                     ; $608D: $06 $0F
    ld [bc], a                                    ; $608F: $02
    ret nz                                        ; $6090: $C0

    nop                                           ; $6091: $00
    ldh [$C0], a                                  ; $6092: $E0 $C0
    ldh a, [$E0]                                  ; $6094: $F0 $E0
    ld hl, sp+$70                                 ; $6096: $F8 $70
    ld hl, sp+$00                                 ; $6098: $F8 $00
    or b                                          ; $609A: $B0
    ld b, b                                       ; $609B: $40
    ld d, b                                       ; $609C: $50
    and b                                         ; $609D: $A0
    ld d, b                                       ; $609E: $50
    and b                                         ; $609F: $A0
    rrca                                          ; $60A0: $0F
    ld [bc], a                                    ; $60A1: $02
    rlca                                          ; $60A2: $07
    ld bc, $000F                                  ; $60A3: $01 $0F $00
    inc e                                         ; $60A6: $1C
    inc bc                                        ; $60A7: $03
    dec c                                         ; $60A8: $0D
    inc bc                                        ; $60A9: $03

jr_00A_60AA:
    rra                                           ; $60AA: $1F
    ld bc, $103F                                  ; $60AB: $01 $3F $10
    ccf                                           ; $60AE: $3F
    db $10                                        ; $60AF: $10
    ld d, b                                       ; $60B0: $50
    and b                                         ; $60B1: $A0
    sub b                                         ; $60B2: $90
    ld h, b                                       ; $60B3: $60
    ldh [rP1], a                                  ; $60B4: $E0 $00
    ret nz                                        ; $60B6: $C0

    nop                                           ; $60B7: $00
    ret nz                                        ; $60B8: $C0

    add b                                         ; $60B9: $80
    ldh [$C0], a                                  ; $60BA: $E0 $C0
    ret nc                                        ; $60BC: $D0

    ldh [$90], a                                  ; $60BD: $E0 $90
    ld h, b                                       ; $60BF: $60
    ld a, c                                       ; $60C0: $79
    ld d, $FE                                     ; $60C1: $16 $FE
    nop                                           ; $60C3: $00
    call c, $CE20                                 ; $60C4: $DC $20 $CE
    inc [hl]                                      ; $60C7: $34
    xor $74                                       ; $60C8: $EE $74
    cp $70                                        ; $60CA: $FE $70
    or $38                                        ; $60CC: $F6 $38
    ld h, [hl]                                    ; $60CE: $66
    jr @+$11                                      ; $60CF: $18 $0F

    ld [bc], a                                    ; $60D1: $02
    rlca                                          ; $60D2: $07
    ld bc, $000F                                  ; $60D3: $01 $0F $00
    inc c                                         ; $60D6: $0C
    inc bc                                        ; $60D7: $03
    ld c, $07                                     ; $60D8: $0E $07
    rra                                           ; $60DA: $1F
    ld c, $2F                                     ; $60DB: $0E $2F
    inc e                                         ; $60DD: $1C
    daa                                           ; $60DE: $27
    jr jr_00A_6131                                ; $60DF: $18 $50

    and b                                         ; $60E1: $A0
    sub b                                         ; $60E2: $90
    ld h, b                                       ; $60E3: $60

jr_00A_60E4:
    ldh [rP1], a                                  ; $60E4: $E0 $00

jr_00A_60E6:
    ret nz                                        ; $60E6: $C0

    nop                                           ; $60E7: $00
    ret nz                                        ; $60E8: $C0

    add b                                         ; $60E9: $80
    ldh [$80], a                                  ; $60EA: $E0 $80
    ret nc                                        ; $60EC: $D0

    and b                                         ; $60ED: $A0
    ret nc                                        ; $60EE: $D0

    jr nz, jr_00A_6110                            ; $60EF: $20 $1F

    nop                                           ; $60F1: $00
    ld [$1007], sp                                ; $60F2: $08 $07 $10
    rrca                                          ; $60F5: $0F
    jr nz, jr_00A_6117                            ; $60F6: $20 $1F

    ld [hl], e                                    ; $60F8: $73
    inc l                                         ; $60F9: $2C
    ld a, a                                       ; $60FA: $7F
    ld [hl-], a                                   ; $60FB: $32
    ld a, a                                       ; $60FC: $7F
    ld e, $7F                                     ; $60FD: $1E $7F
    nop                                           ; $60FF: $00
    ldh [rP1], a                                  ; $6100: $E0 $00
    ld h, b                                       ; $6102: $60
    add b                                         ; $6103: $80
    ld a, b                                       ; $6104: $78
    add b                                         ; $6105: $80

jr_00A_6106:
    db $FC                                        ; $6106: $FC
    jr @+$7E                                      ; $6107: $18 $7C

    cp b                                          ; $6109: $B8
    ld a, b                                       ; $610A: $78
    or b                                          ; $610B: $B0
    ld hl, sp+$40                                 ; $610C: $F8 $40
    ldh [rP1], a                                  ; $610E: $E0 $00

jr_00A_6110:
    rlca                                          ; $6110: $07
    nop                                           ; $6111: $00
    ld [$1007], sp                                ; $6112: $08 $07 $10
    rrca                                          ; $6115: $0F
    db $10                                        ; $6116: $10

jr_00A_6117:
    rrca                                          ; $6117: $0F
    cpl                                           ; $6118: $2F
    db $10                                        ; $6119: $10
    ccf                                           ; $611A: $3F
    rlca                                          ; $611B: $07
    ccf                                           ; $611C: $3F
    rrca                                          ; $611D: $0F
    rra                                           ; $611E: $1F
    nop                                           ; $611F: $00
    ldh [rP1], a                                  ; $6120: $E0 $00
    jr nz, jr_00A_60E4                            ; $6122: $20 $C0

    jr nz, jr_00A_60E6                            ; $6124: $20 $C0

    ld h, b                                       ; $6126: $60
    add b                                         ; $6127: $80
    ldh a, [rNR41]                                ; $6128: $F0 $20
    ldh a, [$A0]                                  ; $612A: $F0 $A0
    ldh a, [$80]                                  ; $612C: $F0 $80
    ret nz                                        ; $612E: $C0

    nop                                           ; $612F: $00
    rra                                           ; $6130: $1F

jr_00A_6131:
    nop                                           ; $6131: $00
    ld [$1007], sp                                ; $6132: $08 $07 $10
    rrca                                          ; $6135: $0F
    inc [hl]                                      ; $6136: $34
    dec bc                                        ; $6137: $0B
    ld a, [hl]                                    ; $6138: $7E
    ld hl, $3C7F                                  ; $6139: $21 $7F $3C
    ld a, a                                       ; $613C: $7F

jr_00A_613D:
    ld e, $7F                                     ; $613D: $1E $7F
    nop                                           ; $613F: $00
    ldh [rP1], a                                  ; $6140: $E0 $00
    ld b, b                                       ; $6142: $40
    add b                                         ; $6143: $80
    jr c, jr_00A_6106                             ; $6144: $38 $C0

    inc a                                         ; $6146: $3C
    ret c                                         ; $6147: $D8

    ld a, h                                       ; $6148: $7C
    cp b                                          ; $6149: $B8
    ld a, b                                       ; $614A: $78
    or b                                          ; $614B: $B0
    ld hl, sp+$40                                 ; $614C: $F8 $40
    ldh [rP1], a                                  ; $614E: $E0 $00
    rst $30                                       ; $6150: $F7
    nop                                           ; $6151: $00
    ld a, a                                       ; $6152: $7F
    ld bc, $003F                                  ; $6153: $01 $3F $00
    ccf                                           ; $6156: $3F
    nop                                           ; $6157: $00
    ld a, a                                       ; $6158: $7F
    nop                                           ; $6159: $00
    add a                                         ; $615A: $87
    ld a, b                                       ; $615B: $78
    ld [hl], l                                    ; $615C: $75
    ld a, [bc]                                    ; $615D: $0A
    ld a, a                                       ; $615E: $7F
    jr nc, jr_00A_613D                            ; $615F: $30 $DC

    nop                                           ; $6161: $00
    ld hl, sp-$80                                 ; $6162: $F8 $80
    ld hl, sp-$40                                 ; $6164: $F8 $C0
    ldh a, [rLCDC]                                ; $6166: $F0 $40
    db $FC                                        ; $6168: $FC
    nop                                           ; $6169: $00
    ld [de], a                                    ; $616A: $12
    db $EC                                        ; $616B: $EC
    or h                                          ; $616C: $B4
    ld c, b                                       ; $616D: $48
    ld hl, sp+$00                                 ; $616E: $F8 $00

jr_00A_6170:
    ccf                                           ; $6170: $3F
    nop                                           ; $6171: $00
    ld a, a                                       ; $6172: $7F
    nop                                           ; $6173: $00
    ld a, a                                       ; $6174: $7F
    inc bc                                        ; $6175: $03
    ld a, a                                       ; $6176: $7F
    rlca                                          ; $6177: $07
    ld a, a                                       ; $6178: $7F
    rla                                           ; $6179: $17
    ccf                                           ; $617A: $3F
    rla                                           ; $617B: $17
    rra                                           ; $617C: $1F
    inc bc                                        ; $617D: $03
    rrca                                          ; $617E: $0F
    nop                                           ; $617F: $00
    ldh a, [rP1]                                  ; $6180: $F0 $00
    db $FC                                        ; $6182: $FC
    nop                                           ; $6183: $00
    cp $2C                                        ; $6184: $FE $2C
    rst $38                                       ; $6186: $FF
    adc [hl]                                      ; $6187: $8E
    rst $38                                       ; $6188: $FF
    adc [hl]                                      ; $6189: $8E
    rst $38                                       ; $618A: $FF
    ld c, $FE                                     ; $618B: $0E $FE
    inc b                                         ; $618D: $04
    rst $38                                       ; $618E: $FF
    nop                                           ; $618F: $00
    rst $30                                       ; $6190: $F7
    nop                                           ; $6191: $00
    ld a, a                                       ; $6192: $7F
    ld bc, $003F                                  ; $6193: $01 $3F $00
    ccf                                           ; $6196: $3F
    nop                                           ; $6197: $00
    ld a, a                                       ; $6198: $7F
    nop                                           ; $6199: $00
    add [hl]                                      ; $619A: $86
    ld a, c                                       ; $619B: $79
    ld h, l                                       ; $619C: $65
    ld a, [de]                                    ; $619D: $1A
    dec e                                         ; $619E: $1D
    ld b, $DC                                     ; $619F: $06 $DC
    nop                                           ; $61A1: $00
    ld hl, sp-$80                                 ; $61A2: $F8 $80
    ld hl, sp-$40                                 ; $61A4: $F8 $C0
    ldh a, [rLCDC]                                ; $61A6: $F0 $40
    db $FC                                        ; $61A8: $FC
    nop                                           ; $61A9: $00
    ld [de], a                                    ; $61AA: $12
    db $EC                                        ; $61AB: $EC
    inc [hl]                                      ; $61AC: $34
    ret z                                         ; $61AD: $C8

    jr c, jr_00A_6170                             ; $61AE: $38 $C0

    ld e, $05                                     ; $61B0: $1E $05
    ld a, a                                       ; $61B2: $7F
    nop                                           ; $61B3: $00
    cp $01                                        ; $61B4: $FE $01
    ld e, [hl]                                    ; $61B6: $5E
    ld hl, $397E                                  ; $61B7: $21 $7E $39
    ld a, e                                       ; $61BA: $7B
    inc a                                         ; $61BB: $3C
    ld [hl-], a                                   ; $61BC: $32
    inc e                                         ; $61BD: $1C
    inc e                                         ; $61BE: $1C
    nop                                           ; $61BF: $00
    db $10                                        ; $61C0: $10
    ldh [$F0], a                                  ; $61C1: $E0 $F0
    nop                                           ; $61C3: $00
    ld a, b                                       ; $61C4: $78
    add b                                         ; $61C5: $80
    ld [hl], b                                    ; $61C6: $70
    add b                                         ; $61C7: $80
    ld a, b                                       ; $61C8: $78
    and b                                         ; $61C9: $A0
    db $F4                                        ; $61CA: $F4
    jr c, @+$3A                                   ; $61CB: $38 $38

    nop                                           ; $61CD: $00
    nop                                           ; $61CE: $00
    nop                                           ; $61CF: $00
    ld e, $05                                     ; $61D0: $1E $05
    ld a, a                                       ; $61D2: $7F
    nop                                           ; $61D3: $00
    cp $01                                        ; $61D4: $FE $01
    ld e, [hl]                                    ; $61D6: $5E
    ld hl, $39FE                                  ; $61D7: $21 $FE $39
    cp a                                          ; $61DA: $BF
    ld a, b                                       ; $61DB: $78
    sbc b                                         ; $61DC: $98
    ld [hl], b                                    ; $61DD: $70
    ld [hl], b                                    ; $61DE: $70
    nop                                           ; $61DF: $00
    db $10                                        ; $61E0: $10
    ldh [$F0], a                                  ; $61E1: $E0 $F0
    nop                                           ; $61E3: $00
    ld a, b                                       ; $61E4: $78
    add b                                         ; $61E5: $80
    ld [hl], b                                    ; $61E6: $70
    add b                                         ; $61E7: $80
    ld a, h                                       ; $61E8: $7C
    or b                                          ; $61E9: $B0
    ld a, [$1C1C]                                 ; $61EA: $FA $1C $1C
    nop                                           ; $61ED: $00
    nop                                           ; $61EE: $00
    nop                                           ; $61EF: $00
    sub b                                         ; $61F0: $90
    ld h, b                                       ; $61F1: $60
    or $00                                        ; $61F2: $F6 $00
    ld l, c                                       ; $61F4: $69
    sub [hl]                                      ; $61F5: $96
    ld a, l                                       ; $61F6: $7D
    adc [hl]                                      ; $61F7: $8E
    ld a, [hl]                                    ; $61F8: $7E
    add h                                         ; $61F9: $84
    ld a, h                                       ; $61FA: $7C
    add b                                         ; $61FB: $80
    ld [hl], b                                    ; $61FC: $70
    add b                                         ; $61FD: $80
    ldh [rP1], a                                  ; $61FE: $E0 $00
    ret nz                                        ; $6200: $C0

    nop                                           ; $6201: $00
    ldh [$C0], a                                  ; $6202: $E0 $C0
    ldh a, [$E0]                                  ; $6204: $F0 $E0
    ld hl, sp+$70                                 ; $6206: $F8 $70
    ld hl, sp+$00                                 ; $6208: $F8 $00
    or b                                          ; $620A: $B0
    ld b, b                                       ; $620B: $40
    ld d, b                                       ; $620C: $50
    and b                                         ; $620D: $A0
    ld d, b                                       ; $620E: $50
    and b                                         ; $620F: $A0
    nop                                           ; $6210: $00
    ret nz                                        ; $6211: $C0

    nop                                           ; $6212: $00
    ld h, b                                       ; $6213: $60
    nop                                           ; $6214: $00
    jr nz, jr_00A_6217                            ; $6215: $20 $00

jr_00A_6217:
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
    ld [hl], b                                    ; $6227: $70
    nop                                           ; $6228: $00
    ld hl, sp+$00                                 ; $6229: $F8 $00
    jr c, jr_00A_622D                             ; $622B: $38 $00

jr_00A_622D:
    jr jr_00A_622F                                ; $622D: $18 $00

jr_00A_622F:
    db $10                                        ; $622F: $10
    db $FD                                        ; $6230: $FD
    nop                                           ; $6231: $00
    ccf                                           ; $6232: $3F
    nop                                           ; $6233: $00
    rra                                           ; $6234: $1F
    nop                                           ; $6235: $00
    ccf                                           ; $6236: $3F
    db $10                                        ; $6237: $10
    ccf                                           ; $6238: $3F
    jr jr_00A_625A                                ; $6239: $18 $1F

    inc c                                         ; $623B: $0C
    rra                                           ; $623C: $1F
    ld b, $0F                                     ; $623D: $06 $0F
    ld [bc], a                                    ; $623F: $02
    ld bc, $F700                                  ; $6240: $01 $00 $F7
    nop                                           ; $6243: $00
    ld a, a                                       ; $6244: $7F
    ld bc, $043B                                  ; $6245: $01 $3B $04
    ld c, d                                       ; $6248: $4A
    dec [hl]                                      ; $6249: $35
    ld l, d                                       ; $624A: $6A
    dec d                                         ; $624B: $15
    inc a                                         ; $624C: $3C
    dec bc                                        ; $624D: $0B
    ld e, $0D                                     ; $624E: $1E $0D
    ccf                                           ; $6250: $3F
    ld bc, $007F                                  ; $6251: $01 $7F $00
    cp $01                                        ; $6254: $FE $01
    ld e, [hl]                                    ; $6256: $5E
    ld hl, $317E                                  ; $6257: $21 $7E $31

jr_00A_625A:
    ld a, [hl]                                    ; $625A: $7E
    add hl, sp                                    ; $625B: $39
    ld a, [hl-]                                   ; $625C: $3A
    dec e                                         ; $625D: $1D
    inc de                                        ; $625E: $13
    inc c                                         ; $625F: $0C
    nop                                           ; $6260: $00
    nop                                           ; $6261: $00
    nop                                           ; $6262: $00
    nop                                           ; $6263: $00
    nop                                           ; $6264: $00
    add b                                         ; $6265: $80
    nop                                           ; $6266: $00
    ret nz                                        ; $6267: $C0

    nop                                           ; $6268: $00
    ret nz                                        ; $6269: $C0

    nop                                           ; $626A: $00
    ret nz                                        ; $626B: $C0

    nop                                           ; $626C: $00
    add b                                         ; $626D: $80
    nop                                           ; $626E: $00
    nop                                           ; $626F: $00
    rrca                                          ; $6270: $0F
    ld bc, $0609                                  ; $6271: $01 $09 $06
    db $10                                        ; $6274: $10
    rrca                                          ; $6275: $0F
    ld de, $1F0E                                  ; $6276: $11 $0E $1F
    nop                                           ; $6279: $00
    ccf                                           ; $627A: $3F
    ld b, $3F                                     ; $627B: $06 $3F
    ld e, $1F                                     ; $627D: $1E $1F
    nop                                           ; $627F: $00
    ldh [$C0], a                                  ; $6280: $E0 $C0
    ldh [rP1], a                                  ; $6282: $E0 $00
    db $10                                        ; $6284: $10
    ldh [$30], a                                  ; $6285: $E0 $30
    ret nz                                        ; $6287: $C0

    ld hl, sp+$30                                 ; $6288: $F8 $30
    ld hl, sp-$10                                 ; $628A: $F8 $F0
    ldh a, [rP1]                                  ; $628C: $F0 $00
    nop                                           ; $628E: $00
    nop                                           ; $628F: $00
    pop hl                                        ; $6290: $E1
    nop                                           ; $6291: $00
    ld [hl], a                                    ; $6292: $77
    nop                                           ; $6293: $00
    ld a, a                                       ; $6294: $7F
    ld [bc], a                                    ; $6295: $02
    ccf                                           ; $6296: $3F
    ld bc, $043B                                  ; $6297: $01 $3B $04
    ld a, d                                       ; $629A: $7A
    dec b                                         ; $629B: $05
    jp z, $EC75                                   ; $629C: $CA $75 $EC

    ld [hl], e                                    ; $629F: $73
    cp $75                                        ; $62A0: $FE $75
    rst $38                                       ; $62A2: $FF
    jr nc, jr_00A_6313                            ; $62A3: $30 $6E

    ld de, $013E                                  ; $62A5: $11 $3E $01
    ld e, $01                                     ; $62A8: $1E $01
    ld c, $01                                     ; $62AA: $0E $01
    ld c, $01                                     ; $62AC: $0E $01
    rrca                                          ; $62AE: $0F
    nop                                           ; $62AF: $00
    ldh a, [rP1]                                  ; $62B0: $F0 $00
    db $10                                        ; $62B2: $10
    ldh [$88], a                                  ; $62B3: $E0 $88
    ld [hl], b                                    ; $62B5: $70
    cp b                                          ; $62B6: $B8

jr_00A_62B7:
    ld b, b                                       ; $62B7: $40
    ld hl, sp+$30                                 ; $62B8: $F8 $30
    db $FC                                        ; $62BA: $FC
    ld a, b                                       ; $62BB: $78
    db $FC                                        ; $62BC: $FC
    jr c, jr_00A_62B7                             ; $62BD: $38 $F8

    nop                                           ; $62BF: $00
    rst $30                                       ; $62C0: $F7
    nop                                           ; $62C1: $00
    ld a, a                                       ; $62C2: $7F
    ld bc, $003F                                  ; $62C3: $01 $3F $00
    ccf                                           ; $62C6: $3F
    nop                                           ; $62C7: $00
    ld a, a                                       ; $62C8: $7F
    nop                                           ; $62C9: $00
    add a                                         ; $62CA: $87
    ld a, b                                       ; $62CB: $78
    ld [hl], l                                    ; $62CC: $75
    ld a, [bc]                                    ; $62CD: $0A
    ld a, a                                       ; $62CE: $7F
    jr nc, @-$22                                  ; $62CF: $30 $DC

    nop                                           ; $62D1: $00
    ld hl, sp-$80                                 ; $62D2: $F8 $80
    ld hl, sp-$40                                 ; $62D4: $F8 $C0
    ldh a, [rLCDC]                                ; $62D6: $F0 $40
    db $FC                                        ; $62D8: $FC
    nop                                           ; $62D9: $00
    ld [de], a                                    ; $62DA: $12
    db $EC                                        ; $62DB: $EC
    or h                                          ; $62DC: $B4
    ld c, b                                       ; $62DD: $48
    ld hl, sp+$00                                 ; $62DE: $F8 $00
    inc bc                                        ; $62E0: $03
    nop                                           ; $62E1: $00
    dec b                                         ; $62E2: $05
    inc bc                                        ; $62E3: $03
    inc b                                         ; $62E4: $04
    inc bc                                        ; $62E5: $03
    inc bc                                        ; $62E6: $03
    nop                                           ; $62E7: $00
    nop                                           ; $62E8: $00
    nop                                           ; $62E9: $00
    nop                                           ; $62EA: $00
    nop                                           ; $62EB: $00
    nop                                           ; $62EC: $00
    nop                                           ; $62ED: $00
    nop                                           ; $62EE: $00
    nop                                           ; $62EF: $00
    ld a, a                                       ; $62F0: $7F
    nop                                           ; $62F1: $00
    rst $38                                       ; $62F2: $FF
    nop                                           ; $62F3: $00
    rst $38                                       ; $62F4: $FF
    inc bc                                        ; $62F5: $03
    rst $38                                       ; $62F6: $FF
    rlca                                          ; $62F7: $07
    ld l, a                                       ; $62F8: $6F
    rla                                           ; $62F9: $17
    cpl                                           ; $62FA: $2F
    rla                                           ; $62FB: $17
    rra                                           ; $62FC: $1F
    inc bc                                        ; $62FD: $03
    rrca                                          ; $62FE: $0F
    nop                                           ; $62FF: $00

jr_00A_6300:
    rst $38                                       ; $6300: $FF
    nop                                           ; $6301: $00
    rst $38                                       ; $6302: $FF
    nop                                           ; $6303: $00
    rst $18                                       ; $6304: $DF
    inc l                                         ; $6305: $2C
    rst $38                                       ; $6306: $FF
    adc [hl]                                      ; $6307: $8E
    rst $38                                       ; $6308: $FF
    adc [hl]                                      ; $6309: $8E
    rst $38                                       ; $630A: $FF
    ld c, $FE                                     ; $630B: $0E $FE
    inc b                                         ; $630D: $04
    rst $38                                       ; $630E: $FF
    nop                                           ; $630F: $00
    add b                                         ; $6310: $80
    nop                                           ; $6311: $00
    ld b, b                                       ; $6312: $40

jr_00A_6313:
    add b                                         ; $6313: $80
    ld b, b                                       ; $6314: $40
    add b                                         ; $6315: $80
    add b                                         ; $6316: $80
    nop                                           ; $6317: $00
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    nop                                           ; $631A: $00
    nop                                           ; $631B: $00
    nop                                           ; $631C: $00
    nop                                           ; $631D: $00
    nop                                           ; $631E: $00
    nop                                           ; $631F: $00
    rst $30                                       ; $6320: $F7
    nop                                           ; $6321: $00
    ld a, a                                       ; $6322: $7F
    ld bc, $003F                                  ; $6323: $01 $3F $00
    ccf                                           ; $6326: $3F
    nop                                           ; $6327: $00
    ld a, a                                       ; $6328: $7F
    nop                                           ; $6329: $00
    add a                                         ; $632A: $87
    ld a, b                                       ; $632B: $78
    ld h, l                                       ; $632C: $65
    ld a, [de]                                    ; $632D: $1A
    dec e                                         ; $632E: $1D
    ld b, $DC                                     ; $632F: $06 $DC
    nop                                           ; $6331: $00
    ld hl, sp-$80                                 ; $6332: $F8 $80
    ld hl, sp-$40                                 ; $6334: $F8 $C0
    ldh a, [rLCDC]                                ; $6336: $F0 $40
    db $FC                                        ; $6338: $FC
    nop                                           ; $6339: $00
    ld [de], a                                    ; $633A: $12
    db $EC                                        ; $633B: $EC
    or h                                          ; $633C: $B4
    ld c, b                                       ; $633D: $48
    jr c, jr_00A_6300                             ; $633E: $38 $C0

    ld e, $05                                     ; $6340: $1E $05
    ld a, a                                       ; $6342: $7F
    nop                                           ; $6343: $00
    cp $01                                        ; $6344: $FE $01
    ld e, [hl]                                    ; $6346: $5E
    ld hl, $317E                                  ; $6347: $21 $7E $31
    ld a, [hl]                                    ; $634A: $7E
    add hl, sp                                    ; $634B: $39
    ld a, [hl-]                                   ; $634C: $3A
    dec e                                         ; $634D: $1D
    inc de                                        ; $634E: $13
    inc c                                         ; $634F: $0C
    db $10                                        ; $6350: $10
    ldh [$F0], a                                  ; $6351: $E0 $F0
    nop                                           ; $6353: $00
    ld a, b                                       ; $6354: $78
    add b                                         ; $6355: $80
    ld [hl], b                                    ; $6356: $70
    add b                                         ; $6357: $80
    ld [hl], b                                    ; $6358: $70
    and b                                         ; $6359: $A0
    ld a, b                                       ; $635A: $78
    or b                                          ; $635B: $B0
    ld l, b                                       ; $635C: $68
    sub b                                         ; $635D: $90
    ldh a, [rP1]                                  ; $635E: $F0 $00
    add b                                         ; $6360: $80
    nop                                           ; $6361: $00
    rst $28                                       ; $6362: $EF
    nop                                           ; $6363: $00
    cp $60                                        ; $6364: $FE $60
    db $FC                                        ; $6366: $FC
    ld b, b                                       ; $6367: $40
    db $FC                                        ; $6368: $FC
    add b                                         ; $6369: $80
    call c, $5720                                 ; $636A: $DC $20 $57
    xor b                                         ; $636D: $A8
    ld e, b                                       ; $636E: $58
    and a                                         ; $636F: $A7
    inc a                                         ; $6370: $3C
    dec bc                                        ; $6371: $0B
    ld e, $05                                     ; $6372: $1E $05
    ld a, a                                       ; $6374: $7F
    nop                                           ; $6375: $00
    ld l, $11                                     ; $6376: $2E $11
    halt                                          ; $6378: $76
    add hl, sp                                    ; $6379: $39
    ld a, [hl]                                    ; $637A: $7E
    add hl, sp                                    ; $637B: $39
    ld a, [hl-]                                   ; $637C: $3A
    dec e                                         ; $637D: $1D
    ld [de], a                                    ; $637E: $12
    dec c                                         ; $637F: $0D
    dec a                                         ; $6380: $3D
    db $D3                                        ; $6381: $D3
    ld a, a                                       ; $6382: $7F
    and e                                         ; $6383: $A3
    rst $38                                       ; $6384: $FF
    ld bc, $827D                                  ; $6385: $01 $7D $82
    ld a, a                                       ; $6388: $7F
    add b                                         ; $6389: $80
    ld a, h                                       ; $638A: $7C
    add b                                         ; $638B: $80
    ld a, b                                       ; $638C: $78
    add b                                         ; $638D: $80
    ld a, b                                       ; $638E: $78
    add b                                         ; $638F: $80
    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    add b                                         ; $6392: $80
    nop                                           ; $6393: $00
    ret nz                                        ; $6394: $C0

    add b                                         ; $6395: $80
    ret nz                                        ; $6396: $C0

    add b                                         ; $6397: $80
    ret nz                                        ; $6398: $C0

    add b                                         ; $6399: $80
    ret nz                                        ; $639A: $C0

    nop                                           ; $639B: $00
    add b                                         ; $639C: $80
    nop                                           ; $639D: $00
    nop                                           ; $639E: $00
    nop                                           ; $639F: $00
    add a                                         ; $63A0: $87
    nop                                           ; $63A1: $00
    xor $00                                       ; $63A2: $EE $00
    cp $40                                        ; $63A4: $FE $40
    db $FC                                        ; $63A6: $FC
    add b                                         ; $63A7: $80
    call c, Call_00A_5220                         ; $63A8: $DC $20 $52
    xor h                                         ; $63AB: $AC
    ld d, a                                       ; $63AC: $57
    xor b                                         ; $63AD: $A8
    jr c, @-$27                                   ; $63AE: $38 $D7

    ld e, $0D                                     ; $63B0: $1E $0D
    rra                                           ; $63B2: $1F
    ld [bc], a                                    ; $63B3: $02
    ld a, a                                       ; $63B4: $7F
    nop                                           ; $63B5: $00
    ld l, $11                                     ; $63B6: $2E $11
    halt                                          ; $63B8: $76
    add hl, sp                                    ; $63B9: $39
    ld a, [hl]                                    ; $63BA: $7E
    add hl, sp                                    ; $63BB: $39
    ld a, [hl-]                                   ; $63BC: $3A
    dec e                                         ; $63BD: $1D
    ld [de], a                                    ; $63BE: $12
    dec c                                         ; $63BF: $0D
    ld a, l                                       ; $63C0: $7D
    or e                                          ; $63C1: $B3
    rst $38                                       ; $63C2: $FF
    ld b, e                                       ; $63C3: $43
    rst $38                                       ; $63C4: $FF
    ld bc, $827D                                  ; $63C5: $01 $7D $82
    ld a, a                                       ; $63C8: $7F
    add b                                         ; $63C9: $80
    ld a, h                                       ; $63CA: $7C
    add b                                         ; $63CB: $80
    ld a, b                                       ; $63CC: $78
    add b                                         ; $63CD: $80
    ld a, b                                       ; $63CE: $78
    add b                                         ; $63CF: $80
    add b                                         ; $63D0: $80
    nop                                           ; $63D1: $00
    rst $28                                       ; $63D2: $EF
    nop                                           ; $63D3: $00
    cp $80                                        ; $63D4: $FE $80
    call c, Call_00A_5220                         ; $63D6: $DC $20 $52
    xor h                                         ; $63D9: $AC
    ld d, h                                       ; $63DA: $54
    xor b                                         ; $63DB: $A8
    ccf                                           ; $63DC: $3F
    ret nc                                        ; $63DD: $D0

    ld a, b                                       ; $63DE: $78
    or a                                          ; $63DF: $B7
    rra                                           ; $63E0: $1F
    ld b, $0F                                     ; $63E1: $06 $0F
    nop                                           ; $63E3: $00
    ld a, a                                       ; $63E4: $7F
    nop                                           ; $63E5: $00
    ld l, $11                                     ; $63E6: $2E $11
    halt                                          ; $63E8: $76
    add hl, sp                                    ; $63E9: $39
    ld a, [hl]                                    ; $63EA: $7E
    add hl, sp                                    ; $63EB: $39
    ld a, [hl-]                                   ; $63EC: $3A
    dec e                                         ; $63ED: $1D
    ld [de], a                                    ; $63EE: $12
    dec c                                         ; $63EF: $0D
    db $FD                                        ; $63F0: $FD
    ld h, e                                       ; $63F1: $63
    rst $38                                       ; $63F2: $FF
    inc bc                                        ; $63F3: $03
    rst $38                                       ; $63F4: $FF
    ld bc, $827D                                  ; $63F5: $01 $7D $82
    ld a, a                                       ; $63F8: $7F
    add b                                         ; $63F9: $80
    ld a, h                                       ; $63FA: $7C
    add b                                         ; $63FB: $80
    ld a, b                                       ; $63FC: $78
    add b                                         ; $63FD: $80
    ld a, b                                       ; $63FE: $78
    add b                                         ; $63FF: $80
    ld bc, $F700                                  ; $6400: $01 $00 $F7
    nop                                           ; $6403: $00
    ld a, a                                       ; $6404: $7F
    ld b, $3F                                     ; $6405: $06 $3F
    ld [bc], a                                    ; $6407: $02
    ccf                                           ; $6408: $3F
    ld bc, $043B                                  ; $6409: $01 $3B $04
    ld c, d                                       ; $640C: $4A
    dec [hl]                                      ; $640D: $35
    ld l, d                                       ; $640E: $6A
    dec d                                         ; $640F: $15
    pop hl                                        ; $6410: $E1
    nop                                           ; $6411: $00
    ld [hl], a                                    ; $6412: $77
    nop                                           ; $6413: $00
    ld a, a                                       ; $6414: $7F
    ld [bc], a                                    ; $6415: $02
    ccf                                           ; $6416: $3F
    ld bc, $043B                                  ; $6417: $01 $3B $04
    ld c, d                                       ; $641A: $4A
    dec [hl]                                      ; $641B: $35
    ld l, d                                       ; $641C: $6A
    dec d                                         ; $641D: $15
    inc a                                         ; $641E: $3C
    dec bc                                        ; $641F: $0B
    ld e, $00                                     ; $6420: $1E $00
    ccf                                           ; $6422: $3F
    ld e, $1F                                     ; $6423: $1E $1F
    rrca                                          ; $6425: $0F
    ccf                                           ; $6426: $3F
    rra                                           ; $6427: $1F
    ccf                                           ; $6428: $3F
    rra                                           ; $6429: $1F
    ccf                                           ; $642A: $3F
    rra                                           ; $642B: $1F
    rra                                           ; $642C: $1F
    inc c                                         ; $642D: $0C
    ccf                                           ; $642E: $3F
    ld b, $00                                     ; $642F: $06 $00
    nop                                           ; $6431: $00
    add b                                         ; $6432: $80
    nop                                           ; $6433: $00
    ldh a, [$80]                                  ; $6434: $F0 $80
    ld hl, sp-$10                                 ; $6436: $F8 $F0
    db $FC                                        ; $6438: $FC
    ld hl, sp-$02                                 ; $6439: $F8 $FE
    db $FC                                        ; $643B: $FC
    cp $64                                        ; $643C: $FE $64
    ld l, [hl]                                    ; $643E: $6E
    sub h                                         ; $643F: $94
    ld bc, $0300                                  ; $6440: $01 $00 $03
    ld bc, $0007                                  ; $6443: $01 $07 $00
    rrca                                          ; $6446: $0F
    rlca                                          ; $6447: $07
    rra                                           ; $6448: $1F
    rrca                                          ; $6449: $0F
    rra                                           ; $644A: $1F
    rrca                                          ; $644B: $0F
    ccf                                           ; $644C: $3F
    dec e                                         ; $644D: $1D
    dec a                                         ; $644E: $3D
    ld [de], a                                    ; $644F: $12
    add b                                         ; $6450: $80
    nop                                           ; $6451: $00
    ret nz                                        ; $6452: $C0

    add b                                         ; $6453: $80
    ldh [$80], a                                  ; $6454: $E0 $80
    ldh a, [$E0]                                  ; $6456: $F0 $E0
    ld hl, sp-$10                                 ; $6458: $F8 $F0
    ld hl, sp-$10                                 ; $645A: $F8 $F0
    db $FC                                        ; $645C: $FC
    cp b                                          ; $645D: $B8
    cp h                                          ; $645E: $BC
    ld c, b                                       ; $645F: $48
    ld bc, $0300                                  ; $6460: $01 $00 $03
    ld bc, $0107                                  ; $6463: $01 $07 $01
    rrca                                          ; $6466: $0F
    inc b                                         ; $6467: $04
    rra                                           ; $6468: $1F
    rrca                                          ; $6469: $0F
    rra                                           ; $646A: $1F
    rrca                                          ; $646B: $0F
    ccf                                           ; $646C: $3F
    rra                                           ; $646D: $1F
    ccf                                           ; $646E: $3F
    rra                                           ; $646F: $1F
    add b                                         ; $6470: $80
    nop                                           ; $6471: $00
    ret nz                                        ; $6472: $C0

    add b                                         ; $6473: $80
    ldh [$80], a                                  ; $6474: $E0 $80
    ldh a, [$E0]                                  ; $6476: $F0 $E0
    ld hl, sp-$10                                 ; $6478: $F8 $F0
    ld hl, sp-$10                                 ; $647A: $F8 $F0
    db $FC                                        ; $647C: $FC
    ld hl, sp-$04                                 ; $647D: $F8 $FC
    ld hl, sp+$7F                                 ; $647F: $F8 $7F
    nop                                           ; $6481: $00
    rst $38                                       ; $6482: $FF
    ld a, a                                       ; $6483: $7F
    ld a, a                                       ; $6484: $7F
    ccf                                           ; $6485: $3F
    ccf                                           ; $6486: $3F
    dec de                                        ; $6487: $1B
    ccf                                           ; $6488: $3F
    rlca                                          ; $6489: $07
    ccf                                           ; $648A: $3F
    rra                                           ; $648B: $1F
    rra                                           ; $648C: $1F
    rrca                                          ; $648D: $0F
    ccf                                           ; $648E: $3F
    nop                                           ; $648F: $00
    nop                                           ; $6490: $00
    nop                                           ; $6491: $00
    ld hl, sp+$00                                 ; $6492: $F8 $00
    db $FC                                        ; $6494: $FC
    ld hl, sp-$02                                 ; $6495: $F8 $FE
    db $FC                                        ; $6497: $FC
    cp $FC                                        ; $6498: $FE $FC
    db $FC                                        ; $649A: $FC
    ld hl, sp-$08                                 ; $649B: $F8 $F8
    ldh a, [$F0]                                  ; $649D: $F0 $F0
    nop                                           ; $649F: $00
    ld a, a                                       ; $64A0: $7F
    dec sp                                        ; $64A1: $3B
    rst $38                                       ; $64A2: $FF
    ld a, l                                       ; $64A3: $7D
    ld a, a                                       ; $64A4: $7F
    ld e, $5F                                     ; $64A5: $1E $5F
    ld hl, $337F                                  ; $64A7: $21 $7F $33
    ld a, a                                       ; $64AA: $7F
    dec sp                                        ; $64AB: $3B
    ld [hl], a                                    ; $64AC: $77
    jr c, jr_00A_64EE                             ; $64AD: $38 $3F

    inc bc                                        ; $64AF: $03
    cp $0C                                        ; $64B0: $FE $0C
    db $FC                                        ; $64B2: $FC
    ld hl, sp-$08                                 ; $64B3: $F8 $F8
    nop                                           ; $64B5: $00
    ld hl, sp-$60                                 ; $64B6: $F8 $A0
    ld hl, sp-$70                                 ; $64B8: $F8 $90
    db $FC                                        ; $64BA: $FC
    sbc b                                         ; $64BB: $98
    db $EC                                        ; $64BC: $EC
    jr @-$06                                      ; $64BD: $18 $F8

    ldh [$FE], a                                  ; $64BF: $E0 $FE
    inc d                                         ; $64C1: $14
    rst $38                                       ; $64C2: $FF
    xor $FF                                       ; $64C3: $EE $FF
    ld c, $FE                                     ; $64C5: $0E $FE
    ld h, b                                       ; $64C7: $60
    cp $6C                                        ; $64C8: $FE $6C
    rst $30                                       ; $64CA: $F7
    ld c, [hl]                                    ; $64CB: $4E
    ld a, [c]                                     ; $64CC: $F2
    inc c                                         ; $64CD: $0C
    db $FC                                        ; $64CE: $FC
    ldh [$FE], a                                  ; $64CF: $E0 $FE
    db $F4                                        ; $64D1: $F4
    rst $38                                       ; $64D2: $FF
    xor $FF                                       ; $64D3: $EE $FF
    ld c, $FE                                     ; $64D5: $0E $FE
    ldh [$FE], a                                  ; $64D7: $E0 $FE
    db $F4                                        ; $64D9: $F4
    rst $38                                       ; $64DA: $FF
    or $FA                                        ; $64DB: $F6 $FA
    db $F4                                        ; $64DD: $F4
    db $FC                                        ; $64DE: $FC
    ldh [$7F], a                                  ; $64DF: $E0 $7F
    jr nc, jr_00A_6522                            ; $64E1: $30 $3F

    ld c, $7F                                     ; $64E3: $0E $7F
    ccf                                           ; $64E5: $3F
    ld a, a                                       ; $64E6: $7F
    ccf                                           ; $64E7: $3F
    ld a, a                                       ; $64E8: $7F
    ccf                                           ; $64E9: $3F
    ld a, a                                       ; $64EA: $7F
    ccf                                           ; $64EB: $3F
    ccf                                           ; $64EC: $3F
    inc bc                                        ; $64ED: $03

jr_00A_64EE:
    rlca                                          ; $64EE: $07

jr_00A_64EF:
    nop                                           ; $64EF: $00
    ldh a, [$E0]                                  ; $64F0: $F0 $E0
    ld hl, sp-$10                                 ; $64F2: $F8 $F0
    ld hl, sp+$70                                 ; $64F4: $F8 $70
    ldh a, [rP1]                                  ; $64F6: $F0 $00
    or b                                          ; $64F8: $B0
    ld h, b                                       ; $64F9: $60
    ld hl, sp+$70                                 ; $64FA: $F8 $70
    add sp, $30                                   ; $64FC: $E8 $30
    ldh a, [rP1]                                  ; $64FE: $F0 $00
    dec a                                         ; $6500: $3D
    ld [de], a                                    ; $6501: $12
    ld a, a                                       ; $6502: $7F
    jr z, @+$01                                   ; $6503: $28 $FF

    ld [hl], a                                    ; $6505: $77
    rst $38                                       ; $6506: $FF
    ld [hl], b                                    ; $6507: $70
    ld a, a                                       ; $6508: $7F
    inc bc                                        ; $6509: $03
    rra                                           ; $650A: $1F
    dec bc                                        ; $650B: $0B
    rra                                           ; $650C: $1F
    dec c                                         ; $650D: $0D
    add hl, bc                                    ; $650E: $09
    ld b, $BC                                     ; $650F: $06 $BC
    ld c, b                                       ; $6511: $48
    cp $14                                        ; $6512: $FE $14
    rst $38                                       ; $6514: $FF
    xor $FF                                       ; $6515: $EE $FF
    ld c, $FE                                     ; $6517: $0E $FE
    ld b, b                                       ; $6519: $40
    db $EC                                        ; $651A: $EC
    ld e, b                                       ; $651B: $58
    db $FC                                        ; $651C: $FC
    ld e, b                                       ; $651D: $58
    db $E4                                        ; $651E: $E4
    jr jr_00A_6560                                ; $651F: $18 $3F

    rra                                           ; $6521: $1F

jr_00A_6522:
    ld a, a                                       ; $6522: $7F
    cpl                                           ; $6523: $2F
    rst $38                                       ; $6524: $FF
    ld [hl], a                                    ; $6525: $77
    rst $38                                       ; $6526: $FF
    ld [hl], b                                    ; $6527: $70
    ld a, a                                       ; $6528: $7F
    rlca                                          ; $6529: $07
    ccf                                           ; $652A: $3F
    rrca                                          ; $652B: $0F
    ccf                                           ; $652C: $3F
    rrca                                          ; $652D: $0F
    ccf                                           ; $652E: $3F
    rrca                                          ; $652F: $0F
    db $FC                                        ; $6530: $FC
    ld hl, sp-$02                                 ; $6531: $F8 $FE
    db $F4                                        ; $6533: $F4
    rst $38                                       ; $6534: $FF
    xor $FF                                       ; $6535: $EE $FF
    ld c, $FE                                     ; $6537: $0E $FE
    ldh [$FA], a                                  ; $6539: $E0 $FA
    db $F4                                        ; $653B: $F4
    cp $EC                                        ; $653C: $FE $EC
    db $F4                                        ; $653E: $F4
    add sp, $0F                                   ; $653F: $E8 $0F
    nop                                           ; $6541: $00
    rrca                                          ; $6542: $0F
    rlca                                          ; $6543: $07
    rra                                           ; $6544: $1F
    rrca                                          ; $6545: $0F
    rra                                           ; $6546: $1F
    ld c, $3F                                     ; $6547: $0E $3F
    db $10                                        ; $6549: $10
    add hl, sp                                    ; $654A: $39
    ld b, $21                                     ; $654B: $06 $21
    ld e, $1F                                     ; $654D: $1E $1F
    nop                                           ; $654F: $00
    ldh [rP1], a                                  ; $6550: $E0 $00
    ldh [$C0], a                                  ; $6552: $E0 $C0
    ldh a, [$60]                                  ; $6554: $F0 $60
    ldh a, [$C0]                                  ; $6556: $F0 $C0
    ret z                                         ; $6558: $C8

    jr nc, @+$0A                                  ; $6559: $30 $08

    ldh a, [$F0]                                  ; $655B: $F0 $F0
    nop                                           ; $655D: $00
    nop                                           ; $655E: $00
    nop                                           ; $655F: $00

jr_00A_6560:
    ld hl, sp+$00                                 ; $6560: $F8 $00
    ldh a, [$E0]                                  ; $6562: $F0 $E0
    ld hl, sp+$70                                 ; $6564: $F8 $70
    ld hl, sp+$40                                 ; $6566: $F8 $40
    ret z                                         ; $6568: $C8

    jr nc, jr_00A_64EF                            ; $6569: $30 $84

    ld a, b                                       ; $656B: $78
    call nz, $F838                                ; $656C: $C4 $38 $F8
    nop                                           ; $656F: $00
    ldh a, [rP1]                                  ; $6570: $F0 $00
    ldh a, [$60]                                  ; $6572: $F0 $60
    ld hl, sp+$60                                 ; $6574: $F8 $60
    ld hl, sp+$70                                 ; $6576: $F8 $70
    ld hl, sp+$70                                 ; $6578: $F8 $70
    db $F4                                        ; $657A: $F4
    ld [$708C], sp                                ; $657B: $08 $8C $70
    ld hl, sp+$00                                 ; $657E: $F8 $00
    rlca                                          ; $6580: $07
    nop                                           ; $6581: $00
    rlca                                          ; $6582: $07
    inc bc                                        ; $6583: $03
    rrca                                          ; $6584: $0F
    ld b, $0F                                     ; $6585: $06 $0F
    rlca                                          ; $6587: $07
    rrca                                          ; $6588: $0F
    ld bc, $0609                                  ; $6589: $01 $09 $06

jr_00A_658C:
    rrca                                          ; $658C: $0F
    nop                                           ; $658D: $00

jr_00A_658E:
    nop                                           ; $658E: $00
    nop                                           ; $658F: $00
    ldh a, [$60]                                  ; $6590: $F0 $60
    ldh a, [$E0]                                  ; $6592: $F0 $E0
    ld hl, sp-$10                                 ; $6594: $F8 $F0
    ld hl, sp+$70                                 ; $6596: $F8 $70
    ld hl, sp+$60                                 ; $6598: $F8 $60
    db $F4                                        ; $659A: $F4
    ld [$708C], sp                                ; $659B: $08 $8C $70
    ld hl, sp+$00                                 ; $659E: $F8 $00
    rst $38                                       ; $65A0: $FF
    nop                                           ; $65A1: $00
    ld a, a                                       ; $65A2: $7F
    ld a, $FF                                     ; $65A3: $3E $FF
    ld a, [hl]                                    ; $65A5: $7E
    rst $38                                       ; $65A6: $FF
    ld e, b                                       ; $65A7: $58
    ld sp, hl                                     ; $65A8: $F9
    ld h, [hl]                                    ; $65A9: $66
    ld [hl], c                                    ; $65AA: $71
    ld c, $52                                     ; $65AB: $0E $52
    inc l                                         ; $65AD: $2C
    ld a, $00                                     ; $65AE: $3E $00
    rra                                           ; $65B0: $1F
    nop                                           ; $65B1: $00
    rrca                                          ; $65B2: $0F
    rlca                                          ; $65B3: $07
    rra                                           ; $65B4: $1F
    dec c                                         ; $65B5: $0D
    rra                                           ; $65B6: $1F
    ld c, $1F                                     ; $65B7: $0E $1F
    ld c, $0F                                     ; $65B9: $0E $0F
    nop                                           ; $65BB: $00
    add hl, bc                                    ; $65BC: $09
    ld b, $0F                                     ; $65BD: $06 $0F
    nop                                           ; $65BF: $00
    ld hl, sp+$00                                 ; $65C0: $F8 $00
    ldh a, [$E0]                                  ; $65C2: $F0 $E0
    ldh a, [$E0]                                  ; $65C4: $F0 $E0
    ldh a, [$60]                                  ; $65C6: $F0 $60
    ldh [rP1], a                                  ; $65C8: $E0 $00
    jr nz, jr_00A_658C                            ; $65CA: $20 $C0

    jr nz, jr_00A_658E                            ; $65CC: $20 $C0

    ldh [rP1], a                                  ; $65CE: $E0 $00
    jr c, jr_00A_65D2                             ; $65D0: $38 $00

jr_00A_65D2:
    ld a, a                                       ; $65D2: $7F
    jr c, jr_00A_6654                             ; $65D3: $38 $7F

    ccf                                           ; $65D5: $3F
    ccf                                           ; $65D6: $3F
    rra                                           ; $65D7: $1F
    ccf                                           ; $65D8: $3F
    rra                                           ; $65D9: $1F
    ccf                                           ; $65DA: $3F
    rra                                           ; $65DB: $1F
    rra                                           ; $65DC: $1F
    rrca                                          ; $65DD: $0F
    rrca                                          ; $65DE: $0F
    rlca                                          ; $65DF: $07
    nop                                           ; $65E0: $00
    nop                                           ; $65E1: $00
    ldh a, [rP1]                                  ; $65E2: $F0 $00
    ld hl, sp-$10                                 ; $65E4: $F8 $F0
    db $FC                                        ; $65E6: $FC
    ld hl, sp-$04                                 ; $65E7: $F8 $FC
    ld hl, sp-$08                                 ; $65E9: $F8 $F8
    ldh a, [$F0]                                  ; $65EB: $F0 $F0
    ldh [$E0], a                                  ; $65ED: $E0 $E0
    ret nz                                        ; $65EF: $C0

    rrca                                          ; $65F0: $0F
    rlca                                          ; $65F1: $07
    rrca                                          ; $65F2: $0F
    inc bc                                        ; $65F3: $03
    rra                                           ; $65F4: $1F
    inc c                                         ; $65F5: $0C
    ccf                                           ; $65F6: $3F
    dec de                                        ; $65F7: $1B
    ld a, a                                       ; $65F8: $7F
    ld a, [hl-]                                   ; $65F9: $3A
    ld a, a                                       ; $65FA: $7F
    jr c, jr_00A_667C                             ; $65FB: $38 $7F

    jr nc, jr_00A_663E                            ; $65FD: $30 $3F

    rla                                           ; $65FF: $17
    ldh [$C0], a                                  ; $6600: $E0 $C0
    ret nz                                        ; $6602: $C0

    add b                                         ; $6603: $80
    ret nz                                        ; $6604: $C0

    nop                                           ; $6605: $00
    ret nz                                        ; $6606: $C0

    add b                                         ; $6607: $80
    ret nz                                        ; $6608: $C0

    nop                                           ; $6609: $00
    ldh [$C0], a                                  ; $660A: $E0 $C0
    ret nc                                        ; $660C: $D0

    ldh [$90], a                                  ; $660D: $E0 $90
    ld h, b                                       ; $660F: $60
    rrca                                          ; $6610: $0F
    inc bc                                        ; $6611: $03
    rra                                           ; $6612: $1F
    inc c                                         ; $6613: $0C
    ccf                                           ; $6614: $3F
    rra                                           ; $6615: $1F
    ccf                                           ; $6616: $3F
    dec e                                         ; $6617: $1D
    ld a, l                                       ; $6618: $7D
    ld a, [hl-]                                   ; $6619: $3A
    ld a, a                                       ; $661A: $7F
    dec sp                                        ; $661B: $3B
    ccf                                           ; $661C: $3F
    inc de                                        ; $661D: $13
    ld e, $05                                     ; $661E: $1E $05
    ret nz                                        ; $6620: $C0

    add b                                         ; $6621: $80
    ret nz                                        ; $6622: $C0

    nop                                           ; $6623: $00
    ret nz                                        ; $6624: $C0

    nop                                           ; $6625: $00
    ldh [rP1], a                                  ; $6626: $E0 $00
    ldh [rP1], a                                  ; $6628: $E0 $00
    ldh [rP1], a                                  ; $662A: $E0 $00
    ld h, b                                       ; $662C: $60

jr_00A_662D:
    add b                                         ; $662D: $80
    ld h, b                                       ; $662E: $60
    add b                                         ; $662F: $80
    rrca                                          ; $6630: $0F
    rlca                                          ; $6631: $07
    rrca                                          ; $6632: $0F
    inc bc                                        ; $6633: $03
    rra                                           ; $6634: $1F
    inc c                                         ; $6635: $0C
    ccf                                           ; $6636: $3F
    inc de                                        ; $6637: $13
    ld a, a                                       ; $6638: $7F
    ld sp, $2C7F                                  ; $6639: $31 $7F $2C
    ld l, a                                       ; $663C: $6F
    inc e                                         ; $663D: $1C

jr_00A_663E:
    daa                                           ; $663E: $27
    dec de                                        ; $663F: $1B
    ldh [$C0], a                                  ; $6640: $E0 $C0
    ret nz                                        ; $6642: $C0

    add b                                         ; $6643: $80
    ret nz                                        ; $6644: $C0

    nop                                           ; $6645: $00
    ret nz                                        ; $6646: $C0

    nop                                           ; $6647: $00
    ret nz                                        ; $6648: $C0

    nop                                           ; $6649: $00
    ldh [rP1], a                                  ; $664A: $E0 $00
    ret nc                                        ; $664C: $D0

    jr nz, @-$2E                                  ; $664D: $20 $D0

    and b                                         ; $664F: $A0
    rra                                           ; $6650: $1F
    nop                                           ; $6651: $00
    rrca                                          ; $6652: $0F
    rlca                                          ; $6653: $07

jr_00A_6654:
    rra                                           ; $6654: $1F
    rrca                                          ; $6655: $0F
    ccf                                           ; $6656: $3F
    rra                                           ; $6657: $1F
    ld e, a                                       ; $6658: $5F
    inc l                                         ; $6659: $2C
    ld c, l                                       ; $665A: $4D
    ld [hl-], a                                   ; $665B: $32
    ld h, c                                       ; $665C: $61
    ld e, $7F                                     ; $665D: $1E $7F
    nop                                           ; $665F: $00
    ldh [rP1], a                                  ; $6660: $E0 $00
    ldh [$80], a                                  ; $6662: $E0 $80
    ld hl, sp-$80                                 ; $6664: $F8 $80
    db $E4                                        ; $6666: $E4
    jr jr_00A_662D                                ; $6667: $18 $C4

    cp b                                          ; $6669: $B8
    ret z                                         ; $666A: $C8

    or b                                          ; $666B: $B0
    cp b                                          ; $666C: $B8
    ld b, b                                       ; $666D: $40
    ldh [rP1], a                                  ; $666E: $E0 $00
    rlca                                          ; $6670: $07
    nop                                           ; $6671: $00
    rrca                                          ; $6672: $0F
    rlca                                          ; $6673: $07
    rra                                           ; $6674: $1F
    rrca                                          ; $6675: $0F
    rra                                           ; $6676: $1F
    rrca                                          ; $6677: $0F
    ccf                                           ; $6678: $3F
    db $10                                        ; $6679: $10
    jr c, @+$09                                   ; $667A: $38 $07

jr_00A_667C:
    jr nc, jr_00A_668D                            ; $667C: $30 $0F

    rra                                           ; $667E: $1F
    nop                                           ; $667F: $00
    ldh [rP1], a                                  ; $6680: $E0 $00
    ldh [$C0], a                                  ; $6682: $E0 $C0
    ldh [$C0], a                                  ; $6684: $E0 $C0
    ldh [$80], a                                  ; $6686: $E0 $80
    ret nc                                        ; $6688: $D0

    jr nz, jr_00A_66DB                            ; $6689: $20 $50

    and b                                         ; $668B: $A0
    ld [hl], b                                    ; $668C: $70

jr_00A_668D:
    add b                                         ; $668D: $80
    ret nz                                        ; $668E: $C0

    nop                                           ; $668F: $00

jr_00A_6690:
    rra                                           ; $6690: $1F
    nop                                           ; $6691: $00
    rrca                                          ; $6692: $0F
    rlca                                          ; $6693: $07
    rra                                           ; $6694: $1F
    rrca                                          ; $6695: $0F
    ccf                                           ; $6696: $3F
    dec bc                                        ; $6697: $0B
    ld e, a                                       ; $6698: $5F
    ld hl, $3C43                                  ; $6699: $21 $43 $3C
    ld h, c                                       ; $669C: $61
    ld e, $7F                                     ; $669D: $1E $7F
    nop                                           ; $669F: $00
    ldh [rP1], a                                  ; $66A0: $E0 $00
    ret nz                                        ; $66A2: $C0

    add b                                         ; $66A3: $80
    ld hl, sp-$40                                 ; $66A4: $F8 $C0
    db $E4                                        ; $66A6: $E4
    ret c                                         ; $66A7: $D8

    call nz, $C8B8                                ; $66A8: $C4 $B8 $C8
    or b                                          ; $66AB: $B0
    cp b                                          ; $66AC: $B8
    ld b, b                                       ; $66AD: $40
    ldh [rP1], a                                  ; $66AE: $E0 $00
    rlca                                          ; $66B0: $07
    nop                                           ; $66B1: $00
    rra                                           ; $66B2: $1F
    rlca                                          ; $66B3: $07
    ccf                                           ; $66B4: $3F
    rra                                           ; $66B5: $1F
    rra                                           ; $66B6: $1F
    rrca                                          ; $66B7: $0F
    ccf                                           ; $66B8: $3F
    rra                                           ; $66B9: $1F
    rra                                           ; $66BA: $1F
    inc b                                         ; $66BB: $04
    rla                                           ; $66BC: $17
    ld [$0609], sp                                ; $66BD: $08 $09 $06
    ldh a, [rP1]                                  ; $66C0: $F0 $00
    ld hl, sp-$10                                 ; $66C2: $F8 $F0
    db $FC                                        ; $66C4: $FC
    ld hl, sp-$04                                 ; $66C5: $F8 $FC
    ld hl, sp-$04                                 ; $66C7: $F8 $FC
    ld hl, sp-$04                                 ; $66C9: $F8 $FC
    ld [$00F8], sp                                ; $66CB: $08 $F8 $00
    jr nc, jr_00A_6690                            ; $66CE: $30 $C0

    dec b                                         ; $66D0: $05
    nop                                           ; $66D1: $00
    rrca                                          ; $66D2: $0F
    dec b                                         ; $66D3: $05
    rra                                           ; $66D4: $1F
    rrca                                          ; $66D5: $0F
    ccf                                           ; $66D6: $3F
    rra                                           ; $66D7: $1F
    ccf                                           ; $66D8: $3F
    rra                                           ; $66D9: $1F
    ccf                                           ; $66DA: $3F

jr_00A_66DB:
    rra                                           ; $66DB: $1F
    rra                                           ; $66DC: $1F
    ld [$102F], sp                                ; $66DD: $08 $2F $10
    nop                                           ; $66E0: $00
    nop                                           ; $66E1: $00
    ldh [rP1], a                                  ; $66E2: $E0 $00
    ldh a, [$E0]                                  ; $66E4: $F0 $E0
    ld hl, sp-$10                                 ; $66E6: $F8 $F0
    db $FC                                        ; $66E8: $FC
    ld hl, sp-$04                                 ; $66E9: $F8 $FC
    ld hl, sp-$08                                 ; $66EB: $F8 $F8
    db $10                                        ; $66ED: $10
    db $F4                                        ; $66EE: $F4
    ld [rRAMG], sp                                ; $66EF: $08 $00 $00
    rlca                                          ; $66F2: $07
    nop                                           ; $66F3: $00
    rrca                                          ; $66F4: $0F
    rlca                                          ; $66F5: $07
    rra                                           ; $66F6: $1F
    ld c, $3F                                     ; $66F7: $0E $3F
    rra                                           ; $66F9: $1F
    ccf                                           ; $66FA: $3F
    rra                                           ; $66FB: $1F
    rra                                           ; $66FC: $1F
    rrca                                          ; $66FD: $0F
    cpl                                           ; $66FE: $2F
    rla                                           ; $66FF: $17
    and b                                         ; $6700: $A0
    nop                                           ; $6701: $00
    ldh a, [$A0]                                  ; $6702: $F0 $A0
    ld hl, sp-$10                                 ; $6704: $F8 $F0
    db $FC                                        ; $6706: $FC
    ld hl, sp-$04                                 ; $6707: $F8 $FC
    ld hl, sp-$04                                 ; $6709: $F8 $FC
    ld hl, sp-$08                                 ; $670B: $F8 $F8
    ldh a, [$F4]                                  ; $670D: $F0 $F4
    add sp, $00                                   ; $670F: $E8 $00
    nop                                           ; $6711: $00
    rlca                                          ; $6712: $07
    nop                                           ; $6713: $00

jr_00A_6714:
    rrca                                          ; $6714: $0F
    rlca                                          ; $6715: $07
    rra                                           ; $6716: $1F
    dec bc                                        ; $6717: $0B
    rra                                           ; $6718: $1F
    rrca                                          ; $6719: $0F
    rra                                           ; $671A: $1F
    rrca                                          ; $671B: $0F
    rra                                           ; $671C: $1F
    rrca                                          ; $671D: $0F
    rra                                           ; $671E: $1F
    rlca                                          ; $671F: $07
    ld d, b                                       ; $6720: $50
    nop                                           ; $6721: $00
    ld hl, sp+$50                                 ; $6722: $F8 $50
    db $FC                                        ; $6724: $FC
    ld hl, sp-$04                                 ; $6725: $F8 $FC
    ld hl, sp-$04                                 ; $6727: $F8 $FC
    ld hl, sp-$08                                 ; $6729: $F8 $F8
    ldh [$E8], a                                  ; $672B: $E0 $E8
    ret nc                                        ; $672D: $D0

    ret z                                         ; $672E: $C8

    or b                                          ; $672F: $B0
    inc c                                         ; $6730: $0C
    inc bc                                        ; $6731: $03
    rra                                           ; $6732: $1F
    nop                                           ; $6733: $00
    ccf                                           ; $6734: $3F
    ld e, $7F                                     ; $6735: $1E $7F
    ccf                                           ; $6737: $3F
    ld a, a                                       ; $6738: $7F
    scf                                           ; $6739: $37
    ccf                                           ; $673A: $3F
    dec de                                        ; $673B: $1B
    dec sp                                        ; $673C: $3B
    inc e                                         ; $673D: $1C
    inc de                                        ; $673E: $13
    dec c                                         ; $673F: $0D
    db $10                                        ; $6740: $10
    ldh [$E0], a                                  ; $6741: $E0 $E0
    nop                                           ; $6743: $00
    ldh a, [rNR41]                                ; $6744: $F0 $20
    ldh a, [rNR41]                                ; $6746: $F0 $20
    ldh a, [rNR41]                                ; $6748: $F0 $20
    ld hl, sp+$20                                 ; $674A: $F8 $20
    add sp, $10                                   ; $674C: $E8 $10
    ldh a, [$C0]                                  ; $674E: $F0 $C0
    ld e, b                                       ; $6750: $58
    and b                                         ; $6751: $A0
    jr nz, jr_00A_6714                            ; $6752: $20 $C0

    ld hl, sp+$20                                 ; $6754: $F8 $20
    db $FC                                        ; $6756: $FC
    ld a, b                                       ; $6757: $78
    db $FC                                        ; $6758: $FC
    ld e, b                                       ; $6759: $58
    db $FC                                        ; $675A: $FC
    ld c, b                                       ; $675B: $48
    db $EC                                        ; $675C: $EC
    db $10                                        ; $675D: $10
    db $E4                                        ; $675E: $E4
    ret c                                         ; $675F: $D8

    ld hl, sp-$20                                 ; $6760: $F8 $E0
    ldh [rP1], a                                  ; $6762: $E0 $00
    ld hl, sp-$20                                 ; $6764: $F8 $E0

jr_00A_6766:
    db $FC                                        ; $6766: $FC
    ld hl, sp-$04                                 ; $6767: $F8 $FC
    ld hl, sp-$04                                 ; $6769: $F8 $FC
    add sp, -$04                                  ; $676B: $E8 $FC
    nop                                           ; $676D: $00
    db $F4                                        ; $676E: $F4
    add sp, $0F                                   ; $676F: $E8 $0F
    inc bc                                        ; $6771: $03
    rlca                                          ; $6772: $07

jr_00A_6773:
    nop                                           ; $6773: $00
    rrca                                          ; $6774: $0F
    rlca                                          ; $6775: $07
    rra                                           ; $6776: $1F
    rrca                                          ; $6777: $0F
    rra                                           ; $6778: $1F
    rrca                                          ; $6779: $0F
    rra                                           ; $677A: $1F
    rrca                                          ; $677B: $0F
    rrca                                          ; $677C: $0F
    nop                                           ; $677D: $00
    rrca                                          ; $677E: $0F

jr_00A_677F:
    rlca                                          ; $677F: $07
    sub b                                         ; $6780: $90
    ld h, b                                       ; $6781: $60
    ldh [rP1], a                                  ; $6782: $E0 $00
    ldh a, [$E0]                                  ; $6784: $F0 $E0
    ldh a, [$E0]                                  ; $6786: $F0 $E0
    ldh a, [$E0]                                  ; $6788: $F0 $E0
    ld hl, sp+$70                                 ; $678A: $F8 $70
    db $F4                                        ; $678C: $F4
    jr z, jr_00A_6773                             ; $678D: $28 $E4

    sbc b                                         ; $678F: $98
    cpl                                           ; $6790: $2F
    db $10                                        ; $6791: $10
    ld a, [de]                                    ; $6792: $1A
    dec b                                         ; $6793: $05
    inc b                                         ; $6794: $04
    inc bc                                        ; $6795: $03
    rrca                                          ; $6796: $0F
    inc b                                         ; $6797: $04
    rra                                           ; $6798: $1F
    rrca                                          ; $6799: $0F
    rra                                           ; $679A: $1F
    add hl, bc                                    ; $679B: $09
    add hl, de                                    ; $679C: $19
    ld b, $09                                     ; $679D: $06 $09
    ld b, $F4                                     ; $679F: $06 $F4
    ld [$A058], sp                                ; $67A1: $08 $58 $A0
    jr nz, jr_00A_6766                            ; $67A4: $20 $C0

    ldh a, [rNR41]                                ; $67A6: $F0 $20
    ld hl, sp+$70                                 ; $67A8: $F8 $70
    ld hl, sp+$50                                 ; $67AA: $F8 $50
    ld hl, sp+$10                                 ; $67AC: $F8 $10
    ld hl, sp-$40                                 ; $67AE: $F8 $C0
    cpl                                           ; $67B0: $2F
    rla                                           ; $67B1: $17
    rra                                           ; $67B2: $1F
    rlca                                          ; $67B3: $07
    rlca                                          ; $67B4: $07
    nop                                           ; $67B5: $00
    rrca                                          ; $67B6: $0F
    rlca                                          ; $67B7: $07
    rra                                           ; $67B8: $1F
    rrca                                          ; $67B9: $0F
    rra                                           ; $67BA: $1F
    dec bc                                        ; $67BB: $0B
    rra                                           ; $67BC: $1F
    nop                                           ; $67BD: $00
    rla                                           ; $67BE: $17
    dec bc                                        ; $67BF: $0B
    db $F4                                        ; $67C0: $F4
    add sp, -$08                                  ; $67C1: $E8 $F8
    ldh [$F0], a                                  ; $67C3: $E0 $F0
    nop                                           ; $67C5: $00
    ld hl, sp-$10                                 ; $67C6: $F8 $F0
    db $FC                                        ; $67C8: $FC
    ld hl, sp-$04                                 ; $67C9: $F8 $FC
    add sp, -$04                                  ; $67CB: $E8 $FC
    ld [$E0F8], sp                                ; $67CD: $08 $F8 $E0
    rrca                                          ; $67D0: $0F
    nop                                           ; $67D1: $00
    rrca                                          ; $67D2: $0F
    rlca                                          ; $67D3: $07
    rra                                           ; $67D4: $1F
    rrca                                          ; $67D5: $0F
    rra                                           ; $67D6: $1F
    ld c, $3F                                     ; $67D7: $0E $3F
    db $10                                        ; $67D9: $10
    add hl, sp                                    ; $67DA: $39
    ld b, $21                                     ; $67DB: $06 $21
    ld e, $1F                                     ; $67DD: $1E $1F
    nop                                           ; $67DF: $00
    ldh [rP1], a                                  ; $67E0: $E0 $00
    ldh [$C0], a                                  ; $67E2: $E0 $C0
    ldh a, [$60]                                  ; $67E4: $F0 $60
    ldh a, [$C0]                                  ; $67E6: $F0 $C0
    ret z                                         ; $67E8: $C8

    jr nc, @+$0A                                  ; $67E9: $30 $08

    ldh a, [$F0]                                  ; $67EB: $F0 $F0
    nop                                           ; $67ED: $00
    nop                                           ; $67EE: $00
    nop                                           ; $67EF: $00
    ld hl, sp+$00                                 ; $67F0: $F8 $00
    ldh a, [$E0]                                  ; $67F2: $F0 $E0
    ld hl, sp+$70                                 ; $67F4: $F8 $70
    ld hl, sp+$40                                 ; $67F6: $F8 $40
    ret z                                         ; $67F8: $C8

    jr nc, jr_00A_677F                            ; $67F9: $30 $84

    ld a, b                                       ; $67FB: $78
    call nz, $F838                                ; $67FC: $C4 $38 $F8
    nop                                           ; $67FF: $00
    ldh a, [rP1]                                  ; $6800: $F0 $00
    ldh a, [$60]                                  ; $6802: $F0 $60
    ld hl, sp+$70                                 ; $6804: $F8 $70
    ld hl, sp+$70                                 ; $6806: $F8 $70
    ld hl, sp+$60                                 ; $6808: $F8 $60
    db $F4                                        ; $680A: $F4
    ld [$708C], sp                                ; $680B: $08 $8C $70
    ld hl, sp+$00                                 ; $680E: $F8 $00
    rlca                                          ; $6810: $07
    nop                                           ; $6811: $00
    rlca                                          ; $6812: $07
    inc bc                                        ; $6813: $03
    rrca                                          ; $6814: $0F
    ld b, $0F                                     ; $6815: $06 $0F
    rlca                                          ; $6817: $07
    rrca                                          ; $6818: $0F
    ld bc, $0609                                  ; $6819: $01 $09 $06
    rrca                                          ; $681C: $0F
    nop                                           ; $681D: $00
    nop                                           ; $681E: $00
    nop                                           ; $681F: $00
    ld hl, sp+$60                                 ; $6820: $F8 $60
    ldh a, [$E0]                                  ; $6822: $F0 $E0
    ld hl, sp-$10                                 ; $6824: $F8 $F0
    ld hl, sp+$70                                 ; $6826: $F8 $70
    ld hl, sp+$60                                 ; $6828: $F8 $60
    db $F4                                        ; $682A: $F4
    ld [$708C], sp                                ; $682B: $08 $8C $70
    ld hl, sp+$00                                 ; $682E: $F8 $00
    rrca                                          ; $6830: $0F
    nop                                           ; $6831: $00
    rlca                                          ; $6832: $07
    inc bc                                        ; $6833: $03
    rrca                                          ; $6834: $0F
    rlca                                          ; $6835: $07
    rrca                                          ; $6836: $0F
    dec b                                         ; $6837: $05
    rrca                                          ; $6838: $0F
    ld b, $07                                     ; $6839: $06 $07
    nop                                           ; $683B: $00
    dec b                                         ; $683C: $05
    ld [bc], a                                    ; $683D: $02
    inc bc                                        ; $683E: $03
    nop                                           ; $683F: $00
    ld hl, sp+$00                                 ; $6840: $F8 $00
    ldh a, [$E0]                                  ; $6842: $F0 $E0
    ldh a, [$E0]                                  ; $6844: $F0 $E0
    ldh a, [$80]                                  ; $6846: $F0 $80
    sub b                                         ; $6848: $90
    ld h, b                                       ; $6849: $60
    db $10                                        ; $684A: $10
    ldh [rNR41], a                                ; $684B: $E0 $20
    ret nz                                        ; $684D: $C0

    ldh [rP1], a                                  ; $684E: $E0 $00
    rrca                                          ; $6850: $0F
    nop                                           ; $6851: $00
    rlca                                          ; $6852: $07
    inc bc                                        ; $6853: $03
    rrca                                          ; $6854: $0F
    ld b, $0F                                     ; $6855: $06 $0F
    rlca                                          ; $6857: $07
    rrca                                          ; $6858: $0F
    rlca                                          ; $6859: $07
    rlca                                          ; $685A: $07
    nop                                           ; $685B: $00
    inc b                                         ; $685C: $04
    inc bc                                        ; $685D: $03
    rlca                                          ; $685E: $07
    nop                                           ; $685F: $00
    ldh a, [rP1]                                  ; $6860: $F0 $00
    ld hl, sp-$10                                 ; $6862: $F8 $F0
    ld hl, sp-$10                                 ; $6864: $F8 $F0
    ld hl, sp+$30                                 ; $6866: $F8 $30
    ldh a, [rP1]                                  ; $6868: $F0 $00
    sub b                                         ; $686A: $90
    ld h, b                                       ; $686B: $60
    sub b                                         ; $686C: $90
    ld h, b                                       ; $686D: $60
    ldh a, [rP1]                                  ; $686E: $F0 $00
    inc bc                                        ; $6870: $03
    nop                                           ; $6871: $00
    ccf                                           ; $6872: $3F
    rlca                                          ; $6873: $07
    ld a, a                                       ; $6874: $7F
    ccf                                           ; $6875: $3F
    ccf                                           ; $6876: $3F
    rra                                           ; $6877: $1F
    ccf                                           ; $6878: $3F
    rra                                           ; $6879: $1F
    ccf                                           ; $687A: $3F
    rra                                           ; $687B: $1F
    rra                                           ; $687C: $1F
    dec c                                         ; $687D: $0D
    dec c                                         ; $687E: $0D
    ld [bc], a                                    ; $687F: $02
    and b                                         ; $6880: $A0
    nop                                           ; $6881: $00
    ldh a, [$A0]                                  ; $6882: $F0 $A0
    ld hl, sp-$10                                 ; $6884: $F8 $F0
    ld hl, sp-$10                                 ; $6886: $F8 $F0
    ld hl, sp-$10                                 ; $6888: $F8 $F0
    ldh a, [$80]                                  ; $688A: $F0 $80
    ldh a, [rP1]                                  ; $688C: $F0 $00
    ld d, b                                       ; $688E: $50
    and b                                         ; $688F: $A0
    dec c                                         ; $6890: $0D
    ld [bc], a                                    ; $6891: $02
    ld b, $01                                     ; $6892: $06 $01
    rlca                                          ; $6894: $07
    nop                                           ; $6895: $00
    rrca                                          ; $6896: $0F
    rlca                                          ; $6897: $07
    rrca                                          ; $6898: $0F
    dec b                                         ; $6899: $05
    rra                                           ; $689A: $1F
    dec b                                         ; $689B: $05
    cpl                                           ; $689C: $2F
    db $10                                        ; $689D: $10
    cpl                                           ; $689E: $2F
    rla                                           ; $689F: $17
    ld d, b                                       ; $68A0: $50
    and b                                         ; $68A1: $A0
    db $10                                        ; $68A2: $10
    ldh [$E0], a                                  ; $68A3: $E0 $E0
    nop                                           ; $68A5: $00
    ldh [$C0], a                                  ; $68A6: $E0 $C0
    ret nz                                        ; $68A8: $C0

    add b                                         ; $68A9: $80
    ldh [$C0], a                                  ; $68AA: $E0 $C0
    ret nc                                        ; $68AC: $D0

    and b                                         ; $68AD: $A0
    sub b                                         ; $68AE: $90
    ld h, b                                       ; $68AF: $60
    ld b, $01                                     ; $68B0: $06 $01
    rlca                                          ; $68B2: $07
    nop                                           ; $68B3: $00
    rrca                                          ; $68B4: $0F
    rlca                                          ; $68B5: $07
    rra                                           ; $68B6: $1F
    rrca                                          ; $68B7: $0F
    rra                                           ; $68B8: $1F
    ld a, [bc]                                    ; $68B9: $0A
    rra                                           ; $68BA: $1F
    dec bc                                        ; $68BB: $0B
    rrca                                          ; $68BC: $0F
    ld [bc], a                                    ; $68BD: $02
    ld c, $05                                     ; $68BE: $0E $05
    db $10                                        ; $68C0: $10
    ldh [$E0], a                                  ; $68C1: $E0 $E0
    nop                                           ; $68C3: $00
    ret nz                                        ; $68C4: $C0

    add b                                         ; $68C5: $80
    ldh [$C0], a                                  ; $68C6: $E0 $C0
    ldh [$C0], a                                  ; $68C8: $E0 $C0
    ldh [rLCDC], a                                ; $68CA: $E0 $40
    ld h, b                                       ; $68CC: $60

jr_00A_68CD:
    add b                                         ; $68CD: $80
    ld h, b                                       ; $68CE: $60
    ret nz                                        ; $68CF: $C0

    dec c                                         ; $68D0: $0D
    ld [bc], a                                    ; $68D1: $02
    ld b, $01                                     ; $68D2: $06 $01
    rlca                                          ; $68D4: $07
    nop                                           ; $68D5: $00
    rrca                                          ; $68D6: $0F
    inc bc                                        ; $68D7: $03
    rrca                                          ; $68D8: $0F
    rlca                                          ; $68D9: $07
    rra                                           ; $68DA: $1F
    ld c, $2F                                     ; $68DB: $0E $2F
    inc d                                         ; $68DD: $14
    daa                                           ; $68DE: $27
    dec de                                        ; $68DF: $1B
    ld d, b                                       ; $68E0: $50
    and b                                         ; $68E1: $A0
    db $10                                        ; $68E2: $10
    ldh [$E0], a                                  ; $68E3: $E0 $E0
    nop                                           ; $68E5: $00
    ret nz                                        ; $68E6: $C0

    add b                                         ; $68E7: $80
    ret nz                                        ; $68E8: $C0

    add b                                         ; $68E9: $80
    ldh [$80], a                                  ; $68EA: $E0 $80
    ret nc                                        ; $68EC: $D0

    jr nz, @-$2E                                  ; $68ED: $20 $D0

    and b                                         ; $68EF: $A0
    rra                                           ; $68F0: $1F
    nop                                           ; $68F1: $00
    rrca                                          ; $68F2: $0F
    rlca                                          ; $68F3: $07
    rra                                           ; $68F4: $1F
    rrca                                          ; $68F5: $0F
    ccf                                           ; $68F6: $3F
    rra                                           ; $68F7: $1F
    ld e, a                                       ; $68F8: $5F
    inc l                                         ; $68F9: $2C
    ld c, l                                       ; $68FA: $4D
    ld [hl-], a                                   ; $68FB: $32
    ld h, c                                       ; $68FC: $61
    ld e, $7F                                     ; $68FD: $1E $7F
    nop                                           ; $68FF: $00
    ldh [rP1], a                                  ; $6900: $E0 $00
    ldh [$80], a                                  ; $6902: $E0 $80
    ld hl, sp-$80                                 ; $6904: $F8 $80
    db $E4                                        ; $6906: $E4
    jr jr_00A_68CD                                ; $6907: $18 $C4

    cp b                                          ; $6909: $B8
    ret z                                         ; $690A: $C8

    or b                                          ; $690B: $B0
    cp b                                          ; $690C: $B8
    ld b, b                                       ; $690D: $40
    ldh [rP1], a                                  ; $690E: $E0 $00
    rlca                                          ; $6910: $07
    nop                                           ; $6911: $00
    rrca                                          ; $6912: $0F
    rlca                                          ; $6913: $07
    rra                                           ; $6914: $1F
    rrca                                          ; $6915: $0F
    rra                                           ; $6916: $1F
    rrca                                          ; $6917: $0F
    ccf                                           ; $6918: $3F
    db $10                                        ; $6919: $10
    jr c, @+$09                                   ; $691A: $38 $07

    jr nc, jr_00A_692D                            ; $691C: $30 $0F

    rra                                           ; $691E: $1F
    nop                                           ; $691F: $00
    ldh [rP1], a                                  ; $6920: $E0 $00
    ldh [$C0], a                                  ; $6922: $E0 $C0
    ldh [$C0], a                                  ; $6924: $E0 $C0
    ldh [$80], a                                  ; $6926: $E0 $80
    ret nc                                        ; $6928: $D0

    jr nz, @+$52                                  ; $6929: $20 $50

    and b                                         ; $692B: $A0
    ld [hl], b                                    ; $692C: $70

jr_00A_692D:
    add b                                         ; $692D: $80
    ret nz                                        ; $692E: $C0

    nop                                           ; $692F: $00
    rra                                           ; $6930: $1F
    nop                                           ; $6931: $00
    rrca                                          ; $6932: $0F
    rlca                                          ; $6933: $07
    rra                                           ; $6934: $1F
    rrca                                          ; $6935: $0F
    ccf                                           ; $6936: $3F
    dec bc                                        ; $6937: $0B
    ld e, a                                       ; $6938: $5F
    ld hl, $3C43                                  ; $6939: $21 $43 $3C
    ld h, c                                       ; $693C: $61
    ld e, $7F                                     ; $693D: $1E $7F
    nop                                           ; $693F: $00
    ldh [rP1], a                                  ; $6940: $E0 $00
    ret nz                                        ; $6942: $C0

    add b                                         ; $6943: $80
    ld hl, sp-$40                                 ; $6944: $F8 $C0
    db $E4                                        ; $6946: $E4
    ret c                                         ; $6947: $D8

    call nz, $C8B8                                ; $6948: $C4 $B8 $C8
    or b                                          ; $694B: $B0
    cp b                                          ; $694C: $B8
    ld b, b                                       ; $694D: $40
    ldh [rP1], a                                  ; $694E: $E0 $00
    inc bc                                        ; $6950: $03
    nop                                           ; $6951: $00
    rlca                                          ; $6952: $07
    inc bc                                        ; $6953: $03
    rrca                                          ; $6954: $0F
    ld b, $1F                                     ; $6955: $06 $1F
    ld c, $3F                                     ; $6957: $0E $3F
    inc e                                         ; $6959: $1C
    ccf                                           ; $695A: $3F
    add hl, de                                    ; $695B: $19
    inc a                                         ; $695C: $3C
    inc de                                        ; $695D: $13
    ld d, $0B                                     ; $695E: $16 $0B
    ldh a, [rP1]                                  ; $6960: $F0 $00
    ld hl, sp-$10                                 ; $6962: $F8 $F0
    db $FC                                        ; $6964: $FC
    add sp, -$04                                  ; $6965: $E8 $FC
    ld [$00FC], sp                                ; $6967: $08 $FC $00
    sbc h                                         ; $696A: $9C
    ld hl, sp-$6C                                 ; $696B: $F8 $94
    ld l, b                                       ; $696D: $68
    ld h, h                                       ; $696E: $64
    ld hl, sp+$07                                 ; $696F: $F8 $07
    nop                                           ; $6971: $00
    rrca                                          ; $6972: $0F
    rlca                                          ; $6973: $07
    rra                                           ; $6974: $1F
    dec c                                         ; $6975: $0D
    rra                                           ; $6976: $1F
    inc c                                         ; $6977: $0C
    rra                                           ; $6978: $1F
    ld [$071E], sp                                ; $6979: $08 $1E $07
    ld a, [de]                                    ; $697C: $1A
    dec c                                         ; $697D: $0D
    add hl, hl                                    ; $697E: $29
    rla                                           ; $697F: $17
    rlca                                          ; $6980: $07
    nop                                           ; $6981: $00
    rrca                                          ; $6982: $0F
    rlca                                          ; $6983: $07
    rra                                           ; $6984: $1F
    rrca                                          ; $6985: $0F
    rra                                           ; $6986: $1F
    rrca                                          ; $6987: $0F
    rra                                           ; $6988: $1F
    rrca                                          ; $6989: $0F
    rra                                           ; $698A: $1F
    rrca                                          ; $698B: $0F
    rra                                           ; $698C: $1F
    dec c                                         ; $698D: $0D
    cpl                                           ; $698E: $2F
    ld d, $03                                     ; $698F: $16 $03
    nop                                           ; $6991: $00
    rlca                                          ; $6992: $07
    inc bc                                        ; $6993: $03
    rrca                                          ; $6994: $0F
    rlca                                          ; $6995: $07
    rra                                           ; $6996: $1F
    rrca                                          ; $6997: $0F
    rra                                           ; $6998: $1F
    rrca                                          ; $6999: $0F
    rra                                           ; $699A: $1F
    rrca                                          ; $699B: $0F
    rra                                           ; $699C: $1F
    ld c, $0F                                     ; $699D: $0E $0F
    ld bc, $00F0                                  ; $699F: $01 $F0 $00
    ld hl, sp-$10                                 ; $69A2: $F8 $F0
    db $FC                                        ; $69A4: $FC
    ld hl, sp-$04                                 ; $69A5: $F8 $FC
    ld hl, sp-$04                                 ; $69A7: $F8 $FC
    ldh a, [$F4]                                  ; $69A9: $F0 $F4
    add sp, -$0A                                  ; $69AB: $E8 $F6
    db $EC                                        ; $69AD: $EC
    xor $D4                                       ; $69AE: $EE $D4
    ccf                                           ; $69B0: $3F
    inc de                                        ; $69B1: $13
    scf                                           ; $69B2: $37
    add hl, bc                                    ; $69B3: $09
    rla                                           ; $69B4: $17
    ld [$081F], sp                                ; $69B5: $08 $1F $08
    inc de                                        ; $69B8: $13
    inc c                                         ; $69B9: $0C
    inc de                                        ; $69BA: $13
    inc c                                         ; $69BB: $0C
    rra                                           ; $69BC: $1F
    nop                                           ; $69BD: $00
    rrca                                          ; $69BE: $0F
    nop                                           ; $69BF: $00
    db $FC                                        ; $69C0: $FC
    ld hl, sp-$04                                 ; $69C1: $F8 $FC
    ld hl, sp-$04                                 ; $69C3: $F8 $FC
    ld hl, sp-$04                                 ; $69C5: $F8 $FC
    ldh a, [$FA]                                  ; $69C7: $F0 $FA
    db $F4                                        ; $69C9: $F4
    ld a, [$FCF4]                                 ; $69CA: $FA $F4 $FC
    ldh a, [$F8]                                  ; $69CD: $F0 $F8
    ldh [$1F], a                                  ; $69CF: $E0 $1F
    rlca                                          ; $69D1: $07
    cpl                                           ; $69D2: $2F
    rla                                           ; $69D3: $17
    cpl                                           ; $69D4: $2F
    rla                                           ; $69D5: $17
    ccf                                           ; $69D6: $3F
    rla                                           ; $69D7: $17
    daa                                           ; $69D8: $27
    dec de                                        ; $69D9: $1B
    daa                                           ; $69DA: $27
    dec de                                        ; $69DB: $1B
    ccf                                           ; $69DC: $3F
    inc bc                                        ; $69DD: $03
    ccf                                           ; $69DE: $3F
    ld bc, $0F1F                                  ; $69DF: $01 $1F $0F
    rra                                           ; $69E2: $1F
    rrca                                          ; $69E3: $0F
    rra                                           ; $69E4: $1F
    rrca                                          ; $69E5: $0F
    rra                                           ; $69E6: $1F
    rrca                                          ; $69E7: $0F
    rra                                           ; $69E8: $1F
    rrca                                          ; $69E9: $0F
    rra                                           ; $69EA: $1F
    rrca                                          ; $69EB: $0F
    rra                                           ; $69EC: $1F
    rrca                                          ; $69ED: $0F
    rra                                           ; $69EE: $1F
    rlca                                          ; $69EF: $07
    cp $CC                                        ; $69F0: $FE $CC
    xor $94                                       ; $69F2: $EE $94
    xor $14                                       ; $69F4: $EE $14
    db $FC                                        ; $69F6: $FC
    db $10                                        ; $69F7: $10
    call z, $CC30                                 ; $69F8: $CC $30 $CC
    jr nc, @-$02                                  ; $69FB: $30 $FC

    nop                                           ; $69FD: $00
    db $FC                                        ; $69FE: $FC
    jr jr_00A_6A2A                                ; $69FF: $18 $29

    rla                                           ; $6A01: $17
    rra                                           ; $6A02: $1F
    rlca                                          ; $6A03: $07
    cpl                                           ; $6A04: $2F
    rla                                           ; $6A05: $17
    cpl                                           ; $6A06: $2F
    rla                                           ; $6A07: $17
    ccf                                           ; $6A08: $3F
    inc de                                        ; $6A09: $13
    inc sp                                        ; $6A0A: $33
    dec c                                         ; $6A0B: $0D
    inc sp                                        ; $6A0C: $33
    dec c                                         ; $6A0D: $0D
    ccf                                           ; $6A0E: $3F
    inc bc                                        ; $6A0F: $03
    sub h                                         ; $6A10: $94
    add sp, -$08                                  ; $6A11: $E8 $F8
    ldh [$F4], a                                  ; $6A13: $E0 $F4
    add sp, -$0C                                  ; $6A15: $E8 $F4
    add sp, -$04                                  ; $6A17: $E8 $FC
    add sp, -$04                                  ; $6A19: $E8 $FC
    ldh [$FC], a                                  ; $6A1B: $E0 $FC
    ret nz                                        ; $6A1D: $C0

    db $FC                                        ; $6A1E: $FC
    ret z                                         ; $6A1F: $C8

    cpl                                           ; $6A20: $2F
    ld d, $1F                                     ; $6A21: $16 $1F
    rlca                                          ; $6A23: $07
    cpl                                           ; $6A24: $2F
    rla                                           ; $6A25: $17
    cpl                                           ; $6A26: $2F
    rla                                           ; $6A27: $17
    ccf                                           ; $6A28: $3F
    rla                                           ; $6A29: $17

jr_00A_6A2A:
    daa                                           ; $6A2A: $27
    dec de                                        ; $6A2B: $1B
    daa                                           ; $6A2C: $27
    dec de                                        ; $6A2D: $1B
    ccf                                           ; $6A2E: $3F
    inc bc                                        ; $6A2F: $03
    db $F4                                        ; $6A30: $F4
    ld l, b                                       ; $6A31: $68
    ld hl, sp-$20                                 ; $6A32: $F8 $E0
    db $F4                                        ; $6A34: $F4
    add sp, -$0C                                  ; $6A35: $E8 $F4
    add sp, -$0C                                  ; $6A37: $E8 $F4
    add sp, -$04                                  ; $6A39: $E8 $FC
    ret z                                         ; $6A3B: $C8

    db $FC                                        ; $6A3C: $FC
    ret nz                                        ; $6A3D: $C0

    db $FC                                        ; $6A3E: $FC
    ret nz                                        ; $6A3F: $C0

    rrca                                          ; $6A40: $0F
    ld b, $0F                                     ; $6A41: $06 $0F
    rlca                                          ; $6A43: $07
    rra                                           ; $6A44: $1F
    rrca                                          ; $6A45: $0F
    rra                                           ; $6A46: $1F
    rrca                                          ; $6A47: $0F
    rra                                           ; $6A48: $1F
    rrca                                          ; $6A49: $0F
    jr nc, jr_00A_6A6B                            ; $6A4A: $30 $1F

    ld a, a                                       ; $6A4C: $7F
    ccf                                           ; $6A4D: $3F
    ccf                                           ; $6A4E: $3F
    nop                                           ; $6A4F: $00
    ld hl, sp+$60                                 ; $6A50: $F8 $60
    ld hl, sp+$60                                 ; $6A52: $F8 $60
    ld hl, sp-$80                                 ; $6A54: $F8 $80
    ld hl, sp-$10                                 ; $6A56: $F8 $F0
    call z, $3CF8                                 ; $6A58: $CC $F8 $3C
    ld hl, sp-$04                                 ; $6A5B: $F8 $FC
    ret nz                                        ; $6A5D: $C0

    ldh [rP1], a                                  ; $6A5E: $E0 $00
    ccf                                           ; $6A60: $3F
    add hl, de                                    ; $6A61: $19
    ccf                                           ; $6A62: $3F
    dec e                                         ; $6A63: $1D
    ccf                                           ; $6A64: $3F
    ld e, $7F                                     ; $6A65: $1E $7F
    ccf                                           ; $6A67: $3F
    ld e, a                                       ; $6A68: $5F
    ccf                                           ; $6A69: $3F
    ld h, b                                       ; $6A6A: $60

jr_00A_6A6B:
    ccf                                           ; $6A6B: $3F
    ccf                                           ; $6A6C: $3F
    rra                                           ; $6A6D: $1F
    rra                                           ; $6A6E: $1F
    nop                                           ; $6A6F: $00
    rra                                           ; $6A70: $1F
    ld b, $1F                                     ; $6A71: $06 $1F
    ld b, $1F                                     ; $6A73: $06 $1F
    add hl, bc                                    ; $6A75: $09
    rra                                           ; $6A76: $1F
    rrca                                          ; $6A77: $0F
    rra                                           ; $6A78: $1F
    rrca                                          ; $6A79: $0F
    jr nc, jr_00A_6A9B                            ; $6A7A: $30 $1F

    ld a, a                                       ; $6A7C: $7F
    ccf                                           ; $6A7D: $3F
    ccf                                           ; $6A7E: $3F
    nop                                           ; $6A7F: $00
    db $FC                                        ; $6A80: $FC
    ld hl, sp-$04                                 ; $6A81: $F8 $FC
    ld hl, sp-$08                                 ; $6A83: $F8 $F8
    ldh a, [$F8]                                  ; $6A85: $F0 $F8
    ldh a, [$C4]                                  ; $6A87: $F0 $C4
    ld hl, sp+$3C                                 ; $6A89: $F8 $3C
    ld hl, sp-$08                                 ; $6A8B: $F8 $F8
    ret nz                                        ; $6A8D: $C0

    ldh [rP1], a                                  ; $6A8E: $E0 $00
    ccf                                           ; $6A90: $3F
    inc de                                        ; $6A91: $13
    ccf                                           ; $6A92: $3F
    dec de                                        ; $6A93: $1B
    ccf                                           ; $6A94: $3F
    inc e                                         ; $6A95: $1C
    ld a, a                                       ; $6A96: $7F
    ccf                                           ; $6A97: $3F
    ld e, a                                       ; $6A98: $5F
    ccf                                           ; $6A99: $3F
    ld h, b                                       ; $6A9A: $60

jr_00A_6A9B:
    ccf                                           ; $6A9B: $3F
    ccf                                           ; $6A9C: $3F
    rra                                           ; $6A9D: $1F
    rra                                           ; $6A9E: $1F
    nop                                           ; $6A9F: $00
    db $FC                                        ; $6AA0: $FC
    sbc b                                         ; $6AA1: $98
    db $FC                                        ; $6AA2: $FC
    ld a, b                                       ; $6AA3: $78
    db $FC                                        ; $6AA4: $FC
    ld hl, sp-$02                                 ; $6AA5: $F8 $FE
    db $FC                                        ; $6AA7: $FC
    ld a, [$06FC]                                 ; $6AA8: $FA $FC $06
    db $FC                                        ; $6AAB: $FC
    db $FC                                        ; $6AAC: $FC
    ld hl, sp-$08                                 ; $6AAD: $F8 $F8
    nop                                           ; $6AAF: $00
    ld bc, $0300                                  ; $6AB0: $01 $00 $03
    ld bc, $0307                                  ; $6AB3: $01 $07 $03
    rrca                                          ; $6AB6: $0F
    rlca                                          ; $6AB7: $07
    rra                                           ; $6AB8: $1F
    rrca                                          ; $6AB9: $0F
    rra                                           ; $6ABA: $1F
    inc c                                         ; $6ABB: $0C
    rra                                           ; $6ABC: $1F
    rrca                                          ; $6ABD: $0F
    rrca                                          ; $6ABE: $0F
    rlca                                          ; $6ABF: $07
    ldh a, [rP1]                                  ; $6AC0: $F0 $00
    ld hl, sp-$10                                 ; $6AC2: $F8 $F0
    db $FC                                        ; $6AC4: $FC
    add sp, -$04                                  ; $6AC5: $E8 $FC
    add b                                         ; $6AC7: $80
    db $FC                                        ; $6AC8: $FC
    nop                                           ; $6AC9: $00
    or h                                          ; $6ACA: $B4
    ld hl, sp-$6C                                 ; $6ACB: $F8 $94
    add sp, -$1C                                  ; $6ACD: $E8 $E4
    ld hl, sp+$0F                                 ; $6ACF: $F8 $0F
    rlca                                          ; $6AD1: $07
    rra                                           ; $6AD2: $1F
    ld c, $1F                                     ; $6AD3: $0E $1F
    inc c                                         ; $6AD5: $0C
    ld a, $19                                     ; $6AD6: $3E $19
    ccf                                           ; $6AD8: $3F
    ld [de], a                                    ; $6AD9: $12
    add hl, sp                                    ; $6ADA: $39
    ld d, $39                                     ; $6ADB: $16 $39
    ld d, $3F                                     ; $6ADD: $16 $3F
    ld de, $F8E4                                  ; $6ADF: $11 $E4 $F8
    db $FC                                        ; $6AE2: $FC
    ld a, b                                       ; $6AE3: $78
    ld a, h                                       ; $6AE4: $7C

jr_00A_6AE5:
    cp b                                          ; $6AE5: $B8
    db $FC                                        ; $6AE6: $FC

jr_00A_6AE7:
    jr jr_00A_6AE5                                ; $6AE7: $18 $FC

jr_00A_6AE9:
    jr jr_00A_6AE7                                ; $6AE9: $18 $FC

    jr jr_00A_6AE9                                ; $6AEB: $18 $FC

    ret c                                         ; $6AED: $D8

    cp $EC                                        ; $6AEE: $FE $EC
    rra                                           ; $6AF0: $1F
    ld c, $1F                                     ; $6AF1: $0E $1F
    inc c                                         ; $6AF3: $0C
    ccf                                           ; $6AF4: $3F
    jr jr_00A_6B36                                ; $6AF5: $18 $3F

jr_00A_6AF7:
    db $10                                        ; $6AF7: $10
    ccf                                           ; $6AF8: $3F

jr_00A_6AF9:
    db $10                                        ; $6AF9: $10
    ld a, $11                                     ; $6AFA: $3E $11
    ld a, $11                                     ; $6AFC: $3E $11
    rra                                           ; $6AFE: $1F
    inc b                                         ; $6AFF: $04
    db $FC                                        ; $6B00: $FC
    ld a, b                                       ; $6B01: $78
    db $FC                                        ; $6B02: $FC
    jr c, @+$7E                                   ; $6B03: $38 $7C

    sbc b                                         ; $6B05: $98
    ld a, h                                       ; $6B06: $7C
    sbc b                                         ; $6B07: $98
    db $FC                                        ; $6B08: $FC
    sbc b                                         ; $6B09: $98
    ld a, h                                       ; $6B0A: $7C
    sbc b                                         ; $6B0B: $98
    ld a, [hl]                                    ; $6B0C: $7E
    adc h                                         ; $6B0D: $8C
    cp $2C                                        ; $6B0E: $FE $2C
    rrca                                          ; $6B10: $0F
    rlca                                          ; $6B11: $07
    rra                                           ; $6B12: $1F
    ld c, $1F                                     ; $6B13: $0E $1F
    inc c                                         ; $6B15: $0C
    ccf                                           ; $6B16: $3F
    jr jr_00A_6B58                                ; $6B17: $18 $3F

    db $10                                        ; $6B19: $10
    ccf                                           ; $6B1A: $3F
    db $10                                        ; $6B1B: $10
    ccf                                           ; $6B1C: $3F
    inc de                                        ; $6B1D: $13
    ccf                                           ; $6B1E: $3F
    rla                                           ; $6B1F: $17
    db $E4                                        ; $6B20: $E4
    ld hl, sp-$04                                 ; $6B21: $F8 $FC
    ld a, b                                       ; $6B23: $78
    ld a, h                                       ; $6B24: $7C
    cp b                                          ; $6B25: $B8
    cp h                                          ; $6B26: $BC
    ld e, b                                       ; $6B27: $58
    db $FC                                        ; $6B28: $FC
    jr z, jr_00A_6AF7                             ; $6B29: $28 $CC

    jr nc, jr_00A_6AF9                            ; $6B2B: $30 $CC

    or b                                          ; $6B2D: $B0
    cp $CC                                        ; $6B2E: $FE $CC
    rra                                           ; $6B30: $1F
    rlca                                          ; $6B31: $07
    rrca                                          ; $6B32: $0F
    rlca                                          ; $6B33: $07
    rra                                           ; $6B34: $1F
    rrca                                          ; $6B35: $0F

jr_00A_6B36:
    rra                                           ; $6B36: $1F
    rrca                                          ; $6B37: $0F
    cpl                                           ; $6B38: $2F
    rra                                           ; $6B39: $1F
    jr nc, @+$21                                  ; $6B3A: $30 $1F

    rra                                           ; $6B3C: $1F
    rrca                                          ; $6B3D: $0F
    rrca                                          ; $6B3E: $0F
    nop                                           ; $6B3F: $00
    cp $EC                                        ; $6B40: $FE $EC
    cp $EC                                        ; $6B42: $FE $EC
    cp $F4                                        ; $6B44: $FE $F4
    cp $F8                                        ; $6B46: $FE $F8
    ld a, [$06FC]                                 ; $6B48: $FA $FC $06
    db $FC                                        ; $6B4B: $FC
    db $FC                                        ; $6B4C: $FC
    ld hl, sp-$08                                 ; $6B4D: $F8 $F8
    nop                                           ; $6B4F: $00
    rrca                                          ; $6B50: $0F
    rlca                                          ; $6B51: $07
    rrca                                          ; $6B52: $0F
    rlca                                          ; $6B53: $07
    rrca                                          ; $6B54: $0F
    rlca                                          ; $6B55: $07
    rra                                           ; $6B56: $1F
    rrca                                          ; $6B57: $0F

jr_00A_6B58:
    rla                                           ; $6B58: $17
    rrca                                          ; $6B59: $0F
    jr jr_00A_6B6B                                ; $6B5A: $18 $0F

    rrca                                          ; $6B5C: $0F
    rlca                                          ; $6B5D: $07
    rlca                                          ; $6B5E: $07
    nop                                           ; $6B5F: $00
    cp $EC                                        ; $6B60: $FE $EC
    cp $F4                                        ; $6B62: $FE $F4
    cp $F8                                        ; $6B64: $FE $F8
    cp $FC                                        ; $6B66: $FE $FC
    ld a, [$06FC]                                 ; $6B68: $FA $FC $06

jr_00A_6B6B:
    db $FC                                        ; $6B6B: $FC
    db $FC                                        ; $6B6C: $FC
    ld hl, sp-$08                                 ; $6B6D: $F8 $F8
    nop                                           ; $6B6F: $00
    rrca                                          ; $6B70: $0F
    nop                                           ; $6B71: $00
    rra                                           ; $6B72: $1F
    rrca                                          ; $6B73: $0F
    ccf                                           ; $6B74: $3F
    rra                                           ; $6B75: $1F
    ld a, a                                       ; $6B76: $7F
    scf                                           ; $6B77: $37
    ld a, l                                       ; $6B78: $7D
    inc hl                                        ; $6B79: $23
    ld a, a                                       ; $6B7A: $7F
    jr nc, jr_00A_6BBC                            ; $6B7B: $30 $3F

    inc e                                         ; $6B7D: $1C
    rra                                           ; $6B7E: $1F
    nop                                           ; $6B7F: $00
    ldh a, [rP1]                                  ; $6B80: $F0 $00
    ld hl, sp-$10                                 ; $6B82: $F8 $F0
    db $FC                                        ; $6B84: $FC
    ld hl, sp-$02                                 ; $6B85: $F8 $FE

jr_00A_6B87:
    db $EC                                        ; $6B87: $EC
    cp [hl]                                       ; $6B88: $BE
    call nz, $0CFE                                ; $6B89: $C4 $FE $0C
    db $FC                                        ; $6B8C: $FC
    jr c, jr_00A_6B87                             ; $6B8D: $38 $F8

    nop                                           ; $6B8F: $00
    ccf                                           ; $6B90: $3F
    dec de                                        ; $6B91: $1B
    ld a, a                                       ; $6B92: $7F

jr_00A_6B93:
    jr c, jr_00A_6B93                             ; $6B93: $38 $FE

    ld h, c                                       ; $6B95: $61
    ld l, [hl]                                    ; $6B96: $6E
    ld de, $317E                                  ; $6B97: $11 $7E $31
    rst $38                                       ; $6B9A: $FF
    ld [hl], b                                    ; $6B9B: $70
    rst $28                                       ; $6B9C: $EF
    ld [hl], c                                    ; $6B9D: $71
    ld a, a                                       ; $6B9E: $7F
    inc b                                         ; $6B9F: $04
    ccf                                           ; $6BA0: $3F
    inc c                                         ; $6BA1: $0C
    ccf                                           ; $6BA2: $3F
    inc e                                         ; $6BA3: $1C
    ccf                                           ; $6BA4: $3F
    db $10                                        ; $6BA5: $10
    ld de, $0100                                  ; $6BA6: $11 $00 $01
    nop                                           ; $6BA9: $00
    nop                                           ; $6BAA: $00
    nop                                           ; $6BAB: $00
    nop                                           ; $6BAC: $00
    nop                                           ; $6BAD: $00
    nop                                           ; $6BAE: $00

jr_00A_6BAF:
    nop                                           ; $6BAF: $00
    db $FC                                        ; $6BB0: $FC

jr_00A_6BB1:
    jr nc, jr_00A_6BAF                            ; $6BB1: $30 $FC

    jr c, jr_00A_6BB1                             ; $6BB3: $38 $FC

    ld [$00C8], sp                                ; $6BB5: $08 $C8 $00
    ret nz                                        ; $6BB8: $C0

    nop                                           ; $6BB9: $00
    ret nz                                        ; $6BBA: $C0

    nop                                           ; $6BBB: $00

jr_00A_6BBC:
    ld h, b                                       ; $6BBC: $60
    nop                                           ; $6BBD: $00
    nop                                           ; $6BBE: $00
    nop                                           ; $6BBF: $00
    ccf                                           ; $6BC0: $3F
    inc c                                         ; $6BC1: $0C
    ccf                                           ; $6BC2: $3F
    inc e                                         ; $6BC3: $1C
    ld a, a                                       ; $6BC4: $7F
    jr nz, @+$23                                  ; $6BC5: $20 $21

    nop                                           ; $6BC7: $00
    ld bc, $0000                                  ; $6BC8: $01 $00 $00
    nop                                           ; $6BCB: $00
    nop                                           ; $6BCC: $00
    nop                                           ; $6BCD: $00
    nop                                           ; $6BCE: $00

jr_00A_6BCF:
    nop                                           ; $6BCF: $00
    db $FC                                        ; $6BD0: $FC
    jr nc, jr_00A_6BCF                            ; $6BD1: $30 $FC

jr_00A_6BD3:
    jr c, jr_00A_6BD3                             ; $6BD3: $38 $FE

    inc b                                         ; $6BD5: $04
    call nz, $C000                                ; $6BD6: $C4 $00 $C0
    nop                                           ; $6BD9: $00
    ldh a, [rP1]                                  ; $6BDA: $F0 $00
    nop                                           ; $6BDC: $00
    nop                                           ; $6BDD: $00
    nop                                           ; $6BDE: $00
    nop                                           ; $6BDF: $00
    ccf                                           ; $6BE0: $3F
    inc e                                         ; $6BE1: $1C
    ld a, a                                       ; $6BE2: $7F
    inc a                                         ; $6BE3: $3C
    ccf                                           ; $6BE4: $3F
    nop                                           ; $6BE5: $00
    ld bc, $0100                                  ; $6BE6: $01 $00 $01
    nop                                           ; $6BE9: $00
    nop                                           ; $6BEA: $00
    nop                                           ; $6BEB: $00
    nop                                           ; $6BEC: $00
    nop                                           ; $6BED: $00
    nop                                           ; $6BEE: $00
    nop                                           ; $6BEF: $00
    db $FC                                        ; $6BF0: $FC

jr_00A_6BF1:
    jr c, jr_00A_6BF1                             ; $6BF1: $38 $FE

    inc a                                         ; $6BF3: $3C
    db $FC                                        ; $6BF4: $FC
    nop                                           ; $6BF5: $00
    ret nz                                        ; $6BF6: $C0

    nop                                           ; $6BF7: $00

jr_00A_6BF8:
    ret nc                                        ; $6BF8: $D0

    nop                                           ; $6BF9: $00
    ldh [rP1], a                                  ; $6BFA: $E0 $00
    nop                                           ; $6BFC: $00
    nop                                           ; $6BFD: $00
    nop                                           ; $6BFE: $00
    nop                                           ; $6BFF: $00
    ld a, a                                       ; $6C00: $7F
    nop                                           ; $6C01: $00
    rst $38                                       ; $6C02: $FF
    ld a, a                                       ; $6C03: $7F
    ld a, a                                       ; $6C04: $7F
    cpl                                           ; $6C05: $2F
    ccf                                           ; $6C06: $3F
    dec e                                         ; $6C07: $1D
    ccf                                           ; $6C08: $3F
    jr jr_00A_6C4A                                ; $6C09: $18 $3F

    inc e                                         ; $6C0B: $1C
    rra                                           ; $6C0C: $1F
    ld c, $3F                                     ; $6C0D: $0E $3F
    nop                                           ; $6C0F: $00
    ldh a, [rP1]                                  ; $6C10: $F0 $00
    ld hl, sp-$10                                 ; $6C12: $F8 $F0
    db $FC                                        ; $6C14: $FC
    ld hl, sp-$02                                 ; $6C15: $F8 $FE
    db $FC                                        ; $6C17: $FC
    ld l, [hl]                                    ; $6C18: $6E
    db $F4                                        ; $6C19: $F4
    cp $04                                        ; $6C1A: $FE $04
    db $FC                                        ; $6C1C: $FC
    ld [$00F8], sp                                ; $6C1D: $08 $F8 $00
    ld a, a                                       ; $6C20: $7F
    dec a                                         ; $6C21: $3D
    rst $38                                       ; $6C22: $FF
    ld a, b                                       ; $6C23: $78
    ld a, a                                       ; $6C24: $7F
    nop                                           ; $6C25: $00
    ld e, a                                       ; $6C26: $5F
    jr nz, jr_00A_6CA8                            ; $6C27: $20 $7F

jr_00A_6C29:
    jr nc, jr_00A_6CAA                            ; $6C29: $30 $7F

    jr c, jr_00A_6CA4                             ; $6C2B: $38 $77

    jr c, jr_00A_6C6E                             ; $6C2D: $38 $3F

    nop                                           ; $6C2F: $00
    db $FC                                        ; $6C30: $FC
    add sp, -$02                                  ; $6C31: $E8 $FE
    inc c                                         ; $6C33: $0C
    inc a                                         ; $6C34: $3C
    ret nz                                        ; $6C35: $C0

    jr c, jr_00A_6BF8                             ; $6C36: $38 $C0

    ld a, b                                       ; $6C38: $78
    sub b                                         ; $6C39: $90
    db $FC                                        ; $6C3A: $FC
    jr jr_00A_6C29                                ; $6C3B: $18 $EC

    sbc b                                         ; $6C3D: $98
    ld hl, sp+$00                                 ; $6C3E: $F8 $00
    rra                                           ; $6C40: $1F
    inc c                                         ; $6C41: $0C
    rra                                           ; $6C42: $1F
    ld c, $1F                                     ; $6C43: $0E $1F
    inc c                                         ; $6C45: $0C
    dec e                                         ; $6C46: $1D
    ld [$0008], sp                                ; $6C47: $08 $08 $00

jr_00A_6C4A:
    ld bc, $0300                                  ; $6C4A: $01 $00 $03
    nop                                           ; $6C4D: $00
    nop                                           ; $6C4E: $00
    nop                                           ; $6C4F: $00
    ld hl, sp+$10                                 ; $6C50: $F8 $10
    ld hl, sp+$10                                 ; $6C52: $F8 $10
    ld hl, sp+$10                                 ; $6C54: $F8 $10
    ret nc                                        ; $6C56: $D0

    nop                                           ; $6C57: $00
    ret nz                                        ; $6C58: $C0

    nop                                           ; $6C59: $00
    add b                                         ; $6C5A: $80
    nop                                           ; $6C5B: $00
    nop                                           ; $6C5C: $00
    nop                                           ; $6C5D: $00
    nop                                           ; $6C5E: $00
    nop                                           ; $6C5F: $00
    rra                                           ; $6C60: $1F
    inc c                                         ; $6C61: $0C
    rra                                           ; $6C62: $1F
    ld c, $1F                                     ; $6C63: $0E $1F
    inc c                                         ; $6C65: $0C
    dec a                                         ; $6C66: $3D
    db $10                                        ; $6C67: $10
    ld de, $0300                                  ; $6C68: $11 $00 $03
    nop                                           ; $6C6B: $00
    nop                                           ; $6C6C: $00
    nop                                           ; $6C6D: $00

jr_00A_6C6E:
    nop                                           ; $6C6E: $00
    nop                                           ; $6C6F: $00
    ld hl, sp+$10                                 ; $6C70: $F8 $10
    ld hl, sp+$10                                 ; $6C72: $F8 $10
    db $FC                                        ; $6C74: $FC
    ld [$00C8], sp                                ; $6C75: $08 $C8 $00
    ret nz                                        ; $6C78: $C0

    nop                                           ; $6C79: $00
    add b                                         ; $6C7A: $80
    nop                                           ; $6C7B: $00
    nop                                           ; $6C7C: $00
    nop                                           ; $6C7D: $00
    nop                                           ; $6C7E: $00
    nop                                           ; $6C7F: $00
    rra                                           ; $6C80: $1F
    inc c                                         ; $6C81: $0C
    rra                                           ; $6C82: $1F
    ld c, $3F                                     ; $6C83: $0E $3F
    inc e                                         ; $6C85: $1C
    dec e                                         ; $6C86: $1D
    nop                                           ; $6C87: $00
    rrca                                          ; $6C88: $0F
    nop                                           ; $6C89: $00
    nop                                           ; $6C8A: $00
    nop                                           ; $6C8B: $00
    nop                                           ; $6C8C: $00

jr_00A_6C8D:
    nop                                           ; $6C8D: $00
    nop                                           ; $6C8E: $00
    nop                                           ; $6C8F: $00
    ld hl, sp+$10                                 ; $6C90: $F8 $10
    db $FC                                        ; $6C92: $FC
    jr jr_00A_6C8D                                ; $6C93: $18 $F8

    nop                                           ; $6C95: $00
    ret nz                                        ; $6C96: $C0

    nop                                           ; $6C97: $00
    add b                                         ; $6C98: $80
    nop                                           ; $6C99: $00
    nop                                           ; $6C9A: $00
    nop                                           ; $6C9B: $00
    nop                                           ; $6C9C: $00
    nop                                           ; $6C9D: $00
    nop                                           ; $6C9E: $00
    nop                                           ; $6C9F: $00
    ld a, a                                       ; $6CA0: $7F
    nop                                           ; $6CA1: $00
    rst $38                                       ; $6CA2: $FF
    ld a, a                                       ; $6CA3: $7F

jr_00A_6CA4:
    ld a, a                                       ; $6CA4: $7F
    ccf                                           ; $6CA5: $3F
    ccf                                           ; $6CA6: $3F
    dec de                                        ; $6CA7: $1B

jr_00A_6CA8:
    ccf                                           ; $6CA8: $3F
    rlca                                          ; $6CA9: $07

jr_00A_6CAA:
    ccf                                           ; $6CAA: $3F
    rra                                           ; $6CAB: $1F
    rra                                           ; $6CAC: $1F
    rrca                                          ; $6CAD: $0F
    ccf                                           ; $6CAE: $3F
    nop                                           ; $6CAF: $00
    ldh a, [rP1]                                  ; $6CB0: $F0 $00
    db $FC                                        ; $6CB2: $FC
    ldh a, [$FE]                                  ; $6CB3: $F0 $FE
    db $FC                                        ; $6CB5: $FC
    rst $38                                       ; $6CB6: $FF
    cp $FE                                        ; $6CB7: $FE $FE
    db $FC                                        ; $6CB9: $FC
    cp $FC                                        ; $6CBA: $FE $FC
    db $FC                                        ; $6CBC: $FC
    ld hl, sp-$08                                 ; $6CBD: $F8 $F8
    nop                                           ; $6CBF: $00
    ld a, a                                       ; $6CC0: $7F
    jr nc, jr_00A_6D02                            ; $6CC1: $30 $3F

    ld c, $7F                                     ; $6CC3: $0E $7F
    ccf                                           ; $6CC5: $3F
    ld a, a                                       ; $6CC6: $7F
    ccf                                           ; $6CC7: $3F
    ld a, a                                       ; $6CC8: $7F
    ccf                                           ; $6CC9: $3F
    ld a, a                                       ; $6CCA: $7F
    ccf                                           ; $6CCB: $3F
    rst $38                                       ; $6CCC: $FF
    ld a, e                                       ; $6CCD: $7B
    rst $38                                       ; $6CCE: $FF
    ld a, a                                       ; $6CCF: $7F
    ldh a, [$E0]                                  ; $6CD0: $F0 $E0
    ld hl, sp-$10                                 ; $6CD2: $F8 $F0
    ld hl, sp+$70                                 ; $6CD4: $F8 $70
    ldh a, [rP1]                                  ; $6CD6: $F0 $00
    or b                                          ; $6CD8: $B0
    ld h, b                                       ; $6CD9: $60
    ld hl, sp+$70                                 ; $6CDA: $F8 $70
    add sp, $30                                   ; $6CDC: $E8 $30
    ldh a, [rP1]                                  ; $6CDE: $F0 $00
    rst $38                                       ; $6CE0: $FF
    ld l, a                                       ; $6CE1: $6F
    rst $38                                       ; $6CE2: $FF
    ld a, a                                       ; $6CE3: $7F
    rst $38                                       ; $6CE4: $FF
    ld h, e                                       ; $6CE5: $63
    ld h, e                                       ; $6CE6: $63
    ld bc, $0003                                  ; $6CE7: $01 $03 $00
    rlca                                          ; $6CEA: $07
    nop                                           ; $6CEB: $00
    ld c, $00                                     ; $6CEC: $0E $00
    nop                                           ; $6CEE: $00
    nop                                           ; $6CEF: $00
    ldh [rP1], a                                  ; $6CF0: $E0 $00
    ldh [rP1], a                                  ; $6CF2: $E0 $00
    ldh [rP1], a                                  ; $6CF4: $E0 $00
    ret nz                                        ; $6CF6: $C0

    add b                                         ; $6CF7: $80
    ret nz                                        ; $6CF8: $C0

    add b                                         ; $6CF9: $80
    add b                                         ; $6CFA: $80
    nop                                           ; $6CFB: $00
    nop                                           ; $6CFC: $00
    nop                                           ; $6CFD: $00
    nop                                           ; $6CFE: $00
    nop                                           ; $6CFF: $00
    rst $38                                       ; $6D00: $FF
    ld l, a                                       ; $6D01: $6F

jr_00A_6D02:
    rst $38                                       ; $6D02: $FF
    ld a, a                                       ; $6D03: $7F
    rst $38                                       ; $6D04: $FF
    jp $01E3                                      ; $6D05: $C3 $E3 $01


    rlca                                          ; $6D08: $07
    nop                                           ; $6D09: $00
    rrca                                          ; $6D0A: $0F
    nop                                           ; $6D0B: $00
    nop                                           ; $6D0C: $00
    nop                                           ; $6D0D: $00
    nop                                           ; $6D0E: $00
    nop                                           ; $6D0F: $00
    ldh [rP1], a                                  ; $6D10: $E0 $00
    ldh [rP1], a                                  ; $6D12: $E0 $00
    ldh [rP1], a                                  ; $6D14: $E0 $00
    ret nz                                        ; $6D16: $C0

    add b                                         ; $6D17: $80
    ldh [rLCDC], a                                ; $6D18: $E0 $40
    ret nz                                        ; $6D1A: $C0

    nop                                           ; $6D1B: $00
    nop                                           ; $6D1C: $00
    nop                                           ; $6D1D: $00
    nop                                           ; $6D1E: $00
    nop                                           ; $6D1F: $00
    rst $38                                       ; $6D20: $FF
    ld l, a                                       ; $6D21: $6F
    rst $38                                       ; $6D22: $FF
    rst $38                                       ; $6D23: $FF
    rst $38                                       ; $6D24: $FF
    add e                                         ; $6D25: $83
    add e                                         ; $6D26: $83
    ld bc, $000F                                  ; $6D27: $01 $0F $00
    rlca                                          ; $6D2A: $07
    nop                                           ; $6D2B: $00
    nop                                           ; $6D2C: $00
    nop                                           ; $6D2D: $00
    nop                                           ; $6D2E: $00
    nop                                           ; $6D2F: $00
    ldh [rP1], a                                  ; $6D30: $E0 $00
    ldh [rP1], a                                  ; $6D32: $E0 $00
    ldh [rP1], a                                  ; $6D34: $E0 $00
    ldh [$C0], a                                  ; $6D36: $E0 $C0
    ret nz                                        ; $6D38: $C0

    nop                                           ; $6D39: $00
    add b                                         ; $6D3A: $80
    nop                                           ; $6D3B: $00
    nop                                           ; $6D3C: $00
    nop                                           ; $6D3D: $00
    nop                                           ; $6D3E: $00
    nop                                           ; $6D3F: $00
    nop                                           ; $6D40: $00
    nop                                           ; $6D41: $00
    nop                                           ; $6D42: $00
    nop                                           ; $6D43: $00
    rra                                           ; $6D44: $1F
    nop                                           ; $6D45: $00
    ld a, a                                       ; $6D46: $7F
    nop                                           ; $6D47: $00
    ccf                                           ; $6D48: $3F
    nop                                           ; $6D49: $00
    rrca                                          ; $6D4A: $0F
    nop                                           ; $6D4B: $00
    nop                                           ; $6D4C: $00
    nop                                           ; $6D4D: $00
    nop                                           ; $6D4E: $00
    nop                                           ; $6D4F: $00
    nop                                           ; $6D50: $00
    nop                                           ; $6D51: $00
    nop                                           ; $6D52: $00
    nop                                           ; $6D53: $00
    rrca                                          ; $6D54: $0F
    nop                                           ; $6D55: $00
    ccf                                           ; $6D56: $3F
    nop                                           ; $6D57: $00
    rra                                           ; $6D58: $1F
    nop                                           ; $6D59: $00
    rlca                                          ; $6D5A: $07
    nop                                           ; $6D5B: $00
    nop                                           ; $6D5C: $00
    nop                                           ; $6D5D: $00
    nop                                           ; $6D5E: $00
    nop                                           ; $6D5F: $00
    nop                                           ; $6D60: $00
    nop                                           ; $6D61: $00
    nop                                           ; $6D62: $00
    nop                                           ; $6D63: $00
    rlca                                          ; $6D64: $07
    nop                                           ; $6D65: $00
    rra                                           ; $6D66: $1F
    nop                                           ; $6D67: $00
    rrca                                          ; $6D68: $0F
    nop                                           ; $6D69: $00
    nop                                           ; $6D6A: $00
    nop                                           ; $6D6B: $00
    nop                                           ; $6D6C: $00
    nop                                           ; $6D6D: $00
    nop                                           ; $6D6E: $00
    nop                                           ; $6D6F: $00
    rrca                                          ; $6D70: $0F
    nop                                           ; $6D71: $00
    rra                                           ; $6D72: $1F
    rrca                                          ; $6D73: $0F
    ccf                                           ; $6D74: $3F
    rra                                           ; $6D75: $1F
    ld a, a                                       ; $6D76: $7F
    ld a, $7F                                     ; $6D77: $3E $7F
    ccf                                           ; $6D79: $3F
    ld a, a                                       ; $6D7A: $7F
    ccf                                           ; $6D7B: $3F
    ccf                                           ; $6D7C: $3F
    rra                                           ; $6D7D: $1F
    rra                                           ; $6D7E: $1F
    nop                                           ; $6D7F: $00
    ldh a, [rP1]                                  ; $6D80: $F0 $00
    ld hl, sp-$10                                 ; $6D82: $F8 $F0
    db $FC                                        ; $6D84: $FC
    ld hl, sp-$02                                 ; $6D85: $F8 $FE
    cp h                                          ; $6D87: $BC
    cp $3C                                        ; $6D88: $FE $3C
    cp $FC                                        ; $6D8A: $FE $FC
    db $FC                                        ; $6D8C: $FC
    ld hl, sp-$08                                 ; $6D8D: $F8 $F8
    nop                                           ; $6D8F: $00
    ccf                                           ; $6D90: $3F
    dec de                                        ; $6D91: $1B
    ld a, a                                       ; $6D92: $7F
    dec sp                                        ; $6D93: $3B
    rst $38                                       ; $6D94: $FF
    ld h, a                                       ; $6D95: $67
    ld a, a                                       ; $6D96: $7F
    rra                                           ; $6D97: $1F
    ld a, a                                       ; $6D98: $7F
    rra                                           ; $6D99: $1F
    rst $38                                       ; $6D9A: $FF
    ld e, a                                       ; $6D9B: $5F
    rst $38                                       ; $6D9C: $FF
    ld e, a                                       ; $6D9D: $5F
    ld a, a                                       ; $6D9E: $7F
    rra                                           ; $6D9F: $1F
    ccf                                           ; $6DA0: $3F
    rra                                           ; $6DA1: $1F
    ccf                                           ; $6DA2: $3F
    inc e                                         ; $6DA3: $1C
    ccf                                           ; $6DA4: $3F
    db $10                                        ; $6DA5: $10
    ld de, $0100                                  ; $6DA6: $11 $00 $01
    nop                                           ; $6DA9: $00
    nop                                           ; $6DAA: $00
    nop                                           ; $6DAB: $00
    nop                                           ; $6DAC: $00
    nop                                           ; $6DAD: $00
    nop                                           ; $6DAE: $00
    nop                                           ; $6DAF: $00
    db $FC                                        ; $6DB0: $FC

jr_00A_6DB1:
    ld hl, sp-$04                                 ; $6DB1: $F8 $FC
    jr c, jr_00A_6DB1                             ; $6DB3: $38 $FC

    ld [$00C8], sp                                ; $6DB5: $08 $C8 $00
    ret nz                                        ; $6DB8: $C0

    nop                                           ; $6DB9: $00
    ret nz                                        ; $6DBA: $C0

    nop                                           ; $6DBB: $00
    ld h, b                                       ; $6DBC: $60
    nop                                           ; $6DBD: $00
    nop                                           ; $6DBE: $00
    nop                                           ; $6DBF: $00
    ccf                                           ; $6DC0: $3F
    rra                                           ; $6DC1: $1F
    ccf                                           ; $6DC2: $3F
    inc e                                         ; $6DC3: $1C
    ld a, a                                       ; $6DC4: $7F
    jr nz, @+$23                                  ; $6DC5: $20 $21

    nop                                           ; $6DC7: $00
    ld bc, $0000                                  ; $6DC8: $01 $00 $00
    nop                                           ; $6DCB: $00
    nop                                           ; $6DCC: $00
    nop                                           ; $6DCD: $00
    nop                                           ; $6DCE: $00
    nop                                           ; $6DCF: $00
    db $FC                                        ; $6DD0: $FC
    ld hl, sp-$04                                 ; $6DD1: $F8 $FC

jr_00A_6DD3:
    jr c, jr_00A_6DD3                             ; $6DD3: $38 $FE

    inc b                                         ; $6DD5: $04
    call nz, $C000                                ; $6DD6: $C4 $00 $C0
    nop                                           ; $6DD9: $00
    ldh a, [rP1]                                  ; $6DDA: $F0 $00
    nop                                           ; $6DDC: $00
    nop                                           ; $6DDD: $00
    nop                                           ; $6DDE: $00
    nop                                           ; $6DDF: $00
    ccf                                           ; $6DE0: $3F
    rra                                           ; $6DE1: $1F
    ld a, a                                       ; $6DE2: $7F
    inc a                                         ; $6DE3: $3C
    ccf                                           ; $6DE4: $3F
    nop                                           ; $6DE5: $00
    ld bc, $0100                                  ; $6DE6: $01 $00 $01
    nop                                           ; $6DE9: $00
    nop                                           ; $6DEA: $00
    nop                                           ; $6DEB: $00
    nop                                           ; $6DEC: $00
    nop                                           ; $6DED: $00
    nop                                           ; $6DEE: $00
    nop                                           ; $6DEF: $00
    db $FC                                        ; $6DF0: $FC
    ld hl, sp-$02                                 ; $6DF1: $F8 $FE
    inc a                                         ; $6DF3: $3C
    db $FC                                        ; $6DF4: $FC
    nop                                           ; $6DF5: $00
    ret nz                                        ; $6DF6: $C0

    nop                                           ; $6DF7: $00
    ret nc                                        ; $6DF8: $D0

    nop                                           ; $6DF9: $00
    ldh [rP1], a                                  ; $6DFA: $E0 $00
    nop                                           ; $6DFC: $00
    nop                                           ; $6DFD: $00
    nop                                           ; $6DFE: $00
    nop                                           ; $6DFF: $00
    rrca                                          ; $6E00: $0F
    nop                                           ; $6E01: $00
    rra                                           ; $6E02: $1F
    rrca                                          ; $6E03: $0F
    ccf                                           ; $6E04: $3F
    rra                                           ; $6E05: $1F
    ld a, a                                       ; $6E06: $7F
    ld a, $7F                                     ; $6E07: $3E $7F
    ccf                                           ; $6E09: $3F
    ld a, a                                       ; $6E0A: $7F
    ccf                                           ; $6E0B: $3F
    ccf                                           ; $6E0C: $3F
    rra                                           ; $6E0D: $1F
    rra                                           ; $6E0E: $1F
    nop                                           ; $6E0F: $00
    ldh a, [rP1]                                  ; $6E10: $F0 $00
    ld hl, sp-$10                                 ; $6E12: $F8 $F0
    db $FC                                        ; $6E14: $FC
    ld hl, sp-$02                                 ; $6E15: $F8 $FE
    cp h                                          ; $6E17: $BC
    cp $3C                                        ; $6E18: $FE $3C
    cp $FC                                        ; $6E1A: $FE $FC
    cp $F8                                        ; $6E1C: $FE $F8
    ei                                            ; $6E1E: $FB
    ld b, $F0                                     ; $6E1F: $06 $F0
    nop                                           ; $6E21: $00
    ld hl, sp-$10                                 ; $6E22: $F8 $F0
    db $FC                                        ; $6E24: $FC
    ld hl, sp-$02                                 ; $6E25: $F8 $FE
    cp h                                          ; $6E27: $BC
    cp $3C                                        ; $6E28: $FE $3C
    cp $FC                                        ; $6E2A: $FE $FC
    db $FC                                        ; $6E2C: $FC
    ld hl, sp-$08                                 ; $6E2D: $F8 $F8
    nop                                           ; $6E2F: $00
    ld a, a                                       ; $6E30: $7F
    jr nc, jr_00A_6E72                            ; $6E31: $30 $3F

    ld c, $7F                                     ; $6E33: $0E $7F
    ld a, $7F                                     ; $6E35: $3E $7F
    ccf                                           ; $6E37: $3F
    ld a, a                                       ; $6E38: $7F
    ccf                                           ; $6E39: $3F
    ld a, a                                       ; $6E3A: $7F
    ccf                                           ; $6E3B: $3F
    rst $38                                       ; $6E3C: $FF
    ld a, e                                       ; $6E3D: $7B
    rst $38                                       ; $6E3E: $FF
    ld a, a                                       ; $6E3F: $7F
    rst $38                                       ; $6E40: $FF
    ld l, [hl]                                    ; $6E41: $6E
    cp $8C                                        ; $6E42: $FE $8C
    call z, $F030                                 ; $6E44: $CC $30 $F0
    nop                                           ; $6E47: $00
    ldh a, [rP1]                                  ; $6E48: $F0 $00
    ldh [rP1], a                                  ; $6E4A: $E0 $00
    ldh [rP1], a                                  ; $6E4C: $E0 $00
    ldh [rP1], a                                  ; $6E4E: $E0 $00
    rra                                           ; $6E50: $1F
    ld c, $3F                                     ; $6E51: $0E $3F
    ld e, $3F                                     ; $6E53: $1E $3F
    dec e                                         ; $6E55: $1D
    rra                                           ; $6E56: $1F
    inc bc                                        ; $6E57: $03
    ld a, a                                       ; $6E58: $7F
    rra                                           ; $6E59: $1F
    rst $38                                       ; $6E5A: $FF
    ld e, a                                       ; $6E5B: $5F
    rst $38                                       ; $6E5C: $FF
    ld e, a                                       ; $6E5D: $5F
    ld a, a                                       ; $6E5E: $7F
    ccf                                           ; $6E5F: $3F
    db $FC                                        ; $6E60: $FC
    ret c                                         ; $6E61: $D8

    cp $DC                                        ; $6E62: $FE $DC
    rst $38                                       ; $6E64: $FF
    and $FE                                       ; $6E65: $E6 $FE
    ld hl, sp-$04                                 ; $6E67: $F8 $FC
    ldh a, [$FC]                                  ; $6E69: $F0 $FC
    add sp, -$0C                                  ; $6E6B: $E8 $F4
    xor b                                         ; $6E6D: $A8
    ld hl, sp-$10                                 ; $6E6E: $F8 $F0
    rst $38                                       ; $6E70: $FF
    ld l, a                                       ; $6E71: $6F

jr_00A_6E72:
    rst $38                                       ; $6E72: $FF
    ld a, a                                       ; $6E73: $7F
    rst $38                                       ; $6E74: $FF
    ld h, e                                       ; $6E75: $63
    ld h, e                                       ; $6E76: $63
    ld bc, $0003                                  ; $6E77: $01 $03 $00
    rlca                                          ; $6E7A: $07
    nop                                           ; $6E7B: $00
    ld c, $00                                     ; $6E7C: $0E $00
    nop                                           ; $6E7E: $00
    nop                                           ; $6E7F: $00
    ldh [rP1], a                                  ; $6E80: $E0 $00
    ldh [rP1], a                                  ; $6E82: $E0 $00
    ldh [rP1], a                                  ; $6E84: $E0 $00
    ret nz                                        ; $6E86: $C0

    add b                                         ; $6E87: $80
    ret nz                                        ; $6E88: $C0

    add b                                         ; $6E89: $80
    add b                                         ; $6E8A: $80
    nop                                           ; $6E8B: $00
    nop                                           ; $6E8C: $00
    nop                                           ; $6E8D: $00
    nop                                           ; $6E8E: $00
    nop                                           ; $6E8F: $00
    rst $38                                       ; $6E90: $FF
    ld a, [hl]                                    ; $6E91: $7E
    rst $38                                       ; $6E92: $FF
    ld a, a                                       ; $6E93: $7F
    rst $38                                       ; $6E94: $FF
    ld h, e                                       ; $6E95: $63
    ld h, e                                       ; $6E96: $63
    ld bc, $0003                                  ; $6E97: $01 $03 $00
    rrca                                          ; $6E9A: $0F
    nop                                           ; $6E9B: $00
    ld b, $00                                     ; $6E9C: $06 $00
    nop                                           ; $6E9E: $00
    nop                                           ; $6E9F: $00
    ld hl, sp-$10                                 ; $6EA0: $F8 $F0
    ld hl, sp-$10                                 ; $6EA2: $F8 $F0
    ld hl, sp-$10                                 ; $6EA4: $F8 $F0
    ld hl, sp-$10                                 ; $6EA6: $F8 $F0
    ld hl, sp+$30                                 ; $6EA8: $F8 $30
    or b                                          ; $6EAA: $B0
    nop                                           ; $6EAB: $00
    nop                                           ; $6EAC: $00
    nop                                           ; $6EAD: $00
    nop                                           ; $6EAE: $00
    nop                                           ; $6EAF: $00
    nop                                           ; $6EB0: $00
    nop                                           ; $6EB1: $00
    nop                                           ; $6EB2: $00
    nop                                           ; $6EB3: $00
    ldh a, [rP1]                                  ; $6EB4: $F0 $00
    db $FC                                        ; $6EB6: $FC
    nop                                           ; $6EB7: $00
    ld hl, sp+$00                                 ; $6EB8: $F8 $00
    ldh [rP1], a                                  ; $6EBA: $E0 $00
    nop                                           ; $6EBC: $00
    nop                                           ; $6EBD: $00
    nop                                           ; $6EBE: $00
    nop                                           ; $6EBF: $00
    nop                                           ; $6EC0: $00
    nop                                           ; $6EC1: $00
    nop                                           ; $6EC2: $00
    nop                                           ; $6EC3: $00
    ldh [rP1], a                                  ; $6EC4: $E0 $00
    ld hl, sp+$00                                 ; $6EC6: $F8 $00
    ldh a, [rP1]                                  ; $6EC8: $F0 $00
    nop                                           ; $6ECA: $00
    nop                                           ; $6ECB: $00
    nop                                           ; $6ECC: $00
    nop                                           ; $6ECD: $00
    nop                                           ; $6ECE: $00
    nop                                           ; $6ECF: $00
    jr nc, jr_00A_6ED2                            ; $6ED0: $30 $00

jr_00A_6ED2:
    ld a, a                                       ; $6ED2: $7F
    jr nz, jr_00A_6F14                            ; $6ED3: $20 $3F

    rra                                           ; $6ED5: $1F
    rra                                           ; $6ED6: $1F
    rrca                                          ; $6ED7: $0F
    ccf                                           ; $6ED8: $3F
    rra                                           ; $6ED9: $1F
    ccf                                           ; $6EDA: $3F
    dec de                                        ; $6EDB: $1B
    ccf                                           ; $6EDC: $3F
    inc e                                         ; $6EDD: $1C
    rra                                           ; $6EDE: $1F
    ld c, $00                                     ; $6EDF: $0E $00
    nop                                           ; $6EE1: $00
    ldh a, [rP1]                                  ; $6EE2: $F0 $00
    ld hl, sp-$10                                 ; $6EE4: $F8 $F0
    db $FC                                        ; $6EE6: $FC
    ld hl, sp-$02                                 ; $6EE7: $F8 $FE
    db $FC                                        ; $6EE9: $FC
    cp $FC                                        ; $6EEA: $FE $FC
    cp $74                                        ; $6EEC: $FE $74
    db $FC                                        ; $6EEE: $FC
    jr nz, jr_00A_6F70                            ; $6EEF: $20 $7F

    nop                                           ; $6EF1: $00
    rst $38                                       ; $6EF2: $FF
    ld a, h                                       ; $6EF3: $7C
    rst $38                                       ; $6EF4: $FF
    ld a, b                                       ; $6EF5: $78
    ld a, a                                       ; $6EF6: $7F
    nop                                           ; $6EF7: $00
    dec sp                                        ; $6EF8: $3B
    dec d                                         ; $6EF9: $15
    ccf                                           ; $6EFA: $3F
    ld de, $103F                                  ; $6EFB: $11 $3F $10
    ccf                                           ; $6EFE: $3F
    nop                                           ; $6EFF: $00
    db $FC                                        ; $6F00: $FC
    nop                                           ; $6F01: $00
    cp $0C                                        ; $6F02: $FE $0C
    cp $0C                                        ; $6F04: $FE $0C
    cp $D0                                        ; $6F06: $FE $D0
    ld a, [$FCD4]                                 ; $6F08: $FA $D4 $FC
    ret nz                                        ; $6F0B: $C0

    ldh a, [rNR41]                                ; $6F0C: $F0 $20
    ld a, [$3F10]                                 ; $6F0E: $FA $10 $3F
    nop                                           ; $6F11: $00
    rra                                           ; $6F12: $1F
    nop                                           ; $6F13: $00

jr_00A_6F14:
    rra                                           ; $6F14: $1F
    ld [$060F], sp                                ; $6F15: $08 $0F $06
    ld c, $04                                     ; $6F18: $0E $04
    inc b                                         ; $6F1A: $04
    nop                                           ; $6F1B: $00
    nop                                           ; $6F1C: $00
    nop                                           ; $6F1D: $00
    nop                                           ; $6F1E: $00
    nop                                           ; $6F1F: $00
    db $FC                                        ; $6F20: $FC
    nop                                           ; $6F21: $00
    cp $04                                        ; $6F22: $FE $04
    rst $38                                       ; $6F24: $FF
    ld c, $EE                                     ; $6F25: $0E $EE
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
    rrca                                          ; $6F34: $0F
    nop                                           ; $6F35: $00
    ccf                                           ; $6F36: $3F
    nop                                           ; $6F37: $00
    rra                                           ; $6F38: $1F
    nop                                           ; $6F39: $00
    rlca                                          ; $6F3A: $07
    nop                                           ; $6F3B: $00
    nop                                           ; $6F3C: $00
    nop                                           ; $6F3D: $00
    nop                                           ; $6F3E: $00
    nop                                           ; $6F3F: $00
    rlca                                          ; $6F40: $07
    nop                                           ; $6F41: $00
    rrca                                          ; $6F42: $0F
    rlca                                          ; $6F43: $07
    rra                                           ; $6F44: $1F
    rrca                                          ; $6F45: $0F
    ccf                                           ; $6F46: $3F
    rra                                           ; $6F47: $1F
    ld a, a                                       ; $6F48: $7F
    dec a                                         ; $6F49: $3D
    ld a, l                                       ; $6F4A: $7D
    ld a, [hl-]                                   ; $6F4B: $3A
    ld a, d                                       ; $6F4C: $7A
    dec [hl]                                      ; $6F4D: $35
    ld a, d                                       ; $6F4E: $7A
    dec [hl]                                      ; $6F4F: $35
    ret nz                                        ; $6F50: $C0

    nop                                           ; $6F51: $00
    ldh [$C0], a                                  ; $6F52: $E0 $C0
    ldh a, [$E0]                                  ; $6F54: $F0 $E0
    ld hl, sp-$10                                 ; $6F56: $F8 $F0
    ld hl, sp-$10                                 ; $6F58: $F8 $F0
    ld hl, sp-$10                                 ; $6F5A: $F8 $F0
    ld hl, sp+$70                                 ; $6F5C: $F8 $70
    ld hl, sp+$70                                 ; $6F5E: $F8 $70
    rlca                                          ; $6F60: $07
    nop                                           ; $6F61: $00
    rrca                                          ; $6F62: $0F
    rlca                                          ; $6F63: $07
    rra                                           ; $6F64: $1F
    rrca                                          ; $6F65: $0F
    ccf                                           ; $6F66: $3F
    rra                                           ; $6F67: $1F
    ccf                                           ; $6F68: $3F
    dec e                                         ; $6F69: $1D
    dec a                                         ; $6F6A: $3D
    ld a, [de]                                    ; $6F6B: $1A
    ld a, [hl-]                                   ; $6F6C: $3A
    dec d                                         ; $6F6D: $15
    ld a, [hl-]                                   ; $6F6E: $3A
    dec d                                         ; $6F6F: $15

jr_00A_6F70:
    ldh [rP1], a                                  ; $6F70: $E0 $00
    ldh a, [$E0]                                  ; $6F72: $F0 $E0
    ld hl, sp-$10                                 ; $6F74: $F8 $F0
    db $FC                                        ; $6F76: $FC
    ld hl, sp-$04                                 ; $6F77: $F8 $FC
    ld hl, sp-$04                                 ; $6F79: $F8 $FC
    ld hl, sp-$04                                 ; $6F7B: $F8 $FC
    ld a, b                                       ; $6F7D: $78
    db $FC                                        ; $6F7E: $FC
    ld a, b                                       ; $6F7F: $78
    rlca                                          ; $6F80: $07
    nop                                           ; $6F81: $00
    rrca                                          ; $6F82: $0F
    rlca                                          ; $6F83: $07
    rra                                           ; $6F84: $1F
    rrca                                          ; $6F85: $0F
    ccf                                           ; $6F86: $3F
    rra                                           ; $6F87: $1F
    ccf                                           ; $6F88: $3F
    rra                                           ; $6F89: $1F
    ccf                                           ; $6F8A: $3F
    rra                                           ; $6F8B: $1F
    ccf                                           ; $6F8C: $3F
    rra                                           ; $6F8D: $1F
    ccf                                           ; $6F8E: $3F
    rra                                           ; $6F8F: $1F
    inc bc                                        ; $6F90: $03
    nop                                           ; $6F91: $00
    rlca                                          ; $6F92: $07
    inc bc                                        ; $6F93: $03
    rrca                                          ; $6F94: $0F
    rlca                                          ; $6F95: $07
    rrca                                          ; $6F96: $0F
    rlca                                          ; $6F97: $07
    rrca                                          ; $6F98: $0F
    rlca                                          ; $6F99: $07
    rra                                           ; $6F9A: $1F
    rrca                                          ; $6F9B: $0F
    rra                                           ; $6F9C: $1F
    rrca                                          ; $6F9D: $0F
    rra                                           ; $6F9E: $1F
    rrca                                          ; $6F9F: $0F
    ld hl, sp+$00                                 ; $6FA0: $F8 $00
    db $FC                                        ; $6FA2: $FC
    ld hl, sp-$02                                 ; $6FA3: $F8 $FE
    db $FC                                        ; $6FA5: $FC
    cp $FC                                        ; $6FA6: $FE $FC
    cp $F4                                        ; $6FA8: $FE $F4
    cp $E4                                        ; $6FAA: $FE $E4
    db $EC                                        ; $6FAC: $EC
    ret nc                                        ; $6FAD: $D0

    add sp, -$30                                  ; $6FAE: $E8 $D0
    ld a, h                                       ; $6FB0: $7C
    dec sp                                        ; $6FB1: $3B
    ld a, a                                       ; $6FB2: $7F
    jr c, jr_00A_7030                             ; $6FB3: $38 $7B

    inc [hl]                                      ; $6FB5: $34
    ccf                                           ; $6FB6: $3F
    inc d                                         ; $6FB7: $14
    ccf                                           ; $6FB8: $3F
    inc d                                         ; $6FB9: $14
    ld e, $0D                                     ; $6FBA: $1E $0D
    ld e, $0D                                     ; $6FBC: $1E $0D
    rrca                                          ; $6FBE: $0F
    nop                                           ; $6FBF: $00
    ld a, b                                       ; $6FC0: $78
    or b                                          ; $6FC1: $B0
    ld hl, sp+$30                                 ; $6FC2: $F8 $30
    ld [hl], b                                    ; $6FC4: $70
    and b                                         ; $6FC5: $A0
    ldh a, [rNR41]                                ; $6FC6: $F0 $20
    ldh [rP1], a                                  ; $6FC8: $E0 $00
    ld [hl], b                                    ; $6FCA: $70
    and b                                         ; $6FCB: $A0
    ld h, b                                       ; $6FCC: $60
    add b                                         ; $6FCD: $80
    ret nz                                        ; $6FCE: $C0

    nop                                           ; $6FCF: $00
    inc a                                         ; $6FD0: $3C
    inc de                                        ; $6FD1: $13
    ccf                                           ; $6FD2: $3F
    db $10                                        ; $6FD3: $10
    ld a, [de]                                    ; $6FD4: $1A
    dec b                                         ; $6FD5: $05
    dec bc                                        ; $6FD6: $0B
    inc b                                         ; $6FD7: $04
    rrca                                          ; $6FD8: $0F
    inc b                                         ; $6FD9: $04
    ld c, $05                                     ; $6FDA: $0E $05
    ld e, $0D                                     ; $6FDC: $1E $0D
    rra                                           ; $6FDE: $1F
    inc c                                         ; $6FDF: $0C
    ld a, h                                       ; $6FE0: $7C
    cp b                                          ; $6FE1: $B8
    ld hl, sp+$30                                 ; $6FE2: $F8 $30
    ld a, b                                       ; $6FE4: $78
    or b                                          ; $6FE5: $B0
    ldh a, [rNR41]                                ; $6FE6: $F0 $20
    ldh a, [rP1]                                  ; $6FE8: $F0 $00
    ld [hl], b                                    ; $6FEA: $70
    and b                                         ; $6FEB: $A0
    ld a, b                                       ; $6FEC: $78
    or b                                          ; $6FED: $B0
    ld hl, sp+$30                                 ; $6FEE: $F8 $30
    rra                                           ; $6FF0: $1F
    rrca                                          ; $6FF1: $0F
    rrca                                          ; $6FF2: $0F
    rlca                                          ; $6FF3: $07
    rrca                                          ; $6FF4: $0F
    rlca                                          ; $6FF5: $07
    rrca                                          ; $6FF6: $0F
    inc bc                                        ; $6FF7: $03
    rrca                                          ; $6FF8: $0F
    dec b                                         ; $6FF9: $05
    rrca                                          ; $6FFA: $0F
    dec b                                         ; $6FFB: $05
    rra                                           ; $6FFC: $1F
    inc c                                         ; $6FFD: $0C
    rra                                           ; $6FFE: $1F
    inc c                                         ; $6FFF: $0C
    ld hl, sp-$10                                 ; $7000: $F8 $F0
    ldh a, [$E0]                                  ; $7002: $F0 $E0
    ldh a, [$E0]                                  ; $7004: $F0 $E0
    ldh a, [$E0]                                  ; $7006: $F0 $E0
    ldh a, [$E0]                                  ; $7008: $F0 $E0
    ldh a, [$C0]                                  ; $700A: $F0 $C0
    ld hl, sp-$30                                 ; $700C: $F8 $D0
    ld hl, sp+$30                                 ; $700E: $F8 $30
    rra                                           ; $7010: $1F
    rrca                                          ; $7011: $0F
    rrca                                          ; $7012: $0F
    rlca                                          ; $7013: $07
    rrca                                          ; $7014: $0F
    rlca                                          ; $7015: $07
    rrca                                          ; $7016: $0F
    rlca                                          ; $7017: $07
    rlca                                          ; $7018: $07
    inc bc                                        ; $7019: $03
    inc bc                                        ; $701A: $03
    ld bc, $0003                                  ; $701B: $01 $03 $00
    inc bc                                        ; $701E: $03
    nop                                           ; $701F: $00
    ldh a, [$80]                                  ; $7020: $F0 $80
    ldh [$80], a                                  ; $7022: $E0 $80
    or b                                          ; $7024: $B0
    ld b, b                                       ; $7025: $40
    ldh a, [rLCDC]                                ; $7026: $F0 $40
    ldh a, [rLCDC]                                ; $7028: $F0 $40
    ldh a, [$60]                                  ; $702A: $F0 $60
    ldh a, [$60]                                  ; $702C: $F0 $60
    ldh [rP1], a                                  ; $702E: $E0 $00

jr_00A_7030:
    ld a, [hl-]                                   ; $7030: $3A
    dec d                                         ; $7031: $15
    inc a                                         ; $7032: $3C
    inc de                                        ; $7033: $13
    ccf                                           ; $7034: $3F
    db $10                                        ; $7035: $10
    ld e, $01                                     ; $7036: $1E $01
    dec bc                                        ; $7038: $0B
    inc b                                         ; $7039: $04
    rrca                                          ; $703A: $0F
    inc b                                         ; $703B: $04
    ld c, $05                                     ; $703C: $0E $05
    rrca                                          ; $703E: $0F
    ld b, $FC                                     ; $703F: $06 $FC
    ld a, b                                       ; $7041: $78
    ld a, h                                       ; $7042: $7C
    cp b                                          ; $7043: $B8
    ld hl, sp+$30                                 ; $7044: $F8 $30
    ld a, b                                       ; $7046: $78
    or b                                          ; $7047: $B0
    ldh a, [rNR41]                                ; $7048: $F0 $20
    ldh a, [rP1]                                  ; $704A: $F0 $00
    ld [hl], b                                    ; $704C: $70
    and b                                         ; $704D: $A0
    ld [hl], b                                    ; $704E: $70
    and b                                         ; $704F: $A0
    ld a, [hl-]                                   ; $7050: $3A
    dec d                                         ; $7051: $15
    inc a                                         ; $7052: $3C
    inc de                                        ; $7053: $13
    ccf                                           ; $7054: $3F
    db $10                                        ; $7055: $10
    ld e, $01                                     ; $7056: $1E $01
    dec bc                                        ; $7058: $0B
    inc b                                         ; $7059: $04
    dec bc                                        ; $705A: $0B
    inc b                                         ; $705B: $04
    ld c, $05                                     ; $705C: $0E $05
    ld c, $05                                     ; $705E: $0E $05
    db $FC                                        ; $7060: $FC
    ld a, b                                       ; $7061: $78
    ld a, h                                       ; $7062: $7C
    cp b                                          ; $7063: $B8
    ld hl, sp+$30                                 ; $7064: $F8 $30
    ld a, b                                       ; $7066: $78
    or b                                          ; $7067: $B0
    ldh a, [rNR41]                                ; $7068: $F0 $20
    ldh a, [rP1]                                  ; $706A: $F0 $00
    ld [hl], b                                    ; $706C: $70
    and b                                         ; $706D: $A0
    ldh a, [$60]                                  ; $706E: $F0 $60
    ccf                                           ; $7070: $3F
    rra                                           ; $7071: $1F
    rra                                           ; $7072: $1F
    rrca                                          ; $7073: $0F
    rrca                                          ; $7074: $0F
    rlca                                          ; $7075: $07
    rrca                                          ; $7076: $0F
    rlca                                          ; $7077: $07
    rrca                                          ; $7078: $0F
    inc bc                                        ; $7079: $03
    rrca                                          ; $707A: $0F
    dec b                                         ; $707B: $05
    rrca                                          ; $707C: $0F
    ld b, $0F                                     ; $707D: $06 $0F
    ld b, $FC                                     ; $707F: $06 $FC
    ld hl, sp-$08                                 ; $7081: $F8 $F8
    ldh a, [$F0]                                  ; $7083: $F0 $F0
    ldh [$F0], a                                  ; $7085: $E0 $F0
    ldh [$F0], a                                  ; $7087: $E0 $F0
    ldh [$F0], a                                  ; $7089: $E0 $F0
    ldh [$F0], a                                  ; $708B: $E0 $F0
    ret nz                                        ; $708D: $C0

    ldh a, [$C0]                                  ; $708E: $F0 $C0
    ccf                                           ; $7090: $3F
    rra                                           ; $7091: $1F
    rra                                           ; $7092: $1F
    rrca                                          ; $7093: $0F
    rrca                                          ; $7094: $0F
    rlca                                          ; $7095: $07
    rrca                                          ; $7096: $0F
    rlca                                          ; $7097: $07
    rrca                                          ; $7098: $0F
    inc bc                                        ; $7099: $03
    rrca                                          ; $709A: $0F
    dec b                                         ; $709B: $05
    rrca                                          ; $709C: $0F
    dec b                                         ; $709D: $05
    rrca                                          ; $709E: $0F
    dec b                                         ; $709F: $05
    db $FC                                        ; $70A0: $FC
    ld hl, sp-$08                                 ; $70A1: $F8 $F8
    ldh a, [$F0]                                  ; $70A3: $F0 $F0
    ldh [$F0], a                                  ; $70A5: $E0 $F0
    ldh [$F0], a                                  ; $70A7: $E0 $F0
    ldh [$F0], a                                  ; $70A9: $E0 $F0
    ldh [$F0], a                                  ; $70AB: $E0 $F0
    ret nz                                        ; $70AD: $C0

    ldh a, [$A0]                                  ; $70AE: $F0 $A0
    rrca                                          ; $70B0: $0F
    inc bc                                        ; $70B1: $03
    rlca                                          ; $70B2: $07
    inc bc                                        ; $70B3: $03
    rlca                                          ; $70B4: $07
    inc bc                                        ; $70B5: $03
    rlca                                          ; $70B6: $07
    inc bc                                        ; $70B7: $03
    rrca                                          ; $70B8: $0F
    inc b                                         ; $70B9: $04
    rrca                                          ; $70BA: $0F
    ld bc, $0F1F                                  ; $70BB: $01 $1F $0F
    rrca                                          ; $70BE: $0F
    nop                                           ; $70BF: $00
    ret nz                                        ; $70C0: $C0

    add b                                         ; $70C1: $80
    ret nz                                        ; $70C2: $C0

    add b                                         ; $70C3: $80
    ret nz                                        ; $70C4: $C0

    add b                                         ; $70C5: $80
    ldh a, [$80]                                  ; $70C6: $F0 $80
    ld hl, sp+$30                                 ; $70C8: $F8 $30
    ld hl, sp-$50                                 ; $70CA: $F8 $B0
    ldh a, [$80]                                  ; $70CC: $F0 $80
    ret nz                                        ; $70CE: $C0

    nop                                           ; $70CF: $00
    ldh a, [$C0]                                  ; $70D0: $F0 $C0
    ldh [$C0], a                                  ; $70D2: $E0 $C0
    ldh [$C0], a                                  ; $70D4: $E0 $C0
    ldh a, [$C0]                                  ; $70D6: $F0 $C0
    ld hl, sp+$30                                 ; $70D8: $F8 $30
    db $FC                                        ; $70DA: $FC
    ld a, b                                       ; $70DB: $78
    db $FC                                        ; $70DC: $FC
    jr c, @-$06                                   ; $70DD: $38 $F8

    nop                                           ; $70DF: $00
    ldh a, [$C0]                                  ; $70E0: $F0 $C0
    ldh [$C0], a                                  ; $70E2: $E0 $C0
    ldh [$C0], a                                  ; $70E4: $E0 $C0
    ldh [$C0], a                                  ; $70E6: $E0 $C0
    ld hl, sp-$40                                 ; $70E8: $F8 $C0
    db $FC                                        ; $70EA: $FC
    jr @-$02                                      ; $70EB: $18 $FC

    ld [hl], b                                    ; $70ED: $70
    ld hl, sp+$00                                 ; $70EE: $F8 $00
    ld hl, sp+$60                                 ; $70F0: $F8 $60
    ld hl, sp+$70                                 ; $70F2: $F8 $70
    ld hl, sp+$70                                 ; $70F4: $F8 $70
    ld hl, sp+$70                                 ; $70F6: $F8 $70
    cp $10                                        ; $70F8: $FE $10
    rst $38                                       ; $70FA: $FF
    ld b, [hl]                                    ; $70FB: $46
    rst $38                                       ; $70FC: $FF
    inc e                                         ; $70FD: $1C
    ld a, $00                                     ; $70FE: $3E $00
    cp $60                                        ; $7100: $FE $60
    ld a, [hl]                                    ; $7102: $7E
    jr jr_00A_7183                                ; $7103: $18 $7E

    jr c, jr_00A_7185                             ; $7105: $38 $7E

    jr c, jr_00A_7188                             ; $7107: $38 $7F

    ld h, $7F                                     ; $7109: $26 $7F
    ld c, $7E                                     ; $710B: $0E $7E
    inc l                                         ; $710D: $2C
    ld a, $00                                     ; $710E: $3E $00
    cp $00                                        ; $7110: $FE $00
    ld a, [hl]                                    ; $7112: $7E
    jr jr_00A_7191                                ; $7113: $18 $7C

    jr c, jr_00A_7193                             ; $7115: $38 $7C

    jr nz, jr_00A_7155                            ; $7117: $20 $3C

    jr @+$40                                      ; $7119: $18 $3E

    inc e                                         ; $711B: $1C
    ld a, [hl]                                    ; $711C: $7E
    inc l                                         ; $711D: $2C
    ld a, [hl]                                    ; $711E: $7E
    nop                                           ; $711F: $00
    rlca                                          ; $7120: $07
    nop                                           ; $7121: $00
    rrca                                          ; $7122: $0F
    rlca                                          ; $7123: $07
    rra                                           ; $7124: $1F
    rrca                                          ; $7125: $0F
    ccf                                           ; $7126: $3F
    rra                                           ; $7127: $1F
    ccf                                           ; $7128: $3F
    rra                                           ; $7129: $1F
    ccf                                           ; $712A: $3F
    rra                                           ; $712B: $1F
    ld a, a                                       ; $712C: $7F
    ld a, $7F                                     ; $712D: $3E $7F
    ld a, $E0                                     ; $712F: $3E $E0
    nop                                           ; $7131: $00
    ldh a, [$E0]                                  ; $7132: $F0 $E0
    ld hl, sp-$10                                 ; $7134: $F8 $F0
    db $FC                                        ; $7136: $FC
    ld hl, sp-$04                                 ; $7137: $F8 $FC
    sbc b                                         ; $7139: $98
    sbc h                                         ; $713A: $9C
    ld l, b                                       ; $713B: $68
    ld e, h                                       ; $713C: $5C
    xor b                                         ; $713D: $A8
    ld e, h                                       ; $713E: $5C
    xor b                                         ; $713F: $A8
    ld a, a                                       ; $7140: $7F
    ld a, $7F                                     ; $7141: $3E $7F
    ld a, $7F                                     ; $7143: $3E $7F
    ld a, $3E                                     ; $7145: $3E $3E
    dec e                                         ; $7147: $1D
    ccf                                           ; $7148: $3F
    jr @+$3D                                      ; $7149: $18 $3B

    inc d                                         ; $714B: $14
    ld a, [de]                                    ; $714C: $1A
    dec b                                         ; $714D: $05
    rlca                                          ; $714E: $07
    nop                                           ; $714F: $00
    ld e, h                                       ; $7150: $5C
    xor b                                         ; $7151: $A8
    inc e                                         ; $7152: $1C
    add sp, -$08                                  ; $7153: $E8 $F8

jr_00A_7155:
    db $10                                        ; $7155: $10
    ldh a, [$60]                                  ; $7156: $F0 $60
    ldh [$80], a                                  ; $7158: $E0 $80
    sub b                                         ; $715A: $90
    ld h, b                                       ; $715B: $60
    sub b                                         ; $715C: $90
    ld h, b                                       ; $715D: $60
    ldh [rP1], a                                  ; $715E: $E0 $00
    ld a, a                                       ; $7160: $7F
    ld a, $7F                                     ; $7161: $3E $7F
    ld a, $3E                                     ; $7163: $3E $3E
    dec e                                         ; $7165: $1D
    rra                                           ; $7166: $1F
    dec c                                         ; $7167: $0D
    rrca                                          ; $7168: $0F
    dec b                                         ; $7169: $05
    inc b                                         ; $716A: $04
    inc bc                                        ; $716B: $03
    inc b                                         ; $716C: $04
    inc bc                                        ; $716D: $03
    rlca                                          ; $716E: $07
    nop                                           ; $716F: $00
    inc e                                         ; $7170: $1C
    add sp, -$08                                  ; $7171: $E8 $F8
    db $10                                        ; $7173: $10
    ldh a, [$60]                                  ; $7174: $F0 $60
    ret nz                                        ; $7176: $C0

    nop                                           ; $7177: $00
    ret nz                                        ; $7178: $C0

    nop                                           ; $7179: $00
    add b                                         ; $717A: $80
    nop                                           ; $717B: $00
    add b                                         ; $717C: $80
    nop                                           ; $717D: $00
    add b                                         ; $717E: $80
    nop                                           ; $717F: $00
    ld a, a                                       ; $7180: $7F
    ld a, $7F                                     ; $7181: $3E $7F

jr_00A_7183:
    ld a, $7F                                     ; $7183: $3E $7F

jr_00A_7185:
    ld a, $3E                                     ; $7185: $3E $3E
    dec e                                         ; $7187: $1D

jr_00A_7188:
    ccf                                           ; $7188: $3F
    ld a, [de]                                    ; $7189: $1A
    add hl, sp                                    ; $718A: $39
    ld d, $19                                     ; $718B: $16 $19
    ld b, $07                                     ; $718D: $06 $07
    nop                                           ; $718F: $00
    ld e, h                                       ; $7190: $5C

jr_00A_7191:
    xor b                                         ; $7191: $A8
    inc e                                         ; $7192: $1C

jr_00A_7193:
    add sp, -$08                                  ; $7193: $E8 $F8
    db $10                                        ; $7195: $10
    ldh a, [$60]                                  ; $7196: $F0 $60
    ldh [rP1], a                                  ; $7198: $E0 $00
    ret nz                                        ; $719A: $C0

    nop                                           ; $719B: $00
    and b                                         ; $719C: $A0
    ld b, b                                       ; $719D: $40
    ret nz                                        ; $719E: $C0

    nop                                           ; $719F: $00
    rlca                                          ; $71A0: $07
    inc bc                                        ; $71A1: $03
    inc bc                                        ; $71A2: $03
    ld bc, $070F                                  ; $71A3: $01 $0F $07
    ccf                                           ; $71A6: $3F
    rra                                           ; $71A7: $1F
    ld a, a                                       ; $71A8: $7F
    jr z, @+$81                                   ; $71A9: $28 $7F

    ld [hl], $7F                                  ; $71AB: $36 $7F
    ld e, $7F                                     ; $71AD: $1E $7F
    nop                                           ; $71AF: $00
    add b                                         ; $71B0: $80
    nop                                           ; $71B1: $00
    add b                                         ; $71B2: $80
    nop                                           ; $71B3: $00
    ldh a, [rP1]                                  ; $71B4: $F0 $00
    ld hl, sp-$50                                 ; $71B6: $F8 $B0
    ld hl, sp+$70                                 ; $71B8: $F8 $70
    ldh a, [$E0]                                  ; $71BA: $F0 $E0
    ldh a, [$C0]                                  ; $71BC: $F0 $C0
    ldh [rP1], a                                  ; $71BE: $E0 $00
    ldh a, [$60]                                  ; $71C0: $F0 $60
    ld [hl], b                                    ; $71C2: $70
    jr nz, jr_00A_7235                            ; $71C3: $20 $70

    jr nz, jr_00A_723F                            ; $71C5: $20 $78

    jr nz, jr_00A_7245                            ; $71C7: $20 $7C

    nop                                           ; $71C9: $00
    cp $78                                        ; $71CA: $FE $78
    cp $7C                                        ; $71CC: $FE $7C
    cp $00                                        ; $71CE: $FE $00
    rrca                                          ; $71D0: $0F
    nop                                           ; $71D1: $00
    rra                                           ; $71D2: $1F
    rrca                                          ; $71D3: $0F
    rra                                           ; $71D4: $1F
    ld b, $23                                     ; $71D5: $06 $23
    rra                                           ; $71D7: $1F
    ld [hl], e                                    ; $71D8: $73
    inc a                                         ; $71D9: $3C
    ccf                                           ; $71DA: $3F
    add hl, de                                    ; $71DB: $19
    inc a                                         ; $71DC: $3C
    inc de                                        ; $71DD: $13
    ld d, $09                                     ; $71DE: $16 $09
    ldh a, [rP1]                                  ; $71E0: $F0 $00
    cp b                                          ; $71E2: $B8
    ret nc                                        ; $71E3: $D0

    call c, $FEE8                                 ; $71E4: $DC $E8 $FE
    ld l, h                                       ; $71E7: $6C
    db $FC                                        ; $71E8: $FC
    nop                                           ; $71E9: $00
    db $FC                                        ; $71EA: $FC
    sbc b                                         ; $71EB: $98
    call nc, $0468                                ; $71EC: $D4 $68 $04
    ld hl, sp+$3F                                 ; $71EF: $F8 $3F
    ld [de], a                                    ; $71F1: $12
    ccf                                           ; $71F2: $3F
    add hl, bc                                    ; $71F3: $09
    ccf                                           ; $71F4: $3F
    dec c                                         ; $71F5: $0D
    ccf                                           ; $71F6: $3F
    dec e                                         ; $71F7: $1D
    ccf                                           ; $71F8: $3F
    ld e, $3D                                     ; $71F9: $1E $3D
    ld e, $33                                     ; $71FB: $1E $33
    ld e, $1F                                     ; $71FD: $1E $1F
    inc c                                         ; $71FF: $0C
    ld l, h                                       ; $7200: $6C
    ld hl, sp-$04                                 ; $7201: $F8 $FC
    ret z                                         ; $7203: $C8

    ld hl, sp-$78                                 ; $7204: $F8 $88
    ld hl, sp+$20                                 ; $7206: $F8 $20
    ld hl, sp+$70                                 ; $7208: $F8 $70
    ld hl, sp+$70                                 ; $720A: $F8 $70
    ld hl, sp+$30                                 ; $720C: $F8 $30
    ld hl, sp+$60                                 ; $720E: $F8 $60
    rrca                                          ; $7210: $0F
    ld bc, $070F                                  ; $7211: $01 $0F $07
    rra                                           ; $7214: $1F
    rlca                                          ; $7215: $07
    rra                                           ; $7216: $1F
    rrca                                          ; $7217: $0F
    rla                                           ; $7218: $17
    rrca                                          ; $7219: $0F
    jr c, jr_00A_723B                             ; $721A: $38 $1F

    ccf                                           ; $721C: $3F
    rra                                           ; $721D: $1F
    rra                                           ; $721E: $1F
    nop                                           ; $721F: $00
    ldh a, [rLCDC]                                ; $7220: $F0 $40
    ld hl, sp+$10                                 ; $7222: $F8 $10
    ld hl, sp-$10                                 ; $7224: $F8 $F0
    ld hl, sp-$10                                 ; $7226: $F8 $F0
    add h                                         ; $7228: $84
    ld hl, sp+$7C                                 ; $7229: $F8 $7C
    ld hl, sp-$04                                 ; $722B: $F8 $FC
    ret nz                                        ; $722D: $C0

    ldh [rP1], a                                  ; $722E: $E0 $00
    rrca                                          ; $7230: $0F
    nop                                           ; $7231: $00
    dec e                                         ; $7232: $1D
    rrca                                          ; $7233: $0F

jr_00A_7234:
    rrca                                          ; $7234: $0F

jr_00A_7235:
    rlca                                          ; $7235: $07
    rra                                           ; $7236: $1F
    rrca                                          ; $7237: $0F
    rra                                           ; $7238: $1F
    dec bc                                        ; $7239: $0B
    dec de                                        ; $723A: $1B

jr_00A_723B:
    ld b, $1E                                     ; $723B: $06 $1E
    dec c                                         ; $723D: $0D
    rrca                                          ; $723E: $0F

jr_00A_723F:
    dec b                                         ; $723F: $05
    ldh a, [rP1]                                  ; $7240: $F0 $00
    jr jr_00A_7234                                ; $7242: $18 $F0

    adc h                                         ; $7244: $8C

jr_00A_7245:
    ld hl, sp-$04                                 ; $7245: $F8 $FC
    add sp, -$04                                  ; $7247: $E8 $FC
    ldh a, [$F4]                                  ; $7249: $F0 $F4
    add sp, -$0A                                  ; $724B: $E8 $F6
    xor h                                         ; $724D: $AC
    xor $94                                       ; $724E: $EE $94
    rra                                           ; $7250: $1F
    dec b                                         ; $7251: $05
    ccf                                           ; $7252: $3F
    nop                                           ; $7253: $00
    ccf                                           ; $7254: $3F
    ld de, $1F3F                                  ; $7255: $11 $3F $1F
    ccf                                           ; $7258: $3F
    rra                                           ; $7259: $1F
    rra                                           ; $725A: $1F
    rrca                                          ; $725B: $0F
    rra                                           ; $725C: $1F
    ld c, $1F                                     ; $725D: $0E $1F
    ld bc, $8CFE                                  ; $725F: $01 $FE $8C
    cp $54                                        ; $7262: $FE $54
    cp $B4                                        ; $7264: $FE $B4
    db $FC                                        ; $7266: $FC
    cp b                                          ; $7267: $B8
    db $FC                                        ; $7268: $FC
    ld a, b                                       ; $7269: $78
    cp h                                          ; $726A: $BC
    ld a, b                                       ; $726B: $78
    call z, $FC78                                 ; $726C: $CC $78 $FC
    or b                                          ; $726F: $B0
    rra                                           ; $7270: $1F
    rrca                                          ; $7271: $0F
    rra                                           ; $7272: $1F
    rrca                                          ; $7273: $0F
    rra                                           ; $7274: $1F
    rrca                                          ; $7275: $0F
    rra                                           ; $7276: $1F
    rrca                                          ; $7277: $0F
    rla                                           ; $7278: $17
    rrca                                          ; $7279: $0F
    jr c, jr_00A_729B                             ; $727A: $38 $1F

    ld a, a                                       ; $727C: $7F
    ccf                                           ; $727D: $3F
    ccf                                           ; $727E: $3F
    nop                                           ; $727F: $00
    ld hl, sp-$40                                 ; $7280: $F8 $C0
    ld hl, sp-$10                                 ; $7282: $F8 $F0
    ld hl, sp-$10                                 ; $7284: $F8 $F0
    ld hl, sp-$10                                 ; $7286: $F8 $F0
    add h                                         ; $7288: $84
    ld hl, sp+$7C                                 ; $7289: $F8 $7C
    ld hl, sp-$08                                 ; $728B: $F8 $F8
    ret nz                                        ; $728D: $C0

    ldh [rP1], a                                  ; $728E: $E0 $00
    rlca                                          ; $7290: $07
    nop                                           ; $7291: $00
    rra                                           ; $7292: $1F
    ld c, $39                                     ; $7293: $0E $39
    rra                                           ; $7295: $1F
    ld a, $0F                                     ; $7296: $3E $0F
    ccf                                           ; $7298: $3F
    jr jr_00A_72DA                                ; $7299: $18 $3F

jr_00A_729B:
    ld b, $3A                                     ; $729B: $06 $3A
    dec c                                         ; $729D: $0D
    jr z, jr_00A_72B7                             ; $729E: $28 $17

    ldh a, [rP1]                                  ; $72A0: $F0 $00
    ld hl, sp-$20                                 ; $72A2: $F8 $E0
    ld hl, sp+$70                                 ; $72A4: $F8 $70
    ld hl, sp-$38                                 ; $72A6: $F8 $C8
    ld hl, sp+$10                                 ; $72A8: $F8 $10
    ld hl, sp+$60                                 ; $72AA: $F8 $60
    ld e, h                                       ; $72AC: $5C
    or b                                          ; $72AD: $B0
    inc d                                         ; $72AE: $14
    add sp, $1D                                   ; $72AF: $E8 $1D
    rlca                                          ; $72B1: $07
    rra                                           ; $72B2: $1F
    ld [bc], a                                    ; $72B3: $02
    ccf                                           ; $72B4: $3F
    inc d                                         ; $72B5: $14
    ccf                                           ; $72B6: $3F

jr_00A_72B7:
    dec d                                         ; $72B7: $15
    ld a, a                                       ; $72B8: $7F
    inc sp                                        ; $72B9: $33
    ld a, a                                       ; $72BA: $7F
    dec sp                                        ; $72BB: $3B
    ld h, a                                       ; $72BC: $67
    dec sp                                        ; $72BD: $3B
    ccf                                           ; $72BE: $3F
    ld bc, $E0B8                                  ; $72BF: $01 $B8 $E0
    ld hl, sp+$40                                 ; $72C2: $F8 $40
    db $FC                                        ; $72C4: $FC
    jr z, @-$02                                   ; $72C5: $28 $FC

    xor b                                         ; $72C7: $A8
    cp $CC                                        ; $72C8: $FE $CC
    cp $DC                                        ; $72CA: $FE $DC
    and $9C                                       ; $72CC: $E6 $9C
    db $FC                                        ; $72CE: $FC
    add b                                         ; $72CF: $80
    rra                                           ; $72D0: $1F
    dec b                                         ; $72D1: $05
    rra                                           ; $72D2: $1F
    inc c                                         ; $72D3: $0C
    rra                                           ; $72D4: $1F
    ld c, $3F                                     ; $72D5: $0E $3F
    rra                                           ; $72D7: $1F
    daa                                           ; $72D8: $27
    rra                                           ; $72D9: $1F

jr_00A_72DA:
    jr c, jr_00A_72FB                             ; $72DA: $38 $1F

    rra                                           ; $72DC: $1F
    rrca                                          ; $72DD: $0F
    rrca                                          ; $72DE: $0F
    nop                                           ; $72DF: $00
    ld hl, sp-$60                                 ; $72E0: $F8 $A0
    ld hl, sp-$50                                 ; $72E2: $F8 $B0
    ld hl, sp+$70                                 ; $72E4: $F8 $70
    db $FC                                        ; $72E6: $FC
    ld hl, sp-$1C                                 ; $72E7: $F8 $E4
    ld hl, sp+$1C                                 ; $72E9: $F8 $1C
    ld hl, sp-$08                                 ; $72EB: $F8 $F8
    ldh a, [$F0]                                  ; $72ED: $F0 $F0
    nop                                           ; $72EF: $00
    rrca                                          ; $72F0: $0F
    nop                                           ; $72F1: $00
    rra                                           ; $72F2: $1F
    rlca                                          ; $72F3: $07
    rra                                           ; $72F4: $1F
    ld c, $1F                                     ; $72F5: $0E $1F
    inc de                                        ; $72F7: $13
    rra                                           ; $72F8: $1F
    rrca                                          ; $72F9: $0F
    rra                                           ; $72FA: $1F

jr_00A_72FB:
    dec bc                                        ; $72FB: $0B
    ld e, $07                                     ; $72FC: $1E $07
    cpl                                           ; $72FE: $2F
    dec d                                         ; $72FF: $15
    ldh [rP1], a                                  ; $7300: $E0 $00
    ld hl, sp+$70                                 ; $7302: $F8 $70
    sbc h                                         ; $7304: $9C
    ld hl, sp+$7C                                 ; $7305: $F8 $7C
    ldh a, [$FC]                                  ; $7307: $F0 $FC
    ret c                                         ; $7309: $D8

    ld hl, sp-$30                                 ; $730A: $F8 $D0
    ret c                                         ; $730C: $D8

    ld h, b                                       ; $730D: $60
    ld [hl], h                                    ; $730E: $74
    xor b                                         ; $730F: $A8
    rra                                           ; $7310: $1F
    dec b                                         ; $7311: $05
    rra                                           ; $7312: $1F
    ld [bc], a                                    ; $7313: $02
    ccf                                           ; $7314: $3F
    db $10                                        ; $7315: $10
    ccf                                           ; $7316: $3F
    inc d                                         ; $7317: $14
    ld a, a                                       ; $7318: $7F
    ld [hl], $7F                                  ; $7319: $36 $7F
    inc sp                                        ; $731B: $33
    ld c, a                                       ; $731C: $4F
    dec sp                                        ; $731D: $3B
    ccf                                           ; $731E: $3F
    ld de, $A078                                  ; $731F: $11 $78 $A0
    ld hl, sp-$80                                 ; $7322: $F8 $80
    db $FC                                        ; $7324: $FC
    adc b                                         ; $7325: $88
    db $FC                                        ; $7326: $FC

jr_00A_7327:
    jr z, jr_00A_7327                             ; $7327: $28 $FE

    ld l, h                                       ; $7329: $6C
    cp $CC                                        ; $732A: $FE $CC
    ld a, [c]                                     ; $732C: $F2
    call c, $88FC                                 ; $732D: $DC $FC $88
    ld hl, sp+$30                                 ; $7330: $F8 $30
    ld hl, sp-$10                                 ; $7332: $F8 $F0
    ld hl, sp-$10                                 ; $7334: $F8 $F0
    db $FC                                        ; $7336: $FC
    ld hl, sp-$1C                                 ; $7337: $F8 $E4
    ld hl, sp+$1C                                 ; $7339: $F8 $1C
    ld hl, sp-$08                                 ; $733B: $F8 $F8
    ldh a, [$F0]                                  ; $733D: $F0 $F0
    nop                                           ; $733F: $00
    jr z, jr_00A_7359                             ; $7340: $28 $17

    dec e                                         ; $7342: $1D
    rlca                                          ; $7343: $07
    rra                                           ; $7344: $1F
    ld [bc], a                                    ; $7345: $02
    ccf                                           ; $7346: $3F
    inc d                                         ; $7347: $14
    ccf                                           ; $7348: $3F
    dec d                                         ; $7349: $15
    ld a, a                                       ; $734A: $7F
    inc sp                                        ; $734B: $33
    ld a, a                                       ; $734C: $7F
    dec sp                                        ; $734D: $3B
    ld h, a                                       ; $734E: $67
    add hl, sp                                    ; $734F: $39
    inc d                                         ; $7350: $14
    add sp, -$48                                  ; $7351: $E8 $B8
    ldh [$F8], a                                  ; $7353: $E0 $F8

jr_00A_7355:
    ld b, b                                       ; $7355: $40
    db $FC                                        ; $7356: $FC
    jr z, jr_00A_7355                             ; $7357: $28 $FC

jr_00A_7359:
    xor b                                         ; $7359: $A8
    cp $CC                                        ; $735A: $FE $CC
    cp $DC                                        ; $735C: $FE $DC
    and $DC                                       ; $735E: $E6 $DC
    ccf                                           ; $7360: $3F
    ld bc, $0B1F                                  ; $7361: $01 $1F $0B
    rra                                           ; $7364: $1F
    inc c                                         ; $7365: $0C
    ccf                                           ; $7366: $3F
    rra                                           ; $7367: $1F
    daa                                           ; $7368: $27
    rra                                           ; $7369: $1F
    jr c, jr_00A_738B                             ; $736A: $38 $1F

    rra                                           ; $736C: $1F
    rrca                                          ; $736D: $0F
    rrca                                          ; $736E: $0F
    nop                                           ; $736F: $00
    db $FC                                        ; $7370: $FC
    adc b                                         ; $7371: $88
    ld hl, sp+$60                                 ; $7372: $F8 $60
    db $FC                                        ; $7374: $FC
    ldh a, [$FC]                                  ; $7375: $F0 $FC
    ld hl, sp-$1C                                 ; $7377: $F8 $E4
    ld hl, sp+$1C                                 ; $7379: $F8 $1C
    ld hl, sp-$08                                 ; $737B: $F8 $F8
    ldh a, [$F0]                                  ; $737D: $F0 $F0
    nop                                           ; $737F: $00
    cpl                                           ; $7380: $2F
    dec d                                         ; $7381: $15
    rra                                           ; $7382: $1F
    dec b                                         ; $7383: $05
    rra                                           ; $7384: $1F
    ld [bc], a                                    ; $7385: $02
    ccf                                           ; $7386: $3F
    db $10                                        ; $7387: $10
    ccf                                           ; $7388: $3F
    inc d                                         ; $7389: $14
    ld a, a                                       ; $738A: $7F

jr_00A_738B:
    ld [hl], $7F                                  ; $738B: $36 $7F
    inc sp                                        ; $738D: $33
    ld c, a                                       ; $738E: $4F
    dec sp                                        ; $738F: $3B
    ld [hl], h                                    ; $7390: $74
    xor b                                         ; $7391: $A8
    ld a, b                                       ; $7392: $78
    and b                                         ; $7393: $A0
    ld hl, sp-$80                                 ; $7394: $F8 $80
    db $FC                                        ; $7396: $FC
    adc b                                         ; $7397: $88
    db $FC                                        ; $7398: $FC

jr_00A_7399:
    jr z, jr_00A_7399                             ; $7399: $28 $FE

    ld l, h                                       ; $739B: $6C
    cp $CC                                        ; $739C: $FE $CC
    ld a, [c]                                     ; $739E: $F2
    call c, HeaderManufacturerCode                ; $739F: $DC $3F $01
    rra                                           ; $73A2: $1F
    inc c                                         ; $73A3: $0C
    rra                                           ; $73A4: $1F
    rrca                                          ; $73A5: $0F
    ccf                                           ; $73A6: $3F
    rra                                           ; $73A7: $1F
    daa                                           ; $73A8: $27
    rra                                           ; $73A9: $1F
    jr c, jr_00A_73CB                             ; $73AA: $38 $1F

    rra                                           ; $73AC: $1F
    rrca                                          ; $73AD: $0F
    rrca                                          ; $73AE: $0F
    nop                                           ; $73AF: $00
    db $FC                                        ; $73B0: $FC
    adc b                                         ; $73B1: $88
    ld hl, sp+$30                                 ; $73B2: $F8 $30

jr_00A_73B4:
    ld hl, sp-$10                                 ; $73B4: $F8 $F0
    db $FC                                        ; $73B6: $FC
    ld hl, sp-$1C                                 ; $73B7: $F8 $E4

jr_00A_73B9:
    ld hl, sp+$1C                                 ; $73B9: $F8 $1C
    ld hl, sp-$08                                 ; $73BB: $F8 $F8
    ldh a, [$F0]                                  ; $73BD: $F0 $F0
    nop                                           ; $73BF: $00
    rlca                                          ; $73C0: $07

jr_00A_73C1:
    nop                                           ; $73C1: $00
    dec bc                                        ; $73C2: $0B
    rlca                                          ; $73C3: $07
    rra                                           ; $73C4: $1F
    dec bc                                        ; $73C5: $0B
    rrca                                          ; $73C6: $0F
    rlca                                          ; $73C7: $07
    rra                                           ; $73C8: $1F
    ld c, $3F                                     ; $73C9: $0E $3F

jr_00A_73CB:
    rra                                           ; $73CB: $1F
    rra                                           ; $73CC: $1F
    ld a, [bc]                                    ; $73CD: $0A
    rra                                           ; $73CE: $1F
    nop                                           ; $73CF: $00
    ldh [rP1], a                                  ; $73D0: $E0 $00
    jr nc, jr_00A_73B4                            ; $73D2: $30 $E0

    ret c                                         ; $73D4: $D8

    or b                                          ; $73D5: $B0
    db $FC                                        ; $73D6: $FC
    ret nc                                        ; $73D7: $D0

    db $FC                                        ; $73D8: $FC
    add b                                         ; $73D9: $80
    db $F4                                        ; $73DA: $F4
    jr c, jr_00A_73B9                             ; $73DB: $38 $DC

    jr z, jr_00A_73C1                             ; $73DD: $28 $E2

    sbc h                                         ; $73DF: $9C
    rrca                                          ; $73E0: $0F
    ld [bc], a                                    ; $73E1: $02
    rra                                           ; $73E2: $1F
    dec c                                         ; $73E3: $0D
    ccf                                           ; $73E4: $3F
    dec de                                        ; $73E5: $1B
    ccf                                           ; $73E6: $3F
    inc de                                        ; $73E7: $13
    rra                                           ; $73E8: $1F
    rlca                                          ; $73E9: $07
    rrca                                          ; $73EA: $0F
    rlca                                          ; $73EB: $07
    dec bc                                        ; $73EC: $0B
    rlca                                          ; $73ED: $07
    inc c                                         ; $73EE: $0C
    rlca                                          ; $73EF: $07
    or $68                                        ; $73F0: $F6 $68
    db $FC                                        ; $73F2: $FC
    cp b                                          ; $73F3: $B8
    db $FC                                        ; $73F4: $FC
    ret nc                                        ; $73F5: $D0

    db $FC                                        ; $73F6: $FC
    ret z                                         ; $73F7: $C8

    db $FC                                        ; $73F8: $FC
    ret z                                         ; $73F9: $C8

    db $FC                                        ; $73FA: $FC
    ret c                                         ; $73FB: $D8

    cp [hl]                                       ; $73FC: $BE
    call c, $CC7E                                 ; $73FD: $DC $7E $CC
    rrca                                          ; $7400: $0F
    inc bc                                        ; $7401: $03
    rrca                                          ; $7402: $0F
    inc b                                         ; $7403: $04
    rrca                                          ; $7404: $0F
    rlca                                          ; $7405: $07
    rra                                           ; $7406: $1F
    rrca                                          ; $7407: $0F
    rla                                           ; $7408: $17
    rrca                                          ; $7409: $0F
    jr @+$11                                      ; $740A: $18 $0F

    rrca                                          ; $740C: $0F
    rlca                                          ; $740D: $07
    rlca                                          ; $740E: $07
    nop                                           ; $740F: $00
    cp $84                                        ; $7410: $FE $84
    cp $70                                        ; $7412: $FE $70
    cp $F8                                        ; $7414: $FE $F8
    db $FC                                        ; $7416: $FC
    ld hl, sp-$0E                                 ; $7417: $F8 $F2
    db $FC                                        ; $7419: $FC
    ld c, $FC                                     ; $741A: $0E $FC
    db $FC                                        ; $741C: $FC
    ld hl, sp-$08                                 ; $741D: $F8 $F8
    nop                                           ; $741F: $00
    inc c                                         ; $7420: $0C
    rlca                                          ; $7421: $07
    rra                                           ; $7422: $1F
    inc bc                                        ; $7423: $03
    rra                                           ; $7424: $1F
    inc c                                         ; $7425: $0C
    rra                                           ; $7426: $1F
    rrca                                          ; $7427: $0F
    daa                                           ; $7428: $27
    rra                                           ; $7429: $1F
    jr c, jr_00A_744B                             ; $742A: $38 $1F

    rra                                           ; $742C: $1F
    rrca                                          ; $742D: $0F
    rrca                                          ; $742E: $0F
    nop                                           ; $742F: $00
    ld a, [hl]                                    ; $7430: $7E
    call z, $A4FE                                 ; $7431: $CC $FE $A4
    cp $70                                        ; $7434: $FE $70
    db $FC                                        ; $7436: $FC
    ld hl, sp-$0E                                 ; $7437: $F8 $F2
    db $FC                                        ; $7439: $FC
    ld c, $FC                                     ; $743A: $0E $FC
    db $FC                                        ; $743C: $FC
    ld hl, sp-$08                                 ; $743D: $F8 $F8
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

jr_00A_744B:
    nop                                           ; $744B: $00
    rlca                                          ; $744C: $07
    nop                                           ; $744D: $00
    rra                                           ; $744E: $1F
    rlca                                          ; $744F: $07
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
    ret nc                                        ; $745C: $D0

    nop                                           ; $745D: $00
    add sp, $50                                   ; $745E: $E8 $50
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
    inc bc                                        ; $746C: $03
    nop                                           ; $746D: $00
    rlca                                          ; $746E: $07
    ld bc, $1F3F                                  ; $746F: $01 $3F $1F
    ld a, a                                       ; $7472: $7F
    dec sp                                        ; $7473: $3B
    ld a, a                                       ; $7474: $7F
    dec a                                         ; $7475: $3D
    rst $38                                       ; $7476: $FF
    ld h, d                                       ; $7477: $62
    rst $28                                       ; $7478: $EF
    ld de, $67FF                                  ; $7479: $11 $FF $67
    cp $13                                        ; $747C: $FE $13
    rst $38                                       ; $747E: $FF
    jp $B07C                                      ; $747F: $C3 $7C $B0


    or h                                          ; $7482: $B4
    ret c                                         ; $7483: $D8

    db $F4                                        ; $7484: $F4
    ret c                                         ; $7485: $D8

    db $FC                                        ; $7486: $FC
    nop                                           ; $7487: $00
    db $FC                                        ; $7488: $FC
    sbc b                                         ; $7489: $98
    sbc b                                         ; $748A: $98
    ldh a, [$08]                                  ; $748B: $F0 $08
    ldh a, [rBCPS]                                ; $748D: $F0 $68
    ldh a, [rIF]                                  ; $748F: $F0 $0F
    inc bc                                        ; $7491: $03
    rrca                                          ; $7492: $0F
    rlca                                          ; $7493: $07
    rra                                           ; $7494: $1F
    rlca                                          ; $7495: $07
    ld a, a                                       ; $7496: $7F
    ld b, $6F                                     ; $7497: $06 $6F
    ld [hl-], a                                   ; $7499: $32
    rst $18                                       ; $749A: $DF
    ld a, [hl]                                    ; $749B: $7E
    rst $18                                       ; $749C: $DF
    ld a, h                                       ; $749D: $7C
    ld a, a                                       ; $749E: $7F
    nop                                           ; $749F: $00
    rst $38                                       ; $74A0: $FF
    di                                            ; $74A1: $F3
    rst $38                                       ; $74A2: $FF
    ei                                            ; $74A3: $FB
    db $E3                                        ; $74A4: $E3
    db $FD                                        ; $74A5: $FD
    rst $18                                       ; $74A6: $DF
    db $FC                                        ; $74A7: $FC
    cp a                                          ; $74A8: $BF
    ld h, c                                       ; $74A9: $61
    rst $20                                       ; $74AA: $E7
    dec de                                        ; $74AB: $1B
    jp $FF3D                                      ; $74AC: $C3 $3D $FF


    nop                                           ; $74AF: $00
    ld hl, sp-$70                                 ; $74B0: $F8 $90
    ld hl, sp+$20                                 ; $74B2: $F8 $20
    ld hl, sp+$70                                 ; $74B4: $F8 $70

jr_00A_74B6:
    db $FC                                        ; $74B6: $FC
    ldh a, [$F2]                                  ; $74B7: $F0 $F2
    db $EC                                        ; $74B9: $EC
    pop af                                        ; $74BA: $F1
    adc $FF                                       ; $74BB: $CE $FF
    nop                                           ; $74BD: $00
    add b                                         ; $74BE: $80
    nop                                           ; $74BF: $00
    rrca                                          ; $74C0: $0F

jr_00A_74C1:
    nop                                           ; $74C1: $00
    rra                                           ; $74C2: $1F
    rrca                                          ; $74C3: $0F
    ccf                                           ; $74C4: $3F
    rra                                           ; $74C5: $1F
    ld a, a                                       ; $74C6: $7F
    jr jr_00A_74C1                                ; $74C7: $18 $F8

    ld h, a                                       ; $74C9: $67
    ld a, h                                       ; $74CA: $7C
    dec sp                                        ; $74CB: $3B
    ld a, [hl]                                    ; $74CC: $7E

jr_00A_74CD:
    dec e                                         ; $74CD: $1D
    ld a, h                                       ; $74CE: $7C
    dec bc                                        ; $74CF: $0B
    nop                                           ; $74D0: $00
    nop                                           ; $74D1: $00
    add b                                         ; $74D2: $80
    nop                                           ; $74D3: $00
    add b                                         ; $74D4: $80
    nop                                           ; $74D5: $00

jr_00A_74D6:
    db $E4                                        ; $74D6: $E4
    nop                                           ; $74D7: $00
    ld e, $E4                                     ; $74D8: $1E $E4
    ld e, $EC                                     ; $74DA: $1E $EC
    inc e                                         ; $74DC: $1C
    add sp, $1C                                   ; $74DD: $E8 $1C
    ldh [$88], a                                  ; $74DF: $E0 $88
    ld [hl], a                                    ; $74E1: $77
    ld b, c                                       ; $74E2: $41
    ld a, $39                                     ; $74E3: $3E $39
    ld b, $1C                                     ; $74E5: $06 $1C
    inc bc                                        ; $74E7: $03
    ccf                                           ; $74E8: $3F
    nop                                           ; $74E9: $00
    ld [hl], e                                    ; $74EA: $73
    inc c                                         ; $74EB: $0C
    ld [hl], e                                    ; $74EC: $73
    inc c                                         ; $74ED: $0C
    inc a                                         ; $74EE: $3C
    nop                                           ; $74EF: $00
    ld [de], a                                    ; $74F0: $12
    db $EC                                        ; $74F1: $EC
    inc [hl]                                      ; $74F2: $34
    ret z                                         ; $74F3: $C8

    jr c, jr_00A_74B6                             ; $74F4: $38 $C0

    db $10                                        ; $74F6: $10
    ldh [$F0], a                                  ; $74F7: $E0 $F0
    nop                                           ; $74F9: $00
    ret nc                                        ; $74FA: $D0

    jr nz, jr_00A_74CD                            ; $74FB: $20 $D0

    jr nz, @+$62                                  ; $74FD: $20 $60

    nop                                           ; $74FF: $00
    adc b                                         ; $7500: $88
    ld [hl], a                                    ; $7501: $77
    ld b, c                                       ; $7502: $41
    ld a, $39                                     ; $7503: $3E $39
    ld b, $1C                                     ; $7505: $06 $1C
    inc bc                                        ; $7507: $03
    ccf                                           ; $7508: $3F
    nop                                           ; $7509: $00
    ld c, a                                       ; $750A: $4F
    jr nc, jr_00A_755C                            ; $750B: $30 $4F

    jr nc, jr_00A_754B                            ; $750D: $30 $3C

    nop                                           ; $750F: $00
    ld [de], a                                    ; $7510: $12
    db $EC                                        ; $7511: $EC
    inc [hl]                                      ; $7512: $34
    ret z                                         ; $7513: $C8

    jr c, jr_00A_74D6                             ; $7514: $38 $C0

    db $10                                        ; $7516: $10
    ldh [$FC], a                                  ; $7517: $E0 $FC
    nop                                           ; $7519: $00
    db $F4                                        ; $751A: $F4
    ld [$08F4], sp                                ; $751B: $08 $F4 $08
    jr c, jr_00A_7520                             ; $751E: $38 $00

jr_00A_7520:
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
    stop                                          ; $752E: $10 $00
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
    jr c, jr_00A_7540                             ; $753E: $38 $00

jr_00A_7540:
    jr c, @+$12                                   ; $7540: $38 $10

    inc a                                         ; $7542: $3C
    jr jr_00A_7584                                ; $7543: $18 $3F

    jr jr_00A_7566                                ; $7545: $18 $1F

    rlca                                          ; $7547: $07
    rra                                           ; $7548: $1F
    rrca                                          ; $7549: $0F
    rra                                           ; $754A: $1F

jr_00A_754B:
    inc c                                         ; $754B: $0C
    rra                                           ; $754C: $1F
    ld c, $0F                                     ; $754D: $0E $0F
    rlca                                          ; $754F: $07
    ld [$1C00], sp                                ; $7550: $08 $00 $1C
    ld [$08FC], sp                                ; $7553: $08 $FC $08
    db $FC                                        ; $7556: $FC
    add sp, -$08                                  ; $7557: $E8 $F8
    ldh a, [$F8]                                  ; $7559: $F0 $F8
    nop                                           ; $755B: $00

jr_00A_755C:
    ld hl, sp-$30                                 ; $755C: $F8 $D0
    ld hl, sp-$10                                 ; $755E: $F8 $F0
    ld a, h                                       ; $7560: $7C
    jr c, jr_00A_75A2                             ; $7561: $38 $3F

    jr jr_00A_7584                                ; $7563: $18 $1F

    rlca                                          ; $7565: $07

jr_00A_7566:
    rra                                           ; $7566: $1F
    rrca                                          ; $7567: $0F
    rra                                           ; $7568: $1F
    inc c                                         ; $7569: $0C
    rra                                           ; $756A: $1F
    ld c, $2F                                     ; $756B: $0E $2F
    rlca                                          ; $756D: $07
    ld e, a                                       ; $756E: $5F
    ld hl, $000C                                  ; $756F: $21 $0C $00
    cp $0C                                        ; $7572: $FE $0C
    db $FC                                        ; $7574: $FC
    add sp, -$08                                  ; $7575: $E8 $F8
    ldh a, [$F8]                                  ; $7577: $F0 $F8
    nop                                           ; $7579: $00
    ld hl, sp-$30                                 ; $757A: $F8 $D0
    db $FC                                        ; $757C: $FC
    ldh a, [$FA]                                  ; $757D: $F0 $FA
    db $E4                                        ; $757F: $E4
    rlca                                          ; $7580: $07
    ld bc, $060F                                  ; $7581: $01 $0F $06

jr_00A_7584:
    rra                                           ; $7584: $1F
    add hl, bc                                    ; $7585: $09
    rra                                           ; $7586: $1F
    ld c, $1F                                     ; $7587: $0E $1F
    rlca                                          ; $7589: $07
    ld e, $09                                     ; $758A: $1E $09
    rra                                           ; $758C: $1F
    inc c                                         ; $758D: $0C
    inc c                                         ; $758E: $0C
    nop                                           ; $758F: $00
    ldh a, [$E0]                                  ; $7590: $F0 $E0
    ldh [rP1], a                                  ; $7592: $E0 $00
    ldh a, [$E0]                                  ; $7594: $F0 $E0
    ld hl, sp-$30                                 ; $7596: $F8 $D0
    ld d, b                                       ; $7598: $50
    ldh [$F0], a                                  ; $7599: $E0 $F0
    ldh [$F0], a                                  ; $759B: $E0 $F0
    ld h, b                                       ; $759D: $60
    ld h, b                                       ; $759E: $60
    nop                                           ; $759F: $00
    cp a                                          ; $75A0: $BF
    ld a, [hl]                                    ; $75A1: $7E

jr_00A_75A2:
    ld a, a                                       ; $75A2: $7F
    ccf                                           ; $75A3: $3F
    ccf                                           ; $75A4: $3F
    rrca                                          ; $75A5: $0F
    rra                                           ; $75A6: $1F
    rrca                                          ; $75A7: $0F
    rra                                           ; $75A8: $1F
    rrca                                          ; $75A9: $0F
    rrca                                          ; $75AA: $0F
    ld b, $06                                     ; $75AB: $06 $06
    nop                                           ; $75AD: $00
    nop                                           ; $75AE: $00
    nop                                           ; $75AF: $00
    db $FD                                        ; $75B0: $FD
    ld e, $FE                                     ; $75B1: $1E $FE
    ld hl, sp-$08                                 ; $75B3: $F8 $F8
    ldh [$F0], a                                  ; $75B5: $E0 $F0
    ldh [$F0], a                                  ; $75B7: $E0 $F0
    ldh [$E0], a                                  ; $75B9: $E0 $E0
    ret nz                                        ; $75BB: $C0

    ret nz                                        ; $75BC: $C0

    nop                                           ; $75BD: $00
    nop                                           ; $75BE: $00
    nop                                           ; $75BF: $00
    ldh [$E0], a                                  ; $75C0: $E0 $E0
    ret nz                                        ; $75C2: $C0

    ret nz                                        ; $75C3: $C0

    ret nz                                        ; $75C4: $C0

    ret nz                                        ; $75C5: $C0

    ret nz                                        ; $75C6: $C0

    ret nz                                        ; $75C7: $C0

    ret nz                                        ; $75C8: $C0

    ret nz                                        ; $75C9: $C0

    ret nz                                        ; $75CA: $C0

    ret nz                                        ; $75CB: $C0

    ret nz                                        ; $75CC: $C0

    ret nz                                        ; $75CD: $C0

    ret nz                                        ; $75CE: $C0

    ret nz                                        ; $75CF: $C0

    ret nz                                        ; $75D0: $C0

    ret nz                                        ; $75D1: $C0

    add b                                         ; $75D2: $80
    add b                                         ; $75D3: $80
    add b                                         ; $75D4: $80
    add b                                         ; $75D5: $80
    add b                                         ; $75D6: $80
    add b                                         ; $75D7: $80
    add b                                         ; $75D8: $80
    add b                                         ; $75D9: $80
    add b                                         ; $75DA: $80
    add b                                         ; $75DB: $80
    add b                                         ; $75DC: $80
    add b                                         ; $75DD: $80
    add b                                         ; $75DE: $80
    add b                                         ; $75DF: $80
    ret nz                                        ; $75E0: $C0

    ret nz                                        ; $75E1: $C0

    ldh [$E0], a                                  ; $75E2: $E0 $E0
    ldh [$E0], a                                  ; $75E4: $E0 $E0
    ldh [$E0], a                                  ; $75E6: $E0 $E0
    and b                                         ; $75E8: $A0
    and b                                         ; $75E9: $A0
    and b                                         ; $75EA: $A0
    and b                                         ; $75EB: $A0
    ldh [$E0], a                                  ; $75EC: $E0 $E0
    ld h, b                                       ; $75EE: $60
    ld h, b                                       ; $75EF: $60
    ld bc, $0301                                  ; $75F0: $01 $01 $03
    inc bc                                        ; $75F3: $03
    inc bc                                        ; $75F4: $03
    inc bc                                        ; $75F5: $03
    inc bc                                        ; $75F6: $03
    inc bc                                        ; $75F7: $03
    inc bc                                        ; $75F8: $03
    inc bc                                        ; $75F9: $03
    ld bc, $0101                                  ; $75FA: $01 $01 $01
    ld bc, $0101                                  ; $75FD: $01 $01 $01
    ld bc, $0101                                  ; $7600: $01 $01 $01
    ld bc, $0303                                  ; $7603: $01 $03 $03
    inc bc                                        ; $7606: $03
    inc bc                                        ; $7607: $03
    ld bc, $0101                                  ; $7608: $01 $01 $01
    ld bc, $0101                                  ; $760B: $01 $01 $01
    ld bc, $0001                                  ; $760E: $01 $01 $00
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    nop                                           ; $7614: $00
    nop                                           ; $7615: $00
    inc b                                         ; $7616: $04
    inc b                                         ; $7617: $04
    ld de, $0F11                                  ; $7618: $11 $11 $0F
    rrca                                          ; $761B: $0F
    ld e, a                                       ; $761C: $5F
    ld e, a                                       ; $761D: $5F
    jr nc, jr_00A_7650                            ; $761E: $30 $30

    nop                                           ; $7620: $00
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00
    nop                                           ; $7624: $00
    nop                                           ; $7625: $00
    db $10                                        ; $7626: $10
    db $10                                        ; $7627: $10
    add [hl]                                      ; $7628: $86
    add [hl]                                      ; $7629: $86
    or c                                          ; $762A: $B1
    or c                                          ; $762B: $B1
    cp $FE                                        ; $762C: $FE $FE
    inc bc                                        ; $762E: $03
    inc bc                                        ; $762F: $03
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    ld bc, $0501                                  ; $7632: $01 $01 $05
    dec b                                         ; $7635: $05
    ld bc, $0501                                  ; $7636: $01 $01 $05
    dec b                                         ; $7639: $05
    inc b                                         ; $763A: $04
    inc b                                         ; $763B: $04
    nop                                           ; $763C: $00
    nop                                           ; $763D: $00
    ld bc, $0101                                  ; $763E: $01 $01 $01
    ld bc, $0101                                  ; $7641: $01 $01 $01
    inc b                                         ; $7644: $04
    inc b                                         ; $7645: $04
    ld bc, $0801                                  ; $7646: $01 $01 $08
    ld [rRAMG], sp                                ; $7649: $08 $00 $00
    dec bc                                        ; $764C: $0B
    dec bc                                        ; $764D: $0B
    add hl, bc                                    ; $764E: $09
    add hl, bc                                    ; $764F: $09

jr_00A_7650:
    inc bc                                        ; $7650: $03
    inc bc                                        ; $7651: $03
    ld d, $16                                     ; $7652: $16 $16
    ld d, $16                                     ; $7654: $16 $16
    ld b, $06                                     ; $7656: $06 $06
    ld [bc], a                                    ; $7658: $02
    ld [bc], a                                    ; $7659: $02
    ld [de], a                                    ; $765A: $12
    ld [de], a                                    ; $765B: $12
    ld [bc], a                                    ; $765C: $02
    ld [bc], a                                    ; $765D: $02
    inc bc                                        ; $765E: $03
    inc bc                                        ; $765F: $03
    nop                                           ; $7660: $00
    nop                                           ; $7661: $00
    nop                                           ; $7662: $00
    nop                                           ; $7663: $00
    nop                                           ; $7664: $00
    nop                                           ; $7665: $00
    nop                                           ; $7666: $00
    nop                                           ; $7667: $00
    ld [bc], a                                    ; $7668: $02
    ld [bc], a                                    ; $7669: $02
    inc b                                         ; $766A: $04
    inc b                                         ; $766B: $04
    ld bc, $0B01                                  ; $766C: $01 $01 $0B
    dec bc                                        ; $766F: $0B
    nop                                           ; $7670: $00
    nop                                           ; $7671: $00
    nop                                           ; $7672: $00
    nop                                           ; $7673: $00
    ld bc, $BF01                                  ; $7674: $01 $01 $BF
    cp a                                          ; $7677: $BF
    dec e                                         ; $7678: $1D
    dec e                                         ; $7679: $1D
    ld a, [$DFFA]                                 ; $767A: $FA $FA $DF
    rst $18                                       ; $767D: $DF
    or b                                          ; $767E: $B0
    or b                                          ; $767F: $B0
    nop                                           ; $7680: $00
    nop                                           ; $7681: $00
    inc b                                         ; $7682: $04
    inc b                                         ; $7683: $04
    nop                                           ; $7684: $00
    nop                                           ; $7685: $00
    db $FC                                        ; $7686: $FC
    db $FC                                        ; $7687: $FC
    cp a                                          ; $7688: $BF
    cp a                                          ; $7689: $BF
    or a                                          ; $768A: $B7
    or a                                          ; $768B: $B7
    cp $FE                                        ; $768C: $FE $FE
    inc bc                                        ; $768E: $03
    inc bc                                        ; $768F: $03
    inc bc                                        ; $7690: $03
    inc bc                                        ; $7691: $03
    inc bc                                        ; $7692: $03
    inc bc                                        ; $7693: $03
    ld b, $06                                     ; $7694: $06 $06
    dec d                                         ; $7696: $15
    dec d                                         ; $7697: $15
    dec d                                         ; $7698: $15
    dec d                                         ; $7699: $15
    dec d                                         ; $769A: $15
    dec d                                         ; $769B: $15
    inc b                                         ; $769C: $04
    inc b                                         ; $769D: $04
    ld b, $06                                     ; $769E: $06 $06
    inc b                                         ; $76A0: $04
    inc b                                         ; $76A1: $04
    inc b                                         ; $76A2: $04
    inc b                                         ; $76A3: $04
    dec d                                         ; $76A4: $15
    dec d                                         ; $76A5: $15
    rrca                                          ; $76A6: $0F
    rrca                                          ; $76A7: $0F
    rrca                                          ; $76A8: $0F
    rrca                                          ; $76A9: $0F
    rlca                                          ; $76AA: $07
    rlca                                          ; $76AB: $07
    ld [bc], a                                    ; $76AC: $02
    ld [bc], a                                    ; $76AD: $02
    inc bc                                        ; $76AE: $03
    inc bc                                        ; $76AF: $03
    rla                                           ; $76B0: $17
    rla                                           ; $76B1: $17
    inc de                                        ; $76B2: $13
    inc de                                        ; $76B3: $13
    ld [hl], $36                                  ; $76B4: $36 $36
    ld [hl], $36                                  ; $76B6: $36 $36
    dec d                                         ; $76B8: $15
    dec d                                         ; $76B9: $15
    rlca                                          ; $76BA: $07
    rlca                                          ; $76BB: $07
    ld [bc], a                                    ; $76BC: $02
    ld [bc], a                                    ; $76BD: $02
    ld a, [bc]                                    ; $76BE: $0A
    ld a, [bc]                                    ; $76BF: $0A
    nop                                           ; $76C0: $00
    nop                                           ; $76C1: $00
    nop                                           ; $76C2: $00
    nop                                           ; $76C3: $00
    rlca                                          ; $76C4: $07
    nop                                           ; $76C5: $00
    rra                                           ; $76C6: $1F
    rlca                                          ; $76C7: $07
    ccf                                           ; $76C8: $3F
    dec e                                         ; $76C9: $1D
    ld a, a                                       ; $76CA: $7F
    ld a, $7F                                     ; $76CB: $3E $7F
    inc a                                         ; $76CD: $3C
    inc a                                         ; $76CE: $3C
    dec bc                                        ; $76CF: $0B
    nop                                           ; $76D0: $00
    nop                                           ; $76D1: $00
    nop                                           ; $76D2: $00
    nop                                           ; $76D3: $00
    ret nz                                        ; $76D4: $C0

    nop                                           ; $76D5: $00
    ldh [$C0], a                                  ; $76D6: $E0 $C0
    ldh a, [$E0]                                  ; $76D8: $F0 $E0
    ld hl, sp-$10                                 ; $76DA: $F8 $F0
    db $FC                                        ; $76DC: $FC
    sbc b                                         ; $76DD: $98
    sbc b                                         ; $76DE: $98
    ld h, b                                       ; $76DF: $60
    nop                                           ; $76E0: $00
    nop                                           ; $76E1: $00
    nop                                           ; $76E2: $00
    nop                                           ; $76E3: $00
    rlca                                          ; $76E4: $07
    nop                                           ; $76E5: $00
    rrca                                          ; $76E6: $0F
    rlca                                          ; $76E7: $07
    rra                                           ; $76E8: $1F
    dec c                                         ; $76E9: $0D
    ccf                                           ; $76EA: $3F
    ld e, $3F                                     ; $76EB: $1E $3F
    inc e                                         ; $76ED: $1C
    inc a                                         ; $76EE: $3C
    dec de                                        ; $76EF: $1B
    nop                                           ; $76F0: $00
    nop                                           ; $76F1: $00
    nop                                           ; $76F2: $00
    nop                                           ; $76F3: $00
    ldh [rP1], a                                  ; $76F4: $E0 $00
    ldh a, [$E0]                                  ; $76F6: $F0 $E0
    ld hl, sp-$10                                 ; $76F8: $F8 $F0
    db $FC                                        ; $76FA: $FC
    ld hl, sp-$02                                 ; $76FB: $F8 $FE
    sbc h                                         ; $76FD: $9C
    sbc [hl]                                      ; $76FE: $9E
    ld l, h                                       ; $76FF: $6C
    nop                                           ; $7700: $00
    nop                                           ; $7701: $00
    nop                                           ; $7702: $00
    nop                                           ; $7703: $00
    ldh [rP1], a                                  ; $7704: $E0 $00
    ldh a, [$E0]                                  ; $7706: $F0 $E0
    ld hl, sp-$10                                 ; $7708: $F8 $F0
    db $FC                                        ; $770A: $FC
    ld hl, sp-$04                                 ; $770B: $F8 $FC
    ld hl, sp-$04                                 ; $770D: $F8 $FC
    ld hl, sp+$00                                 ; $770F: $F8 $00
    nop                                           ; $7711: $00
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    rlca                                          ; $7714: $07
    nop                                           ; $7715: $00
    rrca                                          ; $7716: $0F
    rlca                                          ; $7717: $07
    rra                                           ; $7718: $1F
    rrca                                          ; $7719: $0F
    ccf                                           ; $771A: $3F
    rra                                           ; $771B: $1F
    ccf                                           ; $771C: $3F
    rra                                           ; $771D: $1F
    ccf                                           ; $771E: $3F
    rra                                           ; $771F: $1F
    nop                                           ; $7720: $00
    nop                                           ; $7721: $00
    nop                                           ; $7722: $00
    nop                                           ; $7723: $00
    ldh [rP1], a                                  ; $7724: $E0 $00
    ldh a, [$E0]                                  ; $7726: $F0 $E0
    ld hl, sp-$10                                 ; $7728: $F8 $F0
    db $FC                                        ; $772A: $FC
    ld hl, sp-$04                                 ; $772B: $F8 $FC
    ld hl, sp-$08                                 ; $772D: $F8 $F8
    ret nz                                        ; $772F: $C0

    cpl                                           ; $7730: $2F
    rla                                           ; $7731: $17
    rra                                           ; $7732: $1F
    ld c, $1C                                     ; $7733: $0E $1C
    inc bc                                        ; $7735: $03
    ccf                                           ; $7736: $3F
    inc bc                                        ; $7737: $03
    ccf                                           ; $7738: $3F
    inc bc                                        ; $7739: $03
    ccf                                           ; $773A: $3F
    ld bc, $0739                                  ; $773B: $01 $39 $07
    add hl, de                                    ; $773E: $19
    ld b, $70                                     ; $773F: $06 $70
    ldh [$78], a                                  ; $7741: $E0 $78
    or b                                          ; $7743: $B0
    db $10                                        ; $7744: $10
    ldh [$E0], a                                  ; $7745: $E0 $E0
    ret nz                                        ; $7747: $C0

    ldh a, [$C0]                                  ; $7748: $F0 $C0
    ldh a, [$C0]                                  ; $774A: $F0 $C0
    ret nz                                        ; $774C: $C0

    or b                                          ; $774D: $B0
    ret z                                         ; $774E: $C8

    jr nc, jr_00A_778F                            ; $774F: $30 $3E

    rla                                           ; $7751: $17
    ld e, $0D                                     ; $7752: $1E $0D
    inc c                                         ; $7754: $0C
    inc bc                                        ; $7755: $03
    rrca                                          ; $7756: $0F
    inc bc                                        ; $7757: $03
    rra                                           ; $7758: $1F
    inc bc                                        ; $7759: $03
    rra                                           ; $775A: $1F
    ld bc, $0D13                                  ; $775B: $01 $13 $0D
    inc de                                        ; $775E: $13
    inc c                                         ; $775F: $0C
    ld a, [hl]                                    ; $7760: $7E
    db $F4                                        ; $7761: $F4
    ld a, h                                       ; $7762: $7C
    cp b                                          ; $7763: $B8
    jr @-$1E                                      ; $7764: $18 $E0

    ldh a, [$C0]                                  ; $7766: $F0 $C0
    ld hl, sp-$40                                 ; $7768: $F8 $C0
    ld hl, sp-$40                                 ; $776A: $F8 $C0
    ret z                                         ; $776C: $C8

jr_00A_776D:
    or b                                          ; $776D: $B0
    ret z                                         ; $776E: $C8

    jr nc, jr_00A_776D                            ; $776F: $30 $FC

    ld hl, sp-$08                                 ; $7771: $F8 $F8
    ldh a, [$F0]                                  ; $7773: $F0 $F0
    ldh [$F0], a                                  ; $7775: $E0 $F0
    nop                                           ; $7777: $00
    ld hl, sp+$00                                 ; $7778: $F8 $00
    ld hl, sp+$00                                 ; $777A: $F8 $00
    ld hl, sp+$00                                 ; $777C: $F8 $00
    ld hl, sp+$00                                 ; $777E: $F8 $00
    rra                                           ; $7780: $1F
    rrca                                          ; $7781: $0F
    rra                                           ; $7782: $1F
    rlca                                          ; $7783: $07
    rrca                                          ; $7784: $0F
    nop                                           ; $7785: $00
    rrca                                          ; $7786: $0F
    nop                                           ; $7787: $00
    rrca                                          ; $7788: $0F
    nop                                           ; $7789: $00
    rrca                                          ; $778A: $0F
    nop                                           ; $778B: $00
    rrca                                          ; $778C: $0F
    nop                                           ; $778D: $00
    rrca                                          ; $778E: $0F

jr_00A_778F:
    nop                                           ; $778F: $00
    add sp, -$70                                  ; $7790: $E8 $90
    sbc h                                         ; $7792: $9C
    ld l, b                                       ; $7793: $68
    db $FC                                        ; $7794: $FC
    ld [$00F8], sp                                ; $7795: $08 $F8 $00

jr_00A_7798:
    ld hl, sp+$00                                 ; $7798: $F8 $00
    db $FC                                        ; $779A: $FC
    nop                                           ; $779B: $00
    ld hl, sp+$04                                 ; $779C: $F8 $04
    ldh a, [$0C]                                  ; $779E: $F0 $0C
    inc a                                         ; $77A0: $3C
    dec de                                        ; $77A1: $1B
    ld a, $17                                     ; $77A2: $3E $17
    ld e, $0D                                     ; $77A4: $1E $0D
    inc c                                         ; $77A6: $0C
    inc bc                                        ; $77A7: $03
    rrca                                          ; $77A8: $0F
    inc bc                                        ; $77A9: $03
    rra                                           ; $77AA: $1F
    inc bc                                        ; $77AB: $03
    rra                                           ; $77AC: $1F
    inc bc                                        ; $77AD: $03
    scf                                           ; $77AE: $37
    add hl, bc                                    ; $77AF: $09
    sbc [hl]                                      ; $77B0: $9E
    ld l, h                                       ; $77B1: $6C
    ld a, [hl]                                    ; $77B2: $7E
    db $F4                                        ; $77B3: $F4
    ld a, h                                       ; $77B4: $7C
    cp b                                          ; $77B5: $B8
    jr jr_00A_7798                                ; $77B6: $18 $E0

jr_00A_77B8:
    ldh a, [$C0]                                  ; $77B8: $F0 $C0
    ld hl, sp-$80                                 ; $77BA: $F8 $80
    sbc b                                         ; $77BC: $98
    ld h, b                                       ; $77BD: $60
    sbc b                                         ; $77BE: $98
    ld h, b                                       ; $77BF: $60
    inc a                                         ; $77C0: $3C
    dec de                                        ; $77C1: $1B
    ld a, $17                                     ; $77C2: $3E $17
    ld e, $0D                                     ; $77C4: $1E $0D
    inc c                                         ; $77C6: $0C
    inc bc                                        ; $77C7: $03
    rrca                                          ; $77C8: $0F
    inc bc                                        ; $77C9: $03
    rra                                           ; $77CA: $1F
    ld bc, $0619                                  ; $77CB: $01 $19 $06
    add hl, de                                    ; $77CE: $19
    ld b, $9E                                     ; $77CF: $06 $9E
    ld l, h                                       ; $77D1: $6C
    ld a, [hl]                                    ; $77D2: $7E
    db $F4                                        ; $77D3: $F4
    ld a, h                                       ; $77D4: $7C
    cp b                                          ; $77D5: $B8
    jr jr_00A_77B8                                ; $77D6: $18 $E0

    ldh a, [$C0]                                  ; $77D8: $F0 $C0
    ld hl, sp-$40                                 ; $77DA: $F8 $C0
    ld hl, sp-$40                                 ; $77DC: $F8 $C0
    add sp, -$70                                  ; $77DE: $E8 $90
    ccf                                           ; $77E0: $3F
    rra                                           ; $77E1: $1F
    ccf                                           ; $77E2: $3F
    rra                                           ; $77E3: $1F
    rra                                           ; $77E4: $1F
    rrca                                          ; $77E5: $0F
    rrca                                          ; $77E6: $0F
    inc bc                                        ; $77E7: $03
    rrca                                          ; $77E8: $0F
    nop                                           ; $77E9: $00
    rra                                           ; $77EA: $1F
    nop                                           ; $77EB: $00
    rra                                           ; $77EC: $1F
    nop                                           ; $77ED: $00
    rra                                           ; $77EE: $1F
    nop                                           ; $77EF: $00
    db $FC                                        ; $77F0: $FC
    ld hl, sp-$04                                 ; $77F1: $F8 $FC
    ld hl, sp-$08                                 ; $77F3: $F8 $F8
    ldh a, [$F0]                                  ; $77F5: $F0 $F0
    ldh [$F0], a                                  ; $77F7: $E0 $F0
    nop                                           ; $77F9: $00
    ld hl, sp+$00                                 ; $77FA: $F8 $00
    ld hl, sp+$00                                 ; $77FC: $F8 $00
    ld hl, sp+$00                                 ; $77FE: $F8 $00
    rra                                           ; $7800: $1F
    nop                                           ; $7801: $00
    rrca                                          ; $7802: $0F
    rlca                                          ; $7803: $07
    rra                                           ; $7804: $1F
    rrca                                          ; $7805: $0F
    rra                                           ; $7806: $1F
    ld c, $3F                                     ; $7807: $0E $3F
    jr jr_00A_784A                                ; $7809: $18 $3F

    ld b, $3F                                     ; $780B: $06 $3F
    ld e, $1F                                     ; $780D: $1E $1F
    nop                                           ; $780F: $00
    ld hl, sp+$00                                 ; $7810: $F8 $00
    ldh a, [$E0]                                  ; $7812: $F0 $E0
    ldh a, [$60]                                  ; $7814: $F0 $60
    ldh a, [$C0]                                  ; $7816: $F0 $C0
    ld hl, sp+$30                                 ; $7818: $F8 $30
    ld hl, sp-$10                                 ; $781A: $F8 $F0
    ldh a, [rP1]                                  ; $781C: $F0 $00
    nop                                           ; $781E: $00
    nop                                           ; $781F: $00
    ldh a, [rP1]                                  ; $7820: $F0 $00
    ld hl, sp-$10                                 ; $7822: $F8 $F0
    ld hl, sp-$10                                 ; $7824: $F8 $F0
    ld hl, sp+$40                                 ; $7826: $F8 $40
    db $FC                                        ; $7828: $FC
    jr nc, @-$02                                  ; $7829: $30 $FC

    ld a, b                                       ; $782B: $78
    db $FC                                        ; $782C: $FC
    jr c, @-$06                                   ; $782D: $38 $F8

    nop                                           ; $782F: $00
    ld hl, sp+$00                                 ; $7830: $F8 $00
    ld hl, sp-$10                                 ; $7832: $F8 $F0
    ld hl, sp-$10                                 ; $7834: $F8 $F0
    ld hl, sp+$70                                 ; $7836: $F8 $70
    ld hl, sp+$70                                 ; $7838: $F8 $70
    db $FC                                        ; $783A: $FC
    ld [$70FC], sp                                ; $783B: $08 $FC $70
    ld hl, sp+$00                                 ; $783E: $F8 $00
    rrca                                          ; $7840: $0F
    rlca                                          ; $7841: $07
    rrca                                          ; $7842: $0F
    rlca                                          ; $7843: $07
    rrca                                          ; $7844: $0F
    dec b                                         ; $7845: $05
    rra                                           ; $7846: $1F
    ld c, $1F                                     ; $7847: $0E $1F
    nop                                           ; $7849: $00

jr_00A_784A:
    rrca                                          ; $784A: $0F
    ld b, $0F                                     ; $784B: $06 $0F
    nop                                           ; $784D: $00
    nop                                           ; $784E: $00
    nop                                           ; $784F: $00
    ld hl, sp-$80                                 ; $7850: $F8 $80
    ld hl, sp-$10                                 ; $7852: $F8 $F0
    ld hl, sp-$10                                 ; $7854: $F8 $F0
    ld hl, sp-$10                                 ; $7856: $F8 $F0
    ld hl, sp-$10                                 ; $7858: $F8 $F0
    db $FC                                        ; $785A: $FC
    ld [$70FC], sp                                ; $785B: $08 $FC $70
    ld hl, sp+$00                                 ; $785E: $F8 $00
    rrca                                          ; $7860: $0F
    nop                                           ; $7861: $00
    rlca                                          ; $7862: $07
    inc bc                                        ; $7863: $03
    rrca                                          ; $7864: $0F
    rlca                                          ; $7865: $07
    rrca                                          ; $7866: $0F
    dec b                                         ; $7867: $05
    rrca                                          ; $7868: $0F
    ld b, $07                                     ; $7869: $06 $07
    nop                                           ; $786B: $00
    rlca                                          ; $786C: $07
    ld [bc], a                                    ; $786D: $02
    inc bc                                        ; $786E: $03
    nop                                           ; $786F: $00
    ld hl, sp+$00                                 ; $7870: $F8 $00
    ldh a, [$E0]                                  ; $7872: $F0 $E0
    ldh a, [$E0]                                  ; $7874: $F0 $E0
    ldh a, [$80]                                  ; $7876: $F0 $80
    ldh a, [$60]                                  ; $7878: $F0 $60
    ldh a, [$E0]                                  ; $787A: $F0 $E0
    ldh [$C0], a                                  ; $787C: $E0 $C0
    ldh [rP1], a                                  ; $787E: $E0 $00
    rrca                                          ; $7880: $0F
    nop                                           ; $7881: $00
    rlca                                          ; $7882: $07
    inc bc                                        ; $7883: $03
    rrca                                          ; $7884: $0F
    ld b, $0F                                     ; $7885: $06 $0F
    rlca                                          ; $7887: $07
    rrca                                          ; $7888: $0F
    rlca                                          ; $7889: $07
    rlca                                          ; $788A: $07
    nop                                           ; $788B: $00
    rlca                                          ; $788C: $07
    inc bc                                        ; $788D: $03
    rlca                                          ; $788E: $07
    nop                                           ; $788F: $00
    ldh a, [rP1]                                  ; $7890: $F0 $00
    ld hl, sp-$10                                 ; $7892: $F8 $F0
    ld hl, sp-$10                                 ; $7894: $F8 $F0
    ld hl, sp+$30                                 ; $7896: $F8 $30
    ldh a, [rP1]                                  ; $7898: $F0 $00
    ldh a, [$60]                                  ; $789A: $F0 $60
    ldh a, [$60]                                  ; $789C: $F0 $60
    ldh a, [rP1]                                  ; $789E: $F0 $00
    nop                                           ; $78A0: $00
    nop                                           ; $78A1: $00
    nop                                           ; $78A2: $00
    nop                                           ; $78A3: $00
    rrca                                          ; $78A4: $0F
    nop                                           ; $78A5: $00
    rra                                           ; $78A6: $1F
    rrca                                          ; $78A7: $0F
    ccf                                           ; $78A8: $3F
    rra                                           ; $78A9: $1F
    ccf                                           ; $78AA: $3F
    rra                                           ; $78AB: $1F
    ld a, a                                       ; $78AC: $7F
    ld a, $7E                                     ; $78AD: $3E $7E
    dec a                                         ; $78AF: $3D
    nop                                           ; $78B0: $00
    nop                                           ; $78B1: $00
    nop                                           ; $78B2: $00
    nop                                           ; $78B3: $00
    ldh [rP1], a                                  ; $78B4: $E0 $00
    ldh a, [$E0]                                  ; $78B6: $F0 $E0
    ld hl, sp-$10                                 ; $78B8: $F8 $F0
    db $FC                                        ; $78BA: $FC
    jr jr_00A_78D5                                ; $78BB: $18 $18

    ldh [$F0], a                                  ; $78BD: $E0 $F0
    ldh [$FD], a                                  ; $78BF: $E0 $FD
    ld a, e                                       ; $78C1: $7B
    ei                                            ; $78C2: $FB
    ld [hl], a                                    ; $78C3: $77
    ld a, d                                       ; $78C4: $7A
    scf                                           ; $78C5: $37
    inc a                                         ; $78C6: $3C
    inc bc                                        ; $78C7: $03
    ld a, a                                       ; $78C8: $7F
    nop                                           ; $78C9: $00
    ld a, a                                       ; $78CA: $7F
    nop                                           ; $78CB: $00
    ld a, [hl]                                    ; $78CC: $7E
    ld bc, $017E                                  ; $78CD: $01 $7E $01
    ldh [$C0], a                                  ; $78D0: $E0 $C0
    ldh [$C0], a                                  ; $78D2: $E0 $C0
    and b                                         ; $78D4: $A0

jr_00A_78D5:
    ld b, b                                       ; $78D5: $40

jr_00A_78D6:
    ld h, b                                       ; $78D6: $60
    ret nz                                        ; $78D7: $C0

    ldh a, [$60]                                  ; $78D8: $F0 $60
    ldh a, [$60]                                  ; $78DA: $F0 $60
    ld [hl], b                                    ; $78DC: $70
    and b                                         ; $78DD: $A0
    ld [hl], b                                    ; $78DE: $70
    and b                                         ; $78DF: $A0
    ld a, l                                       ; $78E0: $7D
    dec sp                                        ; $78E1: $3B
    dec a                                         ; $78E2: $3D
    dec de                                        ; $78E3: $1B
    ld e, $01                                     ; $78E4: $1E $01
    ccf                                           ; $78E6: $3F
    nop                                           ; $78E7: $00
    ccf                                           ; $78E8: $3F
    nop                                           ; $78E9: $00
    ccf                                           ; $78EA: $3F
    nop                                           ; $78EB: $00
    inc a                                         ; $78EC: $3C
    inc bc                                        ; $78ED: $03
    inc e                                         ; $78EE: $1C
    inc bc                                        ; $78EF: $03
    ldh a, [$E0]                                  ; $78F0: $F0 $E0
    ld d, b                                       ; $78F2: $50
    and b                                         ; $78F3: $A0
    jr nc, jr_00A_78D6                            ; $78F4: $30 $E0

    ld hl, sp+$30                                 ; $78F6: $F8 $30

jr_00A_78F8:
    ld hl, sp+$30                                 ; $78F8: $F8 $30
    ld hl, sp+$30                                 ; $78FA: $F8 $30
    ld hl, sp+$10                                 ; $78FC: $F8 $10
    ldh a, [rP1]                                  ; $78FE: $F0 $00
    ld a, [hl]                                    ; $7900: $7E
    dec a                                         ; $7901: $3D
    ld a, l                                       ; $7902: $7D
    dec sp                                        ; $7903: $3B
    dec a                                         ; $7904: $3D
    dec de                                        ; $7905: $1B
    ld e, $01                                     ; $7906: $1E $01
    ccf                                           ; $7908: $3F
    nop                                           ; $7909: $00
    ccf                                           ; $790A: $3F
    nop                                           ; $790B: $00
    inc sp                                        ; $790C: $33
    inc c                                         ; $790D: $0C
    inc sp                                        ; $790E: $33
    inc c                                         ; $790F: $0C
    ldh a, [$E0]                                  ; $7910: $F0 $E0
    ldh a, [$E0]                                  ; $7912: $F0 $E0
    ld d, b                                       ; $7914: $50
    and b                                         ; $7915: $A0
    jr nc, jr_00A_78F8                            ; $7916: $30 $E0

    ld hl, sp+$30                                 ; $7918: $F8 $30
    ld hl, sp+$30                                 ; $791A: $F8 $30
    ld hl, sp+$30                                 ; $791C: $F8 $30
    ld hl, sp+$10                                 ; $791E: $F8 $10
    rra                                           ; $7920: $1F
    nop                                           ; $7921: $00
    rrca                                          ; $7922: $0F
    rlca                                          ; $7923: $07
    rra                                           ; $7924: $1F
    rrca                                          ; $7925: $0F
    ccf                                           ; $7926: $3F
    rra                                           ; $7927: $1F
    ld a, a                                       ; $7928: $7F
    inc l                                         ; $7929: $2C
    ld a, a                                       ; $792A: $7F
    ld [hl-], a                                   ; $792B: $32
    ld a, a                                       ; $792C: $7F
    ld e, $7F                                     ; $792D: $1E $7F
    nop                                           ; $792F: $00
    ldh [rP1], a                                  ; $7930: $E0 $00
    ldh [$80], a                                  ; $7932: $E0 $80
    ld hl, sp-$80                                 ; $7934: $F8 $80
    db $FC                                        ; $7936: $FC
    jr @-$02                                      ; $7937: $18 $FC

    cp b                                          ; $7939: $B8
    ld hl, sp-$50                                 ; $793A: $F8 $B0
    ld hl, sp+$40                                 ; $793C: $F8 $40
    ldh [rP1], a                                  ; $793E: $E0 $00
    rlca                                          ; $7940: $07
    nop                                           ; $7941: $00
    rrca                                          ; $7942: $0F
    rlca                                          ; $7943: $07
    rra                                           ; $7944: $1F
    rrca                                          ; $7945: $0F
    rra                                           ; $7946: $1F
    rrca                                          ; $7947: $0F
    ccf                                           ; $7948: $3F
    db $10                                        ; $7949: $10
    ccf                                           ; $794A: $3F
    rlca                                          ; $794B: $07
    ccf                                           ; $794C: $3F
    rrca                                          ; $794D: $0F
    rra                                           ; $794E: $1F
    nop                                           ; $794F: $00
    ldh [rP1], a                                  ; $7950: $E0 $00
    ldh [$C0], a                                  ; $7952: $E0 $C0
    ldh [$C0], a                                  ; $7954: $E0 $C0
    ldh [$80], a                                  ; $7956: $E0 $80
    ldh a, [rNR41]                                ; $7958: $F0 $20
    ldh a, [$A0]                                  ; $795A: $F0 $A0
    ldh a, [$80]                                  ; $795C: $F0 $80
    ret nz                                        ; $795E: $C0

    nop                                           ; $795F: $00
    rra                                           ; $7960: $1F
    nop                                           ; $7961: $00
    rrca                                          ; $7962: $0F
    rlca                                          ; $7963: $07
    rra                                           ; $7964: $1F
    rrca                                          ; $7965: $0F
    ccf                                           ; $7966: $3F
    dec bc                                        ; $7967: $0B
    ld a, a                                       ; $7968: $7F
    ld hl, $3C7F                                  ; $7969: $21 $7F $3C
    ld a, a                                       ; $796C: $7F
    ld e, $7F                                     ; $796D: $1E $7F
    nop                                           ; $796F: $00
    ldh [rP1], a                                  ; $7970: $E0 $00
    ret nz                                        ; $7972: $C0

    add b                                         ; $7973: $80
    ld hl, sp-$40                                 ; $7974: $F8 $C0
    db $FC                                        ; $7976: $FC
    ret c                                         ; $7977: $D8

    db $FC                                        ; $7978: $FC
    cp b                                          ; $7979: $B8
    ld hl, sp-$50                                 ; $797A: $F8 $B0
    ld hl, sp+$40                                 ; $797C: $F8 $40
    ldh [rP1], a                                  ; $797E: $E0 $00
    ld b, $06                                     ; $7980: $06 $06
    ld e, $1E                                     ; $7982: $1E $1E
    inc a                                         ; $7984: $3C
    inc a                                         ; $7985: $3C
    ld a, e                                       ; $7986: $7B
    ld a, e                                       ; $7987: $7B
    or h                                          ; $7988: $B4
    rst $30                                       ; $7989: $F7
    jr z, @-$0F                                   ; $798A: $28 $EF

    jr z, @-$0F                                   ; $798C: $28 $EF

    ld l, $EE                                     ; $798E: $2E $EE
    nop                                           ; $7990: $00
    nop                                           ; $7991: $00
    nop                                           ; $7992: $00
    nop                                           ; $7993: $00
    inc b                                         ; $7994: $04
    inc b                                         ; $7995: $04
    ldh a, [$F0]                                  ; $7996: $F0 $F0
    ld [de], a                                    ; $7998: $12
    ld a, [c]                                     ; $7999: $F2
    dec c                                         ; $799A: $0D
    db $FD                                        ; $799B: $FD
    rlca                                          ; $799C: $07
    rst $38                                       ; $799D: $FF
    rlca                                          ; $799E: $07
    rst $38                                       ; $799F: $FF
    inc l                                         ; $79A0: $2C
    db $ED                                        ; $79A1: $ED
    db $10                                        ; $79A2: $10
    ldh a, [$08]                                  ; $79A3: $F0 $08
    ld hl, sp-$79                                 ; $79A5: $F8 $87
    rst $38                                       ; $79A7: $FF
    nop                                           ; $79A8: $00
    ld a, a                                       ; $79A9: $7F
    nop                                           ; $79AA: $00
    ccf                                           ; $79AB: $3F
    db $10                                        ; $79AC: $10
    rra                                           ; $79AD: $1F
    inc b                                         ; $79AE: $04
    rlca                                          ; $79AF: $07
    ld b, $FF                                     ; $79B0: $06 $FF
    rst $20                                       ; $79B2: $E7
    rst $38                                       ; $79B3: $FF
    ret nz                                        ; $79B4: $C0

    cp $84                                        ; $79B5: $FE $84
    cp $00                                        ; $79B7: $FE $00
    db $FC                                        ; $79B9: $FC
    inc b                                         ; $79BA: $04
    db $FC                                        ; $79BB: $FC
    nop                                           ; $79BC: $00
    ldh a, [rP1]                                  ; $79BD: $F0 $00
    ret nz                                        ; $79BF: $C0

    rrca                                          ; $79C0: $0F
    rrca                                          ; $79C1: $0F
    ld bc, $071F                                  ; $79C2: $01 $1F $07
    ccf                                           ; $79C5: $3F
    inc c                                         ; $79C6: $0C
    ld a, h                                       ; $79C7: $7C
    adc e                                         ; $79C8: $8B
    ei                                            ; $79C9: $FB
    inc d                                         ; $79CA: $14
    rst $30                                       ; $79CB: $F7
    rla                                           ; $79CC: $17
    rst $30                                       ; $79CD: $F7
    db $10                                        ; $79CE: $10
    ldh a, [$C0]                                  ; $79CF: $F0 $C0
    ret nz                                        ; $79D1: $C0

    ldh [$E0], a                                  ; $79D2: $E0 $E0

jr_00A_79D4:
    ld [$8008], sp                                ; $79D4: $08 $08 $80
    add b                                         ; $79D7: $80
    inc [hl]                                      ; $79D8: $34
    db $F4                                        ; $79D9: $F4
    jr jr_00A_79D4                                ; $79DA: $18 $F8

    ld [$84F8], sp                                ; $79DC: $08 $F8 $84
    db $FC                                        ; $79DF: $FC
    db $10                                        ; $79E0: $10
    pop af                                        ; $79E1: $F1
    add hl, bc                                    ; $79E2: $09
    ld sp, hl                                     ; $79E3: $F9
    dec c                                         ; $79E4: $0D
    db $FD                                        ; $79E5: $FD
    add e                                         ; $79E6: $83
    rst $38                                       ; $79E7: $FF
    nop                                           ; $79E8: $00
    ld a, a                                       ; $79E9: $7F
    nop                                           ; $79EA: $00
    ccf                                           ; $79EB: $3F
    nop                                           ; $79EC: $00
    rra                                           ; $79ED: $1F
    nop                                           ; $79EE: $00
    rlca                                          ; $79EF: $07
    inc b                                         ; $79F0: $04
    db $FC                                        ; $79F1: $FC
    dec b                                         ; $79F2: $05
    db $FD                                        ; $79F3: $FD
    add b                                         ; $79F4: $80
    ld hl, sp+$0A                                 ; $79F5: $F8 $0A
    ld a, [$FE1E]                                 ; $79F7: $FA $1E $FE
    inc a                                         ; $79FA: $3C
    db $FC                                        ; $79FB: $FC
    ld [$20F8], sp                                ; $79FC: $08 $F8 $20
    ldh [$08], a                                  ; $79FF: $E0 $08
    rrca                                          ; $7A01: $0F
    jr nz, jr_00A_7A43                            ; $7A02: $20 $3F

    ld b, c                                       ; $7A04: $41
    ld a, a                                       ; $7A05: $7F
    ld b, $7E                                     ; $7A06: $06 $7E
    adc c                                         ; $7A08: $89
    ld sp, hl                                     ; $7A09: $F9
    dec bc                                        ; $7A0A: $0B
    ei                                            ; $7A0B: $FB
    db $10                                        ; $7A0C: $10
    ldh a, [$03]                                  ; $7A0D: $F0 $03
    di                                            ; $7A0F: $F3
    ld h, b                                       ; $7A10: $60
    ldh [$38], a                                  ; $7A11: $E0 $38
    ld hl, sp-$04                                 ; $7A13: $F8 $FC
    db $FC                                        ; $7A15: $FC
    inc a                                         ; $7A16: $3C
    inc a                                         ; $7A17: $3C
    adc $CE                                       ; $7A18: $CE $CE
    and [hl]                                      ; $7A1A: $A6
    and $94                                       ; $7A1B: $E6 $94
    db $F4                                        ; $7A1D: $F4
    add b                                         ; $7A1E: $80
    ldh a, [$08]                                  ; $7A1F: $F0 $08
    ei                                            ; $7A21: $FB
    ld c, $FF                                     ; $7A22: $0E $FF
    nop                                           ; $7A24: $00
    rst $38                                       ; $7A25: $FF
    add b                                         ; $7A26: $80
    rst $38                                       ; $7A27: $FF
    nop                                           ; $7A28: $00
    ld a, a                                       ; $7A29: $7F
    rlca                                          ; $7A2A: $07
    ccf                                           ; $7A2B: $3F
    rla                                           ; $7A2C: $17
    rra                                           ; $7A2D: $1F
    rlca                                          ; $7A2E: $07
    rlca                                          ; $7A2F: $07
    ld [$00F8], sp                                ; $7A30: $08 $F8 $00
    ldh a, [rNR10]                                ; $7A33: $F0 $10
    ldh a, [rNR10]                                ; $7A35: $F0 $10
    ldh a, [rNR41]                                ; $7A37: $F0 $20
    ldh [$D8], a                                  ; $7A39: $E0 $D8
    ret c                                         ; $7A3B: $D8

    ld [hl], b                                    ; $7A3C: $70
    ld [hl], b                                    ; $7A3D: $70
    ret nz                                        ; $7A3E: $C0

    ret nz                                        ; $7A3F: $C0

    nop                                           ; $7A40: $00
    rrca                                          ; $7A41: $0F
    nop                                           ; $7A42: $00

jr_00A_7A43:
    rra                                           ; $7A43: $1F
    nop                                           ; $7A44: $00
    ccf                                           ; $7A45: $3F
    inc bc                                        ; $7A46: $03
    ld a, a                                       ; $7A47: $7F
    add h                                         ; $7A48: $84
    db $FC                                        ; $7A49: $FC
    add hl, bc                                    ; $7A4A: $09
    ld sp, hl                                     ; $7A4B: $F9
    ld [$0CF8], sp                                ; $7A4C: $08 $F8 $0C
    rst $38                                       ; $7A4F: $FF
    db $10                                        ; $7A50: $10
    ldh a, [rP1]                                  ; $7A51: $F0 $00
    ld hl, sp+$00                                 ; $7A53: $F8 $00
    db $FC                                        ; $7A55: $FC
    ld [c], a                                     ; $7A56: $E2
    cp $12                                        ; $7A57: $FE $12
    ld e, $E9                                     ; $7A59: $1E $E9
    rst $28                                       ; $7A5B: $EF
    ld [hl], l                                    ; $7A5C: $75
    ld [hl], a                                    ; $7A5D: $77
    ld d, l                                       ; $7A5E: $55
    ld [hl], a                                    ; $7A5F: $77
    ld b, h                                       ; $7A60: $44
    rst $38                                       ; $7A61: $FF
    inc b                                         ; $7A62: $04
    rst $38                                       ; $7A63: $FF
    ld h, b                                       ; $7A64: $60
    rst $38                                       ; $7A65: $FF
    ld [hl], b                                    ; $7A66: $70
    ld a, a                                       ; $7A67: $7F
    jr c, jr_00A_7AE9                             ; $7A68: $38 $7F

    jr c, jr_00A_7AA4                             ; $7A6A: $38 $38

    ld e, $1E                                     ; $7A6C: $1E $1E
    inc bc                                        ; $7A6E: $03
    inc bc                                        ; $7A6F: $03
    rla                                           ; $7A70: $17
    rst $30                                       ; $7A71: $F7
    ld d, $F6                                     ; $7A72: $16 $F6
    ld d, $F6                                     ; $7A74: $16 $F6
    jr nz, @-$1E                                  ; $7A76: $20 $E0

    ret z                                         ; $7A78: $C8

    ret z                                         ; $7A79: $C8

    nop                                           ; $7A7A: $00
    nop                                           ; $7A7B: $00
    nop                                           ; $7A7C: $00
    nop                                           ; $7A7D: $00
    add b                                         ; $7A7E: $80
    add b                                         ; $7A7F: $80
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

jr_00A_7AA4:
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

jr_00A_7AE9:
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
